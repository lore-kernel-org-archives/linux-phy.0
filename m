Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9124AFF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 12:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYnys9BBhlHGoGX1zQ0oDoas4+RP0FdmUD+vQRHJWKc=; b=GgcBZjmg2A3QS2
	MIM6A0TGstVk4CMB4vPsa7D/OG1cJIEfhHZKE+ddpuMJCmleNg/esknOdPdGVEBQrvpPkIlMEmZeE
	+IZYCCqASZnsIuEahcUCc1jUE44cqpKnwgcr4Cb6JB/4Kgl2jyE/WNwjCkjptoYQH0hyEn/SBFx0z
	p9qW1JVryW2zfozfn+l8aTDR9uw37RAeH52Y4BE0bHrDC1JLYa+UeYpA2oDmudcWQsOWJPO865Tkn
	x4LI5lyZ8AtGp9pnr2N6LwHZuhJBkDWJICpTTbOFlP/6aNgQMgHD92kms+ymw2hK/b4f5ob3Uqi2f
	3Ea6Ky1AWN/5oUv6jPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJs9Z-0000000D7kQ-46Qh;
	Mon, 04 May 2026 12:12:02 +0000
Received: from mail-japaneastazon11010001.outbound.protection.outlook.com ([52.101.229.1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJs9W-0000000D7jG-0ZDT
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 12:12:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pipyjWjVOO4NViGXRMUf3OXmHqWPHJbysganEInOU9AoQJ36u7DKqYz7JZohMFKrcJcVblb3wMznt/ibeGkpYU+peOgh4ptEp6wp70t7vHU2sDvtzeIBSNZ5f34/U5xhr8Kq3tvci/wyqm7kn2FC8LbwitcZML0NgSUUTQaeg88jCm6LdoK03+QdiBVVzsgctouGbWiAJVGHnlL5exYPzX2gcfV3c87zWJt1ukY0sdpktf6c/UzLZc78Yx11QO73DeVmodmxmiRp9YLHqIKFhZEcPd/kTc5YkTQpfUdxVwkgPWPtjuHjkBpPThl5hYjHqdtQDpI6sb9t0qtjTo0UdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHFBxq+Pm/79WR+XYa5JYmgY9/k9NZqLfjP88Lh+qIQ=;
 b=N4m9TsbIAGWG0qY+oA71S4gA4Bl0ThCbtiLoJwFfMwPZXfX1RNe0csVjgI3Y+uwwt1wNHP1WOCqt4JJW2RBcWShMHMlwzk0uYqYXYVKsEe99DMgi6oujqVyePPGB1s++pbfy9fzo8O60VJNJUE7Ov3yat3ToxUt1JS9oQTqnvFBMDBKDq1uFDffeNqT1/VjoGxfj3TxzPgxV18TVmmYtUaRGRFotKAGUUK21D/q3wzYegwcMb2iNTAwA1n0vm1kYGnDYvMXkqyYrLSJOrYyjHTQ8FyNczlA1jyZhQUdBC9J4Aw0xqi4HdY1y7mUuTQIa2grQEY5rkYkrSLqeTGoQAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wHFBxq+Pm/79WR+XYa5JYmgY9/k9NZqLfjP88Lh+qIQ=;
 b=aXWeB99vMj+JGqc65E6g+NDuol8h4cBmFQJcx4MzfnD4iRqfuyNEAXMPRL2XJhxlfZOcJtD94MephSTgw4hTM/QohLEHMpLTW9IOPcR1GQ3zZGMY8Sg0FldzBl9AJ9mQ35wmplOMMorp0iMnHTclyCVw8t68q21CX0sk2ZPABq0=
Received: from OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM (2603:1096:604:465::6)
 by TYRP301MB1306.JPNP301.PROD.OUTLOOK.COM (2603:1096:405:305::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 12:11:45 +0000
Received: from OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM
 ([fe80::888:6ace:31a0:180]) by OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM
 ([fe80::888:6ace:31a0:180%4]) with mapi id 15.20.9870.016; Mon, 4 May 2026
 12:11:44 +0000
From: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
To: geert <geert@linux-m68k.org>
CC: Vinod Koul <vkoul@kernel.org>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>, Biju Das <biju.das.jz@bp.renesas.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: RE: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Thread-Topic: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Thread-Index: AQHc1n7ANECNPwe9y0+ScapReaOqMbX8jucAgAEpLoCAABHIAIAAA3PA
Date: Mon, 4 May 2026 12:11:44 +0000
Message-ID: <OSOP301MB197608A7EC2A58F91BD98F2ED3312@OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM>
References: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
 <afd-gj-F3OYDfCwJ@vaman>
 <OSOP301MB19766FF764E6626FF1CD6771D3312@OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM>
 <CAMuHMdWT+hv37gxi-5fbLVc16Fk4SKsXuBis5Fg6_zm7TS6hkQ@mail.gmail.com>
In-Reply-To: <CAMuHMdWT+hv37gxi-5fbLVc16Fk4SKsXuBis5Fg6_zm7TS6hkQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OSOP301MB1976:EE_|TYRP301MB1306:EE_
x-ms-office365-filtering-correlation-id: 534c4cde-7a42-4e52-2ad5-08dea9d64f0e
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: CR6179bRMUQmmDNJ04N5wedJ9UaSz+cPYh4M+XLpfgp3Cu9L4AN7zAr6sV8PhKpY9e4Bw3OtPp86r8Ga8jlplZkZ0uQftq9H1NgLpGLLAFSx8HHi1HC8qQuzel5kwoOeAqdGwAZv2ai/X7G5VO6vDco0kl2c5ITWar+/vJpG89sFVq5KfSeQno4Bjkv82omrkw3Mik2qqLCnKWMpjtBNHQEd4iP67h8D3l/cy8L4EAeyt1h1IrHgcviwnIN1P72jgtaqKDLiJxId4fMm5uv3kZcN2hcYxs2UIT40Kw1drqBhhKGTOmEC5m+X02585aV5pvZJ6agYa7bMyR6ZimpIaCGG/U0DVh9by3pGrnBpLgVegV4lu3yKfgJTXCQiLbH98gAiqivlawc32UXnyoJ1ymRg3YOuixIgrMMEjsWcOysFdm0cGqLToy62I9pNc0UnVm6+zfz+wxeiPmw+goAFa30cVLid9lW/j58cUzFkFkumyyks7Jwuv7rGzMWNskeVLot2uOb0a3qmp+poEz3eH/lMNfhEG6VbTXWySOuIP0VuiGaDc11OBaXiKl4/IMY8xKE99oEXMGQiPqPEQZKC0rc44Hx5t7PfqlceSvTGzOJHdYXEmDxF7sqW4RT9n/OV8cjWFINdPDTucUYrC8LcyC7pVedWQAucVaiPlOp+wBAy48CJfXM8wyCcv0BhiN7H
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1E1Vm5paGxkQW5MYmNuanNqQWVmOXVPM2JuV1NDZk9NRE1iWkw1anF5aTBv?=
 =?utf-8?B?RWJSVjdNK0swaFlpalJMTjBFcmtlS3kwZ3JaQ3lVOFZUMFFjVTF6U1dKOU43?=
 =?utf-8?B?OG5YZTVCVTN0L0dyYnZkU2QwQjM2NzRRNHdBdmR0cHdZU2NHTVBWUkpTZ2lu?=
 =?utf-8?B?SE1FQ3VGeVNyS2NRbFFJMW05MVZSVkNwM1cwZDl4TE44b0lrRGxyeXJXZ2hr?=
 =?utf-8?B?WldBK1FnSStzOHlETks5dWg4cVRtVDJCL0FOeGtYQytVSHpUSmFVbi9oRGls?=
 =?utf-8?B?dzM0eXorWklETU15SkhRbnp6K1BTM2lhNjgrVTFhbmtIMWlkajZHZmcrZW1B?=
 =?utf-8?B?RnRXQmZuMTdNbDhkWU5DckJuNVArUGV6RjF6TzdVUVpCRkZZWVpXQVl3VE5a?=
 =?utf-8?B?cVpocDV4YXZ2RWg0dzI2RzVpTnJRdmZ2cTNPaTdIWVk2T0tidXNlNWZkUXRs?=
 =?utf-8?B?VVRPSTlNTGtmWU52VTJ5VVc2b2YyejNRSU4vTEJRNVJyS0JsZkkrc0dLam5F?=
 =?utf-8?B?Y2R0dXN5Z21RRDdGUkZXaDBuRVhodWMwWkswS3lXTm55Zk1iTEROblRqajRt?=
 =?utf-8?B?WGN5Rzl1TUpDRkVuNVgrRlJRV3ErRGVXRm1IbEFwSFBUUlg2cmE0aVVEUFpG?=
 =?utf-8?B?bFc2RmNWTnN2NDE2UVhaaVVJL3ozNFcwZ0czL0ZDd0x1Z2RxRWZpYklFT1NK?=
 =?utf-8?B?RUwrSDVkMGhzMGFKRTJFOHY3WDR6OTZZcGFLTEF0ZzVMUS9ESU9KRUtSZWFq?=
 =?utf-8?B?b0J3RUo4dDg1SmtwZXhDdm9GR1V6MVJ1dUkrUjRtdUdYc0E3TTRiV1F1bzlK?=
 =?utf-8?B?RVNHWnlUK1k5b001ZDlqMmlJb0RHSjZ1OFFOc3orZ1VVamkwZ2dBTHRHeVNO?=
 =?utf-8?B?RVR5T3pBak9icnJRclk3YmF1QXhjSUMrUXdYUis5Y3Ywa3c1bDlkNGREaXlD?=
 =?utf-8?B?WnhGQjhTcytucFVPWmZxT096ZG00V3A1Z013cFB3aWFqaXVxdElxaHMxWlBt?=
 =?utf-8?B?UXNnSjAyQ0IvcEFJTGFHaHIvcmw2dVFWZVRCUWhPQTEzWXVrTDhNQTN3ckFS?=
 =?utf-8?B?ellDNW1wWDN6VWFVZ21xcVduZjZVMWlPekFDYjhoUGpVazgremorZmVFSDE5?=
 =?utf-8?B?aWhqWFk1dmV6TnIrZDVLZmlNQzJYRkhURzdBb3dEb1FRK0JFNFpVME9kYWlS?=
 =?utf-8?B?Znd5Nyt1OFNla1N6SERqaGErenZwVisvOUU5QWlSQjltWmt5QnBaQmRIaFFk?=
 =?utf-8?B?Wkx6Q2NGTmVNb0Q1QW9EaTh5Rk5McXpxOUcxekluTDJneW5TTWF2YXVRbXZB?=
 =?utf-8?B?cWEvdkhyTnB2Wk45cE5BQ2tZS1BuNk5ZZVhEdHZjRlBkT2JHOTZ2MitLbndK?=
 =?utf-8?B?VUtBMnJaTzZKR1U5alVUZ281cUhtOThmODNHQTRscndHcDhtK3JZTkdxam10?=
 =?utf-8?B?Wjl5WGVWeVl4ajVaRldMenlvMkc1dkFGcmg3aGdlYXBoSWJ4T3VmNEpyWlhS?=
 =?utf-8?B?YWZWekUvNUNtcWhwTTVKY1k2Z045NUhwaWdzeVRxNDRpWlpjNVQ0a0xTaTJT?=
 =?utf-8?B?SFZoZ2VvdFhUYVZvcytGWXY3OUp4UFJnTlkxTXhNaU9RaC9mQ3c5dTd2d1Bq?=
 =?utf-8?B?QmlDY1p1cENDSldqb3VJS1B6eXpkTEh5ci9seGRBK0E1dzhTbmpPQzJDbEV3?=
 =?utf-8?B?S3hXRExBT0VqcElxdWl0MlIzaFcxbVkwTlJTL0JOanRmVk0vWEdrNysxbmxZ?=
 =?utf-8?B?L0x1ZDNUWUJoeTJWaS9ldlZCSTNETzJCQlZoc2t1ZUJaQ09MTHFxaksya0tj?=
 =?utf-8?B?K3ZyUHpxYm9oZTJiTzQ3RXVZaDNxa0tHek5TSlNxVUdKSmtpenc4WDQ1N1hk?=
 =?utf-8?B?OHJzRDU2WWFreWtkWXdJZ2dRN2QvUVhVTjVhcVRxZUdHV25SSVdWaXpqT3dq?=
 =?utf-8?B?YzAxMi9BUTZRNENYSGIrVUFSVzM1UDBkODVmaVZab1BLb3dHNFBsVEpzOVBL?=
 =?utf-8?B?MFZWOWEveDZ4L0UxV2t0eGM1RlBwYmhqRzkvK29sTVZ6UkdrczZCZUg2MUZC?=
 =?utf-8?B?dmF6b3JWMVZvb3BSSzdsUGg5SkVHdm9hNk1vKzRUMUIzbWt5VThtY3hkVzUv?=
 =?utf-8?B?VENDZzhBajZ5N2ljcHlkS1ZDdkg5T0VpU1Y5aEV1ZnJyc2YyWEd2bTQ5dGFH?=
 =?utf-8?B?b3VLcThDNzZpY2FWU2F4ZXl3YXlGamlLam1MWjlicllzMy9hM2ZJbHdDN0dD?=
 =?utf-8?B?eVhDKytoczBwMG0vTGFPclp2ZXlsVlNOZUY1VVFPZmIxN1JFM2dhK0ZKTndG?=
 =?utf-8?B?VXFxa0Y3QjU1OE9yUmFMT3h6TVAveFVkUVBtVkRqOS9SeWhQWUxpL2RXb3J0?=
 =?utf-8?Q?Ywt1XlyShBPQs/bE=3D?=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 534c4cde-7a42-4e52-2ad5-08dea9d64f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 12:11:44.7367
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0sVVv2KQx2AAiyA0BvglPm+8FackBANW7vum5MC33DwNhxd5c8W0CLl65MNB9OYywFFWBSGHKkrYuLqs5l9zbfOdP+784+uQvwF5t+bZNZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRP301MB1306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_051158_190933_1F4EED52 
X-CRM114-Status: GOOD (  33.31  )
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

> 
> Hi Ovidiu,
> 
> On Mon, 4 May 2026 at 13:11, Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> wrote:
> > > On 27-04-26, 19:47, Ovidiu Panait wrote:
> > > > On the Renesas RZ/V2H platform, if the xhcd driver is unbound and
> the
> > > > system is suspended afterwards, a PM underflow error will occur:
> > > >
> > > >  # echo 15850000.usb > /sys/bus/platform/drivers/xhci-renesas-
> hcd/unbind
> > > >  # systemctl suspend
> > > >  15870000.usb-phy: PM: dpm_run_callback(): genpd_resume_noirq
> returns -
> > > 13
> > > >  15870000.usb-phy: PM: failed to resume noirq: error -13
> > > >  15870000.usb-phy: Runtime PM usage count underflow!
> > > >
> > > > Since the PHY framework is managing the runtime PM of the PHY via
> > > > phy_power_on()/phy_power_off(), there is no need for the PHY driver
> to
> > > > manipulate the runtime PM state during suspend.
> > > >
> > > > To fix this, remove the runtime PM calls from the suspend/resume
> paths
> > > > and add a get/put pair inside rzg3e_phy_usb3_init_helper() to make
> sure
> > > > the clock is enabled during init, even when there is no consumer for
> > > > the PHY.
> > >
> > > > Also, change the suspend ops from NOIRQ_SYSTEM_SLEEP_PM_OPS to
> > > > SYSTEM_SLEEP_PM_OPS because runtime PM is disabled during the noirq
> > > phase
> > > > and pm_runtime_resume_and_get() would not actually enable the device
> > > clock.
> > >
> > > > Fixes: ee5f1a3f90a4 ("phy: renesas: Add Renesas RZ/G3E USB3.0 PHY
> > > driver")
> > > > Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> 
> > > > index 6b3453ea0004..055775e1a0f7 100644
> > > > --- a/drivers/phy/renesas/phy-rzg3e-usb3.c
> > > > +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
> 
> > > > @@ -215,27 +226,21 @@ static int rzg3e_phy_usb3_resume(struct device
> > > *dev)
> > > >     if (ret)
> > > >             return ret;
> > > >
> > > > -   ret = pm_runtime_resume_and_get(dev);
> > > > +   ret = rzg3e_phy_usb3_init_helper(r);
> > > >     if (ret)
> > > >             goto reset_assert;
> > > >
> > > > -   ret = rzg3e_phy_usb3_init_helper(r->base);
> > > > -   if (ret)
> > > > -           goto pm_put;
> > > > -
> > > >     r->skip_reinit = true;
> > >
> > > https://sashiko.dev/#/patchset/20260427194741.161533-1-
> > > ovidiu.panait.rb%40renesas.com
> > >
> >
> > I think this is not applicable for our platforms, as the power domain
> only
> > gates the clock during runtime suspend, so the register state is not
> lost
> > across runtime suspend/resume.
> >
> > The power domain (drivers/clk/renesas/rzv2h-cpg.c) is marked as
> > GENPD_FLAG_ALWAYS_ON.
> 
> Won't the SoC be powered down during s2ram?
> 

Yes, the SoC will be powered down during s2ram and the USB3 PHY is
reinitialized in the resume callback:

static int rzg3e_phy_usb3_resume(struct device *dev)
{
...
	ret = rzg3e_phy_usb3_init_helper(r->base);
	if (ret)
		goto pm_put;

My understanding is that Sashiko's comment ([1]) is about runtime PM and
whether the PM domain will be powered off after the refcount reaches 0,
destroying the PHY state. Which does not happen on our platforms, as the
CPG driver sets GENPD_FLAG_ALWAYS_ON and it only gates/ungates the clock
across runtime suspend/resume, preserving the state.

[1] https://sashiko.dev/#/patchset/20260427194741.161533-1-ovidiu.panait.rb%40renesas.com

Thanks,
Ovidiu

> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-
> m68k.org
> 
> In personal conversations with technical people, I call myself a hacker.
> But
> when I'm talking to journalists I just say "programmer" or something like
> that.
>                                 -- Linus Torvalds
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
