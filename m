Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554D7CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1wABRWtUi6kwkX0Gylm9W0y8Qaic3Xu/bfBNXt/fHk=; b=vLQtNtvg4yymfi
	zEth7bqlL+kfc4hcCmEZcNTdCTuVrh8F3vLrwuY8pNCysKS2PaJMm1HoCGCjBpmx5XzP8v/K2pvMQ
	iO6nLYepsZGVHn4hPmAOVIo2oIwzANiHtP4EzC6KW/clbdCbekpHWB4BRrNGidRD1hNnY/o8ie2j7
	W2gTvP2oBwDAIMrfBQXg55Xejs/VAQgTIBVQuE7O810OLxHDfrXydLX+zcoecsx4B6t0bJICm30zk
	Ghj+RSxJy6+cIUr/y1wQCSweTOyCgggWsiA+iG2NuT/B0J46ayzBs7R4U51e9+8OGcFnzdHizXmT+
	7rE/adFDyqd/CeTRPWaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT1-000000065Q1-0PKk;
	Thu, 28 May 2026 17:24:23 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeSx-000000065Mi-3ouw
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nL1XmYVTKyhB4fKTYaZfFYFI5tSvXCsyCws7+R9d04bdA7eL9DE3L81J7t06IY0Ury+KlfRxBO4MrDZTcV0x8pNXo6k/G0gJhgQKB+ZBto5eBhDlM3sFsYDKykoy1wrpY3BYHDwMPaO9e6UHz1aGnP2tmGrzpiyvPKW7/AGyZNeLw0WZx1K7wEvBvpQlJzhShcfzeY0pXc0U/A5x1EKjRDTHJAGF4LRjkGCr9GvjhprHFKQAOoYmTYN8uX4GXkRDCfgbcVkJOBXfn7LLSmfPnLqnU8hSJw4c6T0kRTyTF8SK2e9NGvwC9R8YqHt234FdFiEc262PWBUPBbaCESYK9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VFaaAmU2ifG++Nxsg+3t4kDwP2IOmm1pQ6RzL60FyS8=;
 b=TsjXJ+O9csxQw+LQni5/nE+uyWRO8ghZv7ejF053LWPfCodI4x4hCP4PnEIPqDsZjopjftHpDjzH26HE2YBBKT1hyD8HsMinF2cDqKt49jhIO7CjlGkQAkFVzLRQnt3CdY++6obwX58YGHsjlOpsRlTO1ebOoXcsuldxEz428diNjLCSfUOK17Ta9++maQqpiaTsCNnNBiOmfZGrQ49ghfsN3umwIGFz8PjMPf4/B4Xmq8Hzy19FvjK2sj4SE1/pG0HzmNowuLLOjdju98/igC/CpXBp21O0iQ01I2d15YKOJ5EzzZNp0D0Amqa5ab2abrlspvrkLQEamPtMOofxbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VFaaAmU2ifG++Nxsg+3t4kDwP2IOmm1pQ6RzL60FyS8=;
 b=GJJgl5nadXK9BY8kaWHSIVz77LB24bKXv7oofk0Q26zGwSywr4XKFRy3xcJcoI49c+ghISzndrOXdmibu2jXDg+9b9cefAv6rxKaYKZcsKHJTbh99aoGCQ+kgwFcI4sUJHeQM92f1kKfzhk3FgPUCBrWZeUQhBnQHcNkPrbBzjQxf2qF9n3Bd77CsoySt5o1l5EK+xRAzOB5fqO4EvV97k2lf4DZ3yZ4xJVtDwrxNdII8Du/uSWMV3aZLGBdkmuFVKvhfvq9KhaAHkib3jS3YslWzdgA2RQKBfk9iODOEokIy+ie5GoJQ5/5XT1K9KMRn6QKjSBlwIMWfpSNWkaM1Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:11 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:11 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 02/13] phy: lynx-28g: move lane mode helpers to new core module
Date: Thu, 28 May 2026 20:23:53 +0300
Message-Id: <20260528172404.733196-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM4PR0302CA0027.eurprd03.prod.outlook.com
 (2603:10a6:205:2::40) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: b4961510-f9d0-42c2-0816-08debcddeebe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|3023799007|22082099003|5023799004|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: T2Z0gCUuDsxq/TZAeNpiDL4nZCh++fZ5gl62uYdx9RiATy7iV7FIA/qYUkvt+2Uy7L7WI8guUOO8kvG5IOAZ099MKrcpEG3Zw1EXlFLhAag3d821jskRydNv1ErsOJvnow8lcPYYLMNyhHrMqeHlSr/GrHGJmzyxz+nRqd0ptA6vBTzmJ0XcVs51jfhcDRRsgFchEvvWn4WAqYlijfMy9X4y5dnRBSVF0RS4YWyGXdVUgElXVBaCM09+TQ6fJ8X+g3uNYnh8C8TPKAhS3wawiDdIKqBOEptQNROV4Ue8HwPSqycMwM45EFmn0MVWyu2EL+D5B12tK4HDlsw5MJZWlXpvywISR5JJPezfftONHhoYCsyG33ehRiErbOrF1mIu+CcO8RGUh7m63VXYl52wQuppR0NFT107kujlPLhfphC4URg42r+yb2YijKONGcXQj8XaqINZMgNgVgzy+87rqkFJLimyREhlpz68yFGCcpsHtBVW45E5k1F6Tqby38idDaScBGVFePbxYvbnrqckU3MyFCn98V8vTGPFj97MjboLKmwcCwM5nwZFB8CHQp7AyiXbmLTedot+Dl6hfYaaNm3Z3we0JkOuOVlU2BAGxS8ayhxoJK0dLBQM6wSAzg8cf0LSgN1/0Oht7wuHDo3AIzP+BfDzY5HA5nAqrtZF6Z0Q3ohPOtlSLp/fd+a0jfrO
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(3023799007)(22082099003)(5023799004)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qIMakGLpUOCQF1uPQdxCWnN4k2Xj7P+qhCKEn54mV4at+3yL3ElZEOUWOjS2?=
 =?us-ascii?Q?EK0PU4pGfXqd2YXfGq66S4X7EVm5mO6q9yruyBwcuCuw393JQT5c81wBzpzY?=
 =?us-ascii?Q?MA0+baqyYXrqozuLL7R4WRtOg6tbSC2h1Z6RepNjljtTYhWWmNWqq12CgnLx?=
 =?us-ascii?Q?w/vvC4ZNvo9gv2UY7Z+WJs+MyK2YPM//x/1Wu3NVj0UEIfqckHD2PF56l6bA?=
 =?us-ascii?Q?Vfay8th0pT1W7z+xhv5ImaHPPx9e479GIjBWUr7CQYCzQa1aeSh2mFWyNa/J?=
 =?us-ascii?Q?yPIdcoYwRWVQFQCQgJ+8aH+PF1NZ0HuIeTuYUBncuLjr4yE6X98nPPnkMjc4?=
 =?us-ascii?Q?8lsQ9TAssH/ApZYOauA77HkmMpO4PHr5v6yCmS96j/3XWaNWl4cV13Gn3ubI?=
 =?us-ascii?Q?4OamuvzGExbqU35K0bZjKWrHlAKqW5kZJ/DzFRwbuP0GMDSSnRouXpLxLs1I?=
 =?us-ascii?Q?ZDs3Q0HHeiAZOxmrEfvq/dHYUuI1XZOeTxB1q/u3MiX/VT6a52Sg33YzJxsx?=
 =?us-ascii?Q?mnUJL5J9zBWNKkHpKWra0wyVPzqBd3asDFzMIvJPcX5sTYTxdPVP0x6TGDsD?=
 =?us-ascii?Q?hJ9fK2ft6moGMOfzBA8uH1X2trQ9yqPDM7/p3GbnBmWWHYqhkQPk/x7dHMbi?=
 =?us-ascii?Q?KlN1jARcdChbqNpi1VSu8P3ti9U42w8tckBH4zN8OrdaJbk4WusSxDOM5roA?=
 =?us-ascii?Q?QkQYrMmMYhxhQyCXATfAKeUj8mlHAv/xhF+e+QTfFa1h2ugV1ujeppyPJYcE?=
 =?us-ascii?Q?B15ZI0Z+5K7K8XOjc0tl43LUmgBLmjx9i0kUEbGVALYMwM0p8iKD4OQPYP0a?=
 =?us-ascii?Q?AQpPKz+ow8VapB7Zy4tDIN4eNL/INqockjZuao51pH5Pu+fV7dD3CGc4qAQf?=
 =?us-ascii?Q?qtqdY//ofzj/Hr+4/hpndsbDgGqzVXt3taniaAjzHHhYufRPUjsW+Wn3MBuf?=
 =?us-ascii?Q?IOniNX9CWw4jJyHlf9k1LZKINsBkgs8cLdEyDmS0tiN1ZP9r6h0tvjb0Q6m+?=
 =?us-ascii?Q?vxqtKiSe7QhNgVeVeHZ464m5gHn81Thak3BJbzP//VWxTjXb/wWvg+E8B0rB?=
 =?us-ascii?Q?bFDMQxu4PiuvDKpp4mUpGD9eytmK8mVn+6MD6ZOaSzZ+mll3AlubkCcN2F0B?=
 =?us-ascii?Q?6Q0++Capkv2saV4pHp1sgMMK8izlunrfAExpWoMgkzxr2lDm3jzuJlPFPVHo?=
 =?us-ascii?Q?ZJq6B+Y/Jv8C2abC/PC+OQaCjlT9MGozzd+AQT6eLOlI7dx8jX/M/Jp8WJvW?=
 =?us-ascii?Q?I1iS3qUp37+TbkK6qF9DiQfUp/aC1c+59BiVCpKDdygTl4jag5Sx17ruAifr?=
 =?us-ascii?Q?a0CpLuj5MErfskCjKFb88uzd4iUs/tPHAQ5mYnDq9MYi0jquz5M6kOqZl0RD?=
 =?us-ascii?Q?2whCCc3UyEEGKB0d3I3D2JKHdVyrUq0trZbtAgQtWVyJbDTNSg55QcWKFvaO?=
 =?us-ascii?Q?DFppnGGW2SVStmJpsaTZfumls7E6KUFbsf13hocT6c1JHVAlNW49ovirIwR3?=
 =?us-ascii?Q?bfKBqkRjwkxq/h6qCQHpQbNMNrdVqygarUBzfcOomJ8LuX/8ATXAXLlwb0v3?=
 =?us-ascii?Q?b3K7StKPeIwINbvjqCHyi00G9C2VX/cAP5BA0Ua0B5GwWLyApcBwMy3PdbUS?=
 =?us-ascii?Q?N013HBoOFB27mBDJVgFHUimvEQngZCbawE8kaMRqkWPIbAKcsiniGS06/fi3?=
 =?us-ascii?Q?fIUYBnikF44wodFFqgLgA/KB0WidSlIN/MRnW8qn/iEqjbLIBMLQl7iosCxQ?=
 =?us-ascii?Q?cgUJhjNLSNvQBRlmFw8ep1wrFILYUdt5cREHgD/HcwVGEj6mY+7R?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4961510-f9d0-42c2-0816-08debcddeebe
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:11.3722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pLZtyiUsMDFsQHILNxw/X7Ae9XYlINzgrtz2g6aEpUXMVWke9yqSx6PB9MdEhgAKq6gLzFYSU1hU26kykVuwzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102419_952977_A6F632F7 
X-CRM114-Status: GOOD (  22.62  )
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

Do some preparation work for the introduction of the lynx-10g driver,
which will share a common backbone with the 28G Lynx SerDes.

This is just trivial stuff which can be moved without any surgery, and
is easy to follow but otherwise pollutes more serious changes.

The lane modes themselves are exported to a public header, because on
the 10G Lynx, the hardware requires implementing a procedure called
"RCW override". This requires coordination with drivers/soc/fsl/guts.c
to tell it that a SerDes lane needs to be switched to a different
protocol (enum lynx_lane_mode).

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/Kconfig             |  7 +++
 drivers/phy/freescale/Makefile            |  1 +
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 56 ++---------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 44 ++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h | 24 ++++++++++
 include/soc/fsl/phy-fsl-lynx.h            | 16 +++++++
 6 files changed, 95 insertions(+), 53 deletions(-)
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-core.c
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-core.h
 create mode 100644 include/soc/fsl/phy-fsl-lynx.h

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 81f53564ee15..a87429f634ea 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -51,11 +51,18 @@ config PHY_FSL_SAMSUNG_HDMI_PHY
 	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.
 endif
 
+config PHY_FSL_LYNX_CORE
+	tristate
+	help
+	  Enable this to add common support code for NXP Lynx 10G and Lynx 28G
+	  SerDes blocks.
+
 config PHY_FSL_LYNX_28G
 	tristate "Freescale Layerscape Lynx 28G SerDes PHY support"
 	depends on OF
 	depends on ARCH_LAYERSCAPE || COMPILE_TEST
 	select GENERIC_PHY
+	select PHY_FSL_LYNX_CORE
 	help
 	  Enable this to add support for the Lynx SerDes 28G PHY as
 	  found on NXP's Layerscape platforms such as LX2160A.
diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
index 658eac7d0a62..d7aa62cdeb39 100644
--- a/drivers/phy/freescale/Makefile
+++ b/drivers/phy/freescale/Makefile
@@ -4,5 +4,6 @@ obj-$(CONFIG_PHY_MIXEL_LVDS_PHY)	+= phy-fsl-imx8qm-lvds-phy.o
 obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
 obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)	+= phy-fsl-imx8m-pcie.o
 obj-$(CONFIG_PHY_FSL_IMX8QM_HSIO)	+= phy-fsl-imx8qm-hsio.o
+obj-$(CONFIG_PHY_FSL_LYNX_CORE)		+= phy-fsl-lynx-core.o
 obj-$(CONFIG_PHY_FSL_LYNX_28G)		+= phy-fsl-lynx-28g.o
 obj-$(CONFIG_PHY_FSL_SAMSUNG_HDMI_PHY)	+= phy-fsl-samsung-hdmi.o
diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 92bfc5f65e0b..0f7814b7224c 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -9,6 +9,8 @@
 #include <linux/platform_device.h>
 #include <linux/workqueue.h>
 
+#include "phy-fsl-lynx-core.h"
+
 #define LYNX_28G_NUM_LANE			8
 #define LYNX_28G_NUM_PLL			2
 
@@ -282,15 +284,6 @@ enum lynx_28g_proto_sel {
 	PROTO_SEL_25G_50G_100G = 0x1a,
 };
 
-enum lynx_lane_mode {
-	LANE_MODE_UNKNOWN,
-	LANE_MODE_1000BASEX_SGMII,
-	LANE_MODE_10GBASER,
-	LANE_MODE_USXGMII,
-	LANE_MODE_25GBASER,
-	LANE_MODE_MAX,
-};
-
 struct lynx_28g_proto_conf {
 	/* LNaGCR0 */
 	int proto_sel;
@@ -463,12 +456,6 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 	},
 };
 
-struct lynx_pccr {
-	int offset;
-	int width;
-	int shift;
-};
-
 struct lynx_28g_priv;
 
 struct lynx_28g_pll {
@@ -487,11 +474,6 @@ struct lynx_28g_lane {
 	enum lynx_lane_mode mode;
 };
 
-struct lynx_info {
-	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
-	int first_lane;
-};
-
 struct lynx_28g_priv {
 	void __iomem *base;
 	struct device *dev;
@@ -531,39 +513,6 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 #define lynx_28g_pll_read(pll, reg)			\
 	ioread32((pll)->priv->base + reg((pll)->id))
 
-static const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode)
-{
-	switch (lane_mode) {
-	case LANE_MODE_1000BASEX_SGMII:
-		return "1000Base-X/SGMII";
-	case LANE_MODE_10GBASER:
-		return "10GBase-R";
-	case LANE_MODE_USXGMII:
-		return "USXGMII";
-	case LANE_MODE_25GBASER:
-		return "25GBase-R";
-	default:
-		return "unknown";
-	}
-}
-
-static enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
-{
-	switch (intf) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
-		return LANE_MODE_1000BASEX_SGMII;
-	case PHY_INTERFACE_MODE_10GBASER:
-		return LANE_MODE_10GBASER;
-	case PHY_INTERFACE_MODE_USXGMII:
-		return LANE_MODE_USXGMII;
-	case PHY_INTERFACE_MODE_25GBASER:
-		return LANE_MODE_25GBASER;
-	default:
-		return LANE_MODE_UNKNOWN;
-	}
-}
-
 /* A lane mode is supported if we have a PLL that can provide its required
  * clock net, and if there is a protocol converter for that mode on that lane.
  */
@@ -1569,6 +1518,7 @@ static struct platform_driver lynx_28g_driver = {
 };
 module_platform_driver(lynx_28g_driver);
 
+MODULE_IMPORT_NS("PHY_FSL_LYNX");
 MODULE_AUTHOR("Ioana Ciornei <ioana.ciornei@nxp.com>");
 MODULE_DESCRIPTION("Lynx 28G SerDes PHY driver for Layerscape SoCs");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
new file mode 100644
index 000000000000..d56f189c162d
--- /dev/null
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Copyright 2025-2026 NXP */
+
+#include <linux/module.h>
+
+#include "phy-fsl-lynx-core.h"
+
+const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode)
+{
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
+		return "1000Base-X/SGMII";
+	case LANE_MODE_10GBASER:
+		return "10GBase-R";
+	case LANE_MODE_USXGMII:
+		return "USXGMII";
+	case LANE_MODE_25GBASER:
+		return "25GBase-R";
+	default:
+		return "unknown";
+	}
+}
+EXPORT_SYMBOL_NS_GPL(lynx_lane_mode_str, "PHY_FSL_LYNX");
+
+enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
+{
+	switch (intf) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		return LANE_MODE_1000BASEX_SGMII;
+	case PHY_INTERFACE_MODE_10GBASER:
+		return LANE_MODE_10GBASER;
+	case PHY_INTERFACE_MODE_USXGMII:
+		return LANE_MODE_USXGMII;
+	case PHY_INTERFACE_MODE_25GBASER:
+		return LANE_MODE_25GBASER;
+	default:
+		return LANE_MODE_UNKNOWN;
+	}
+}
+EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
new file mode 100644
index 000000000000..fe15986482b0
--- /dev/null
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* Copyright 2025-2026 NXP */
+
+#ifndef _PHY_FSL_LYNX_CORE_H
+#define _PHY_FSL_LYNX_CORE_H
+
+#include <linux/phy.h>
+#include <soc/fsl/phy-fsl-lynx.h>
+
+struct lynx_pccr {
+	int offset;
+	int width;
+	int shift;
+};
+
+struct lynx_info {
+	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
+	int first_lane;
+};
+
+const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
+enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
+
+#endif
diff --git a/include/soc/fsl/phy-fsl-lynx.h b/include/soc/fsl/phy-fsl-lynx.h
new file mode 100644
index 000000000000..92e8272d5ae1
--- /dev/null
+++ b/include/soc/fsl/phy-fsl-lynx.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* Copyright 2023-2026 NXP */
+
+#ifndef __PHY_FSL_LYNX_H_
+#define __PHY_FSL_LYNX_H_
+
+enum lynx_lane_mode {
+	LANE_MODE_UNKNOWN,
+	LANE_MODE_1000BASEX_SGMII,
+	LANE_MODE_10GBASER,
+	LANE_MODE_USXGMII,
+	LANE_MODE_25GBASER,
+	LANE_MODE_MAX,
+};
+
+#endif /* __PHY_FSL_LYNX_H_ */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
