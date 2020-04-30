//
#include <iostream>
#include <png.h>
#include <config.hxx>

int main(int, char**) {
  std::cout << "Hello, Third Party Library!" << std::endl;

  int width, height;
  FILE *fp = fopen(PROJECT_IMAGE, "rb");

  png_structp png = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
  png_infop info = png_create_info_struct(png);
  png_init_io(png, fp);
  png_read_info(png, info);

  width      = png_get_image_width(png, info);
  height     = png_get_image_height(png, info);
  std::cout << "width = " << width << std::endl;
  std::cout << "height = " << height << std::endl;

  fclose(fp);
  png_destroy_read_struct(&png, &info, NULL);

  return 0;
}
//