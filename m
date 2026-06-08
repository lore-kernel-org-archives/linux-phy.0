Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35997CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swSu1xo6Oh1GsVZJHuOJtZUKRNtPOy6rTK/INP0u4Yg=; b=GRFWbO2lBlRYh6
	O5lr6u3Y6XITKZJ/ntsHik674jYFq+Ktamtq/BJu3HyVlINee7cEt9Yji/JSrZ6qNv4cUiCtGuV9T
	bDbZTRrYZeUcGY6mTZm1Ye3pVeYGW4/miMMce3nUQv+Ang9GCtkXh3KI4oZxUkO87i+l1R+o141Bn
	q3n9xnI3EsustGB1sfzKn7LLxCcUZ8bsxNNG2PhXZzQzdF+9x3A0pHDP9krwVjSZx1wsoZjFElWeN
	uKxqbu7m8dkI8Ay86y2FbR2ePqrMM1VgL8Ibrin0tzuxcOS2/PLSKZ/WqET0nSQk8ab2+7BdLzL2q
	RhEpioHLoFwB99SAIHqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHw-00000004U5k-41xh;
	Mon, 08 Jun 2026 22:17:44 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHu-00000004U2a-0muV
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pB/0sNLroqT9Y4prM10xkCBJ6WSZmCtMlXHd2FbZhpkidsoQNeNKrC9IkdE7TbbKBtIolQ0Jw1SN3YJHJLLbNrvA3WzJ52QbRa6C809wbvNKgEHzL8wJ9StIKfAiGownSx8ozz/XdCmrM96w+2D6x1eNDoAHkO/zc9YFy5ZOIUrMfV39IIrmPFxRk97dilAjdVE45sa1x6bPhuL+/TwBrnPfEmv7b1+f6Miy1tlo14Yj7uGTNt9ZjhgqPC80MEATPNVDMuTrRbW/v7eAPiSd93AJkP6AqUzCutU7i27YIw0hmOEjGzc4OaPmH0qI7HXuIZLroiwvmX8etl1id9sz5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wrDZHZs1aQD3ciGYvee9l9cp2x7h7CbKA23TpmVI+Tg=;
 b=G8AN/RBP+9VEWpENVl/EsNzrl4j0Nj5v8/RAZqkvj7SDER+aAJUtMdH5swQ21LE1N+c3SkDTxdQVo9DFP2Tyrzmw4Tbdurm53PuVFUMTnmTNRoWwfYxWngAJIacpH0fHsZ2cGHso8AfDT6OndVIzjDrww9rP9q+zJr2mv7KHSNH9EV/P6JmZ8D6lGA3GnkMFqA8V3mdaoVg1qzDUMMLQWY0h0+YjV2u24Up+tG78K6n+PisTJNV8a0xqoQiTQswzszH/Rg31onCexkXa+2ODZgUdqFO3R4NSawQRdQqJ3nnhaN+dXmoQLyWAVLLRSwcUPYrSmoF26CA/VPR7ODAwgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wrDZHZs1aQD3ciGYvee9l9cp2x7h7CbKA23TpmVI+Tg=;
 b=bEfmXL4iQiTZPelMtLNd3KaEzJ8MPz53RokaQm0xaIXzotNbTBtVXnUuu4Z9IGcdeQYawGqPvzc3BRVFh2aoI+fnmYKbpwEkHIJYSap2AxBp29DxU/uXRjAwcx8gI7qdIcyeSlQm6pEacC0wW5oPx4usSGttSoGMFzdmLcY2TBFuFpXEQuKYEvv5S447GLOWL2tFKxiOnYWJvwFZrBhmHy0gHUgPFCA9zzwibIpBWN2KklN4N0Oz8h7qffUoYPbX9hvNX56jEDixw0PVckjkNTmjbk39jwWazO5agvDhR5GzTKj3FGLCw7XZrTOLkS3xaazRwqe8IBeo1rCzwxyJFg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:35 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:35 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 03/16] phy: lynx-28g: move lane mode helpers to new core module
Date: Tue,  9 Jun 2026 01:16:57 +0300
Message-Id: <20260608221710.1572971-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR0902CA0044.eurprd09.prod.outlook.com
 (2603:10a6:802:1::33) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: a58baea5-febf-402a-93e6-08dec5abbe27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|22082099003|18002099003|56012099006|11063799006|5023799004|3023799007;
X-Microsoft-Antispam-Message-Info: Pyxh6hHtPa/C/GyzLHYgxQuJs14Mz/F+0wd4sUjSi4iXcC/m1+lL3xU2wRI3jH2O+wUXOg32ygvCMDrzWJseYvIFgRSXMo/W4lJwWnwVA/tB3kNvX0uETGgYCjmcWq6cKnsOGwemoNlTxLYZhBXty5pp2Rx9lUJAfq6t7NkumUUCvSDF52KkJw3MWYAQSHYBxaGLWebyDdregD3GKpzTpVDy3J2t7gfv4bcVb0F9nefxSJCYUKNE5sDPMzftmOxHqAJYN28GsmjYytucJiOA2Fm2qmTo4cEyqknk+KXjNcc/lQsGSS1XhD5n1Y3smyv9ZhXeUya7uD4IQAA1rZvE8VWIGbKema0bTkXHx1Ay3LjZ5TbaNnFyGOwj1o2jGEBvLylY7UynYByIcyPx6di9mOU2lqDzqpA3kwX8czsPEgrKHun0mzqJ2ViO4Na7GnU/UnUThMvKDvnR1gyNggXTgW4YosR3D7GR/6KXbA8r+p5DEr1LB6qIxY8c/4s1wooyzkF1Fd/LYblq/dI6K2AgFZN0xxERSaFuoWktUiCwBn4t+A/KzczgIACqReBpzol36TO3nDSoPJDCWrerPv8VqimkFQF+r4AWH3WgramEO1LC0UqeV/ZC5O4S3tcLPRXkkgVkACH5DoxBD+UHg+nMVRmDLc50rS8sXnkpAV218PI0wSwHEeR2qTkNxX9el7uA
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(22082099003)(18002099003)(56012099006)(11063799006)(5023799004)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5qXnjKY0n+YC2o9EN5v7GeFJaMauG2LePXCRBWgErMqG0rKb5IvWQdMvn9yJ?=
 =?us-ascii?Q?omImH6VXGBZcdCjl7JabFOBdZ1daJg6ilD8pkopRgpLe0GLY/n9qrHv1++ta?=
 =?us-ascii?Q?twe4zPRnGlAHBdDwSsiVmkH4OO/YgRpq35RHex3jjsOcy7A3yBO+lS3YA+Kc?=
 =?us-ascii?Q?HBiJT57vLziSNi7mAWoMcASIICYAwprWFZRWqLUanowrKdqiUV8R2act5inB?=
 =?us-ascii?Q?eF8TGlKCWufAs5KhrtIR+aSK59Mp6xwaBoPJG4/C+NKbehdV6uPagqAzb4+h?=
 =?us-ascii?Q?Rli9qz2CEN4KPHDtgws9gVBkffMyg/Q1upqxsxuD551xSWVYgI8IKKInrDst?=
 =?us-ascii?Q?CnPl8xQbolYa67SI4nQxTgAbfswqkQgnfvrKe/whfspwIG0tuTJsnII3YOqr?=
 =?us-ascii?Q?4iV3XPAG6xLNQTw6HpUfIY1QWzF64sTOhkLLZDKefF6PUHYZhHb8LNW70S1e?=
 =?us-ascii?Q?S1SVzsrBrjkcV+Y7VYehueZ7x0BoOCkZmM4aW5kFXzO3jxvZgfOnpoGrAzq1?=
 =?us-ascii?Q?5aCDbZ9BkG5rq+wylyfGAxopdh6hnUtKFOD78C+r84pcSMH+a51VMND1h4Oa?=
 =?us-ascii?Q?pzVnT3KtzpnOI0TXJ7Um9X/Z9wDF4p5bYGZw4StbwuztGthVLc97g6zMzdqq?=
 =?us-ascii?Q?xiwx5F4sOt3RtEkmpzEEu7pWbE8xoRgAUinxoMztEGAonOW9NXM4XavY5vFp?=
 =?us-ascii?Q?xe0ErxQbZERp7atpnwure7XENwDFNJgmEQnfsOrT3cIYe0LVqc7Vcfgri2Gk?=
 =?us-ascii?Q?Sh0hXVnyZaAegs7d39zuu8QHcGfOPf+po57tvm7B6rhaNpuxd6xICrhI3BGZ?=
 =?us-ascii?Q?XBqZChczR56csTIiFuRCnUy6XT7YdvzHycVMZmkVzm+43Gv3bMJDcKDthFG7?=
 =?us-ascii?Q?mbOeYUrJi99Yi4XsVNDIRhbXr7kQrIHw2aIDQVm990Up9ckYn4menfzh1b4f?=
 =?us-ascii?Q?O7UVdleBsee7tMHkkVK+4PGZtYoDSmGlf85ATZ/7XP0agzCP0BtfJnoOdp5b?=
 =?us-ascii?Q?4sbFINQhrjtpIBg5o2iGrSy56tVsN+8dhi6hVsyt15SNhwJQFlJcu2D+uGKZ?=
 =?us-ascii?Q?3dxeloGEWpvBnriek+dOyAuK3ysTkdaMYkEPg0g07uU6t3qZn4svv9+B4QG/?=
 =?us-ascii?Q?j07mf+yOZizdzrYRO5VjTqGxMAv+Qc0b40FzFtnxp51EQwEZYjGtMFxb/EVU?=
 =?us-ascii?Q?Fu27+duDxK9ZfTiP6UT45OlfikrSlgOLf0wq5yBjc3D852z9dp3426sD2LdL?=
 =?us-ascii?Q?VUMhbsn9zqmMZNm2OW3QYUYjP5oJc1/h/Q9YmbyBOF7LBfaf0jhys8pyNqKa?=
 =?us-ascii?Q?YvLlbwFG11qGL3K0O3Y2VIwPsVdqvXK4SQ5JEa3dtfDIrF4TGGX7z8t1sc2E?=
 =?us-ascii?Q?KJOFpgRBClzlmzFBgqPBy2kFchUyGMVTnVuprluT/Ff9/ZiTzgx1gyZuFAVa?=
 =?us-ascii?Q?c+I+VfFJuAa8WcBclPs1Pw2ztLGj63O2bRDhWfbCRHGf2cLyUrjHDObpsf29?=
 =?us-ascii?Q?e+qjvrCLknWC7udWaKRGFovm7dd2E/8YZXmHVlrz0SanSEWXbrJFdxdDBaWK?=
 =?us-ascii?Q?HEv7gsHBb0/1tVOGMDNabFLg3ipVSfdt55KqnK28gx1NLhICfhr/oaplAewg?=
 =?us-ascii?Q?4o9G/9vhSrsfw0y+jjYZ1j+KFTJv/lU1lKwzqXVWDquSJIS/Mdylh8xIMkxu?=
 =?us-ascii?Q?ZTdMybkO0phnqRiGkSkuhSlbzgREryJ4CedMPCsFr6mTQLCmmkVeUk9JYQgJ?=
 =?us-ascii?Q?n8mrPRhD8uy8e+GlHKE6a6dGKdwBuQd5kWlB+Kr4/Avj3R9A5tLa?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a58baea5-febf-402a-93e6-08dec5abbe27
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:35.4723
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5LrmFlmVRTleMvYJvNc2nR8qc5ysXV1sRNlGODwBxqyZr8NxyNV5/Q7X2wwfJRic3NOfrgeA5/49gX9qVW/P9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151742_233366_5B5183E2 
X-CRM114-Status: GOOD (  21.47  )
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
v3->v4: none
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
