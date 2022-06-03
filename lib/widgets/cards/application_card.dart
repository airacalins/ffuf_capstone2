import 'package:flutter/material.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class ApplicationCard extends StatelessWidget {
  final Application application;
  final Company company;
  final Job job;
  final Function onTap;

  const ApplicationCard({Key? key, required this.application, required this.company, required this.job, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: CardContainer(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(right: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: NetworkImage(
                            company.imageUrl,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            company.name,
                            style: textTheme.caption,
                          ),
                          Text(
                            job.title,
                            style: textTheme.bodyLarge!.merge(
                              const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: ColorTheme.textColor,
                              ),
                            ),
                          ),
                          Text(
                            job.title,
                            style: textTheme.caption,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 20.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade100,
                      ),
                      child: Text(
                        application.applicationStatusText,
                        style: textTheme.bodyText1!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        '\$${job.salaryFrom.toStringAsFixed(0)} ${monthly}',
                        style: textTheme.bodyText1!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
