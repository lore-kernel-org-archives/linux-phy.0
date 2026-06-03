Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E819CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8XmTXktD1CeA2Wa4eB6x6iPs3WN/PiJcRLmfTiik7Sw=; b=Ssv1hL2wcwmRS8
	uoLnA4nQ+SFQEKKhtvn3k7zIeH/Pe4RIwFZO5YTW0L5Fwsj+Y3eltDS8/dStad0gf6G4dbnF3xpzT
	1dmidhYGGLbpiLtUNOvQ+1kSAWQczk6SYliJv3lmEcQQ8kZqIHbG/mnTw5FMjgCz63GFAHDvV1Pgy
	X8MU0jFEeY+ogTnABWwe2tSsBp3wpQleFL008TV1rm/BrZjGisQ/HTwXEY0dojwVG0vKhbJJtsqOv
	R84a4P4/AWL1loCGofWwEOjAepesktDY8lj8w0dKmuSu/XVu/emJgj4bkYFHR3VzTZ/xCGxeOyFyd
	qpLqIC4/sU4T2lokeTbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVJ-0000000FA1r-1h4I;
	Wed, 03 Jun 2026 13:19:29 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVG-0000000FA1L-35f4
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gdb3zRj47DgbRgqqZ8pxp64ojGx1g6lvL6h+1Zd7HU6ys2z/+dntLq+oJA+5lS2I5lrbbw+2olxgw/ttDl/BPS9vVRs2Ds98v2ki/tR/TL1uO0fRxAtwGokjwgolG6JOpkfduTVNOrr/f8mOlWbTKbxiMsk+3NJzMPQYrAUpqHPag7ZhZBDkZHDeL73HN+fDBq/HtLxrRA0RypcPpiJk+laW61C06drLCi3Jml0LLjUd8XRZkcR/iQY80TfFYCVk+BieIhpt8N2uhDWSJH9S+IgHff8BF4O5DKraCKnjcd2MXn3rgVLk8fGuLdTnmewkwOL/nOCiyuIdHMvJcxq6dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=edANGV9E+yLczudth4unyTC7MYCFi+tvNPSif8SzIQQ=;
 b=s/zkaRy/Y9UpNqyLKh/B6Yrxpf7m1XzAHS3TdUIPq56sX4mRq05/MB48dkJZhs0p8PxrvaxX/gTcVWiDrGyLsCS4TNiMdcA5QjL4BAfkHKZDee1YjEWnpADtL3jCDlQE1Y6IOXTqua79A020iz/WIztaex25oGxvvIyShP5mJr3ZR+nx+Rq1TvYvHNZpeT0gxH1yp2JLVLsCAvLrC1v+GUPQorBVnUbig/1+1IDsf0e9QbWKYaCow7SjiL7fnRS2ZxerWNtmPrhGA1lItqEIEMN+cNRj4WDBvQjM1dZ+k/cctltAT6FufFq2PWzWYX9lWbDXAOhldw6YRcU+BZl1eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=edANGV9E+yLczudth4unyTC7MYCFi+tvNPSif8SzIQQ=;
 b=AbhbQLK0ZBKm8LYgRtKIIk/Jy5XsMJOiuJ3n16SBWHBP6xiL6+duzDXumBq81lEA1B/HoQqenkEQCUDZt+4f9CMIKmm0ORIt4Vp958/K8/tXk06eDNi3sQiCvdAQyngBrhKw7MRAsPBYpFXAjwP540uM2rH8SwZ6AYGVQklDbLN7wlkMG+YJbVeo8VpBU4I1iIFZmu0mqjeenp/0sPouCJnmik3a+6CQ+OzFzyhJ9t7hOpmEBDek/FO02uuMuwssxjr0NwytObhR16SzTnirUKlGJnMcWAH2ibTn2x1NNL6P6epVENBqgs9oetuLYH16ukub0wgnabBbsK+IY/p82Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:19 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:19 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 00/16] New Generic PHY driver for Lynx 10G SerDes
Date: Wed,  3 Jun 2026 16:18:58 +0300
Message-Id: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AS4P189CA0016.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::8) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: aee89cf4-7195-42f9-a074-08dec172b829
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|6133799003|18002099003|56012099006|11063799006|3023799007|5023799004;
X-Microsoft-Antispam-Message-Info: CvEa7bscwuI+NCbJdn93pTl2alGv747+BpNdEw87KvnHgoic88bW00DjjodSwEkx7UECmsnrLDFtpJ1t4LDFH+hhGbIeSkowAGQKJpsk0zmhNgQo9DU5/5fNa7CJUC4MnlF3fTXAov3qJPc+apG9z0zwQW/5sdk3Ki8rcDONRaCzUpSIcBWao77Hpjgm+hm65RU/S3yDqh3OVb5q6xkeARv/NuY8FnBn8Wwb91oKiluScIxfevD6KOX/ADun/9Vz9VKgzUcWwwfbVSTLW3+ykbdBhk1eYNdPMDX3v1b7wYntL0Oe3RWHtf1mwPXA9n763qx01yi0LtW2X/D9hHRHz9Shc0Q1jkM+i6Ve5j8lDZErYZV8xpbbm2AZ4FHts+ddWWn6ktm6Qz+Qp7Z1qpC4W0bUYgg/k2FISj2EHxbtDTyUworxFyS+AcKTvUaX3GzP6hPQM6AcNFkVYnRBPuWlyiZdsp9Zn/Qx762fpGFZjw+EZK2zjNbjlKxNG4JPDq23FfgR3bvcyP2nqcHaDiSPP7R72sUgeqI1vAE0ehtrv5gRhcL9P7aPA2ZZcg7JWnviUdaSGxIRAEVZcCJOhETFyht4+ym1eBgyqQHbwNNCSxGVDmkXZt8DoarXezQP3r281xOnmC+ZqzE/yGIZBVcseFOLdIypcYSZ52SztlbkqU5lJjD2CpOpkTaUd2irE1mrZPTs7qprmjIUIdJ7IIIzHw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(6133799003)(18002099003)(56012099006)(11063799006)(3023799007)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wEBz4Ic/kA3Fz/PjAiRDNHQSMVRFz8SSgUJ4uTrRaHzLXICRysd7V4L1b8e7?=
 =?us-ascii?Q?/u5w9Gauw34246dZcKgHdaMfbyjvehplqGBMV0fyAsh/ibfdQDt7f86MIMt+?=
 =?us-ascii?Q?+2+DGZjcQmk1ET9BDdDV5wgBsUgxbBez8/xF1Amjg5VdvbH8GBIyH6We9ksr?=
 =?us-ascii?Q?DQ5pGmfXBmZshPxExSzHr+V62tcPNT2EICc3WPR8CU14wdxgpoUNddVqnj4g?=
 =?us-ascii?Q?1V03ZFjKaO3+WfxELwXknKivWsinH7Rtx+a3WDdSP2da37XzWQew1viBwWNq?=
 =?us-ascii?Q?dUEEON0W3QAs3Gdu2TvuWolvUUg+EA9cpda4ZJgAer9btTokGH9AxM5CPHIa?=
 =?us-ascii?Q?5IPYSi3NlXnSpbm6piIBZGx9/wWQfpO8YUt+PnnO7i6Zjn0J6UPJ7wkvQT19?=
 =?us-ascii?Q?jSjpIaTc/FQe7MTsgUNzZ6qZmSJW9A9q+73pbeNm5WuG4o9ONTXuPugt/nsi?=
 =?us-ascii?Q?yXnuU+IQsHASm8iLbgujBUHDiZVHyCAi5xBXweJQJqOX2oRfmA0gKS9UGfXm?=
 =?us-ascii?Q?DflEYJU/4j3A39PF0onmWZH+Cpjklj6L0h8UBh3nXCCx1p21SZdYOs3dlFOk?=
 =?us-ascii?Q?c/b1rqfx/6mgvnyMZ645m12cx941mPloGkwjY+2xJTtK4CSJRk1Gke3q8F48?=
 =?us-ascii?Q?DR6iyeJh1DJ+Y037PYnTCibziSc0MOzLw7QJGMc5Tj7VQP9uePSSLY5ajMVO?=
 =?us-ascii?Q?uYgUhKnODtBYZ3edA0pcviOFrwIAaq20S9vvAspyoma218Ay7VP+R/7W6e6L?=
 =?us-ascii?Q?r7lbIMzPoxvEDMutRRD+vz9yYvqKn54hz/H+BPUe+JmmbQz1abZoZyrJHkKo?=
 =?us-ascii?Q?7wpobIj0K3x5yDPYkXCyCkMOTc9utya6XS11Y5L6IAgQgyjA67g4Blcro12Y?=
 =?us-ascii?Q?AXc4/qyqwTEjS9N6usx9+o9Ix69iDc4lVHJIlUGdgaB2C9Mc5TUaq8m7Nsb0?=
 =?us-ascii?Q?0EfmXDfEVMSHhONHwzhKmzmvu2PW6Y29dHHlqc88g1HjaX8HR4rfSqW2wTSp?=
 =?us-ascii?Q?p6tmf/xfl/tK4WhhZG4rcGcHew9KLxF9YGIlKRVFpz6jo5VXySY6JHwcAzmm?=
 =?us-ascii?Q?Kv5D07U27gh5jEPTXN+ztqU0ecWGF5lmZ4ScUInHe/fQeJjtA0f9ZjGzCmdC?=
 =?us-ascii?Q?8MLg61me3nGC4gdneUWiqkMvI9FzJ3d/eFdpaf1GX8eROgFCE3Ys8uVOKYC+?=
 =?us-ascii?Q?hv9TG5KePAOFUY/9nmvpzuFFcaqhteX9/Z8cS9ubj6w1AxYOP1X935Q+5EOb?=
 =?us-ascii?Q?TRqra0PIrtcM9B2pKso1srkYsontdhiCwdXSsPT2yWYCy4PUHgFpegte1WT9?=
 =?us-ascii?Q?lhrGnKU8OHcohPfPN/mdBc17FbBPnwveVBXyDaqsCpwGvxD0A80C6o4i7tsC?=
 =?us-ascii?Q?kY5DGkA7g2wSQ0n8IzBIw6oeVhKDL74+wFWwzGohMaqq3bzXMofpCji0zfaw?=
 =?us-ascii?Q?s5v3au10hYQMsm6AJE82qKBLJi/ZjaBIssw5lq6s9ySoTBOf51s/uGoi7ExF?=
 =?us-ascii?Q?4T9XAIMSdISG38GXgMMWGJQZs5L1/EOOXc7eZ7VgOW+YNKAa7UPNdw+sEgxu?=
 =?us-ascii?Q?xUJOWkaEN+sMeJuO+8xCcWanamEPQCxYyY7TDsdKA+VFDZ/CUXqZXEFarm8Q?=
 =?us-ascii?Q?L4LI0EBb8DGOR6bIRp6jZvc400JPvctNLj6Oqms1x+l9fBrRP+KArERQdh87?=
 =?us-ascii?Q?Iyi9TwsVNxSmnY2NEraKXbOjfQcrUKT1rm3KTMaULcqYn563idMgdFBdv99O?=
 =?us-ascii?Q?7ZQ1+mQdoQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aee89cf4-7195-42f9-a074-08dec172b829
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:19.5203
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ueg+0MOZmHaP7zQ7ezRxcIC58zZsQa8ozE8z1NEfX6R6AaxvvK2bQDiTbMKXB+y/QMPzaaT49IcyJ0RtoROw6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061926_785790_C945932A 
X-CRM114-Status: GOOD (  14.60  )
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

The 10G Lynx SerDes is present on NXP LS1028A, LS1046A, LS1088A,
LS2088A and other SoCs (unsupported here). It is an older generation of
the 28G Lynx present in LX2160A and LX2162A.

Modify the Generic PHY driver for lynx-28g to create a common portion
(lynx-common) and add a new driver for lynx-10g and DT bindings.

Main use case is networking - dynamic SerDes protocol changing - but
initial support is limited to minor changes (1GbE <-> 2.5GbE) due to
lack of support for the RCW override procedure necessary for major
protocol changes (1GbE <-> 10GbE). This is the next step once the base
driver is available.

Full change log in individual patches, summary below.

Changes since v2:
- 1 new patch (01/16) made in response to Sashiko to fix an existing
  issue
- fix lynx_10g_power_on() procedure
- include <linux/of.h> instead of <linux/of_device.h>
- fix build warning introduced in v2 in lynx_10g_lane_set_nrate()
- move fsl,lynx-10g compatible comment to commit message from schema
  property description
- make big-endian required for LS1046A in schema
- remove help text for hidden Kconfig symbol

v2 at:
https://lore.kernel.org/linux-phy/20260529171509.1163787-1-vladimir.oltean@nxp.com/

Changes since v1:
- 2 new patches (01/15 and 12/15) made in response to Sashiko
- minor drive-by refactoring in patch 04/15
- fix typo in commit message of 08/15 (Sashiko)
- minor cleanups in lynx-10g driver (14/15)

v1 at:
https://lore.kernel.org/linux-phy/20260528172404.733196-1-vladimir.oltean@nxp.com/

Vladimir Oltean (16):
  phy: lynx-28g: avoid returning NULL in of_xlate() function
  phy: lynx-28g: reject probing on devices with unsupported OF nodes
  phy: lynx-28g: move lane mode helpers to new core module
  phy: lynx-28g: move data structures to core
  phy: lynx-28g: common lynx_pll_get()
  phy: lynx-28g: generalize protocol converter accessors
  phy: lynx-28g: provide default lynx_lane_supports_mode()
    implementation
  phy: lynx-28g: move struct lynx_info definitions downwards
  phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
  phy: lynx-28g: common probe() and remove()
  phy: lynx-28g: add support for big endian register maps
  phy: lynx-28g: optimize read-modify-write operation
  phy: lynx-28g: improve phy_validate() procedure
  dt-bindings: phy: lynx-10g: initial document
  phy: lynx-10g: new driver
  MAINTAINERS: expand Lynx 28G entry to cover Lynx 10G SerDes

 .../devicetree/bindings/phy/fsl,lynx-10g.yaml |  136 ++
 MAINTAINERS                                   |    8 +-
 drivers/phy/freescale/Kconfig                 |   14 +
 drivers/phy/freescale/Makefile                |    2 +
 drivers/phy/freescale/phy-fsl-lynx-10g.c      | 1278 +++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-28g.c      |  622 ++------
 drivers/phy/freescale/phy-fsl-lynx-core.c     |  445 ++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h     |  134 ++
 include/soc/fsl/phy-fsl-lynx.h                |   43 +
 9 files changed, 2195 insertions(+), 487 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-10g.c
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-core.c
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-core.h
 create mode 100644 include/soc/fsl/phy-fsl-lynx.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
