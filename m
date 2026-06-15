Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60ADCD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 11:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8vxy60lqdsEafDjqiaYLwNpQSlz1SVkO2fjWilLCO0=; b=eY2vVJclu8pw5Z
	KxAdt2Z3OKIOwPLkmNx4xNKCL528JxUuthNoINJLhqpngmqo6Hp7vo+BzkUBzczg332IE4ixkJqpY
	CzUjmX6857UDrqeeEemSbORF6V+Yr9eiJ/T5hRcG8HLru5CtWkuOxOddgKkUNDxkWjCxOjmJNjWYG
	cNj2CrCaPwjcDj5zzoDm2tEuoPIOkolkQaY3eCVq89hM2gnT12DZNyHVHSIP2DcVdoDYMo/Fvg0RV
	UVytcuuOESjjkGCMPNaFUtcaktF1SkQp9oD0iyfrkMIWKDpaEqmxxFqKYqRaYMLfpu6kwHfz1QHxI
	Hs/hXE4faz9Wrr2afvyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5hY-0000000E78U-1ujN;
	Mon, 15 Jun 2026 11:42:00 +0000
Received: from mail-japanwestazon11010025.outbound.protection.outlook.com ([52.101.228.25] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5hU-0000000E782-2yp6
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 11:41:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T9mGkk0OgSOO3VtPH8cnmkrlTIRPnBvoiKZLCh/3OMyGkTcM85FrNaF+L8efSiOcDVwd6LuEylcC3aIdN9Vab/Lu1TOpcd+393DgTUPjM6A+yygpnrP6Dn4aw7ide18XG+ux5MPWpB7mJ9mfNWNfRYK73euTPciEJlxA6LIQqFxSpKgoLFApTjxXfHX9XlT8RIa4Vek1F5OM1NSK/4R6KyY/QRgtZdekpy2rAjf+3nLhIL7wdvz0Mp38peQ5H0sRkgMxqSODFLpJwd0uct5TF02wZDS+m/9ofUSGOctDb5C+0vJRsdWiFnsAVRbeGWKvzGwm+bjMSsRVkaJMavwZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rYntbbQk7LlFQqSyApVxiMuBAtuIQiZaKDFvId2fIIQ=;
 b=nz6kjws/4IX4BcSbhXwagFltEKbfXZMSLBkV2Kn9mC8aNmcNBcSQ7ImFGQMlhp/Ze2vjtjiS+2sUwbqbvAjXADaN7YojHhUTtpjRddUG2rQGeyR0GlgNvP9I+AzvoRzFgpsUPlL5UF6gLjhcmSeIw5K69MlXWhwRyt2RoNHYH6atPs09az1LXa76zLTK4rzkT8+K83gpwC10pSYteezx/gEL7Ic2lzoImjVR6/jNIvUlEryz2lWiHQ5EtFWybTx3bA5E5mfuDS8Uy3YwVlZW7BmI/bPt6O7V/mnbu3ONqntsjnZXuQFezZJTG4oFKvFaZtd/W+XIpR87ROxDy5kT+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rYntbbQk7LlFQqSyApVxiMuBAtuIQiZaKDFvId2fIIQ=;
 b=AE2dAJDOIm8qF4np/DUzO1nDcKmi5PzTtOrj/6iA2hSw6nbPKL4ZYXk1i0Dr//70VnlXiG0RZxT1uZ4lr5zkVwFKGTDX2iYBUdcSAcrX+BM9OCqFGZvH2bDhaSkloCvKrjMn1bOvAaM/WMMGqwgEzy2fOGAt+C+HlaovPBhLPp4=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TY6PR01MB17860.jpnprd01.prod.outlook.com (2603:1096:405:346::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 11:41:41 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 11:41:41 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, biju.das.au
	<biju.das.au@gmail.com>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, magnus.damm <magnus.damm@gmail.com>
CC: Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
Thread-Topic: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
Thread-Index: AQHc+ngaWA394/baeES91naIfR5habY/YB4AgAAHtfCAAAiJIA==
Date: Mon, 15 Jun 2026 11:41:40 +0000
Message-ID: <TY3PR01MB11346698F20EA409B2481D51486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
 <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TY6PR01MB17860:EE_
x-ms-office365-filtering-correlation-id: b0dd5db4-3aef-4516-d0ca-08decad3114d
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|23010399003|376014|366016|1800799024|56012099006|11063799006|6133799003|4143699003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 1gHKH0eNBHpW056lHxe20Sxhx2iauvwTbtTAR+mKRTPXrUxrndNX00RxYHWx0uWr+f3ViLPL7kY8OGGK46wRhsj9jkTZGFVlwuIzXfAgtVd3RRQGDxCQ5HfQ+hYleSqrpyBv4fTxDc+54O2dW0sOU+wtSeBIx4HhMk6rd4Mwfnl9oCcML/z9jqPV2jrVWnIfWKbEA53dz5JWj5vBDw5tkXZOtseYlOMsIKqyLE8SO4x2TRMifccvt3r0NjyHsnVd70lws0cSwzU1hyibfvox9h3GaefwFqv1H1gZ819c3nscPzgw5Mp2z691HOM9x54wKFTzLsKs00pTsMkj6e6KCB0RF0D3LakcecH5w9t7qg2qYchW05ZxseSVNSdDx1RBmT3zMYtVesd9X506vgszOPBymn5jOJYGlzboXjQHNh9BPzDZhlS/BBK1qufAHo6i4U/uEEhYGzVo6ezhU+GMSSxJCxeuhog1ESP6nEiY3r6wo9L4azxl2bvz9hFDn+eOiXXkSl7k1elFBRwUqLB0c7KB2GS606f6xgrccsrMgGf7ITgjWVtQo1BE3XeRKEoXSqpkMgAVzwY3BIFBbELcJf0AyffX0xJMP0MfTn7PUfpv/h+xtWmmIcVS1lHlhrsRE9goQN8S84haNAr4CBtDSosYO/iJYDIiGr/I4KTsBSZk5sMYX5ETULtm6cuPfk876euOe7D8ESF0d9vJDqv0dzSCeR6kx+OT0xTitryjhKW6Mi0CdwJ7PgKU2xd08Zbw
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(4143699003)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlE3bUFQRk9FT3RPTXMydWNTcGtMTjQ0dlJlT0tIV0twK0xvN2pxdCtXUDNO?=
 =?utf-8?B?dXFJbEs1c1N5SEU4dEllZTdFM3lrSTdYT1RwYm5IMTdhaHp2ZndPL2tvL2k5?=
 =?utf-8?B?VjEyZjlXOFpnOER3YVFmaWhrdklXU1dkVCt4QXZZVTd2VWJ4bml2d1g3MFNo?=
 =?utf-8?B?ci9EMFh2RFZHMGdEekdUMTJESUZTZ28yaUNkOVN1OXZnd1YvTXRyaXZlVTM0?=
 =?utf-8?B?VnRxRG1iSXdhTVkvMmFLTHdIR1RjdnM1MldHR0Y2TXJiS3NHcTNrUUtFNDBq?=
 =?utf-8?B?RzJGOWc0UWZibHRMVDZuNm5CRUFTWHg4d1FDbWlPeTVwQWp0bUZnTFJpaERr?=
 =?utf-8?B?bmxVVFdQMDJwbE1PZ2F4bkd1Yld1ekxMbG0wc3g0U2ZHdlZzU3lNQldpY3h4?=
 =?utf-8?B?eUJYZzZhejY3V0JheGhIeFVGcEpJTHZ0MG4vWUozcDVReXUzWVNZbDlqTllj?=
 =?utf-8?B?K1d5WDBuMFhQKzZDZTNFU1lQL1J1SUVEVTZyUkVrcFBsYnhYejhtUXdPaklv?=
 =?utf-8?B?SEFyZ0dUR2syNUdPODZYOXh4eGdoMzdDVUR1cGxEK1o5by9qcXJ4RlFXZVNp?=
 =?utf-8?B?c1p6bEVqT2oycFdTakdwT1IvV20rbDB1TnFrbnBMcm1rVHlpSU5pKzNxeXVp?=
 =?utf-8?B?bmZucXNMODFaczlOSFc5YmhWZjZiTzRDZXBadUllVEtyMzRzZzJOQklSR2hh?=
 =?utf-8?B?eW1EblR2a3FQKzZ0NnU0ZnhBcGFhSFBKSHV0MXBiU1dZK1FIRlFNV01RalJ4?=
 =?utf-8?B?Zi9JRHhFTklWVmZHNlV5M0FwbkpFUm9hNEFlbVY1dGR3dGVERkpFQWRDQWhr?=
 =?utf-8?B?enBFbHV3a0FiMDNwWjdCbXJyNXhqSGZJYVNRaTZnQm9yVVdidFREM1IrZXAr?=
 =?utf-8?B?TnROT2x6cS9UZjlrd3krNkh1akYzT2x1cFZBOE44R3ZuRm5rZkJWYmFmY1d5?=
 =?utf-8?B?MTJkajZWeWRjeXZEYTlFRVpraCtSdm5HY2R4RkFKb0lrSXE0UnRCK1NYM0pE?=
 =?utf-8?B?YU5ndEZQdDRqY2FwVkNLRVg5TGF3bUVwWkkxMW9uS0lTUmZCbDBQcW8yOXZX?=
 =?utf-8?B?aE1RN1ExbzZJdnYxaGFjUFNaU2FZOGlhNGJ6cjQzSlk5MUg1TFFER296ci9w?=
 =?utf-8?B?VVF4TVhYekRNVDJRS05XSkxublQ4dU1TOXExVVMzWEpQU3lXZDBBQzk1NlRI?=
 =?utf-8?B?dC80aWZWL2JYRnM3Qjl6cmtYUWJhSGZpT1BKZnZMcEJ0bXFad1ZwTFZwY2V3?=
 =?utf-8?B?VDAwaXdaUUhZM1FQcWFBSWQ5Tkc2QWlaalpGZW14V21oQVhGOSt1SFN0cDBL?=
 =?utf-8?B?bGFWTE5memVzVXQ3Zk90SDIwMXFWS1YwdVV3eWtzeGVwY1dhOUZkSUFmVXI3?=
 =?utf-8?B?cTNHS2F4S2JxNnNsZ1ZldGtBd3VBamZYZ1ZMVHlEazNBRWpJUG5qdkRUODR2?=
 =?utf-8?B?UXc4aGNmQ0VVWHFGVHZGd0RLR1Zrd2FkbWQzdFlvTG9QVjFWcnkxR05DMytv?=
 =?utf-8?B?aXhTWjI2elYrM1ZYelhZTFV5SitvQzIySlpPdm9ZNzBMSWhpakR0aXNrZHQr?=
 =?utf-8?B?dzN0MWdKVjdsb08rbi96QVFQTy8xTDJVajJPZ1pRY2JqOEh3QmFqSGpxMy9o?=
 =?utf-8?B?U3EwTFl4SjdpeEF3TEFpWlJOUzVvRVI4eWg1R1c1VjZOTlBqQzZIYmRueERM?=
 =?utf-8?B?TWF1Umw5cjhJOTloS2g5MXhabHI2S29hREc1UTFxN2t0eTQvUmtGOFRWSXE0?=
 =?utf-8?B?MVAvdDVDN0JCejlVK21Pajhmc3lZbmJaQ3RJWXJTNEpkd0xqMkFKUkxyLzNG?=
 =?utf-8?B?NkxtakdHTjBQUVhUclJFS1BFdHBKdkx6WE1XVXNhekoxZ2JnQXB0ZTdUd0Nj?=
 =?utf-8?B?MTRFVEtybkxYRy9Dcy9UdHAxVDJuUW5QRm53MSs0NDdBRUNTNko2b3RGbG1Y?=
 =?utf-8?B?L0gxaEdGdGlCaU4waDgvQ3VDYTNDSFd2bWFsYk12ZWdzQW1rc21LakpUclJ1?=
 =?utf-8?B?dWwrSW1wV0NTZ1ZzbVJKZHhZVE5kWVR4MEhDZVVvTGNscVRZZkY0Qm0wSWNF?=
 =?utf-8?B?Y3dLaDM3VHlnZFd2MjBjV1MvS1J3MFFnU1ltMnZCVk1FMVRmeFhwbEVFOU1y?=
 =?utf-8?B?eUJjcjlFS1MyVEhZb3lrbTg0MDNPOEJHbXJPQnQwK0RWMjZZTVVrODl1ZkRr?=
 =?utf-8?B?VjBzaEtIbmZOOTI2aHdEZ1QwVFZFcTM2YVMwaFNMTzc3TVYwcjV4NjY1UnN4?=
 =?utf-8?B?Z0kvaHVTRWNxNEFHdUQ4SW40YjlydGt2dVJpRStEM1hSaXpuek1WVGZkL0Vj?=
 =?utf-8?B?V0lRZW1iN2ZtRXQ2VHpoaVJMeEtUTG5DUHlNcDlIcHREaExWM0RDQT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0dd5db4-3aef-4516-d0ca-08decad3114d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 11:41:41.0285
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 786HxB5CciylvzXkA7igSWFtYP6QgXxnu3HwM40K4JO5aWxP5DosT8m0KheBix3XCI6N3eNc5RSolMLF0IMi/sHTHGu4fwatEpHw0cZJYHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY6PR01MB17860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_044156_796973_DDB8E8AC 
X-CRM114-Status: GOOD (  25.57  )
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

Hi Claudiu,

> -----Original Message-----
> From: Biju Das
> Sent: 15 June 2026 11:22
> Subject: RE: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled
> VBUS regulator
> 
> Hi Claudiu,
> 
> > -----Original Message-----
> > From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> > Sent: 15 June 2026 10:37
> > Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm
> > action registration for disabled VBUS regulator
> >
> > Hi, Biju,
> >
> > On 6/12/26 17:30, Biju wrote:
> > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > >
> > > devm_regulator_get_exclusive() initialises the regulator with
> > > enable_count = 1, requiring the consumer to disable it before release.
> > >
> > > Previously, the devm disable action was only registered when the
> > > regulator was explicitly enabled, causing the cleanup path to skip
> > > decrementing enable_count on device removal when the regulator was
> > > left disabled.
> > >
> > > Fix this by always registering the devm disable action when the
> > > regulator is enabled (checked via regulator_is_enabled()), covering
> > > both the explicitly-enabled case and the initial state set by
> > > devm_regulator_get_exclusive().
> > >
> > > This fixes WARN_ON enable count during regulator release.
> > >
> > > Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS
> > > for RZ/G2L SoCs")
> > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] for logs.
> >
> > I applied this patch on next-20260610:
> >
> > git log --oneline -2
> > afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm action
> > registration for disabled VBUS regulator
> > abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next
> > specific files for 20260610
> >
> > [1]
> > https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819ffe
> > abfc4eac772bd/logs
> 
> I have tested only with RZ/G3L host and I don't see the issue.
> How can the issue be reproduced? It could be related to RZ/G3S.
> I have executed the following tests and don't see any issue.
> Can you please try the same tests on RZ/G3S?
> Is unbind/bind ever worked on RZ?G3S previously?

Looks like your issue is related to USB function/gadget driver related.

I was testing with USB2.0 host and I did not face this issue.

But after enabling the USB function, I can reproduce the issue you mentioned.

Reason:
rcar_gen3_phy_usb2_power_off() is not called during usbhs/gadget unbind.

You can verify regulator count with 

cat /sys/kernel/debug/regulator/regulator_summary

Cheers,
Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
