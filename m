Return-Path: <SRS0=jE1M=PK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A63FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 02:07:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05EE161163
	for <linux-phy@archiver.kernel.org>; Fri, 22 Oct 2021 02:07:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 05EE161163
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BGrOUOt0h3sWzbRtG42JooZX6nwZ51Heg3j+9D2tNE=; b=Pr/geP1bFPubjL
	Nt3A1mSHT1d/j1rEs8wu9hiQR4H9jk5bagw0NJO4di6zADJ/EX6Ec+PURNe8tzCbpSNk9RDmytQw1
	eJXCA0EHoAqlNsN+H3OZ2JrFzJhG2+Er/wFoZxIv+VGw6P0f4lgRM0lPY7u0eb7843OO033FZ3tUi
	/ZZti/cdX2RV5JKcT1PygSjbMJdoEn1HsdD2uO92bX4WTNlfWZ9rmwVQ8CUWSe1UPkxLjXd6GK2L2
	5mtrsglP/P6zma//eMSnB/5qymZ9soH/eruj4VV7BWGWDZGyOcSsJE8RGMEP3BJRC6+jQvvd65zjj
	sjuk2vHIZFLX7xDZ/cLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdjy3-009Tux-D3; Fri, 22 Oct 2021 02:07:35 +0000
Received: from mail-eopbgr80049.outbound.protection.outlook.com ([40.107.8.49]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdjxz-009TsV-HS; Fri, 22 Oct 2021 02:07:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiNOld+GKphB0OGm4UJyr/HbksLdQiJDM5FVmRkIsSjpyJDRzTxYntXhUcdatwpuwLfASP9FNuFTR+SiKm1z+vVVpvxeqHs9BZFpww/+6mk2E86PE+pKYogEpk0Nym0rrgAs30padlLtBrTzKX3FT6cSSnyZOFgltQIjl+huMom+swVkagsOBMObKHGzev63a781fpdq6mc907FxEC9euXB6lxuJN+6LxqxVeGC5yh2tNvU7/so+wLEuldfGEpqBRzEXC7ztrbSNhpuSTUwmmyBOaXpCZAI3yN+IThuOduELVUj8Hm34T/D+MtuQyzpszp1PzywSJteaC3pNYSI8Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92ITrQaM159ffdOnWT3ANa4VU8ia1pLQeO6pggibcAs=;
 b=PXQgI2ZNte/Jl/Bg1OFbY+YRcw57FYY8lmcUc01wqE4oP7fDqR6kQsdxS7rt4gcRAUqkesaFW3KBnpsPcVM4guXcy/jpAm2ph82oaMyHipXXjDPonBUlh5Un1+e5uYfEwCmUCAe6vMoG47BZX8cS4Lbf/YrupH3T1m5MllDWneB6DU4d145C65EOKLko1L6JXpqdhsmWmcmDQyvQ7waoxOy+rM5xUs4P/RFZpu6scEXU+Z/mqYzfljFmVAxomGHycK8iN0WS8myz76TQgOpZ8F7DV0E0SUGz7rbFostJk8WMc6pdo2nf/kUI7v5d1U0Yjo/+6uWQd9KQ3eYjdTZJLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=92ITrQaM159ffdOnWT3ANa4VU8ia1pLQeO6pggibcAs=;
 b=ZKIqm/sZmdfRhV2AUaByBwcXLxjBJD9JLtn8du1KfgkRCYXB3wG0BfjkzfsPdItLJcFAsd0OzHCo/3c4XQHPx17BzIbF7+rwLOUYZhhF/yR7izQC9ZjWjAtSK37lkvR7iqCevcz1WRlqAJRPCwY76ftXcD2bjMVEzd4xPYUH9eI=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8851.eurprd04.prod.outlook.com (2603:10a6:20b:42e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Fri, 22 Oct
 2021 02:07:26 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 02:07:26 +0000
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
Subject: RE: [PATCH v3 8/9] arm64: dts: imx8mm-evk: add the pcie support on
 imx8mm evk board
Thread-Topic: [PATCH v3 8/9] arm64: dts: imx8mm-evk: add the pcie support on
 imx8mm evk board
Thread-Index: AQHXv0hsbacPRtv/ckW1/tKlzw2/zavUcDuAgAnj/rA=
Date: Fri, 22 Oct 2021 02:07:26 +0000
Message-ID: <AS8PR04MB86766965F158A4B3A6AF1FDC8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-9-git-send-email-hongxing.zhu@nxp.com>
 <e761c991636d4a9ea7a7362dcba8983ee47e997a.camel@pengutronix.de>
In-Reply-To: <e761c991636d4a9ea7a7362dcba8983ee47e997a.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 108ffa24-7343-48a2-fc92-08d99500b1a2
x-ms-traffictypediagnostic: AS8PR04MB8851:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AS8PR04MB8851FADA14E5A059F5AF521B8C809@AS8PR04MB8851.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o41iuticXZ+NmObgOMDHbXv4AlsN2+K0XfVOhD2QWFhSTtc66j4I6kWfgUWvJd6gngdGDEbGPqchR2TEL51vUT3Tiyi13kGHqWgro2yZrzuRe3d8OKANZ1yYTYJMlj/Y6wFa21Z9o/xSfX/IRclFXtMzUq9jvhfKnq7jsG5Fmhx1/dfHiG1t5RHPOGfgOKZkDK3aBUPhTWyTDrk67Y1rkJ2URbvTkquzyYhc13n0wLMMmQE6Ml77JZ1Oso7LRIVoVGVgIB6IISJqCtxugOS81LMJkwVAIIuUH1YqWx3YjM6aEdDxd31WR7eG3qcl9Wfu1IDkAp+UCp6YZNqzL3h20bioigsmaCIMYvS31PJmyHan60RyYwVO2K7rqaejzkKWBkcZI358/hJFJ/trYQe7T9r8WOgQ4g0nxyNGP/L0KDn2ohneAojMiRV2p280X5uodMqsKCJsMa/PPoOX/hasvUT/k3r9qv/goEr4efwDJFULS/U8bzEaSITazDhGOGfVc4Koqm3x1lcUj77bpRH5Kac4vaxsE75mJh5IVrk5iyPh7/euqWrC+1BMSGROrWOzbAoGBVEQwLXluK8t5rNQUB8+7Xlqvf+qnwF4XZI9gkJYVhjkIONOTgdwOVkB5XzbymbhaRjslWJwXyQt45vP6BcdckO/DedRzOUzsV+U9AkLDlD6dA1VsZT3xDofniJGc0B14XnT/Q2fgOUVKisIF2tvg9KtQe+IyUDXdIql5LI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(54906003)(76116006)(71200400001)(186003)(52536014)(64756008)(26005)(66476007)(66556008)(2906002)(8676002)(7696005)(38070700005)(8936002)(33656002)(55016002)(66446008)(4326008)(122000001)(38100700002)(6506007)(53546011)(9686003)(83380400001)(86362001)(7416002)(316002)(5660300002)(110136005)(66946007)(508600001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0t5dFZ4bEJpakRwS2pucXF6clovQnZna092Z1lkb0liVU5PaXg5MytjSlZZ?=
 =?utf-8?B?L2N0UWRBQ3lHWkN0aTg4YWhiT2N5RGJHTkpaaVJIZC9EZ1V1SEEyUTM3c01H?=
 =?utf-8?B?WVFSRk53Sy9sQTZUcy81ZmpqaER2RjVNM3RHaC9wNy85NUMyTDdXaWxseUpY?=
 =?utf-8?B?ZGJ5bmhXanZyM2ZiTVFvcXlmd0JXaDhkU3k1NzJqZnNQTXJvcmw4UzQwTzlZ?=
 =?utf-8?B?bUw1UEI1V3pGZVlMcktQeXprUzNJWmc2eEIxUFd1YytTSGswa0VjSnNrZFlE?=
 =?utf-8?B?M2Mwc21OVG9rUkczbXQzRkpTQ2VPbmRvMHJBU3VGTDZFWG1xRG1jZW9Sd0cx?=
 =?utf-8?B?NFg1dW5kMkdYUWNtWVFjUDIwcmF4T3EyVVhmM3BzSTBFOGFXR2JiaHZLS0gw?=
 =?utf-8?B?OVc2UVg4WkhTQ1RNdE9GcFZRZzJEc044VWpESmw0ejJQbUNuVGl3Tk5aWDUy?=
 =?utf-8?B?cTgvU3RjSFNGeks1cnoxUjRmdEFIQy9GL0hPaWU5aEFtVE1lSmt4Rm9uNElK?=
 =?utf-8?B?a2xYaVVUV2Y3L1NxMlBOekNlNFRjb093TWFSdWt1OGdXKzFKNjcrSStRaGNO?=
 =?utf-8?B?VmMwK3dMZUtQNmhIQlNzcDlhbHR2bWhqelVlUXRPYjdHZ1dLNm1PYWcxY2h0?=
 =?utf-8?B?Q1V0T3p5UnJackVvbm5EcGJURzdVUDFHNkhOMCtoQjVVcnN1eWlERUh2V1VD?=
 =?utf-8?B?cVRneEhjSnhEbE5na0U3UzdJSnN5MjN5NjZYc2UxRWg5Q0tJaDZyaGhGR2Zz?=
 =?utf-8?B?OEdNanJzR1RYVnVrSjM3T3g0M1FxQVdwM1RHV093bFRWQXNJa1NlNDB3MWI3?=
 =?utf-8?B?ZDIvUzhjRkF1WXVhSzJtejZ3Wmc1UER6SzFnbnpIZTkxTEhFU24xYzNDSVVX?=
 =?utf-8?B?dFAxRWxOTVFNN3pUYng0dlVqQUo0dDZVdCtYcUFJQ3lFWUY3QTBocXVUYVV3?=
 =?utf-8?B?ZkJYOGlreUdrdHJ4TFhQZGE5Y2pnb0NXdlNBdVpyY0dleUNYTnNZTE9EN2x5?=
 =?utf-8?B?Q2NiWHpWMjYyN0FrY2xhNlQvb1YwaTlCcnNjbUF4S1EyUU9YUkRoaVJhYk44?=
 =?utf-8?B?OU1EeUJQblV6K2JGMHFoSitqQStRUkhmb2xXTmIrWmRKeDZRcGZGSXZxNzdn?=
 =?utf-8?B?SGVmdVdXblVuUnZNMnArY2RTa1hOMGdGajltZ3QrL2RoYjYxZExUcUZpYno0?=
 =?utf-8?B?VFhmUkkxRFBCMXJrOENQSHpGNlVPVDhlN0wyL2oySDJORG52RHZvYWZGTnFq?=
 =?utf-8?B?SjFlcnhSSC9BbW9uTjZ3aHVsOFNibUwrS2xYZkVRaWdwTjVVTDJrek1hNFlT?=
 =?utf-8?B?Rzl5M0ZuZ1BUd0RvNTdGVUN6Tmh1ZU8ybHlRYW1xM3ErRWIrdTBBVFhPMksw?=
 =?utf-8?B?Q3NzaXNoQ3RUR2c1dFVWa0oxK3JvV0M4V0VubUZpRkJyZUxaTjF4UytVbjJv?=
 =?utf-8?B?bXdNSVgyQXFuSnMwWmowbEJCNFBWbVRpRDhHWXBCbEJVWUo4L0tXOUlIam9j?=
 =?utf-8?B?QUpKZEZNRnE1VmdZTkxkQzBKQjRydVArOVZlWVZabmZ0Sy9wQUkwSEZYK09R?=
 =?utf-8?B?bnRMa1NGdUphZXpEQWUxdnQ1T1RkdDhwYkxGNnliYWZxUG50eE00RVZJb1ZH?=
 =?utf-8?B?T1VlTDA2R3JDS3U2SkpyVXhGT0RlaG5jdWFzSk5hM0NCVFZYUEk1eWwwRkRB?=
 =?utf-8?B?VVM1YWQ5L0RyUE9vemFFb3E2eTBRTzY0UGNlQ2kvdDhONGdmbVVyQzgvcTJs?=
 =?utf-8?Q?/PRizoNrWOiuLJUdnLid51mfetRdzJ4pDy4Xj9Q?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 108ffa24-7343-48a2-fc92-08d99500b1a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 02:07:26.0879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_190731_608058_2B03FA33 
X-CRM114-Status: GOOD (  21.55  )
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
> Sent: Saturday, October 16, 2021 3:04 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>; tharvey@gateworks.com;
> kishon@ti.com; vkoul@kernel.org; robh@kernel.org;
> galak@kernel.crashing.org; shawnguo@kernel.org
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 8/9] arm64: dts: imx8mm-evk: add the pcie support on
> imx8mm evk board
> 
> Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> > Add the PCIe support on i.MX8MM EVK board.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 46
> > +++++++++++++++++++
> >  1 file changed, 46 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > index 2d0684ac82f6..5ce43daa0c8b 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > @@ -31,6 +31,23 @@ status {
> >  		};
> >  	};
> >
> > +	pcie0_refclk: pcie0-refclk {
> > +		compatible = "fixed-clock";
> > +			#clock-cells = <0>;
> > +			clock-frequency = <100000000>;
> > +	};
> 
> This is both the PHY reference and bus clock. I guess you could just squash
> Patch 4/9 into this one, as they are both required to get PCIe on the EVK
> board.
> 
[Richard Zhu] Okay, agree with that. Would squash #4 with #8 together.
Thanks.

> > +
> > +	reg_pcie0_gpio: regulator-pcie-gpio {
> 
> Drop the gpio suffix.
[Richard Zhu] Okay, would be dropped.

> 
> > +		compatible = "regulator-fixed";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_pcie0_reg>;
> > +		regulator-name = "MPCIE_3V3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +
> >  	reg_usdhc2_vmmc: regulator-usdhc2 {
> >  		compatible = "regulator-fixed";
> >  		pinctrl-names = "default";
> > @@ -296,6 +313,22 @@ &pcie_phy {
> >  	status = "okay";
> >  };
> >
> > +&pcie0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_pcie0>;
> > +	reset-gpio = <&gpio4 21 GPIO_ACTIVE_LOW>;
> > +	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk
> IMX8MM_CLK_PCIE1_AUX>,
> > +		 <&clk IMX8MM_CLK_DUMMY>, <&pcie0_refclk>;
> 
> The i.MX8MM PCIe driver should not request the pcie_phy clock. Please add
> a change in the driver, so we don't need to hook up a useless dummy clock to
> this node.
[Richard Zhu] Okay, thanks.

> 
> Regards,
> Lucas
> 
> > +	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> > +	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
> > +			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
> > +	assigned-clock-rates = <10000000>, <250000000>;
> > +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
> > +				 <&clk IMX8MM_SYS_PLL2_250M>;
> > +	vpcie-supply = <&reg_pcie0_gpio>;
> > +	status = "okay";
> > +};
> > +
> >  &sai3 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_sai3>;
> > @@ -413,6 +446,19 @@ MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA
> 	0x400001c3
> >  		>;
> >  	};
> >
> > +	pinctrl_pcie0: pcie0grp {
> > +		fsl,pins = <
> > +			MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B    0x61
> > +			MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21       0x41
> > +		>;
> > +	};
> > +
> > +	pinctrl_pcie0_reg: pcie0reggrp {
> > +		fsl,pins = <
> > +			MX8MM_IOMUXC_GPIO1_IO05_GPIO1_IO5       0x41
> > +		>;
> > +	};
> > +
> >  	pinctrl_pmic: pmicirqgrp {
> >  		fsl,pins = <
> >  			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x141
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
