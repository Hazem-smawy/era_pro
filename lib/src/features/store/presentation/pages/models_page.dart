import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/extensions/elvated_btn_extension.dart';
import 'package:tailor/src/core/extensions/padding_extension.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/core/utils/pick_image_helper.dart';
import 'package:tailor/src/core/widgets/custom_text_filed_widget.dart';
import 'package:tailor/src/core/widgets/header_widget.dart';
import 'package:tailor/src/core/widgets/thin_divider_widget.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/data/models/th_models_model.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/models_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/store_binding.dart';

class ThModelsPage extends StatelessWidget {
  final ThModelController controller = Get.find();

  ThModelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () =>
            Get.to(() => AddThModelScreen(), binding: StoreBinding()),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(title: "موديلات الثياب"),
              context.g16,
              Obx(() {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                }

                return ListView.separated(
                  itemCount: controller.models.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => ThinDividerWidget(),
                  itemBuilder: (context, index) {
                    final model = controller.models[index];
                    return ListTile(
                      trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.memory(
                          controller.decodeImage(model.modelProfile),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        model.modelName,
                        textAlign: TextAlign.right,
                        style: context.titleMedium,
                      ),
                      subtitle: Text(
                        "ترتيب العرض: ${model.modelOrdering}",
                        textAlign: TextAlign.right,
                        style: context.bodySmall,
                      ),
                      leading: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          Get.to(() => AddThModelScreen(model: model),
                              binding: StoreBinding());
                        },
                      ),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class AddThModelScreen extends StatefulWidget {
  final ThModelsModel? model;

  const AddThModelScreen({super.key, this.model});

  @override
  _AddThModelScreenState createState() => _AddThModelScreenState();
}

class _AddThModelScreenState extends State<AddThModelScreen> {
  final ThModelController controller = Get.find();
  final AcStoreController acStoreController = Get.find();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController orderController = TextEditingController();
  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      nameController.text = widget.model!.modelName;
      orderController.text = widget.model!.modelOrdering.toString();
      imageBytes = controller.decodeImage(widget.model!.modelProfile);
    }
  }

  Future<void> getImage() async {
    // final ImagePicker picker = ImagePicker();
    // final XFile? pickedImage =
    //     await picker.pickImage(source: ImageSource.gallery);
    final XFile? pickedImage = await pickImage();

    if (pickedImage != null) {
      final Uint8List bytes = await pickedImage.readAsBytes();
      setState(() {
        imageBytes = bytes;
      });
    }
  }

  void saveModel() {
    final String name = nameController.text.trim();
    final int order = int.tryParse(orderController.text.trim()) ?? 0;

    if (name.isEmpty ||
        imageBytes == null ||
        acStoreController.selectedModelCategory.value?.id == null) {
      CustomDialog.customSnackBar(
        "يرجى ملء جميع الحقول واختيار صورة",
        SnackPosition.TOP,
        true,
      );

      return;
    }

    final newModel = ThModelsModel(
      id: widget.model?.id,
      mcId: acStoreController.selectedModelCategory.value!.id
          .toString(), // Placeholder
      modelName: name,
      modelProfile: controller.encodeImage(imageBytes!),
      modelOrdering: order,
      status: true,
      createdAt: widget.model?.createdAt ?? DateTime.now(),
      createdBy: widget.model?.createdBy ?? 1, // Placeholder
      updatedAt: widget.model != null ? DateTime.now() : null,
      updatedBy: widget.model != null ? 1 : null, // Placeholder
      deletedAt: null,
    );

    if (widget.model == null) {
      controller.addModel(newModel);
    } else {
      controller.updateModel(newModel);
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeaderWidget(
                title: widget.model == null ? "إضافة موديل" : "تعديل موديل",
              ),
              // SizedBox(
              //   height: context.width / 5,
              // ),
              context.g28,
              GestureDetector(
                onTap: getImage,
                child: imageBytes == null
                    ? Container(
                        width: context.width,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.add_a_photo,
                            size: 40, color: Colors.grey),
                      )
                    : ClipRRect(
                        // borderRadius: BorderRadius.circular(8),
                        child: Image.memory(
                        imageBytes!,
                        width: context.width,
                        fit: BoxFit.cover,
                        height: 250,
                      )),
              ),
              SizedBox(height: 20),
              Obx(
                () => CustomDropdownWidget<ModelCategoryModel>(
                  items: acStoreController.modelsCategories.value,
                  value: acStoreController.selectedModelCategory.value,
                  hint: 'التصنيف',
                  onChanged: (ModelCategoryModel? value) {
                    if (value != null) {
                      acStoreController.selectedModelCategory.value = value;
                    }
                  },
                  itemBuilder: (ModelCategoryModel orderType) {
                    return Text(
                      orderType.mcName,
                      style: context.bodyLarge,
                    );
                  },
                  icon: Icons.attach_money,
                  dropdownColor: context.whiteColor,
                  iconColor: context.secondaryTextColor,
                  decoration: BoxDecoration(
                    color: context.whiteColor,
                  ),
                ),
              ),
              context.g12,
              CustomTextFieldWidget(
                controller: nameController,
                hint: "اسم الموديل",
                radius: 0,
              ),
              context.g12,
              CustomTextFieldWidget(
                controller: orderController,
                hint: "ترتيب العرض",
                isNumber: true,
                radius: 0,
              ),
              SizedBox(height: 20),
              ElevatedButtonExtension.primary(
                label: "حفظ",
                onPressed: saveModel,
              ),
              context.g20,
            ],
          ).ph(12),
        ),
      ),
    );
  }
}

class CustomDropdownWidget<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final String hint;
  final ValueChanged<T?> onChanged;
  final Widget Function(T) itemBuilder;
  final IconData icon;
  final Color? dropdownColor;
  final Color? iconColor;
  final double height;
  final EdgeInsetsGeometry padding;
  final BoxDecoration? decoration;

  const CustomDropdownWidget({
    super.key,
    required this.items,
    required this.value,
    required this.hint,
    required this.onChanged,
    required this.itemBuilder,
    this.icon = Icons.category,
    this.dropdownColor,
    this.iconColor,
    this.height = 50,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      padding: padding,
      decoration: decoration ??
          BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
      child: DropdownButton<T>(
        isExpanded: true,
        dropdownColor: dropdownColor ?? Theme.of(context).cardColor,
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        items: items.map((T item) {
          return DropdownMenuItem<T>(
            alignment: AlignmentDirectional.center,
            value: item,
            child: itemBuilder(item),
          );
        }).toList(),
        onChanged: onChanged,
        hint: Text(
          hint,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        value: value,
        underline: const SizedBox(),
        icon: Icon(
          icon,
          size: 20,
          color: iconColor ?? Theme.of(context).iconTheme.color,
        ),
        alignment: AlignmentDirectional.center,
      ),
    );
  }
}
