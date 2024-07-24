Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CEFC3DA63
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jul 2024 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIT8O/nZZw/BvWMxhQU1BY99gHpF1b+/hXjE/LVPT3g=; b=RdIABcXlGo+LNc
	DwP8GM+pYin9Z6+pNBqreyIU0unIWS0vCsuc4k1dLzOazeuk2GJUjAVlhu44I3XeaPtnss+GasBtW
	UZ5PDcAu6455k8WKHTW+nk1wUT0jjaNUfxATGmbgQWOhljIyow8YHu88V+ic74HZiJtzeYd48LPgO
	38BriSZxA02O/4sPrGAsAMprpwz7c57rNAsp3KGDllpIXkYbOGw+iFB6Eqc84jFdq2ZrKElUBt0/N
	ffFEGV7EsJwlkBhKkY5/+gPTuE4DwtzTSIMHXeWFmZ4wnneDdGmJ4bO6KbHHRPF/3AzL6rjMAzOwH
	0g0MzdU7FpUG8kAosgNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWQrQ-0000000E19d-0DAp;
	Wed, 24 Jul 2024 01:32:08 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWQrM-0000000E18j-0zLV;
	Wed, 24 Jul 2024 01:32:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=az/ENCY4RQCNU4UNEjLuhmrbypuf3EhqXDQxJKE7+UiBM9INIhPP1OnPZf5laRIL/YQWVhbUVR3NZGi5aSlGgYYHg0erJAvQrfnzQD+YLFzBgAm8pvZqkI1hSJOO6rPgKh09rBoDWuHJASrs04o5j+0oz6iwuEK2WYJQ+y3Rt5AjD/ulvgvZ1H7yI2lBKXr9ln2jEVFJXLXH6WXMWNkhaLAm31gJXMmIEsC31Pv7fvwWewItxoOGfD0S2gTwlGaSdhAz+8FIjCHr98a8nldr0q7k/4DYZpgTWReJFdtK/V7ZrHum8Fshsr7BkXSUwh3ZFeM9WcgvLToXbugJFsciNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c2FHu6AJ52czJOj/CMFy/JrimHvSwNXvzncKCJZoyrE=;
 b=AD9HZfevAVjyKpPXj6+d5jvixg64eYuNjhFIAKk7UbtJaKZzJEqhTDirwRMUwAKUwcxdixoBARDrQRW+p0DCzVD675v/aGpqoYBt12sDiOfjlgUJuE+6p1St1vwfS8GY8OGU10aQ2BiI8k/VV6zlA6tivlZa0S6uAjIv7G8WZGbf0FdfFe5vQbKagEBj9y7YjMLzLd0qpZq3bGcfm3op79X1WGEZImc3YH+CCitS+QtU1CNrSCMdYG5Kp+f2jvGZCEhXotGd1UUsBbN9s1y5+fWVKz+VCkHRZqvnj0LnjISHzpVc68CypV9xck4toSrMJOQbnkm014ALrPvtRURVVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2FHu6AJ52czJOj/CMFy/JrimHvSwNXvzncKCJZoyrE=;
 b=ii96iyC3mgMAsBGFKqO7xQl6/9y3mFB+u1kOG39krSgEW+LKcGFf7yNX6knZVAJ4RO0UF989KPD/ojfhqEPpM5RIev1eWNfgPfDY8CRj88EArC0Ih4kb73+bUChxOWzfs55xWSPe8xqbn22MaoFNawI2+EJxMWx8nWKAnElHV8Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by AS8PR04MB8882.eurprd04.prod.outlook.com (2603:10a6:20b:42d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Wed, 24 Jul
 2024 01:31:59 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 01:31:59 +0000
Date: Wed, 24 Jul 2024 09:29:24 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, peter.chen@kernel.org,
	herve.codina@bootlin.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim property
Message-ID: <20240724012924.5x3xe5eosvtfyhhg@hippo>
References: <20240718102637.3964232-1-xu.yang_2@nxp.com>
 <20240718102637.3964232-3-xu.yang_2@nxp.com>
 <20240723025110.GA199927-robh@kernel.org>
Content-Disposition: inline
In-Reply-To: <20240723025110.GA199927-robh@kernel.org>
X-ClientProxiedBy: ME2PR01CA0142.ausprd01.prod.outlook.com
 (2603:10c6:201:2e::34) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|AS8PR04MB8882:EE_
X-MS-Office365-Filtering-Correlation-Id: 4009b9da-8067-4542-e6b4-08dcab806904
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|52116014|7416014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tfOgUbkKsgVAy7/Xjt4Pq+9/AHq8hptsAccAWYWHnY6bEWUV3ur2wQSY6KeT?=
 =?us-ascii?Q?xcM8F6KDWa198N0c4RNyLi0pBg1ck+5nBmplQfMLRg4X63lpzmicNWtnfl+F?=
 =?us-ascii?Q?+SUk8orePHx2+LVi6Dk1u7BlDSglchfSQiHoS5/ryIMtMJQkFmO2uYqJTnD8?=
 =?us-ascii?Q?BPGgDZAx3onIkGv6/fh1JwDmtXs3FBfTyvFi0FstMxpjRUOUpt3ZKBJZNApw?=
 =?us-ascii?Q?M2R1TrslmOCJeEq3UL/p54EqaAbzA5lGWw0sgGtJP2yxXe0b0dcuH8ngAoFY?=
 =?us-ascii?Q?Cl/chFUrivaTTaOGxxyxcRcKhATOsd4XPFbLkntH6KyhXIaZJzoXw1+wNKtn?=
 =?us-ascii?Q?iy6L0A4Zp8+ICykHVV6n/I9x2fUSwvZnRYqblopMdx0hNm8kAlwtyn/hUFeT?=
 =?us-ascii?Q?2uOUE5VzQG8zrux0m/TbcvbkqA53FJM/ErnZcIDlIt24Oz8wJs2MSycdLmzC?=
 =?us-ascii?Q?ploOtX285u49OSsdHiuJkoS2NKINmONJsr58cGCure+hzn0ihArd/4cYV9Qf?=
 =?us-ascii?Q?q1IwVhG5cNvjS/YFfEzj+xRy/QU1j7SKb5QGA+sgC/1Q2EThaTzDSjF03Mnl?=
 =?us-ascii?Q?GaTM97v0rUo2GNiaBu9xru88HZk1a9fS70uvrzekbEoZuuTpQMOsMwBoqCKr?=
 =?us-ascii?Q?ALn7f5B78dEzyofsiBECK9WIrUikWoHvN3HEZv4TLS+zf1VCYhnzQKax4+Z6?=
 =?us-ascii?Q?HwgEOgAIlafTyzzW56wRI4ln88Iv2WbmGdNF37w8gAjWVqSf8HmShI7fKnA6?=
 =?us-ascii?Q?u6P49+VSQasTpiY7F5jhwCGs5RUc1PFeCvyPoVP1fkhIJ2TEkEF964sgH40T?=
 =?us-ascii?Q?DSTpYyin76D2xJlCGKwTnfY9s14Tpz+Akz4G/86Q4gpU1Z8wbVUg87X25/0F?=
 =?us-ascii?Q?Gf1UImIE0YDTPGyUS7TFYP19/AnY4My/elTLeVE0S/Gs8l4brMK1kwlz2NeC?=
 =?us-ascii?Q?uQ/pHy9nMeqYJ4xZdcrlCJhlLudzvkKZ8Nxiq+8hIn4FXxGDdcJsl4FNE95A?=
 =?us-ascii?Q?DUsQEekjISKQNhCzJewwbK7xjSI00TCLx8/BVYHDubVJCMuFeU0UIxBXe2a/?=
 =?us-ascii?Q?XTX7g2ZsXE4sdDyoTgpZiRfif5SbvRnEhPQzqw4glmumpN3rJwaIVpJUWUq6?=
 =?us-ascii?Q?TlpViG0VcXLtWrPt5jEAaumpClEFbdtBV6vzjXnKM3cZiOpJ45AOmP0tGZWk?=
 =?us-ascii?Q?7gppCN+RlCJ0j69B35EibWNAajzoQASCzk5ygMG742I1iInhhZHYssZeiKwn?=
 =?us-ascii?Q?MmdxQpEjyGieASHz8iv5b7VhcqgaxSjoDWmtZs7VutTm914MLYeenAWKUGI0?=
 =?us-ascii?Q?8JaHPmj0fv9WnbG1jGICA8SoNtqaBwGXvQbHcRMbYoQfwOoiryOfGVStqzm1?=
 =?us-ascii?Q?AvRsIy8lsw5O/cs0pC5Q3tl/aeEWA0VETJdwu00cOq0P75duWQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(7416014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZTwB+zkvdw2WzKMAM76j94z/sy5QGWChSzG4V4zif5XIpUTVf9WssxqXazum?=
 =?us-ascii?Q?unM5QIC+gKPNUOrJUPvDd+aQwEoEzM1z4pLuC4ipoFcrQaPLrrtzHSt/vgVi?=
 =?us-ascii?Q?e6CEJPW+yiUXiMN9mNbSyxyGdseReT8+o6eK5fxTck603kN6yS01TUydHwNW?=
 =?us-ascii?Q?b8zKpjpEV7gX9yPuJWJl/pSVdwOUAfhNyqqde3DTl1jSp08DxAAe+AgRXbTf?=
 =?us-ascii?Q?3Kr/jmuv/3AATE2sZhBUzUjUeHYrPzkuYxpWXLeSY9E8ENGowNBmOW7Sxo+5?=
 =?us-ascii?Q?l8lhdInxj5JD/CBzrGFChNNx+GpxUfemiqn9bJcErOLLhgRUpHfPOLv92geR?=
 =?us-ascii?Q?+GMaivmvNygzoJE1xbj70C0Rxl/Xp3W/qMkb6jiLPrZ7p7S9NIFedTBrfIho?=
 =?us-ascii?Q?qGCx+ppw9QCCFeCeeFLw8YW62RGtsbdVdlDbOUQVc/CosCLoyKTdPfHK7TkI?=
 =?us-ascii?Q?AFb32j2hB0DyGKGdn1GVnULH0Fmk0VTVyzBS1owZMTxDv4my8hL/Bw04m3ei?=
 =?us-ascii?Q?SCO77GvrlkzaBwFvkJJClLjcqONEo+55M+AIfoZ+6R1iZ7f529nkfTgkPQd4?=
 =?us-ascii?Q?uhNss21UOvYFtl5E+AI2F6leyqUrtkl85zNyhGcZaWNHGC44Pt5rpijsdsfx?=
 =?us-ascii?Q?/Sotzse1nRnwdhQZDl0kroeGsFQ82LkFXJun7UOnmPyAtITybyVd+2U+B5i2?=
 =?us-ascii?Q?HCL2KsgYaveb0VfJUy0W4A+8+3kZP2rPTL8QLG80VR7tq359w1He/Ymu1Z7B?=
 =?us-ascii?Q?NpaF0+VI9sOgETrt94kSCxWQUu8dx4KOHkBEkeMiock2whQIBA/dByF2Y+WO?=
 =?us-ascii?Q?Ccx4jBIZMYeblbe9tPNyV/CLdcha2dPMK2Sg/BtmO0msXCvHfIZfnp/9CZjK?=
 =?us-ascii?Q?fYOi6x3dESnIu5SfJm0QCSgsPswyj1NfvftRyUOVJoi4etY7/kfPE22HOft7?=
 =?us-ascii?Q?6n0XLKYgvraXrr0U//+x3/8oxVugsBu2jUxJ696fC0wCZCzNPRducnZQHkP2?=
 =?us-ascii?Q?U3NEHtWJaYS/tMp8hfRF/+WdDrJcVVpICIXFcjZZIIW1jAL1j5epUBspqNV2?=
 =?us-ascii?Q?fgzzZL1PGlv14rIkRKAbaLXUQV1vnZBrCdg5/hNORGOS0ASQI7iOI1eOz4U+?=
 =?us-ascii?Q?cYK8Z/usjtH8prLViWOwFCDBCwlPKz9NueQf/LJmAuSYYQexECyhSodTlWra?=
 =?us-ascii?Q?sp0D7e0JTVeFZ4JoV55k+6zO3j1WzOtAf5nr6C/LyK8ANpa4EW8Zri1oDepj?=
 =?us-ascii?Q?I2pNAg3lAMdySOTgywilx3F2P2Wo8aPnw9xfJvhccVeaYqhgVq/zL1MKKWkj?=
 =?us-ascii?Q?TAlWQRvVrgba2INfIG3qb9M2QGHQ/g7M5gy5x8hJA6M3LsLUzOt/H6wxOuCB?=
 =?us-ascii?Q?7MmLIsTPfAmQJvYSZYbyXnefymaI9FoNAEcP20zJx+bFFnuIYtN7BFT6+anz?=
 =?us-ascii?Q?C5xIz11kE/nyx/fHtBOjtAM6RiuxZxlCUWycgtiRgdULeWSb8LstkxLsLN+d?=
 =?us-ascii?Q?eUiySox9d/OCU5AmImQ9+wsFlZ/7OTuhAWaFUs+zG0lLUmAMrzGBfHPOogmn?=
 =?us-ascii?Q?+WOlmHppeaddv3UfGv5GAVSuqialZXM/sazxtn55?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4009b9da-8067-4542-e6b4-08dcab806904
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 01:31:58.9565
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ek0rrxSV2XvpWuq8cDG3Cjl4r2ysgdHmw/WtD3Qg95sfIA08XisinPRTvZxqjZxfYfK3fHQr41g7zSOINsGcAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_183204_303679_06C83D2A 
X-CRM114-Status: GOOD (  14.50  )
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

On Mon, Jul 22, 2024 at 08:51:10PM -0600, Rob Herring wrote:
> On Thu, Jul 18, 2024 at 06:26:34PM +0800, Xu Yang wrote:
> > i.MX7ULP need properly set System Integration Module(SIM) module to make
> > usb wakeup work well. This will add a "nxp,sim" property.
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  .../devicetree/bindings/phy/fsl,mxs-usbphy.yaml    | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > index f4b1ca2fb562..2141f271f8f1 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > @@ -87,6 +87,12 @@ properties:
> >      maximum: 119
> >      default: 100
> >  
> > +  nxp,sim:
> > +    description:
> > +      The system integration module (SIM) provides system control and chip
> > +      configuration registers.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -110,6 +116,14 @@ allOf:
> >        required:
> >          - fsl,anatop
> >  
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          const: fsl,imx7ulp-usbphy
> > +    then:
> > +      required:
> > +        - nxp,sim
> 
>        else:
>          properties:
>            nxp,sim: false

Okay, I will add it.

Thanks,
Xu Yang

> 
> 
> > +
> >  additionalProperties: false
> >  
> >  examples:
> > -- 
> > 2.34.1
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
