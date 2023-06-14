Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A12DFEB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 02:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1jjAayiVpAp6dkewYI6mlPRVJR1eCqpK+akWI2xiXg=; b=LiJvPxDssEfDeY
	hEbZcrT6ygPU3h6EFc3gK7oQDaKqtaKrszYkCtZ6eJv+FmaCkOVJMzA+HT8BDoZkz/mP4ye7Aosct
	fqJTzc34k5GSnLhjKCHdwmDP9qc0udx9zCaEXUacIubeW+UkjverczawmFJTHWKNB/CwPnLgM709j
	4eAvcW8cFrlxkRS9Fq/mAYyPAm/rT260Gj4WvToW8S6kM4It5W6cmak7ZWd5nsyb1MymE9SY0QDvv
	prn1TzdmJFUr3RlJzRmrgAkhciHU+OqbK4MwU/sjv8eMHKpBTUdBIOWyeNYP8IHFtYE1Wldn4J07m
	O0GjfYWsEaWr/EnV5HpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9GEl-009jYB-0Q;
	Wed, 14 Jun 2023 02:27:55 +0000
Received: from mail-db8eur05on20627.outbound.protection.outlook.com ([2a01:111:f400:7e1a::627] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9GEe-009jWV-11;
	Wed, 14 Jun 2023 02:27:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftUaKRPHoYJdKIznzmUaqpmwg/ppmISYrlJmclPfP4yPx/7CDF/ISnuL3be3Pa2iKHoA9rZSTGb5LAxyEZIiBQJ2zyI+Ic/M3dAYQ6tsmbXuH0Zv0t4zQbzbRhDTVG+bM1cs5iT/1Oqli8pnvqJABvuwL63BC/k4uurmZ3r2EY8TGy9cz8laYWuaEsKaeVl++/riCr4Hs2hzH3GwZ3NJorFy3aUfd2zJahg0QOkH+1/rdvypTLH994yg3X7Yd71EklfXy574D0BrnkL9tXfLmyBfyOrfuE8k2oc068EoxJy/XhCVpRcB5LgDf6pQ9MMc1yTRInur01ZQ0GEDd+/Frg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hsa1LEVhbKiDoK4EYGCQTBSzeZw3BsaMbjziejU6/FU=;
 b=TgS2fXqODnG9D4glm1KSVOSHJbDGT7JS4Co+XwEzO3/AizuYA35lfLYWGDn189UcRvCRg/NZcUIbiShJQNe3ky1cDl0aPhSqGb7wxFwi14DQcMNcjHGaWQLzr2UL7JP9A7tkh/B/grz8EJHm9H7up3tD8M0Al6J9VO6ik/E6bxXC+yN/oYhVrDTxIJPsHuRcFAWl0vfzx+7zCgFqSUEzbBsVNUsDZ9MwoleJ4zMT+8LMZAw0gDDGW1xldM2EPJ+VpFLsAly8BhsFuhqu6l82qDUg75DUcgtQ7nP+sMeeTZC4SfXJdvPxmO9RWYhJ/C1D4monPCABTJg0tNLnLWufng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hsa1LEVhbKiDoK4EYGCQTBSzeZw3BsaMbjziejU6/FU=;
 b=gFxdx8/Y28WKQ0k4+feJqWLBg8ZClHrn7cGXF/7TdwU4qBlKOVcYFQ8+ZKu+9x0kRU1vnZ8mcOHKClbhGqs3l1P3LV8zngjYyX7I9bZMRx/nXmNZZipNxGkUzdN9/6Fjh25eehVeJ/c6SFF7hOX0DgOUz/rZYqEPRS+IquxRSCY=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 DBAPR04MB7272.eurprd04.prod.outlook.com (2603:10a6:10:1ad::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.46; Wed, 14 Jun 2023 02:13:11 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4%7]) with mapi id 15.20.6455.045; Wed, 14 Jun 2023
 02:13:10 +0000
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
Subject: RE: [EXT] Re: [PATCH v2 2/2] dt-bindings: phy: mxs-usb-phy: add
 imx8ulp and imx8qm compatible
Thread-Topic: [EXT] Re: [PATCH v2 2/2] dt-bindings: phy: mxs-usb-phy: add
 imx8ulp and imx8qm compatible
Thread-Index: AQHZmboU7xjiSqeCy0WBnzLcdAfebq+JI/UAgABztLA=
Date: Wed, 14 Jun 2023 02:13:10 +0000
Message-ID: <DB7PR04MB4505C79371879ABB09AB0BEF8C5AA@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
 <20230608033642.4097956-2-xu.yang_2@nxp.com>
 <224e69e6-ac1e-70c3-c0b3-4b72cc3cb0ad@linaro.org>
In-Reply-To: <224e69e6-ac1e-70c3-c0b3-4b72cc3cb0ad@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|DBAPR04MB7272:EE_
x-ms-office365-filtering-correlation-id: e8e223f8-875c-4420-fbcf-08db6c7ce695
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +qVllGgIfy6Ax8J/E8jJJUL2QrHcMP7WXI8SDOR/uyBb6FdKI705C71W9CnX+aYXuJtMKMTM4slOaXTQp2wFQL/udf93Ey9PCGhvOmI5MELStGF9c6h00dQIXaB2ZGSPOdy5nQhZlwNp/BeEOe5zJ3WLmCFEbt/8DpXcsHAXSeKRAIy8pJ5pge5QWhJ1wSCgAzEjRyBdnzvX30p0Xdf3tyIgoNs+t6sz5mPekzXy1OodmwHvsQwPZhLDQ3nkVj1bLR9wHEeDJtSmohMQutXYoAK5t5vjTNfzoOXUQyQXMz7hn4XRH4EU4+DEEVNH2es0UpVmaLN0Ip0dipRUssfZw2JDAzaCawAnTEPjW8divlN1JaRfSqVoxLZYudvQ83DnDRNNI4ozJzLDBbPRgrTAz37LqQKO56xfPHVQDBZU5XiEdW+Bmaiy5s4nui8U4qNv863k5thgKqBk080U1OeS3yizZ4NaDCYTytNVzNLJKF44i85vqm4fZcD/NSENIVjuYMSxxqpqZVZWjtYdhtIfNh09qVzG20/ByuzjBAAmGjx/RMPzWDIZ1H/I1aJjnvna09j74icgnLTvXjdHmJGK/DtfOUGDv/z2Gngf9Q0q1rnjt+AJQakdHK9U2fKp+Fs2sKPS2ONTqyizaIVmwIC/rw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199021)(7696005)(38100700002)(86362001)(38070700005)(83380400001)(122000001)(33656002)(9686003)(6506007)(53546011)(26005)(55016003)(186003)(2906002)(110136005)(54906003)(66476007)(4326008)(66556008)(316002)(7416002)(66446008)(64756008)(76116006)(41300700001)(52536014)(5660300002)(478600001)(71200400001)(8936002)(8676002)(66946007)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUxHNFN3NDZ3N3NZalZJSkpoYm5Ib2hLWWx0Kzg2cDU2L2l1c2UvRlR6bnZ4?=
 =?utf-8?B?YnI5dHNYYXZHWURhSU1yMmRMV2V0RkJudDZ2amZrNXVmaSs3aWtERG5Qay8y?=
 =?utf-8?B?SFAyc01aZU9DMkl0bmR5OGF4OHc5ZUNNYis1S2VHanl5TkNmZFlmamdkb0xE?=
 =?utf-8?B?Q2VPZWRsbHYrYkxBb1RwdVFxUDJ0RFNYVkdraWY2dGtYdnRhZVJMbjVzOXdp?=
 =?utf-8?B?VllocGFLaDJsakxvYXBpR1pjdGdLZzdYclhTWmphOGQ0QWtYSVZaUnhGUzkx?=
 =?utf-8?B?WWdxbnhpWDlhZWlTci9qN0Rnc1laK2hZTm45TER1TnI4M0dZcmZSbyt2TDgz?=
 =?utf-8?B?Z01DUmw5YTJ4UGtVNGx0eUxCNUNBdnN0MWZLd1JCbXM0Nno3RUtDMTh2NW8y?=
 =?utf-8?B?V29CNTFIcy82enZlYkF6WGtPRldQWlB1ZXo1TlZRNGZKeWYxU1k3bVEwM09s?=
 =?utf-8?B?WERrWmFYYkMxWXdzTURUUWpNeE5uMHVlV1hYd3NUVmk3KzRRcDNvNXIrbkg4?=
 =?utf-8?B?YytlWUY5ckdQNzFYMTc1SjlFK0NtMmJzNkxVdnJNaXRyT0JJeDJiTFhldG44?=
 =?utf-8?B?d0tiRmUvSjFjZmtHbXJ0M1FmMjV5L3VjUHZTb2ZreU9SQ3p4dC9wUHNFU0dC?=
 =?utf-8?B?MmFjSm9wYlJ3MGtpbDlXWktLdmlzc29UaFFHQ09QMzc4VmFtc0dPenBrcllB?=
 =?utf-8?B?RFZEYWhWeUZ0WkJBYUx6WlRFNHJTWklFUjU0Nkl2L0M5UlRvN0NuM0xpNGl5?=
 =?utf-8?B?UVZyUTlVLzkybngyWFh3TFdaRC9vWkxPcFFqdGpkaVNaVEUwYnNIRkcyMGh2?=
 =?utf-8?B?SHBiSkpwUit2SHNRdEEramhuQkNiN1d3eURXb3dhUWJYMGdVSTd4QkZWVkhO?=
 =?utf-8?B?Q2ZQNS9SYXlPWVBINzh2UlI0dXphU1NISHdKbEQ5UGN1YnR2cGtvaTBNanp5?=
 =?utf-8?B?WDR2TXZGcTBEQnUzWDZoQmQycDRSdVVDa0I1NkNMQlJFSUpHTDNuNW9JVGRJ?=
 =?utf-8?B?YUdHZlg0eVRpTUIvRi9TTnIyNHZzWm9KR1pDSFR1bjMrR3FIZXlJRkRiY3Jl?=
 =?utf-8?B?OUhpdzYrZUZ2S2Ruc0ZBaHVYQ21Kd3psZk5NcWRFblJLUnNUbVZaQnUxVlVZ?=
 =?utf-8?B?UXpLN29pc0FkUnRsU1dPSFdtMVBpUmtrNUF5V2F1OVNFZEcxMWpTZlpZQURL?=
 =?utf-8?B?ekt6ck8vcHlvOGp4K29UVk1IcE9HNWJ1dSs1bXN5VklCS1l1K0FOUVpkdGdx?=
 =?utf-8?B?eXJmSjhORWpsZHMxYlZ6UjMwZXhvMkhTR1dTOUs1Tklyb0k3Z2x5V09UQjNV?=
 =?utf-8?B?VGg2UUtPR2lDTW9jeFFyZUlFVXNoYjZ0T0hMTHFOQ2Z4anFDeVI2SDR0OG1I?=
 =?utf-8?B?STR5WHNObCtvVy92OXBpazROaTdQMUhBcHh4TmRvTENxQ1M4bWsrVGRzV3FP?=
 =?utf-8?B?a1lUcmtna2Q4OGEzK2pEZTh1MTJKV0UvK0ZSdElxRlVOWG94ZE1qQTBBRGtD?=
 =?utf-8?B?SjRHekg5a2xBbjFLbTJqUGk4V2pxeDkzNkpYUHBZRGlRUVNiLzBFK1ZaQk5m?=
 =?utf-8?B?UWNhRTJyQjdYcG04WVR3YjEvbG1WV2Z5aEZ5NUtaNGRMLzBYb3dnaUtOc3Q2?=
 =?utf-8?B?YmFNOWFVTkNkWkNheUlmTFhna05Qb2ZPQnlVdGFOa0pLSVVjSjZRUURkRnNX?=
 =?utf-8?B?QTY4UmRUMk1mSnBoU1V6aHpHQkE2eitXUXdpUTVLQzVJQ2xrSGNweEJyNGwy?=
 =?utf-8?B?cVZDWEdobHdnVTBIVmJjMjRHd3pvS2FFOU1ZOENsUXBXTmRydnV4ZmFQeGdi?=
 =?utf-8?B?LzRlLzRjUWRVZzhHRVMrYVF0NEF3bTBDeEhUNzZXS25JcnZwOUdncjlacVVH?=
 =?utf-8?B?Mks3SXlaSmd4ay9PV0VGeDNmVXNWK21OY1Q1cXA3SlhabVVOSGNPMmNtTXdM?=
 =?utf-8?B?cEY0aVVMSHBqSUVvQm04TUxWb01rTkVDMDFIRVM4bytYYkxiZmVCQVNEKyti?=
 =?utf-8?B?dEo3SmE2V3g3VzNMK0xtRDEwRFRIQm12SXJMcHF4NTRSbDEwQ0lVZmNHeGt3?=
 =?utf-8?B?a051aEVKbjVVYmN0RHNWZHYrK1A0eDNCS2s1ZHlzMU1UYXRSZjhEVEMyNkNt?=
 =?utf-8?Q?gj8w=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e223f8-875c-4420-fbcf-08db6c7ce695
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 02:13:10.3281
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ZzT8it1adP0xXlSt/G/bPa/gufcHig+CY4l8yby2/5SeBRB0YfmY1WAKdwBbns37oXxGchKScwUnEclwp23Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_192748_381724_F982A79A 
X-CRM114-Status: GOOD (  21.76  )
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

Hi Krzysztof,

> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Wednesday, June 14, 2023 3:18 AM
> To: Xu Yang <xu.yang_2@nxp.com>; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org
> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx <linux-
> imx@nxp.com>; linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> usb@vger.kernel.org; Jun Li <jun.li@nxp.com>
> Subject: [EXT] Re: [PATCH v2 2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and imx8qm compatible
> 
> Caution: This is an external email. Please take care when clicking links or opening attachments. When in doubt, report the
> message using the 'Report this email' button
> 
> 
> On 08/06/2023 05:36, Xu Yang wrote:
> > The imx8ulp and imx8qm are compatible with imx8dxl. This will add such
> > compatible.
> >
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >
> > ---
> > Changes in v2:
> >  - no change
> > ---
> >  Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > index 1b6b19fdf491..1395a982c387 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > @@ -32,7 +32,10 @@ properties:
> >            - const: fsl,imx7ulp-usbphy
> >            - const: fsl,imx6ul-usbphy
> >        - items:
> > -          - const: fsl,imx8dxl-usbphy
> > +          - enum:
> > +              - fsl,imx8ulp-usbphy
> > +              - fsl,imx8dxl-usbphy
> > +              - fsl,imx8qm-usbphy
> 
> Keep the items sorted. Your previous patch also had wrongly ordered
> imx6ul in enum.

V4 already fix this issue as below:

@@ -29,7 +29,10 @@  properties:
           - const: fsl,imx6ul-usbphy
           - const: fsl,imx23-usbphy
       - items:
-          - const: fsl,imx8dxl-usbphy
+          - enum:
+              - fsl,imx8dxl-usbphy
+              - fsl,imx8qm-usbphy
+              - fsl,imx8ulp-usbphy
           - const: fsl,imx7ulp-usbphy

Thanks,
Xu Yang

> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
