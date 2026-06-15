Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD780CD98E3
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 12:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkLQodUMFFMt7y5CX05hCKnwqTuTmu/00GvEINu3aY8=; b=CXYzwFe+V32M8S
	d87thDbplLKvHLdWcyTcUmGywtWuIeWy+hbvNjctFhBlbbyzAIE3pLODCzRqgioB54wYqNyekCL7h
	ZTujCR7yypumLWa/7xboEWpwYnCFkePviC85748rI0XqKH7ZMMInmCqKEo0Jk4hVtT1fnnKJmTWfY
	HB/7SzcwzsP7eSrb0xYU2HB2BNAvwVjO45+YpHiTAk+g0isszIQ8TpyytR6NveNmA7wlEbR/rlRC1
	rIXzCAGeMb6UsMSVTvCOWeQfRgu6qBYQ7/GS3KG7uGcz8Do+FrRnbhkuBco8zUTmDhv1ZuEBjB7WL
	TDgIZBI4qbI6XLFIQ0AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6T6-0000000EBpB-2k9Y;
	Mon, 15 Jun 2026 12:31:08 +0000
Received: from mail-japaneastazon11011051.outbound.protection.outlook.com ([52.101.125.51] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6Sl-0000000EBQa-2Ssl
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 12:30:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WT+DqmXrqVQTQfEFfUaC5WBj8bUnkRRQYEyVi+dRJWGrdllcnSLMnzADH75C64tjwUTqEVf8RRurhC8yHe8mHvjq+7NsU/W9TN650yOwo8NvhWwNZi3ETOooNTTx0stjJzUmsIDMOYbwO18iU/DA7sKfAwekOFPX6QYR8+myo4m682APkZwZoscSVpfBQDnn+tFHvNMhYHlC+OGFWby2tsK1Q+1FWQQBoZ2SXoL29kib/n9W4fHMj3VThoI++5iQxQm8vX5ZOZuonhTRS+Sfa7lyX0yq5/uZrXCnUscQn1f+Wk5Aefeghc1pJlfcpJA7jLtsomS/N2kkjjBZXV0E5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z6jB2qrAQktPFwYFr5amPIvfCuyufgvbHRcQ92raccc=;
 b=MDdGgQ3OBW6+8tUuyX6yhR6XLHjN6AnTuSApePeVmvxLoNpjaEsvn6PSnbtipz1Eo2hWzPY7qagvId/VVxc8nwG+CeonLROR3LWkr54uEqoo6+qIgw/fbWNQ+DZkxqgqiq2nLS3APqkDDVijZH3nawTlOcCnvd52SI4ME/icZCcOQ7SXCOU+nDOje+fvsbHU6JVFc/D6sxhm2FwtDmwkgslaSyz/cY+ErmOxRrjyfnS2HnCds6R2E6Cubk43zFSVIPLOaxmGoKDWDXSh61+6bMaC3Rh6u8DX7wEGW0gh/XOao+fJSJWUwt8pCW+dEo8BPIljm3205bmo4tkTacY8dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z6jB2qrAQktPFwYFr5amPIvfCuyufgvbHRcQ92raccc=;
 b=ZPY4qeXymp+lGVvJjDhhI4VhSd1pTK17FLoIFs7+g732j3NAuRyf9p0dHm9UQQ7vdpX6ntnA55cbtYMMHuQjtZdDVJ8orSFwxPPd8o+GCy4pDbVGpTvKuWS7dLI+rj+cD43lBaEod5gtSO+rsywSR0LUnGGaO3ihLECk7JtUn1g=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS9PR01MB16120.jpnprd01.prod.outlook.com (2603:1096:604:3d9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 12:30:41 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 12:30:41 +0000
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
Thread-Index: AQHc+ngaWA394/baeES91naIfR5habY/YB4AgAAHtfCAABvPgIAAAQaggAAKixA=
Date: Mon, 15 Jun 2026 12:30:41 +0000
Message-ID: <TY3PR01MB11346185F0071826D74C9CBD186E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
 <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <75976eb6-5837-4229-9faa-c77e058d1cba@tuxon.dev>
 <TY3PR01MB1134684AA984BDC881C8A640A86E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB1134684AA984BDC881C8A640A86E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS9PR01MB16120:EE_
x-ms-office365-filtering-correlation-id: 481186a5-168f-4b35-ce6b-08decad9e9cd
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|23010399003|1800799024|56012099006|4143699003|11063799006|5023799004|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: hAWzcG6GptyfkeVK6Cf0wy+9S7rlcIjD+5/pU4m1OgKKs4hCpLFhFiJvi+0GEdOfPWuGlBRg7+RDwgsKOg53JFVrQNkKI0uVZ5OyIBomSjdX52TVOG7sqlKPGaoyoNdLR0IyiW7fGVLA9qn9NbatXEHdhJkTgdxaaEJVCnm8cWg9usUJPGPBwp/jrnJdmLEcSSVLlnznn3/OjmtpjjVOkMyZjYPo15+ooHiAn2o6seY/VJDJKaLd/ItWjn3tva8SJthrtDtgOimSvO51yAFt6RCOnUQcgFMfmc5AhItd1Xt+7WgOv9W40SbrBjThN0tkBWEnPAjToZ0pbFLSfeXarj9/CZdefDkTW0AraCfywa0vm3RKKIyobK7u8y9eMfb6ujtqNZx/tXLiTeTMakYenoGjjC8xRfmQoZ6mys4K8EMg1wkETqALvA2ah5Cyti5A6kIx8TI2xoh27LJIsl2c9kKKklGzlSpCrRaIXzXOZ+XdrqUI1G25Bh2pWuRuskMYxBrUp4Rpol5vJ+aYqqd8gYxiUD7aWerKe45CiOHnhTgbE8EQg2DR2UlfqCfK8WCBcgTZbLrm65nN6Anz7MJ82K0b2zeFRjhOCfTFqJT7181JCbbq/UnTTTf8fr4dE0+luL5Tzz6ryNRP5VOS2AZNzC1C8Co0TlVhr0pktyDup4v7CInbpwPMRO6qlfaF3K90RhWiv/lYhUBJ/SiPyIvmFyKYcv3JQiX3lOUDjOu7ea1r0h5NN336dEINCifxEzV9
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(23010399003)(1800799024)(56012099006)(4143699003)(11063799006)(5023799004)(6133799003)(22082099003)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2Y0QjNDSVo1SFdPazlvY2owZEJCYi92K0kyOXNaVm5uSXo4WkZaSDB5QmF2?=
 =?utf-8?B?Ukovb2ZCSGFhSXdzb21ha3gxc1Nlbnk1aU5CTk5MNXRTbm1LQ2t4emg0ZG1Y?=
 =?utf-8?B?UlVNUmQzeE1rT0dUamVyWW9yWXVuUzg0b2hTUVI0NnBpcGN2cXZGRm0rRkhj?=
 =?utf-8?B?UXVaVTZ6Yk9xRUVZYWFVNVJ0dmVvbXFPK0tEcHhBcUlRREVMeUhBQWdzZjJ6?=
 =?utf-8?B?b1pGV01iclgxVHhOYXNNU01LNmdSS1haRGxqWVg0Z1BvY3VVTUswWkxFMnJz?=
 =?utf-8?B?V244Tmp3VUovUW5RMU1UOXNQcTFFOFV6SnRHWWFtTnZYWTBIR0J3NW91MlhR?=
 =?utf-8?B?WE11VWhuc0hJM0hicnp1Wm5QdENEL0prVGl4TlI0dlhpaEVkR2JxZHptZW9U?=
 =?utf-8?B?RmlSaDJTRVlhS0E2U0ltRGhqeHc0QTBvYVMrODZBRXYrYXBlUzRiR3BHdjdB?=
 =?utf-8?B?WDlHRC80ZFg1dmlsK21sTGZNdHEyeklZNnl0TDlnck5QWTJFeWEwWjd6MUdt?=
 =?utf-8?B?ajk5SlBKbjU5RHZOMUt2eFphSld3NURZWSs2NS9WaHRuUlIzRnQ3ZzZFYzEx?=
 =?utf-8?B?QWduQlJtVnV5dWs3MHdtMjQzNjlzb3lWdldZem1zUGpxSXJ6VjR3S3VtOUYz?=
 =?utf-8?B?Y2lzY1RQOHRkbElmYXNiV1orN1R6eW1hd2xQZWg0OUhiV0FvRkRnQ21FbnZ3?=
 =?utf-8?B?YWd0akJCeG1TYnVjU3Ivc0Z6c0Z3T01XVi9UZVJtaEM2ZW5jZGdqNnlmai9T?=
 =?utf-8?B?ZHFDdTFyYTY3VE83WDg2KzNYcGNXODNzNERkWGpiY0FKdVJyamppV2tEUDIx?=
 =?utf-8?B?c1YxT1l1QXNyYS9UYUl0d0pvSVpIYkJQcTA5Kzc3QWhwMDFKZTVubzIrMW50?=
 =?utf-8?B?dzNabFAvdDE1dkRYQWl2MlQ4dHdIaEJUVzVLT3B6V3czMU54eEswakpEOGYz?=
 =?utf-8?B?d1FHOHFyOFg0R2tGcXFHWEZMek5FUFRQMWh1c01RQzFkNGhBSEpQVTZKVk5T?=
 =?utf-8?B?RSs5dSsxOWxEa0dxeTg1T2sxYnFWdGt4enZuMklKOHgwNXhTUnV1ZEZZL2t1?=
 =?utf-8?B?NDIwa09MWk5oUFJmcFdzRnZJVEpycFdVTDJiTk5kZnluWEptcUlrT0xuRHpz?=
 =?utf-8?B?WmRXVjJDbTZLdTdjV21sa2ZEWm1hcEFtbk9xcmJocGN3OFBFdWI2YjNmdDZY?=
 =?utf-8?B?Qy9MWkUrYlU4cjRwNTJDU1g4OFcrQUh5NXNveG1zeVNxcEVacEtzUTBTbkdI?=
 =?utf-8?B?YVFOa1lhdmNlc0xZZlRrVW9icGlsRDlBSDZBSFZOc2JmS2w1SVpJa1kraG91?=
 =?utf-8?B?Mm1TTUU3em5aUm5XV0RRdlhoWVg5VVEwSVFxMEtmS0dCMnE1T00wV3E0UVJQ?=
 =?utf-8?B?VStCY3lzUXVoVE5BZnY0VjJGck40Q0Vqbm52WllZbWVySmlmRm9GZ0lUNGpu?=
 =?utf-8?B?aVBrOFcyQksyRVpWMHdmWE1lcmRZR3dRbUxHdmZaaksxS2lLWGJFWEYrQmk4?=
 =?utf-8?B?bXpkdExqMWRCTGF1ekplUWorNDdxYWhlcFZvS3ZvTlB4L2d6bnE5eFV3U2xp?=
 =?utf-8?B?T2hJL0w3azhiUVRMTTlFMkVLa1Q1NW1FNDFMSTJQZDc0UW1EMDlodUUwb0Fp?=
 =?utf-8?B?RHNtNm9vNkEwYzd4SzA5a3VaeXhWUThKNzdWSUhJRjlKNGN6SzYvWVU5MlV0?=
 =?utf-8?B?dTVSY3ZjL1oxd3lGV2JmaU9YbE9EeW5ZRzlMZ1dKaTZETHl0Qlk3alZtRlo3?=
 =?utf-8?B?alpHcVc4KzJPR2ErY3ZGN2JUSnEybGVaellYRGZSQjFxakNsQnlReDlscFpK?=
 =?utf-8?B?YnNVMzR1cVlWRmlGNzNmeC9QQ1ZPWjduTGdLRlNENDNBNFVLeXFsUE1IV0FK?=
 =?utf-8?B?Y1MybjVwSzNlV1FZMmQ0QVBFSDlaZVRUMEVtNFh5RHhWSkhKTHRSYjkxK2tT?=
 =?utf-8?B?QlIxNVpvNUJESCsvOXROS0Y3TjBSSDZvYVhVRlNMa2R6SVlKRkF5SHQwdDBE?=
 =?utf-8?B?VVFTS1NCTXhOZ2xwZ0pBK095WlR2K2VFMnhHL0lKeVBVQTgvMHlrMm9QNjE2?=
 =?utf-8?B?Y2NhTWFLMGZ3U01sYzgvWHQ5Qk50Ymp2MUQzUUxCSmRxQnFiN0pKbE80Uk10?=
 =?utf-8?B?dEppYnUxcWRJMTlYNmZXY3kvdTdiUk1DZWNzUnNlVUtFajVLaE9yUW50SWQ5?=
 =?utf-8?B?cE5MVWhQWGtOazZXWTg3MmdhaXQzYjllRU9pS2c2Nm9xV3d0UVc1aHJBMFpP?=
 =?utf-8?B?WnE5NnpVdXFYd0hsVFlqMFU1VGFWSndvT0xQYmQ5V1loQzJsOUV0RFcwb3ky?=
 =?utf-8?B?K0Q3SnlEaWlQNVlwWXhVd3loa0ZZRXBtSDFId3N0RFVUL09lQVlJQT09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 481186a5-168f-4b35-ce6b-08decad9e9cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 12:30:41.2155
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c7iH60BC5EkGSx2bbcJF6B8S+9qOyk9xeNIVPmXSaHJ+ALG8aX4DJip/cQIIlhblmfPn5B7X5Ww7QIYv442THrvSgt4yVoaZa7G+K2K34i0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS9PR01MB16120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_053047_745815_B6AF6744 
X-CRM114-Status: GOOD (  30.85  )
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
> Sent: 15 June 2026 12:51
> Subject: RE: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled
> VBUS regulator
> 
> Hi Claudiu,
> 
> > -----Original Message-----
> > From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> > Sent: 15 June 2026 12:44
> > Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm
> > action registration for disabled VBUS regulator
> >
> >
> >
> > On 6/15/26 13:22, Biju Das wrote:
> > > Hi Claudiu,
> > >
> > >> -----Original Message-----
> > >> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> > >> Sent: 15 June 2026 10:37
> > >> Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix
> > >> devm action registration for disabled VBUS regulator
> > >>
> > >> Hi, Biju,
> > >>
> > >> On 6/12/26 17:30, Biju wrote:
> > >>> From: Biju Das <biju.das.jz@bp.renesas.com>
> > >>>
> > >>> devm_regulator_get_exclusive() initialises the regulator with
> > >>> enable_count = 1, requiring the consumer to disable it before release.
> > >>>
> > >>> Previously, the devm disable action was only registered when the
> > >>> regulator was explicitly enabled, causing the cleanup path to skip
> > >>> decrementing enable_count on device removal when the regulator was
> > >>> left disabled.
> > >>>
> > >>> Fix this by always registering the devm disable action when the
> > >>> regulator is enabled (checked via regulator_is_enabled()),
> > >>> covering both the explicitly-enabled case and the initial state
> > >>> set by devm_regulator_get_exclusive().
> > >>>
> > >>> This fixes WARN_ON enable count during regulator release.
> > >>>
> > >>> Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control
> > >>> VBUS for RZ/G2L SoCs")
> > >>> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > >>
> > >> The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] for logs.
> > >>
> > >> I applied this patch on next-20260610:
> > >>
> > >> git log --oneline -2
> > >> afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm
> > >> action registration for disabled VBUS regulator
> > >> abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next
> > >> specific files for 20260610
> > >>
> > >> [1]
> > >> https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819
> > >> ff
> > >> eabfc4eac772bd/logs
> > >
> > > I have tested only with RZ/G3L host and I don't see the issue.
> > > How can the issue be reproduced? It could be related to RZ/G3S.
> >
> > It's reproducible with this patch on G2L as well, please see
> > https://github.com/claudiubeznea/logs/blob/0601044903b5ae714592db9770bc4ed31fd8bf84/logs.
> >
> > > I have executed the following tests and don't see any issue.
> > > Can you please try the same tests on RZ/G3S?
> >
> > Try stressing it a bit, e.g. the following command trigger it on both G3S and G2L:
> 
> It is nothing related to stress, it is just enable_count issue.
> Usb function increments the enable count of regulator, which it never decrement Leading to
> WARN_ON(enable_count) during unbind.
> 
> >
> > cnt=300; while [ $cnt -ge 0 ]; do echo 11c40000.usbphy-ctrl > unbind ;
> > echo 11c40000.usbphy-ctrl > bind ; cnt=$((cnt-1)); done
> >
> > Same command could be executed for other USB drivers.
> >
> > > Is unbind/bind ever worked on RZ?G3S previously?
> >
> > In the same way it works on G2L: functionality is OK, these stack
> > traces are displayed as on any other RZ/G2L based SoCs.
> 
> I have identified the issue, it is USB function related.
> 
> I am investigating the fix, which will fix for all platforms.

The issue you saw on RZ/G3S is

usbhs_platform_call(priv, hardware_exit, pdev) is called before
usbhsc_power_ctrl(priv, 0);

The former Nullify the PHY pointer and later does not call
phy_power_off(priv->phy) to decrement the regulator.

Cheers,
Biju


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
