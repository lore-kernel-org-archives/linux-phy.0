Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41635C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 00:43:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF0E561371
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 00:43:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EF0E561371
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eDSw+odecUdTir0/PYL+HMDlq+tPMnLheIy/+XtWtI=; b=tzwl1rnS5ir6lE
	U1u/9+/XZQ9JibL0MNycaP3q5NdlJWVSz3VK8Pb4k/VmsvLI9AoLsE2Ax3Q2h0LwiqwluhsHiff5a
	Od27k+0mVPXBdi+VgdCgFa998C3B8RuSRGHHHLeEUwFMYxs18DADjsXWjriQnm7PvCNAF2SxHFjFK
	jS5OX1tmIr8niZzYqm+CdMcFELzLe1wvHcnTaks2uh6gJq7jBHpU0L1+J4qe+XoyhKV82Qkcy7yxu
	A7jOSA1FEvatBfrDIrvQbaWRPW6NGOm20jxjK0xdXTcMNXyu7QVTHGs7Y3MtLJvEIN3EH+qDZ9OAu
	+iwSQRfRov2kOyK4zNzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdif5-009Mpq-Ag; Fri, 22 Oct 2021 00:43:55 +0000
Received: from mail-eopbgr00069.outbound.protection.outlook.com ([40.107.0.69]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdif0-009Mno-Qa; Fri, 22 Oct 2021 00:43:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jV+Pqw5kn+7ylt8XyjcqqAcHoe6Gwc5oL7qvuPUEwbPbslaMuwH9kqYkQR5D7nfQ2VrL+qM0tUArC2QTp+skuGMvG+NDkbrOgLu0AXattD/LW5MwHCtCqdm+P/QsHSBYukBAUIXCJKlRRtwQPi0F2zFP78/F07dd3mkiAob+0mPLmnFRbFl7Wjed42vps9o4ox5mMFAWdjnSvKJ/Uut6Y6xItQSMo8JXxtW0J0Bbs3EbLfNoPS3wxqGOvlg+Ntwi7EDWRJf49ubkcO3cP6gbdXY8GFug5YPJp9wa58rs7eYBoHvst83p+T8h9ZDm811LhU3uJ3IEfRooiOb7Id5Zig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vUPSBCS6VCOzqnvLu6Y5ckX5SbjxwGZNQ5rMIVxvKbM=;
 b=IFdbZqExnKYey1KUZEgbt+VnoMp0cvyKxFV0woyQ1g5koXLo3Up+r4ie8rTia0mHVzXKsmlh+Q9nIXPerl+f14fX7X9SWUlrNQQnRQD4qo0pWtoI+L9THDPcmpew6fyRIlDLpg9pzb8yDJFIarwiLvWZydiCoGlF5LuGrtDWDph2fxIAtBpmoYdUqYOXAqs5LbAOCY+4Fz75KkT0Q8eErTiQ75m10jwqR7lQGJu5oFubLAErng2Cmuy4MYWle6yif5wwCNZnPCtGRslZLUkn2gTQJk3vMKM5BQ3hE4Uqe9G1xki/MQ4ckpprTSPq1fc9HD6wnJpcYPObO4Ane8OtJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vUPSBCS6VCOzqnvLu6Y5ckX5SbjxwGZNQ5rMIVxvKbM=;
 b=r8y0ta7UpLZqMnZbRmPkllTzMNsbI5U3WTmsdLxS20xOzVb6Pg9P2mj6gJW0wu568+TmLotfeRSTrAb025e9g5zIea354tlIm4D6iufKIhlcvdIVjdbH24FyotdGbd0VJQ3C8jNN4daNdD2jn0Dn0/DZ4xfrGXe62zvrYBUZhzI=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB9192.eurprd04.prod.outlook.com (2603:10a6:20b:44f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Fri, 22 Oct
 2021 00:43:47 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 00:43:47 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "tharvey@gateworks.com" <tharvey@gateworks.com>
CC: Lucas Stach <l.stach@pengutronix.de>, Kishon Vijay Abraham I
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, Rob Herring
 <robh@kernel.org>, "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 Shawn Guo <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Device Tree Mailing List
 <devicetree@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
Thread-Topic: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
Thread-Index: AQHXwf8T9WRZIWT4CUunBVSnJ63L4qvZhp6ggAD4IYCAAKk/cIABRTmAgABCoVCAAPyvgIAAhMLw
Date: Fri, 22 Oct 2021 00:43:47 +0000
Message-ID: <AS8PR04MB8676D9FFB6506A09D104E32A8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU2b-=T_gTsRBvdF7SRUZopEFOU_Np8mEJn8bOpn5b5FaA@mail.gmail.com>
 <AS8PR04MB8676B2AC24E2769D47A1ED478CBD9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2AitmxCyam5FArmxAD41QUU=5CF_0JZhm+uzdkRbr7kw@mail.gmail.com>
 <AS8PR04MB8676840D7EDD56D10F9471288CBE9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2GU5=mM5+2Yg9gAuU0RSdJHWEU_+ykmz-qUWfsOnRJ8g@mail.gmail.com>
 <AS8PR04MB867624A8A5B6AE27D6A9160F8CBF9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU1Si_bv0_2j5AU-v_1QtUGqwU_4u=NksAVFFXXkkNC1Sw@mail.gmail.com>
In-Reply-To: <CAJ+vNU1Si_bv0_2j5AU-v_1QtUGqwU_4u=NksAVFFXXkkNC1Sw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5629604-6a2c-4963-9b0a-08d994f5024c
x-ms-traffictypediagnostic: AS8PR04MB9192:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB9192AADBF22FE07F2BF6C0868C809@AS8PR04MB9192.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F4t233NuRgZbIPl9tztIWhumFletrR2M212gAQnWVjY5Vq2BYWlnE3jDQsfiq7qJGM+fYp5YXAE7sfeN0exkdCyRmIhCZImKPbMcNiKIaj8KmGWZadgGUe9EXZTfBTWpNd4EP+gNuIlNkZxKTpbSkEA14fuTGhIom4Vo8FzP12wEHAPkE5HVc6inQDbxLE9i8IJvn7+KswZ8pDOBLMplanuf3IIZYHvVYUAgfk2Hqp4axNtSdfiWnfTA1V3oMY7KXweKKtmzSq9q3FC2GZnUfXS1R5l4qbXfGEUzFrc7EX9hJ+igm08FZcv0ojnrwXvii8jUAfFPU1Uvxy1iZYBiKqPHUZqxr7pYHha4svtZOXSG27isvfGSeJGk6D4Frq6OE/xhz7q7UZPRuqNwPW8A3xCIVuN58kW9AwHk5SrfYmMjoSlOrPZ8nJ2Ev+pOGPkIHUYTXrrnU8md3PVvyRYSq+Qemz3W7lE/IyqBP1IZUIvR8qL4Qt76OcFrAUrgu08v9Ss6Z3iTXWXBO4qNx1KmAZlr+56NAMlAPHjseOyWsZIGlnAdrySgvI24/qIsiv4QbAqvHaORPjivDBOZ3KCVMjyhEAdhSozTe3btSHo+A293EE7GkYG0kxLy2EkBiq0d74gscxiIm6j+UwAB/o0l6F+ncJ/SmH0EGWcwHxn2C86+HypI089oqmQvWUZvEnn5bu6Yr9ibjuzfp4BQ5R5PRkUw1BRf4pzOoUpQi0f7ByE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(86362001)(66556008)(6916009)(8936002)(76116006)(71200400001)(38100700002)(2906002)(7416002)(5660300002)(66476007)(54906003)(66946007)(316002)(52536014)(508600001)(122000001)(6506007)(53546011)(186003)(83380400001)(7696005)(4326008)(9686003)(55016002)(38070700005)(26005)(8676002)(33656002)(66446008)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3pySWYyMk1KZWZ2V2ppTmt4MCt1emgwZDMxWS9Fc3ZjQXpPZ2JIQllYZmIv?=
 =?utf-8?B?bUI2Ym0vRlNKTDRlUzEwT2YzU2c2RENLemZvb01LWnh6L285RWRmczFiREdN?=
 =?utf-8?B?ell2ZmU1Mi9JUTgycitoQWVpb3Ric0VZRzZsV2h3M3gxczQxUmM4TVcyaG5i?=
 =?utf-8?B?QXVmWDN3eDZpMHZPcUJlNSsrR0txeWZQVTcrVEpiWGhZdlAwQ0JDRjdMemlr?=
 =?utf-8?B?MmdaV1BoMUg5bU00RzRFQXpzNEJROHVITUJCUWlWNWFmeGZsNzE1WEQ2T3JX?=
 =?utf-8?B?QkRxVzZWTUtEMnY2U2Q1WWJORm5HRXhXQkxoNE5HOHFEV3dpSG5WL09DbWpt?=
 =?utf-8?B?QnZTd3hMdEE3RkNxeDJ5amwyMnhXUDF5bzZnS05qK3dzNDlGSCsvNlZ6cGdX?=
 =?utf-8?B?OVhCdEkreVFzYmQ1dFNWc1NYK3ZBQk8zUTNMbktSK1JVQkFjOGJtQUxMUno2?=
 =?utf-8?B?NVhIV09LbUFoODAwSDA1U3Zwek1UV1JxejN5REdVSnN6ZUpZZkNYZTk5RCt1?=
 =?utf-8?B?SWdzbENuQ2s1cThVQ29ENWNrTnpuMDRBaHZqMTJGMnoxNkpOQzhIMzB5c0FD?=
 =?utf-8?B?dUV1R1RuM1J0bHQzQnFYVmhWUlVyTG5OdE5DRWYyekJEdzJ4L0R4S1hjQ3NC?=
 =?utf-8?B?WUFkSzIvMTdiaERRVWFOR3dLMmYwcGxienlLdkVCSCtnVldCTVFDUzVIdTU4?=
 =?utf-8?B?S0dYODIrMktsVXJWRkE2MUVhbTA5d0xOakR3eGRpdU8xMFUyRXNhOTNSS3Jk?=
 =?utf-8?B?cERTZXp6NmRlU3dubnZaNmNUVThseXUzRytVWFhuUHFDSVRYOXBKYjNENG83?=
 =?utf-8?B?TGZOUWpsQjY4dksreU8wemsvbTBReW5CSVpzdGRpb28rcVhMUCtyR21Xa2Ux?=
 =?utf-8?B?ZlZQNTJheHpxa3dSVnZPN3lkMlRPTjVyV0FOU2dtOVhkMmcrcitYUnl0bmdy?=
 =?utf-8?B?bmhPS240RlZlZ2tsN0NuaERRMFgvczdFSGt6QUR3Sm1uV1FFT3Z2VlVHYmJr?=
 =?utf-8?B?SzJaNmFrYXhTdWNtY2V5ZzlXOHVKSWN5VTIrLzczSXIvSFh2UWo0L0g4SDFs?=
 =?utf-8?B?WGx1cjJqUGdRZCtKSDFEZUg5akk2eGFFNjZ1S2IwdDBrQ2VzTGZnTjZzSElJ?=
 =?utf-8?B?emdBZkpzTGpWdUlHdnpVU0RlQjdsNEhURFZJTG15enNobiswNmZZWnQzeVBD?=
 =?utf-8?B?YjdPVVVVM2taZlhoa2xDQXJpZ1RVS08wL1hrQVVDUUZSZXgzMWFLZ2lGTEha?=
 =?utf-8?B?dytDalAzRWs1N1ZJTGVXSTk2UzZBcDZqQ2ljUHVMMG9ZaHAvMURib2xrRDgy?=
 =?utf-8?B?N2tQM1M4TGw0bE04L0UyNVltdWNDRjBVM2RCSXpUY2RSdFpWWVkzUEpZVUhQ?=
 =?utf-8?B?K2huOEVlZXBnYU1NVzg0TzBvVWthbXhMUjB1eTZid001QnBWT2hLKytKb1lu?=
 =?utf-8?B?SkgwbG5yeHhBdkMrTE5qOE4rampUdFo4aUFqdHZQd2QwZWRxTktYdElqeVdx?=
 =?utf-8?B?NXhMNHkrNUwrRUNjdHI5QXc2VFE5ZTFkdWVISHkrd1gveFRVWHU1ZW1iWmdH?=
 =?utf-8?B?aXcyWDV0WkJTa003OEIzOVJEZ1JsVzhnWVg3OTlJK0VVeUluaXN2QVJNbEtr?=
 =?utf-8?B?bHVXbStvdGhqM21WSFlnQmdiVHBxS1BGVk54M0sxcDlpVGk1eTJ4Qm5hMUdj?=
 =?utf-8?B?OTUxczR2K3laWTFLbHEyYzk4RDlIQ0xES3dTTFBTVWNuU1A3VDR1QlRUMGxC?=
 =?utf-8?B?Y0ZSUGsrZjhIS2NJcm1MV1FJTmkvcjVJMG1zdkJKdW16aVVnSFQxNW5HYU1k?=
 =?utf-8?B?OE9YQ0FYVHpsbzVYcFVVVW4rT2gyOGxmbDBhakt4NGtmK0hGTDJ3MThGNVNI?=
 =?utf-8?B?QTNrU0xFZWtrQlBMVTIwYU5RcFdtR2dVT0haQ2dFdWhxOXc3RlFTRFdBZjJK?=
 =?utf-8?Q?E0rRL1SzvO0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5629604-6a2c-4963-9b0a-08d994f5024c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 00:43:47.5521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_174351_130957_6EDA7A00 
X-CRM114-Status: GOOD (  33.14  )
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
> From: Tim Harvey <tharvey@gateworks.com>
> Sent: Friday, October 22, 2021 12:25 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> <kishon@ti.com>; vkoul@kernel.org; Rob Herring <robh@kernel.org>;
> galak@kernel.crashing.org; Shawn Guo <shawnguo@kernel.org>;
> linux-phy@lists.infradead.org; Device Tree Mailing List
> <devicetree@vger.kernel.org>; Linux ARM Mailing List
> <linux-arm-kernel@lists.infradead.org>; open list
> <linux-kernel@vger.kernel.org>; Sascha Hauer <kernel@pengutronix.de>;
> dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
> support
> 
> On Wed, Oct 20, 2021 at 8:32 PM Richard Zhu <hongxing.zhu@nxp.com>
> wrote:
> >
> > <snipped...>
> > >
> > > Richard,
> > >
> > > What is this 'invalid resource' about? I see that with my downstream
> > > IMX8MM PCIe driver as well and have been asked about it.
> > >
> > [Richard Zhu] Hi Tim:
> > This complain is caused by the following codes in pcie-designware.c driver.
> > I'm not sure that why there is only size assignment after the res valid check,
> and do nothing if the res is invalid.
> > It seems that it is an expected design logic refer to the later codes.
> >                 if (!pci->atu_base) {
> >                         struct resource *res =
> >
> platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
> >                         if (res)
> >                                 pci->atu_size = resource_size(res);
> >                         pci->atu_base =
> devm_ioremap_resource(dev, res);
> >                         if (IS_ERR(pci->atu_base))
> >                                 pci->atu_base = pci->dbi_base +
> DEFAULT_DBI_ATU_OFFSET;
> >                 }
> >
> > Since the default offset is used on i.MX8MM, the "atu" is not specified in
> i.MX8MM PCIe DT node, so there is no real res at all.
> > Then, devm_ioremap_resource() would complain the invalid resource.
> 
> I think you are saying a change should be made like this:
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c
> b/drivers/pci/controller/dwc/pcie-designware.c
> index a945f0c0e73d..3254f60d1713 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -671,10 +671,11 @@ void dw_pcie_iatu_detect(struct dw_pcie *pci)
>                 if (!pci->atu_base) {
>                         struct resource *res =
> 
> platform_get_resource_byname(pdev,
> IORESOURCE_MEM, "atu");
> -                       if (res)
> +                       if (res) {
>                                 pci->atu_size = resource_size(res);
> -                       pci->atu_base = devm_ioremap_resource(dev,
> res);
> -                       if (IS_ERR(pci->atu_base))
> +                               pci->atu_base =
> devm_ioremap_resource(dev, res);
> +                       }
> +                       if (!pci->atu_base || IS_ERR(pci->atu_base))
>                                 pci->atu_base = pci->dbi_base +
> DEFAULT_DBI_ATU_OFFSET;
>                 }
> 
> so that it looks like this:
>                 if (!pci->atu_base) {
>                         struct resource *res =
> 
> platform_get_resource_byname(pdev,
> IORESOURCE_MEM, "atu");
>                         if (res) {
>                                 pci->atu_size = resource_size(res);
>                                 pci->atu_base =
> devm_ioremap_resource(dev, res);
>                         }
>                         if (!pci->atu_base || IS_ERR(pci->atu_base))
>                                 pci->atu_base = pci->dbi_base +
> DEFAULT_DBI_ATU_OFFSET;
>                 }
> 
> Right?
[Richard Zhu] Yes, it is. The res shouldn't be remapped if it is invalid resource memory.

> 
> >
> > > > [    1.316305] imx6q-pcie 33800000.pcie: iATU unroll: enabled
> > > > [    1.321799] imx6q-pcie 33800000.pcie: Detected iATU regions: 4
> > > outbound, 4 inbound
> > > > [    1.429803] imx6q-pcie 33800000.pcie: Link up
> > > > [    1.534497] imx6q-pcie 33800000.pcie: Link up
> > > > [    1.538870] imx6q-pcie 33800000.pcie: Link up, Gen2
> > > > [    1.550364] imx6q-pcie 33800000.pcie: Link up
> > > > [    1.550487] imx6q-pcie 33800000.pcie: PCI host bridge to bus
> 0000:00
> > > > [    1.565545] pci_bus 0000:00: root bus resource [bus 00-ff]
> > > > [    1.573834] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
> > > > [    1.580055] pci_bus 0000:00: root bus resource [mem
> > > 0x18000000-0x1fefffff]
> > > > [    1.586968] pci 0000:00:00.0: [16c3:abcd] type 01 class 0x060400
> > > > [    1.592997] pci 0000:00:00.0: reg 0x10: [mem
> 0x00000000-0x000fffff]
> > > > [    1.599282] pci 0000:00:00.0: reg 0x38: [mem
> 0x00000000-0x0000ffff
> > > pref]
> > > > [    1.606033] pci 0000:00:00.0: supports D1
> > > > [    1.610053] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > > D3cold
> > > > [    1.618206] pci 0000:01:00.0: [15b7:5002] type 00 class 0x010802
> > > > [    1.624293] pci 0000:01:00.0: reg 0x10: [mem
> 0x00000000-0x00003fff
> > > 64bit]
> > > > [    1.631177] pci 0000:01:00.0: reg 0x20: [mem
> 0x00000000-0x000000ff
> > > 64bit]
> > > > [    1.638409] pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth,
> > > limited by 5.0 GT/s PCIe x1 link at 0000:00:00.0 (capable of 31.504
> > > Gb/s with
> > > 8.0 GT/s PCIe x4 link)
> > > > [    1.664931] pci 0000:00:00.0: BAR 0: assigned [mem
> > > 0x18000000-0x180fffff]
> > > > [    1.671745] pci 0000:00:00.0: BAR 14: assigned [mem
> > > 0x18100000-0x181fffff]
> > > > [    1.678634] pci 0000:00:00.0: BAR 6: assigned [mem
> > > 0x18200000-0x1820ffff pref]
> > > > [    1.685873] pci 0000:01:00.0: BAR 0: assigned [mem
> > > 0x18100000-0x18103fff 64bit]
> > > > [    1.693222] pci 0000:01:00.0: BAR 4: assigned [mem
> > > 0x18104000-0x181040ff 64bit]
> > > > [    1.700577] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > > > [    1.705814] pci 0000:00:00.0:   bridge window [mem
> > > 0x18100000-0x181fffff]
> > > > [    1.712972] pcieport 0000:00:00.0: PME: Signaling with IRQ 216
> > > > "
> > > > Regarding the log you pasted, it seems that the clock is not feed
> > > > to PHY
> > > properly.
> > > >
> > > > Anyway, let's waiting for the v4 series, then make a try. Thanks
> > > > for your
> > > great help to make the double tests.
> > > >
> > >
> > > My boards do not use CLKREQ# so I do not have that defined in pinmux
> > > and I found that if I add MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B
> PCIe
> > > works on my board but this isn't a solution just a work-around (I
> > > have boards that use the only two possible pins for CLKREQ as other
> features).
> > >
> > > Similarly you will find on the imx8mm-evk if you comment out the
> > > CLKREQ (which isn't required) the imx8mmevk will end up hanging like my
> boards:
> > [Richard Zhu] Hi Tim:
> > Regarding the SPEC, the CLKREQ# is mandatory required, and should be
> configured as an open drain, active low signal.
> > And this signal should be driven low by the PCIe M.2 device to request the
> REF clock be available(active low).
> > So, there is such kind of CLKREQ# pin definition on i.MX8MM EVK board.
> >
> > Anyway, I think the external OSC circuit should be always running if there is
> no CLKREQ# on your HW board design.
> >
> 
> The way I understand it is CLKREQ# allows the host to disable the REFCLK
> when not needed for power savings so it would seem optional to implement
> that and if not implemented should be left unconnected on the card.
> 
[Richard Zhu] No, not that way. Regarding the SPEC, this signal is mandatory required.
Especially for the L1ss usages. This signal would be OD(open drain), bi-directional, and might be
driven low/high by RC or EP automatically if L1ss modes are enabled.
You can make reference to the "ECN_L1_PM_Substates_with_CLKREQ_31_May_2013_Rev10a", or
the chapter 5.5 L1 PM Substates of "PCI Express Base Specification, Rev. 4.0 Version 1.0".

> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > index 5ce43daa0c8b..f0023b48f475 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > @@ -448,7 +448,9 @@
> > >
> > >         pinctrl_pcie0: pcie0grp {
> > >                 fsl,pins = <
> > > +/*
> > >
> > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B    0x61
> > > +*/
> > >
> MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21
> > > 0x41
> > >                 >;
> > >         };
> > >
> > > I have PCIe working with a driver that I ported from NXP's kernel
> > > which differs from your driver in that the PCIe PHY is not
> > > abstracted to its own driver so I think this has something to do
> > > with the order in which the phy is reset or initialized? The configuration of
> gpr14 bits looks correct to me.
> > [Richard Zhu] The CLKREQ# PIN definition shouldn't be masked.
> > In the NXP's local BSP kernel, I just force CLKREQ# low to level up the HW
> compatibility.
> > That's might the reason why the PCIe works on your HW board although the
> CLKREQ# PIN is not defined.
> > This method is a little rude and violate the SPEC, and not recommended
> although it levels up the HW compatibility.
> > So I drop this method in this series.
> >
> 
> Sorry, I don't understand what you are saying here. Is there a change you are
> going to make to v4 that will make this work for the evk and my boards? What
> is that change exactly?
[Richard Zhu] No. What I said above is that the CLKREQ# is forced to be low in NXP
local BSP kernel. I guess this might be the reason why your board works.

BIT11 and BIT10 of IOMUXC_GPR14 can be used to force the CLKREQ# to be low.
Set CLKREQ_OVERRIDE_EN(bit10) 1b1, then write one zero to CLKREQ_OVERRIDE(bit11).

BR
Richard> 
> I responded to your "phy: freescale: pcie: initialize the imx8 pcie standalone
> phy driver" submission as I don't understand the GPR14 bit documentation
> from the IMX8MMRM.
> 
> Best regards,
> 
> Tim
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
