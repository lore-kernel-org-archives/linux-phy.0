Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CFC3CD98DE
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 12:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=II/9NPqCvhSziDOIdjs3n41PWO4EoDD15T/83ou1cJM=; b=mGRPbnX4LQ+tQH
	d/PRz22CHSUQeia1XcKOo+3Feh/kFy7/xOpA+YgO2kQDxlwtPAQl2jrGoWoW0Qc443yDMg97JU4Tn
	0R/Sw89NRbY6DAo4uNcbodTIrLCtsZrzFwFxtKTX2TxlDFISb2HCDE/nsgLam0tN8FLKNSBFLS1Fp
	WiXZk6/4fkn1lxReSmtcp3K5p/LgQAVdstjN/BdMH/7rtw72zkrMpDn8c63L9VnIhSqTdp71OI5lZ
	5mQCEKT519t8M4ioI1UMRREvQGAmQAixGnZ/IIxa9/mtIewLBcAsp3oC08Q03R/Jim1MBaQK5nY+D
	W+ANPzLxGmk6YHGbdJjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6f2-0000000EE7T-0wGk;
	Mon, 15 Jun 2026 12:43:28 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6ez-0000000EE75-18Bc
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 12:43:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uu9eGp9boINv5sKHpACUH5il6dNaJw3GDrZgoUs3tq04MOx3akBlABJWJEYEPG0ewXuA0EAQ1hobIYIe3WtzsH1FV6atzgUP1SjVD9V17JC91VhmBPPM7kkWM6Ic6MJqybUUYUiMghdpNPdiJFthlXIKOtgsOHMdz5OIosWF0EXIeljHC8JnjKHOrxzEgpm93OrlSzLnEsY77CpNUMwJwwhSbro0fvr+eCmKB5A2GuJzWodkEI3HRGQpM+eoKWjosFFquy4UupZ1QH8EfE74XnqOmgQmJ8s7IX5qF7FofZBYlB4hlsLN8DQJvRWz3Ot1H6+VD1F7r90Pv70DUXUbqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuXvBpUzQaGJo2Sb8zrGN5lSR5mYUUFesLAktRC+yuM=;
 b=l+DC6fK7ARqa0Bh25jjcGbLMKxgwmi/DKP2/vBRjnjiKDE3eCqo13tPCl9F4uGdcMtEwmQTk0b6bqkIl+Cv21Y8d8ztpQnWNGX/Eu9MJ4JX8/Sor/GKOdL+wq1Rd62Ggl1dwX4f5SPFDroDEjpwz7Qs0o3sJf/g7pVg5yEgXZ5yPqmoBvvQ/8XQUzbBYVUUNRGcvOC5yc93jxP9WxsZickDv0UsBBYmGqyfvlVazKqlP2Ccc9WpJ3f5aWedZD4qtUueptZzbAer01epFoD/GS6gdF4fCqA+Mx+qNyUv+udIzrb0Dki60o6duupcqFkz4W1RhOdpuE0IsQKrPkopt4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UuXvBpUzQaGJo2Sb8zrGN5lSR5mYUUFesLAktRC+yuM=;
 b=wE96aBzLtFjEBtlXTLnN4VTQDX0srkn+IRKuCXo5D6EZqu0Bb2XriWMnJwxJYRlXuSaWUFXtGK0XUmxdLqjB8ou9IW9WwGJttX04cMZWGtP1WFRCtJ2/l6pemRrMKUqGpMfmVh7LMZ45MbGlvY140idbVfs+0xhlmohF4NKD/Hs=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYRPR01MB12774.jpnprd01.prod.outlook.com (2603:1096:405:1b3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 12:42:59 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 12:42:59 +0000
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
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, stable <stable@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: RE: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
Thread-Topic: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
Thread-Index: AQHc+ngaWA394/baeES91naIfR5habY/YB4AgAAxpsA=
Date: Mon, 15 Jun 2026 12:42:59 +0000
Message-ID: <TY3PR01MB113460C85EEF713331411FBEC86E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
In-Reply-To: <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYRPR01MB12774:EE_
x-ms-office365-filtering-correlation-id: fbc1479f-d084-448b-44ac-08decadba194
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|23010399003|376014|366016|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: akckm7PoPBEbvpNzfs0WyIDJcILay2g5E4aCwrcpFGREeCtUjfoZAJtrNYT90YgqOXwzR9s6IVD4NvdNqrnEzLse22QiKultH6L0lRIC4HlhqMCDrsLu9lcNu4wASGN4eL+QjjTN4PHZnV5OGujCm+K+Qy3ZDOYvRvKxUsqkPII6kLxLTCWJH7qdgbYK3qnhhcLC1sLRaNUbz0jdsDSoqlIKh1dCJhz/7UePMEMvLvXnYiA/nHe4Pe5Nnxu+OGhDhbFqOufZEZYjOvsWql5rhiXmjI8vwBE4i4YGQ4ETXQhNOXHVRzzes55z5IVPqPzYcuKlzRdP6ojBjEnoLz4Sbs3auJSIgvquROHdMoyWVofa5s20pl0EehyfzURckLgovmECPWXFt3iI4HBchSpFZLlDDhiSHs9L+o2vuFSLmdkDVDTNH2SR6LmAV1Vq9mYS7TI0xBPcuvrp/HVasjs8QPYuDNSB/NV1AVNK58iAd3mVZOsJEaSK+QkmP4GkEWQzVAOd7ojxJgDN8wwRDulTff+uvkZYoI9YkOLlrGHy9vF3sJG9r1+MB1vnJ/wgWPEumn4We6Z9dLzdw8oREMBJaaBMlV0O+rvPRvBmalbSFCRF5fIcI85OzGQUcso+nP/EUHDjPC2WBD++PgGK8PyinqBhLKQcs0QY/a/5pKJNOiAaOKuAXPmuPNC1WKUg0aGoiso9wjluQHIgJtVGqYAO20Gnqb/kA9SUgISUbxU2+5rIf7VjGFGteBb3PMt+pRfA
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmpFakRTVCtFbnJkT2pTR1BseDFOQWV1OVFjanB5czlKY3AydWVULys3cFh0?=
 =?utf-8?B?Z2NSemY4cjY2WkppVjBITmlIKzlMUURyelkxNVF1M0xJNFFJaHFDaG0yRUV2?=
 =?utf-8?B?akcwU1ZPeGxaSnZRRHVWOFJHd2VtR2l1YXJ0WDJJS3VaZE1KVkowUUNsNmR2?=
 =?utf-8?B?NkVZbHI0T3hpNWRkQ0hjVXRHSGJKa1BzY2lZMGJjb2REU2xFT1c5SjB3Sk9n?=
 =?utf-8?B?OU5WMnZxN3lFSUdRUjR1QVNUZ1M2aGl4N1NCZElnNjh2bWZyMWNRUEVWazdH?=
 =?utf-8?B?Lzg3RmpzYmU2SEt0Z1Z1NnRSell1cWdaRUQ0NTNTRG92Q2wraWRsK2lXSDha?=
 =?utf-8?B?a1NCT3YwQ05OeElzZDRtQ293anVOa09La0NFQ01sVHJZOXcxRUY2WWVQTFVr?=
 =?utf-8?B?aS85dE5hRnM1RVdjQ2svUlQrTG1MQ0hLKyt5TDF5THNDZko0MG9UOXRlVWxO?=
 =?utf-8?B?ZXM3RUdmbUQveTF0RjlUU0xWVytEeFJOOTVnWWwrUWt4dWs0a2k3ZnNvWlhx?=
 =?utf-8?B?WG9MNGJHSHFtSk9Qcm5ObkVlQ1MrWTc4S081QjJqVFI0SXlpdjRnWXhuT3pE?=
 =?utf-8?B?UWtLajNjSTRVRWl4bEE1U2NZditXek9jd3pRd3RQbURRRUk1NHBCZzB1YzBI?=
 =?utf-8?B?TjY4a1BQM1FWUWFBQ0tZZWtkQjVkR3lIQWUxZGt0blkzZGZPdmg5czE2b0RM?=
 =?utf-8?B?UWZVQlZFWjUwMmpzcHRLdWJXMUUxZHNndU9xMllpbEl0VU1lakpqVVIvaE1C?=
 =?utf-8?B?Qm1LRWxWUXNqN0xVMTNwNTlHcklFa1NsVmJ2U1FSR3VGVmZucll5dGRCQXcx?=
 =?utf-8?B?aWl3emo2K3pubTJ0OXJmYmgvMkZPeU9yNTVHUmR2OUg2YVZmQldNTkliTmw0?=
 =?utf-8?B?V2hZblhhSnAyaDRMblBjc2lhTXcreEZ5M3VKT2VYazl0ZXptRk5HcUtHUmdT?=
 =?utf-8?B?QkE3SlVMOXBDMHdsM213QW5qNVJzRDBYNGNEYmZwWU5NSUtYSzBPaDJWZFVJ?=
 =?utf-8?B?aExsMlBuRDlZMURudU0wL0E1ZmRJU3FoMHVTcllnLzZ2R0h5akRIVDlDSXU5?=
 =?utf-8?B?YkE3UnBCcWlscGRhdmhWYmZITkJGUytoOUVjR1ExMUxaZXZybzhWYXhCeHI1?=
 =?utf-8?B?VXBOeGIzRm54K3VxcVhSTG9MNWZGNXNTSzM4MWdHZzBrME0raTNNNFNRMUR0?=
 =?utf-8?B?V2hDMzlVb0U3cDBPWVFyT05GcHpzYmJzaTNybklUL1o1S1JiT2wxUHFYT1dp?=
 =?utf-8?B?LzkzRWd1MENJYis4N0Z2elhrR21wM09vQ3oraHNvRFNCdkJ4ZDZNYmZRRHNY?=
 =?utf-8?B?WlRnclVxb2xyU3gvSTUwenNWZ0QyaXhGKzdlald2d0pxMit6dndVTFo3bFcx?=
 =?utf-8?B?c2QvbDZSdFZQaVcwdXpROTB6VDNUcnR6Yk9Cbks2cmI4SlNzbFJTQVFmR1Ja?=
 =?utf-8?B?S3pHcTdTalRnc1FnM1MvRmc5cFlXd2ZtM0VkMFA5Nkd0WFB2ZGdiWlpqMFNw?=
 =?utf-8?B?a0U1Nnp2ZkU0S05GaE5OYmErWlFPSXlHK3hxbWg3d2Z2d09XSkluYXVvRFBT?=
 =?utf-8?B?Mm1CTSt4RVhyYlFHckdmcTFoaEJnL3hNNFpoSHQ2NTBOcFVpM1dZMHJTT0kv?=
 =?utf-8?B?emFoU0lxU2xvU1llbXhMM29HUDZiOWwzU0o3MTRwQmVQOHAvQzlEaXhxeDla?=
 =?utf-8?B?UjA1QktlLzBNSGhQUUI1ZUtOQ1dSNG9pckVpMlY0WjZxeGhUOEs3d0h6VFFE?=
 =?utf-8?B?Njg0RkV1ajNrUmovWUkxK0RGYTFYdlpVR3A4QXBUcHB3WnZrVkxiMzRCTlJJ?=
 =?utf-8?B?ZlJNelMwb09uVTJ3L09mNmc2R3BYK25kR29aTXZBL1A5QTlQSWk1TldHR0tR?=
 =?utf-8?B?NGlOeVNkUE1tdkt2cWR4M2wwN3pOcDgwcVVhSWxheDE3RmtHZisxL1E5RFcw?=
 =?utf-8?B?T0U5WGJ2aHFYd2dvZ0R1ck9LaVNpMGp3bnhON1RQck1INGxhRWxxemdXNzhV?=
 =?utf-8?B?ekZjclJsNTVyaER6ZE1ndzI4U1YwQS9WMWhaZjNDRmlNQk5Ba3FMMjFkcG9N?=
 =?utf-8?B?TWlnRmpsTHFENEx1YXJDNHFsNjNCSTZmSEpOS3F2RjU3SkwxNGIwdWlEL3Z2?=
 =?utf-8?B?cm52WXhFTDAvOWsxQXIzamZRR2x0S0owYzVHYUZMSUxCVzZId3dWaDZDWWwz?=
 =?utf-8?B?RkdxVEp4VUpYTm1IekdZKytpZEFrdGZiVnh3a3hySVJMS2ZzRXRJdlBsZVlI?=
 =?utf-8?B?WG9TMU9DakhUem5JZDAyQ212eU1RK3BGbDU5ME84ZlNsOHJyNDVvbSs3V2dI?=
 =?utf-8?B?cFZLZzQ0bFBWdW5hQzcrZnpmNWZ4VVlPZWUxeWVZTnRGdkV1Sm04UT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc1479f-d084-448b-44ac-08decadba194
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 12:42:59.0266
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MZfL8Tpj9teqHHqV10nh87CtKKmuhPymG4umXzVmlpNzc+ACT+5hGpnQVS77if881XKLvUlIohMuqbwFPGXw2yvkaMmqOPqGVW+hidlgRv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRPR01MB12774
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_054325_478201_1DE9B159 
X-CRM114-Status: GOOD (  19.40  )
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

+ stable <stable@kernel.org>

> -----Original Message-----
> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> Sent: 15 June 2026 10:37
> Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled
> VBUS regulator
> 
> Hi, Biju,
> 
> On 6/12/26 17:30, Biju wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > devm_regulator_get_exclusive() initialises the regulator with
> > enable_count = 1, requiring the consumer to disable it before release.
> >
> > Previously, the devm disable action was only registered when the
> > regulator was explicitly enabled, causing the cleanup path to skip
> > decrementing enable_count on device removal when the regulator was
> > left disabled.
> >
> > Fix this by always registering the devm disable action when the
> > regulator is enabled (checked via regulator_is_enabled()), covering
> > both the explicitly-enabled case and the initial state set by
> > devm_regulator_get_exclusive().
> >
> > This fixes WARN_ON enable count during regulator release.
> >
> > Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS
> > for RZ/G2L SoCs")
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> 
> The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] for logs.
> 
> I applied this patch on next-20260610:
> 
> git log --oneline -2
> afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS
> regulator
> abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next specific files for 20260610
> 
> [1]
> https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819ffeabfc4eac772bd/logs

This issue is introduced by the commit

eb9ac779830b223584 ("usb: renesas_usbhs: Fix synchronous external abort on unbind")

WARN_ON(enable_count) is related to regulator imbalance during unbind/bind cycle.

The above commit changed the code flow from

usbhsc_power_ctrl(priv, 0);
usbhs_platform_call(priv, hardware_exit, pdev);

to

usbhs_platform_call(priv, hardware_exit, pdev);
usbhsc_power_ctrl(priv, 0);


The function usbhs_*_hardware_exit(struct platform_device *pdev) sets
priv->phy to  NULL

and

usbhs_*_power_ctrl() has the below code and [1] is a dead code now after this commit.

if (!priv->phy)
		return -ENODEV;

	if (enable) {
		retval = phy_init(priv->phy);
		usbhs_bset(priv, SUSPMODE, SUSPM, SUSPM);
		udelay(100);	/* Wait for PLL to become stable */
		if (!retval)
			retval = phy_power_on(priv->phy);
	} else {
[1]
		usbhs_bset(priv, SUSPMODE, SUSPM, 0);
		phy_power_off(priv->phy);
		phy_exit(priv->phy);
	}

Cheers,
Biju
 




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
