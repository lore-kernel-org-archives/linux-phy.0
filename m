Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25983C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:38:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD2616124B
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 02:38:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DD2616124B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xa3/K14Dxb3Ltk9puz/TpYhrlhauAuACpTa4N8AL8vo=; b=M/N5/f3Mh1ckDb
	i4nZGaa8m1vwlDLIReJpLXfObfIEYqYlPsj+HZzumdOVoyV0ATEPWDfrCbRGS0kCtLeQYr84h4tT5
	87CUjTANx2cLMLa7D2CA/halw1TT7I38Nf4nls1MWNKJ+t0c34yxWsUlRNWHHsrES3EhnRi6jh9wj
	soPlgVxjBoj9q1jC/XVBgMHQlBFwybT+RMRTi8H2UN7geDY1HG0kni3nGbcIx6GELMgsTtvS1GJ1W
	rmp/aiGK+BxlovgoToa+ZnqhHEuvMezY75ThUUFa7uxppLha1O5R/lAgilZuI7hEvREvR0R5tLKTz
	QlfGH17OKvPt9BbIP/Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV319-005KAQ-4V; Tue, 28 Sep 2021 02:38:51 +0000
Received: from mail-eopbgr50043.outbound.protection.outlook.com ([40.107.5.43]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV30r-005K3N-I9; Tue, 28 Sep 2021 02:38:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSoXZZGB1gJCsTfAHSCrqeYQo66bV60A4i7tyZVm4DV7NyUS+ZhBMCVR22wNZkvGCIOf8994xeM5plyKvdmc+Foo7ihCXpzoWtgry22HzMPxvzw3fUQx2R9AtdxYlVlv79IK9mnX8huX4ore6Ou8/hVEJKXa8DQTTRN95LVMXrcwZgS5W2tWXiBlamGk1fUaDO/sN+40Wkz8ZCHDTqOaSho1nfxNI7RNFUIHgoo/FF65yNQk4uPJWUA9aK6qBNjuhN3DmPQcuNkGOriQA6nxvRCXmKiWcvjVoA0c2XhoUTCrnRehd2yfipoJlcKcCby2h+yO1zVdTo7GzvowaPXCww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=IQUHOEfySLtWyD7Cl3YTLQMqm57Nz+/24DKq9fxMTqs=;
 b=oR7dtRzGiD9VQiB/gM/UWnQHuTLcHb59Kywavk7ODcnZpTwRi6VCBoW6puwwx/4Vztji72eTrrgkWMrBLWzJvg/pJcxEDhk4UZnRnsjBmDTMGwp1c+rX8EjgcSfmMbSbexQYe9uS9+9YtLTDy0GLjuSETCMiRs4iv81zIvOr5AxTxsEVKG0YMuiZeSe6fZJE9bHdpyHU5kvf1CoHBOMLP3fTwkapU6tqXvDOMVmOG0yvkuOzXtdO51COl9mIrq9UKqXvfU+EUfbrKtSsoGCdsJUZ7CAbjRE3PEiOxG6aDZA86Ek8vgAUpXB0dOrN6u+lvoeebKA2rpKsFs/Y9Ho+4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IQUHOEfySLtWyD7Cl3YTLQMqm57Nz+/24DKq9fxMTqs=;
 b=cj3hbsRr2QpmopAg3dcTTHqUod51+eXIGp7sQFIJLI9xNz2BYgNCa2O3APrwMGCbQkOWsn6NlEmFhmAHzn9n303Wvc59Ek1wXH5PZzvyNCHljcCYdEBBVAknu3bEMZYjGgPCJvWQZJK799/tIfzSmFIJXOpFijVFqNNZNnoR8ck=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8546.eurprd04.prod.outlook.com (2603:10a6:20b:421::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Tue, 28 Sep
 2021 02:38:30 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::c5ef:f538:c3e0:c4c2%9]) with mapi id 15.20.4544.022; Tue, 28 Sep 2021
 02:38:30 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v2 3/4] arm64: dts: imx8mm: add the pcie phy support
Thread-Topic: [PATCH v2 3/4] arm64: dts: imx8mm: add the pcie phy support
Thread-Index: AQHXsq0Fli4oS7cQWUSBBUQ6eND1Pqu3j8+AgAEua4A=
Date: Tue, 28 Sep 2021 02:38:30 +0000
Message-ID: <AS8PR04MB86769FBC49DCB29D557CA5CB8CA89@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-4-git-send-email-hongxing.zhu@nxp.com>
 <b7604aa25a5d6746025fadeea42a7cc4b5f884ff.camel@pengutronix.de>
In-Reply-To: <b7604aa25a5d6746025fadeea42a7cc4b5f884ff.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d988bd63-08ab-45bd-c355-08d982290f1c
x-ms-traffictypediagnostic: AS8PR04MB8546:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB8546BFFBD2566FC3C44E9D868CA89@AS8PR04MB8546.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k3P6pbH0LMNnr/1i1va70L1ChEJ2G/nbHs8s31uWk23LvikSaBMaaCeCS2LfpEne0Nmg1rHAhH+PbMcVgH8oCaVKqEpNk2i6bBUCI27/z7Uk5z6urv3SSDbPvSVvpTaJ3nJ3/5jYuQJQgBIo+s3p27BpF+mi6jk1oSQ/k5TkWnmRueGvok8Tbw0P0FOhOdrdp3ymdgbsTTw7XlC8LPh2AXig0Opjx9u0aw/kW91e5QsxV60Ccu6kth0Zg7oG1NHJb6hpMtSE904kgaiEB3tWr90R2Nu3Bmw5GQ8t/1yldDZ1Ji4xa4feA8WFKJgLewFDJpIOxbXchttlkq9PlzZcg8ryAws4AEOSd1+0c1EjP7nFziqAflGyvgvNi7dlMFlD27mhwH8OVow40hjJbnW/daU9GvAfXfyTISYOVae9kCwi1aQR1xvrewRonL4PUPf6vE5OjgoY3bX7ZawW+z0l948xJ56D3NEwkAjjbsFz/PU0zOeObkIvkseKBSxJExEPMDNY/8KI6U2GVcxvTJwYKAR5yl/zbLZKkM6N1EXUzEXkEd0gzSl4z3dHg0AOPJbZctIZLtUhJyToSSOzmFSX/bQz83k+RbLPtRxjs8ewyos4wiB5TLctE+ueiPxQ1EmcOcQN9i4AdkmnHmWHdZhxLDWnBg9J2/vB4R5Imoze89OO282kBylqifAENS9tPsV9GekoXrVySIMaR+BgvjgkkuOp6j2mqy5IRI5b2PAfYKE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(76116006)(53546011)(52536014)(9686003)(6506007)(55016002)(66946007)(4326008)(66476007)(66446008)(316002)(64756008)(66556008)(8676002)(2906002)(7416002)(7696005)(33656002)(38100700002)(122000001)(5660300002)(86362001)(110136005)(54906003)(26005)(186003)(83380400001)(71200400001)(38070700005)(508600001)(8936002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WXhoOTdmbEVwYnZIZjBlaDlTaXd1Mm5Vc3IwMDVTcTZRTk5JZnhCK1pxazBG?=
 =?utf-8?B?djZETUFDN0NUZjhLMlFpcFhVRUFiY0ZwVFlMOXg1SEY3aGxLbktDRlU4WW5k?=
 =?utf-8?B?WDAySUx0Ti83YlhxdnZ5OFlMSUlBYWFCLzJkYnZtVy9KNWJFS1ZjRFFjT1JE?=
 =?utf-8?B?TCtvU0lhRVBCSmVOSnNYRUw3UlNjM3VCS2M3Z3M0UGZSVDA0OE1qTWt3ODh0?=
 =?utf-8?B?Uk5RY2gvVHdOeGZZMDQ3a2RKbXorT2tkaW5xMS9vMlg4Vm9NcXlDWUFkYkVv?=
 =?utf-8?B?VVhWdVovWmZRSEN1OFBwSGZqWlN2UUNvUkUrR3VsVnJpRnduSzJHMi9tODFu?=
 =?utf-8?B?aUpIM2MxTXV5enhsa0VtN3JISGRrai9VaktHdldCdXdmaFZZc25UakVrR1lH?=
 =?utf-8?B?MUNpdDZQRnh6TkVRU2YxZVBrZFZnUHhpZXRqbnBNV1JsT0RsYXZxc0hNWXQ0?=
 =?utf-8?B?bTk2UE1yb2h4dlRvS3p1bmNka09qQm5WVXFoanIyQ0pvQjBtWXN0cDhTcWty?=
 =?utf-8?B?N3JYYVFuVkR0bm1IcFc1bXV6Qm5nTGUwelprZDBJV05KdDllT3NMaDNaT1l5?=
 =?utf-8?B?dXFiZzg0UisxNXhFN3l3VTdSamxSUlJsYnVDUkZvZ2ZqL1k0d2dUTlF3dGZD?=
 =?utf-8?B?U0xIekZEcm5WUHUwUURCUVJmTGpObEhzNXFMUk0zOEtIYjFoMjFhV2VGMDBH?=
 =?utf-8?B?S002OHc0NHZhM042aC9mR2Nvay9xanE3VytaWDYrWW9oczk4aldYaGFMZTRp?=
 =?utf-8?B?MXhJVjVmRjU3aU9YcTZaNVp0RGpBa1RIZ3JDMEhkVDlJeUtpUmtETWZ3VEp1?=
 =?utf-8?B?NXZwV2ZFaGhzNUVTZWdmcXkyc1JCajlUZ0lJOE9LQnZIVHpCU0w4dHZ4aXZL?=
 =?utf-8?B?MWp5eHk3Z2I4RURUQjJtWjdQMkRqc3NXNWdFWitqZnNFYmdTY1k3VitOTDAx?=
 =?utf-8?B?WFVudHhrZlZ1aWplRzFjM0p3Q0k1UW1PQzRrNzBzaWkzL2hrN0tEVXM0NU9y?=
 =?utf-8?B?VFdnTGxEWkp5U05IUkdpV295YlVQQUZrLzY2ZWQxRHY5dkdvcGxTaTN0NXR0?=
 =?utf-8?B?dVJYM253QkpVd2NMaTRnb2oxdVppOE4vRDAweFA1QXVtOUN5WmhOTjFLaTRV?=
 =?utf-8?B?WVk5NEo5NmxNRXEybkVrd3ZSVGdaNHJ6T0tGWm5ZbHdOSVFTdy9yWC82QnVX?=
 =?utf-8?B?OCtiRjNJVTI4eThTdnNETlNEOVkrRmJXQjlDM1lSWHQwRHFjam95QUNvOFB1?=
 =?utf-8?B?ZjZBc1NySXUxSmxiakUyN0I2Z1BYcnRYa2YzbjVUSTArZnRFMy9BY1Mwa2ZZ?=
 =?utf-8?B?eXM0NGpCU0p4U1g0ZlA1VmFnR0o5a0M0OFdoUzhxMVFXMUVYLzlibXRjOC9Y?=
 =?utf-8?B?Y2d3SktHNEJ3aWp0L1prcXpNU2pmeXBJN3BYN3JpRmowUWJFMENDa2dnVS93?=
 =?utf-8?B?a3RPWVJxQyt0N2l1dUNCeU9oUEFQRGl3VHRVeitaLzVwQWdyVmtMbzV3bCtp?=
 =?utf-8?B?UTJVMnVrOTNpREhhQ2s5RW4ydU02YjRlL3pGVjV6UjNxeXFFVk9uT3krNE5o?=
 =?utf-8?B?WWdDT2ptRVA5QkFHYWxvNmJsckNXQWNvUHYrQVdWb1pJRm5jUEd6amlEOXZ5?=
 =?utf-8?B?WXN6NHZhWWczUDc2dXRTRm9LbkNPTGdwbE5ib0t5ditEcDhmaEI1SnV6UE03?=
 =?utf-8?B?aG45eHg3WkFKZHRxS2wySHJPbmY1emhBSVd2SFpLRUxseVc4S2VoZmZITWND?=
 =?utf-8?Q?g77ZrZiOI6zjdo/lNqWyUGj518gBuywrofsNMK4?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d988bd63-08ab-45bd-c355-08d982290f1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2021 02:38:30.7184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKJeFV15wUp9fMBWXmh+j+UwIxE7k+anjoRRip2/4VltCr3KQHvGWqzl32VISmMi47PzsQwDp2/hPknfID04CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8546
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_193833_639021_28A46337 
X-CRM114-Status: GOOD (  19.73  )
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
> Sent: Monday, September 27, 2021 4:35 PM
> To: Richard Zhu <hongxing.zhu@nxp.com>; kishon@ti.com; vkoul@kernel.org;
> robh@kernel.org; galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v2 3/4] arm64: dts: imx8mm: add the pcie phy support
> 
> Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> > Add the PCIe PHY support on iMX8MM platforms.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi |  4 ++++
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 12 ++++++++++++
> 
> This should be split into 2 patches: one for the SoC and one for the EVK board.
> 
[Richard Zhu] Okay, would split this patch into 2 patches later. Thanks.

> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > index e033d0257b5a..e7f398433486 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > @@ -289,6 +289,10 @@ pca6416: gpio@20 {
> >  	};
> >  };
> >
> > +&pcie_phy {
> > +	status = "okay";
> > +};
> > +
> >  &sai3 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_sai3>;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index e7648c3b8390..de231d531ba4 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -998,6 +998,18 @@ usbmisc2: usbmisc@32e50200 {
> >  				reg = <0x32e50200 0x200>;
> >  			};
> >
> > +			pcie_phy: pcie-phy@32f00000 {
> > +				compatible = "fsl,imx8mm-pcie-phy";
> > +				reg = <0x32f00000 0x10000>;
> > +				clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> > +				clock-names = "phy";
> > +				assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> > +				assigned-clock-rates = <100000000>;
> > +				assigned-clock-parents = <&clk
> IMX8MM_SYS_PLL2_100M>;
> > +				#phy-cells = <0>;
> > +				fsl,refclk-pad-mode = <1>;
> 
> Move this to the board DT, as the pad mode is a board level decision.
> Also use the enum instead of raw value.
[Richard Zhu] Got that, thanks.
> 
> > +				status = "disabled";
> > +			};
> >  		};
> >
> >  		dma_apbh: dma-controller@33000000 {
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
