


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_view/gallery_view.dart';


class PhotoGalleryView extends StatefulWidget {
  @override
  _PhotoGalleryViewTab createState() => _PhotoGalleryViewTab();
}

class _PhotoGalleryViewTab extends State<PhotoGalleryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: (
          GalleryView(

              imageUrlList:[
                "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg",
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                "https://nypost.com/wp-content/uploads/sites/2/2015/04/cruiseshipsmain.jpg?quality=80&strip=all&w=618&h=410&crop=1",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeqGypKitdhIo87a3X3BZ-4oR4RVVqfg2WQ&usqp=CAU",

                "https://static.toiimg.com/photo/76420840.cms",
                "https://youmatter.world/app/uploads/sites/2/2019/11/travel-world.jpg"
              ]
          )
      ),
    );

  }

}