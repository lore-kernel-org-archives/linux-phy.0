Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFA1D2502F
	for <linux-phy@archiver.kernel.org>; Sun, 11 Jan 2026 09:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lkhKqiWzOmZ0CxnEuyCcbkpGObWDE5xuANJIJB0lRrk=; b=egEOAkjF1xuIM2
	bs/vei7hzhT6jBYKF+6t8OB41PXEWvOx/SttmirGSLSpnUHsMxKtEQ7r+WJ8lGTFBBgFEJQIYwtkE
	gRyQLk2cTsiWTZ9BmRhTgqX1jVQ+FbkQfkQyHSH2BQqklQAn7bXb1rjN18Prxcpe1qC+5haoKH0+x
	zXVdfp9nJqVB0KQ8h9asEGZrkZaHCfRsiTrMPmHlkdgFm8VvuhCSzjyPaYdOLh4svJRVWu8Iu2HAi
	Cre0AdVT91Ff5lPJvg2OGhDtoo1N/8qZE/VQqaN3NAgYOfS5tvgYI9DjN2R8PbBbrEUY7YFeF15bs
	kwOMZ9KcQRZLPpMv7+xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1verwa-000000044fd-1Dqg;
	Sun, 11 Jan 2026 09:41:08 +0000
Received: from mail-norwayeastazon11013017.outbound.protection.outlook.com ([40.107.159.17] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1verwW-000000044dl-0XpS;
	Sun, 11 Jan 2026 09:41:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p16TNwAwyZFxhPwL3G/cNhuNUH+NSIK8mvmpfPnhwax1081/ZIFgcpsXRveGC/JC8nevhPD3py1tf1NvBVWPoGhzSl4cTYsLvYyQtTq6LR7j8zCrqmlJwmxlD27Kcib7TRZHuCxd6BBmfehYkBOIQRdNRc1ulNxc83msuzPJYWAEIP8M5ckZSjBxKcfgBSsNNDl7ZzRDkVlur4j2C1EwJQH/XFnTI8GxrfcPRCsVx+xJFHeLJZUD4kgTMuEjPfN67HpVu2FnnnrQzw0yWo32dUw0NXAf4I0qvMtD8OjZNHwhjCG4+Jop32oykmAx/VHgyC+1Vvj68nupLgJ4WwcvhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4o9gSkgOunKMDJFb9r3wwQ2CvKMxPMmnff10MVG+mA=;
 b=TLPUsaOQxigSbvNM5a1rsVF6uLboNC/f/NlClkha0xQowjEb0mMMUgLsxi6x8/WTXxBsM22qWH1nuXDayDfKia2UC+ec+it45PpY4Bw2GWGwuAczN+TDVvZSOSmJYCUy+iWwmncKpmsfFnXsAf05YArXHbXIzeNk8sLKJG69dvy1J66HZ1j5+/BoD/Lre8v45OlFcxqhz6YRZTaXbKiEyBSOTndDWVA8b/+DHUNF9Bw43qhUG4j26gQEuC/CKkg3Fmcx+Lmsk5tk/i/vZDYAS89XZibLb1GBnq1XY7vyd3fvMdqQ2CdGu/90RD1Us6jXBIf7BA9f3n9q1DX/cCxuog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+4o9gSkgOunKMDJFb9r3wwQ2CvKMxPMmnff10MVG+mA=;
 b=O3C8fi2cIxd4waZ9v8bgBF2cB7yUedg0i++tunghp5Gtlk2grlTFOdEKVYKasNhGeXxcUtvK98pzg28frLgYYcEcA9fJfbBt0yXFijMgRPWxAcdOa2Hg02PpNAoKKSJrRRVHFL07QQDOCf7aTh1Y+M4B6gGqhuh043+oOrTwYLM6C/86CuQ//BZGDm8mZkww0QpN2IjuXSRRPByhpJF23X6qafJhdBwASzfj/7tjwXpd1VSj/p/hSVovGMMzdnJlywBWLd2bVp8MCmoakD50wcTRDAF6Fii8fAlKNwCBb/m1FG37RY1MBHX7uCCsApHAqUT5EmRcDIRYjy+vAwxNwA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AS8PR04MB7592.eurprd04.prod.outlook.com (2603:10a6:20b:23f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.6; Sun, 11 Jan
 2026 09:40:57 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9499.005; Sun, 11 Jan 2026
 09:40:57 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Daniel Golle <daniel@makrotopia.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	=?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eric Woudstra <ericwouds@gmail.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
Subject: [PATCH v3 net-next 00/10] PHY polarity inversion via generic device tree properties
Date: Sun, 11 Jan 2026 11:39:29 +0200
Message-ID: <20260111093940.975359-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
X-ClientProxiedBy: VI1P189CA0004.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::17) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AS8PR04MB7592:EE_
X-MS-Office365-Filtering-Correlation-Id: 1da201d9-9f15-40e0-e43f-08de50f585ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|19092799006|7416014|52116014|1800799024|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1dQdm1aNnFXUGcrUlg5Qmx3anQ3OWdpM1pYRkppSlRmWTBxRW1pdEp2RVRC?=
 =?utf-8?B?d0JxajRySng0dHMzL2lVMmZOeDQzaFFLSHQyWmpkL3F5Q1JMR0hsU2hvZkp0?=
 =?utf-8?B?bkZWUjRSL205RjRlejlHRXp3cmpwekJPVUEwcERmd1lPbUZuemdIejZBa1dw?=
 =?utf-8?B?WGJLL3FlSkxoMzY1cmFJb25LQUdKOG1acFh1Mm5aWWRIV1FhVkk2cGZVQmpQ?=
 =?utf-8?B?ZVRoYUF1blE1Z3I3NW8rV1EvK2h5YTF1SHpmbmNOYmxiRldMN0VrSTBGeUVJ?=
 =?utf-8?B?V2RhR2dxcVBzMEZWMXpFRDR5WlpIR1VBVStQUytzZkpEVXdLaDJsSXZSQWhy?=
 =?utf-8?B?cFJSb0d0cHp2RUQzSEwxdkYvait5aGNTMDE2STFsR1lES2I0S1IrbG1PUnlD?=
 =?utf-8?B?QW9sd28wSG9ybUxPbFo5Vm5VbGdYczBoM2t2bUdpZk8wZGF3bEpWbitxbDd2?=
 =?utf-8?B?VWpKbCt5TWE1TGUyUkplOVdCVmpyWHpUbi9rdDRHM09MZUMwcG1OWGUxNGlI?=
 =?utf-8?B?RGwyQ1g0L3UyRTRXUmk5Zmp4T3ZwczRFdGhLRTNtanV4N2QxOS9WajlSOEtQ?=
 =?utf-8?B?QjNpK3g4TUFpYlgwSlJ0NkFhQmI0STh1Y0QydnlXZlk1dm9TTjhBQmkvMUIw?=
 =?utf-8?B?REN5QlBUblhNNXVlYjFRTEpkcG1YMzhkZ0RvMkZSOTVyOTcxZHZhVHF2WGI2?=
 =?utf-8?B?ZVdWU3VDNzU4V2tTRlRmY2tUSitKLy9icjdBemw3Z0EwSk9BQVlBemRpWXFE?=
 =?utf-8?B?Y2QrdnhPekZVUHNLc0h1dzBHc0tPcmhRMmJvSFpydzQ2eEFyZW1ZVTUvY2Vk?=
 =?utf-8?B?UHJoTTBRMWNUNUhEWHBSYmlvaEpFSHhDRm01UlRsOTFaK1lNU0ZUTEhRSzYx?=
 =?utf-8?B?OHBnMTZ3enNlNXlTSmVMOTUxNUl3WFE5M3BsQW1acjFZcng1Qnh2RFRDMlpM?=
 =?utf-8?B?aVJ4MkZZclFiYklGc0MrWEErd0ZudjVHOGR2UDZ3amVJTHI2ZWFnZ3FtM2c1?=
 =?utf-8?B?WUlQUnRwb2g4aU5QdDNXcDlGKzgraGwzS3VPL3R0T1JSQ09kdDdPOVRLQzdD?=
 =?utf-8?B?c3hmZXQrNExLZTFIQjAxZGMwSFlmM0RBRlpLU0RjSWFkalI4VGhFM09Ld1Zz?=
 =?utf-8?B?U1hLd3VKMVFSOTJ2TkJtZFJBQWl4WEpjSTBKK0crN1hadzlvNTNPcVJ0a3pT?=
 =?utf-8?B?RVAwMVhtSFlwMTI5dkZGRDdaVlUyTUF3dnpQZVpKcS9NWk00SzJHVUhqRGR1?=
 =?utf-8?B?Wk1jd0VINGtvbFdrczkxTFpLQmxMZkxOc1lhR3dhVVJHZmcycDdTNDFqeDZU?=
 =?utf-8?B?Z25yS1dmYnV0SlN3T3JoK2s3Z3YwdUNPcS9raDBWTGRObjM4Rnk4SGQ4M01r?=
 =?utf-8?B?LzdPYk9xSzQ5RVViM2lZelFMbmFNSDdJaW9ydktGOGdYcHkyK1FwRVZMSjly?=
 =?utf-8?B?cHkvSm44dk4rSU00U1BLbUUvUjZhc0ZpbzgwUmxPOTJyL09FVS9UaDNhdUR3?=
 =?utf-8?B?V2NyUXlJYkVYOTltLzVObjRkNUtqR2lTaDBQcENoZmF4WnBlaDJHOVgvdnVo?=
 =?utf-8?B?R0VDZFcwVHlmeStubHY3c2VyT3kzVkxGLytNKy9CcnZYaGtoZkd1MktiWWJr?=
 =?utf-8?B?OVRqWDFVbkVPY08rSWdncUlZdjVKckN6QXo3R3ZiMXJwU0V5MXlnZjdHYWZ3?=
 =?utf-8?B?Vi9wcWtvalB6bUFsL2IxNnRPdFBDRldZTEZXY1hTV1BNbXJveEpFbUg1ODU2?=
 =?utf-8?B?a1dhOUc5eHNOUlhLY3hXT1JDczd4Q0xqVFZFS3dDcjFlSVNEY0JGaEltUHNO?=
 =?utf-8?B?U3U5c0tQM2tyN3I5L1h4aXZ2QkVEaTRiYm9pcUpIYlVhclVGSVZyRUtySGpa?=
 =?utf-8?B?NG9XVWZENXptakJYbDBIdjlMSWNOMkxubWpINWdVUmFZdTlVbnZ2U3dOWmZn?=
 =?utf-8?B?Z3FWWEg0VWlWajY3OE1BV0VwTlovdGVqd09mT1Z2YVlvVVVjSUdKajNwK0hq?=
 =?utf-8?B?V3IwUURGcFhnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(7416014)(52116014)(1800799024)(10070799003)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tlp0cEFjWE5ZVlJhZ2FyMEdHWVJNZHByckd4emZ4VXFGUHJtMzRvOFhPTkFG?=
 =?utf-8?B?UDcrUFpUaTczV1l3NWk2WU5BQVhwSmdRM0Fpbys2d3RIUEtRQmVnWGQxeE9U?=
 =?utf-8?B?QTRzM3I5aFZhSWhrSmdlK25QUXZHWEtJMHh1Y2U1UWdSMmE0amJxMm53S2FO?=
 =?utf-8?B?dFlnSmxSUktyN0tJWlBlRjJHdytzZFprMzVsa0Nzdy9yLzJ3RG9kRmhmbGFY?=
 =?utf-8?B?Q1BQNFNyeFBkSUl0VjJLd096Um45MjlvMHM5MDB3bTdsZzJieHV4VWdHVENX?=
 =?utf-8?B?R3FMNG4rUUNCOGVmUm9Ob1pObHYrdzV6Zm5MMzFwQkJHWjF4R0w3aldDb3Nk?=
 =?utf-8?B?aXJnVHZ5QVNIbGxrall4MEl1UWJqNE1UZk5WeWZIQUlwVEVSU3RUY2ZWK2o1?=
 =?utf-8?B?aG9lY0s5TEJtaGRmN0JhZ0tTcVdqSGowMWdHN3RyQ3RPZ1FXcTg1ZkZqODlv?=
 =?utf-8?B?bzJLVngrN2VKeVN6L1NNdkZqeEkzTzhwbVdDWkhmdXhuOUpLVDRWZ2lRWkNI?=
 =?utf-8?B?eTBxamRKWnlPWG44WEtZNTlZcmVlSUY4dWFsWHZNR3k4cHlQdXc0Q3NTaGZq?=
 =?utf-8?B?NXFWckxZTysybUlvRmtHdTZ2RVZBdGthdllURFJZRkZaUmtVUWhBMzRicGw3?=
 =?utf-8?B?ZFlEUjRTYk9jbkpqSDZsR2RGTXhodkFCb0NCY3czOWI0eWZLai9rUWswMWFp?=
 =?utf-8?B?YlR3dnBST1lnTjcvZVVSYTNjb3hXTlhWbXFuSXUyVDNrTHJZSkpBRU54clhw?=
 =?utf-8?B?a1VQNDc4cTduWVZJTTZ0WCtoblNub003TDJHVlc1NHpRU2txUHBMUzdqTzY1?=
 =?utf-8?B?WGhOaHBKbTVTM3dxY0cyMmVHdmgwSGRiWVJxbDR5clhHRUZNRVhlaG1BbVln?=
 =?utf-8?B?Z0FPdXVnN2RCR25OaUhhT2pXZ2V2SmZyUStHUVVXbVlMSzUyK29HTU1BUkJj?=
 =?utf-8?B?cWxSVHNFQ3hORHBQWmFiN2VmQ2k0UVZIaTg2ZEtrR1lGWEZGK0FXNHhiaUt3?=
 =?utf-8?B?K1BlM21rNUxJUTJ0WjlRZ2N3VHZTWlVSa0JYbTNMejhZV2hVcEZWdUNJOC9I?=
 =?utf-8?B?Zkl5ZDkwTzd6QkNqbmxLZVJUb1JGODhSVkUwa2l0MzVSNTQyamJwdXBlWGRH?=
 =?utf-8?B?Mnh6K2lKUUd0b3ZtRFEvb2IzVm1qK0Fudm1TMmV0K0NFdnVRUVdOY2poMStF?=
 =?utf-8?B?ZjU2OUpOZGJNaHJIWlBMUDFBa0NJc3daUzNpeTgwTHBkR3lkbkZ0emxqWGZY?=
 =?utf-8?B?VW0vOS9BMUM5ZWk1QkJnMThQOXBySHZraVgzYWU2MWdXc29vZkR3MHl2VU5X?=
 =?utf-8?B?ZGZGZTQzOGY5MjNRVExqa1B4NEpMblRRZ1RtT2NraXU2a3BYc0xSbUd1MUhZ?=
 =?utf-8?B?dmhZYlJ4S3VIQ3NKNXM5d2I2ZHljVW9mcnBFUkl4QjRhT05jWmhIdWZpeXRU?=
 =?utf-8?B?YndXWFlPSU5sRHVRcGdhSG51eURqcmw3MDhrekdaS1p5ZDJOYkNVOU1JYjRu?=
 =?utf-8?B?V2ZyTDEwYmppVzMxNTBGN1dMbHZjSVdkK25obHM2VlFHdDZmY1ZYS1NGODl0?=
 =?utf-8?B?bFYya2NlNUhrWllxT0F1d3U4QXNOaWVKMkJaVkNNZk94TEJjaEZkdFZwblp3?=
 =?utf-8?B?ZEQ4T0dLNllTczJXQlRVUUZScmEvRlJ1aFFkTXQzdC9FYk1odnBIMXdkdjZx?=
 =?utf-8?B?QmswZ2VueDhGUXBRNUsrL1lMNlp0SVNKWmVvZzFjNDZrZ09PQVcyUGV2dms2?=
 =?utf-8?B?Zk5ROUNzL2tFVktVWVlqY2c4L0ZHN01JcWlqY0NSSnRacGlrTWdQVFVZektz?=
 =?utf-8?B?M0NONGtHK21OemMxWklOVk1LbkpGZXh2RDVKL1VxY25TT083MXg1TGYwa0VK?=
 =?utf-8?B?VjFNekRNT09oRGRLL0VBY2FyOHo2dm9YbVlLZFRBWjEra3pVSFR3aDVTbVEr?=
 =?utf-8?B?ZnZjckx4VEdzOUFJZjlHTzdmRUxqc2FjVXd4b3pMNkpqelBCcVFJSjJvRWlt?=
 =?utf-8?B?T0dpWlp4aDY1ZFlsWjB0Z2FiTDlpM0pFcEVXTVd6K3VYaEcyMGFzV1RRYUJs?=
 =?utf-8?B?OVdrQVNtOThnVkdUNnVvb2FJSVJFMnlGN2hPK1ZBMXNyQno1VlBsdXUraHhs?=
 =?utf-8?B?T2NMckhkZ1hnMDBPakpYRHM3dEk3OXdNNHVJZXhxdEc5MnZUTWM3UkkrdXY5?=
 =?utf-8?B?QmkrYXJER1ZkODY3RVczSnU5S0phL1k1bFBkWkpUQ25TbDRDTGZqQ2ZKNWty?=
 =?utf-8?B?VHRtbXBFNWk5TE5Obkw4Ynh2eGI0eE1ob2tRNXMyL2JqVXlPOVp3VVNxc05v?=
 =?utf-8?B?QXAwQy93OWwzcHR1aDJwd2dQK21ZU2xpN2JtdjhOcjlyTUZKTDlHSGJSYnZE?=
 =?utf-8?Q?7emNKRhlDeKB797/LD+Yl9g1tpUJOJ2giJOFCVNELYjT4?=
X-MS-Exchange-AntiSpam-MessageData-1: Vic+OLpZC89HgoWNGPuXerrEmU78a7Qi21M=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1da201d9-9f15-40e0-e43f-08de50f585ba
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2026 09:40:57.6412
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /xNlt26nxGSU+ZoB0jo8ve9QK7nRbbEDtWTWxHgfX8j4IYlCSI5kX700KJb9L9gr7aJMogoBcWFQGQqETHcPHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7592
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_014104_349322_875D9657 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SW50cm9kdWNlICJyeC1wb2xhcml0eSIgYW5kICJ0eC1wb2xhcml0eSIgZGV2aWNlIHRyZWUgcHJv
cGVydGllcy4KQ29udmVydCB0d28gZXhpc3RpbmcgbmV0d29ya2luZyB1c2UgY2FzZXMgLSB0aGUg
RU44ODExSCBFdGhlcm5ldCBQSFkgYW5kCnRoZSBNZWRpYXRlayBMeW54SSBQQ1MuCgpSZXF1ZXN0
ZWQgbWVyZ2Ugc3RyYXRlZ3k6ClBhdGNoZXMgMS01IHRocm91Z2ggbGludXgtcGh5CmxpbnV4LXBo
eSBwcm92aWRlcyBzdGFibGUgYnJhbmNoIG9yIHRhZyB0byBuZXRkZXYKcGF0Y2hlcyA2LTEwIHRo
cm91Z2ggbmV0ZGV2Cgp2MiBhdDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjYw
MTAzMjEwNDAzLjQzODY4Ny0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tLwpDaGFuZ2VzIHNpbmNl
IHYyOgotIGZpeCBidWcgd2l0aCBleGlzdGluZyBmd25vZGUgd2hpY2ggaXMgbWlzc2luZyBwb2xh
cml0eSBwcm9wZXJ0aWVzLgogIFRoaXMgaXMgc3VwcG9zZWQgdG8gcmV0dXJuIHRoZSBkZWZhdWx0
IHZhbHVlLCBub3QgYW4gZXJyb3IuICh0aGFua3MgdG8KICBCasO4cm4gTW9yaykuCi0gZml4IGlu
Y29uc2lzdGVuY3kgYmV0d2VlbiBQSFlfQ09NTU9OX1BST1BTIGFuZCBHRU5FUklDX1BIWV9DT01N
T05fUFJPUFMKICBLY29uZmlnIG9wdGlvbnMgYnkgdXNpbmcgUEhZX0NPTU1PTl9QUk9QUyBldmVy
eXdoZXJlICh0aGFua3MgdG8gQmrDuHJuCiAgTW9yaykuCgp2MSBhdDoKaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbmV0ZGV2LzIwMjUxMTIyMTkzMzQxLjMzMjMyNC0xLXZsYWRpbWlyLm9sdGVhbkBu
eHAuY29tLwpDaGFuZ2VzIHNpbmNlIHYxOgotIEFQSSBjaGFuZ2VzOiBzcGxpdCBlcnJvciBjb2Rl
IGZyb20gcmV0dXJuZWQgdmFsdWU7IGludHJvZHVjZSB0d28gbmV3CiAgaGVscGVycyBmb3Igc2lt
cGxlIGRyaXZlciBjYXNlcwotIEFkZCBLVW5pdCB0ZXN0cwotIEJ1ZyBmaXhlcyBpbiBjb3JlIGNv
ZGUgYW5kIGluIGRyaXZlcnMKLSBEZWZlciBYUENTIHBhdGNoZXMgZm9yIGxhdGVyICgqKQotIENv
bnZlcnQgTWVkaWF0ZWsgTHlueEkgUENTCi0gTG9naWNhbCBjaGFuZ2U6IHJ4LXBvbGFyaXR5IGFu
ZCB0eC1wb2xhcml0eSByZWZlciB0byB0aGUgY3VycmVudGx5CiAgZGVzY3JpYmVkIGJsb2NrLCBh
bmQgbm90IG5lY2Vzc2FyaWx5IHRvIGRldmljZSBwaW5zCi0gQXBwbHkgUm9iJ3MgZmVlZGJhY2sK
LSBEcm9wIHRoZSAiam9pbnQgbWFpbnRhaW5lcnNoaXAiIGlkZWEuCgooKikgVG8gc2ltcGxpZnkg
dGhlIGdlbmVyaWMgWFBDUyBkcml2ZXIsIEkndmUgZGVjaWRlZCB0byBtYWtlCiJ0eC1wb2xhcml0
eSIgZGVmYXVsdCB0byA8UEhZX1BPTF9OT1JNQUw+LCByYXRoZXIgdGhhbiA8UEhZX1BPTF9OT1JN
QUw+Ck9SIDxQSFlfUE9MX0lOVkVSVD4gZm9yIFNKQTExMDUuIEJ1dCBpbiBvcmRlciB0byBhdm9p
ZCBicmVha2FnZSwgaXQKY3JlYXRlcyBhIGhhcmQgZGVwZW5kZW5jeSBvbiB0aGlzIHBhdGNoIHNl
dCBiZWluZyBtZXJnZWQgKmZpcnN0KjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIw
MjUxMTE4MTkwNTMwLjU4MDI2Ny0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tLwpzbyB0aGF0IHRo
ZSBTSkExMTA1IGRyaXZlciBjYW4gcHJvdmlkZSBhbiBYUENTIGZ3bm9kZSB3aXRoIHRoZSByaWdo
dApwb2xhcml0eSBzcGVjaWZpZWQuIEFsbCBwYXRjaGVzIGluIGNvbnRleHQgY2FuIGJlIHNlZW4g
YXQ6Cmh0dHBzOi8vZ2l0aHViLmNvbS92bGFkaW1pcm9sdGVhbi9saW51eC90cmVlL3BoeS1wb2xh
cml0eS1pbnZlcnNpb24KCk9yaWdpbmFsIGNvdmVyIGxldHRlcjoKClBvbGFyaXR5IGludmVyc2lv
biAoZGVzY3JpYmVkIGluIHBhdGNoIDQvMTApIGlzIGEgZmVhdHVyZSB3aXRoIGF0IGxlYXN0CjQg
cG90ZW50aWFsIG5ldyB1c2VycyB3YWl0aW5nIGZvciBhIGdlbmVyaWMgZGVzY3JpcHRpb246Ci0g
SG9yYXRpdSBWdWx0dXIgd2l0aCB0aGUgbGFuOTY2eCBTZXJEZXMKLSBEYW5pZWwgR29sbGUgd2l0
aCB0aGUgTWF4TGluZWFyIEdTVzF4eCBzd2l0Y2hlcwotIEJqw7hybiBNb3JrIHdpdGggdGhlIEFO
ODgxMUhCIEV0aGVybmV0IFBIWQotIE1lIHdpdGggYSBjdXN0b20gU0pBMTEwNSBib2FyZCwgc3dp
dGNoIHdoaWNoIHVzZXMgdGhlIERlc2lnbldhcmUgWFBDUwoKSSBiZWNhbWUgaW50ZXJlc3RlZCBp
biBleHBsb3JpbmcgdGhlIHByb2JsZW0gc3BhY2UgYmVjYXVzZSBJIHdhcyBhdmVyc2UKdG8gdGhl
IGlkZWEgb2YgYWRkaW5nIHZlbmRvci1zcGVjaWZpYyBkZXZpY2UgdHJlZSBwcm9wZXJ0aWVzIHRv
IGRlc2NyaWJlCmEgY29tbW9uIG5lZWQuCgpUaGlzIHNldCBjb250YWlucyBhbiBpbXBsZW1lbnRh
dGlvbiBvZiBhIGdlbmVyaWMgZmVhdHVyZSB0aGF0IHNob3VsZApjYXRlciB0byBhbGwga25vd24g
bmVlZHMgdGhhdCB3ZXJlIGlkZW50aWZpZWQgZHVyaW5nIG15IGRvY3VtZW50YXRpb24KcGhhc2Uu
CgpBcGFydCBmcm9tIHdoYXQgaXMgY29udmVydGVkIGhlcmUsIHdlIGFsc28gaGF2ZSB0aGUgZm9s
bG93aW5nLCB3aGljaCBJCmRpZCBub3QgdG91Y2g6Ci0gInN0LHB4X3J4X3BvbF9pbnYiIC0gaXRz
IGJpbmRpbmcgaXMgYSAudHh0IGZpbGUgYW5kIEkgZG9uJ3QgaGF2ZSB0aW1lCiAgZm9yIHN1Y2gg
YSBsYXJnZSBkZXRvdXIgdG8gY29udmVydCBpdCB0byBkdHNjaGVtYS4KLSAic3QscGNpZS10eC1w
b2wtaW52IiBhbmQgInN0LHNhdGEtdHgtcG9sLWludiIgLSB0aGVzZSBhcmUgZGVmaW5lZCBpbiBh
CiAgLnR4dCBzY2hlbWEgYnV0IGFyZSBub3QgaW1wbGVtZW50ZWQgaW4gYW55IGRyaXZlci4gTXkg
dmVyZGljdCB3b3VsZCBiZQogICJkZWxldGUgdGhlIHByb3BlcnRpZXMiIGJ1dCBhZ2FpbiwgSSB3
b3VsZCBwcmVmZXIgbm90IGludHJvZHVjaW5nIHN1Y2gKICBkZXBlbmRlbmN5IHRvIHRoaXMgc2Vy
aWVzLgoKVmxhZGltaXIgT2x0ZWFuICgxMCk6CiAgZHQtYmluZGluZ3M6IHBoeTogcmVuYW1lIHRy
YW5zbWl0LWFtcGxpdHVkZS55YW1sIHRvCiAgICBwaHktY29tbW9uLXByb3BzLnlhbWwKICBkdC1i
aW5kaW5nczogcGh5LWNvbW1vbi1wcm9wczogY3JlYXRlIGEgcmV1c2FibGUgInByb3RvY29sLW5h
bWVzIgogICAgZGVmaW5pdGlvbgogIGR0LWJpbmRpbmdzOiBwaHktY29tbW9uLXByb3BzOiBlbnN1
cmUgcHJvdG9jb2wtbmFtZXMgYXJlIHVuaXF1ZQogIGR0LWJpbmRpbmdzOiBwaHktY29tbW9uLXBy
b3BzOiBSWCBhbmQgVFggbGFuZSBwb2xhcml0eSBpbnZlcnNpb24KICBwaHk6IGFkZCBwaHlfZ2V0
X3J4X3BvbGFyaXR5KCkgYW5kIHBoeV9nZXRfdHhfcG9sYXJpdHkoKQogIGR0LWJpbmRpbmdzOiBu
ZXQ6IGFpcm9oYSxlbjg4MTFoOiBkZXByZWNhdGUgImFpcm9oYSxwbnN3YXAtcngiIGFuZAogICAg
ImFpcm9oYSxwbnN3YXAtdHgiCiAgbmV0OiBwaHk6IGFpcl9lbjg4MTFoOiBkZXByZWNhdGUgImFp
cm9oYSxwbnN3YXAtcngiIGFuZAogICAgImFpcm9oYSxwbnN3YXAtdHgiCiAgZHQtYmluZGluZ3M6
IG5ldDogcGNzOiBtZWRpYXRlayxzZ21paXN5czogZGVwcmVjYXRlICJtZWRpYXRlayxwbnN3YXAi
CiAgbmV0OiBwY3M6IHBjcy1tdGstbHlueGk6IHBhc3MgU0dNSUlTWVMgT0Ygbm9kZSB0byBQQ1MK
ICBuZXQ6IHBjczogcGNzLW10ay1seW54aTogZGVwcmVjYXRlICJtZWRpYXRlayxwbnN3YXAiCgog
Li4uL2JpbmRpbmdzL25ldC9haXJvaGEsZW44ODExaC55YW1sICAgICAgICAgIHwgIDExICstCiAu
Li4vYmluZGluZ3MvbmV0L3Bjcy9tZWRpYXRlayxzZ21paXN5cy55YW1sICAgfCAgIDcgKy0KIC4u
Li9iaW5kaW5ncy9waHkvcGh5LWNvbW1vbi1wcm9wcy55YW1sICAgICAgICB8IDE1NyArKysrKysr
CiAuLi4vYmluZGluZ3MvcGh5L3RyYW5zbWl0LWFtcGxpdHVkZS55YW1sICAgICAgfCAxMDMgLS0t
LS0KIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMCAr
CiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLW1kaW8uYyAgICAgICAgICAgICAgICAgfCAgIDQgKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgICB8ICAxOSArLQog
ZHJpdmVycy9uZXQvcGNzL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRy
aXZlcnMvbmV0L3Bjcy9wY3MtbXRrLWx5bnhpLmMgICAgICAgICAgICAgICB8ICA2MyArKy0KIGRy
aXZlcnMvbmV0L3BoeS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2
ZXJzL25ldC9waHkvYWlyX2VuODgxMWguYyAgICAgICAgICAgICAgICAgfCAgNTMgKystCiBkcml2
ZXJzL3BoeS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjIgKwogZHJpdmVy
cy9waHkvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMv
cGh5L3BoeS1jb21tb24tcHJvcHMtdGVzdC5jICAgICAgICAgICB8IDQyMiArKysrKysrKysrKysr
KysrKysKIGRyaXZlcnMvcGh5L3BoeS1jb21tb24tcHJvcHMuYyAgICAgICAgICAgICAgICB8IDIw
OSArKysrKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oICAgICAgICAgICAgICAg
ICB8ICAgNCArCiBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MtbXRrLWx5bnhpLmggICAgICAgICAgICAg
fCAgIDUgKy0KIGluY2x1ZGUvbGludXgvcGh5L3BoeS1jb21tb24tcHJvcHMuaCAgICAgICAgICB8
ICAzMiArKwogMTggZmlsZXMgY2hhbmdlZCwgOTc5IGluc2VydGlvbnMoKyksIDE0NiBkZWxldGlv
bnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3BoeS1jb21tb24tcHJvcHMueWFtbAogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdHJhbnNtaXQtYW1wbGl0dWRlLnlhbWwKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9waHktY29tbW9uLXByb3BzLXRlc3QuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3BoeS1jb21tb24tcHJvcHMuYwogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvcGh5L3BoeS1jb21tb24tcHJvcHMuaAoKLS0gCjIuNDMu
MAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
