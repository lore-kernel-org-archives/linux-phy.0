Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28BE6D12D56
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 12:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmVZd+C2U1RQ3Qp1rXAdFivVAb81Ah3QrzGkHMObuew=; b=Ndh6TCycyo5/Yf
	do0pMN0eTAN2fIA2r7emVs99pTWO136BsPZBCliXvQfiWVrgSKG7xxlMmOfdCwLFIUW4SfvVj2wY9
	OpUhpCHebyhnbID25Va8n0IHQuxNJVuVaxy/hlfQLvllElOT0F7sKEw8LrOJU5bizay3mQh5ozJnl
	XFinirXJs0JOHyyTSRtLfqK5w6fin+5LlneHsTkJlOScpmjTBo9YC4JBEH8Cn79NMcIW4H9uZOay7
	pZ7dHoCOXgu2h+pF9UxV/r372mF0PuTePhplfDrL43GDAcOVoiW1cR6H+3ajoDMUoBExLtxE1aNPs
	8VSE5MhJMoaIMNsS1h2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlvw-00000006YmK-2U9m;
	Wed, 03 Dec 2025 12:26:12 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlvu-00000006Ylt-1sGq
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 12:26:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c/X7VamT4pwKyGCW1K5d/FrfnEdjAQr3pNF8uA7yZEls3dWeHXpX3rPE5/ZVoXl27qsuaE4lVxu9BnfJTMO3GSTDbeJaValltOeO8FAwyTje0AIXTwRfN541dnm53Pxz56VsjYaLINaW3m+F5CJrePqOCjRq9hVl74MrN0wh+K+yVjiIrDv3Ngu1EBhwSU1OJ8t3yH4EcPBFmSJnub5CMxtTVWgZHut0XLPyQS82MtoXpnW35RIGmk/ERpRIjrfO3Po6lWM/A0J/MEK+tGkQtLIYZNqeOVkIHcBNL52KCILoG8BqiuE+5Y8ESFBps/g/0WYemP1Q/Ld2v7T+0OZgUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9JG+byJaWMmyqo2p+WVG0DZkNlx9EeiX+qMFGKu7RDI=;
 b=f+mJvMzJqOwIJ1k9OVvJ+InVg50fken3lq9BqUi8zCl+d4fN3pt6SJ296XnvKJhhFwSaJvUqQQkm5hK0a/GfLtPti4Bo8H3XzcsM/IFm9Kr2WCq+clloLKaW+1IGHGXA0JiMycuhFkrocGM3v4KuUkacDRexB5vlCwaciFtWZBpD3csLI+v+u3Wyzcxsioxx1ELlWms4+n9yA85ONI3lf555ifu9uYktxsUhd7R2Z2PeOPCX/1VxV8k7DSO5mLpBfo8fLITlOX4z5FzGqzy9TZEHOI0b3Jj+RB3UoQDnTRQ+EgR9rsZkq0IPQasnThXr30pNi0U8/xnAD81yeFTtrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9JG+byJaWMmyqo2p+WVG0DZkNlx9EeiX+qMFGKu7RDI=;
 b=P9allcY4Wtufrq6/fgmrZQkGwdTXftl/uVCn8m+5yiEfxmy1wXnfHrNMaG+iZPGzXgBhOXAiSbAH5X+ZsUSBU3HJ+N/1A8TkJqx+wWInMEVNEmLzBlwqYxiYGtX9GCoGt5Wkx/tO5+VTELoWzorNVx6ybGbWfgGeiAIlhK+5uO2e/EwWRLL+jIKdDxm+TvBEYdt6NsrDF888uPH+CTzjQmcz0aHtyW/nFzeRfujfd+tikuVelNS0lwo2KNqh6egYep3p7GcJegrxf+At0R4l5eAHKJlnJtsflj+ti7PvFw3ipBhXQUtoNJa1/Mba3cqm7XKwxoaODuYLx7Y4SVIA2w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AS8PR04MB8835.eurprd04.prod.outlook.com (2603:10a6:20b:42e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 12:26:04 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 12:26:04 +0000
Date: Wed, 3 Dec 2025 14:26:01 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: Lynx 10G SerDes Driver on my kernel
Message-ID: <20251203122601.72cwwpsp6loqpkpj@skbuf>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
Content-Disposition: inline
In-Reply-To: <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
X-ClientProxiedBy: VI1PR04CA0104.eurprd04.prod.outlook.com
 (2603:10a6:803:64::39) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AS8PR04MB8835:EE_
X-MS-Office365-Filtering-Correlation-Id: ad5c411a-90e4-463a-cdf4-08de32672062
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|19092799006|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ql7Kh43333bXEeOE+h6H/K/knNKXR+s3OULy7yzSs7VujUBXRDeCo7fYNYFf?=
 =?us-ascii?Q?P7ydGoXkyV3ImRN3ro/ywwnlx6twlBnlX3gAgVDvv+I2rSooHGZoL8Avm6q6?=
 =?us-ascii?Q?RqpmThnOlpxIRt1O3Rt6hzSaRzNS6kGZraa2xd3v5xmxwPpzq0s4zB5hIv5n?=
 =?us-ascii?Q?wyyHEFsZPTxzXk2T8QM14cGK8otzH6SRmC0kmnZcztnKduwRsIrEBNCXW7rI?=
 =?us-ascii?Q?aY9Ht9wriDyOji6v7vNiXX3tOEk4JCA+OFkkxomHrUMchZ/7iNn81rPM5fDT?=
 =?us-ascii?Q?vTRjdWfUPh05MwBvNtb5tpiRQNCuUXOc/4r3h0jNFYQv8Uj0HukZMvtL/pKI?=
 =?us-ascii?Q?JFnPYmcCLoI3wDkWDX8QfAEFUoVOUwdMHwDHWJspZxivXUIMxO4EX2L9iArM?=
 =?us-ascii?Q?rsc4kVhVRgdvG7xuRtAD+98NfecKmev4AP8Y/4mCZC4wV1MKrNJ9UzQNLYeS?=
 =?us-ascii?Q?Eauy9LN0x/kOWQF9Evt2fZbUEOLCH+6Vco0x7+Q/Tp1U0uFtqtGpb337KH+p?=
 =?us-ascii?Q?fBmiIkSzQTqivL78Qz7uhDSLh1TntFzwAwQiMdwcGpKe5QTF7dG4eoeOyIxC?=
 =?us-ascii?Q?s7qZLmSXarWi+dYyvy9NvDu30V0iT474eqSWvi/nXOcZS1ZOt27/bGrVmj/X?=
 =?us-ascii?Q?zezu97CEOIeyjlSxE+7vNxMxEpW+fLLAYnG1YJwzsj/kKgajREJSd12n8PtH?=
 =?us-ascii?Q?Yd0yRuXW8FLlASb15g//9QHM0RFFtZUR19ROCFSB9f8wSKj2ozpqIU8Fp0wc?=
 =?us-ascii?Q?5Tfz5s08Gz7EZPerOyjNh8UTsrzJ5+c0mTG4iB7gkJ5ZNChiDAt6vrIs5W4P?=
 =?us-ascii?Q?wf4itVED1knTZPukmRKP6+mf1Gw/fctdAIxGOcpve26caT75kqGFatE1q8W0?=
 =?us-ascii?Q?mRBZr9la7yFP+3WcOlPOyPdOKLfQOOchJDMESXGK6W/jE7nQV5AR/R7VBQN0?=
 =?us-ascii?Q?hHJ1D4pFNGTUlRne7ojbI223+Px1rEGG/6d2G02avBy9khCr1mUu+0sR2qGS?=
 =?us-ascii?Q?li6uQprThHempUN2H+TsQUY/MN3GJDFOZ0VCUB2FtkhyXXWlih6Z6+cfCHg8?=
 =?us-ascii?Q?SwDjvg3rB8krpjC9x7Hs0nC9lql11F7xKsvxV9LRCONKh2WRPuOP4Ho/4goG?=
 =?us-ascii?Q?38qbG65mkfcUZgpptYamjD+mZB2Z73IbqHYMGyd8jvnUTuo/g2+UQqRLVkf/?=
 =?us-ascii?Q?cMXjz0OAMJIqDg9lhUV0oJCSzDyYXHpOtYI4hqJs6MWxI42MWWOHmsaQIYBK?=
 =?us-ascii?Q?yKChBVSvGxUhOpavAlSftRv9MYu5ZxkUSrJv8vwVidTz0Qyrrjh30RJXMp/y?=
 =?us-ascii?Q?fzuj43bY/SDo2s67Bp3QMl/JGYD3yYIy5zhjUaTDfxaO3rq5fBBYrr/H0hS3?=
 =?us-ascii?Q?pef1Vp1t8jsj7oQUrbhWacrGNFpQPl0tvjgtl0qkFD05OhA2qutR42sRGE2S?=
 =?us-ascii?Q?BbtCJJGPzBU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(19092799006)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rSmdOAokLaPlrGZo4logk8PxsZBidmyRiPrRSyB4x6uS29Br+d7uMIQpBGVM?=
 =?us-ascii?Q?muVTNwSo2OxJnw3Qhe/zFYCDV34badv3pLEeki5z16GKsW7t0t1Lx3+FmCiA?=
 =?us-ascii?Q?bYkHvgOpL5YalVd9ymoZe8AtNPJXPMikAh0S8txoX9+Eb/ukfUcZnM6PVCTU?=
 =?us-ascii?Q?0kQIItS2L0LRaUlQwaGu5Etlg3fpUPuKCv7tML8HRH7joMHQnVz1BIMeOCHw?=
 =?us-ascii?Q?zKtG+zhEc6vF0+EMyHPW+YSLqO9pXjjCDW9iLvkFxACB0eE5QMsXH/GTeBPT?=
 =?us-ascii?Q?uh7hrcX2ph60cPVXuZx54K2sgRrw4L6lVNWjX0s3caMKzL2X2QokIx9NbVuA?=
 =?us-ascii?Q?c/l1zCE+GXgDkdt+Xr5qIiYr2LSd40casqtPNQw8FlxVBNAtZbFDR32WpGM1?=
 =?us-ascii?Q?XtQAJvXZnZuYqXq/y3AEkPZI755sNApo4nFm8SQTPvW7eM0FtsF8OGtBScgA?=
 =?us-ascii?Q?FVIHrfnlkH5tOKduO3ROOQEWqebdrIPA04rP9Uo/z45Ou4s0qyzp9/6DlLxi?=
 =?us-ascii?Q?lbfEo833eXwx8DbXsgCqcEjc40Quyhigx8Auob9ctlFAuSnT4Uq3nRXTzOU7?=
 =?us-ascii?Q?7JsGIOXa3e3eRPB7WrQh9nUlSS+IDLjpwyPsoIW2edf3x0KCa6oMdcQRwm3i?=
 =?us-ascii?Q?WZ20rEkt+BAwTPvZ8qhgTlkokMgGGzdvCg6n0suGQUAysonbyp+Tnhbg+m/3?=
 =?us-ascii?Q?lJmHYBb9xoulQ01R+pY3SrDYVEvvH8xfcR6ZPrgjpOOQ2Yc2Fdl1SxbDv3PN?=
 =?us-ascii?Q?RxkK+WS7WDY0748wsiB0XF9LnHK6swbnImg3ab80YPz//1S+127Eyc4UZ1sZ?=
 =?us-ascii?Q?AF9o9F/9+DUMeJmNi91iQx60N/edE1bXtjBEFYRNZrCf7l9J4QT8XHVO2Lay?=
 =?us-ascii?Q?7EFVguMx37qk78idaOxsWyEgsPT8jffFHa2eGQL2vss6y9UzbcDb+dX2RKNn?=
 =?us-ascii?Q?k/Zo9tBkNCJs5304PZZzdkxA3I41j5wKb2UMfHj0rMiIHx06yjRaR5r8//xf?=
 =?us-ascii?Q?c2QRDLdh9nXp4GxHA/ZHZLy1Hnz4DAkE41C8/aOo+0jiFCof/vx5bsqd9/tI?=
 =?us-ascii?Q?frIxXoVrop1IFihWv+acD2Gm2+SqqNoJS3kTgw22BqQ7POPRXZMpxEkQflRy?=
 =?us-ascii?Q?vZ0djm9qk4feVTeDyRoHl/xkk2BNdyvNWuG7j6wDAJ8EXkQXAiB2tUplS9ul?=
 =?us-ascii?Q?ZsPh5aEli2H6wzn/fbMMA/HiNAZ0PWw7xAelUUIlemPCcL09qX8uf6m0Rs/I?=
 =?us-ascii?Q?bnEX0WcJi8oaQbqFHK/miKRGq0PzdMr7ckxb1qh14P2EUMJfb7BArR303oe8?=
 =?us-ascii?Q?XRY4BU33E8Rv4IIgfg7Nf5dPvg/7K7zyHX2QMdrgW9QMlUt+UCc2lwRyYruM?=
 =?us-ascii?Q?dm3GfOEIfWm/oaenCm2GyX4XN1/FKqYdsOEq5HJu0VFExPmn3xdY0h8RAhoH?=
 =?us-ascii?Q?HlYw/4eOzRoYLPq44y2PR7xxXrhuVDQ/NtiFtAM/tnRLNuAfA5onrOcn1Df+?=
 =?us-ascii?Q?4eEwIR/n4NLDVbH2MYPFBW+doa9t+QgYX/vwFlBJ8p8OcL6NFV66I7NnKX90?=
 =?us-ascii?Q?w8vpxTQbssiNcAwYK629cePec5Km8DWbfl1KsWmkPVWsQZbUX4IlQ8kcO0yM?=
 =?us-ascii?Q?I0xD6k1JVtCD822zAOoi2UUq7LrVYbznkTwnrPsB8iCyACE7Xt9Pp7wakIBH?=
 =?us-ascii?Q?sZPj4Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad5c411a-90e4-463a-cdf4-08de32672062
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 12:26:04.0685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iBA2RJtHhsftF4cVmETZyv2MCrnxegU06tS+7wXTHjAtfL5jDeDtYrIvMwrfAc6Dftbu74zu8aY51yRz/SQkxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_042610_525768_0D27690E 
X-CRM114-Status: GOOD (  16.59  )
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

On Wed, Dec 03, 2025 at 12:41:16PM +0100, Tanjeff Moos wrote:
> I created the patches for kernel 5.15.167, and they do not apply on
> v6.6.110. Instead of reworking my patch, I'd rather use your work, which
> is much cleaner. Also I hope that it supports switching between SGMII
> and XFI, which would allow our "fast" variant to support all speeds from
> 100M to 10G.

The intention, based on hardware capabilities, is for the SerDes driver
to read the PLL clock net frequencies at probe time, and build for each
of the 2 PLLs a list of supported SerDes protocols.

The phy_validate() API function is supposed to return which SerDes protocols
can be used on a particular lane. Phylink in particular uses this
information to build its phylink_config :: supported_interfaces map.

In the SerDes, each lane can be reconfigured to use the clock net
provided by PLLF or PLLS ("F" = first, "S" - second), further divided or
multiplied by a configurable power of 2 factor.

Furthermore, each lane may support only a subset of SerDes protocols
that its PLL selection can support (depending which protocol converters
are instantiated on it).

For LS1046A, lanes 2 and 3 have all the required protocol converters to
support LANE_MODE_1000BASEX_SGMII, LANE_MODE_2500BASEX and LANE_MODE_10GBASER:
https://github.com/nxp-qoriq/linux/blob/lf-6.12.34-2.1.0/drivers/phy/freescale/phy-fsl-lynx-10g.c#L774-L790

but there is an incompatibility between your use case and the PLL frequencies.
Each SerDes protocol requires a different clock net frequency:
- LANE_MODE_1000BASEX_SGMII requires PLLnCR0_FRATE_5G
- LANE_MODE_2500BASEX requires PLLnCR0_FRATE_3_125G
- LANE_MODE_10GBASER requires PLLnCR0_FRATE_5_15625G
https://github.com/nxp-qoriq/linux/blob/lf-6.12.34-2.1.0/drivers/phy/freescale/phy-fsl-lynx-10g.c#L2273-L2298

The problem is that 2 PLLs can't provide 3 distinct clock net frequencies.
So you can either support 1G and 2.5G, or 1G and 10G, or 2.5G and 10G.

Reading your message carefully, it seems that you aren't requesting the
"fast" Ethernet device to support the 2.5G media speed via LANE_MODE_2500BASEX,
because that isn't going to be possible.

You are just requesting to support the 10G, 5G and 2.5G media speeds via
LANE_MODE_10GBASER (with pause-based rate adaptation in the Ethernet PHY),
and the 1G and 100M media speeds via LANE_MODE_1000BASEX_SGMII.
That second case *is* going to be possible, provided that your PLL clock
net frequencies are properly provisioned.

Look at the output from lynx_10g_pll_dump() to avoid any unpleasant
surprises. It should tell you that PLLF supports LANE_MODE_1000BASEX_SGMII,
and PLLS supports LANE_MODE_10GBASER. If it doesn't, you need to make
changes to your hardware design.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
