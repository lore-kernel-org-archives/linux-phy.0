Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A33E0D78770
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 15:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54JThNfX9cu0FUrQe3DAVNW6H0tUAQ7N3ZXfgWYoNQk=; b=VJPoMDwhDSmp5p
	DXz+6mP8aGN/WVvCLirScVZFFIVAP9JuEPX12YznNvqJq+NXppPTgylqlqdIBoJeILINDIabd2PSb
	824bcfUVFGrPeP0FiA30V8XQw3KLQYtkKq6Z+LheIuu719A8cvR1kkuxZg1OTK9KppJz6/K0XPtF0
	WZ0d/N+X6M95aqP1dAQ2o/qoRZyl+ZIOD7gOiitUCT2VUMTRPMSFbosOCPU+2iBj9lN8ABP3XfUsG
	ayfKGkh2MWYTnRUnhlnWYKe7NHJHQ+kytzZ/QOrgJNHl3OCBg/ky/fGrAng9g6XB/Wku7nk/agmCH
	ZxJxlZr/HIV+bsk7Rl3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWcpn-0000000AaBy-47ih;
	Fri, 19 Dec 2025 15:56:03 +0000
Received: from mail-norwayeastazon11013032.outbound.protection.outlook.com ([40.107.159.32] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWcpj-0000000Aa4Z-2T3r
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 15:56:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pguqSXaD7/CZJ2tEsDjiK4AFcodGtaC/7CYt0BSnXzqyGThA8n+uPVEMo32jaX1n7l9l+lkx0VVio3nnWIu6Yfxyk0trEEO/Ku4N1WcakN3i3us9Gowd0p0f+DVFrxScZnVUQHrFxGYMq0ChnBYNTb55tWBcxdfxmwEyBRM6ob1dKNzhE39SVohf9gDDAd1M1mnSF/e+0/b/YpVvRVEBX95y2hRai+4MLPN5nech9z+ND/IHohDjSrUSKTHTjbgQpRSHxvHxTKQDTOZPgXeN+QizPPpp+zAB0tQAOUzf/LaC1EwKtnQjpHdWtssSnnqb3kiWah35SEY3ld0zdhLx7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JucMYiclQo2heZsoHhhAf5v2GtF8ht6NeB+8yURIn/Q=;
 b=Sie3dnOtHpvn5N/DlH1DTnnhaH+MKfHcjXjHtyVEh6VaASl7M7tozLjIJgY4E0Q3Nd2KGmk/WaMD9yi8P22+yfKDpNHyb12ucGlSIb1hMdnM5s/O2pd3ShBUzNWdwJvYT8b7Cx3ZNB+A52WpvKfzByxyl5Obp4DmJ1xXZ1Fa06iUk/BVOYbFUf4d06Zk/DW/UrxZ8J4qbRMLFqEdk1TmiPDEdLGZSDkApBRZXYVsUpIt4CGsPmz16WH048b3CwSFLaxd9I5cF+4BQMjd0s0baHgPFMiaC0VZDqrX+FORKGebBvpV5fohXUBbyu3q1iurFKP1liw7nSD9cYg4jmHFdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JucMYiclQo2heZsoHhhAf5v2GtF8ht6NeB+8yURIn/Q=;
 b=UEhVV0ULL/6rwNs669ez7tap/9NU02TB6ngGpLxgiFv8pF8dSenZh6Bpo0dDkyLTPh4n/gWn3NS4Onq11YFfAhmxth7fGHYjkpjHbjaXinqPXtIgQjnrh8OYOmkJMMQ1Wi7op8wKtzuaMsXXNJLMP8apQpzagXObfC4VXfZkBQbphmu4K7p0+I5WK2J+hhPP8sG4JmY0LiRRNc4v5ElAUwk/yT7pM80WxHOQjo5Wk730MsjY1lV5YavzZtCwByYnYcuzLtJI5TfVxobNqFScwSdLW52cMvmc+2JtdXjn83nB5CBapuYhnBK1UtflOw0Z/PoGWHLHwxrfANaVazhrBw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8951.eurprd04.prod.outlook.com (2603:10a6:10:2e2::22)
 by AS8PR04MB8229.eurprd04.prod.outlook.com (2603:10a6:20b:3b3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Fri, 19 Dec
 2025 15:55:56 +0000
Received: from DU2PR04MB8951.eurprd04.prod.outlook.com
 ([fe80::753c:468d:266:196]) by DU2PR04MB8951.eurprd04.prod.outlook.com
 ([fe80::753c:468d:266:196%4]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 15:55:55 +0000
Date: Fri, 19 Dec 2025 10:55:47 -0500
From: Frank Li <Frank.li@nxp.com>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	j.zink@pengutronix.de, linux-kernel@vger.kernel.org,
	xu.yang_2@nxp.com, jun.li@nxp.com, haibo.chen@nxp.com,
	linux-phy@lists.infradead.org, imx@lists.linux.dev,
	Stefano Radaelli <stefano.r@variscite.com>,
	Pierluigi Passaro <pierluigi.p@variscite.com>
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL
 field before using it
Message-ID: <aUV1gxwj3UtRwaro@lizhi-Precision-Tower-5810>
References: <20251218194100.365269-1-stefano.r@variscite.com>
Content-Disposition: inline
In-Reply-To: <20251218194100.365269-1-stefano.r@variscite.com>
X-ClientProxiedBy: BYAPR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::43) To DU2PR04MB8951.eurprd04.prod.outlook.com
 (2603:10a6:10:2e2::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8951:EE_|AS8PR04MB8229:EE_
X-MS-Office365-Filtering-Correlation-Id: 600466f7-36c6-4085-b745-08de3f171842
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|7416014|52116014|376014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hRkADwTZ6sAHxMUahc3rmdW/5hp35vdZBwLd2Dhzt3k4pQJssZNkjmZG5BZe?=
 =?us-ascii?Q?TdA5jfFx97lWWbzjrsmQc6GilIbWZF6g+/Z7o4UOQd6kyfyuHOKqSEbWW+X7?=
 =?us-ascii?Q?PDv+fWOncAqZ2yF04Aas09Ex7YHECFZ96pkOi6GgoxoFV0utYgtVBiLJBeS9?=
 =?us-ascii?Q?6OosESguqzonW2Wsz/qmXBA67tjE/ig/yiTXE+JTCUkFE4CKHiPVZR1l1/BE?=
 =?us-ascii?Q?fIlDURkLeuzQw4/PJj20rueUQSUWZ+DYIA8D9b3FyIRqc6y9H8tF0NtAxfSZ?=
 =?us-ascii?Q?Eukmrpb996g08un+mbNsX2/gCxYxGXHZAIpseqwH20BTcCJ/UZAaAnLhDUL3?=
 =?us-ascii?Q?5bqZxiV6rIvDRg0EjjDASMijwtMtahS54mJoSLv/xsfh9N261qIEDJv4yvRp?=
 =?us-ascii?Q?cvwBlhD2NJe5jmgtTchci3b/8Som0CU1P5cYkvrXpZEeZojZGxI2tRbqlw+X?=
 =?us-ascii?Q?PnF4k4UU7RtgLKPCI9rkY2NZxpajMdjN4DT3L48XH0pTrQbnayClXeCcN083?=
 =?us-ascii?Q?iCHTTcmSSvNjWY5+IyOpBwwfLjo2uiIhDhSU0IAwr/7gQHo4SamUpTxyKaih?=
 =?us-ascii?Q?GDtYJU6bFQSd7HqFruOUmTXbaj7L12iQxtQXtDM3zfBa9IXAb6V4gGPriuPk?=
 =?us-ascii?Q?/VLTtDxW3ENBJsmc/5c53VqAS9y5d3QVjqffBV4xm2liswfM7aqjv0Lrz+KF?=
 =?us-ascii?Q?T4fxeLZwrETOFMYzOqR9B0Bpr+C57+ZFGKm4A3KZTdqaADIzqkfePBoBGDAw?=
 =?us-ascii?Q?DuMv1zpS7YE62R4+QvN2Qjh3lC5OkovwyJrz0axKycEMEfLS+spjWj+QXaYl?=
 =?us-ascii?Q?AUc10EU3QXRTh4xdmmkB5+7DepiMsE79kuFTYkXazu/SEVdbvCZUItvqG2R4?=
 =?us-ascii?Q?O08+K1lVJ3DOXZ3oYB9mtzdX7b9ysjC0lvN9fsbWtM1a1e4K7hPOlnPzaaUc?=
 =?us-ascii?Q?zCMR/w2MCsOlpGBnmIjf30TgKFN2MXMIUvLkj/oT5x6ShqWGG6+CRQ4/dq6i?=
 =?us-ascii?Q?2YdZEubBmfNmDt3swoXQVy7WXUb85rjYiv1dZP5cBoCleUrV7vpoBTYey2lA?=
 =?us-ascii?Q?5xZ5cOqUTxjSFq6QDpOHszK4wc3Th0d54zt5obMZ9TgVVjMj3cAl2Q/jdy2B?=
 =?us-ascii?Q?BjekCee7V3o2Ee55lWOoo5cxRtUOCSBLiHJQQsfwskcZHeLLV7Zk7niPrDy8?=
 =?us-ascii?Q?ALKsKSU3P0RI//2Q8EJVGWZCNdyK2x/nGeQUPQH6IhE1lgz5R4gLcwNUbizF?=
 =?us-ascii?Q?2avDedM0sKPRf0LXPKjmKG4XIJuGVitHUGNXPNOai6Imq0KHAqEoLrzoYtjj?=
 =?us-ascii?Q?ExMSIjUjUi8NfpXWI0u4EpTawJnltHx9H5P+/WdxeKdspOMaIQuQr3kr+8QL?=
 =?us-ascii?Q?S7EPiq5hOOOEM//zSMWRNN1cT+LTWtrSQxpmqaezxmpsax4EMg7I69Z75Qf1?=
 =?us-ascii?Q?yh4r70PTXti/Hd7RXRfuTXLN8NIL6hlz853rj8DQNtUevEvuKSj+0aoAKt7X?=
 =?us-ascii?Q?mB3Z4PCjBxxjrBzUfsRqzwI7hjpEjfd+Y1hU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8951.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(7416014)(52116014)(376014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zb126Bq4ivtvqk25N8wK0tQffpAhkdiEvU8l/UZ0z2woa7hyC5KdollJ5I0T?=
 =?us-ascii?Q?R7AsM4xS/pnCSK4/HWQJAAuZaZ7KFg7zYDClntoLaquSc/tIVXbMGrVtydhI?=
 =?us-ascii?Q?L0UFxI2LXfBLKQTqgokSTqF0PPHPxgW38YKPX/RXVbEEy8Kkvf5KWZz9bnxg?=
 =?us-ascii?Q?q0vZ54bh1bvbpTc3Ri39mSyI7C3Z6OPB9F5B/Vg2944qKHr6YenAa21D9rQ5?=
 =?us-ascii?Q?k1BapP/atFeX73cC+kybWbPM8gym4z7zoPPq4tvsGmq27/JvakF1YLP37TiA?=
 =?us-ascii?Q?dpo9HtIKSY7JM5C345F1NPBFqQ/7Koe/Rx6flEk3nRmraAEvR/nItd4eSHeM?=
 =?us-ascii?Q?tNIG+Xvu3xphtjzPH5hUzZ/kYuIrdp+fGbq1tROt+voKWSslA8NN01jMnLRG?=
 =?us-ascii?Q?lQHwrpAHeQOWeM53qKZo/vB7xQBV0P+8Dh77V7y21f9lXOjGRxEq1vifG3Cg?=
 =?us-ascii?Q?kxV013/tnIUPrJQGr7c1Re6mLpUkfDa1JEWH9yehhhwUeBq27FmURjlRVhFw?=
 =?us-ascii?Q?zEp9+vfJmaaed9KZd+H/6p1Hn4SqO5Gvwiq1nhSJOsNCredBuKIZCqb8TdzX?=
 =?us-ascii?Q?+bu0FyyHQGe5H+CTHRRyGZCiQRpM2d04Wnr8N+6uaIlKf/bY2MaD5mqLbP4C?=
 =?us-ascii?Q?/MYeNHUQDVnSf2VxbfKiP0PrlUR4tKgdBqm23LAycXER9A4//hdpy9jiF71A?=
 =?us-ascii?Q?7c0BecN5jAnX43CqL9GYHiJ1b0LaZv1uQkTEwXc0gDiG4SCjzpGjtRRtDxIj?=
 =?us-ascii?Q?atuj9Wa14d9We9diuzPctwiBoGLWZynH9NV0fR5H808HqhqvUJEW+/YJTzDS?=
 =?us-ascii?Q?ri+cmN6gEidq2H/rLZmf9wJbinNqik1biWZVUJa1QVIhTxdzygw52EvaDbNf?=
 =?us-ascii?Q?h1Q48nfDj+ohB64rum7gwQLk0XULNQdmcMGMRyVkfJQyRPD3BBmkfTSrb/0y?=
 =?us-ascii?Q?wAuOuwn7dlUe02AKO/n8H81goFFYOKK5nQbTpwDreTuNUfFaxRBYz5aewCG9?=
 =?us-ascii?Q?RXvYtDFK/kEpC/DGOLAG9nRjWZgScjirhpChp7Jq3rj4dmBh//LGfMGZ8HUw?=
 =?us-ascii?Q?1ir5yWr4TYVy2q8ennN+0U9wGXbFYAMVUHoP17KlgY7t63QYjWoOADEEmAmx?=
 =?us-ascii?Q?7rfcRSCJDeey1KiUi2c0rr0Diqdu+eWXsc35w3LIQA/p6NNQNLsLEDXJhs+Q?=
 =?us-ascii?Q?PChSORKGfcLsBt5ytKyy49rGxtGXVWBZfNT8F4b6srzp8ChMNibfSDJYzoFV?=
 =?us-ascii?Q?cABp5iszNHPc8gA2z/mqB6cUUL3rO4EjBJRP0ZqM91iaZkXk6PELgGH/9bMW?=
 =?us-ascii?Q?Bf70WsuoJRYdjamsH33MsHA47a5TRnUQBlxsMRv47QsnQJcp7i1H4A/WLXuw?=
 =?us-ascii?Q?hGc6pippq+KQFP0Sm792/vOvrSD4Ya+S8rX4i/Pg+w4zvYTI7o+r0EWszZwp?=
 =?us-ascii?Q?fv0TQPJ/K/GzlTB5DpD9XCwMTMjOWrW7nUH25vgwweWcTgwruQCTLiVSrhkV?=
 =?us-ascii?Q?Zn9KDpIbgiBbF4EO2P7nrVsdKk3qdBCdJfn2stR6dWdVsLpnqNBGfy7NJ8Yc?=
 =?us-ascii?Q?GAuXIrNc6hk0j178NsXM+VMq4XG1Fo8U0FiisfE+gusg5CpG2w+Wo7cbi5sr?=
 =?us-ascii?Q?8c/XGS2CiVdp87y4VLdDUJXSmMXemWJ7N2z0KtScQrAskVRg112XKtYGUu/A?=
 =?us-ascii?Q?YyLeHD1GYdwbRKVvu9lewynroVRrVpZPEDRgnQ75jLfGxkZ61P2r6SUTKY3n?=
 =?us-ascii?Q?ebZtA5gfkQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 600466f7-36c6-4085-b745-08de3f171842
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8951.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 15:55:55.8271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ck8BJ1/YFpyst1vQsVhhsoRPvNeaVIGiGRPv66c2jEcWx6r9cAaYxUGQ/2ALFY0XVIfZTooO7kjVIPj43wP/ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_075559_714388_EC444199 
X-CRM114-Status: GOOD (  14.17  )
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

On Thu, Dec 18, 2025 at 08:41:00PM +0100, Stefano Radaelli wrote:
> Clear the PCS_TX_SWING_FULL field mask before setting the new value
> in PHY_CTRL5 register. Without clearing the mask first, the OR operation
> could leave previously set bits, resulting in incorrect
> register configuration.

nit: can you wrap at 75 char, at lease move 'register' to above line.

Reviewed-by: Frank Li <Frank.Li@nxp.com>

>
> Fixes: 63c85ad0cd81 ("phy: fsl-imx8mp-usb: add support for phy tuning")
> Suggested-by: Pierluigi Passaro <pierluigi.p@variscite.com>
> Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
> ---
> v2:
> - Improved commit subject as suggested by Fabio Estevam
>
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index ad8a55012e42..9458b6e5fcf4 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -504,6 +504,7 @@ static void imx8m_phy_tune(struct imx8mq_usb_phy *imx_phy)
>
>  	if (imx_phy->pcs_tx_swing_full != PHY_TUNE_DEFAULT) {
>  		value = readl(imx_phy->base + PHY_CTRL5);
> +		value &= ~PHY_CTRL5_PCS_TX_SWING_FULL_MASK;
>  		value |= FIELD_PREP(PHY_CTRL5_PCS_TX_SWING_FULL_MASK,
>  				   imx_phy->pcs_tx_swing_full);
>  		writel(value, imx_phy->base + PHY_CTRL5);
>
> base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66
> --
> 2.47.3
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
