Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6309CD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 11:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8o74yLnQTiR/iPO3GiRvlBreHbBpLTVIHCGTmC/ii6A=; b=BSFLPy4DsthjaZ
	f8sqF//R3OSYDH2hsZZ0CxohcTLvNQoqGlRyjTVbLoC+s3R3D1+P8uHwFBnOt/r84QTe32MslnHUA
	UYl24MbzRxyvkVUFLqVhMFI5A8oM6USAuSU/YG6YcnCnuVqWAMxI+VqRTXu+6rdTIbKwcnmz7lKsY
	Jgt4qXde22+tJZlr9nK+BaXkRjWE27qtHbABEY+2UaZ95wDe1WkOrgHqByvCN89yYq+cJqUVq3itf
	NLq72XANXYiXkvCSlEr0IFad9wvdtJrxr7FIFldd7OVJmdCjcLf1J0YP3uBkYm0QEmilwLWb4Q/yy
	kA/772y+SiQ7GXMLIcQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5q6-0000000E7pL-2bgU;
	Mon, 15 Jun 2026 11:50:50 +0000
Received: from mail-japaneastazon11010017.outbound.protection.outlook.com ([52.101.229.17] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5q4-0000000E7oj-1nDn
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 11:50:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t8tiYlzDdI5GDDyro1lgHWbjCC3O0y0CPtltKzJrXhd2B55gxTJNAVRX5pUKYNMadfNirQkcCnFf3Q5XPEqhparqfHa6M22G0Vb3MhaQbJxMGjdPJQGC8h4S1DKbpRnlkWHvO6WVcukEcRXD8o6eYkxkWDFlN8zjt2E55gSpdz3WE7zx5Eu5Mlt0XP8c0t1L8r2xfUGyGcO/EH0Gre7pqIUv4XniMsWENi/l1Y7VzLgU9tKR+5NuNfu440Y7ea6SOgwTP5OpOAMOxSs07fGrxEhtyE2XRj+414xoRtqWy/lvhSOPVQZBf7i/BljmC3QQXCWQyXqbVT394jjYAJZCKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YvghyFoIzdvDW4juRlzXtSMpyZTNZ7kKzhmqq0QQBuw=;
 b=mgZ97D08mYhcf6hMdjp/dXbIAKo3GHLdkpsRuBFG+y4slck3y9P7b6qc56p/SBjBS6oiRMXlDI+Pyt/qStC+ho0zI9GKsLdCr2LH7mszT9flRoeVk+XdQjoKRLuCrfvtBoSECMJb3rN8hbal5haSv+/lX+ehpUAjj605Q6ljVn9NkF8OXpWMvwubcCGjf/SIRasNDg1hBvkY7nfU8AOrVVYVYOBlZfPzCjSWvEugt5IXk59nvjDwk5/LY+2q+JID6LV9CXT7Ev5CcD9vlfahxqCVctmUU4oSuqsp7KAkE0FCMuoKro24swKVPU6PXdxYrYcxi6HaDS/Qpi8Jmeh3Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YvghyFoIzdvDW4juRlzXtSMpyZTNZ7kKzhmqq0QQBuw=;
 b=S8SUyK1mzXoohY0EyL7RNhUR5Em4dDCIlM/LrxL4XFTR/EJYNHQK1pT/e3ehtNxdIj2w/4GFnEGYQFCdm2qgXt7tMRRxIcroHAzP+yg4kifmIjB3AUcbb5+FzmIxk45tAPKhQoD5X5VvnJNj2udSquk3brUvdn6xhC3FvRVba5c=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TY6PR01MB17860.jpnprd01.prod.outlook.com (2603:1096:405:346::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 11:50:37 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::87d1:4928:d55:97de%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 11:50:37 +0000
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
Thread-Index: AQHc+ngaWA394/baeES91naIfR5habY/YB4AgAAHtfCAABvPgIAAAQag
Date: Mon, 15 Jun 2026 11:50:37 +0000
Message-ID: <TY3PR01MB1134684AA984BDC881C8A640A86E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
 <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
 <TY3PR01MB113466284D6307E1967286AC486E62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <75976eb6-5837-4229-9faa-c77e058d1cba@tuxon.dev>
In-Reply-To: <75976eb6-5837-4229-9faa-c77e058d1cba@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TY6PR01MB17860:EE_
x-ms-office365-filtering-correlation-id: dc47cc15-ed2b-49d4-663d-08decad45110
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|23010399003|376014|366016|1800799024|56012099006|11063799006|6133799003|5023799004|4143699003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 6cKlwoQzyiIRTo9ruCAjuXubbFVetHtXwDHMbtU0f4hLR8CQpmpKIb23IZs5AHZUIP8/Gg8RZE58cx+noJzOaiqh7nORiAEa3HyrFzpIBE+sKtyb62cdvDY5yA/5XY4UIY8W96c2hAPrjMQlHaJ0WBiVsYrUDIteM8BOwro1Fx8NolkSkZdHB4SdAOCWINIAf2Lxm1dryG579k7wn6lIBhGyI9twkYwztWrv79EhCxhCOWp5fq8MU+bHfJvm61PYCesBjZwhTN5Sf6FW63qNopigtmAifPSvVZhpW0+DUoJoV0uNYXIxGF0HwG+VEzkWUprcU3hiGTTvtD8QwZlOrFWjy/m59bwTqBiiNXLMsKGQ6e2QfUrp8OWwF3ohTWx+NG4dYyabM9560C9i1/ZOA5wVdxEJtaw7mKXAqXU6ClbFavKcFQkO8G6oHvhwmNoYDJDAJYMputGeWdhK1ZMh0KkwimqTh+frVfbV6wmiCvXZdAO0iNiPJAlEyWCAQWfHxNB/tk2aV7/Zaob2XLnVmJK9qDH4jfw9+wKCokTDe3AN2RU0hfBY5kJjemMQNEHpYqCqaUWyhVl+XhFxcnJ+8lbLx/aTVSveJg2i9GDEb76Is5Esq34SR1Zpl3HQQgk/PoYi9CaUu6p9eMuMUsQH6yeOPULVJpnKHbdggvMwi6sLSwQZTMUSsv2JKUC3sY8iMXyzqsJjUH5xoyqGczwh1nyCJsUaH5gjVZqaKj9CIQ98SUoat81ZN+WlnAJcM8PA
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(5023799004)(4143699003)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEQwcTNVV1RCMWJIMUpMVXptd3ppN0EvTlZrK1lLcG1IYXB3N3pGQ0lpQ0lw?=
 =?utf-8?B?SDVrVEFhOGcxSEtHV1VpWFFyais1Zk44emwzL2RZeWxvTmZPQStZMVNsTFJD?=
 =?utf-8?B?MCsxc3F1bmxkWUI5c3JWdG5maDgvc2hreEEyMFNwOWdrRnVPNTJnSDNiaG5S?=
 =?utf-8?B?U29jRVJESjJiT0E5Mm1mdXBqTzQ0aTd1VmQvdmdxbkFqeGxMYlBVUjgrT0NW?=
 =?utf-8?B?NzBURGlCaSt3NndOQm1VU1lYOUtCWFBycTdsT2NNa3hBaTU0NmpjS3g1eFd2?=
 =?utf-8?B?dzZqZmNTV1FXVy9hR0Q3TkhsR1BOdThIVXcxQmdvazQ4TkY4MXc5d0VHdVpF?=
 =?utf-8?B?SStjWjB3bjQ2VmlmTmVRY3pXb3l2K3lYbEJnQzlYRHdwSjl3Skl0V3R6akkr?=
 =?utf-8?B?N281TzVwdVQreWZrV0tKbHVaZTdkRCtuTWh4TFBrVGQyUW1tUmhBdlNPa3hq?=
 =?utf-8?B?RkpRclpSc0luWXNxSDRsR3RWNEUzWW1qcjhIOEZNcFVQOXhRanduTytYNkpU?=
 =?utf-8?B?VzZnN29ZMUFaTXhKR2x5dXRkSG1xc1Y5ck1GRXJHUEpsUlIwMHBxV2dpaXVn?=
 =?utf-8?B?V3BYamdWZnZHNU1Cd3FYTWpILzVQWUw1cUQ3a0NrRUpPcFRHVWRrY0FWR2VP?=
 =?utf-8?B?anVhcjlQSFVtWG43bzRNcW8vZkVzRWwxQ0VmZ1J4ZUI5Z1VTRERUTHMrNWll?=
 =?utf-8?B?N2RZbWN0dzZTam0wakxCOG5YUURHd01BWi9hS0NHUEV6czhadkYwY1UvKzZk?=
 =?utf-8?B?RSt1UkQ3ZU1UVkZVOWVPeVpRekdHRER6WlF6VkxQc21JWXo3VlVoUFRzNlpK?=
 =?utf-8?B?UmNaamtFdUJ3bUIrRE5tSWN2Q1IrbGNrY2xYR0lhVE1EcDFYWlc1QnhzQXVt?=
 =?utf-8?B?NVFhRDZLWHdBcCtGNmRzRzZMVjRJK1M0Zmt5Y0NyMHBISHFCUFgvSlFiU3pk?=
 =?utf-8?B?K3V4MTZyUEQzVU1JTmEyOTc2VXQxMHYrbHQ1QUROU1g1MURnMHJmYnJjRlFy?=
 =?utf-8?B?RWUvU0wzVlU5L25lZFU2MzExeWFDVnRlYzcwTFFka1B1akFlWFVHYzk2Ung4?=
 =?utf-8?B?aVcrSm1SNG1hV2t1ZDlhc1N6OGRKTzFDNHAweGxyd0tMaWVMT3U0MkRBN21x?=
 =?utf-8?B?N0ZhK29CRnJsUDlEUWdKeVNRdWVOMDRma2VOQm9vekNrWlhkOUQzS01kRm9W?=
 =?utf-8?B?bnkxK0xZL096MHF5SkZ5Z1BkeHZCUWtkOVFNbUVjeGVQYkdpejZwNDFPN1NY?=
 =?utf-8?B?MVdxNlRocG5BMjBJNHpVTC9jZFhFVWNzdlJBMENQMWlhaVJoaEtwMEpDQ2ZI?=
 =?utf-8?B?ckNKZjI2TEtSejNuTDFrK29rdXY4MVFZL2twQm9La3JqandUS0dENUJ3RHl2?=
 =?utf-8?B?N1FzVmh0cjlweGpiajZubGpDaTZ1NWF1YmNIVkNuZ003dDVhY04vMkZJV1hW?=
 =?utf-8?B?STB1ck1TOFNRMGNwcVJ4QnR2d01rUnRLbFhGbzlMTUNHbzlLdUt6Y2E4S1h4?=
 =?utf-8?B?NXlEYnY2VjNPN3QvbWpIdHdEOEJlK0J6ZDR2MVBVd21kWTNPSUVHMWtIakNv?=
 =?utf-8?B?dGdIdjJiWHF0U2wyNjZkeG1VWjlJejd3ZEl0VEk4aDUvU2JkaGhycm1DOFpi?=
 =?utf-8?B?alhLSXR5czVpTGI1bEw1blJMejllVjhTRTZrUUlOa2h0NjZlK0s5a1lVWG0r?=
 =?utf-8?B?WHRzN0REdlpYa0pPNk0wbjR5Wk1mOHJ5aFBkQjZ0ZUpZcVVvOVBLNGFCSkUw?=
 =?utf-8?B?NGQvWG1raWp5Z3l5bXBjbGl0QVl6ZU9CMGFwR1Y5NS9EQjl4WkN1bnBueThi?=
 =?utf-8?B?NHBJbWhtc3BaZXZFRE5TREZ6bVQ2N1hyMW00V0dRM1FzL29SUVIwbUd1RjBX?=
 =?utf-8?B?Q0NBUEZ1Mm45R2NkYm9sMjJtY2Z2VStjRGRmS0dRZEgyQkVIRXBWVnA1d3c4?=
 =?utf-8?B?TkgxSXlRWC9PYklER1A4T2xWRVVoYytIMGdFeVBaWkJMTGtCV0tVaFA5dW1H?=
 =?utf-8?B?K0pmR1ByYXBaRWlod3lQZkhraWhUNGVhNEdYUGZTVUpFV08vdlZIU09NVkJq?=
 =?utf-8?B?a29Zd2MwNlhlRGxSV3VBOTc4U00yN1BrNGhhUk1DbW9tV1kwQXFYb2E2b2R4?=
 =?utf-8?B?UXRiVzF1U3JocFhPejNDV0w1b01OTzZqcUlxSEJDemU5NmlXNnExQmttZGhI?=
 =?utf-8?B?T0tZUEIxc2lTTmdXSHdpbWxveWg2eTYzZzRhVElReFp4cUJDWEgwcVVHRG1m?=
 =?utf-8?B?KzNsU3h6M2lMMi9ROXVJejU2Zi81alpLZ1RRVE5ZY2RtNGxuVHpBdEhsMSsy?=
 =?utf-8?B?SUhYUEZyT3ZpUkx3UHVGb1grb0VoZ0VHTWZGdEtTbVAvVjJOcnI2Zz09?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc47cc15-ed2b-49d4-663d-08decad45110
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 11:50:37.4471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LJATlAhnSoyH7LhKZ37lC78lblsapPBd9WpToHu30BK/T4mQprWCs2n+SXHmwJNRp4/QJmMlN1Sk8VB2FBlVuHy82mi+EJEROqCBybZtB/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY6PR01MB17860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_045048_476427_7AFA7FC4 
X-CRM114-Status: GOOD (  27.51  )
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
> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> Sent: 15 June 2026 12:44
> Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled
> VBUS regulator
> 
> 
> 
> On 6/15/26 13:22, Biju Das wrote:
> > Hi Claudiu,
> >
> >> -----Original Message-----
> >> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> >> Sent: 15 June 2026 10:37
> >> Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm
> >> action registration for disabled VBUS regulator
> >>
> >> Hi, Biju,
> >>
> >> On 6/12/26 17:30, Biju wrote:
> >>> From: Biju Das <biju.das.jz@bp.renesas.com>
> >>>
> >>> devm_regulator_get_exclusive() initialises the regulator with
> >>> enable_count = 1, requiring the consumer to disable it before release.
> >>>
> >>> Previously, the devm disable action was only registered when the
> >>> regulator was explicitly enabled, causing the cleanup path to skip
> >>> decrementing enable_count on device removal when the regulator was
> >>> left disabled.
> >>>
> >>> Fix this by always registering the devm disable action when the
> >>> regulator is enabled (checked via regulator_is_enabled()), covering
> >>> both the explicitly-enabled case and the initial state set by
> >>> devm_regulator_get_exclusive().
> >>>
> >>> This fixes WARN_ON enable count during regulator release.
> >>>
> >>> Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS
> >>> for RZ/G2L SoCs")
> >>> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> >>
> >> The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] for logs.
> >>
> >> I applied this patch on next-20260610:
> >>
> >> git log --oneline -2
> >> afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm action
> >> registration for disabled VBUS regulator
> >> abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next
> >> specific files for 20260610
> >>
> >> [1]
> >> https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819ff
> >> eabfc4eac772bd/logs
> >
> > I have tested only with RZ/G3L host and I don't see the issue.
> > How can the issue be reproduced? It could be related to RZ/G3S.
> 
> It's reproducible with this patch on G2L as well, please see
> https://github.com/claudiubeznea/logs/blob/0601044903b5ae714592db9770bc4ed31fd8bf84/logs.
> 
> > I have executed the following tests and don't see any issue.
> > Can you please try the same tests on RZ/G3S?
> 
> Try stressing it a bit, e.g. the following command trigger it on both G3S and G2L:

It is nothing related to stress, it is just enable_count issue.
Usb function increments the enable count of regulator, which it never decrement
Leading to WARN_ON(enable_count) during unbind.

> 
> cnt=300; while [ $cnt -ge 0 ]; do echo 11c40000.usbphy-ctrl > unbind ; echo 11c40000.usbphy-ctrl > bind ;
> cnt=$((cnt-1)); done
> 
> Same command could be executed for other USB drivers.
> 
> > Is unbind/bind ever worked on RZ?G3S previously?
> 
> In the same way it works on G2L: functionality is OK, these stack traces are displayed as on any other
> RZ/G2L based SoCs.

I have identified the issue, it is USB function related.

I am investigating the fix, which will fix for all platforms.

Cgeers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
