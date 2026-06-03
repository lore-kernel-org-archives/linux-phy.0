Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA8ACCD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1JusyTxIezG8cV1gkReArF5VlKf2ZcQqxeMxLx8p7g=; b=Zwf1v86FaSy1Je
	fmkvjn4JK6MEy68AvNV58rd8o6t2SdDQt6uizOlQGgD1Edbo8j/4flxDj0spZn3EUbvtUz/pRq2cU
	1amTV1u3d7On9PgDG3Y66iKzeU0v2MRvoIYVv3GE0STsPMaVsoA9ueraQUeAMXFGL94m9fAc95stm
	PJLUGDLDg3bGfh1XGAs+8GZ5j/aAxnzT00KUNxLMD8J78iXFbjUZiCaKr6E86T9vgmxsb5UZcccI4
	JX6etHVE0N29H/IRbe/ZFCx5ra5wTws6kv4gX7Gt94JcCXwnBjKj6z88EQPlWGWlsOBwrIt8e6Ixv
	5PTbFDfHFkRRUZuNNEBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVP-0000000FA4X-2Slk;
	Wed, 03 Jun 2026 13:19:35 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVN-0000000FA1L-0l7z
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MnErPrGznPq7hQalfJreKn9gsb8MDv0iAwSVCry2Mt1F3SLNo4/szuhKi0DjWuASoc0Z32GYNnVFT9U1FW0f2XiH6BhsFFv3Egrg29N6Upy1ozUFYYOWmfqy2nrQTgsHjnDdSJatfgoHQ2HyDtz7F4yb+z/mHbPOh0u4I+KFLhrXereQ1CVfOdeU+nqHBFJDwZKj+VQKgYcMriB2UWkHSkpJEcOsq9HFka7QAs4o+jc18XrX5NzXEIoUaf8HVJU++7eWvszOg8D+Bzg4UpF4JaU9OqxGOKUozAC0UxSor8GnDRFVuOBIHNoL9sjV6Y51llTyBnS1AYapjglupVUAlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C4S7xlrLCazNGaeWbDOfMAVH1fcF7xfphEc7bOVwjJA=;
 b=OEw4wG+3pFv600V5WEWX3aM0N3z633l2AoTMGRS13TALOEDPgM7T+1x2PGzLFU38T0F5My+BaL0aM6aMpj5p5jvM2SB1O//xqahcLcvWyWwsMJT2ns5YZqK24dvvAmUe0YF/NHd9QNZG5wARZktvC9QZg/0WmcC8UT2WzdCNOnUfqSyDtV0GtIFPzppsvB8FrsO00vEct2IHFo+C7tZGCecPy7CGPJ4rEDHsyYfbhD8CwDuolCueyYJt/J8f/z+SnW9VWi+RJ4i1equrtM6yklojjh45yoc6KGHtIj446uRLdZ/ZNiufS9oj5bBPERlAGSAfHSet2lYowvXCQJEG6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4S7xlrLCazNGaeWbDOfMAVH1fcF7xfphEc7bOVwjJA=;
 b=TWJ8WRVWpLstcFuAcJXD9owjM90Qn31a02g5H8qg+n/aGGY6jTRySC4CEAFVez/v/GT9G+4Ruzprcbp7Mj9aoQ5+Z/yRqPOHQz63H7doAmQD0roH1RXlZHENr+4i/lcYv1KL4QoYm2/dAgrH6oWDesSRS9IdYlegX2NkpBcYZzJnKhULPq6wx2qCtxR+QuH01s6OgPP+c6wNuZ5WDOi/RlLAWOzuJ/9UCQFwWkXYNNMGXvLT66/GJFnNw27hZkINmS7wPozjW6Jz05BjfMhfuUCNg3H8BeYcGyBKJzysUG0HTuWQSnNMp+QmC710WNmJXJ1thRNLeZ5qu1unykQayA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:27 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:27 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 03/16] phy: lynx-28g: move lane mode helpers to new core module
Date: Wed,  3 Jun 2026 16:19:01 +0300
Message-Id: <20260603131914.503053-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0046.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::26) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 7240b2ba-7406-4752-f795-08dec172bcc8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|22082099003|18002099003|56012099006|11063799006|3023799007|5023799004;
X-Microsoft-Antispam-Message-Info: kq8HrkPTORmZb64txHyHEURtZSmXwkWRyaw+ip/Ta1jm9JHkYmGJssKBEt2q/miVcmb+bRRJirOKqqd79/yx/p0nxMNk4VHx873qHA21emyXl/2ACoIPnEFY05mYk94AHlyfIkJypet0/dNoq+0sa7zlm7WGGFNvtRk2wlsWQlSVN7uL8KZ9H2WVEIh0EsqrYx0CXIvySGYqe+kW9idi/FAyeYLTcOgVXFD5mrZ90GN9ncM4rb1rU6OYlTbkF21oLaq1Q5P/kc9CVS70G760L9nsxHsGERU1nmE5HgsMQ2IXEv/8xLtIS+OI7oZEdYHGgS6Zh1SdPTDbZh5IEz0iHytpkw338/b64nj4T6f3aWEfOkmGrm3fiMDi+IOf3Lq1HeAH56fpEU9WSl4ItBiD9NadMi1S+m/OG9ls2YNFTnraRjoRozBn/UQFC/Og/ybJRvTxHSx1lhs5+WxKiTASfqcNzNAz7YaKOLAqib6aoFWgv60Einxpm9CTRU7vWZJU0NvtClVXW/ahySiOYiwE7vMlZyOALKgoFO33Sxq9+0jDUQ5F1Sx9gQ7FFflqCUbTH8QaXbGVZdGH/ogcCIW1xilFdly4S6+9/XHgQqJqMSEvrfUKhB+otxLQq+yuPtYrQ/zAYHqksStp++RO7jCSfjDF20MDS5MfxwCmdLn29b/XdkOjA0m7PhA+jvTI0T88
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UpYNik/oJyo/P1QoLAheO3wZa7PgJFor3YIcJoGRYZ1qIXTsp0n1xIGy+JaG?=
 =?us-ascii?Q?QON2C8JgKeU1DjQLw+lkhcN+mULZfW/x0MaZ4KtQIK+SIqNLfdkUXaAnr/at?=
 =?us-ascii?Q?8fkfaReRy2u/Amocm3OCYE6jFnTj5E+I1DMcwEdXZ3y+uYcWbRWJ/w3exdl9?=
 =?us-ascii?Q?lKs/nHvoAb/vWJVbO173Iq/73brL/hloxx88C8EK+79uy5bsGdQMcfwjgFjQ?=
 =?us-ascii?Q?TEziYeLOVQd2KVsIre0U3lWehB/c2htghEcGQRXwLPgyToSkC4pMkNhq787O?=
 =?us-ascii?Q?7m1XZPZOw4F2OCw+WsXMK5xCcbS23Ta4KE1v9UL7itQy8Xu1acuRdQzs3/Ey?=
 =?us-ascii?Q?g9SVN3EP3TbLBP75IedZ7giau6cTVCdSdmkbqRUiAUyHqiZBp4JN7/gGyf12?=
 =?us-ascii?Q?qzpIHU6zk03i8yyVaj6pOvaaXeRa9OAJYWrWRuLkl9rCgBPoFMX8XguNY0S3?=
 =?us-ascii?Q?fPJuCsY7YivuGjQ7Wt3Xk+HHZJ45lBCEpqV1oovUnd9fjxjgF6fZ1ST4yvzS?=
 =?us-ascii?Q?S8XjFwjLBENAKfe8SsiNFMnKvNN9r8ueoJtItL0orBbvMkvesDawchXIlba1?=
 =?us-ascii?Q?Fa3PyoU3qik1e3DRg6AtoRZBQ+s22akHMScdrMtr6ehjFPmWv6cBbl1D3rWt?=
 =?us-ascii?Q?t2Wni9nw8zVwQI2mknm78POMkFdpgslU4fQNgll9eP7sM4df9GQFSx7SOOJc?=
 =?us-ascii?Q?a1Lo25tPKPsYUnzAyKxiXYy+G7k80s7HIlkWmAKnEMgJJJY9c6pNKxMsFizw?=
 =?us-ascii?Q?oTc3Ws8h8G7MmMTi9YdS7Q/DK09oTVEyI9FKp6GV2Eqq2S6jJ8xYoMz0yp1U?=
 =?us-ascii?Q?TMuDYSIpJIhAEjyhwRLeJ1m2RF0Zq/3Ibk4CiQuqTcSIcV83Rh6RtcxGNYij?=
 =?us-ascii?Q?vzq0IlbPHOAwhv/mbcvXxdYcw2MZubzdplsfPXTUfJM3eDijy1UNN5XRrzUu?=
 =?us-ascii?Q?zJyrSNf8f9k5UP+Kcz87uyk8SnQuPuqQKQAMTxTOHJ1SdnCspJGpJ+bj3Ulk?=
 =?us-ascii?Q?uUADWp56GyLT86jy7zVTWo5x3v2x1jwKYIbFmpbEoI3PRyt2+38LbytI8lmM?=
 =?us-ascii?Q?+feCSaHBRBRo720GGgbFBKRluujgdgcAEjZt+zU724buL0a4bPMzmoqID6K5?=
 =?us-ascii?Q?Mcowx/KCncKZDVVC+bT5IsQ0FUqJy7WkgiqtxFi02LimGy+Xp4HP/9JMyjpt?=
 =?us-ascii?Q?sERhVQi0j+rwFJn9pI/v0JkGw4435AMZWXWJjY9J8LU9ozM4+xU++GjVaQaX?=
 =?us-ascii?Q?BMzt2uGkCuEG5KDqIY7Pz60JW4TywjNZD7VNZK7lRIh9LeUnofgGe4y5x85l?=
 =?us-ascii?Q?Yg3wu1L0vqUiWddC8F83Wkkccq5j4S6aqCFNMNL65WJcAlI2DJ1uo0y4s3GX?=
 =?us-ascii?Q?3d+9SieNnk7G+A1XMy85e90Atbmwz2jclifeM628tDegl3jR80rIo4O9A29e?=
 =?us-ascii?Q?/uU7/P5QMew590lYNIqkQfshoFfUWLiDIQuFn1lzJe5yo/rToxn6eSlcjLyM?=
 =?us-ascii?Q?XKuTv8ch7JIHfoH158qRTcvPS8VaZC/eix+taVpW094KSbn2I1FCRq85WJFc?=
 =?us-ascii?Q?q/M+0p6pVoFe1J2JNFn7QiG5qtjHUj2gknHoEimey9aQW0Ub726fPy56O0Mq?=
 =?us-ascii?Q?r311ZmwljHukiuZKlM/NxagP/Tv7upgreE4fsK2YWjaHBC7UMv30JiJgIVxV?=
 =?us-ascii?Q?zLi5cfv8cxFTe1LMfZwl+J94OL0MngdLZkub94RxlxfM/b0buRGFA6hqeqqq?=
 =?us-ascii?Q?GyvUvTm+XQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7240b2ba-7406-4752-f795-08dec172bcc8
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:27.2491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lsbtQWpuNWYBM9y6EPE9IH5G5hfW2pCOfRuPC2PimW4yQ4Dihc/rpGBNtihAyZzKtykDKNv8oT12C46UwvRbIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061933_230115_9B49CE21 
X-CRM114-Status: GOOD (  22.32  )
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
v2->v3: remove help text for hidden Kconfig symbol
v1->v2: none
---
 drivers/phy/freescale/Kconfig             |  4 ++
 drivers/phy/freescale/Makefile            |  1 +
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 56 ++---------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 44 ++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h | 24 ++++++++++
 include/soc/fsl/phy-fsl-lynx.h            | 16 +++++++
 6 files changed, 92 insertions(+), 53 deletions(-)
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-core.c
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-core.h
 create mode 100644 include/soc/fsl/phy-fsl-lynx.h

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 81f53564ee15..ac575d531db7 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -51,11 +51,15 @@ config PHY_FSL_SAMSUNG_HDMI_PHY
 	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.
 endif
 
+config PHY_FSL_LYNX_CORE
+	tristate
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
index 1f5cb02931f5..d3f49d96340f 100644
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
@@ -1572,6 +1521,7 @@ static struct platform_driver lynx_28g_driver = {
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
