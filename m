Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3238BC7EE29
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 07:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utjDyS+8jL+XL0v/xqfEAvusnWkUK2B3uQEvaMAGzH8=; b=vOQDfG7iY3ZDh+
	SBg4GUDG7UjBsJGrWVzqLI2VV5XIXbKYMARZk/hERj9dQk3DH2RvbmqYf4dScXxdUB9lh9CIZsvqf
	x7Z6DcSU33a4y/lzmlsF8OxitPR4BDS25nSXfQAzfPnEcX52M3Qy11mbxlzithRb1u/MCh8YlStQW
	dfucJ1IelKG3h/Gz/0d9K+aL4GygyFI4uD0Zwia4au5HOvzN9BycrnczlFkV2b5l7eOA4b8OYeHhh
	5oE9rs8S2iR/bfB6t6SNFb/ETGwsJtKyZ9Ank/KYWUrz9IwrdpHnfsSQjTrAXyuVIlwUuzPa3uj6u
	SKODlJwknPi1NIOQVsDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ytQ-007IK2-2n;
	Tue, 13 Jun 2023 07:56:44 +0000
Received: from mail-he1eur01on0630.outbound.protection.outlook.com ([2a01:111:f400:fe1e::630] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ytO-007IIc-0Z;
	Tue, 13 Jun 2023 07:56:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5M5q91jD8eihSfkyIcJbXkXg3ou45I5BoxDyYdDWa2IlP2XDjGQZCfCJv3c+2BmKqxGkE9PlnrbMyZ5DlE7dtxPpysfnm3Inwn4pgMI8uQNv6E8SqBO8OHR9pVPGgxmJq/qyduuu3n1ml7eASFzX59QrOOImhEs3pTJoZsgPLhNcX9rbnBq1+sDbQfLXSSKn9Bw8pmYhYtD9Kif7eOc5zLS8LEQfIgUsl/U72arOyYP3f0/gionddQgvXIMd+DRGDl4YO0Rf/hDs/Hr5sl+3VuHe151+7rk38gw7PSGuNZTMj3ZJlldMcMEA+tqtYU+XPa9qphZbdfNAPmRPn8W3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqQFGEo2R01w9ABIG3VlEncZxdpFXBEyP44RfgQ8Ns0=;
 b=jJSWpsVwiRliRwwWj/enD7t2GW+87Q8xPXMlxWIJmu7SkNSwsa4gNifRGQcrPTOYpDpKDTDO4ESRCI9gA0ScoAuWKCXRr/d1sT46KOyDqufbh3CgRI02GJzs802jdqcEOB4C9nSt4zbuHjNMu7fVYvapBt8xPjhJ0Er61YTuNERCes75ZSvobKLwlv5fTHMlIQwylDMhsAyhjxQVDYT1dezyu+Q3jiyDUeNWP+nwW2fTfaqPfPFylpp7vLjegbhiKgam3pO5+5sIfxLerB3sEZSMQT34LZHaFjdjyxb6qThX5hswrJH1eYqG9nCD4O7KU+n0QIeac9olL6ffZ5bISQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqQFGEo2R01w9ABIG3VlEncZxdpFXBEyP44RfgQ8Ns0=;
 b=RSve8NSE2VcDb6RfQLmLg7bx2KCFU3s5rwQ+tdETDykj9T373oIsXpOezoBlyIdX25ipvE2erIGipA/WIybClt5X6SD7/Jt1r75dtpPf+6qHdkWgak8237KQY8YZ0vJvlN9rfYHQKWsHVFi7AxNmvjdKtNCLr+e++3MoIFKVO3E=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AS5PR04MB9895.eurprd04.prod.outlook.com (2603:10a6:20b:651::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Tue, 13 Jun
 2023 07:41:25 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4%7]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 07:41:25 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>
CC: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
	<s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, Jun Li <jun.li@nxp.com>
Subject: RE: [EXT] Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert
 to DT schema format
Thread-Topic: [EXT] Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert
 to DT schema format
Thread-Index: AQHZmboSn6UDTrFVK06L5r7rtQ42ma+Cr6QAgAP0GLCAAb1QgIAAADQQ
Date: Tue, 13 Jun 2023 07:41:25 +0000
Message-ID: <DB7PR04MB45051E84DA57203E114F6DC28C55A@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
 <b8f35a9a-7553-92fa-6fdd-2522dc9bd36d@linaro.org>
 <DB7PR04MB450553FBD13E3101F8C065008C55A@DB7PR04MB4505.eurprd04.prod.outlook.com>
 <b7bfc733-7d0d-d04b-5bba-ba1b5a056235@linaro.org>
In-Reply-To: <b7bfc733-7d0d-d04b-5bba-ba1b5a056235@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|AS5PR04MB9895:EE_
x-ms-office365-filtering-correlation-id: cb40e6c8-216c-4554-a5e4-08db6be19773
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CDBKUa+kF3rCXCkFqQMmUEMJSFCcvRlxe3qJZmlBMRcvBMwNs0569HkeNEtu1oPQI2FrrAy4YPxjVQSSqvOEbqQImcgePAxM5Qa65v8r1x4r4jmP6zgiNR8wkNh0rLFpizizUueQgWsQwPNCfhNoxPDxQbl10r09/FhTKOWo0KU0NeSV9Xv462i1DWsb2mlwtoAy2V6A1HvWyje0X3S7b1KXgL9kl5sbRt8I5yEM1TcM46EEsT0fv29btqbnI17pqQzAJ93j7I7yBof9FZedVE/TC5TjyDekrWyTrO8/WK6S+0cAA2FYOogptdGhNB8oL6vlrvjxKN02xU1ZM8gV4/0bFoPCaexjfWOBBvch3nBqWtj2W6XzH47BmHvXlg/E0eJoYOGfiowPSEgSJsr7xhG8nP00aMzXvQlj2UBnLdy4q3VAnH+FrLu1F9Lg7l2K0/M9SgHbIX2b74H3tcveWy3oCDZ09h4jThFniGf4I/bf3g45MvoJ9K0mdEdUtV8K366HdRVrr0trrGwCR+011oRnNT0dV2S64tyYLKoNR4lGFW3/PGBafbCrwOSvVxovG9QUKGL4PNxJs3RCimmHIXOaGlReB1BJuwZ7hmtif4i82FD4v/xxce3bSGtsPEFA
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(451199021)(33656002)(38070700005)(2906002)(52536014)(5660300002)(7416002)(86362001)(83380400001)(38100700002)(55016003)(7696005)(53546011)(71200400001)(9686003)(6506007)(186003)(26005)(478600001)(122000001)(110136005)(54906003)(76116006)(66446008)(316002)(41300700001)(66556008)(66476007)(66946007)(4326008)(8936002)(64756008)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFk0SDg3MkRUT1k3cWh1TytzZDViR0xUbk16V3ZNcTFJenErVzVrNXlWN1gv?=
 =?utf-8?B?M3BGb2NQdGYzcGVuZlhLVnNGcmdSYkhkY3J6SkNsMCtRZUZrSVdGUWpRZmUz?=
 =?utf-8?B?ZVZlcjV6cGMxeHBGWnFYbWtCSldwMUhKVG1DTks1d3NhcENWaEMvK2ZUcElu?=
 =?utf-8?B?Q1NmN0l1RWVCVjV5MGlua3YrSXBCTlNXZ0NhQmVLUHhpWUo3ajZNMnN4NlJQ?=
 =?utf-8?B?RjIxbjZNKzJTdms3Q1pDMkdhN21IcTFMQktrSWtualpmVTk0R1VsMExOSTJK?=
 =?utf-8?B?ZWpNdURESktCQWpiR0xjQ2ZkLy94dWhYVjkvbTc0ZEErQkVSTVNNY09RMk5G?=
 =?utf-8?B?UlJRREN4b2hteEtKdkczMS96Uk9zS3lIQTJlcXVDaVA2T0Zyd1NvTUphb1J0?=
 =?utf-8?B?UWxqUlNZSHJ2bWhRaWpsU3c3clY0VmQySTF5UUIxeTAyclNYby9ybDgwNkR2?=
 =?utf-8?B?TjVvTHQ0U2QzaVpOVlNlbTBVb0thdlBaYlVkRkpmTUF2dlY0MmFqVGpTSU50?=
 =?utf-8?B?NCtkaTRIOWRVd2lhSG9NQjh1U2ljUGdGRnJCa05mYmxYbmJGUXZMYVMxWUFy?=
 =?utf-8?B?Rm9jK09kQ3MrMnBXREM1UlNlMm01K0ptR2xVRGJNRXRZUFJmOFZJWkNwODdz?=
 =?utf-8?B?R1BYTHA0TlBSazNhbGtUL3RWWFl5Sm9IUHM0QkdhNFFybmJieXVVQjJIV1FG?=
 =?utf-8?B?VGg1WnFlcUwweVNXaDR0eUhsVGI0dDFzd1MrSk1ySzRKZE9BQUx0NFVtR3Jm?=
 =?utf-8?B?VXNRSjJnbFdHbEk0MFgyQldnR3pJelFoSUZwVVVDR3RkTzMxT2pycEpKWHM2?=
 =?utf-8?B?SlZpWmo2MEpDUlR3TjcreDJWTWxBZklCWDVLano4bUJUQzdwN2F2L0lkd1pt?=
 =?utf-8?B?amJKVGJWVmZRSnU4Uk53RElQaTRQYXZqL2wrQy9XcE9COUNKaVZaVzk4cmhy?=
 =?utf-8?B?SjRRbU9udGZvbzI0Z0R5YXE5NmpyV21jSW5Db1lGY0t4TjRUV1hVUUJuOHYv?=
 =?utf-8?B?dlUzL29iQmhScDAyWHpZNmRhOXJ1TW5FMm5RSUVqZ3RJWVE2aGo0bzVuOS9w?=
 =?utf-8?B?YnIzbUN3NUJZdGZZMWQ1SjNZcXp2Qmo3aXpRWis0TVRTSTZVTkZpN3BkeVVB?=
 =?utf-8?B?VzN4R21Pb1BKdGxvNzBJaHlnSzNqRitOYTlUWEI1OGQzTkszeHVHcEtKTFRO?=
 =?utf-8?B?TEtMRDhST05nTGVoYUxvVWNTYVJXelNBSGk1MXlCbWVyOXVBSlRmeUZxK2Qv?=
 =?utf-8?B?eFhzQjFFc0ZGcEg1QVZpMHp1ZTMvazFodzlqaTlabTI3THRpUkptNyt4bDFQ?=
 =?utf-8?B?cEs1bVBLUUQxb1FkanJ4ZTRPZDRYaVRETWIvanArU0tFMXliWll3bi9JVDlv?=
 =?utf-8?B?ZDllNUlpN0N5QytPZzhuQW5RQUhaV2w0UUdMN29QRXB1M1ZjS24rN1BxUmFE?=
 =?utf-8?B?a2xNYXIzbWZtTnhmN0tOUllNNHhTbVhRZDBMMm5WcmRBbFhDdVZqaktBazVQ?=
 =?utf-8?B?N29oQjdLV2s2NStPMnhCQUJmd1d0UjYwMFNEOHNkeHRKc01BY29sRHFPRUps?=
 =?utf-8?B?ekRPNW9BeGZxSGI4ZTBXSW9BN3VzQXdJUE5mNUx5ODI5RGlSV1ByL3ltZ0FT?=
 =?utf-8?B?VVdUUUpOdnpRSERPbDNvMlNtc1k2eENPenRFMXc1Tm8xY3BOeVQ1Vk9pbjVi?=
 =?utf-8?B?c1ZITG9OVVBlTW9ZWEhxeTN6cG9UTElOSGNhclhYOEx6cU9RaTBZdmN0U3RH?=
 =?utf-8?B?ZmgxRExYMFY4VU8vSWVSSFJrUFE4NExLQTgzRXIzZmo2MkkyQ0I3eUQ1eklZ?=
 =?utf-8?B?QkJmMXVXYzRmYjVNdGxyaHV1aTdVaGRPbEl1dEdUNjhoRDQzQi8wZWlSRGZy?=
 =?utf-8?B?bzJRUmc0dENLOStBTHkzN3VBYisvdXI4WTdjTVNRVmxUZWNpeHJwcU5lb0M4?=
 =?utf-8?B?blNmVmtYZEVGQ1VlS3FlNW9ldHpBRGRpZXZuaUU0RjZzNzlZQmdOWHBBK3o1?=
 =?utf-8?B?Qk4yTWV3c1pBd3Nub04yVlpJMER2VUVWd1BQL3JMYWorWC9BNk1OVzdkcmFk?=
 =?utf-8?B?cnpBZFc4cXZLOFd5NVJxeDRFTFd4WHA4bU1LNm5tQVh0RkxBaTZEbEZkMHp5?=
 =?utf-8?Q?GtmA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb40e6c8-216c-4554-a5e4-08db6be19773
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 07:41:25.5225
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vhAMF7R/oMKlWpkeZ4I7sLs0ddInWrL27mEU3Sk1EPvMCKdxpCj5xY+4x2wr7BB8/fiOJChp9INWXyU0WEFuKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_005642_218488_11A5453D 
X-CRM114-Status: GOOD (  23.11  )
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

> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Tuesday, June 13, 2023 3:40 PM
> To: Xu Yang <xu.yang_2@nxp.com>; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org
> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx <linux-
> imx@nxp.com>; linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> usb@vger.kernel.org; Jun Li <jun.li@nxp.com>
> Subject: Re: [EXT] Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema format
> 
> Caution: This is an external email. Please take care when clicking links or opening attachments. When in doubt, report the
> message using the 'Report this email' button
> 
> 
> On 13/06/2023 09:30, Xu Yang wrote:
> > Hi Krzysztof,
> >
> >> -----Original Message-----
> >> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Sent: Saturday, June 10, 2023 12:44 AM
> >> To: Xu Yang <xu.yang_2@nxp.com>; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org
> >> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx
> <linux-
> >> imx@nxp.com>; linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-
> >> usb@vger.kernel.org; Jun Li <jun.li@nxp.com>
> >> Subject: [EXT] Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema format
> >>
> >> Caution: This is an external email. Please take care when clicking links or opening attachments. When in doubt, report
> the
> >> message using the 'Report this email' button
> >>
> >>
> >> On 08/06/2023 05:36, Xu Yang wrote:
> >>> Convert the binding to DT schema format. Besides, this also add other
> >>> optional properties not contained in txt file.
> >>
> >> Why ones do you add?
> >
> > I add clock, power-domains and phy-3p0-supply to this doc. Because
> > the txt file should contain these properties but it not. I think the
> > txt doesn't get update in time.
> 
> Can you mention them in commit msg?

Sure.

Thanks,
Xu Yang

> 
> >
> 
> >>> +  reg:
> >>> +    minItems: 1
> >>> +    maxItems: 2
> >>
> >> You should list the items.
> >>
> >>> +
> >>> +  interrupts:
> >>> +    minItems: 1
> >>> +    maxItems: 2
> >>
> >> You should list the items.
> >
> > After my check, the maxItems value of reg and interrupts should be 1.
> > Will change it.
> 
> OK
> 
> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
