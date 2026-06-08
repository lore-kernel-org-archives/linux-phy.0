Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38979CD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5CiT6UZesLfZ/kEmOXJMZ0QyQuX2kDVrzsHmuab2gs=; b=ZLdN0/56Ep6Bix
	RXP6DqFuDb/YMgGrBVJQ0fHSargfrBwQSDGgd04roqDOaugXGRztqGZQiNR7WuacxvIM4J7h2SWh0
	T3TwooLJyFeeA9uPA84h1G6Poi3UhEL22u45jrKSVUrN0cVv8j6Ax3lSLNTh/Ac8pmJT2jlmWTGck
	CrO5LFhHh9p/VgvGXTi44yDnkBThHmsIi1SBPUqWtQjgKkjcy/rzBTZPbMkf3IQeCqk+F+Fw19xDc
	RzNatEFdWqUcICv4NSTsvQwwRQCO+2BHlXusKVdI8b/1M1PBPBWZ8OnUlIEm9xLPOPvoYR9VYDTns
	2c0BDQxOUQx27wreCcvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiIG-00000004UG7-420u;
	Mon, 08 Jun 2026 22:18:04 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiIE-00000004UDj-2Xk4
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:18:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DOAfLs9dQIXQxmP8QqQ51LBVukaJ662PeGLpj1loebTF7YAcFLIJX25Ra/9oNRCY6eDIvX5BykdTjcrS2W4uXlSauD+2Sd8/FZifzrjrjrf8Lz9A6QBatH9clLfsQoZ5+wRSQl2rvdETZk6DJmv6t6Wwlm/wfVw0QyFFWLKH7iGomXNu89qCCKJk36V92tIlPrr9rwf3kN7FgAcZtI0Tz0a6eG40UJJR1c59yI5jPZW07yxteVKsSs865q+2ro8u4/Sf3OfZpC7nSTGKiPe8vuy2Shsno/yZwyQV0gcTI0mKyPIOJKCx+Aao6w7SplCQW77+gnBOI1eLGu6fhNoA2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TW0CyvcmL+ZcHo/UO2FNb7EPvwOxaCUJg97GhpIfqJU=;
 b=UDJ4paRqTrV9ochHFP8FJC8WSK6qp9HEDCGy89mo0dVTgEKBH1pAXNJ84zQgPQoTjoiKV52bOcp//S7T7mzvFsrwIRhaN05KDGxOAg5gKdADyv60RyMIbyWLg2PA4CbN+KfH05qVmmCIvloVvrJY5s84JfxyIpcYWfrldeGrc+3g8WZ9kz4v3aNCvD4t0DymapsrfaIJGo/c05nhWXM3BcFzjQeN4eRfYhQf4q5jP8ZQPlgIWbj8B/Z2srphZwG7LRcvmAyGQY5CYR6glmeb+NRRoboz++7IJwEoRJIjxqAFMuis6oJcvEXyPwZpAw3LEbYzjDo1veU2FnjBqIXtzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TW0CyvcmL+ZcHo/UO2FNb7EPvwOxaCUJg97GhpIfqJU=;
 b=WDGYQhjkny4rTmuG4j2SI5u/HVH8vzFjVZlbpUrwh59KfBOXQTyXA8acq8zTkzTE7fazWrth1NHmgK6m+Xe/7BceinO+sW6knAoUQ4RW/KjJBMII+p3OVyCMZBc646MjQqC/Z427n98Yx/aKSNnreOIgqqO79uSt3XBJO1z1RD/jlogRYJbooCrFtaTSDGe+g5K658MYuUjlzZgJaQQps0Hm0JJvgZYVD6fUJGq6yTrMHPF5nJvjcXk7R2HWWcZ73SvZgJo9bwHkh/NjgOPGvfMFpz6cvpRMl+z46GGbfa3bQ29CoSrZmIBqW7Lpk/dULgCfBlWGfjvKTzbX8CY+JQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12070.eurprd04.prod.outlook.com (2603:10a6:501:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 22:17:58 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:58 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 phy-next 16/16] MAINTAINERS: expand Lynx 28G entry to cover Lynx 10G SerDes
Date: Tue,  9 Jun 2026 01:17:10 +0300
Message-Id: <20260608221710.1572971-17-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR06CA0210.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::31) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12070:EE_
X-MS-Office365-Filtering-Correlation-Id: 468ee9c8-96bb-48b2-95d3-08dec5abcbab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|10070799003|366016|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: UgsJKQLROo3M2FeQCvDb6vNEJQe7/NV01YTOfmhIgu8/R5nv3yVMjkLFL5ZG4tlEKpULl2gQ8WGS2/VxlkUA/FxorygiEKghRWcRC3DXs8npHeZ9d3Q7RMdFIu93Qk50sMShTdoRKK/BtA9oR1CZ0o60Tz2VFsTr5LB3TI3QCBIzkz96aas7Yq8TNKSO/+2wOxqUNNSJeRNu19SkebMRGYKvhcMa3kiI3J1h7KI9wN1aAgIDroDxyzCWk3D8nRVJSEe4aB1Q/vSPs/s4hVKa1cknqmymfk08mXTRxF91f2swa1keaezkRTxRZchHZIHhC1pGnw2jVfyE81dqqH293p4PgZuaLnW68MVCw7FkI9AdoFVCo04lIzSqqiZxyJeMKdozJQuKwyYEly0AW3i4srATPWg1B83+w+aCypR4tPzlOqM6eU2daj4BQYal+tE6/ftPTjn9Pz+s5PKra+bu5PAtTN1BZDYzoaThcShUKiSZ7cUo9+phYxBBAaFBgaLRnRjXVQVdVlXcao7GRY/6nVE/qfbMkrAqgbfn1w7G/Q1X6M7bJwvIl38BTrAvGciSjizlgy9H/Y8EQpiUdlZKdTsOIYlOgd2aWzaV2Ib+kEMesw01wU4/1XCjJgaN8Syd/LKbanky5gZCwSWv2OCivPqlg6C9EkaDgl66FDHZBGvCN64N3Sef9rCMaU9i99dX
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(10070799003)(366016)(376014)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6p3JZwR2F59vBOmzD2f+2XYx/NQevgsasuCgmVhQkNw0NXJzTFyh4ZChnP/4?=
 =?us-ascii?Q?6r5FgyX/T9/ZDYVCuR6oyrIUkcsyANywf8g2BzYVSeAftLJWDLFCv9l9llQ8?=
 =?us-ascii?Q?lo35ZueQ85l0rZlr5z2tCcwoP+fciIGINhJIrRkp9B6rmoywnnR9zHtgoT6E?=
 =?us-ascii?Q?gaXcdMI9MhPiOE9jxUNy+kBFTwXsHyreUALivdmfvuM35f38mnV22ZC6Jlz0?=
 =?us-ascii?Q?UgGr43NIAe/bCUNaoPycbD+O+BlCJtD0tCw/X7CoQXD104tG+FzLSY5FYx8k?=
 =?us-ascii?Q?yKLZS9VXBTirUBm6U3rTb3J+jUqUFAlbS90HXNQFAuUQybPKhd9nH3Nvrb/T?=
 =?us-ascii?Q?ZrWOY8kWW/S/EZwwfIpBU0j58+jMY32CxQRvCEHYMED7T7nYwFEQC3v5Qd52?=
 =?us-ascii?Q?Ti1HLKCbNc7ajIF35tG2GEZd/Sn7T4rgZDEDy4HUc1C1HHn8usrkB/Ep4wLR?=
 =?us-ascii?Q?vVJpr6ZfX3hMtS7ggQWSjHdOeGTVNiYnf9xfB+zFe6+eCWPeJkvU097raLiG?=
 =?us-ascii?Q?NvGbFiUSbifv4xLIy273jevUYhf+wBVZb8tGodvTyApTfYgqDj7eKWEBb/8E?=
 =?us-ascii?Q?8+206GY8VUGM9dNHhIP98AVNrT8l6Y1JiFWEoFDbXsjZA8NGkPgBcExEjyJ2?=
 =?us-ascii?Q?DuMnjzbRsPGU9rmogU5rPGN3xZem/FSQvED9lJvQKT576CY385t+Wm8H2vJ0?=
 =?us-ascii?Q?S3vcr6Nhxs9K5g9mW0d7Q0z5xemjwOa51SdoeAMd8FAtfAYODht4QOiFRN7D?=
 =?us-ascii?Q?jb2e4rkpUJIArw4uOmvxIeeh3JiCl+AIvREAMttuJ599Zkqnk38LPkeeL0sb?=
 =?us-ascii?Q?VV/+QhWZtZXOfDAh9S1QG/wTWLDwBhIVwwqZmfAUFkP84mB48SQ9jF5ZZZMt?=
 =?us-ascii?Q?efoqhw8wrz3iC2JuoNk0t0gw7P8f4vRGcZvsy60Ua9hSb9zBeKv9wZ86iOXq?=
 =?us-ascii?Q?eoMIs1wmAhU36ZlnXfGdi9T9deWg+IeQjstPgX0Z51OtzBFkUek0v0rX2+eV?=
 =?us-ascii?Q?hxlHGdnf8YQfJhxnXzdUCJ9qIt9IIG4crSXMEKWD+4BvzcOYc5DAxN2QCeup?=
 =?us-ascii?Q?ktSlbbVg1XpmEaJJGIv/MYHVzpWuDRt3cDn9oycQ/YFJBp7ru/qXgRTkVQy4?=
 =?us-ascii?Q?62IfMA9aaMUNNJDeCGGP0KfErVE0X73VMEzbVruX4LwoGHksNUYRSfFTTzrP?=
 =?us-ascii?Q?WeXdknKcVfme9jBp9XY6v2+G/3S45l3y3L/hnSOjAG96NACQ4dh3pntVHHz3?=
 =?us-ascii?Q?5Cgo+EFvgivlyvnkWG+x0YspBaMgrkL85oK9I7eMmrGiERfRe1CyjNzrz9n2?=
 =?us-ascii?Q?P0lZaaUi0qv10Z8Ew72xrQgw8gPonH2lD+D3y0k76f+DHGJY6hp2dMaFRyZI?=
 =?us-ascii?Q?g3kvaTcN/XdEozddEXL1UHsyx1bDhHt8rUthqcaNcLdEtKjMk6KBfUclEt2Q?=
 =?us-ascii?Q?R7P0U2Ia07HqAueL55dGMHPi4LG1nc7/uFQcw4Vvlrh7YCFzEDJCSwrNYQqo?=
 =?us-ascii?Q?WNMKgYQYmKST7GlV/g9xqrbqZyDYSx4ToXbTcJTyVudiwBD2gWgLFklpcquR?=
 =?us-ascii?Q?a/VkjVUZHnLMdvSr5BQftwD/gfmY26C4aaT2tsrrdHII93Uv5iqeKb0kCafp?=
 =?us-ascii?Q?vsEdAFmhno2OkoD/6tcVudsNz5SvhS6jCGLeqEaF4F7NCdbeEDB/Zj5vGlM5?=
 =?us-ascii?Q?gwtjMSos6/jkjf4NgbTO4GzR9ArFC6wOIMXWCJPOZhD5mraouXGOkkVzvuLj?=
 =?us-ascii?Q?UX5vk5K7Ko7Z+daPhH9BZWcTxGQaTKNf1q4h3l/W5JxV50kJLmfw?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 468ee9c8-96bb-48b2-95d3-08dec5abcbab
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:58.1633
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dIF7GGPPpNiUtjID2lfT0CiUKWr5GBXWKe6ZvhwJMJgL8IMG4Ysoz6UJcDj7z5KLXk2wTKji40QdxmWhlT3NUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151802_655122_748E0184 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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

The lynx-28g and lynx-10g drivers share code and hardware architecture,
so let them be covered by a single MAINTAINERS entry.

Add myself as a second maintainer alongside Ioana Ciornei.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Cc: devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>

v1->v4: none
---
 MAINTAINERS | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 20bd55913b2d..c9c3229c9119 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15404,12 +15404,18 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/light/liteon,ltr390.yaml
 F:	drivers/iio/light/ltr390.c
 
-LYNX 28G SERDES PHY DRIVER
+LYNX SERDES PHY DRIVERS
 M:	Ioana Ciornei <ioana.ciornei@nxp.com>
+M:	Vladimir Oltean <vladimir.oltean@nxp.com>
 L:	netdev@vger.kernel.org
 S:	Supported
+F:	Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
 F:	Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+F:	drivers/phy/freescale/phy-fsl-lynx-10g.c
 F:	drivers/phy/freescale/phy-fsl-lynx-28g.c
+F:	drivers/phy/freescale/phy-fsl-lynx-core.c
+F:	drivers/phy/freescale/phy-fsl-lynx-core.h
+F:	include/soc/fsl/phy-fsl-lynx.h
 
 LYNX PCS MODULE
 M:	Ioana Ciornei <ioana.ciornei@nxp.com>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
