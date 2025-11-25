Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDCED0E6C4
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p88HG505N7UOYi6PRIUMOz1t9ZcvRCOvpSU3qjX9Eas=; b=cyppiaVEf9igSK
	cbbwLmQAszLbwXpRhniK4dU+SeztsXBXVszCnSsoP/sEHGQd9WsLZ4Pw2c/1FHZHutUYpBCvmiJC0
	i2i+bZOSybXrmXDT8bAAWS3+gzoNiIrV/yM6k+GK89MeA1s1/F5gBXMbIFo+/Mr4+njrlOKiXoTB1
	OH87qBT0REHcqVh7ENEPBlnjcJZ0pvE4IyTs+IOYrxInBcmhfdNhknTnPSwfrKZZNdpBlbYD6ogEY
	r/eGB5AyPGtb0uc0xeyUPJgtdKMbBUVfFFsyQvKsFcC4hXyxC/0kaoCJJiUnlHQEB563/ErggKQBy
	oTN2IOz2alqbBWdN5Klg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYL-0000000DF6r-3W3Z;
	Tue, 25 Nov 2025 11:49:49 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYI-0000000DF1D-12pc
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yizrKCKlVSZig7sswVjAG8Op78GT2DmRy7ln5DYzGuHsHKJHuKpdcr4Q6cBO4F+9pPhB/CFr6jsTp/lVrAP489lw/EmlnjOZMCh1NTwQcD3j2sDPE/cUb05SGhkupx3WSh0H3J5Tg9j1YHHLyOpr6TQatXeWKZpSQqEh6sK/1FZsJbgi4QjzrYvl8oeMsZxfKK4zs96CUZZWaC6s0Ic6rxPcfUNnlArDyE1w1vkxcBhfQ+O6HEST5Uu4QdclSCOSklzfe/KvLdgN3NE6UQ7/4qFoiAiiNIDIzfJpLPBHa+dVS7ZRT7zlH5nu447o687gGsWi3nk7UgKDJZDU0hUI/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pkJ52oVMiDxPJ1u8/K9tg67CMxQz5wGncTreAYcNyNc=;
 b=mtk87xDglowU1Vm2uMs5j6dIIGDbb/j0/dWHLZkDQwK1tmFG0QB9fiBTWmIqNaN6ZO/ryCcM4xKh030ayMBYvMDUqyWuywtamV6q6DNIgn4Rhq3LB0rg04EFV1S4Ll4LDt6DGGjB19MgiyVAr8jY8OfGNeR/rWHegtapZZBMIc44k+rB59yQC1xiB17FRI1lPQTduBi8efx8Wb7OmI8FM/H+nIwLY9aQsMK/HaNOO5sNFAkStrP5bpcXNXwrUTCWHOPIZ6HzQSxPu8TCE2rR0b23cebRBpEl0Xi0X0fCZu0vfZApmV5qZL5Uuq1Sl9R1wr4bzCZz+zPRgNPmYwGIfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pkJ52oVMiDxPJ1u8/K9tg67CMxQz5wGncTreAYcNyNc=;
 b=WJAniFIrxOsqXqMWDDjYsWwCGFXn4VgFrI73mfx1D1PTdVRCDVV6bGf8uzJVhwsyALr3AvN81eUDkQ46q8JpwJJxeTwNbEF/ruFQ9XKsIdAtbFuJA4frA/ibLc8WpIzgxcrCX7hQHqTnDOm4RVpDRpk5Lmk8PwLUzNMK69ErlBqRmA7OnOKdZL3f3f0HGOQ2WHhdBgWEppyt5RdkhJpjSuUOeZ0Xt0/zO0CepB6fVUSZNmB2L/awGRnye36ChvwJgXnQVFSLn5bpn5oDFyLSN9QIqgLB6AzsdlCW00EfbBDuCIPFPUy/2QOi1qWxH+IB9vcp2499orwYz7oyGI89kA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:39 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:39 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v5 phy 03/15] phy: lynx-28g: support individual lanes as OF PHY providers
Date: Tue, 25 Nov 2025 13:48:35 +0200
Message-Id: <20251125114847.804961-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: 6089a776-a76b-428d-d297-08de2c18b6de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yAeQNd09UPePIYRWLFHtZHos/FFNlWjhmN7IAPGGutWKGDGNubQCBvUfnTdr?=
 =?us-ascii?Q?f6YQvvmf/Xd8hvEE+X7oMJcB/7Jjc95HBBrpfKJy8AnGJyTTXIepBDDWDKuz?=
 =?us-ascii?Q?PnIgYBe+ehAj5KSX9q05VJIKhP9+NGeUru5T7rIWSzHUygrTpX4ft6CPbhw/?=
 =?us-ascii?Q?GZAmBH/MbhJiTnJI7wB+TRjBBjmmX+AmY1//iMyOzCBk9rfGiTTu/Gkj1nIi?=
 =?us-ascii?Q?0Su7uL2iCVEqUB6K1HFnRPS0x+vVrsdmZzgaH/0vp/jsezCPojV9AaiMSr8G?=
 =?us-ascii?Q?bMm9HrrHk6uCy6XHDDBNi5QOLCGCMORmyUQeRMsPe6v9nUvQn5PR3JhmoJKQ?=
 =?us-ascii?Q?aXngG+RDpT/LGGpWjt0rpecH7/I5VYUORpe2KGxNHDAq1NJv2l9I3w+8hBp8?=
 =?us-ascii?Q?u5lndHVtAXnD+8XjGDlEhyWQCKdmywWXh8N5T+N4GdzNwiAwrjfBsvTlpe10?=
 =?us-ascii?Q?KX1c5aFpPoYe5WUQAsuv8veMaLEMPgt6Qz6gGNEuV/5PT55os8BPXf4cIbMd?=
 =?us-ascii?Q?etITp+yTZO08PLilwpD1dqzTlulzeK7uEiFWjyFaaELf9GYOppxLvaNltIVf?=
 =?us-ascii?Q?yoI9PfESweBKgs32opTFo2+/MVOnxPQRgXo6aKALHl/nyu+redfbl1C/uZZ8?=
 =?us-ascii?Q?AGPe0wMJ+oGwyVAaAUJGXnHMTn8/K/QY98KQ/bHf4o4rHcuZkoY/n2ngYC1Z?=
 =?us-ascii?Q?RgJyoV7iBjJhAaQTTD6Y/hiha8EGjfpYfyS1vvevQuJ6dLK9lyoTEZrQUPTY?=
 =?us-ascii?Q?utV7q+yJgAECUgIRx4svowm/IBJ/AgBjd2PupAJ+qrCoBAILDcwlTB/POhjz?=
 =?us-ascii?Q?tI99I4yDc5ylHLZs03CTVGf8kE9q2SaBY+qa+PDJ5UtljegTrfcWhTpXmf5c?=
 =?us-ascii?Q?WBSl6hsAISDpRAbpIky6si5p7puUO/cE48nNlyypRimfZDZxpnxvz2NR1Kc2?=
 =?us-ascii?Q?z5+BE/8P8sJ0i/8mahZ45xSNogXv3ZJoBRiMcYL+29IplXFip8UffjlgtADK?=
 =?us-ascii?Q?SFoJOmh8qOkeSJIyB+YT5GyNdGkd1iTbSmgm/pRMlb+A9JRPkBq8E3ZmZ8ad?=
 =?us-ascii?Q?/58ufcIn1sObfedmvzBVJNzmM2uMmFMmCYwh8lI2UhT9yEmr12SfWTDgjOnE?=
 =?us-ascii?Q?C8fOlrez9B1+wikHQFsG/IaXqtompP0PzLJSnqttvle3GTqyN+SOC8/fq5k/?=
 =?us-ascii?Q?wwWySoQMuDzkrDnufJce5zgEAj/BzvaVvHtPii/qglIU0m8sQc9pgzlP12GP?=
 =?us-ascii?Q?ENq3TMo2ugIZCPyGpy5KwdC9bRpwyGZqEsq6GCMNiKf911QqbzBt671thhRy?=
 =?us-ascii?Q?5IYs35vX1PaXeVO5iMynnmtu1AETiu0hHDPGuMHoj2UY/QzV/iMsNRGlzPFx?=
 =?us-ascii?Q?jjZ/EqR2wEMg+jDV/obxAtv7wcf+Bwk0Fa8ChwlpKDOPbDWshhQjaI0hzN8K?=
 =?us-ascii?Q?PEqQEtpxC80tW1UyiWcBiZdzywtuGv/j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0qoE3ERyDM2lm0NDYFVyCyGVPloWejLMyLhL20qL8jCQFBDavMid9Cmk3Rlv?=
 =?us-ascii?Q?qms9jwu+rx5/cQJ1OPLvwqLUmWBXuhvETx4MsdTGJl4lu7DW1DfT1Zlk1owF?=
 =?us-ascii?Q?RwurDuYD5747Q7p07psWaAYgfItjpIcvOxrpXCySKEwg+rOmetrliUkrOd/m?=
 =?us-ascii?Q?0QOoQJj6xyfAnJkJrHZjZATAOEbqb1T68j8tq/Gxld9JdNRBQu7sW7CSPjD0?=
 =?us-ascii?Q?IlF3Sry0IlkSnaYkqwO9k6VnncQZpjPGBV+/sTDJaNj1YzHRX6SBbOXtFoNS?=
 =?us-ascii?Q?cVtcm+n1YSzFG/z6oUmL/x3hYr+zAuvhvmUnnHL3AvriDHjrL0oiq9VOfI+Q?=
 =?us-ascii?Q?/su6tgFIBofS45CoHY8sYrDQg4ueghZrwDHzx0nnu3A0cCBbjVNUIho999Yy?=
 =?us-ascii?Q?DuAJfgre6N3pZOtcohd6FQFW57xTF7myjXx1NRgmtcCLeq6tWCdZclAA3Z/T?=
 =?us-ascii?Q?gInEWgPQOU9ky6M1WawVQOQjDILes/2NptLHJvwxsnsSfepQek13bATAke70?=
 =?us-ascii?Q?uToBaweVuoVyTelldcMCArWJ3GoRw3BU9vmUxqUR4n58kMiuRXONlKNNi9J0?=
 =?us-ascii?Q?iZHnrIVSCaiS210rrtHh1lm7dga0NTOi5vKPfseCapShE9Nr5oHBt2oWPZsz?=
 =?us-ascii?Q?TYLs38dv9j9Vw4VPkSU0Bvl8augANA79ZavIcCa5lZiyRbyTHvGe54lp2LIJ?=
 =?us-ascii?Q?tq0xzMY914yrxcCjUh/D9r2y0S4YRBSLKfm7NDoqija4XSgIMAG/ulFpXrP0?=
 =?us-ascii?Q?+pEa74pUZMPh/IqESIKV9XZ/jGckULdpcA5SQi2VoweuwRjcPrKtx1dRdJey?=
 =?us-ascii?Q?trXxUiCtGyNIfDINtRf2wpFBrZK7rZj71RSD2woMpEybrzjWruT4Lm1p6e+T?=
 =?us-ascii?Q?peTG/R3eJPYst4CsrHnGA9ykRMOfuqSY3ck56REKiKae7v9Kh0RNh/8sv4lf?=
 =?us-ascii?Q?4bBUT//wIKtRApKhERVrBJ4vIyg0R6lOooZJlZBy+Wn6P1Kl+2f0WYqhAOe1?=
 =?us-ascii?Q?5HGw+34cIPJgfXQRvMO3/BMw+0LbE4YsySoUszy7gwRf3vnzERiC0/xOrBru?=
 =?us-ascii?Q?SLHAzEdG3FVujvH2VTT+QBqyidKJVuG47/PiIHWfsqAnIZ7N6DxfgSGZMl34?=
 =?us-ascii?Q?fuTz+2mBDVqVPf1wZwOMQ3a6Hudc+dzC9Es78NJiUdPuGNJ1+vHiCTIXEoM0?=
 =?us-ascii?Q?GKKF/cBNb2KvQOPmryOsGC5fcfkM9SR2P4BIdGwSIhX4GgHj69ESy0VSyKUs?=
 =?us-ascii?Q?kUP0ZW/PaRyz58+lvhgOw3MP+BKE7C+6ttGs/AEt6Ww1XKyU6i3TWXSM2Z2G?=
 =?us-ascii?Q?KznaDIPfWxlebag+trUgCIqvSqHULeXrK52RUAZyMu4tkL3RnBd4lfnA/SwL?=
 =?us-ascii?Q?gUiOghbPQcQvNS0H5Iiebw+roGt8lu7RACHcws3dmWzD16WxJ+wQghPP+mZ6?=
 =?us-ascii?Q?ykpv+vCQQy7y7vudpY/8Y/uHGVyuzuaOJNKBR7UO4r/FttgW1jymlfwWLiMh?=
 =?us-ascii?Q?O9pSUzobvEpVbypgXnF5SkTD+IOaBPnEU0vKzaFDk/jBCGoqmQGFYDL8RjWq?=
 =?us-ascii?Q?gCg52zKd2oS89w+SS9b/Eh4jv0Ql37Bw8UeaFdFJhue8d1I0kKfuwlkxcQwF?=
 =?us-ascii?Q?rz2HX+M+Vz6aKK1sTmkHkLo=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6089a776-a76b-428d-d297-08de2c18b6de
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:39.3638
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hi0I1FCQD7iqdR2KGsmwpJZ/slnA1BR2iekt27wLKOJ0Ssc5dinuKsSn9pO86F99/voEjuhxBZnSyAHvDuzGlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034946_289295_3B5F35F1 
X-CRM114-Status: GOOD (  26.71  )
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

Currently, the bindings of this multi-lane SerDes are such that
consumers specify the lane index in the PHY cell, and the lane itself is
not described in the device tree.

It is desirable to describe individual Lynx 28G SerDes lanes in the
device tree, in order to be able to customize electrical properties such
as those in Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
(or others).

If each lane may have an OF node, it appears natural for consumers to
have their "phys" phandle point to that OF node.

The problem is that transitioning between one format and another is a
breaking change. The bindings of the 28G Lynx SerDes can themselves be
extended in a backward-compatible way, but the consumers cannot be
modified without breaking them.

Namely, if we have:

&mac {
	phys = <&serdes1 0>;
};

we cannot update the device tree to:

&mac {
	phys = <&serdes1_lane_0>;
};

because old kernels cannot resolve this phandle to a valid PHY.

The proposal here is to keep tolerating existing device trees, which are
not supposed to be changed, but modify lynx_28g_xlate() to also resolve
the new format with #phy-cells = <0> in the lanes.

This way we support 3 modes:
- Legacy device trees, no OF nodes for lanes
- New device trees, OF nodes for lanes and "phys" phandle points towards
  them
- Hybrid device trees, OF nodes for lanes (to describe electrical
  parameters), but "phys" phandle points towards the SerDes top-level
  provider

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org

v4->v5: remove Cc: stable; will handle it myself
v3->v4:
- patch is new, broken out from previous "[PATCH v3 phy 13/17] phy:
  lynx-28g: probe on per-SoC and per-instance compatible strings" to
  deal only with lane OF nodes, in a backportable way
- contains a new idea to support phandles either to the SerDes or to
  lane nodes, via a single xlate function that redirects to
  of_phy_simple_xlate() if the phandle is to the lane, or is implemented
  as before if the phandle is to the SerDes.
- Compared to v3 where we decided based on the compatible string whether
  to use lynx_28g_xlate() which expects the SerDes as PHY provider, or
  of_phy_simple_xlate() which expects the lanes as PHY provider, here we
  completely decouple those two concepts and patch lynx_28g_xlate() to
  support both cases.

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 49 +++++++++++++++++++++---
 1 file changed, 44 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 901240bbcade..61a992ff274f 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -571,7 +571,14 @@ static struct phy *lynx_28g_xlate(struct device *dev,
 				  const struct of_phandle_args *args)
 {
 	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-	int idx = args->args[0];
+	int idx;
+
+	if (args->args_count == 0)
+		return of_phy_simple_xlate(dev, args);
+	else if (args->args_count != 1)
+		return ERR_PTR(-ENODEV);
+
+	idx = args->args[0];
 
 	if (WARN_ON(idx >= LYNX_28G_NUM_LANE))
 		return ERR_PTR(-EINVAL);
@@ -605,6 +612,7 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct phy_provider *provider;
 	struct lynx_28g_priv *priv;
+	struct device_node *dn;
 	int err;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
@@ -618,10 +626,41 @@ static int lynx_28g_probe(struct platform_device *pdev)
 
 	lynx_28g_pll_read_configuration(priv);
 
-	for (int i = 0; i < LYNX_28G_NUM_LANE; i++) {
-		err = lynx_28g_probe_lane(priv, i, NULL);
-		if (err)
-			return err;
+	dn = dev_of_node(dev);
+	if (of_get_child_count(dn)) {
+		struct device_node *child;
+
+		for_each_available_child_of_node(dn, child) {
+			u32 reg;
+
+			/* PHY subnode name must be 'phy'. */
+			if (!(of_node_name_eq(child, "phy")))
+				continue;
+
+			if (of_property_read_u32(child, "reg", &reg)) {
+				dev_err(dev, "No \"reg\" property for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			if (reg >= LYNX_28G_NUM_LANE) {
+				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			err = lynx_28g_probe_lane(priv, reg, child);
+			if (err) {
+				of_node_put(child);
+				return err;
+			}
+		}
+	} else {
+		for (int i = 0; i < LYNX_28G_NUM_LANE; i++) {
+			err = lynx_28g_probe_lane(priv, i, NULL);
+			if (err)
+				return err;
+		}
 	}
 
 	dev_set_drvdata(dev, priv);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
