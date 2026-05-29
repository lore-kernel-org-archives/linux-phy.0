Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE48FCD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NeueFs8e8miIeCHqqPrqtnBj0ilbk627TMW2MM5EkmI=; b=IE5JieqDugGQ4s
	2taFxjdEt5vR8wjAlP0pqORgl+6JjOJj93jmEjwMzPh+6cyISwsITeO7bNzjhdke3sv7kM4GPvzBK
	qWH0NEy5yUIhEguoF5BdLmscQGGzoEr5tDaoUcYajKAOwHld4UYY1zgiASDUe0Xs9A0yaK4m0f2At
	c/vQ1rT04fr0E2WLoe951GRp4+DQdUCfxHdYj/X2A7CLVG1C0can2dckH1UnytM6k+rIOSnWfFH/k
	pUuqoGgkl01NBwBQcEN2drgUNafuwaSNSnTBrcy7jJXJhTjoggFwimGZ11uQuyUwaevMoMOBvT88D
	VjxBd0xhRAS2oQlvncJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0np-00000007yEa-13co;
	Fri, 29 May 2026 17:15:21 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0nn-00000007yDh-1paP
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HOfG4r0wHwC/lqDfUFhc4tQSMC3QqadE2NYeWlkJf/RFonwLBCSXs0paKaabZEZQaKTMNigSGADKUF8Yq1drHMT4dyFv0YWJTYbZM0Mh3XnsXGNNmmCWDrjV1Q1gG3JG+equ6tF+c78TiioXomBBdjFWTzzajfmdMlZfbC1HIhXBM3gsOn5h9N0DtiTuGcFNdZooxgu5mkuguwLfZTI3+j1naE8I+wyv3uv96zyVFnyO+g1pUTbvF4XKQqA2V3AYP8bu0XjwPGAwPFVNj20TMWRupn349QqcYa/ryCMNn39nbw2CJs+m+ng7GoFVwWsQvsG4vFcM0dd7tUgJ9aCJAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3e+0Fp+u/46x7f1/nYIMvOr4Th6Uj/Ik7HXC242W0Uw=;
 b=Ta+FUiugXNnQX2z4i7rbUL4uRP3plQzcbp+fVdqEErHmGfB1h+EnqvSomFvi9LFPxJ9p7j/P+xZryLiQtiU/LxqrhtGVWI+/6Frxo3XiVTsL5HYKlE5uNdzsmr00UJYIrQl9UUbAXfy89XVlBrsyaJY3Ytd/bGc4Re13GHuQwsniikphi1VTK2SfEN+dNWZY7d8Vh/dvtP/BEXctNIeQkQvbotVPfD11IWI0q+PfMdlOl1p3iqJ1wy/ADRf3EjDOd6bt6oD0j9GbtWtmfr8w4YM/q3SUkIt9N3Q+jxyq+FjKVOMUWyTE24oYgj81U/m/9P6azxanqwr97UdAglkUig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3e+0Fp+u/46x7f1/nYIMvOr4Th6Uj/Ik7HXC242W0Uw=;
 b=IFG7VeXLEn92VdPtawpBULx/S/gmc8cYR9MX1UAKzJAMT6SQ2rj7QPXmzX6inDlJGRXHFLDE9YYCb+QGmMJ0omzy2SrBN09FYPCGhlyvCQEKACj1FGh6pxBi607sFNbcVamqqr6XgVqA9geRq4xiVnNvquuLh2zhSeuAWRpDhHzrBBDmD6uKAyfyEMhRoN45EcxelACP1cJQl4Mi4JyjOTss+x5FYx/RzXBe+CAAWjDf4beib/mAmaNwSOA3CPw7BLPns7IeTUHM04a6k45WKP522Gf6ALIqXHJgI8ENXZVu6XnAG56RkHWZmqJjfmsVpmtJKxepCRw129wOEuTG2g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:14 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:14 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 00/15] New Generic PHY driver for Lynx 10G SerDes
Date: Fri, 29 May 2026 20:14:54 +0300
Message-Id: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AS4P190CA0018.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::11) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 631f198e-ff89-4027-c2ef-08debda5d90d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|18002099003|11063799006|6133799003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: ezTGlII5Sm4Nb1ymBQDggKL1SYY6DwiFaZFrH2Su6TBBsHwwaFXJ8iXI8DeQdgqk6QlgCD2jw82VS3e94T9n24dy3rLgZzQ9zeHvoMnSpP9Ul34uf9TMhDaG1oawJ9C9kGvzes8JqITPTRNPIc/ZUDg4DV9daLWkEjr+ClVEDwdoRzIH6Xphwd+CfNxCcYWhBhNH+UMbbxUGv2/QzqVKPmjqAYXPwXEm64mj/sjUytKo5nc/TLm3pR3qwyPZqf8aMkJ+eIs1EhT8t5ptJWrzUiMX7P58f+F4o2KdFsCxKLjuPWBLYDNNj1ZxllI1n0bavbudplC7SJyT3Pk84n4HErK3QMhWRuABt/ZdBj8YJUkeRryI3iaiwEXry9D6SpQwy8ZL/1cf5ArPCbGXDulZl8wducMes7yGebg2WVLK283MjY7o4SVQh+yRqJCUzsHd/cuYQ9thJVIxav7JUAFsqNDZEQ6XnBRbQ6yEeIXZiJYI3bMMIKjt/AMz2rViVjhZMEFzfOquBe8wS90JtyaLjZmJJqaUsG9HsA0mMNf0LA6E/8AbQ/yFrOyNSMYXkpkpG42ywnZSGoikSQAgAIPbk4VXiJZCxm0m7UMr8AtgjJaVLcG+S1X+sOF8y4R0tY7YfGjDfyTbUfIH0kaJIyGho8PAFWteu6B2FOnV/XLQSSGxp98tuHqg1aEmEGt3lhH1YWC/rnP4Um//tgQ3SX3ZDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(18002099003)(11063799006)(6133799003)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V+N8d5qi1XidEL4mCq3evg3rR2Bjm8pjDsLn708HfG9g1hcODS9lJCk/ukAn?=
 =?us-ascii?Q?Geb8SuEDXqnmmPZKXhiSZwi09hcA6DwEY6r/2HMwVUMQWRSRF+OaBeieJnO4?=
 =?us-ascii?Q?mDmyFT/yhjjiEVgngSMnj/tuwaeebR9I0ABgpZixaDIxMuG3TrodOWr3lBEX?=
 =?us-ascii?Q?u+pegw9vKAYZphf6ymVL4te71R+ZI1V/7JZwI1GgOv0wrCChh2GOdhnOMxy9?=
 =?us-ascii?Q?aHEX9Tf46aHjCEQwTVo+m1ZgBuvpSPaJsnzmBzznaVbwHsKhEDS6ptu9bifJ?=
 =?us-ascii?Q?gzC16QYVHZuLLZiF10HoSRGv/F79rg+pmVs5H4AQM/lwIFWESHJnaY+5cakg?=
 =?us-ascii?Q?n/iJtPCgCTjOclZWaAcs78pdzbo8JxMpr2HueCWp+72X/j/EIPEdFakwUUG1?=
 =?us-ascii?Q?EcYboA+7DsVEKCkxbv/axvHEJcMWopqsR7v22WOQSduqWWiAUEsVTbPkYMHM?=
 =?us-ascii?Q?MIrk/iDKMRcm3rPAVQg76foPjd1w/9a6eCwKMOXuRlEKIOGZK+di11fusu0Y?=
 =?us-ascii?Q?6c51EDL2uohzk8KYgvJj5Q43Mpqq1XOlpUu/FQYw/sAkv4iNKTTYtGc+9b8f?=
 =?us-ascii?Q?9gwMxvHzs3WqpA9u0tAlXe6FR1TVnq7RD1Q5AkyWVJBxxNX8jgjNsfBrcvtP?=
 =?us-ascii?Q?ZoX2bTUl37UWD2TzwkJG1zcLN2CU3+zJ9p0eqLsJVO8Rgdn885skmIbUzY2u?=
 =?us-ascii?Q?OEIKpK9g9KqWk1KtfQfydYka6ajCCIwRYZYaCZqS+OACjB1g7zZSwBdYP88p?=
 =?us-ascii?Q?qqURSJxvHJqGllFwuFOD3oYaeiOsZ1QXY9mf1NvEbrDA+a/vO98umYJV9ctU?=
 =?us-ascii?Q?b0Hq/sEgq6jrYDhf5JJnrwra9wYK5xaXRQi7XWv9FEbid/rN+vaVlbg9fArp?=
 =?us-ascii?Q?CbxBSmcANCPAEpIba1gNMeeUVmdsHzpXrLUpQrJtDL2eqZHcYdE4XpKa+WFh?=
 =?us-ascii?Q?boosJuSiBythRNzd0QZ9ey3GcQkfRi5XtHVBL1f6VWzOofHRYqeeswIZ9ApG?=
 =?us-ascii?Q?HTvFma0MimhDFAvZPUVqfnk3+GB6YFM8VkdjNrIOR3iHSO+rQ63SVuhAq7El?=
 =?us-ascii?Q?a/Ro5NljAlw/jCzhjAoWXLmuC/mLMHnAb/kqVYohe8MNIwiN463dOErS8WHi?=
 =?us-ascii?Q?VegWk0P0/w6XHQ9I3bjnRpslh9GWS/gE1fuYGSs7yacBCEmqS9pV+Yv9e1dw?=
 =?us-ascii?Q?0qUbt8vervE8AM5gJV6KmYh3JWPRjA2llPgykIhGCb8/WiBN4rUE8Y7aPygZ?=
 =?us-ascii?Q?26NkRyy8wI2v6qjtkYnwheIeECRpY+zhoEOR4LJnN83bK2zh8FU4zyc6hCD5?=
 =?us-ascii?Q?FVIHndEEbxkgeR3EAR4u0jz62EjbeYfFeYl27fSyd8uEwk7X9s+Q3ZvZL+L1?=
 =?us-ascii?Q?zXxalgfqjwO8K5B+OY0ag2X2gn3D6abgmTy4gNOBMXMT7KFFtXPpm+YIuV24?=
 =?us-ascii?Q?ZldTxvdhDG1AAzb4SuB5nBGytCAyQveGevo/dHuJ3EDpdOu6QS+ul1hDIf9D?=
 =?us-ascii?Q?hwgGZ+YjkhcRsZGyyHRx+/Qvn7osWaQm91tZLpa2xF7YWk5peuqF1L4lE5cI?=
 =?us-ascii?Q?/nHs7DZp/D71q31wGYoWYlvG0y/xybWskdBikfN/m3SyHSDLWTKNpBd+x62R?=
 =?us-ascii?Q?MUm2a+1iuPQhKYrfopkABi0yGuKoeTKZrHDh0SAk01Y+TVFelOJmTY/oxNnm?=
 =?us-ascii?Q?6i2u4t7d6i3zoR7a5glvxwf0lpCf3Amp2xavRdZg3aMLq4MhyE5ZOX4phtJD?=
 =?us-ascii?Q?GyA99uNi4IKRTOuuttOpvZ1bCMickbl6bOl6PFfwDN3+e0frPUXb?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 631f198e-ff89-4027-c2ef-08debda5d90d
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:14.3657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j7CibVH4DLeVJhsNmTmE/uMZ9Gvo+Ph8qCxC75K5mx6g01jNAm/q5Iqbb5PopNh/FCuetDI6ApMPOoED7F5JSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101519_485701_774D51A9 
X-CRM114-Status: GOOD (  12.52  )
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

Changes since v1:
- 2 new patches (01/15 and 12/15) made in response to Sashiko
- minor drive-by refactoring in patch 04/15
- fix typo in commit message of 08/15 (Sashiko)
- minor cleanups in lynx-10g driver (14/15)

v1 at:
https://lore.kernel.org/linux-phy/20260528172404.733196-1-vladimir.oltean@nxp.com/

Vladimir Oltean (15):
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

 .../devicetree/bindings/phy/fsl,lynx-10g.yaml |  131 ++
 MAINTAINERS                                   |    8 +-
 drivers/phy/freescale/Kconfig                 |   17 +
 drivers/phy/freescale/Makefile                |    2 +
 drivers/phy/freescale/phy-fsl-lynx-10g.c      | 1280 +++++++++++++++++
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
