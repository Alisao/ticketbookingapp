import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:ticketbooking/screens/ticket_view.dart';
import 'package:ticketbooking/utils/app_info_list.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder.dart';
import 'package:ticketbooking/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headlineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: false,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15), vertical: 20),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "5221 43534",
                            secondText: "Passport",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilder(
                        sections: 18,
                        isColor: false,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: "35645 35563434",
                            secondText: "Number of e-ticket",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "46774TH43",
                            secondText: "Booking code",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilder(
                        sections: 18,
                        isColor: false,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2421",
                                    style: Styles.headlineStyle3,
                                  )
                                ],
                              ),
                              const Gap(5),
                              Text(
                                "Payment method",
                                style: Styles.headlineStyle4,
                              )
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: "\$256",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Gap(AppLayout.getHeight(20)),
                    ],
                  ),
                ),
                /* Bar code */
                const SizedBox(
                  height: 1,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: AppLayout.getHeight(15),
                      right: AppLayout.getHeight(15)),
                  padding: EdgeInsets.only(
                      top: AppLayout.getHeight(20),
                      bottom: AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(AppLayout.getHeight(21)),
                          bottomLeft:
                              Radius.circular(AppLayout.getHeight(21)))),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        data: 'https://github.com/martin0vovo',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                        barcode: Barcode.code128(),
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(21),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(21),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ));
  }
}
