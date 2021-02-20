# flutter_nested

[![pub package](https://img.shields.io/pub/v/flutter_nested.svg)](https://pub.dartlang.org/packages/flutter_nested)
[ ![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](https://github.com/crazycodeboy/flutter_nested/pulls)
[ ![flutter_nested release](https://img.shields.io/github/release/crazycodeboy/flutter_nested.svg?maxAge=2592000?style=flat-square)](https://github.com/crazycodeboy/flutter_nested/releases)

Lists that support nested scrolling can customize the header and the number of lines displayed per line.

## Content

- [Examples](#examples)
- [Getting started](#getting-started)
- [API](#api)
- [Contribution](#contribution)

## Examples

* [Examples](https://github.com/crazycodeboy/flutter_nested/tree/master/example)

![flutter_nested](https://raw.githubusercontent.com/crazycodeboy/flutter_nested/master/screenshot/flutter_nested.png)


## Getting Started

```dart
  _buildList() {
    return HiNestedScrollView(
        controller: scrollController,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        headers: [
          Image.network(
            "https://img.mukewang.com/5f057a6a0001f4f918720764.jpg",
          ),
          SizedBox(height: 10)
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.95),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(index);
        });
  }
```
## API

Props   |  Type     | Optional | Description
------- | -------- | -------- | -----------
headers|List<Widget>|true|Define the head of the list
itemCount|int|false|The number of items except head
itemBuilder|false|Called to build children for the sliver
gridDelegate|false|Controls the layout of tiles in a grid
controller|true|Controls a scrollable widget
padding|true|The padding of list


## Contribution

Issues are welcome. Please add a screenshot of you bug and a code snippet. Quickest way to solve issue is to reproduce it in one of the examples.

Pull requests are welcome. If you want to change the API or do something big it is best to create an issue and discuss it first.

---

**[MIT Licensed](https://github.com/crazycodeboy/flutter_nested/blob/master/LICENSE)**
