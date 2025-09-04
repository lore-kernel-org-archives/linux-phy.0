Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43678CA1013
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 19:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TB/LxaOy1jDQGOwlfQa/LxwsfwcHGkO90n9k5j41Sq8=; b=TdDEZmstVNqp0Z
	fhu2K05M65u9y2wvT7c/cS5qL4K4xTHVlqvENY0ul1lO0KxocixmBmxC8bDAddS/7vJTfuv7Cl+Hp
	ztsUpCFYAQWroYzuwB0sf/tcC7FZy0RkV4S2QLnl1R4p2SQccQYEsNhJFuEQ4poVDIgFVywZ320zo
	rPL92sGEPnHBfq+gdh8PlBCy2cedP8a04m4S1dMvVhnw3oVVIvyB8HHuE5ah4pEE7BJUkhLJ8X4mY
	k6UvOIA01K/rDgDqfeSaPT/J/hkT73JPM7OUW5Ao1eIa5D7ZZIy7OEE6HZyiypPqferhZuLV1A4mW
	X06z7zyQIT+DOT5jakGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG1c-0000000E4FL-3Msm;
	Thu, 04 Sep 2025 19:53:43 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuC8P-0000000Cbuh-0Z01
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 15:44:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cufzprGFxQ0zizbByIXvdAn/D+t6W40Mn+1Pr8iSiSHplZ1Ev1Fo/4UQt9c3NdbbRwbtd+px8Oo8bJlzI9QXK/vzPCkQnzG2qCxnvZnTeR8N+yjL6Ltcgm6xnOZMl0Vwr+JQHOb+ZftoJL6FS3lg3PyHKgGifa6D773hfEhnLczsLVgEX9jacx5IS52p9fK1OnNbZ0K3xu0ivt+gT8edClut5zTUdZmEZcIYxy2QBH1q6AqcguFEkftDhoonkY6s8tVzQ+chZffhyBHYry2gKDmBw9ymE0BJK8NPJL+3IdoPwdAI5hJQX2iWcMZKiEzpifgyOXKFstJyLJpLe+pfQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jz2l11xzaTESNSj2kcfvrIcCo5z+EvzMtk8mvjiwVZM=;
 b=IMrecAFwCCIR6bOBzdbfSF4GeqYqwgo+3bplJDpCB/wbEXRWYgcCNl6L6DvdL/fvG6z9BDZ6CQ+aQpARX/k2nZJWESlcnr+jhHcOcLgfDXj7CwGgfhMEu34UY5E1QOpvWZj0Bqx+wcglbsNJVG3UwEJnN9f9lnFgmPXP3tGY8Jc7qa8ocGxBqbAqRU1i3IQTpqVXEZXeDcyLIcbWhXUCEiDSMUYgCUzbZg1xyQ8NGYTCohgj43rLMy51+93QkBU9ifGi/CEyAqXzOb4ZOxI3WEspxqwtNx8SOL/nNUZm+2MrvQnFj3GxRHuSUFXzXG0S9WBIjU9yszlLuFF7FoqkXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jz2l11xzaTESNSj2kcfvrIcCo5z+EvzMtk8mvjiwVZM=;
 b=J0cRvtTyA0l2b+z5Zh+dQ+EM4n/FrdYe4IuHn6xO1l0ZVWi2hKe86kd87nK+KAGrv++Pqlh72vXDBfK/3K48g5lY8rnt0waEDl19c0OF7OO9idQ0tMzY05wvjQNFLrF89IqoUetsyk+rScGo3mDoL8Ual85z07brSGZfKmP3QzOaRKHJ8/l3Ga2L5keNeuiO9MnO2Sniow4NWWBghVUy1LSbqwUeGVVQveJTDba9qFWIRxCwTMwm2xBjRejPaCqI+lxMM0qEMP5bkeuEOWM633bMNXBpUSUMKC0/fvNapewGRj/ngATxnIiJY9aJ0nTeie87VfD26qz/pJHD04s2aA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM8PR04MB7348.eurprd04.prod.outlook.com (2603:10a6:20b:1db::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 15:44:13 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%7]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 15:44:13 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy 03/14] phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
Date: Thu,  4 Sep 2025 18:43:51 +0300
Message-Id: <20250904154402.300032-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250904154402.300032-1-vladimir.oltean@nxp.com>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0060.eurprd03.prod.outlook.com (2603:10a6:208::37)
 To AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM8PR04MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: 77d5b881-815b-47e0-248e-08ddebc9e5ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QJMWVc/cU1qsGUq3iF41jdRQGUTwweiiSG6fHbb1JeBF70u0GKcRUpGsRE52?=
 =?us-ascii?Q?bdmujcwNSg1Rba6Km8yjZezffXZsKBejr8VIsN6C9l6ckhUN55RlxZqu5wrp?=
 =?us-ascii?Q?cSDMYXH0KvYIMlbT6gkvGy2MXvJ2FFCyh/iCVnXB3YRS7BafSmqRz3QtBnFu?=
 =?us-ascii?Q?ChGjuZTyuGpy+0CVOUWwPZ6PQRaiACIKCPoEhLHRefFpcPJ+yCdx9anN+NUj?=
 =?us-ascii?Q?t7VCO2yz125tV/mGx9ewt1hl5D1vJrC2EuyyObQH0eaJqelsIofxPsuHDaJz?=
 =?us-ascii?Q?tgL1Yc67IDk2h/I7+jANhbf5S7il2mZ37dmNmxFtfCdU4dR85p1qnidZxkEu?=
 =?us-ascii?Q?iaXUYc34Qj9jTogxfAvrTi5b3j8G+TAGSycVO67nJ6mjk5Puw9MLpqVTUzZ2?=
 =?us-ascii?Q?WDPFFRGHAEqHsYhopOL6WDgFb+EFPV0Z79s8dl25vhjLj+9sFSnMIWly1aVz?=
 =?us-ascii?Q?NwkRwhp0OmFOqnrnSC+AULYBUcLdVIQ7UovumT1Dz47MfqLhCiRbfbIFsqo6?=
 =?us-ascii?Q?4lb0duR7xx2N64J0OcsoanFcSadtKGOvuKR8+2HGoSDP9JqiGaoVstbIqBmY?=
 =?us-ascii?Q?sJghpFubGSyiHUoPDOYaQS27HIAXyKyaE8VFA3n80kdOjrtfSjuLMFqvQz8K?=
 =?us-ascii?Q?DQn/RAzDXe83mgs3WhWebOEmu/MnFcCFNDnh7tDuEv0g1KsDNzE/40z48z0k?=
 =?us-ascii?Q?Ae4aB6U1c4fa/jgCHOol2P9erEoc2PZMV75xibQkgqYn0G47iO++SvK8eGGU?=
 =?us-ascii?Q?bQGCJhhIUMXT3u27llD0D7Pe8eITE07PgOu9iLMXF+cM2TbU454gx6g6Te1m?=
 =?us-ascii?Q?MBnkjWStPugZ+HrRW+56BYMm9KWuxeIsPbNC0PETkbBsKDCWqV6mdqS6vq1M?=
 =?us-ascii?Q?VXn7VcaEMvodWzajP0Y/U6QRlyt23z1X0RONJbi7m/hve6/sVlu68CT82ZkU?=
 =?us-ascii?Q?c2+4QDRqbNk6tyEwsPBZaidYEARIySFtzR/hxllFnCsObw/K70CucY7xq2QQ?=
 =?us-ascii?Q?XugQegaQytyneASXOLTqUvDLQTIeDsR6PLAVSNlWTwjhGKDnuH3+bezbanrN?=
 =?us-ascii?Q?dk1EqsYTZ2eVLiB631iGwqJOP6W8aesUD6DIb/huWG792GTxM/G7f2PY+Ltc?=
 =?us-ascii?Q?29Sx7XN+5kqCyBO08LKTQ/FoKYtnIj5E/7QM93JKG5wt5rB/fHpfo7JKT98m?=
 =?us-ascii?Q?/ymK+LEGjPvdXoWgFnSo10Ll3sg/605J/S+PYkit7l77N/pNgNrUH47mUfLW?=
 =?us-ascii?Q?PSnNqFkprZlgGzbd80WACmpg0ty/0lLRPRBExqWNHf523H0QYytP8hf6S9ms?=
 =?us-ascii?Q?oQe8ECE2n/T7irW/oJxz7GdPLf68sUAx+jP35jCtrM3xHUTczPITyuskzvG7?=
 =?us-ascii?Q?IMFkXXG4K0zQdCkeuEFu/slFtF3CVD/lkvWu+opSZUq64AOyyswlj5BsZ1xY?=
 =?us-ascii?Q?iwMZNgb5QrQQAWqG4g0GIvtUr41qvsDXvTde36sOEOCovyARU7pxtw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CcQUCCMptMDpIbKXk9VfZNy7DaaWoEFyVq7nWm0iCikm0AmiiyHAB9UPYVaX?=
 =?us-ascii?Q?jGbP9/cgJmr0ColW7tsFH2C3UpqBxspsGszFcCJZuzMc1iwLHpl6Sfj5zT6g?=
 =?us-ascii?Q?3D5bbb6EA1o1v+wV5eZW2j+OS09oB8cYj8SuESIy8yumuRbjtQKeP5JEXgH5?=
 =?us-ascii?Q?322IbTzjT/41HIgf6gRrsm+/JvYp2pu/6Diurha8AFX1D/QHjLQcre408m4D?=
 =?us-ascii?Q?Ht3XOxq68NVEjX6NmogHkNmao0uDOjFZf0S+8DAs21HvnKeeJHdXxwzT1t5/?=
 =?us-ascii?Q?lLYeaPqM6tfgivWmA2JJytYMB2HjDaazKa3twgcaF8gMgJHY6Zq3ZJuWYvIB?=
 =?us-ascii?Q?frIqlNgeSXoPrGUn3cxqdunD9c/FZLh7JJDsghni2s9lerNKyp3WWfi0+w9A?=
 =?us-ascii?Q?EprTQyyN8/OhDGV2aO7pcEkVIibhxWbUr/VTaBT9prvF5ZvtIT8PYXQAqYM/?=
 =?us-ascii?Q?xLO6DssHdecHiRSHpI6YLwJgWtc8pc5kraTGfNA6wkUWjLfA7YX62e8iIEl/?=
 =?us-ascii?Q?fDCFTPBuUNA9KV2wm2vOkkNo7n+SCfHy4ZiWahlMh8tkf8JgbdTJfdOXuH1O?=
 =?us-ascii?Q?W8sXNnnXWu3pcvmSzoEmx1st1DxaWBBJHs7yNDAIiYjoGQ2rB2Mdw25C8/sG?=
 =?us-ascii?Q?I233rytBjhjiXDfTAesFZPUffTkgH6WQoHp0A3S3wdflGCxrZ5sTTPcoq1T/?=
 =?us-ascii?Q?bH70j/eaUFeTLmd2p+2FHVEOB+X54D1ULCv/uOMBnEz0vUIi0/SMLWxhXGVk?=
 =?us-ascii?Q?Q6Z2niFnmrYpmCa+ojLR/KiM9/o3r6L0ffrAmerXL83eHScRDKyepXP4pesR?=
 =?us-ascii?Q?wOS7V+hmz36ITX110NKujife0rUVxuZ8w4oqG4WsXsURQgRrObsVb6Cu3+yT?=
 =?us-ascii?Q?cY1uZjrZrV0bUfN1hWXBzcL7r7lAgDld12ioVT9zsmJse3qguGrHgHEA/Z/J?=
 =?us-ascii?Q?fRpdqtRFiM5bE3ELOrfuXpfvtzk/N42d09t6bHqyz7Uau3qKJIdYZ78wDHsE?=
 =?us-ascii?Q?OZmfpphGibDDqT/T4FVdJK5CMLTh/RIn76gezZRUqyxniY2eSYpxWapv5wIB?=
 =?us-ascii?Q?SDQqQqt1FKVX2LL5MyGOjQGRGuoH59bGEL7t3e4ZWYecMc46OCuiN7vzwsTr?=
 =?us-ascii?Q?sj7i8LCbNl3gOgAv6Ck0f2F/pgW5PNLW5w7CpKajxJ+CE7XZ5vVrvCLFPh2F?=
 =?us-ascii?Q?0vcIgcJ6vuYioy32D8QaowRYB5KndxrKhD6GpfSWAwXQxR3dPxyEKb0ZaZeE?=
 =?us-ascii?Q?mfAVqVJxr4835l65SnA6KGpOq6/jDoOwFqHABQnW45h2ta6yX+M+noXBmEk/?=
 =?us-ascii?Q?xDRzndoRI4o6WVKAMIDHftGrOLneKCM9FAKE6ZjSvjVyVsWgeZJ8C37WpwhO?=
 =?us-ascii?Q?+6MOBuLkJFVp4Y4dI93/hijKhn314E3bc4M0TML7jAZS7HpFZ0nj6kn/jynk?=
 =?us-ascii?Q?Zutus5f3V9OIc29cVBOg9SIFOkcrmmx2TwGBP637YLn2dIcObDVD9gUqn2Yi?=
 =?us-ascii?Q?la46lQVpAqRXZbVQFzeY+FEHZNp+iAOWHLeLF1P3AvGl0KbEhY6NeFWTppsC?=
 =?us-ascii?Q?QNefjhfM/Y+Qf2cmkLDDb0XSWYeZC2biktoFgOU+o6NsI5kfZV28WshT3Lwp?=
 =?us-ascii?Q?VA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77d5b881-815b-47e0-248e-08ddebc9e5ed
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 15:44:13.6888
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eIbGt0M2zZMCBsKrwqLp7paCKUHpo0cOA+24OqnqOwN3jNVJDwayE0DyGiHLMYkx57agiVG1tPTOCo31UwcVgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_084425_175677_D415EE16 
X-CRM114-Status: GOOD (  12.97  )
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

Reduce the number of bit field definitions required in this driver (in
the worst case, a read form and a write form), by defining just the
mask, and using the FIELD_GET() and FIELD_PREP() API from
<linux/bitfield.h> with that.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 107 ++++++++++++-----------
 1 file changed, 57 insertions(+), 50 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 732ba65950f3..414d9a4bcbb7 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 /* Copyright (c) 2021-2022 NXP. */
 
+#include <linux/bitfield.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/phy.h>
@@ -29,26 +30,26 @@
 #define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
 
 #define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
-#define PLLnCR0_REFCLK_SEL(cr0)			(((cr0) & GENMASK(20, 16)))
+#define PLLnCR0_REFCLK_SEL			GENMASK(20, 16)
 #define PLLnCR0_REFCLK_SEL_100MHZ		0x0
-#define PLLnCR0_REFCLK_SEL_125MHZ		0x10000
-#define PLLnCR0_REFCLK_SEL_156MHZ		0x20000
-#define PLLnCR0_REFCLK_SEL_150MHZ		0x30000
-#define PLLnCR0_REFCLK_SEL_161MHZ		0x40000
+#define PLLnCR0_REFCLK_SEL_125MHZ		0x1
+#define PLLnCR0_REFCLK_SEL_156MHZ		0x2
+#define PLLnCR0_REFCLK_SEL_150MHZ		0x3
+#define PLLnCR0_REFCLK_SEL_161MHZ		0x4
 
 #define PLLnCR1(pll)				(0x400 + (pll) * 0x100 + 0x8)
-#define PLLnCR1_FRATE_SEL(cr1)			(((cr1) & GENMASK(28, 24)))
+#define PLLnCR1_FRATE_SEL			GENMASK(28, 24)
 #define PLLnCR1_FRATE_5G_10GVCO			0x0
-#define PLLnCR1_FRATE_5G_25GVCO			0x10000000
-#define PLLnCR1_FRATE_10G_20GVCO		0x6000000
+#define PLLnCR1_FRATE_5G_25GVCO			0x10
+#define PLLnCR1_FRATE_10G_20GVCO		0x6
 
 /* Per SerDes lane registers */
 /* Lane a General Control Register */
 #define LNaGCR0(lane)				(0x800 + (lane) * 0x100 + 0x0)
-#define LNaGCR0_PROTO_SEL_MSK			GENMASK(7, 3)
-#define LNaGCR0_PROTO_SEL_SGMII			0x8
-#define LNaGCR0_PROTO_SEL_XFI			0x50
-#define LNaGCR0_IF_WIDTH_MSK			GENMASK(2, 0)
+#define LNaGCR0_PROTO_SEL			GENMASK(7, 3)
+#define LNaGCR0_PROTO_SEL_SGMII			0x1
+#define LNaGCR0_PROTO_SEL_XFI			0xa
+#define LNaGCR0_IF_WIDTH			GENMASK(2, 0)
 #define LNaGCR0_IF_WIDTH_10_BIT			0x0
 #define LNaGCR0_IF_WIDTH_20_BIT			0x2
 
@@ -60,13 +61,13 @@
 
 /* Lane a Tx General Control Register */
 #define LNaTGCR0(lane)				(0x800 + (lane) * 0x100 + 0x24)
+#define LNaTGCR0_USE_PLL			BIT(28)
 #define LNaTGCR0_USE_PLLF			0x0
-#define LNaTGCR0_USE_PLLS			BIT(28)
-#define LNaTGCR0_USE_PLL_MSK			BIT(28)
+#define LNaTGCR0_USE_PLLS			0x1
+#define LNaTGCR0_N_RATE				GENMASK(26, 24)
 #define LNaTGCR0_N_RATE_FULL			0x0
-#define LNaTGCR0_N_RATE_HALF			0x1000000
-#define LNaTGCR0_N_RATE_QUARTER			0x2000000
-#define LNaTGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaTGCR0_N_RATE_HALF			0x1
+#define LNaTGCR0_N_RATE_QUARTER			0x2
 
 #define LNaTECR0(lane)				(0x800 + (lane) * 0x100 + 0x30)
 
@@ -79,14 +80,13 @@
 
 /* Lane a Rx General Control Register */
 #define LNaRGCR0(lane)				(0x800 + (lane) * 0x100 + 0x44)
+#define LNaRGCR0_USE_PLL			BIT(28)
 #define LNaRGCR0_USE_PLLF			0x0
-#define LNaRGCR0_USE_PLLS			BIT(28)
-#define LNaRGCR0_USE_PLL_MSK			BIT(28)
-#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_USE_PLLS			0x1
+#define LNaRGCR0_N_RATE				GENMASK(26, 24)
 #define LNaRGCR0_N_RATE_FULL			0x0
-#define LNaRGCR0_N_RATE_HALF			0x1000000
-#define LNaRGCR0_N_RATE_QUARTER			0x2000000
-#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_N_RATE_HALF			0x1
+#define LNaRGCR0_N_RATE_QUARTER			0x2
 
 #define LNaRGCR1(lane)				(0x800 + (lane) * 0x100 + 0x48)
 
@@ -97,13 +97,12 @@
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 
 #define LNaPSS(lane)				(0x1000 + (lane) * 0x4)
-#define LNaPSS_TYPE(pss)			(((pss) & GENMASK(30, 24)) >> 24)
+#define LNaPSS_TYPE				GENMASK(30, 24)
 #define LNaPSS_TYPE_SGMII			0x4
 #define LNaPSS_TYPE_XFI				0x28
 
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
-#define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
 
@@ -197,18 +196,18 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    phy_interface_t intf)
 {
-	switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
 			lynx_28g_lane_rmw(lane, LNaTGCR0,
-					  LNaTGCR0_N_RATE_QUARTER,
-					  LNaTGCR0_N_RATE_MSK);
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_QUARTER),
+					  LNaTGCR0_N_RATE);
 			lynx_28g_lane_rmw(lane, LNaRGCR0,
-					  LNaRGCR0_N_RATE_QUARTER,
-					  LNaRGCR0_N_RATE_MSK);
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_QUARTER),
+					  LNaRGCR0_N_RATE);
 			break;
 		default:
 			break;
@@ -218,10 +217,12 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_N_RATE_FULL,
-					  LNaTGCR0_N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_N_RATE_FULL,
-					  LNaRGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_FULL),
+					  LNaTGCR0_N_RATE);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_FULL),
+					  LNaRGCR0_N_RATE);
 			break;
 		default:
 			break;
@@ -236,15 +237,19 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 				  struct lynx_28g_pll *pll)
 {
 	if (pll->id == 0) {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLF,
-				  LNaTGCR0_USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLF,
-				  LNaRGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0,
+				  FIELD_PREP(LNaTGCR0_USE_PLL, LNaTGCR0_USE_PLLF),
+				  LNaTGCR0_USE_PLL);
+		lynx_28g_lane_rmw(lane, LNaRGCR0,
+				  FIELD_PREP(LNaRGCR0_USE_PLL, LNaRGCR0_USE_PLLF),
+				  LNaRGCR0_USE_PLL);
 	} else {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLS,
-				  LNaTGCR0_USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLS,
-				  LNaRGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0,
+				  FIELD_PREP(LNaTGCR0_USE_PLL, LNaTGCR0_USE_PLLS),
+				  LNaTGCR0_USE_PLL);
+		lynx_28g_lane_rmw(lane, LNaRGCR0,
+				  FIELD_PREP(LNaRGCR0_USE_PLL, LNaRGCR0_USE_PLLS),
+				  LNaRGCR0_USE_PLL);
 	}
 }
 
@@ -286,8 +291,9 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  LNaGCR0_PROTO_SEL_SGMII | LNaGCR0_IF_WIDTH_10_BIT,
-			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_SGMII) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_10_BIT),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
@@ -302,7 +308,7 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 
 	/* Enable the SGMII PCS */
 	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
-			  SGMIIaCR1_SGPCS_MSK);
+			  SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
@@ -328,8 +334,9 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  LNaGCR0_PROTO_SEL_XFI | LNaGCR0_IF_WIDTH_20_BIT,
-			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_XFI) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_20_BIT),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
@@ -343,7 +350,7 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
 
 	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
@@ -513,7 +520,7 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		if (PLLnRSTCTL_DIS(pll->rstctl))
 			continue;
 
-		switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+		switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
@@ -570,7 +577,7 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	u32 pss, protocol;
 
 	pss = lynx_28g_lane_read(lane, LNaPSS);
-	protocol = LNaPSS_TYPE(pss);
+	protocol = FIELD_GET(LNaPSS_TYPE, pss);
 	switch (protocol) {
 	case LNaPSS_TYPE_SGMII:
 		lane->interface = PHY_INTERFACE_MODE_SGMII;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
