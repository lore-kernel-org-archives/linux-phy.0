Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D20C7EE26
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 13:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ojv+RaxtR8WP1X/4CvzmebYtEekbTyPHtmmjUF6NdYk=; b=rVhg0i9YlFdFzw
	v9tfZEwsFUYMZN4PhR5SrwBeUnDvw5bqDpg7v10MSEilgcpuaK370n2hiSGJ2APFdppK9YRfupw77
	zbcfBvQEV29D7E6erbRC49oQf/9aNHC2cMK+TM8u79/+fnE3Fwbdvr/gFJSZiEZ1TIB8IgiwpY0om
	2Sr93egFqZZW3TuUrIkQHboMMgvKsYeSiuZ87fu46UgxBtn2DamON9cDn23Wi5utld4tsvHeWBGV2
	Wve9HmmOb2azVsAbPZ1+EUR4YUqvM4oZL2QAutaAl49ijP7jkdfhtXPSOBWwD524QQPpiiooyDH/3
	MgOq+m2TScxi8vY/n/Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0ky-000byB-2a;
	Mon, 08 May 2023 13:18:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0kv-000bxX-2C;
	Mon, 08 May 2023 13:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=RVxCyIrnP8JwVbh71f1NXNrxsEFJ4QIJaVLqISpX2uI=; b=MUi83P59BkzHtt/OnSx8JFv+dG
	2IR8IsWcYzvjoTIZTTriWntd43ssz/i+xvGtac2lJ5HuBCN2D0RHFjfaDvcsWXI/On/mRqXRWq8Fb
	CXG1QxKufs8/BnAG6xIYah6xtzH1Ma1P2S83GjVVgqjoHy+kSYF7n+rkmXY3RriIdgMfAQH8jWXcl
	r5ExYxd+jHvgmxJFHDUWv91N1O4OTDTe0222fb0XLUh6jFcfULT6YK1S/MqOCAqCJVCOXqQxcTP2T
	bA4JkrdUCrpS4qj5ZLU9G8xyNNKw97wokHV+hzlt584XfsMvmbnKHfmt/bMXGr26zkLJnM8G5Y+K6
	DWwSdVtg==;
Received: from mail-am7eur03on20618.outbound.protection.outlook.com ([2a01:111:f400:7eaf::618] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pw0kr-00EB3w-68; Mon, 08 May 2023 13:18:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQRY/tTVAZHtkEqbJJtJ9GorWmgSA/4NAPs94O4p7RGfijoloT0fMYajalXf0IorBVY8nuu6Kk9B8NvT7Q2K2XySRh5SwdW/vGLODxjBaBcnubOqLLnHw5VbywYe/JDGqYJtktRFdKX6xHabuWYEqKx+/kQXyP0VUqO7mswCE8o0WfAOsnUWwqeS2mu99RwLWFv0ZqZid15umoZEim3y9d+jBs4zjL7mRBmHNHnfe1kNbC+nL8LIjpxvau+K6cEUYZC9Y0Sfo9YMJhKBa/CT2Djfz7as6Vp0f4mwsFqRtw6Xwso4e6m0JBubJh9fMCL7Z2v/ZNCJTuPcuyHkEx0VrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RVxCyIrnP8JwVbh71f1NXNrxsEFJ4QIJaVLqISpX2uI=;
 b=Jq4eBubBg0KwnBMVxpwwBQM6EcCpQEcYFFpmFfrOFhlr3TtKxebtHhpMN/GQvlIgyJ7NhMcv5VN3uyIuqhlwTDOi/5lpmAStBc29qhRpJF1cCkTKnb9BjT7+bUAMe+lmsX2/OKkFa9Z9HbN46+Niuo/62nEcJ1gtE2R32f2dXl9HbX+UyXMVN2l/AeVFx1A1rKu9hRnP0roP1OTXP8q2QOr+XrTXQPxQUoJr6uzg4hJGtogzd57t7qDqoSTeERd0ouqZtyP05trliA8Nf6/UGOHsaWoRcvPaadXE0379ajTCh6IiHs7TxlHxD7snfF3oLz1KMIWVwl8coCBlj/2t5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RVxCyIrnP8JwVbh71f1NXNrxsEFJ4QIJaVLqISpX2uI=;
 b=lSqOJbA0sx0dcQhKnc3H/YDF0EcVQ1oIYwJZPL7JT6zsqDjRQrmYjrNjzKLBfHOENs/DbuQwqFw5mlleBymFXBvqdE4yqd3pEJYy+iBdnluLx2xnQoUxveISReebDJ5ILcbJmFXB4ZKrcSYJ9QrvAbymtgwinLScnPCim1uHOpM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com (2603:10a6:20b:4::16)
 by DB8PR04MB6892.eurprd04.prod.outlook.com (2603:10a6:10:113::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 13:18:10 +0000
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::bcdd:75c9:176c:39ed]) by AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::bcdd:75c9:176c:39ed%4]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 13:18:10 +0000
From: Frank Li <Frank.Li@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	fushi.peng@nxp.com
Subject: [PATCH v2 1/2] phy: cadence: salvo: Add usb2-disconnect-threshold-microvolt property
Date: Mon,  8 May 2023 09:17:46 -0400
Message-Id: <20230508131747.1933886-1-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: BYAPR07CA0052.namprd07.prod.outlook.com
 (2603:10b6:a03:60::29) To AM6PR04MB4838.eurprd04.prod.outlook.com
 (2603:10a6:20b:4::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB4838:EE_|DB8PR04MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ba762ac-4cfa-478e-9dc2-08db4fc6ab59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	zSfea1mZwhIYDe46AOlX3aqtLq/VDyO6sksdo0xHf0dtVSPBt0yUU/lgIndHGUOQEVc+NwfyWjd1G6/Hjbj0IUbY2QGXt4TlDrhld6YEA5mFP8ZhSYRIUBKauVAGPSlKoe3B5CmqWf3YVWUGA1WGG8GMUEIeJYMx7HRjDb8tw3AvDJmqsTd12hQj/cpUiEDZ+ldRX5BmgS7jsVFZAkjGN1wdXemCkUs9KLL3luyHSaJxWau+6IBKFh3fWI92/n0LEijyqCLwkYlaILG+/OjW7ps0ARiSFpttyn2Osrj6myAVlsXmdiOK3ISVVmlrD9Bir4gx5rX9ahN8NcpdB1Xsg7W3NDoLx8Spv2gDvCry+q4C2Vm6EgXeYfdBNi2d1wnahg9N8uhRH7prBQNG+tdBFvEqjPg1B/Vj+RhzehoZScCuQF6w/Rn758vGqmtebPcQVXmb32PwXEHEv1q/phd1DBFFuGJHPksbtY9gEBGF+YTFiIzP2XBfELCbhXorfEpnWn1qEsXUwWpUR7pFEt9LZi22EieCCcGk+FrnxE7l6++vz2idYWbzUG1/1QsCNFEya0/8jFmTjO2Y9HMWwUfg6lkU4X1MIGicM2poCjw371xHKjdrDsMdGP7z2R23gWKvO2E+b7f1Nn0p2xna7WltQA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4838.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199021)(52116002)(66556008)(6636002)(66946007)(316002)(478600001)(6486002)(86362001)(66476007)(36756003)(83380400001)(2616005)(6506007)(26005)(6512007)(1076003)(6666004)(5660300002)(41300700001)(7416002)(8936002)(8676002)(2906002)(921005)(38100700002)(186003)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?+s70TBXQK3voQg20GSvKCKEzelAs8eL+AP4nnkUL2+QPftIJC1GC8qbYLBfQ?=
 =?us-ascii?Q?vUTuBGna71mRsnT8MJWpdTeqz6pCgUW9K/rwJ135hRDIFyCPBq5wcGWo6N9n?=
 =?us-ascii?Q?mJezXD4C2+2MDcymK/g6w854jV0Woprmwdi6VGl0viIewArF9Yep17MHHn8e?=
 =?us-ascii?Q?tkyb7Jg4Ayz1zf84X0kj2A8kYgRSBOlf9zamTUbj96a++cAKhSf2rR3h4NaO?=
 =?us-ascii?Q?KSAbRI4oFw1tWhIZ5kdTKQoIBK7K4Zkn27qtNp8LpMJ1WI0vVkYCR764yTVP?=
 =?us-ascii?Q?9eU+Ne8CCZo0fN0WyGus43YmiQxoyQiCz9PaGTMPpVjLMrcU2tWSZbOCOG8+?=
 =?us-ascii?Q?egUlV55jiAhaPxOuko4dfalvKE9QFNI7B6L2fB5USl9yKQ13Lft3HJxdydvG?=
 =?us-ascii?Q?R77uFQz8y0MqMjJlR1crRcfFdAXESIDxsv7OhjNqOd2GvmghWETRoKQIO8kE?=
 =?us-ascii?Q?weMMBBNTZhWwVI2bFlz5me+oSm9OvVk/3rUrQFcphfzl49GMKAzmSEC+hzqd?=
 =?us-ascii?Q?AD6Pcs3rM0PyhEVShjpPOxrSs4yxVGr1/mJF0wNeMUiWTTR3nav/0ps3VL9T?=
 =?us-ascii?Q?rSJ6A/OhjpAKMPp8/TLKNiEbgc7ztgpzxuANKwe0W8q74JuWcMfF1nylySXC?=
 =?us-ascii?Q?Ce16gbDHQsJbLz9jNpOYEC/GwvrfRJ/BJg8H5EqAc/G+G5xM5k6ya854TRRE?=
 =?us-ascii?Q?8M8+C6/DqWEgZsulfdHd2E3C364UKxbRzxEk9qnkBZbxQ8eOBRfNdclWtpR5?=
 =?us-ascii?Q?4narIFTTddUPGnMhf4FQQSAvIU5WuZYSFbicDO44qqGvCR1QcCfjJ/ywyFEE?=
 =?us-ascii?Q?pJw52jA6Dk+KyeZQ/em+2WNEZgNXLfH2jNm9BFHkmiMvZeLqlb3bHiW0YgIB?=
 =?us-ascii?Q?rXwWp8IQFoMbjiGf0kCsItJN8InusYhuA9UZmIptyB1xkwbRCZjWABwa7rMw?=
 =?us-ascii?Q?7hfijKZAj5LV1sa/YEPh6d8ICwqnr0oju34539SctIhpARZ1OVxXMasWgFBj?=
 =?us-ascii?Q?tKZiKW81P0xLQ3L1jDPz1k+nZRUntZhxKckF/gwRir8VdsTgRAQk8Xd6XFNa?=
 =?us-ascii?Q?B5sZZ0ul/LlKlf6SFOHft1+T0JxTb4FZ51NPz3vvD8jVBMt7pJle9waURkuG?=
 =?us-ascii?Q?WeQ2KdflNaPilCWh7yFtDQ0khzbQwKj6m9Dq4ReUyQ1tynYPIDuifMTO9QDT?=
 =?us-ascii?Q?zDH4VsIu84dhMOu825XECfHvlSTL+4Sy8/qDA8uh5KDffW/AhZOnvmIpGdfT?=
 =?us-ascii?Q?pwXBR3/KlIHjG94WmqaCi+oifZYb2Dg8XtYX3M64asQD/MBluz5t1M6c3TyP?=
 =?us-ascii?Q?2d+qv3j7HuCigjrGtvhSvSlPT8gW/M+Hvu6OneRH1Q+/V0jPwMyUM7oBAuPM?=
 =?us-ascii?Q?aUsKETUTJ6g1UymKxLhfjq7XPnpIFkTieXIAWd0OtmgubBOZp2++b3iwYiNf?=
 =?us-ascii?Q?RgzOP1LkzW/AtEsW5NhViZbT5Vf6nKN9NYwivaeGgq6S4wMcl0FtwkgIlNv3?=
 =?us-ascii?Q?XS5rJ4UNnZW2GtckiMejdzpOeYBcx/PR0Rf3N141X6QmS3R8HDb4oXlAVcOK?=
 =?us-ascii?Q?BzyUHiE4ahRVHY7t7WLUvVvUiCkeTvi5FNH44RRf?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ba762ac-4cfa-478e-9dc2-08db4fc6ab59
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4838.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 13:18:10.1736
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MxpPxXDVHr9PmnCalmoiHD1+PMXfYAbmCzx0MZKLSEOa4xavEDC3MB5Ird+i2U0mdrrvseSJSp/0yiPJtao1FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6892
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_141817_403429_0F37A05A 
X-CRM114-Status: GOOD (  12.20  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add usb2-disconnect-threshold-microvolt property to address fake USB
disconnection issue during enumeration or suspend state for difference
platform.

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
Change from v1 to v2:
- remove empty change before #include 
- Remove dts change from patch

 drivers/phy/cadence/phy-cadence-salvo.c | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-salvo.c b/drivers/phy/cadence/phy-cadence-salvo.c
index 23be27a747a9..b325333e539f 100644
--- a/drivers/phy/cadence/phy-cadence-salvo.c
+++ b/drivers/phy/cadence/phy-cadence-salvo.c
@@ -6,6 +6,7 @@
  * Copyright (c) 2019-2020 NXP
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -91,9 +92,19 @@
 
 /* USB2 PHY register definition */
 #define UTMI_REG15				0xaf
+#define UTMI_AFE_RX_REG0			0x0d
 #define UTMI_AFE_RX_REG5			0x12
 #define UTMI_AFE_BC_REG4			0x29
 
+/* Align UTMI_AFE_RX_REG0 bit[7:6] define */
+enum usb2_disconn_threshold {
+	USB2_DISCONN_THRESHOLD_575 = 0x0,
+	USB2_DISCONN_THRESHOLD_610 = 0x1,
+	USB2_DISCONN_THRESHOLD_645 = 0x3,
+};
+
+#define RX_USB2_DISCONN_MASK			GENMASK(7, 6)
+
 /* TB_ADDR_TX_RCVDETSC_CTRL */
 #define RXDET_IN_P3_32KHZ			BIT(0)
 /*
@@ -125,6 +136,7 @@ struct cdns_salvo_phy {
 	struct clk *clk;
 	void __iomem *base;
 	struct cdns_salvo_data *data;
+	enum usb2_disconn_threshold usb2_disconn;
 };
 
 static const struct of_device_id cdns_salvo_phy_of_match[];
@@ -261,6 +273,12 @@ static int cdns_salvo_phy_init(struct phy *phy)
 
 	cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG5,
 			 0x5);
+
+	value = cdns_salvo_read(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG0);
+	value &= ~RX_USB2_DISCONN_MASK;
+	value = FIELD_PREP(RX_USB2_DISCONN_MASK, salvo_phy->usb2_disconn);
+	cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG0, value);
+
 	udelay(10);
 
 	clk_disable_unprepare(salvo_phy->clk);
@@ -315,6 +333,7 @@ static int cdns_salvo_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct cdns_salvo_phy *salvo_phy;
 	struct cdns_salvo_data *data;
+	u32 val;
 
 	data = (struct cdns_salvo_data *)of_device_get_match_data(dev);
 	salvo_phy = devm_kzalloc(dev, sizeof(*salvo_phy), GFP_KERNEL);
@@ -326,6 +345,16 @@ static int cdns_salvo_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(salvo_phy->clk))
 		return PTR_ERR(salvo_phy->clk);
 
+	if (of_property_read_u32(dev->of_node, "usb2-disconnect-threshold-microvolt", &val))
+		val = 575;
+
+	if (val < 610)
+		salvo_phy->usb2_disconn = USB2_DISCONN_THRESHOLD_575;
+	else if (val < 645)
+		salvo_phy->usb2_disconn = USB2_DISCONN_THRESHOLD_610;
+	else
+		salvo_phy->usb2_disconn = USB2_DISCONN_THRESHOLD_645;
+
 	salvo_phy->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(salvo_phy->base))
 		return PTR_ERR(salvo_phy->base);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
