Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 352DAC44500
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 09:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2CUEFYu8g63IRKaCviAdYA8tIon4mXeRGN7hk8XGJk=; b=DZNRQz6e6zNq2L
	l+POXbr8fVwZRXuBGodn373l0nImp/fxbriNSyjKRlLs6ophuwG6dS+d27Sph597MEC3wDlTVMC67
	8U+xl5sLnV9OL/rj8WYcm49k7bskOr9yv12pxrTNR1MUyGE/EMrtYb8WQtr63LLajiYpH4R1iig0u
	QtlRwiyyhPoxn2hSwP4HuU83X+2dqUGF4FNo4HI3ydTT0D6HDM0N1ewwv/Rb920ny8WNr1nCX5mE4
	pg07C+7pmOeKbBvRiw1qfWvsPYZayGFiZg/9q7c6k0rcV5sTrwnniU0/YshNeTzqsE4fxM+AR/UUY
	9sZgyX+wlEhCHsIbhjhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh2ZQ-0000000Egmc-2n6W;
	Tue, 07 Jul 2026 09:58:28 +0000
Received: from mail-westus3azlp170120001.outbound.protection.outlook.com ([2a01:111:f403:c107::1] helo=PH8PR06CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh2ZN-0000000Eglc-2ZHb
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 09:58:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nNAHMpc+dO9MphFjmssvAUOFy+zFwls/pVcsbjZSWq1Z/kX6WaaVmm6dsoegu89AA12rELydzTkQqI44bfJFidm+Wx6mB6jfY7Cwk+fqE9kM2/lBxJF0THazbWE7nTuSN6FIwndFbkUMASRe0sl/Vky++f6aA/6ShAFcq3tck9kixMGs+GRvwYED7rBm3+NaidZKL3daVkdIkwLtVOtovquzeEmQDNeEelnPX/yyoOFHVcB8AIxUHiDHZkAbzH5Gf4DBIQCxGVv0a9JUwlemn4dzV9cabaPAo64qNS5a/49alnJ+Htv+kbeQ7vMaQlOPlC55VbCZXBIzLzA/jAKujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b5GEj3SUxHsSlcqHFl9RHBlMicbShNCssS/7lyLG1r0=;
 b=hEfIKP31TtESEdlPohZweP/bQ+UZQq6gpUhi/b5lS8oOWMO+E17lk3ah+18/2wEzJK7DFwbOmb0gb9tBdZSN94cqhnEp/5MUhnP0VthqpPqWWxFfFsAi9+UdVF8YI5ITJKAR7PA6QL3V5rqhSy4XzjgLWZHCmgbJ9MGHyGIs8R5vb8ekZFg8hliuO66uFEwbSiM/E8Tv+SJw3yGLxG4QuVxYFGU0AnD9eByCJzhTQAVEueaCXi6AiwDnUCRYwFYOjdtkloYr1KBrFICRD9OEy/pGarVUWuXqhvxlfIugSAs4r8eCvpmyI947A+/g0adr1Hd4j0Ik8RTmUPjVL2CKYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b5GEj3SUxHsSlcqHFl9RHBlMicbShNCssS/7lyLG1r0=;
 b=gel+msZohiYYE5MuQawCb3HvI0eXDFVRq1XBv9CIsA9spaUyH0B1Xn2Sf93jYb9Ox4jd8UYJOGV42vIkTTYaM1hLu8u6m0vNC1bvuxP0SMyOd60ye/urB90p7OuaRz3sEhftELg6y/SfFfhesFM4uSSPlCxTBjcYdFk9n7E//tWwuBuexJEoxJrB/N2kn5RaiHfyMC94/cEl7D9rNYRezz5VcelLtPGV1k4qW0BJ3JnR1/F/Cwi+J8CoeiP6bwHmrb8BUQg3W/emYMLyCFZ9Qs5j7MW03w/Wyl6jc/elWMI8Ej3oBN3TG9hJFQ+4anXqBs/fFh8YtF9oP+cCUdKKGA==
Received: from DM8PR11MB5590.namprd11.prod.outlook.com (2603:10b6:8:32::8) by
 PH7PR11MB6499.namprd11.prod.outlook.com (2603:10b6:510:1f0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 09:58:20 +0000
Received: from DM8PR11MB5590.namprd11.prod.outlook.com
 ([fe80::238d:9dcf:c2c7:75e6]) by DM8PR11MB5590.namprd11.prod.outlook.com
 ([fe80::238d:9dcf:c2c7:75e6%6]) with mapi id 15.21.0181.012; Tue, 7 Jul 2026
 09:58:20 +0000
From: <Conor.Dooley@microchip.com>
To: <ivo.g.dimitrov.75@gmail.com>, <conor@kernel.org>
CC: <vkoul@kernel.org>, <neil.armstrong@linaro.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aaro.koskinen@iki.fi>,
	<andreas@kemnade.info>, <khilman@baylibre.com>, <rogerq@kernel.org>,
	<tony@atomide.com>, <linusw@kernel.org>, <brgl@kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-omap@vger.kernel.org>,
	<linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add chrg_det
 interrupt
Thread-Topic: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
Thread-Index: AQHdDGam3cJf3YREAkK3VRP4rbzJH7ZgvSEAgABGIwCAANI2AA==
Date: Tue, 7 Jul 2026 09:58:20 +0000
Message-ID: <dad556ba-5965-42a0-b78a-2d417b2f6837@microchip.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
 <20260706-visitor-calorie-b805ac5af970@spud>
 <2b192691-54d8-4449-a18c-b87266c6c73c@gmail.com>
In-Reply-To: <2b192691-54d8-4449-a18c-b87266c6c73c@gmail.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5590:EE_|PH7PR11MB6499:EE_
x-ms-office365-filtering-correlation-id: bf41d7af-fe28-418a-7d0e-08dedc0e469f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|10070799003|376014|23010399003|22082099003|18002099003|38070700021|3023799007|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: Ypm2BrZ8B2cmcsvqK1iE3EyN65d8me999mPx7NhkicdZU0iuz9vbVetPCp+lC40WYTwYJEAyVHgCPzkhk9AYptu93lJ5U1pUobtnMBPebit4MMiGnqibX+orj7DPhTruIXRZJjTx5bqsNm+T3b+sWiq7AfA5ZRxiaok4gjZlimiHoYGi04p1xLk7n9cIgMzxb3ZHHwAtfoAAFXAij/tXDiI7UcLQLumJuJ86ogJ5p7d4pmj2y0B01wmA1NxlbYEV9kesDYjN0Nxr7Ru5v9Tc9Q541SMWEHjezsfRjNpgA9mYinsKMs9Ga0pfwTjZnUEBsYhKnHXg/YIC8G2HzuAIeOZF8uOBqKBCnVfrHr1YqgBGncH3VE3AwPnx+XeAb5SBiZc+rVs8WapX11Vq0ode6yGhh814JRR/oIQJYu9SNhBa7hgVWEv5PamoG4yc35ENOK9yi2zLwtZOD2S0OZ0Mn6Yb9kBn80+dCbs4psKlKhdguWfepEZF/HgsX1l1ohq/JSB4nMCQgj66b49xTycnkStMcnKzNuMPfLdGVVa8nX9LskMTSulO/7weelCW6FpZSgaYpBm/7zJBMocaBr0XOBXjyBXzlkawBO7zSZ7SsjFeH6WmVS3OkvFuubaH/iC7nDwpY9R5WXzFGIQ1mNOrdDZIv2f4OTp9F7QjSmP4qiETBtz66rgN+6oN81b4Av/9xM7FCU9oJ0K4psbkFHtGTQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5590.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(10070799003)(376014)(23010399003)(22082099003)(18002099003)(38070700021)(3023799007)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amhVNWswTFpJdVRxVXJoWndNbU5wMjltN1JlUXc0WEY5YTdpa2xrSUVVczFU?=
 =?utf-8?B?YnpUeitBVytReDRNR2l2YlRKMkhqT2VxYXlEUEg3RmttQU5aZmJDaG14RmJz?=
 =?utf-8?B?SlFwNkxoWlBQNmx4NVNSUDJCYTUxcFJrdTBHMXNwY0JtZXVwT3BDVndqT1pj?=
 =?utf-8?B?QjE2Z0xEVTFoelFySjRXM2hBNUtOV04vV05jNTBFNXFOdW8zekFOT0JoRUls?=
 =?utf-8?B?WjZzZmcwVDMzempkSmQ1dnFQU2szNHcwc0hGMEF0T1Evd3prQVpxNit6TlZa?=
 =?utf-8?B?N3l4bkJlL0JzMGp0WFRnUFExN3VGMmR1ZkVpVTBvTC9SV29JRGpJWVF1WGpZ?=
 =?utf-8?B?ZUJYdE04eHNHZFRIOUpnTU9QVW1PTGZNQzhrMWtBRFdWY243ekk3bW9QSjVP?=
 =?utf-8?B?dmFwaHdwNUNqNTB0bVdDemtieHhGM1NZdFFsNFNNQUt1WGxZb0V0TStGRXdE?=
 =?utf-8?B?alhOMzJxR29wcXhDcHpDMWJQRmduUG1INjByWGNvMDhxbXpMaEd2QUhpdkl2?=
 =?utf-8?B?UHlIaXZraXZtblNTTkhNQVFiMlI4U1Ivbm1XYVlrWXQ5eThRSU4zMzZ4VHBI?=
 =?utf-8?B?ZklMajFzSXVqNjJnYnh5SHBDcWx3ek9RbmZURVlha0g2U0orcUdiL2pYTkNT?=
 =?utf-8?B?azFrV3RQRWlYZzhsMmJsUEdpR242SFVxYlpiTWJyME9rZ3NrVE1sQmdRalZt?=
 =?utf-8?B?MW4rS1lLTUcxSWdzOFhkMjNvSVhGL0ZkdjFLaU5OME5mTHM0Z0NFK3BuT0o4?=
 =?utf-8?B?ek9xOFd4ZlJ3eXNzdU4wSG0rR0Z6Rmg4SFNZVGRuVDFNR0twK0x0bEtXbVhh?=
 =?utf-8?B?TTA3dk1XS24rU3FMT2Q3MXUwMjNnT1MwT1AwdzBoamlGYUZ6K2hEa3BWd3gv?=
 =?utf-8?B?MS9tSGsvYW1BN2hlTVpLRVlkemdEUmd1Yzd1MmI0UDB3ditXYnAyYU1GcFV4?=
 =?utf-8?B?SzN2Y3dUbnNSMjdub3I0S2NEU0tYVzVvbGQ5TkhrYm1HaWRxQ0oxNHJ4VEgy?=
 =?utf-8?B?Z2hIUjBxb0ZNOXZ6L2UzY2lUSHVkMjdRWHgxL01Ga2NLVjhmUE1zUGtpR05D?=
 =?utf-8?B?VWhQT2E5Tk54N3BwM2V6aWxUeTg0elhHRlMwbEFCeHBGWmxyZmFRK1FFNnFY?=
 =?utf-8?B?dkYzekJBbHJVWkVsY2pJbHoyZWlOVmlmdVFpZEpGTmJOR2VyY1hXcHA4VGJH?=
 =?utf-8?B?SjRHdkp2TXZCbTV3S3RZcUcrNzRKajJ3K0ZjNmlQWGlMZm1SSUVhOFZiUEhR?=
 =?utf-8?B?cXd0WU1xUk1hTXVzUEVhdkM4U3VCelpMdVZWMjlrTS85TWRIWDhPU2hCY3Fy?=
 =?utf-8?B?WVhMY3ZQbldVeGhDeWJSbzRWWi9yRFo1cGkydUhMUDRFQS9iVlFRT1lJb1ZL?=
 =?utf-8?B?U2JuVFNyTnRVNDJldVh6NXZheVJGZTVYUzNsd2tXRzZDVGYyY3ZUaitCZHBC?=
 =?utf-8?B?OUpRZE5hTkVIMHU2TXBRQldDd0YyQlJyQ3pvN2cwQ05VN2tvS0xETlR4UXV5?=
 =?utf-8?B?YkZmNExES0NRUXovNFlyampHNWNiY250dGNtWnJQNXNmYjRoaVV0RGQ1SUpt?=
 =?utf-8?B?cjRzT0NiZzFiVUljUysvY3dseVZ0MkR3TlFkS0Eyd05BMm5hWUNmc09XNVZm?=
 =?utf-8?B?YnJNV3RLMWpHVmpoVU1PVDdPMEJuSTI1bzJWcFVNNlJsemRmUGJVSUVERTBI?=
 =?utf-8?B?b3dlWWRaaHJ5NFpYVzlJSVdjTTd3aHJyKzRRUGFOYkE5L1FIMHpzb2ovRzN5?=
 =?utf-8?B?a1dKeG1JM0htVDJ5TzRGRVFwSVpHWVB3Q3pKT0htV3hJbGExRUVVQWpsdCt0?=
 =?utf-8?B?Wm1hUFlOYVY0WG9JSWVEaVRjZkJDbGo1MTBPM3NTWWpWeUtLaThaZzVselNW?=
 =?utf-8?B?eDdrdE5QQ3dxc1Jxc1dRL2w2blFQTkNkcHdPZFNjaEZJUlpHbmNDTHltbTgz?=
 =?utf-8?B?Qmhzc1V3M0N1MG5vdE9XYTVKV3VHUVludGQ1ZFFMM2VqSU8ySFhueHNRQ1ZD?=
 =?utf-8?B?S2VnUGdURlpPYloydmZzU0dWakRZNGZoL1NrV25EMFhMZjRDN3hHUkRieWZz?=
 =?utf-8?B?TkI1QmlGa3JoKzNqeVA2S3NVT2MrVjMwWEFNYndwYXdyTlBHRDBITTVleW1N?=
 =?utf-8?B?T1dlWVNjQVNmdjd6SXVON0dhQUZmUDVacXFiWkcrRGs4VGs5SW8xLzFmdWYv?=
 =?utf-8?B?dEh2dHdLRW1CL2hnbWZHN1FXSnY5SUJkNDBjT3U5OUdVMWIyZXBpK3MwcXly?=
 =?utf-8?B?by94d0h2Zmt0YlptZlNKM2d2VTJ6Y1pSNmhUUWtLWVduNDkrK3hvUDFBamNv?=
 =?utf-8?B?YXhXVlFINWRUdC9CRE4rK1k2NWxqMWhLV2tldFVVWTA2eVphUXF2SGIyNEdl?=
 =?utf-8?Q?VMEH3IsKIIcRS9hkjyL2OxJK+JTcd2kUE7jeUjvTpoVG8?=
x-ms-exchange-antispam-messagedata-1: WoJRyCNJvShU4w==
Content-ID: <CDBFB1D7C7EECA48B4F013997D87235E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: microchip.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5590.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf41d7af-fe28-418a-7d0e-08dedc0e469f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 09:58:20.5450
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P3KeVGUMvpPoN39YAziQhPSaulLAFa8xMlKy/+5YN9aSoPal9tUoXpm/lMw5qMgq08lJTj5ikwfKHhuLAA5iGj3mN0CdS/BM4TCVPd+O82A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6499
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_025825_659219_605C0E9F 
X-CRM114-Status: GOOD (  18.84  )
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

T24gMDYvMDcvMjAyNiAyMjoyNSwgSXZheWxvIERpbWl0cm92IHdyb3RlOg0KPiANCj4gSGksDQo+
IA0KPiBPbiA2LjA3LjI2INCzLiAyMDoxNCDRhy4sIENvbm9yIERvb2xleSB3cm90ZToNCj4+IE9u
IFN1biwgSnVsIDA1LCAyMDI2IGF0IDAxOjExOjAyUE0gKzAzMDAsIEl2YXlsbyBEaW1pdHJvdiB3
cm90ZToNCj4+PiBUaGUgQ1BDQVAgVVNCIFBIWSBkcml2ZXIgdXNlcyB0aGUgQ1BDQVAgY2hhcmdl
ciBkZXRlY3Rpb24gaW50ZXJydXB0DQo+Pj4gZm9yIERDUCBkZXRlY3Rpb24uDQo+Pg0KPj4gVGhp
cyBpcyBub3QgY3VycmVudGx5IHRydWUsIHRoZSBkcml2ZXIgZG9lcyBub3QgbG9vayBmb3IgdGhp
cyBpbnRlcnJ1cHQNCj4+IGF0IHRoZSB0aW1lIG9mIHRoaXMgcGF0Y2guDQo+Pg0KPiANCj4gUmln
aHQsIHRoaXMgaXMgYmFkIHdvcmRpbmcgY2F1c2VkIGJ5IHRoZSBmYWN0IHRoYXQgaW5pdGlhbGx5
IHRoZSBkcml2ZXINCj4gcGF0Y2ggY2FtZSBiZWZvcmUgdGhlIGJpbmRpbmcgcGF0Y2guDQo+IA0K
Pj4+IFVwZGF0ZSB0aGUgYmluZGluZyBhbmQgZXhhbXBsZSBEVFMgdG8gdXNlIHRoZSBjb3JyZXNw
b25kaW5nDQo+Pj4gImNocmdfZGV0IiBpbnRlcnJ1cHQgbmFtZS4NCj4+DQo+PiBTb3VuZHMgdG8g
bWUgbGlrZSB0aGlzIG5ldyBpbnRlcnJ1cHQgaXMgb3B0aW9uYWwsIHNpbmNlIHVudGlsIG5vdyBp
dCBoYXMNCj4+IG5vdCBiZWVuIG5lZWRlZD8gVGhlIHBhdGNoIGhvd2V2ZXIgbWFrZXMgaXQgbWFu
ZGF0b3J5LiBJIHRoaW5rIHlvdXINCj4+IGRyaXZlciBwYXRjaCBhbHNvIG1ha2VzIGl0IG1hbmRh
dG9yeSwgd2hpY2ggd2lsbCBicmVhayBvbGRlcg0KPj4gZGV2aWNldHJlZXMuDQo+Pg0KPiANCj4g
T2gsIGl0IGlzIGluZGVlZCBub3QgbmVlZGVkIGZvciBwcm9wZXIgRENQL1NEUCBkZXRlY3Rpb24s
IGFmdGVyIHNvbWUNCj4gZXhwZXJpbWVudHMgSSB3YXMgYWJsZSB0byB0ZWFjaCB0aGUgZHJpdmVy
IHRvIGRvIHByb3BlciBkZXRlY3Rpb24gYnkNCj4gdXNpbmcgY3VycmVudCBpbnRlcnJ1cHRzIG9u
bHkuDQo+IA0KPj4gV2hhdCBtYWtlcyB0aGlzIEFCSSBicmVhayBva2F5Pw0KPj4NCj4gDQo+IFdp
bGwgc2VuZCBuZXcgc2VyaWVzIHdpdGggc2NoZW1hL0RUIHBhdGNoZXMgZHJvcHBlZC4NCg0KSSB0
aGluayB0aGUgZGV2aWNldHJlZSBwYXRjaGVzIGFyZSBmaW5lLCBwcm92aWRlZCB5b3UgYWRkDQph
IG1pbkl0ZW1zIG9mIE4tMSBzbyB0aGF0IHRoZSBuZXcgaW50ZXJydXB0IGlzIG9wdGlvbmFsLg0K
RHJvcHBpbmcgdGhlbSB3b3VsZCBtZWFuIHRoYXQgdGhlIGRvY3VtZW50YXRpb24gZm9yIHRoaXMg
ZGV2aWNlDQpyZW1haW5zIGluY29tcGxldGUgc2luY2UgdGhhdCBpbnRlcnJ1cHQgZG9lcyBleGlz
dC4NCg0KQ2hlZXJzLA0KQ29ub3IuDQoNCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
