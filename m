Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15997FCD0C4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 13:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vFhi+utsbrHK+es5EcKgkt6KsCoZKzYGAIqXRoxzYo=; b=Lshc4DjUG4sFLJ
	mRwl4ftYYf/qReA/03NxRfF1pGW3AthH40Ye6QkiAUYlEvkdim/Hj++8LmfDOyCPX4YsTwUPa72dK
	OVc0nbT+jtBZ1SDASDpLmfHDO4bISJjMwtTF9xlMYnWtwSLFOYRBCmZ3vp/AXa+mo/5QEeoLpIANF
	ZPRK0LveJw5aF2UlFxQrOdRCwPArmMqNA3V75qPohG4SpnP3+a1YT7JKmN7rkxvj5vEn8vM0Sr5GY
	FERm0OuSCftSrNCWMpvY+0cAwr1cz9cIUd2pbBgBbmirWfeFRUnYjlzC0bM3YBx1sowB8Q1iD4+8z
	n2NOhH2Pfx4EKHrnlmPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qdH-00000008Rxs-25Bs;
	Wed, 18 Mar 2026 13:08:19 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qdB-00000008Rwd-0iDH
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 13:08:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ca7jJqx2n9oOzkzP7Rc93s63fkcX/qfCo71Cupcwahuwc3oRYlo6FcSyTCUE21qmNSyCHZAxWw5lL5N4G274iR9OyiMwoo9qaWgvetsb16781kM7gK46i3etyYSVmRRjTg2R7kgKksw8pw7ikevn2itftjs3XDhlmvXhdVKTRVnfWC6EYbdCU6y5XhveLSKEUh206sO0mIJnqZHvZlJc6vdCJHXXD5bdJ2t8fsR7X/q20gz4bhZgMF1wWdVjr0Q9idrstvOUpNVStFrVaE6ksQu5ikhXA0HeKiA48F3NEH092n2OVXLu8Ma3YGX/Uao+mc2QhdYjLfSnQzdww1hfvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GPF/YLfnUWuw34hsUvqxl7lOY8/jBTz2EiG3X64ebFM=;
 b=RlktJC2FLp9XGcM0c7iF+adKpTet/s5SYePoghEv898qGT4dlztr92ceHQniURjt/EcG3ELbTyRv1JpDB0QIrpTCjnpgEpP6Lu8Tmqh8nMRNUD/GuZabafKrdMbIWfTtOvmtPBRozOsWpuEI9oGoA2qWZMleC6hS/GEqva/ruk9u/6voE5rYpdDUUKa6Su6gYHwArDx21oaBIZYFdJU9DH87k8lQdgijBgaLkKSk/81tdUTK1ZIvH0/fHkrcorFAZz/ARrQh3SY8NYsDHk5ss9e0rTWZO9TEZ4067xUhXK/EGAj5Jalpgvd5kOcf2I8SlfcPMwfdptNzTGoLBMeHHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GPF/YLfnUWuw34hsUvqxl7lOY8/jBTz2EiG3X64ebFM=;
 b=vlZyziAIQG2nGHTfc9kBHOKcg9Q/nC8A1G6JZ+i1kZp1d4OlNQUaRZ0kMsj1askcBasPDRLVLIIEY9jCWRiftd86++8CUNK9aj+IAywdfxxMt8jegW172DtzSfi7fWF3lEPrKbvK88eJDZhNkmLNe3K3bQLHxiCq8Jcf9IicPdU=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TY7PR01MB14850.jpnprd01.prod.outlook.com (2603:1096:405:250::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.22; Wed, 18 Mar
 2026 13:08:05 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 13:08:05 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: geert <geert@linux-m68k.org>, biju.das.au <biju.das.au@gmail.com>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Pavel Machek <pavel@nabladev.com>
Subject: RE: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR
 string
Thread-Topic: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed
 MODULE_AUTHOR string
Thread-Index: AQHcts7pZuw6Ks9jpUyRaoUGm0idjLW0PTQAgAAFcKA=
Date: Wed, 18 Mar 2026 13:08:05 +0000
Message-ID: <TY3PR01MB11346D89F6F7C332FEF0D08B3864EA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260318120102.226118-1-biju.das.jz@bp.renesas.com>
 <CAMuHMdW1ROF3VdKzXVNeKtPZPEwX4MHD-kqdunrNYKBprPgPWw@mail.gmail.com>
In-Reply-To: <CAMuHMdW1ROF3VdKzXVNeKtPZPEwX4MHD-kqdunrNYKBprPgPWw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TY7PR01MB14850:EE_
x-ms-office365-filtering-correlation-id: 2b577da9-2e92-428c-9a28-08de84ef64ca
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003|7053199007;
x-microsoft-antispam-message-info: yM4OOYpdXWnOJseZdjCDPEkcmFH6VzsbHB/DrywhxdKn67IVwzqVZiYqIG4ca8H+X9+b+RjUXeGsoBIxOOz3zx9TEvPnsqaBoqTxOUPSbefo/KZ+9Dwz0b96Nm2r3qPExy4ysJhfKdfpvtaSFOzMBdekJv2zmCqmWJ5FqFyu8kLEBApRvviKQwLpoUbhaXualEjp9m9eqD/2hNdlXo998SXDFPtEYnyNvRNor/qs9+lIi3sgIzWj/MxAiv+6l1YgX+P3e2Ckr30aIBUp+CTucVpFVzQT+y4UkewJyb622bZtJlp+b3bvLNw4Fplowtsd/rTGBwZ+p1gZSb8FagzlcReAyaR4OBUMU/amVrcCe+6Htsu/5rDaKUPjPHFLWZZ7BJpnP8XHYchaAAn+4Gs78YoGxhmbkOdnq+MFLHNDT8G7cIqSst7bAQ/6potojXCGfQHH7aSIwJw5oLwpRrTeJnYjyXv4W5LcqtN+6Byj5cbkK9vgGpD3dlBAZjhlsOccn7M7Pvm3GLOto/byvMXRudnXprwlMkzKCWAjR54dQSEpi2dlDOsWjwZJ590b0UfPKAhLce8/Y4Ow5hAmuJIux9hB8l33WB1ieu6LkTA9TrBcLwDhcVxS1BtWJupsf7X0yR0vTKHfvvNbXz4dYuYGSI+GY9dFwJ5aYX1sN9yNiqRHGqMBzUfQ/LfHugGH7tkIxHe9v3yRi1B3A+JYiVaJQrLTJiKJQJ0BVh3V6NwuGi9iaJdxSWnxDHwUx4yt7QVF
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qm5nTXBLbE5HRlFqUUxUdUdQUFRVbVVERVJPWnZMTGREWVZZZ3FxazZHS0ZY?=
 =?utf-8?B?U2M1R0dRN1E5TEUxZm9vdzZ5WFQrSTJGTDZtYTVaTmc0eHVzQjZSeW1odHRY?=
 =?utf-8?B?SUxQTWd6bWdRbWRpS0Joek10UisyRUVSVlRTSHlUMkFQTlFpamV2THpwTUUx?=
 =?utf-8?B?ZitpdEFoVlNja1o0MWo1SzJWazZUblRMYWdwaFdSZUFFWm5rWHVZRldYVzlS?=
 =?utf-8?B?ZGtLelRkZVJjYjVBdWlWSHNEU1U0TEdyZnVoUW9OTkdEdytPRFZUVlJadDhD?=
 =?utf-8?B?NDF4dGVKdzdNd1Jyejg4eFlGc3AvRU9tQ2Q2clZoS2xlSzk0bWRpTThJdklB?=
 =?utf-8?B?NS9xMkRuMXg3YnJlVUcrUmw2LzgzUE5aUm5FaFRITTVMa1VXRTUxVDlZelJF?=
 =?utf-8?B?eWttV3ZUSDJjUGdSTWY4dERxMWxpcmcwNXl6R0tCdjFJbjhjUWNjZk1wSmNl?=
 =?utf-8?B?Q1cwN0dUQmNqN1JJTU9WYnJTeU1FYTJkc1JsTkgwUDBOS2ZmTkRISzNMZFV3?=
 =?utf-8?B?NHlFSnU3M3JWY3BLUWxWSWw4UWoxZzZkSzBVbHdvRjBKU1g1RUJYd2NQcjFm?=
 =?utf-8?B?UTJtdXpEdTduMHcwUUppeEowZGlaaW1lQWxsNnpYY3kxSm1Ra0tvbnNXdE1o?=
 =?utf-8?B?RVFxbnd4NVN3YWFoRE50cE1vd016OGREM1M5Zno5aDZwWEQ4czBoRExiZksw?=
 =?utf-8?B?eVFKTHJXTGVFUzdkQVJ0UnZGYlU2TExhSU5raXpHbXFTTjJQUmFCNHc2RFcr?=
 =?utf-8?B?Y0ZMa05tTVZmaXZIWnRYWlFHNXJyZ0NMRjFwcHladXg4YllqemlhNS9rYWU1?=
 =?utf-8?B?aDlKMmFiUWozNTYvbkVwZzZTSFJFbnBtNlNRT0dMRlBwWWxuVXZoc3R4Qkdq?=
 =?utf-8?B?bFFRWFp1MkhXL3hEWSt1SThYZnNsRFpwTFBsNk93V0JnTDdjVWJZcG44T2Ni?=
 =?utf-8?B?TW5uc3JRVHE5V1lNSFlPVFVHaG5vMStTKzhlbW9yNEYyQlZkcU00Y2k0ak1F?=
 =?utf-8?B?ZkRLeXBPZnFic3Y0aXdvL3J1Q0lnVndLbE13T0tVdFJRek9MRktLb3ZOa0JH?=
 =?utf-8?B?TEpGczFIMEFaZTR0QnkyeTJLMkRyWWlkRUVSRXRpWVZ1bmwvRHZFeElqOHNM?=
 =?utf-8?B?bG45U1hiZk90amZTWWI4U1BSL2ptbTd1MDRnNmxhWmJsY2dnckJPSlIxZmF5?=
 =?utf-8?B?K1RJbzkxVkl6VWNURU9GOW1aSEhEN0d2OGM3WUZreVgxbGovY0MzQ2dsYTVZ?=
 =?utf-8?B?N0xvS2JXL3Vqd016QzJZZU82Z2ZEMURxdmZOandZR08zb3d1VWl0aFVQSW0z?=
 =?utf-8?B?eUN0VjFXZ0RJQ25PbUFqd1k4YmUrYUt0b2k5WVkzbXNsRnVQNW1pWFlOcUFr?=
 =?utf-8?B?NVhvYUxwMXdDNUlTN0J1ZU1mQjZVa04rK1VYeEh2QUppOVlPOFovVHBkdVMr?=
 =?utf-8?B?QWxEMG8zQktRNnd4c3hDVWJwbFBjWC8zakNheUpZMFVibnZyZTVJL3JBS1d4?=
 =?utf-8?B?dWl3dnNkNkpBY3F3Rmo2dnZ0aURMeFZlVFJrVS9zZlFPc055M1ptVXB2RmRq?=
 =?utf-8?B?VGNwWUNZYVdBRmdxM005MkpNaE9qNit0eStVTVQ5NVNMNDFoL2FYUGxPb2xz?=
 =?utf-8?B?cHVEQ2JmUFQyY0lOMUR4aUtQV2wxNjNPK3pDUHpiT2FHeG5XcGg3Q0ZPdWhO?=
 =?utf-8?B?OFkzekZaUkpxTGZaRzNBcEtiWWdud1VQU0txdWlWeFZKVjBnYjQ0bDh3VWJD?=
 =?utf-8?B?SnltMzNxUWkxUXhKeUM5MWRSK3ZRQWc5VU9UMzlJZVVQaHB3Zk0weXRiVWZU?=
 =?utf-8?B?M0ZDeVlaRkV1MnVQQ29PSUJaZi8zKy9WVyttYmo5dGVMTjA3KzJoRlRUK0hI?=
 =?utf-8?B?YmlrbnNrcEF6bWhDNW15dW9JTjc2TGFPeWFtUkE0eHdtRlRueC9SWFhzSjhL?=
 =?utf-8?B?RUk1c0RuNk15ZUsxNEhHUWNFb0ZGQmEwNHQ3WTNvbEVNUjh4SWlHbUdPWlN0?=
 =?utf-8?B?Y0FnMnMyZWVQUWVreTNCQ2sxU0VnTlEyUm1BS2FOa0h4Z3NpWm5GZ0s3Z0Jz?=
 =?utf-8?B?MWxZdDlLeURvMzhTdmdSZHpZQVdta3R5dVhCRDFUa1pPbGlZZjdid01PUE9S?=
 =?utf-8?B?dHZaeUNMSGNLK01UcFRnU1BlU3R4SWdzYWdwMm9Jdk5Ca2pkcGdvLzVDRXlG?=
 =?utf-8?B?NUUweVo4L3FacVhHbTloblJnLzh0RGo3aEVrdG9TNkNCWjBPdlJxL3BJOEps?=
 =?utf-8?B?TTN3WUVaMDZFazZtaHN3dThBMFBRdlU5cGFOM2RFeTJza2VWNXE3ak4yS3gx?=
 =?utf-8?B?ZWt0QkhVaVMrQ1JqeDdMQjZjSHlNaUdDWEFlMUhzWCs5cTdtYzVTZz09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b577da9-2e92-428c-9a28-08de84ef64ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 13:08:05.5850
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pDdvEKu8sKiUfmvQJ5KJSxA5h93uVE9ZSOnXwvqE2pSYBdkEglLIclkqM/VtnjAs3z+yeyILx2bV6yKgwPM1/UTMAj92m4THUrSBZSbJm28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY7PR01MB14850
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_060813_564326_B2125E9E 
X-CRM114-Status: GOOD (  20.21  )
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

Hi Geert,

Thanks for the feedback.

> -----Original Message-----
> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Sent: 18 March 2026 12:48
> Subject: Re: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
> 
> On Wed, 18 Mar 2026 at 13:01, Biju <biju.das.au@gmail.com> wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > Fix a malformed MODULE_AUTHOR macro in the RZ/G3E USB3.0 PHY driver
> > where the author's name and opening angle bracket were missing,
> > leaving only the email address with a stray closing >. Correct it to
> > the standard Name <email> format.
> >
> > Reported-by: Pavel Machek <pavel@nabladev.com>
> > Closes:
> > https://lore.kernel.org/cip-dev/abp4Y2FVspUgEpCT@duo.ucw.cz/T/#ma80454
> > df129c8cfcbe48d75f3b4abe697925c6f8
> 
> The "/T/#..." suffix is not really needed.

Thanks, will take care next time.

Cheers,
Biju

> 
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But when I'm talking to
> journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
