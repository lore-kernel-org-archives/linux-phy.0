Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C0BE6E811
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 11:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkxZ46Ula7q8w7Tve4yxI0GWVvT3KXufTGV8l9yJDdo=; b=wJ64rpKJbpfQtF
	Q1FRQzsKrz0abKNVkBjxoLs0+O07w6h1jzPUNWfzFRKriKe0sMkyByaPPhe41kxvoY5+Zj968Oz4X
	Lqdbtc8dtm9Bd4GyNutoN1BSwkMoueeDgeuLQq3hgVhXtlQ42T7VzzMyVeGL+dYhqRUQMzzM0vtsV
	9m2IFCRKbfpURbG4FpwfURZybZfsLBjCVIgk6GWChgJJWrAMr+W9ugTy2Qo0Ridd6t0PV9iIBoZju
	uK4G0wsPV3CpPgU5zEE1PNAcFi8zqc1KYIZBYzJjPFk3jrIIrKbs9n0zZrvJ89IPgVCzWc87QhCbY
	x5TelGJTFKfZNDisf/WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEaJ-00000006Xwa-0QbQ;
	Tue, 03 Feb 2026 11:28:43 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEaG-00000006Xw7-2Amv
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 11:28:41 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=JCNg7E519stxgF8+Xz0y9UVtal+GKZ6CudQ3AohiYS/RgYHeS7BYrWOwK+0KY3YWk4IhUz5IWPNExXtO8EpaKCUS7WBNVrUNR5YG0PGYXzLq+kcd9PHTYN0sNiaN5JWnHI5UNEYO2ENJiaIIk2ycvoT80Zn7Xjm0qFBF933xX46NO68bnFGgdkOJjKfk4UmE6otGFVHInjlNGzSNUetv3fWr0cNx2cnuHXXdWe7nD7MilNuwQyGZUmj1VQMCHzSbvpzlUdoJu/sxHAiih63Kal/eeQaiM3lBUy5dpJdNBbvorV9xJxyg/5lurFJWXJh0WAMYrUiV+Psg6HsbSlilmQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hd+srdi2u9uJM1YXy4t3xee02x5aqLeGhmnRhH82r7E=;
 b=d1Tmb/eXX2jcw6D8Z8t0wL6vnBeFVwvcNN7i9LarrS/ZXGXH5aOmFEYd1SayQFaLh6n0w23RCvzXeBwsC+tkHJ38zw0bcS4kKU4/rdhSjXzOB/oR3ntucwyg77Wmd5LHwCSxqqk/I+qU3zT/huT7kn9NAC98CAcQOle2Vv3e7WvOHltO9ZSzzD8atr8rgJxVSP9+et+Eo/Y0GOnqagKuDUfl4Z7LSzCPgT5h1psv69weSWR+KDdsMtUBINT0UsdzGl+bNA06J13jJchWXFlGsmxoijj8pohAIjeKF0vq2Jx8JmWwewxW5/udW8XaD37blXKaQ8nDR6y24rwbQiS2pw==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hd+srdi2u9uJM1YXy4t3xee02x5aqLeGhmnRhH82r7E=;
 b=TyQmVxadQ2BJlqsyCkNLEAq20mugzUubWY0bh5AtA2KBY7lJLQDBNKl9BAgE9LvXIA/6Pw7wGUKj+F0oLaCVyUj2lm5zdWVN0osySvAlF//IHlNExXn3sjee2f6qQI6kDqPP4uzkruAPjrJQLP5NH0q5kuKuThwynubFCBiWhz0=
Received: from DUZP191CA0002.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f9::12)
 by GVXPR04MB10849.eurprd04.prod.outlook.com (2603:10a6:150:21d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 11:28:32 +0000
Received: from DB5PEPF00014B9D.eurprd02.prod.outlook.com
 (2603:10a6:10:4f9:cafe::f5) by DUZP191CA0002.outlook.office365.com
 (2603:10a6:10:4f9::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.12 via Frontend Transport; Tue,
 3 Feb 2026 11:28:30 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB5PEPF00014B9D.mail.protection.outlook.com (10.167.8.164) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.10
 via Frontend Transport; Tue, 3 Feb 2026 11:28:32 +0000
Received: from emails-55162-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-224.eu-west-1.compute.internal [10.20.6.224])
	by mta-outgoing-dlp-834-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 073498008B;
	Tue,  3 Feb 2026 11:28:32 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1770118112; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=Hd+srdi2u9uJM1YXy4t3xee02x5aqLeGhmnRhH82r7E=;
 b=Ixnp9HOZDOse7KBobl4JqArFg+vLpUK1ekRZX7ibh0hbvWar+OBAulOvsPEQzttCq0WbX
 WjYK/+CvOjdGRfBBm+M614SgA/2WPY+Bxj5iaq2aOuACr7P9gEuYcwSrED0bI1vGcUGGkD5
 zrxxXVLMDEijF5C3FvnWFxVdclA6WGE=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1770118112;
 b=gY95THjDwEOU1AuaLmI+396h2DRLIfFNloihhE23pjYQ4XyjgAkB/irAIoopFj+eVq846
 4skZ7Bw/d6yzJzMsM/nlrubfj+Vf+VHJudJEHoQM4gtBquKhGND1SufI4rj9pFa5Rle1FWs
 WNE0w3JwzQHIq1hQ4WbdbNunI3bGbs0=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YzgvqAKJoxBOKiJ15tiqTAushDN4bKKSMdZMzE5pcAkhxwQlnVI+KicNnmiqB3+5y8mKMv63UfDzpYk+BVNLk7gfB37sKvLXwKli8mfjToomRuo+7lGwwNDCBHdA/A8oG8hD4ZQUD6heQ/NdnhgFSIBddGtxftAMNOr4/ouGI6l7DDPTG5bNyuVQsROcQ1uor8DUoWmA6x79/Pn8oAV2bxmv9QwmHOi1Q9edetI67OE/u805v+TuoggiQJ7H4AUiW/AFa0fksstpcstGQ0dMpajmWxdl8Cdu2xfXlcVVlb3vbWT2JdmUu1M8Dcw4bv7xRkcH0Ws5kMqEJJbI9GYRaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hd+srdi2u9uJM1YXy4t3xee02x5aqLeGhmnRhH82r7E=;
 b=bxwRKnryavtKpxIn6AzgqbB077kFL6++L7KJnXI2FoOu8fG/asHypuWUQV1tGC9KwHTH3jB7gtvyow5vxYSFedtyFrVo+6DSrIBDZAdNC4SVZTY/Jl/PqBNGAnrOzmor54bQ/i00ceY4bB3HWouNS9PK5e1ySv+nDsK/DgmPzaPEzSrpEQtTzX+9SotKr1sAeMiqkF/vf36FC9LXU6R2RLqI8Im5053eG0EMi1g98HT5PvX4OCaq0Cz9XJ6KoE7k880HlBdCHvV4NdsHDUgHAIK6N4pjV7pvWOqxp/HEpF2w4oiocAbloUHN7TtFk6UCQKWzVMZrO/44hOkUzbK9ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hd+srdi2u9uJM1YXy4t3xee02x5aqLeGhmnRhH82r7E=;
 b=TyQmVxadQ2BJlqsyCkNLEAq20mugzUubWY0bh5AtA2KBY7lJLQDBNKl9BAgE9LvXIA/6Pw7wGUKj+F0oLaCVyUj2lm5zdWVN0osySvAlF//IHlNExXn3sjee2f6qQI6kDqPP4uzkruAPjrJQLP5NH0q5kuKuThwynubFCBiWhz0=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PAXPR04MB8318.eurprd04.prod.outlook.com (2603:10a6:102:1c0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Tue, 3 Feb
 2026 11:28:22 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9587.010; Tue, 3 Feb 2026
 11:28:22 +0000
From: Josua Mayer <josua@solid-run.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Geert Uytterhoeven
	<geert@linux-m68k.org>
CC: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
	<aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman
	<khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
	<tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R
	<vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Wolfram Sang
	<wsa+renesas@sang-engineering.com>, Yazan Shhady
	<yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, Mikhail
 Anikin <mikhail.anikin@solid-run.com>, "linux-can@vger.kernel.org"
	<linux-can@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-omap@vger.kernel.org"
	<linux-omap@vger.kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH v7 2/7] mux: Add helper functions for getting optional and
 selected mux-state
Thread-Topic: [PATCH v7 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Thread-Index: AQHckGTeQp7u3kOOpk2xNnRQI4AIhbVpUZQAgAAB9ACAATIBAIAGWhSA
Date: Tue, 3 Feb 2026 11:28:21 +0000
Message-ID: <70305238-a9eb-4803-a5ed-5a6cd4d618d2@solid-run.com>
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
 <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com>
 <CAPDyKFrBuL+747QUJJUejtcvjm0V7Lt=vHwjvcMdCt_h4=sFwg@mail.gmail.com>
 <CAMuHMdXgLR9yeLa5JKNdAOtNEirJ8263bmn1zRNAnKnmf8F-Sg@mail.gmail.com>
 <CAPDyKFrvSp6tmhP=2=9kca1d3+b6MezvxJWwMOW=Gv6D8TKrgA@mail.gmail.com>
In-Reply-To: <CAPDyKFrvSp6tmhP=2=9kca1d3+b6MezvxJWwMOW=Gv6D8TKrgA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|PAXPR04MB8318:EE_|DB5PEPF00014B9D:EE_|GVXPR04MB10849:EE_
X-MS-Office365-Filtering-Correlation-Id: 9892cc19-6321-44c8-ff2a-08de63175c95
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|7416014|1800799024|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?a3lxdGQxMmg1ODVXdE5WMUUrQ0Y0NmJUMk5WUm1SSGZXOVZ2S3c1eGswS2JP?=
 =?utf-8?B?TUtaQm9qbzNwM0NtWWVMVStvbVhiSVF6UXB1alpVMzRHN0gxS3BubUwyZGZ3?=
 =?utf-8?B?Y1BaYUQrS3F4MEtmUkJXYXYyZ0Yyb2k2TklkcWE1QTlNd2lNSGFnaXg5eGdF?=
 =?utf-8?B?Qk8zNm90U0cyeGE0cHdjT2VSNUlkaTlpSGxyMjlrZmsrRFNWdlczcDBTSkRl?=
 =?utf-8?B?ZnI4UGtJM2VOdVRDYktGNGxYRHhKcHNnYTEwTDdIRFdlVW9aTHcwb1dxeVlZ?=
 =?utf-8?B?cXdVM3B2NUduc2FCS3N4UEFRNDFBVU9RUTRBV1hvSUVJa3p2Z0tqeE1Jd1cw?=
 =?utf-8?B?YmlvWlhxOEoyU1p1enRUc0JnSjcxNTdKV1Q4bGExUVFpRFVJdmF4M0hkU1FZ?=
 =?utf-8?B?SW11VXYydkFpQ3dwWGRYb2U4R3Z2andiWkZtc3V5bUtzTzF5UTMxeGkvRWo2?=
 =?utf-8?B?bjNFVk9Tai8xZUMvR2dQbHhQRzlBazk0REpvN0xCUkplbUFucTlpSkp6bFdU?=
 =?utf-8?B?Sk1GWTNiRzRJakdET1pwWWxZeTI3L1J1ZVNlc3A1STNXN2grd0NzV21nZGN3?=
 =?utf-8?B?Q2NNRmhJNzRRZFEwK3BOM1NqRG01SGpEbkVEOGM5QWZ3cXkzNElKZHRBb0hI?=
 =?utf-8?B?a1Z0L0g0VkQ0dWhrbkE4Rkx5dTFEUk8zVWhNTFRjeTVHWWNoWVhKR1A4eWxH?=
 =?utf-8?B?VWd4QThiQzlNR1MyenlsUFM2bEtjaGZnSkt5bmpUbDhKYXBFWVBtWXJ6aEQ4?=
 =?utf-8?B?a1BaQ2RxelRaVGFrQnNzUGdKakhvSlhmSG9ZSWhwb0luQ2ZQWUVQV2JxZnNm?=
 =?utf-8?B?WWdkbC8zaEt4RTgwMmZZT3ZJUU9ld1lzbjlIRUpiQ0t6TGlUTWh3WEJJamJn?=
 =?utf-8?B?bjRIMDNCS0g5M3ZPWmxCYW9EQ24wTzdLYzgzVEpLd05ocHNzbWJIY2xZajhZ?=
 =?utf-8?B?QU0rdVdONC81bGgxMFRBVkZ5QTlLUjFhckx4bTlhRWVVN1Nra2VLUHBrTTJL?=
 =?utf-8?B?QVZtejE5cnZsYzFrL2NINmZLN2N5YWZZdXJkU2NPTFJGMm9hMG1DNnVZdkpM?=
 =?utf-8?B?T0JQaFJGRW9UYVd5KzkwdWJpbVFjK3JtVkIxQ3Fxd3lOM1RyWlE2MjVwUGkw?=
 =?utf-8?B?RDdIT05SL1BBODRZbnprc05icEdrcXZ2UkNVRks4VE43NWtBZVpxbi9ZUTdv?=
 =?utf-8?B?bDB6NWtJSnU0QVRGd3NPV2daa08wSittNU45OWhROUFxRVhmQ0hlTVlwRVo2?=
 =?utf-8?B?b0J5Q0dCUkJsZVU4RXBoUDhUYXhPR0pBWEJPalIzZ2dVM0EyNFhCSkh0L1Q3?=
 =?utf-8?B?YzRTNGdGTlg5eXg3RzVINjVMQzRsemQ3SlR0cDhiSjBZaHp0SEM3bFF0TGhp?=
 =?utf-8?B?OGJDWUJSWmJ3QmpBUDI4am03cXkyVUFvVHRnY0t1bUlnVXRnNjFGZElFeHZy?=
 =?utf-8?B?VkgrRDc1c3licXNvRVd4VTFZdnJXNXVSL0hMakR6eG1BZDYvS09UbHJBRis5?=
 =?utf-8?B?T2pTU0pXOEV4aVB4a2F4WDN4NURrUkY0V3JKbXEwcHlwTnNqMU9pblp5YzFJ?=
 =?utf-8?B?aUIvUHhoNXBpeVEvdjM4NVNXNTVMSDZSbkpJcjJId1RPalBaL3I3N1U5TmlO?=
 =?utf-8?B?RnQ5blU2TzZ1UkJBbDg5Q3l2YmVDOEI0RkY1R041SWk3cEFTU25ZSEtnTG94?=
 =?utf-8?B?Y1d3bkpib1NiWFVnY0ZWOEdCR2FsSlpveGVTb2dNaXhIdDErSE1DbXdyWm0v?=
 =?utf-8?B?dnFGNzI4L05JTXM3VjlVczBRQkVXc0dMcHJka0FQTkM3RWdkYWZUNEkwU2ZO?=
 =?utf-8?B?YjdYeE5LN3lDVUdNTWlySWRSdWZBY0xjdUl1UEN0QnhESHVJd0lUOFNPQ2pu?=
 =?utf-8?B?Q0JsVDcyTm16WUlpOU5oaEFhbjE3NGZ1M3VIM1RkWjJ2Mis3MUhzNXZRLytl?=
 =?utf-8?B?L1JSNUQyRmp0ckpwMWtZd1g4SFV4L2JnbGlaanZ2OUZTOXFWVzJuZ0hRT05F?=
 =?utf-8?B?WnhPcmtLSm9XS0hyK29DSXRUOVExdFUwdlI1UUZ3VUZ3cFRjYnh4dmJyUzJB?=
 =?utf-8?B?azFsRXBoV3VKQkkyZGVkZkhiODRRWThud2JPQzhZVDVabEhhaHRWTjdZK0t6?=
 =?utf-8?B?N0o0U3Vod3cwOGhaTXZ6M1BPMmt4ekpUcXF6L0ZGTW1EQ2VLZFIyYlpLcEdK?=
 =?utf-8?Q?BECXCmQLxda2Qd8D6AalpLk=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <F853EFBEA940A24C8833386C0671243C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8318
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 757b4c12d22c4ac6a525931a0105304d:solidrun,office365_emails,sent,inline:39dd7ade418dfae992039918e2bdea7b
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5PEPF00014B9D.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 85dfa24b-f399-4cc2-ce64-08de63175672
X-Microsoft-Antispam: BCL:0;ARA:13230040|35042699022|82310400026|14060799003|7416014|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUUrNlFDRExaVUV6dUNlZmlacElaL09VUi95cHNiVjVjK2FmMlNOZWEwblpC?=
 =?utf-8?B?QVBJdmlCWGtWMlNadmcveU5ROUUweStrQjJMQ0JwNUU3R2hjMTJMZnVsUUZC?=
 =?utf-8?B?L1NQdldYa1NObFBJT1Q4MnczUWZsYVB2Viszckd1bVczWk9DUG1rQndnZW5n?=
 =?utf-8?B?aElBTW02ekc3VG92ZGxtdGlUa0hLYkhDb2NlZEtBVy9aQXJic1pTSWFZMlRI?=
 =?utf-8?B?bzJDZXFQL0RpbGRlUmNORWorYlpsMmZRRThiT2IxRnp4VEo1cVEyNVJGeGtC?=
 =?utf-8?B?TEo4bFZCa2hMSUJEK2NpdllRVDZXV1RmNnRwbzl6VDRzcmhPdE5UeG5ESGNR?=
 =?utf-8?B?MWxUV1dLaXAwRHVPdkoxY1JlZ3FkLzJYd21pdzRXUllwWWRFcSs0ZjM4QXJI?=
 =?utf-8?B?ZzRlYW5obXd6M1NJblk0TXlNVHMvUXUxbjAweEhMUEQ5QjJVcjhqMU5LWHVV?=
 =?utf-8?B?S29pTUs3QU1ieTkzMXBCbGs3Y0pRUER4WmdtalpGSi9YK25vN2VKWnFkNkNB?=
 =?utf-8?B?bEt2UXl5TEhkWkVPVTdKRG5VOGc5R3BCek5BV3dBdlRxVFJSVVJRSzlKSHRT?=
 =?utf-8?B?dlZjQTlGUEFNNlZGREIwZzJtbVdlQm9rV0RmODRiYmVMNG9lNkhaaFo5WWJ0?=
 =?utf-8?B?UUFYbFFDTVNkYkdHdEMwbzZmaUxrdHBnbldZOWlsY1BVNzg5TjVkbW5YaUNM?=
 =?utf-8?B?ek1DZ0UwZUJWUWNDRkM1VW9TN0RUUzFIL1B1bTVvWVc4L2lkOWVDZ2VjNU9Q?=
 =?utf-8?B?NGpaRUpZazNwamVoYkhFOEQ0TDNkeUhQZDV5b0Q4SXNNT1c5bjlIdjlkL05J?=
 =?utf-8?B?aFl6SkRiSDlTSHB1dS82VnNXSzk3aStnQnVML2I2TlZscmhLMW9QWmxPRG8w?=
 =?utf-8?B?bnplUElxTk1YeEJKWjJ1NnR6d3d0RzlYejFVR1BSaDdKWFY5V0lYajU0NE1J?=
 =?utf-8?B?YU8vWFk5K21FUDNORmQ3aXBvOXpXcUYzZnFPcS9Zb3IzSzRXOFFmb2N6elVG?=
 =?utf-8?B?VDF1RmpmdGM0ekNDb2YxNVY0R0RjNk1FbG56S2ZjQ1RBb3ZmcDVpMFpUV2pL?=
 =?utf-8?B?MHZpTjRDcDliNDVUK0xvbzFoQjd6NkNDMDIvUFMyL1dpTHhrUllPTUlscE8z?=
 =?utf-8?B?eTBjU3NlTkN2ZHdMaG5vL1BCMTJ5K3YwdGIydURtZEMwU3V3MmJ3cDY1SWxJ?=
 =?utf-8?B?KzZIRlRrQi9nUkdoRVpkWnpkQytZWVhHU0dtczI5TnhSb3lFVDV3ZklGaCtN?=
 =?utf-8?B?OWVmcUlBTmdOcTk4S1ZQU2JnL3ZqNlFYbVZ6Y2JDZkdRUGdJeGpLSFIxQkRF?=
 =?utf-8?B?dk5TY2JpZy91QnZ4ZWRITHFFMzdzaTVkdjk3ZU16Sy91N2NXNnpaKy9uVzdB?=
 =?utf-8?B?TkQ4b3UzNFFsSVAxY1ltTVNreklNSTNHMlN3OWlWb3kwc045UUNFUEhxZmhJ?=
 =?utf-8?B?bmZrQmxzSVhHa0RHNjVyUTZSK3NYKzc0RGE5Q1pvT2dma0dqTEI1ZUZpWnpx?=
 =?utf-8?B?NjBhc2NRSVh2eE50RklsOExIWFZiNzkxQzU2OU4weXN5cGNkTGZCeEtaZEx2?=
 =?utf-8?B?eFE4b3QySkxwVmJvcHlhcUw3akdseTJ1U0ZJT2xxRWU1RHFBcjVuWFVJcDJL?=
 =?utf-8?B?a2sxWE5pYWtmbWYvYyswamZxcnBYbUJtMUlwMkhlbkRKd3Q0Ui9Ram9KY215?=
 =?utf-8?B?amJ1YmM3WXVWRFNMeEZoRm1OODAveFJ0aUg1RjAvT3NJKzQ3bDZ2eFBkbThl?=
 =?utf-8?B?RDk2YjVmeFo5bG1OcXo5MzhEMnQ1TG9POTdGbWNWdC9zNXgxUVAwbTFiZ3Rz?=
 =?utf-8?B?NkhVMVNneXJJRDlSYjZMaW04T2V2WWRTVlJDc0licnMwTUYraWNld1JGS0Vs?=
 =?utf-8?B?bFdwNGJYM2F6TlJJbmFwcEUwdVd2QzVScG9GKzlWM0dsR0JsbGd1TlY0NDlj?=
 =?utf-8?B?a00xYzFXQVYweThFNXIwSmNsOU9rMEp3dEc5bEExTDlML1NYdVpQTFJ6akpX?=
 =?utf-8?B?ZTVtSGZHclN4eUl0bkVEdDlsWVBlU09Wby9TVzZDT3ErMUxpMnFTeUx4Sm0x?=
 =?utf-8?B?b3Vab2VPbVVtdWdKVElxY0ZvdDdTa1JBQkRPRnBkcHc0WG9lN2IzZWtXalB0?=
 =?utf-8?B?ZURyRUFYWnhLdXU3QkJlM0xpaDVIZjZCTnBEdWdOUDZGS29JaEhUbjlaenJO?=
 =?utf-8?B?TjZGT3paRzZ0OU5KODQyT0wxUkxLclRuYmtub3phZDAwakVBSjdvOTd2Tzhr?=
 =?utf-8?B?M0tsc3ZBOTVpR29rbGtKckdZYzdnPT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(35042699022)(82310400026)(14060799003)(7416014)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: gPS2dnveII8OWXfTL3vjJjBcAowIsZ7ALu1QtzditQSwcgOBIDRfCtYb9lKSP+FisBGRCY3Ve2VkMtmyE+4uafz5D8TxbafXcOBR9yKd20SsP+H2PEEIObso/nAX0A6rFAuhqA2G2pjkaW4z1MBHAGHJWEn8onprmPp7grvRaUQjcyG+QIebSBM2OiAJvjGQ1ovdt6nO5o1O+QOEgIxghl6jPTmrCLbPei8WabKsL+JDbGUT/rBnsX6uLAHmlkH7iTLnlKpMNNA96c7M18vz5VcrPoMBPv7mL2zBKPvDDeyuj9gu+68CwaWGfrpIark9R0jB3KmCWBljgHCkpvuRL97OkhfKXfeTGrYKywrw4bHwvuq0PPIQiibhVXbpEvSYjyJW0uRqy6KmkpVscQJ7HJmpo3maC1RNuBM0EwJZNpeZfIk8Ds+oSySQR5xu/yIo
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 11:28:32.1500
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9892cc19-6321-44c8-ff2a-08de63175c95
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B9D.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10849
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_032840_570531_34F44B12 
X-CRM114-Status: UNSURE (   8.87  )
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

On 30/01/2026 12:28, Ulf Hansson wrote:
> On Thu, 29 Jan 2026 at 18:46, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> On Thu, 29 Jan 2026 at 17:06, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>>> On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
>>>> In-tree phy-can-transceiver driver has already implemented a local
>>>> version of devm_mux_state_get_optional.
>>>>
>>>> The omap-i2c driver gets and selects an optional mux in its probe
>>>> function without using any helper.
>>>>
>>>> Add new helper functions covering both aforementioned use-cases:
>>>>
>>>> - mux_control_get_optional:
>>>>    Get a mux-control if specified in dt, return NULL otherwise.
>>>> - devm_mux_state_get_optional:
>>>>    Get a mux-state if specified in dt, return NULL otherwise.
>>>> - devm_mux_state_get_selected:
>>>>    Get and select a mux-state specified in dt, return error otherwise.
>>>> - devm_mux_state_get_optional_selected:
>>>>    Get and select a mux-state if specified in dt, return error or NULL.
>>>>
>>>> Existing mux_get helper function is changed to take an extra argument
>>>> indicating whether the mux is optional.
>>>> In this case no error is printed, and NULL returned in case of ENOENT.
>>>>
>>>> Calling code is adapted to handle NULL return case, and to pass optional
>>>> argument as required.
>>>>
>>>> To support automatic deselect for _selected helper, a new structure is
>>>> created storing an exit pointer similar to clock core which is called on
>>>> release.
>>>>
>>>> To facilitate code sharing between optional/mandatory/selected helpers,
>>>> a new internal helper function is added to handle quiet (optional) and
>>>> verbose (mandatory) errors, as well as storing the correct callback for
>>>> devm release: __devm_mux_state_get
>>>>
>>>> Due to this structure devm_mux_state_get_*_selected can no longer print
>>>> a useful error message when select fails. Instead callers should print
>>>> errors where needed.
>>>>
>>>> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
>>>> property presence check") noted that "mux_get() always prints an error
>>>> message in case of an error, including when the property is not present,
>>>> confusing the user."
>>>>
>>>> The first error message covers the case that a mux name is not matched
>>>> in dt. The second error message is based on of_parse_phandle_with_args
>>>> return value.
>>>>
>>>> In optional case no error is printed and NULL is returned.
>>>> This ensures that the new helper functions will not confuse the user
>>>> either.
>>>>
>>>> With the addition of optional helper functions it became clear that
>>>> drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
>>>> Add stubs for all symbols exported by mux core.
>>>>
>>>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>>>> ---
>>>>   drivers/mux/core.c           | 178 ++++++++++++++++++++++++++++++++++++-------
>>>>   include/linux/mux/consumer.h | 108 +++++++++++++++++++++++++-
>>>>   2 files changed, 253 insertions(+), 33 deletions(-)
>>>>
>>>> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
>>>> index a3840fe0995f..b01ec126caaf 100644
>>>> --- a/drivers/mux/core.c
>>>> +++ b/drivers/mux/core.c
>>> [...]
>>>
>>>>   static void devm_mux_state_release(struct device *dev, void *res)
>>>>   {
>>>> -       struct mux_state *mstate = *(struct mux_state **)res;
>>>> +       struct devm_mux_state_state *devm_state = res;
>>>>
>>>> -       mux_state_put(mstate);
>>>> +       if (devm_state->exit)
>>>> +               devm_state->exit(devm_state->mstate);
>>>> +
>>>> +       mux_state_put(devm_state->mstate);
>>>>   }
>>>>
>>>>   /**
>>>> - * devm_mux_state_get() - Get the mux-state for a device, with resource
>>>> - *                       management.
>>>> - * @dev: The device that needs a mux-control.
>>>> - * @mux_name: The name identifying the mux-control.
>>>> + * __devm_mux_state_get() - Get the optional mux-state for a device,
>>>> + *                         with resource management.
>>>> + * @dev: The device that needs a mux-state.
>>>> + * @mux_name: The name identifying the mux-state.
>>>> + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
>>>> + * @init: Optional function pointer for mux-state object initialisation.
>>>> + * @exit: Optional function pointer for mux-state object cleanup on release.
>>>>    *
>>>>    * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
>>>>    */
>>>> -struct mux_state *devm_mux_state_get(struct device *dev,
>>>> -                                    const char *mux_name)
>>>> +static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
>>>> +                                             bool optional,
>>>> +                                             int (*init)(struct mux_state *mstate),
>>>> +                                             int (*exit)(struct mux_state *mstate))
>>>>   {
>>>> -       struct mux_state **ptr, *mstate;
>>>> +       struct devm_mux_state_state *devm_state;
>>>> +       struct mux_state *mstate;
>>>> +       int ret;
>>>>
>>>> -       ptr = devres_alloc(devm_mux_state_release, sizeof(*ptr), GFP_KERNEL);
>>>> -       if (!ptr)
>>>> +       devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
>>>> +       if (!devm_state)
>>>>                  return ERR_PTR(-ENOMEM);
>>>>
>>>> -       mstate = mux_state_get(dev, mux_name);
>>>> -       if (IS_ERR(mstate)) {
>>>> -               devres_free(ptr);
>>>> -               return mstate;
>>>> +       mstate = mux_state_get(dev, mux_name, optional);
>>>> +       if (IS_ERR_OR_NULL(mstate)) {
>>>> +               ret = PTR_ERR(mstate);
>>> Should this be PTR_ERR_OR_ZERO?
>> "mux_state_get() never returns NULL"
>> https://lore.kernel.org/202601221036.J0kR78Uw-lkp@intel.com
> By looking at the code in mux_state_get() and mux_get() that $subject
> patch changes, it intends to add a "bool optional" as in-parameter. If
> it's set, it looks like the intent is to allow returning NULL, which
> makes sense to me.
The intent behind "optional" parameter was to conditionally
silence certain error paths that would eventually lead to
at least the exported devm_* functions to return NULL.

I'll review my logic ...

>
> Anyway, there seems to be some additional smatch warnings to fix
> before this is ready to go.
>
> [...]
>
> Kind regards
> Uffe
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
