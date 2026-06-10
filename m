Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD5D2CD98C6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmCx+z5u4Xap/d3JCDF6aRqrB/qZ4X5P3N+2laqpGl8=; b=AMextEbZkM8hfV
	7fJWPC9wK2b4D1QvHfR9vfPjInK6N4y4Avfyl3Ppeok+vpAZz1kSWO88Xedf2ZZOCG8abbBhyT2+I
	lTPZGvVK02Hclse2pKLSgMY9y1MJBUXsAB8MZCskq8UraiJrYUaKaRVfxvpw02Vl2s1QFDTk723GF
	QrimhXIHGOMUXU6LWVnMZKHqK97De5Hu5gIuqByRAyb5/z9eFRZ6yL4iUFumNfU/f01YJ5UA3+imn
	7VRk1uhJRMk5cySe24m7P5e/UhzSF5PMRkiORJh1SiF8Kx29FVw1roHdvkegL7lIFG7Cpaab8vDOq
	T9d4KFbDkBFHTcsYZcJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKix-000000080SX-25bw;
	Wed, 10 Jun 2026 15:20:11 +0000
Received: from mail-northeuropeazon11010036.outbound.protection.outlook.com ([52.101.84.36] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiv-000000080P4-2YIN
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cpf2tlYNkBoSmkR+Y0BpwUL9aYZX0uz//oQgyuVybJ9lmLIEWyh44zXR6rmtf7A49ekW0oWjIbcNQwqTU+9sGIHLTPelPHPAcu2Tbb+sPevglNv4xbqwtDG+2Q48mQe44xFttdNUPZToMQNQgAwINaGWkUR04FWTY4BMBnYR0dI2Yqakv3W53NgIVCeWwMRJKxkaUEDkwU5J9yhPwbbC0EBkP+AboyQdSbAXDxnEwBj/OeZp5TGpo5tA0PhXv48WMStqGhbt73O723hEVqSo94uIxPDWk2XvuKxc66CToRrNyyiKaent3ldaoJKTk77AZN3ngcK7JrVt7vWEAdFEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZl4p8/xctXcFBVZmeghACSce/UF2qmbK804NZfwpDw=;
 b=igExHZy8cDIvEpvxGwudxjwMVBSUAXStoNX7BcXGZyoXaY9xjNfFAaWn4AClHMWjjmr4+EDkheQL43UdP/LbF/EzP0xRZ7kJJKImQbnjW3aVqW3seuTRK8tQ0lSSEQ70pAKPpm4lDH3cHtNxNnIKvW5IfxG9qEK7E7ZFi6lupWU5wcUEQDc5FQ3sKGAj/ghXHgrQI90p5M+cQOThh+giDJdRVjNbBA3izTYS02yjnV/WzJ2+B8NLS9G+PIUlg0ChEyl+B2YD8ypP4R5kJpIzbBZANoLj9AxKZvRhfqs1JLmE+DVy8gCvpdCIg4RBQkHihT/mRbaTK79GzsPWTUCvBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZl4p8/xctXcFBVZmeghACSce/UF2qmbK804NZfwpDw=;
 b=MTFiHJYgslTqUTEGmBiBzNHsB2Ge55jW0bVq5on17RFhYJ3zq0Va3sUXKpujDn/6i+nAvEzXEIvmS9YxfEZk43b2nqxe0O1vkvUW0IskMuj8WIKz0ZdJfT4m5ftW/MvwZ3Cp1nW80RBaLZh9rXEJXRjojpMsPBPvHuK4NpGJUcB0vxWWxsL+QeLXY57JP4BJikqZUaiMtRhMJ2lC+pIhoHaSPGbKCSb1hpjAVuOgq5KntWCMjQK9Kk2nHRKgdrg/La6941fGwjnGa9COfpfKhy3DwpfSqbAEww+6vDhvAgFqGuDzPpfP0oultZk4iRCIGYPEtsJPpXdlHO9Au67FzA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 15:20:02 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:02 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 03/16] phy: lynx-28g: move lane mode helpers to new core module
Date: Wed, 10 Jun 2026 18:19:39 +0300
Message-Id: <20260610151952.2141019-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0P190CA0008.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::18) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: a4ff227d-e3f9-4d98-ed37-08dec703be73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|22082099003|18002099003|56012099006|5023799004|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: Re5OyOXbcNEftnn0UrjTN8WT8jmbXWI1TbgxIEutgsPRwBFDnj5i5K+twofK51XgKrYOQ5qNnDygXJu5re4eTgv0VSKARDSmA+I63TbxJshx2Dfo9roia3xzJEnEtljzw99sJGKty3vahdax+D64VT75DYjDt2UmggtoE1lFSUXnbMLgTh4F/T7QCdXJlzI0faVQu6GU525UrnWkKgoeUA5MjOyVb/70F4u/987lAmqtLDBX8mLiFDleNmcCddfjnU03ukMMNJNXyCfsFcO57beeGtaLD+DXXXAksx/hYbSnFYqgN0ZEUXBL3gFSiK7zLmGwHXvYnYYycsV1jVD3RgzQqOVp48aGbRT7usrSigRUUu8WAZghW0yajYlZOX4hOW+U7JJbG4NcmFlXY0PpfdcFVxjL7YGMvB6UiPcuTbpniy3o4R7/vLpSnBBdJIzlAXKLX6zTYtq6w/GEQhTxpVylOHSYPSXH46zN+5FtlgPx/J4RmFY5LIocarzcp1htwramkSkJoB1rjq1kd/UAKMDhapeEpTz3ZGjzq/YNnh6zVVkgYtOhLn6RGh7T3tXzBysj2rTLs6C6Oo1jk1QXskoafQ3ins/6GwCBa5tO0W4qw4ITBLB2k1GKdOt3HwPB6+o3cEd4KEQTHWnVFOAFlmDc2sCWKl++fhI096RWFxnPqIn3KWKIlZ6aiYocLKlh
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(22082099003)(18002099003)(56012099006)(5023799004)(3023799007)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tsvWc7u8vnmBsxB/iOfkHm0bWAA3lDGHQ+joaPq7ZKDEFcgt4MLGl/fJ7Loa?=
 =?us-ascii?Q?jaZ9uwM5itDL0E9I3QfI6+ltlpOEiVZe5p4rkN9Z2qD7b75V0nObGY4f+sXX?=
 =?us-ascii?Q?+te95PYJNvhtQxfHwXuGDyb1z26Ex4kxvEfVnZe7+Dl0rJOpKB5iPm2jcuIZ?=
 =?us-ascii?Q?QXoYl8rnLJYMx/uKBQvTHduhRVimtEeVqoYey6Bk8b9oYMTvqFFM2R2ARyWC?=
 =?us-ascii?Q?RiU/jJh7UXH/kcd42eqFWXtsc8Lod9AwuwMII/PYfBz3WtS9JldvTbJQJbX8?=
 =?us-ascii?Q?RnzEggVBP/KI3xunT/TofbE6MpR+Ng7/xy8315lX1uNoRFKqm/XqaVpLYD41?=
 =?us-ascii?Q?RbZ1YhVHnvqnOGIKWdWsotqSgn/b2vN1biP3U4KAzMhK6eTD2ByVXnmQoc3I?=
 =?us-ascii?Q?9jsSN4NnVXk5wlS7NL4XFAy02ERA4AexNUzlQzb3pQ2t7zOjEKKuR3bjKWsT?=
 =?us-ascii?Q?ng6YCQz9UliqV5LhZFPyvRvqVPmvxY3s7GhJyllZyAzDXWcmrYzOJ4IznPGe?=
 =?us-ascii?Q?5qOBACg8G50X9e1jliUnbH1nrF0nQHVefEAMpeY01x3NVFGmOXqn/7ZJmTGT?=
 =?us-ascii?Q?MMDq8FAuOCQOarG00lsWOlKXkWoL5l2uHidMF9DCyhGfUsMYmPgkBZEIomAc?=
 =?us-ascii?Q?qaTsmpeBOSac+p0/Fd5Nx7GYCzIHaAAISugmN+NZU4O2vRq1aKjjUO0B38ip?=
 =?us-ascii?Q?MeT7nwJq158cYk8hsR25GhAsnX2spShfclRA6rh328J3LEy7fK1jOp5o07o/?=
 =?us-ascii?Q?hYZu59WjzINd7gdPJAEopgheeaKT54R2I4/aND674YXSYrt5k+Ts49NcKATi?=
 =?us-ascii?Q?f5Gt6xE5yOniVvhRJIbxG8qYwF8cjkjJt9/cKYBAtHSkmhBhC833xYRUFQy/?=
 =?us-ascii?Q?//7PsQHgpNKMtDChYYP8eXwJihEEulgdiX1ifX9BUweXfzMPvTjSEtLzbq+y?=
 =?us-ascii?Q?Rza4/VE0tV388U20CwUCosX1ERkS1vDEQPGz0F76zlqJXqiADDMBCEsllg1x?=
 =?us-ascii?Q?SHZ4cluQ4X5p9kYhQ/tSe2kp7UExZcGyTTRjeLtZDV4QhiVm+YCcEpys4eMd?=
 =?us-ascii?Q?Kts7I+MYK/QPPsNbDXvT8LgZk4lBPRHViosg3l5bw3BcPLObMO4Al0Q0EncX?=
 =?us-ascii?Q?lUkiLL8ZRI5vlzyqOP2JckLWIly6m4czunhysuAOmwB1V24aGhBfxoM+6/7v?=
 =?us-ascii?Q?dH1DoEFvIC9qJAOHDbaHHANbkHYQ9yEo6gQRPpxVJtVh4h30mfulpfeJ6HfD?=
 =?us-ascii?Q?KRiGMLYP1cabcwLxlU4LSWjuo9O99qWPOrcQ7qTmzK9a6NxxgFTVNomSsHti?=
 =?us-ascii?Q?4tJIRXIAOP82EKyhVnODZpjjBnHbUBfUhY9N6+QxOxiRnHbxzR4L3GfB75tj?=
 =?us-ascii?Q?p0WFhgUuFPKJrZSPtkGAKXrPeF5l/dNHaG9+kb9OcnzLyOXFmDJogWq5S6U8?=
 =?us-ascii?Q?AG24avLXPLB30OHYNuavKQELYeWMdmsvKO8La56pNbjuuPUzmIwuk2Siophd?=
 =?us-ascii?Q?AxZlZSlSe59usRv1DHiLp8Hh7idSbFZFGN30UhhSYWR0AF2buYdC1aVqCWU/?=
 =?us-ascii?Q?yLtUKmZrJ08XH03igzZ0z2u+8rPyfVeDtlqKTiqoSv4fVp7BI84Ai98Hjlbk?=
 =?us-ascii?Q?ScIhNyqWv3PdESCbn1avcxNwggITM23Yd+gNR0wf0ScUeJtPGyPUpmDnH+wb?=
 =?us-ascii?Q?mAIfNOkhUpHa0j51j6yR3rXbauNMo6eSbWnnOp1NEGARZm19Zod4ipDO7/yB?=
 =?us-ascii?Q?smjilI+WGw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ff227d-e3f9-4d98-ed37-08dec703be73
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:02.8957
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tWE/b55EzixHxnN7nv7dz3Qi14k3WGqvbg/SXp0xslpCzUVkj90qE6DpwyFU0a7IAl1emoZ0Ca5OEIqkQSRkLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082009_798380_A7763F24 
X-CRM114-Status: GOOD (  22.97  )
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
v4->v5:
- deliberately ignoring Sashiko feedback to add a subsystem prefix like
  FSL_LYNX_LANE_MODE_ to the lane modes, to avoid global namespace
  pollution. While ideal, doing so would introduce a lot of churn in
  lynx-28g and in the many downstream patches which would also need to
  be modified. It can still be done later, if needed, and it only
  affects those who include <soc/fsl/phy-fsl-lynx.h>.
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
