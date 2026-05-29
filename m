Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E49ADCD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCPCHO+MsYN97mNS+BAfFiQFtSMEBJzzwIBoaoJ5d/4=; b=CRYkTKT9WWOEya
	UGUVOdKC5PurgBq2TbD1DLBiJtwhL3tIUoQgF6Rtn0mwh2W6pk7/0adupujmYdL+y3K23iq/dUem6
	ZMG2O1r760wKIEaUWL6ROYaBqz4BMgFM6c+mdfedxr6sl/cCgA6ik1ghXRyAM61Iql7sYrVEZe5eH
	wJmfRFkPSq6W5jx6bsAtWpXjHOkFxc2VPwaxXBeRa5I9CmpdXNJw9JnHn8eWIk7M/uLkwOplm/Zd8
	aNdNmDq2ZOc5U6B1soODUGzflyFPPnA+4hm6pHJLhhb1pofIy0D0qH9wpyqXB7iuTvy5SLy/xBxG4
	yAN8Uj663aHET35FkneA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0nv-00000007yH6-25MB;
	Fri, 29 May 2026 17:15:27 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0nr-00000007yDh-0ljh
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O/ZLa+po9mbB02pCIUbOOGr45Vev6xvL7jikThV4gdYGCA9YAhNgcHr/tFazMrcikjuZsz7vZRrrfQOh+7fu9Vw3ebn9A+7G5F82MHMyAECqnZ1OS9VBgP2rvnaS1KPBkDCAPc7IjQiTUhghWMXF6kYv+hAC8UxRRxpBTXnHoaHMRPBX1trqOXwaDLwp9JzG86djKRj11EiFXBq06pMKTg4qIex9FMed6i+0Hy7cKBd3ROpE4LhA/x5R77M+lOBefytlM2kKc+94e3bfjNc5TQP36e77wWg4V4ddYB+CWjcEM2fhmw3JlsLr6x5ZIIXEuKmxFkuhh9ifJTJHsA6HyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3Muzfxd4BkjwVKUt4iyKtT63Zx+p+6Hg4MDT4go8pc=;
 b=SmxUKtA86qV0qiCZxq26XlxV4aHHHEqQlplLkwqfifbbNclDxJW2N2QF58HgNXLsYiv2qT99P7BlJoAkwKHooNpN81diKu+unot9VewI0BgZtQj16VmwaDcKzjdop6PeJ5RKfsQ74TlKsgHcZkxFRBfvhM09N/VMjU+eqPuZL8JINdtBz78GsS4rPCK+oiu9TBwSUoSvXicfVhiKstT5wWiNb9yAdz419JHrcHkeKSLGSn4HQcewhDhQItTEUpIRlOgKbNlilJexOwc43y3XlBT8N2EQicrsM+QNRX/KLgZgvy9LSU2Y+f+knZc9wcQr6jvF6G93YHlUpTIC9qh+/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3Muzfxd4BkjwVKUt4iyKtT63Zx+p+6Hg4MDT4go8pc=;
 b=Plj0i2IsQXvC0DeU2O5f4idlABggNMZFOl15FVuAoPvdP+c/boG70ZQFrSE7i8z63iSl4Lpnn/riz0mvQPHbCTVrBn/VmToMNYoryxHKdA3Cj2V/HTfaUhBkC2NXdb3qzK1LLC1x1kosJ+CUc4Rj48vB/cjqYsA1y5tSNloxdes99M0tXOI9p9u1EDK54IguqGUYGR9Ybb/OcceQ8Lf6ncTrayrAPovCBSKzuPyFBo2bBxvgTZeFPIg/A0rwDHLdd5hfz+WZIuFlSDzB56S/lsy0Ea9udMvHyZaQ71cv5V4oYXSyIvWEmWt58/BPxcRS1TMhbXAAzwOq2k+CDVMk4A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:17 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:17 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 02/15] phy: lynx-28g: move lane mode helpers to new core module
Date: Fri, 29 May 2026 20:14:56 +0300
Message-Id: <20260529171509.1163787-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0022.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::6) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 1708c27e-b3a1-424d-c774-08debda5db09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|5023799004|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: bUK57c84GG0n6Z2FYmgKgpm5wS0o9xj2EKFrBOX/3hIwZd2iNR+24AZzionTBLGBX0xtyKvP2DVWcjOQwRd7VwHboQgQMYuefchbSWfzhl+1itTmsinkcCmDxVaebrUphSOmOwQf5y4vSpDNwKC4sBhppGMnNzEyD7BHnZSVpZnQjz6Agngu1UKPBliKmAKCujym6yVEhgMN0gil+wZyIiEpp47hpLI8T4iSiAgAJ6Y/cBbgB1g3xy8m8eRHqF25JM8y2Szo1IVwy56KseWmqh3rc+914MGN6Z68EfWEsAssp4UvwpVqQFcOofqwDa3MoQMOwK4AMLcO/qUzuUNQ2cLkrao7B60AwaF3zqrTy4S2Bgh8z5WJaK/agHSdL7gY41aKg6W2pBhqSwaizXm4+MKfrLiYeIWLApxIv2UopdOAxoKUklBAquS5Es3li0KeMIZhvs/gBDo0gtI1XfKiUCKQSBFrL3eZi53mQ+SkL0azQRnp/WpLz1iPw1Osi6Ilf3yrWseJtUN4yE4JEDT2lWN9DRYdItKH6v0emLGodqBn7UtvM0gtiiyr1Dn0fy8CMCKNyQZHltVr2xGua+LBePkAPw+9SuatPwq+fo9TOPV0twUHNWBudjyfYHZKiKtsBSiqtDwDW+yvjlm+OXXzbNtFEP/4nYY1SqbKgPt76binam+dnvDWh5qYVA9BJvwT
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(5023799004)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8IJr/F6g7cbnFQUZmJXXEGnnFS6UK7TCA6YnJ9g/qBprkQteynr5ekvgMuSH?=
 =?us-ascii?Q?Sb5vkYC/4VNdEQi3k0Dpnt58b+ko5VqO1qEDQVbxP1HFiER3RLo7cDRRXULO?=
 =?us-ascii?Q?OphZEV3mrBZV7dINM8eColf9ZTNFuBoX+Q3fPRh4ATRep/47DbF7prAdMBdv?=
 =?us-ascii?Q?vOdOa6iGPLyr9/9RGBLQHYanBRy3aSn1KCuEbnY2GWbJaxWbgniU391qRoNr?=
 =?us-ascii?Q?lOvDwk+7Q0VJt6KtncbukYTvON5FXywNG9IUAavqjuTNMIWKqhFrv0AZLCbb?=
 =?us-ascii?Q?zlchtxBgGsryFmnnuy+qfoEDwve5s1e008KKrnHw6Hr+uRYk0EK7RFA0qtfO?=
 =?us-ascii?Q?/CC9BD24VzF7880ICFzStfx3OtB0ZdS8rV1QBm+UmIF2OpSqvt1zAIF7+8fE?=
 =?us-ascii?Q?7ChCTmzT/C5L3eW7gTwtfGV3tc19WtJTF/vkscscWEvzO2cxDsPXoo8gm7+F?=
 =?us-ascii?Q?wzG2jdWjWkSJtlwob1Q9rV4OaasxOJAyYnk0l3W3+4euKnxkUZA+uuc3dsE+?=
 =?us-ascii?Q?W2sWyS1Jk9dI+xtvKljef1eYZF/pt6CISdpgjgRCYHqZ9AIhrKq6aCXEz2ME?=
 =?us-ascii?Q?Ue+wAxe2rekf4n8cv0yAxk4rhcovL4dmO4LJ75ve3VlLJ8pKvIISGvOrErP2?=
 =?us-ascii?Q?AjZMsf9KUlK3TBQ6336yy0QF0w3kDQZ/nerIjItpOM+we9MPwPTugGi3xdmL?=
 =?us-ascii?Q?rZUvZLcXfqpi4pLVi0XCz9iu023HnZpxJR3Xk5eaNFtrypdfu6LRaghhOt7v?=
 =?us-ascii?Q?scragmBPWgkD1vHlAdPYSZLDHt3rngLlvqm201pyDHZxvP9VmnK4NUk/8Hsc?=
 =?us-ascii?Q?3jRcpCA/O3l0fZROwh6wZBsoZ4xCAZgVy3G7quF0K8iR3YfH7vK7jv/Rqelu?=
 =?us-ascii?Q?VGwUAdmz9sSjcMeSWQXgD9dGu/PLhcDGj+zpovIMEHq3uDi4dhuPLp4xwhsk?=
 =?us-ascii?Q?D6aGKrZ5IlxbsAr/WsQivnx5OqcERzDgQF3rMXgJTUbVnCu3NLCjvMG2ufjh?=
 =?us-ascii?Q?EyKqn2QfGfE7prMlFkdDkZ6FCMueJulKJ9cY79OffOuv2zVSGp2akCxF/bfC?=
 =?us-ascii?Q?YTRIIl8HSOQojy5CBa1/5hOGoH8yx3t5Pt457e7V7GYin3c2Xwn1Au/zYQwj?=
 =?us-ascii?Q?zhVgiq/CcitXJBnkAZrun14Hr8Wcmmznv9o+WSyt/1T5p4ZPqnjicogT5U4A?=
 =?us-ascii?Q?DDKQ8FANOKOjB1Gr4MstPFLVOHqpfkDq+8H62Hc0H/P9xQFr7dOuzLgDaXDa?=
 =?us-ascii?Q?+zbwHURwFN29KbtblATL0XzpxpwFVWwbulnBCYNJH3SIikO7r7TjPef+frIj?=
 =?us-ascii?Q?kW7tq15NbJ0B2simVcG16gkrdDqTxIaPfHeW+frSDW3kKxq5AbekKfXOz0d2?=
 =?us-ascii?Q?Agsh/MboFoB+OF4WRTjt6EVnqesROtdG8vZKN4OAUUCNVG3b+5oLZdPV7XnC?=
 =?us-ascii?Q?Q1K8SkstZjavEjr2leM9kvg5AUURJ6/bbzIj6vvpWjDtb+o8iOd5JmqEWTyC?=
 =?us-ascii?Q?TGR49Xo2qSyEl2DtQQ9hNPh+vl/KSX/PT1cPsQDAs4/DmGXO6ZlxGVxnN60N?=
 =?us-ascii?Q?9nl/dadEk2CjdNT147AnTMIo8QrYCS3pSz1IsbvKAQ2ZCo5KvTXREgvlXRum?=
 =?us-ascii?Q?3klTYvZN1RGtm7tuwza1hcAfz7peDDanhLcfRGYfF0B6/o8OF8cB2R3ips2K?=
 =?us-ascii?Q?nFGMmlIpPp6QSoqy9aCv4GazTL/rLWM+5a8iW2PKBLCwNqHY3/xWANUV9yFQ?=
 =?us-ascii?Q?j+1WDCiqgrG16VfnRTYFA4pmJKbeEdPO7W74mvTNMbxnd0UrIzOx?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1708c27e-b3a1-424d-c774-08debda5db09
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:17.6499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d099snSy9ZsY1l9TMmiVA3XB8M0GuHyr6lDIhQKbfL28pxXC4FNdZGsFegupFmD+dnLy3HkP0Uu0fRUHkwJFUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101523_227102_9A7093FE 
X-CRM114-Status: GOOD (  22.83  )
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
v1->v2: none
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
index 4461b47a16ad..27587ad87f22 100644
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
