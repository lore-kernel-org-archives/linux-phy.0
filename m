Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC8C7CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6EIVMa8KU+3xL/8KNycky2g/MProtb2vFC8lpt8X7zc=; b=GVOXMcEtrQOqm3
	UXPniTRKbHjiY46xupEceuTJSl0BVfIVMLU/KS4WYJIV5pYJXSeqZataGg2RuxN5C77HOKKEiPuxy
	dkwnbzAV7xQWvPRjitQT43g2Id1k64TxhboclYMerbQO1x1w/lO5jS2KvDORZd3ac02ZNGxR8pg/e
	FFH8wwEOn4RkHGBdQbktWnAlFtPhjqDdddtr72iKEZXsOgQ7pZj2ZZIsZcwoLncoddo29Oi3NgvzP
	c93Q2bvH5Vl8zaOL5ZEVI10+SP+ygSF8ASpgpKSagfgBNY+E0gL/0h+yHBXd0hJ6oiiuEaEx3O+qN
	SYgL9XvCGfMeCitveFrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHq-00000004U39-0w3B;
	Mon, 08 Jun 2026 22:17:38 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHn-00000004U2a-41aA
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IFPc2bf8JWwWo/mkSlgiMPOaNTVgQe4KSZOJYjjSAx0xfxfQCZZb5Y4UD6WFN6uFfGsuW+6l/Td/hDHPxG3eJkyIV6RJr8MOxR/FNM6PG/MX3lmgFXoOOIjP80vtews0KyaxwkvB88zpS5UFwXZ+SHk2ASKlWU2eNdtHOK0o7z/IlH6MTftBAs3aPzZ6J74z1400CRAqehkP8OCiw1lyrXd5QarBzLzA/rMGxXfcw8sIYSX3N69QQ5gVWIWQtUyMtsvAEDR7ymRizanTIsdULdHDdD+VwjgbFXD79MhbVQ1TUCTfFwty6vphbbWkMoQEfbG8AGjifzUrW4BAEXqEKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pkJjrxotiM8d5wuvgREsqL5s5PrQzyTxaxedDVHPYO0=;
 b=E/lxyL82Ol5SIxi38nGD6KaRWCZx0eMSQJSBiC5PaKIZiIQChAE9uqsYATiYM/Aocncwv/KPbHw/MkYUdJTJAKzbz9GvjuIuTT4K/gv5RgNAZVm5gJ7Q0wmdB5gs/JjUXQiQ5WjJOVqSvu45KcdhBHDHoBpzFuKyhnVJp+o7o2wjnS1GZs/vdDfB3FxoNGT4+QPYymLMFV3DuM45DOGLoh6H/3LKj3wbZDaZQqNgnQOrCIIIq9tznsbdtyX7gHHk4p8CUigDaVpXtdfcQrUKkqCl8Ia6ObP3Os7Rmt9YTJ03FpT3J312kBvhrgbp/aPXXP4/veDqlupkHEkG5q+aHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pkJjrxotiM8d5wuvgREsqL5s5PrQzyTxaxedDVHPYO0=;
 b=YJAvIV68s2ZbNa9LPtKza6IfEJjo6BQOZ7KgPRO6JqtWZv7wOVRo0NObKjhNKqhMCx3b9YI+4gWbnNvAYodm1SxLJQYbuRwK82Q0Tvb+vIc0uMnDn24J7zID0EIZlAUIF7ckymVMkSMbbOGHyzKVmz+03SPxilBK3ABAVSNBZiWEdltx+sCNXLaCWHiI8xUb6/P7Wx0ZNRFbMrWmPnJsOWJgMuvaiHdkD9LaAUeua6pqFFuq9LaiY82HKACO9q7BZnMHo2ZlAFeM5VmS345lOiYd1axFlps1a56NGsrRsC5qX+U1GWkkk0gCZs97ZsUvbN4NrVC9GNBZdy+9Br4qhw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:30 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:30 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 00/16] New Generic PHY driver for Lynx 10G SerDes
Date: Tue,  9 Jun 2026 01:16:54 +0300
Message-Id: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: WA2P291CA0012.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::27) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: 38012358-1b47-4b7c-b59d-08dec5abbae2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|6133799003|18002099003|56012099006|11063799006|5023799004|3023799007;
X-Microsoft-Antispam-Message-Info: rXJ1DEkf5Qrd8WA4xn1EiTpLIRgQI+6FrGX8bSLBQ5605QcT3dsXU5dBr8ErW0PUvi8r4bEN7VoNICXc8CcvThtKTf28mUfV3DihFXdsQ69WT/++CgfhrqxfK6YTZG6Gp5ZV6KGR49bJDN3OnLrpe/R7hHbScstnoA9gw8lwFY7YPal1xz10hzfOrG5UiHIYPF1xK0r0uNL0vkMQY1LwhbvyLzFv8pbvLnhNUhXVDJ48qficAk5B89vPAjI7wbrnwH4rSuPSScgLk7kZLZkrb+Eud4Y+a7A47VBohjwZaM3WAizRz6WNmcAhgqVXrlVi9w6cN0dIQ0wS1K5cEjdqg7xc0A6V6WrbX9FKPpfLZ6dbRwMMHHDy2eErXiWFAO8b25bz0eLtHw+kwQ1fKusEympnTS8ocwycc4aE7mMcNLVAWaVXXm906adFfFTFcBX/i1Z5qAp+NFDCsOD9Vwq68AOAqS/UsNgZGVa45QLtwOxpHNq1K90/FztPeKHDOmz7rwVO63EeMoCzbedSLOnP5DWLN0PrUPrXizPyPjvR1eBh7vCP/Iiihat3OM8i9hXAiU3Ea8aJKK8KVwNrU+A3NpSNVG/jvvgkO54HqHbVfu1otrgB5tnTHaxvkwCmhlq2+cTibWTlBQ3VxORZkzTJbfNsl07nvsiOoE40DWO6flOsJKPRmqGRmW0RhErljqxUbeua/B4ymKLhXo2eCk1Jcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(6133799003)(18002099003)(56012099006)(11063799006)(5023799004)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9x0oL37nis3IzTnMH4aIyvbTCqImza1muSdW2T0g5Rq8Y2FVoR7nRaMIoq53?=
 =?us-ascii?Q?WMJvgBIHQUfCikgnUNdwXKj/Dp2btRt/wksZoEluGJLScA+Rg/fzc/ux0Kjv?=
 =?us-ascii?Q?CHmEnd7g/pAflNby5gCRwZzOst44rsI5YOiPyFP3FXStDP5d2FraawNQVQ91?=
 =?us-ascii?Q?wUrpy3DQHwHzo6e3bcTbJodQdW+gaTI373XoQn56ahGINs4CoB7MGSIPg8hJ?=
 =?us-ascii?Q?qhgHokUoekxdevMtyI941HLRGbne7/UBjEESOtxbqRUcY9gRW97seVBBdCjb?=
 =?us-ascii?Q?YF05ZexwgHkfspRVwiunCfMRN9c9AtRDxFAQmzTFaI4f7pAVCHFovB0yVNEU?=
 =?us-ascii?Q?eyMX8/9AlcNYnHv4+ycGnBE9U9QHq6LBpYMV1dVxBjxiI0SQo+pLxIcTrRdm?=
 =?us-ascii?Q?KImtVYdUIUP6zssjYYLfeOKqLG3tMGkbK57RYYrXOAdhBhjZ9ldKADt7GFzm?=
 =?us-ascii?Q?Kf2BxXKJL5vZwbBXYMxzOyZDP1TL00oC8DbH6gdM5A+hUbMDhd0Zyss+fjn0?=
 =?us-ascii?Q?Rer6x0LLksAAeT9lBku6sm3x3o5J3Ebe7z6Upc+8c+FYyrQKvX8ktrmOyycA?=
 =?us-ascii?Q?2vsn6EjRUjdId2nsTWP2FRSx4vFZGLEKm7QdLwkAuI4purem6RA85yMv3mJw?=
 =?us-ascii?Q?Ln4jg+abJzbDfmbluJCukXHtmisuY2vLFjGGCnBSOqPcaNVIbuakrR1PBflW?=
 =?us-ascii?Q?mjoajP6GJ8+D7gVFvdnVjGKKoQo19fMQNf/cMd77+iXGmZQuwjTDpsDTtJZJ?=
 =?us-ascii?Q?9V3DD9kFHUU7YaV8dqqPL7FDt29/rip7i5kKsZe0SPpGPdddMNMZx4yXLkcH?=
 =?us-ascii?Q?5TEuAQruD54/04qDZ4w5j7pPGb6kt9wdJuDOJFL9RyjxgQM8w5g7v8t8i/zV?=
 =?us-ascii?Q?dQhBWPMtzRwD8OzP4B30YRJAsykulVIOVD6bdAsMXytcPjtWhPhOo2OQH9rd?=
 =?us-ascii?Q?cz4CapDoLdTOyedchsLiGc9bo3UOoEGLpObhTTUMLHU6uG4oiBX0ssno+u6M?=
 =?us-ascii?Q?x2MW74LOOusO3RoQQ/DYsInTBeMdMWD7HNjb46NfwgWj8nfhwCj9aJI7YZkq?=
 =?us-ascii?Q?LUp7LQNoe+FKs4HuQUQ8jIZIxPbKlFgVQ0Op9uk3QNfksTVFW7m43Yp9Apdw?=
 =?us-ascii?Q?+Mq6B/l7UcQuKy3FWDpeLmyV/f/z0qeOEhMC5Iuj7F8u7e98wyLIVoypJFRH?=
 =?us-ascii?Q?8Tkq3QsdGZpiP9b9CJotZ9kGMRJNG6W/m7htjVf0UWf9baYxt4SPwK2UvzLc?=
 =?us-ascii?Q?GlfjC4Xbm9FuFxJDX5CLbe3lU4B8smvZy4TQKyYqO2hcoTDASqSoAOvzVLIL?=
 =?us-ascii?Q?83XZQn+7sBYgE+LLpJgf7vdh4xrz76E0p+8JypmFs+Lm1iEdr26daTOPbKfw?=
 =?us-ascii?Q?HThcGny+4VcVMX7k5mr4866BGLa7SW8dEZp4XrNQMIZpgAQeX+o2pIhZc3uk?=
 =?us-ascii?Q?opKrgtAz0MfphxMW2GFCuzFtzTwZhUyoqerwGxXDoYvFm8vtcFDgBySiyT5T?=
 =?us-ascii?Q?pcuqhG/0EkWEqkKALVsl2LuJUQ3qfX7Xo2RfTV5wl6OsTPjF++EcKR1CN4NI?=
 =?us-ascii?Q?0QhlbY4zPIrWhh4KnFMoE9lGdfG8FNEiZ1wJD6jnPzUvcbqkRoUX4iIDG+tp?=
 =?us-ascii?Q?XAEr75sJyw356icesgXPb0NKlVxV21uG5sVW+yBL7zY0u+N5EmUGqy3qprsS?=
 =?us-ascii?Q?bS2UQaDIYfFvbVj9dWWdvMNQYyhLwFg20SjMwg1JlznUBlJ4ecffAJjY27ER?=
 =?us-ascii?Q?PUCHrPWAhGL1x4DqSMcrbDM/cTeaB1OjF2IB6CF4kKGU54a3C+Wq?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38012358-1b47-4b7c-b59d-08dec5abbae2
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:30.0540
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SK84+zyWyZrMo5GlDEf4ky92c7tazxKl0sSpzYbXC9Ywb3Dui5GRhnNReEwGlYmMWOfYeuPGKtein6HaJfYoeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151736_018672_DC5ED00C 
X-CRM114-Status: GOOD (  13.56  )
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

 .../devicetree/bindings/phy/fsl,lynx-10g.yaml |  137 ++
 MAINTAINERS                                   |    8 +-
 drivers/phy/freescale/Kconfig                 |   14 +
 drivers/phy/freescale/Makefile                |    2 +
 drivers/phy/freescale/phy-fsl-lynx-10g.c      | 1278 +++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-28g.c      |  622 ++------
 drivers/phy/freescale/phy-fsl-lynx-core.c     |  445 ++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h     |  134 ++
 include/soc/fsl/phy-fsl-lynx.h                |   43 +
 9 files changed, 2196 insertions(+), 487 deletions(-)
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
