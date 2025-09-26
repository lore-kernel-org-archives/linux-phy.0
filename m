Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 229FDCAC5B8
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 18:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DbNWXn4NRjimQlFPrXtbLFOTjSnjUduMD8j6KCA76zc=; b=UV8F91TC83CQlV
	rO9qBwSVYdv4D24eHEsPrClx6x0swvJUB/yuUUI2BvwD9p1gkQ0amOZFgw9+jNLOpIcfF61x1nqAw
	Et0ETtkfWg9Kn/l3UrfAMFEGloUu3f5fqcJxJDU2Gmfvh9ctVqd2f3cso11y7Zr0VaB9llG7eKs3X
	hdeY4reOPgPknUqxUUFjnUzsFuQvzN6UeSj/Abq/MHLgu1bZq/Q+BvPgsRa44qrSajpgVIE56moEe
	4CUkQXNO7gzKTEb8JRbMglfQia9TdIWmF01uLgv3jgHUhxkAs1UoG2mD2jmvYqHgfUYORXPUJQsyh
	67MSKeiYiZH+vvNFgb0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Cp4-00000003RjJ-3Dkw;
	Fri, 26 Sep 2025 18:05:34 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Cp2-00000003Rfe-14LN
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 18:05:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WpRSLGbeHjRasxWscmRCw8YFBzu7iqTCu78AxApq9QqhzcMQOL8gi3vrG1nhOkdB0HeOcJKdM0Cya4d6Clvzl5w+8AzPOX+1hOYucTHd1z4BJGFXUrqjZdJAgREY+g4z5+vF62jWuoNc3Nnp45SIDg/Cmrqec4rQ+Xv8NeN5n1ZMejxdp+tyMiied1fQxjOf47+1Q5J5z6SuhWY/3KulXWRzxpJmSaZdPgZUpWUBSg1fGTiPZYYdw3gTH3jMFkyaG03lCE8NlC/CZWI6y7Tj09ApzPUqK3spbfkuDxN+piDsG2HVlrJWhBA+hMeZ9WDI8ZuKXPJMmgT8jIhaBmMzzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ShfFnIqh56q5Hb05cW93dAWrSQkMhKdiQGFGPIxNdFU=;
 b=UG7tvWesigGBJl5KaBITQe1mo1gg7DBJ2p+hSTIF6RBBlLovx5VmEWOvcej1UMZxv1RzY83QjEa0eod2/wgWsajo7HFDjdvJ3U/FbzTAHJiRtvgYiDGrBHq7/MdB/JmLPWxi/lvN4qVNLk0VZQHpawnVwb3FZdkrdYAmu8X8Lzeuh0tma3WQm1iXuiI5eRwbviw1qPYHPb3C3/Cw+Ecw7tEAy98w9UINd33Bqr+f4OLXUTaNZQ7QjDJVRNI6JW/8EyWs4xVZbD2W0033qerSItF4eQiZaLxRVmEjpD7iJwpX3J3uDTf+MNzwKsKPwmKbPl9Ojkl9ebz+E4h0JeH8KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ShfFnIqh56q5Hb05cW93dAWrSQkMhKdiQGFGPIxNdFU=;
 b=E2xUjZCfIZqSc6KiERrJeFpDe2NLLt1h3o0/ROMPFh9olNI9B8D/KIXvgQ4adK70TgPT8mYyEWGx2ynpEI5ko2Z2aAs3dcY2Yk2MqDVpFZbPzHClnvEvbvx9iW86sIcpUdk5QlomfiI96hF98xVEWjI/2IkoerUJ2h4VLDvlXMJksrN5Kkbt/i+fKSeyaN48WLxBXQycFGTL3T/4Zb/XOw+2hmDAh81kcl5+RfdDw/Qt9zC766D0hmvrQ2o+ldyhX9LgCZ+8LS6S05ZebToKVUHtdLf7dDz5XVa8ybPcY1mG2uuxAKfNirzx5ZwXTqrryIh/s2X2vEzIHC+68DM6Aw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AS8PR04MB7878.eurprd04.prod.outlook.com (2603:10a6:20b:2af::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Fri, 26 Sep
 2025 18:05:21 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 18:05:21 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 phy 00/17] Lynx 28G improvements part 1
Date: Fri, 26 Sep 2025 21:04:48 +0300
Message-Id: <20250926180505.760089-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AS4P250CA0008.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5df::9) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AS8PR04MB7878:EE_
X-MS-Office365-Filtering-Correlation-Id: e6fa1e6c-ffd2-434b-e19e-08ddfd274218
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UqfXqVrSBW64QQ9CugbYNf1XZ0V00ZROWXie6+NvLYAJNKD2zD8KNlBvwKAL?=
 =?us-ascii?Q?V/arCa/6BmycSTE25QvPHfWgFJSOuveUwvA2ovU2G2WIJhbPOZXhBdmWv3B2?=
 =?us-ascii?Q?k38TypB0EOldPYk2xDNFVsNQivnMzYjvcs3OG21pIoLEACxfYKwenO4tCuwC?=
 =?us-ascii?Q?RCGDRvLtgoWCaddZADAfpzZlM5XlLL44FEygrMhHoGnt0A0ZOiAdW8uS2nEn?=
 =?us-ascii?Q?BJcIZqXfUycAIHHRc0VkQJEkDYi79yiKQb3Y5zfHyBrG8BReZYxSdpAyPB26?=
 =?us-ascii?Q?ZrErscc0UJLcxTxxti9mIEEhXGO1gpHh2wZ4t+8rRRah1di83QnpqRkzCGVg?=
 =?us-ascii?Q?exrUwg3RbdZ/TQGj3HOUKac6zSzCVpOzLaIshwtqnO1CKIQl+kTDyMhL3N8S?=
 =?us-ascii?Q?k+jBt5B8LITRLfHZaYdmF4IzSN5eNLyMgouOVVTYnl54yN5hSbeiKr4S6pwU?=
 =?us-ascii?Q?wDvyxpPfh/nTM0UD2iMb//0fNeCGyQyzQPLMwLerOtapjYx7+sQbUoepRFzv?=
 =?us-ascii?Q?30N57LjfCYlSucNVzzSolESqL+tac5rwYCBx66TgtWzVFxn9gF6WZieuLWsm?=
 =?us-ascii?Q?CyF8+ehi9xkPn7Uw3wvonEQKhrg4pWZ1slD4tybPJPBt99CGNC1Yz8GM5dbk?=
 =?us-ascii?Q?Mn6oWEKJzWhNEdm0vfWOWJD7YLKrxnj7VqfvGk/JSmCswOJAwLmdxR9ZvvKy?=
 =?us-ascii?Q?HrJc1P8Iflvb5VHom0v0oQKZnR8WY7CO8O/Eq2l0lwiYTTA9edZJWKdvRyWM?=
 =?us-ascii?Q?3pFVTuhHG86wdwSoW1pqakZkRRODhmGjlLNkIn0q3yb3OPqx+1Yjq7PkBJBN?=
 =?us-ascii?Q?CuwALMO3vi++gIEo3INZ08vIoiOMmpkyzS+HxBkvEOVbYs904NPTO7rGBJpq?=
 =?us-ascii?Q?elMAkkgOVXiSJ/Yh/oWv/dPcuxIRRkm0aGwgiY0cINUmhcCr7UCA9AjthQGD?=
 =?us-ascii?Q?2GcLljCm6QbY/mYi/SrxmdvMn/+PcvVaoMZf6XUdsta7JcomJN0yUDcEnRlp?=
 =?us-ascii?Q?/FZSLgkJDssqBX4uR2xlyGFFuuBwlc4HyMgJDMKyc16qG77GCGxqupyRdH3W?=
 =?us-ascii?Q?eO84mxbYaay/2C4w1NYqFHhiG28f21py4hFA4qwc+bobEl19CHOsc+/8HRFJ?=
 =?us-ascii?Q?ItXcMYiw9JMm+9v7qrsu2oEBe3YGeebUrH1B9xssqmb1CgPT1L7uCBRxl1Dg?=
 =?us-ascii?Q?FHXbe7NEdZ0I0BtUfai8PVtTBim7JC51ebhpSRujsBC3rdRzYX8sUpR461Dv?=
 =?us-ascii?Q?oGjQ0SHuyIOx4sjG1tXYXaKsEq8xSVXBCOtSqA2QPDbgOJEtZBuWqm/QMkxP?=
 =?us-ascii?Q?MOShAntFX20L1Yw3/Xy1PDgEtTQj25X4HdP8I3RaehzPwdfqP7xyw8inzV8o?=
 =?us-ascii?Q?wF7rv2wY0IOu4CEYJisZxm+Imo+nDKy+uZcFXTmniMh3sTrCCuMjsiiPJKFX?=
 =?us-ascii?Q?OOC7mNOEums6jDe0/t43bW7vymOnT0Xk/18tvFlyFEe9qYRBwJ1jvA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Zoy5CTQc5f2n69yDMOBEdP6i1tarH+5ZRZJyqaI376z2/DCP2D9vJdx/Pypo?=
 =?us-ascii?Q?52UEfGqDS2cg65T0uaonMjcls/XtKiZ3hdhoYJr4zKa3jyk/yWypS6yNw2TW?=
 =?us-ascii?Q?xsP0i2KluUPgRnsnerfN8pzkxFAdD4aoCD0ORQweQFCfGMb7O8sx5kzQHW/5?=
 =?us-ascii?Q?Gpto3tk/glntiIRzphnGv9KQL94ErLMqf3R/2BjaqL4RqL5LLI+4uNPTwuEI?=
 =?us-ascii?Q?bC463ox28XMsetQKtiq4CSZDQ449aKaUe62XU12dMvQVNEVftKusufVHyAzo?=
 =?us-ascii?Q?OtLNUmJtQ1x6FpZPK29CIczSZz44dpSJBQp9PK8kMraPYOW0SCUJJ73EwJ0D?=
 =?us-ascii?Q?6quMfD/F83qqWh5DtL0j6wGG+zoQLpAJjPPoL8Mk6uOueiXND6M0NJnP2iTk?=
 =?us-ascii?Q?7WXczqnVS0VA9kWI0vqnyj4/xUXPj2emVHdRvsBXFSVIPRYrpvO4IE2DfJR6?=
 =?us-ascii?Q?DPI4MkCruaGAJXpnLADym8oelm+9OMT9t1/3FGjN5wE66kMbTod6aDgsqM1k?=
 =?us-ascii?Q?rt8HxzSHN4AwnxrNUDmaFmCacfUjIaQJbRGmlXhhUdFR52pFKsUYPYs3q8p2?=
 =?us-ascii?Q?OHgmy2U40rJcTwknOBjb9amcPjROoNcMUc0g6KCEOpQQXfCVSovxyONlFMFW?=
 =?us-ascii?Q?9nX4Y4D7Ses6J0adT/qjyjk05P3y3+8H1J+xLmfkdmkVdkWEhpOazVL2uNCP?=
 =?us-ascii?Q?PoUIUnqI1AZGWw5Lr+ycKh9KP0NnqXlOaLiJ2vZu/G6owmHocF6OnK/7IQqz?=
 =?us-ascii?Q?fJQDaboA4H6OnQMC4tuTWiJlluLQJ3aJ5Y5UeXpPfFUJbHFoGE3MuS3UFTZC?=
 =?us-ascii?Q?58eh4yAH3ZA9wZb15q9+7utqP8p+2ZsWgeiYHNfihNT+ctxJhZ5AYgoxndHU?=
 =?us-ascii?Q?qbmvm6/wRWEAKkTDm6/A7pMFeYX52IGUra3gAwTRf8r1kFrE7e6oqsnm6R8l?=
 =?us-ascii?Q?Ql/GIfgvtMBW+Ha8EOlQmvFfbXtA/WCgNCaci9obntuXXzrL/RT6ImlZcURU?=
 =?us-ascii?Q?R3mWQTxofZF06cGsht+l0i+kNXT0Qoq91BcPHwre6YVNq7cORZHlm/qppqTX?=
 =?us-ascii?Q?ytNL3EfzNQdYPHfZRIlp/DmKRwX2lPazVqV729NFjHuir8i2aclKFlD2ZPza?=
 =?us-ascii?Q?v3FlFEczoyJNmsN/ZvkRJ5VXhZmGiCpCq2/+sxnLXEPuX5qs79lmiYxgP0Qa?=
 =?us-ascii?Q?yzS3AJV5NVyey7wLkWllHZ9GCqDZ1Wb09tzgMnhVl/OHUtqmGw3Y4AjQh/5M?=
 =?us-ascii?Q?+jqXOMs6zaq2gkuVHamkp5r4dQrACgcuLrutpza27tlvTBRaZggiqo3abMXZ?=
 =?us-ascii?Q?rkpT1pRXpynexnSeWlI+EjPN0kngzbdHaVNkVoWFBcceFTUkwOYera2CbUZU?=
 =?us-ascii?Q?Fub0VmS9XGmNsta/yz8k9vtMJ+HjQppK0duZkB913xZ4P+KxItwiNeYt3UBd?=
 =?us-ascii?Q?X7OPSKr1JL6rZ1aGjY7WLFIs1vqSUhQ24VQGAdLEDksIK8Yl4N4mNQEbTRnT?=
 =?us-ascii?Q?/bWUgQvxaoNFJ9Lkd3j+wtJV9fQ3HC/sTp5b73+QLsYngyeeLZow9cy/vSRw?=
 =?us-ascii?Q?HtM6zY1hUlKio8X4Xl1AG8NRCO0a5yHrhj0VQSLH5GbDJgfYGuboiRG0RwW7?=
 =?us-ascii?Q?2w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6fa1e6c-ffd2-434b-e19e-08ddfd274218
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 18:05:21.4721
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fx69rj+fGT0FDDuxZNo4A24F0O/e3ZTXHbn7hweBEnF5V9F+KxvA1lq1fFiO0hnsgmTP7sGmH1fsStbIybUdzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_110532_299132_7EE64F42 
X-CRM114-Status: GOOD (  14.78  )
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

This is the first part in upstreaming a set of around 100 patches that
were developed in NXP's vendor Linux Factory kernel over the course of
several years.

This part is mainly concerned with correcting some historical mistakes
which make extending the driver more difficult:
- the register naming scheme forces us to modify a single register field
  per lynx_28g_lane_rmw() call - leads to inefficient code
- lynx_28g_lane_set_sgmii(), lynx_28g_lane_set_10gbaser() are unfit for
  their required roles when the current SerDes protocol is 25GBase-R.
  They are replaced with a better structured approach.
- USXGMII and 10GBase-R have different protocol converters, and should
  be treated separately by the SerDes driver.
- Lane power management does not really power down the lanes.
- Consumer drivers using phy_exit() would cause the kernel to hang.
- The 3 instances of this SerDes block, as seen on NXP LX2160A, need to
  be differentiated somehow, because otherwise, the driver cannot reject
  a configuration which is unsupported by the hardware. The proposal is
  to do that based on compatible string.

In addition to the above, a new feature is also added in patch 14/17:
25GBase-R. Code allowing this mode to be used is also necessary in the
Ethernet MAC and PCS drivers - not present here.

The set grew in size (sorry!) from v1 here:
https://lore.kernel.org/lkml/20250904154402.300032-1-vladimir.oltean@nxp.com/
due to Josua's request for a device tree binding where individual lanes
have their own OF nodes. This seems to be the right moment to make that
change.

It also grew in size from v2 due to Josua's request to avoid unbounded
loops waiting for lane resets/halts/stops to complete:
https://lore.kernel.org/lkml/d0c8bbf8-a0c5-469f-a148-de2235948c0f@solid-run.com/

Detailed change log in individual patches. Thanks to Josua, Rob, Conor,
Krzysztof, Ioana who provided feedback on the previous version, and I
hope it has all been addressed.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org

Ioana Ciornei (2):
  phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
  phy: lynx-28g: add support for 25GBASER

Vladimir Oltean (15):
  phy: lynx-28g: remove LYNX_28G_ prefix from register names
  phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg"
    with "val" and "mask"
  phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
  phy: lynx-28g: convert iowrite32() calls with magic values to macros
  phy: lynx-28g: restructure protocol configuration register accesses
  phy: lynx-28g: make lynx_28g_set_lane_mode() more systematic
  phy: lynx-28g: refactor lane->interface to lane->mode
  phy: lynx-28g: distinguish between 10GBASE-R and USXGMII
  phy: lynx-28g: use "dev" argument more in lynx_28g_probe()
  phy: lynx-28g: improve lynx_28g_probe() sequence
  dt-bindings: phy: lynx-28g: add compatible strings per SerDes and
    instantiation
  phy: lynx-28g: probe on per-SoC and per-instance compatible strings
  phy: lynx-28g: use timeouts when waiting for lane halt and reset
  phy: lynx-28g: truly power the lanes up or down
  phy: lynx-28g: implement phy_exit() operation

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml |  159 +-
 drivers/phy/freescale/phy-fsl-lynx-28g.c      | 1505 +++++++++++++----
 2 files changed, 1366 insertions(+), 298 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
