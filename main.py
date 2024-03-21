from tests.import_file import print_test
from structs.point import Point


def main():
    print("Hello World!")


if __name__ == '__main__':
    A = Point(1, 2)
    O = Point(0, 0)
    print(f"{A = !s}")
    print(f"{O = !s}")
    print_test()
    main()