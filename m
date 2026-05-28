Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67AFFCD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NI8NGbu9jkc3lMcPODylAYqMX/n5hUF8WO/5CFnbrUs=; b=3T4fAHW+OuW/a6
	eFjhx9DiHMufWsYRVhXIrXrz/jNCo7Bp6aKrZ2cVhml27KNowERSoN/2G015WgZ0yAY6YYbbmLev0
	a3nOasaghwEZ8yVU6uSPj27HfkzRgHQ0N/4tUKDTudHzlY0XCrLbfXddigM+64eq9rwkWVPTyzCq+
	49DRDOxsuMrJv540mNs0xkwhD4sBQKDA8YqCx6rt0rWPKcnoCK2FWJSy+LVIROfqr+jeJ2/u7t/6p
	jIEZ6l/DliDbPJccr6n9AzH0DXFDBX/OhfWeNe+vI7nE2blXVaFtyaweN6JLPuAXle0Es1WvlUiAz
	XBUdPDWTlPj+GKaX9G7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeSw-000000065Np-3dct;
	Thu, 28 May 2026 17:24:18 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeSu-000000065Mi-0FV6
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dGgv5gOhkY9G/IJ87UjI116plS86Z1Nh2vh7fQalNNtG75+qBzSGWK40RnNkGqCaTmTjouTeeJX7tLCv8LL0Cnw70IuPxC5TrkP2bM+GJVtNhp1wKwoK7DaDMuKdIRe0oMx14tJDdORLElMP45ZR8UwWwU3Y5E4qK2h8YCXPBJxX36GAeKW59wRM1TUbvkAa2oQIG3QYlm+EsgvzpwNWN2MYlVX5C3Qk8Qeg9OlCCSNNHC8zTueVvD8ZoheNQM5kgajMEH0vixyuXQmmxw+JN0rZDbglPnKut60Za4bzYxdtvATGKqcercIooeVCZ3vtVlhTmYQZu/JpVM9zO4KQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVPmLjCRvQXCWk6N6IRMbmmhzw9/WjyAnutoUbB7YsY=;
 b=Hk3VLkx1E+OuMbrKF/HV4iUOLK1AoXQO6YTAVucBCiMKRd38CnhX6FJy54SKQdgrPvW8TdO8xN5KWMbDgrKizK4fp/awUug6z+at2Jyc8uTWASXkJvk3jEz5U9SOxqrWigkXTlPP2mQiEJx9qU3v/eNV7WM1ydRqB+ffWCCe+88YbmkYzHDgszkIBX9sY5dZwXtiwJRdE2ULyzGa2c3zaggYV9qyeVsKZ0GcauT3q1uM6gs9cpZLBI/njBX7qoay1Wqc0Bjwujcmfm5s5r355UTzSCLWCs/L1cTmX0YE8baYQEUDYIvqe15lL0dp556eB4eMUtJJpek+lhtKk8xxnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVPmLjCRvQXCWk6N6IRMbmmhzw9/WjyAnutoUbB7YsY=;
 b=IqV0vwhJxNOJ7qg8hKaz5zlS3yitG7ygVdZV/hkX1F4OHyGmmhAEhpzABCGfQOv2JDBZSXkmt5WHe3sh07TvEGAn/s74X4TYtr7rORGih/wOmIf//EouVDRlEAVQSj0fVbXgCaJsEYEuVynsy64NcEmaNPgqU7vH93fHp/lxNZG0X+vvr9Q1bMl5oqTQob1SOpfmF6h9fn7oUFAW4BLwAPToQfTOPmc3YhANfTZ7kTRioe3GCcdGpK0iVoqjmbhtDaM89c6C9KjpcuUT6/PptyVWBCqA6JI2oRAK05momp8hlUeM0eN43O2YNVbQFbMiyia6fSjkdTvUcBmFJCkkEw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:08 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:07 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 00/13] New Generic PHY driver for Lynx 10G SerDes
Date: Thu, 28 May 2026 20:23:51 +0300
Message-Id: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM4PR0302CA0025.eurprd03.prod.outlook.com
 (2603:10a6:205:2::38) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c4bb51b-06e4-4d6a-2607-08debcddecaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|6133799003|3023799007|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 8CWiA3VESxT39k1qTl/y3JY/O+wL6WcnQLeGEkcycVvDbm5ICjLIywPzliL8zF7f0ZGbqYXX6PhERHOwHYim5Z5OB5S76/FSdK9QG0xLcxajfgc+M3oZqq/Gs32d3YEpW/Os6+B3ibmyTTyjI/VVHmw7G+89TCnGLuvFiGUqRodOAmdEoqGUVarrSp59U2MKyElKK+4t7AGULx8Is8hsfHOpidYaeuvGQRvr+dOf+GpGcvQox9PfmF6tfDuYkIuW/yigk2cwPir4GV/PFl5frGb+iYwgu723G+rjQI/rIUtXovv/AuRvI33NVUp/wjlrGj170ckB+visZ7C/7fj2TLeIamh1joWO1VdM36vuOkjkA8ewb4eQJZMWf5xONeab/kvbPiUtJkZJn1ZF28lusWAjCXUJv4i6mkoelzHx5mrwsxZtn09vracvbx8fB9RoW5vzpJ2fejkB3bcAY4B2S4ZmlOSK9SjAUsJj2ikoud2fjxoX8DYvM5enqfZwdN2ERB+VZqFbPHLIrEsfFFyZ3X8i+BvpdKtCgnZhQmlmLsXa9G7A9fr6E6JUA97XvG1IO3V9NrYqn7e2HsFgR8k8+Ea6mtUZ5zYwlDEXKq51bMfMjmV1BovmNfIUVIlkxFKawKrhIrOdErjr7QNAL08s6E4fa7dy/81UJ5/V2QyTe3t4qD2hNmLOecpAAID72FbG
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(6133799003)(3023799007)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ceEs04jWWKPc91EKoAMqTDeqw3iUYHtNK6stKhGX+JZzItPKTEMGFqyVv0cE?=
 =?us-ascii?Q?a6PuFxrLW2jXTfJfgfX5+CRpCYvpqeFujP5Zt+BZuSTYBDjIa77C3qX8QnS9?=
 =?us-ascii?Q?TDBEEMrs11gFKuSZoDBUfW55pgU3DOJeLXdqVHJvHXOsGk+AQr3C4l0XV1Dr?=
 =?us-ascii?Q?9xw4e713Xsjwd9OhFTQvLEGT5E5P/OHWs1pChvToDejcs6DIbqNXZkZFNaq/?=
 =?us-ascii?Q?lBwoWGIKnJxtWLWjcyex3IR/fg0TtCI9TKkiCH3lB1URkUU+PAd5zsiWgRjf?=
 =?us-ascii?Q?zklgAIDUdSh1aC/BTlj1x75k+moMtl4k7++vRzI4JU/ddEKjD9URhrDSmgOI?=
 =?us-ascii?Q?mGKjYE/Md94NmNJdOO4T3nkirMaRhngqNp25jX7opEh/9c+KQvpaTcSwv9wm?=
 =?us-ascii?Q?gZZMOWHyx2fgQTx5QNGUa5wGRfQRCyHdesR7zPKwQkL9xuWqjZw42gzKVRtc?=
 =?us-ascii?Q?JRHboD6mdYRB/kaLcsU3Iqm0rdJUrMdbJVDCPPZ7+/Auop89S37O1CQF/GUP?=
 =?us-ascii?Q?R0UZ/Yz3gnBZ8FxJu3uUT84zsrjRknZCGBBO5xHia4cbexUlmzhu6Tw916UG?=
 =?us-ascii?Q?Hlrss2wnL/VwRgBhU4qL07A3hqwPkY3OyoA0P1z7X2CE3vHVOOKjzHJV9K1o?=
 =?us-ascii?Q?qufONU9BD3Ja9a42LY1HDHMNqKcRRpneiMcW91D1uq4c+gnJUyDFxR+DDe8D?=
 =?us-ascii?Q?Dm+9662RspNdWKWqxCL+gh0cGxpe+0xwoZgpqqEfechSGvWpdlVjiOwGtRgq?=
 =?us-ascii?Q?NkQtiHwCgAoJ3temT3vmbuIB++0fdj+/jtQes3HeEAY5yLSuphMgxIA2P81/?=
 =?us-ascii?Q?mwMbPVTDsuyJ1kt+Rs7mPLfcrGsS3/M4Z1GVwSHyYnKz8asKOFcOfCDnwEBT?=
 =?us-ascii?Q?3Ss/wDTzCLKgCtPnIbLxguPjmHfFQRdctW5kQMOjcw1jJ+x5LJlOUuyfAs1K?=
 =?us-ascii?Q?rPVmie5MRZr7stJCveynIjpRgzVtXI0WHjxPiEVD92vXiTqAMu5qZXYE6ZA/?=
 =?us-ascii?Q?C8L8FjWHHGxYfBcGwwC6ygC85YQx9Qb4gGIuy6Q0dRan4Q5nQb0yF2imnZqf?=
 =?us-ascii?Q?unfUnOz3m7dGV5RFkPdg1Xxkemah2ZXrQyZnry4pHlK1Oi9S0xN+IKAo0BR4?=
 =?us-ascii?Q?uwX9U+nwwlDiBdi2Dk0qif6Uz/uGBV4ns1s9bJhTbmgmYT07aIRTNc300jCN?=
 =?us-ascii?Q?URyz9LRX1REsEK3MCed4dmssA/VoL5qyVbWoQBBHMZIUBYqX7yLGwy1/v0oA?=
 =?us-ascii?Q?SHMIQDse8spHiJBzBubNR8ZPD2ZQlEF1U6X4H+0vw8b8k4BZ+rlBh+XxX901?=
 =?us-ascii?Q?1T1zJBv1WKxmbcT2B2vuOEfAKRNZKlKVTIYWv9J1jxb7Diq4Ph3HJa3zkCF/?=
 =?us-ascii?Q?jza8HciJAhQkiBxaqrgThmbDKWTSCxmSwzJkjU3KKkOIehGDZXcAeizmPYvB?=
 =?us-ascii?Q?ZqIFDMyAQEPL2dehpJlix7aroSIrrFemYVgrikkFB36q5KnGQMdhDoWuGiui?=
 =?us-ascii?Q?oPegnMv6GNPWw3CP/PYcNrtbRzt/oowZcEMDPakcZ4Q7im92HPNDzAszRRg0?=
 =?us-ascii?Q?AAVUNiKE3l3wbxz1LTraLNgwcel85gg/eXbaqXupjPTI+YQogK3espeVPlvT?=
 =?us-ascii?Q?2rAMv+bz299C/q9YTaL5Toi/zayAhNzBdop55XAkmqIMszySgiuRVOj92ne9?=
 =?us-ascii?Q?3/vxhyJzkb27tqxxrvyHmon1jtP5l09rl+g1bQW3oFpHb/ggKRm4+h8dIHdV?=
 =?us-ascii?Q?d6rvz0yg2R3EJI1CzHgDpQYN8WXgnpA6Y7ZEdzuOirHtoFZbEi4F?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c4bb51b-06e4-4d6a-2607-08debcddecaa
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:07.8812
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rj+Ee1DzXU687OjG9XYMmd0TDdlUZ8+yHiM+SY8Kv/B3ioO9DbpOJK7PS5xEA1fMTbiJLEl521UJ9uDy6k1UzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102416_098188_F0F1F5E4 
X-CRM114-Status: GOOD (  11.31  )
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

Vladimir Oltean (13):
  dt-bindings: phy: lynx-10g: initial document
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
  phy: lynx-10g: new driver
  MAINTAINERS: expand Lynx 28G entry to cover Lynx 10G SerDes

 .../devicetree/bindings/phy/fsl,lynx-10g.yaml |  131 ++
 MAINTAINERS                                   |    8 +-
 drivers/phy/freescale/Kconfig                 |   17 +
 drivers/phy/freescale/Makefile                |    2 +
 drivers/phy/freescale/phy-fsl-lynx-10g.c      | 1319 +++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-28g.c      |  580 ++------
 drivers/phy/freescale/phy-fsl-lynx-core.c     |  386 +++++
 drivers/phy/freescale/phy-fsl-lynx-core.h     |  132 ++
 include/soc/fsl/phy-fsl-lynx.h                |   43 +
 9 files changed, 2160 insertions(+), 458 deletions(-)
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
