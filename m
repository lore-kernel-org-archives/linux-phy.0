Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3384CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DYrVEtdird5CMLbpoiM0A5tiOERo77RJqEGPERP13Oc=; b=YumRg/J3patOBJ
	M4WSebd5nX78uplAuaw4rZ22smRME/kqeMasbwPkVrl4+XjNRibxSjzjcXVM2KMJ7dZ4vc2DWSlq0
	57gYvN0W2j/ujK90mdvzkMUqW60S1pBpHOrkzejjEd+dHcqCL5AS9sPtoQbXcsDEKtLGvBya++jeR
	yVMk2M/SyHvFBfOORT9COevDsFxirumojDpFzv7xXz7prY7DSyOxz3dvSwOmfAENZy+wfyMQOvB3D
	W6QAMwiamk3oYo2G9z1TCTPOirdQ72LgOrGCFQETfdF1huTtP+TSZHzylbozDP8HGr3rI87Bi1VzT
	b9d0PO6ggAYKg34skjzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKis-000000080Q4-19qW;
	Wed, 10 Jun 2026 15:20:06 +0000
Received: from mail-northeuropeazon11010036.outbound.protection.outlook.com ([52.101.84.36] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiq-000000080P4-0Mt1
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gRYjObICLofPtJSsLNWisSxhDWfXBIFCmMiINmSOmYRR0VqmYuF7KOP6EdB9RIQwie4gdhSwLypJh/waERrLu+hWHZ5yb9mEtGekVn8pws5jgeuwWYiTWCaeXb8iN892dWsV6WVvmM5vA0amVcf8GhQ69CVRPajRKHuhwlWQPpB/fq1S0G+NllXBa3a6xqnyZNiFESYy2eWtIfr3HdJXU4cYKBLhxlKAiC4ij4CFoeQQ3droPrVF/KUg4lGyyHxdZIVg1RJwXn+iLrEYj8aNLHLd7SeRbqlK4ghwHWz3pL3iqCGsBmOVgH63XMv1SLnHvxWG9jfECFARltUOx8xrog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81CFpc/TbhRHiFZ+RerBI83UF4l+ZbtubybR8iLUwqo=;
 b=ut30m/oCRObNKshuWZ+w8LE+y4CID/E/6ONhJ7fWyaqWyvNE/2niJpXmytl+RSVQK8lISJ6tw1MllSNzvLq33+34YD0QwNDUMf6MqjfGiERQI5F+k71/vQKE4p9uqgZFiUARAbKbK5xzQgaAupQ2EfooAPoZqkrdwqtOAY2Lza62kmQnH0u5vPaZdHU4sDYfIHav5N45y1WSl9VquTde1++6mPlg8dYsVYJA7MwQqgreq4Qv9OzhfxmHPw4bVE6+HeF7uNE73ygHFicuZJj0BaEd3ASjAOPq84V3Iu2f1uJrVz4WSDvrBOIvWuJTc+gt0qFN8PZy1qi+27o7xDYGUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81CFpc/TbhRHiFZ+RerBI83UF4l+ZbtubybR8iLUwqo=;
 b=cFJeEuoXGRPRoOEdgVnXDyt2dn6y7E0ex2d8rRxdbmEbPJQcDUTGTN/vWjmx/sSeSDWLeNN9zSGc0U91GKGLVwCSz41dJmIugMI42E8T4WBTie5OJyS2qiHhsORDAddmXFk731O2jYtN1O5JLWw6+2SpKUxsF4k4SA2H1m+JqYdaszN+wwMvoPykUNbiHb1qiLpFs6QygJyt3PlbNt4TytVkhq3W5BjH6amiIerH2RpNunAUNv+EqvYC+8fI4NTH01v5vXKEfBHbkdERXKje2Um2gJmfrcLzV4gbBlB7EfZB+nozpnCLCvIcdhVlUBooNIn6L/cmpDEu59IMC/wAMA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 15:19:57 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:19:57 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 00/16] New Generic PHY driver for Lynx 10G SerDes
Date: Wed, 10 Jun 2026 18:19:36 +0300
Message-Id: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM0P309CA0010.EURP309.PROD.OUTLOOK.COM
 (2603:10a6:20b:28f::17) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: 3950e8cb-eedf-44af-566f-08dec703bb39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|18002099003|56012099006|5023799004|3023799007|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: cwMqsTqgVdEjM5KV7LJnI3JSbM62o1K0r3gkTRnBLb6TdXE/mwbCF0aCeWkCO6SH/VBuWzzeki8h6ihcATI1avulPfBduCpcWfREYyeEM9c/WCKlef2TAXKbc0O/lvtHZuPAWnZNYdowsN9F96nEsKkXhz5KQ6Lw/fwsgqQGOYQ+0tykB0OaywzvwiYUz41xLPI/bXhnzI1HP41IpsN0VMSMT64rLckrfaeSkjiopj91EyreW56VrGmSG7gkCY1f+6f682cwaFdBrrUdV5vDDCHKb8aXXS8+ygllYZLya7m6Rv2mw6vU8ph9190wQ0tmMGgK0JeNCnfNEcdKUHowhsjjgeaLHaqzBsqHPI3DKm32Hxb2FmoJewOE6DRLGkL+eCEx8I1HPJ30eHVG5ac+nMxWCkAfrdCa5gjtTM0dEeVx/mQKYBpcUtkp+Y4V7IheCRyICrRV5NEioIFAyNwbzKzoqPBDD6RF89oIzaUH/iFPdws9IGgSfLYKOI7gHQqLM+6Fu7X/KhW1ChH6WMuI2AZyr8szp95AgoYB2Wi8kTwRsuUbKcJ1DfgRZNQiDhpXloK+l+mYvCqBiAmuZWnRKi/RhxZ0n+3026er8YudnTkvqq/1borRVN15nyvn/ovYjP7KFKoGHdPGI2k4DuOOv5QisrlgZZhuBerVJqTDAgDB5pAmgoOaJp5tUn1IP6AcZ9gAzSl9t/2MHUqbNB7d9Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(18002099003)(56012099006)(5023799004)(3023799007)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nzIVpSDYw7gOWjqd1rMsAhm1hlh6s74J8RBZ06rKb13Ppr2CHgR3t+p78xxV?=
 =?us-ascii?Q?bnNBP7A7cgh8FGLVlFLHo7iziLuBois5DZYUDdGl91HDzujDoE/NbCW4559V?=
 =?us-ascii?Q?wJkqSPhWtC3jDCsq3ef8bUhgp2zHqMzji6qKfK8tg1Djm7QLuPWoDt7X3/S2?=
 =?us-ascii?Q?kQSTncbtAMLi3eW55SLxKh8g1sEjjo+WrDNCU/ugyzf3cE31+zeduiWTbQmx?=
 =?us-ascii?Q?iBxIYrOthZ2BjZMb/IoHHi+/NrZ1kos1N/KMvFBy+6tMSHRHxPe8jt9mN237?=
 =?us-ascii?Q?jQHTPlP0ahoNcmoyePvrbj4WEBCQj9wTNoaKZJZd2iP3ZrEmAt8ysmGKxSo8?=
 =?us-ascii?Q?f/P5R8DdO6K050JUvXztPPJ5wUAXZSYWOWiXOP2n6vQkccB6pVTM008b40FR?=
 =?us-ascii?Q?oAIwIsQJ0+hq2LKNrAIknPfoMpYZ+Sa/cauVfaUiqO7FJt3YCAgmdgNE09uy?=
 =?us-ascii?Q?CDeqtfndQEWiJ/TtMY9lic8Vhw0hLzA1sk2ZES6ggGeTQMbAweahcVYuFDF0?=
 =?us-ascii?Q?8UltdKx4y3X1H1jMmyq+YAxTpZFP+FA9m1VTpCwQZaRU5sWTDhMWIYI2KMb7?=
 =?us-ascii?Q?PXxX0IHWDAt6DW8bZ1i+DJsCIDMusjJovoEhQ/xH98XkrgQ7IKHW//OS4d0f?=
 =?us-ascii?Q?TTD+/5kNNjuM2ZmNkq5kKpmNqA5DZc08sbMIOyb6rGKMUivleiG2R/3DBsnh?=
 =?us-ascii?Q?BkXtvQQONI/BNOC/WNMEy9k7xv/CWPlp9uJes4ke+jnMoyhKqki8Jt1MTjaF?=
 =?us-ascii?Q?JGnljraKuOvCFavyoSOMcfXFAylMTWU/K3E+xge3Shs4IZ/odTFIe+q5Rhf0?=
 =?us-ascii?Q?+RE7omf58lqpC391lFsA5TId2Am/ZrgEAv6XGkD0zywEJuuqLFG1PSdVNFh/?=
 =?us-ascii?Q?dbUyQKwbBcFTCys9V/90aSAF2wcKWBZJWZLTcU8z1lkfE35YZQWkTttTUymr?=
 =?us-ascii?Q?+vp0LylvVpD02Tc4U1biITgEH80B/QVrb/eW1GpI92QLfG1aD9l7DoUIsPdR?=
 =?us-ascii?Q?Td0Cc9Hy0xRjAiAAA08QpXOIHEjIY5eYdIMm71jyEfyQc8X9GWyHxgRIX5QG?=
 =?us-ascii?Q?fHPlzUz0HZ2plJNrhmWSp2/T4OfdfbWPoTkIWLDfYAWya31AXRAwCb6nENjn?=
 =?us-ascii?Q?L0AJrS/P+AitN3dg5e7716qsOGto8TNbYclZ1qvGMSG3JBHOHApxizOqfQxU?=
 =?us-ascii?Q?HRIlFVcnMZnhESXSI2IsMjJceDTHjCHMpT34pDrnt1I+DN3mIb4ELTSRMo/y?=
 =?us-ascii?Q?kXalsdJMg7GnukIDGYYff4+Gz3sC2rfr8ZZ1uS3ebHZV9Ciqv4Gtk2muj5f2?=
 =?us-ascii?Q?EbjAruoHX3g9gY1rz4FrHICfdC4PdUPSCfV50MESOsuFwd6bwAnODZ/CCZg+?=
 =?us-ascii?Q?ZrYVp1mM7rBr5BNirfshP2tg4cLjRNqvPv4Bmp8u1h9ifaOjUoFpffiMLKB0?=
 =?us-ascii?Q?ldNh5tt/03HUSfxmb23PrlF6nGKyJQ/Or9ri2bv+tmMRGNZIKGF1456nFaMC?=
 =?us-ascii?Q?EEw+oMNRG/DDldJE4P1o7Hh+Z7Q5Qx20bHjo4lCZbEwNZuz9UWDCTcyOaAsn?=
 =?us-ascii?Q?j990Lm6fVMkMA5cnRQ9G3Tuk/VMMCBiv9+plNm9yOvJeQyorO0YP6O+bV+tk?=
 =?us-ascii?Q?HV233w3Z7SETybmuEbjK6uCC11QXIeELMISS6HnLPFfIKJapk7FWJdp7vwWD?=
 =?us-ascii?Q?xM7/qag7RlcDXaXSiNsmfL5ZM29IJg4n2lL34xpYKjCJBBrckIKRrLt78Hys?=
 =?us-ascii?Q?DGiZRVT/OA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3950e8cb-eedf-44af-566f-08dec703bb39
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:19:57.5152
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tHSQjFYw4ogPyZBOVB7DqFweHUJ2ldiPdLhH2B3NauZemfHCDlQxv0vY6BxXx1nI4TDO2lJED8r6amcsLITWBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082004_132593_3FBCA0D0 
X-CRM114-Status: GOOD (  14.75  )
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

Changes since v4:
- Changed too much in dt-binding patch (14/16). Backtracked on the
  movement of "big-endian: true" and added an additional constraint for
  "big-endian: false" on non-LS1046A (Conor Dooley)
- Make code more explicit and better documented, so Sashiko understands
  more about the assumptions being made, in the hope it will shut up
  (15/16). No functional change intended.

v4 at:
https://lore.kernel.org/linux-phy/20260608221710.1572971-1-vladimir.oltean@nxp.com/

Changes since v3:
- Minor dt-schema changes to avoid relying on fixups to make syntax
  valid (14/16), and add Rob Herring's review tag:
  https://github.com/devicetree-org/dt-schema/blob/v2026.04/dtschema/fixups.py#L19

v3 at:
https://lore.kernel.org/linux-phy/20260603131914.503053-1-vladimir.oltean@nxp.com/

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

 .../devicetree/bindings/phy/fsl,lynx-10g.yaml |  139 ++
 MAINTAINERS                                   |    8 +-
 drivers/phy/freescale/Kconfig                 |   14 +
 drivers/phy/freescale/Makefile                |    2 +
 drivers/phy/freescale/phy-fsl-lynx-10g.c      | 1321 +++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-28g.c      |  622 ++------
 drivers/phy/freescale/phy-fsl-lynx-core.c     |  445 ++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h     |  134 ++
 include/soc/fsl/phy-fsl-lynx.h                |   43 +
 9 files changed, 2241 insertions(+), 487 deletions(-)
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
