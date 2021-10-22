Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2093AC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 01:59:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D13F2610CB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 01:59:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D13F2610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2iiD3QtZvWfpXbBsxvks+FxyHxRONOofCHBs0tEvj0=; b=WBYexQf2VqDZSZ
	RobITvxGiXFBqT8ws8v6ciBSx1YuGd1Lp4XZPRQq7Q6L/RwXB0fdxlN4XIpCQI04MqKBQOwK/u2kc
	w63tSJDK0bijlf2Bi7Z/l6HWhe6krlhMICzVWiyGlhDW+KxwD92+2U3csIpZbE3QwpkLG5Caz3ek7
	+vb4NvPia/gP1oCV+M9v/2w80w3tg1MWJjqKKk99Ei0oWQUFBauvZ0/HUyiY6WjQyg/UwlF+Hnfa8
	RBGgU7rQ7RGQNI+p2RGwqD3Hc6IenOBhe5AI7KqS9T/hqXfjDAbcTdRMRSk0goED2Cv027iLmBWgp
	ZYe03bSXnWY5lQkk28xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdjpk-009SdX-76; Fri, 22 Oct 2021 01:59:00 +0000
Received: from mail-db8eur05on2062.outbound.protection.outlook.com
 ([40.107.20.62] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdjpg-009Sby-Jd; Fri, 22 Oct 2021 01:58:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mICYSQ05gAF/l1pmXng2AbX9f5UbaLy2CMD5ASzPheS1d7FJWfXSaNKNUu58S7xJSUCZcp7AA/NYR5J/qeK/64pkPby/eVkgk1csSb1Q2nDoTRSUOHRUlmQTzlCNBxJD1C6dEIYISwzu0iu6Oh74QVgytiCWdLd3jQ0b9/7kSxrZWj5eKsSk4m+f31LG9YOsMyaByEPTreMsL8hka5vuG/3Ofh11BNmakPxOl3hiNCWD2AlZI+kOMuQbUcTXTIQee7rjq6v8YAfOAL4qNcHfPIq9HN3Scld5416yjHO6+unRHhABu4RjqH8K2TN60LsjExYJ4xzwaHPbBbYBH/WjKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WH7QLg+ZVpj8phawNIzQCr6HGHhMDpZEwtSblVckCqg=;
 b=IPw6rHGeOb6o1HbAGL3euE5vKCMlRsFsaWrfTrS1JJbJXF3ADhUDKkIVlPBHXNgGvlpqpZ1V30kaYUB3zLJwjNnhQDBjvvVSHwPR6OnQ65x853bolvVLHjR4PSM2yDvehkoC1ScCQ2i8K9OvmGXV3l3cslKGtXLLMIm8iGlp7tZve+KeonX2hmTRu3cdMbT1bSrAFe8FwexK8s0NuFrmtx+zx3lG8+ZHnhCdBzRJ1QkfulLmMAkOecp54k914McQ4LnSuMyPa+7wd0apoI7RIIVwxUvOVQIO7mQXWUTlc3KRknuqH2pR03k3WFlNei9puKelTD1DV1Fxu7llqopelQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WH7QLg+ZVpj8phawNIzQCr6HGHhMDpZEwtSblVckCqg=;
 b=YMSAw/EyK84ejDDHjxLYnFv2+LWwAkRKFgH8tcEDXV/tHX/LSoOf31xDOAi13QhnQ04MCA8WDlXCzGqPGNz1Q23T5b/VMa06Od7y5/qiOvM6NhfkWsk8dyCNxgI5QKugNkpYIhq332MBFzNMqrrYE/hTBPic7RwCzxSIuqoPG1g=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8820.eurprd04.prod.outlook.com (2603:10a6:20b:42f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 01:58:53 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 01:58:53 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "tharvey@gateworks.com"
 <tharvey@gateworks.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 4/9] arm64: dts: imx8mm-evk: add the pcie phy support
Thread-Topic: [PATCH v3 4/9] arm64: dts: imx8mm-evk: add the pcie phy support
Thread-Index: AQHXv0hn2z8u2DOLk0err/FG2U4BpKvUZ3qAgAnqYDA=
Date: Fri, 22 Oct 2021 01:58:53 +0000
Message-ID: <AS8PR04MB8676484A6968CDDCF3422C6A8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-5-git-send-email-hongxing.zhu@nxp.com>
 <ca1e71abe4c87ae2be6e3a3fa92ac79a6da4b6c4.camel@pengutronix.de>
In-Reply-To: <ca1e71abe4c87ae2be6e3a3fa92ac79a6da4b6c4.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44de1bdb-94fb-42c8-bfa7-08d994ff801b
x-ms-traffictypediagnostic: AS8PR04MB8820:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB88202A94B0879A12827C32488C809@AS8PR04MB8820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fw3UFshJzot9x/9KrTzKHTIgDNaKADm8lXaF0aywMqZ2McMAHzs5rOBUugbrlrryqnMHRJLrrH/MEOkhFWuGixPtWNSrxLfvqAMllNT934svqYA06S3dvO3kcG6Efcd4/9KDRUSr4WawZqAg6XRZIvJ9GhGcOCRTSNFI57Hz8etgrBDlSOA4gQ/urDIdkIVgmyDopF2IZT4dkKMYGbk/S4AqbpZ9D2D8p8cdviJs37OxoN87FbA7Wdv2fGfB7CTDfHQ0h+ZuTSL+gDsQpH2r+Cl6IdRUKCQkbEjFAMBM/NMs7d4c5yjLvdqCLusMNtNk0PfLyNOWEVrW8wL9LwMcw91kWC3emjR3/kIzrH7M8uHcTymabcwhDuqq/LgpJcd6bREksTBQsne+HfebYBLOxBj9q+aXJ1oXLy8l7yffjVvfLg4KKW+yYPGxKmvkSKbfpSbvPklIK/DKxnMuWKrCbZx/ZL2Uit+hyZW0tL0iTxb7WF9FLdAzPppViT6vucuQhifRfON9NrmMj9bqZnLjY3rHcw9yRFh9VCXl+GzAAnIAigdnn5VZrq2OZJHD6wBnQaaqvDY0KBAJi8Izl6H2hHOUVvCYHxbUOl6ALg1RYhXXYKhcfbQTdYsEyG/GA4sw0N7zQilwowZMqt2GYbcuFkNCr20AUxPafkwIR9kE0aS4hdW6E8Q8NbeFTip6+/jVqUs5aSz8FaDhMtNzDoHdc81tvJBd/SB4WpWonLle8eo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(7696005)(8936002)(38070700005)(76116006)(71200400001)(54906003)(66476007)(8676002)(508600001)(66946007)(316002)(110136005)(52536014)(38100700002)(64756008)(83380400001)(7416002)(122000001)(26005)(4326008)(2906002)(66556008)(6506007)(66446008)(9686003)(33656002)(5660300002)(55016002)(186003)(53546011)(86362001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cS9SUHEyczJ3UHNoeWZTbWV1Y25TVnlRSTJzS3FTZFBydGQwckx1Wkk1QlRq?=
 =?utf-8?B?WU9jbDlpYnNtTllUWFFPMERFdlczS3lYKzdBNkZCeVViQzRmNTBSeXVyTFd6?=
 =?utf-8?B?enFXRm5ydUw3bnZ3NFFhS29MdndFNitoN3FmK0pWV01tSDZzRXlFVmk3VkZM?=
 =?utf-8?B?TDMwQlNuczlkdFRQNzcwd1JLakYyL0czZGNaQjBLdGhCTVREV2lqMXl2bXZ2?=
 =?utf-8?B?RkFodmJpUG1NbWgyNUhwS09EQVc4bmFBbG4rSE5LUFgxMndld280azNpNW1l?=
 =?utf-8?B?bE5sK3M3SFZ2RHNDTStmS2plYlVFRVBkTG1jRTA4dlN3Tm9XdkZtbHpOQnZm?=
 =?utf-8?B?WnlER0ZaSkRCcHAxcXB5MEsrRkttQzhMWGJHMEZNb2gwMnJQL1FUS1djNDky?=
 =?utf-8?B?YkhoUDdqKzJTbWVjSE9YWlp2ZXR6czdpbURsR1RVblNCWmFxMnhBMWp6QkJZ?=
 =?utf-8?B?cEVtT2l6bTRuRnYwM0pxTXFIY01sa08xRXVKWWUyMmp0dGtjb09Ya2EveUN2?=
 =?utf-8?B?NzRRcU5kWHp6YmJuUUFKeisvQ0l4dXBwWURRVjFBQ05BV0x6dFpvVXdwWXVm?=
 =?utf-8?B?QUl0RndxWjJPWW9rT0greGVid0VqYWp2dkZFbFJDalZDa2JDVUhINmxsL2x3?=
 =?utf-8?B?M2wvUlpEbldOdUx3VjlOOEQyemNCZmNJYzRkS1kvcGkzOWlORXYwMllsVFRD?=
 =?utf-8?B?R1NNc3lvMHFIYkFlcitqWHZqNVRRd0liRDZDTDNmTUpzM05lUkYwaXRNdlVo?=
 =?utf-8?B?a0k0NENLaEM1Z1cxUXZ1WWIreWM2Q0NtdzM2MkViUFhuWDVpNjBUNXB3RGJl?=
 =?utf-8?B?VFdnMGRqNERLbEVHeisvOUVLakdlUllhNlNIUTBPZCthVkxIai8yUU9QbjRv?=
 =?utf-8?B?OFVOY1hIRGR6YW1KMzA3MFBZQUZLYnNESkNXSWVMbTdPMmdKRlRWcDhEUEdP?=
 =?utf-8?B?aTh4K1hSNFVNZzRtdmlnQUR6QnNJYzU2aThOUjYvdFpWenFDR3VnYk9May9X?=
 =?utf-8?B?OEdiaDFYTEI3WlR3Nmp2M2hGUEVPUENZOGJBUmNmYTlENHR3Rzc5T3FsTExG?=
 =?utf-8?B?NTUxelIrc1hxREQyRzhzSGZOaGYxVVpTc01vYVB0TTVlUlBTOWhWa2s5cW1V?=
 =?utf-8?B?SXpQcjdmNWxKSGNJMEtKVndrblNSdlFuazl3S0NnbEJoWWw2WmkxVjlrTzFO?=
 =?utf-8?B?REdYODNmMWxKSXM0QWZnQTlORE93THRicVNvU1BSdWZPMVVxTWljNTU0N3lw?=
 =?utf-8?B?eklTQVZzK3JZQ1laN0tsNWlhUWVvQ1JSbFlNY2dmblE3UDhjVnN4WmhCV2kv?=
 =?utf-8?B?Y1J4SzliSjhXbVJieUQ1eGdTdXIyTjFwYTQ0WnVJbTlWVlZTS1lLQlhoamRY?=
 =?utf-8?B?YU5FdFRXdktkb3N3RUZERHdvcHhTRnlzV3BhckNRZDJmSlQ1M0sxbjdOakxK?=
 =?utf-8?B?bjByOGFDUUdvNWNRV0tHcUNwUWpNZkcwQXRsTFZYVFl3SVVnQ3d3aDZxVmJu?=
 =?utf-8?B?VXpHMjB4SWhNWkV5MDU2YWJuR0pyL082R0l5dU0rdS9VeGpUVTFkOXRKQ3pt?=
 =?utf-8?B?K2xjVlJ5RjBYam1EOWxNRHBzVk02SFc1SHNqNmorNHNWWE82a3RPZ3FXTlNG?=
 =?utf-8?B?QXB5cHNicW0zbkFBdWdEVCtwU2hTaG9NMXNuUG5mdjN6b2Q4Q091SXN3ZXF5?=
 =?utf-8?B?M05OY0NZcitVVEFSMzlFWk01U0RPTHQzQjVpdW41ZjVTajlaTnF6dk9vdUNW?=
 =?utf-8?B?VzRNcUY3Y284Wk1rZUgyT0lUNHhvN0MvdmllM0QrQUdVc3dlY3ZjUTlhSjZN?=
 =?utf-8?B?Ym44K3NIUTljUm1CeUtmTG1kcmMzQ29mbVpnUTJjZTdXTE5Yd3c4R1RldDJT?=
 =?utf-8?B?Z3NQN1Y4NmMwZE1FdUJBNnlaWC9mM295Zmx6Mjd1SG9SMUMwc3kwME9jMlB5?=
 =?utf-8?Q?oVlkNi8ZflI=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44de1bdb-94fb-42c8-bfa7-08d994ff801b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 01:58:53.4996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_185856_683305_4EE46EA8 
X-CRM114-Status: GOOD (  19.97  )
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
> From: Lucas Stach <l.stach@pengutronix.de>
> Sent: Saturday, October 16, 2021 2:33 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>; tharvey@gateworks.com;
> kishon@ti.com; vkoul@kernel.org; robh@kernel.org;
> galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 4/9] arm64: dts: imx8mm-evk: add the pcie phy
> support
> 
> Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> > Add the PCIe PHY support on iMX8MM EVK boards.
> > And set the default reference clock mode.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > index e033d0257b5a..2d0684ac82f6 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > @@ -5,6 +5,7 @@
> >
> >  /dts-v1/;
> >
> > +#include <dt-bindings/phy/phy-imx8-pcie.h>
> >  #include <dt-bindings/usb/pd.h>
> >  #include "imx8mm.dtsi"
> >
> > @@ -289,6 +290,12 @@ pca6416: gpio@20 {
> >  	};
> >  };
> >
> > +&pcie_phy {
> > +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> > +	clocks = <&clk IMX8MM_CLK_DUMMY>;
> 
> Please add a fixed clock DT node for the external clock generator and use this
> one instead of the dummy clock here.
[Richard Zhu] Would be changed, and squashed to 8# patch of this series. Thanks.

Best Regards
Richard Zhu

> 
> Regards,
> Lucas
> 
> > +	status = "okay";
> > +};
> > +
> >  &sai3 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_sai3>;
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
