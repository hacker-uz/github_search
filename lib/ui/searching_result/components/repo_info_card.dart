import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/models/repositorie.dart';

class RepoInfoCard extends StatelessWidget {
  final Repositorie repositorie;
  int index;

  RepoInfoCard({Key key, this.repositorie, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: kBorderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  repositorie.items[index].name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kTextColor,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Color(0xFFFFFFFF),
                          size: 16,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          repositorie.items[index].stargazersCount.toString(),
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          repositorie.items[index].owner.avatarUrl),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  repositorie.items[index].owner.login,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Divider(
              color: kBorderColor,
              thickness: 1,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Обновлено: ",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "${repositorie.items[index].updatedAt}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
