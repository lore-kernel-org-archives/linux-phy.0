Return-Path: <SRS0=MgL9=LX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9CEC11F66
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jun 2021 07:25:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9091B61DD6
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jun 2021 07:25:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9091B61DD6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjngNABTTFq2Bn8n4TtFfBs7QtJbH/efwcz5nLOrwWo=; b=0KLa+B4ys8Ax7t
	zTr6owS+nROVikOMSCL3UggRpeEiJYGefR0ZkzKTL4rfjg6SR1qyYZQtmxsuKPxL93ApVvereGp1J
	bKvm3Pb3nsfR5kS6VBQ0A+XQ79dySDjHtihFP9904Bv3n5QJwi0GnUAE/rC5r0qO6ULY7HV1H84G/
	kuZo608fTMCKVbAStCqWHA0zjt3ntbhe8BCxpqZQYQ0uzAG+3ImnkTSIxO6L0r8KAG7VHgq3kF0g7
	hbuRENyAqlqkvKjlCSPFbBD7D6RqmX4b+//CzHkkv/uzxi3qI/kEa9+/aCjWj4iSjCcbCAQl2dOI+
	loBGqgZHcohMT87d3y9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly87E-00A2Lx-4M; Tue, 29 Jun 2021 07:25:04 +0000
Received: from mail-db8eur05on2062b.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::62b]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly870-00A2KU-Jc; Tue, 29 Jun 2021 07:24:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lDGZTco9/o3N+EamKuaH5EUFeeMCti7TsClOopCThaPCGv6qfAGq9plrTrhtgQWQl0aZbVksumizytvCGGGsGG4mR7b++1B4Yb4hYIY6BZVZWNqDwzVnnWfMxV9QfpwSq3VrIfIkzs/BFGt6RD4xGe0rW+KLHR9214fVjMEeL3cdWfDLr2PXR3wpB5ZMZ6ltnQQrDik0xh/c5mLNLKFik2I0KgZRwoX3NIZrviIoX4o8jq2JbHjfpzdbZcxYlv2BKshQ9IEQjcj3v4Ixn7OhtyQbrbI8tYtL2y+BEINNBAIs25AeNmfLQbPy5UHLFpgAKTTNoQnYuOJBMKPQ8jkV0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4uisSBlKsVHh6C6tw6WfaBRfXEVGp6VAWGrxTLpmrss=;
 b=TyV6vEATNN7H5gcDlFuUgMwlEr+jHHsIQRPPftKvsSyGKh75TmCwlJRmJb3ElIInuguOt89cO5RNEQ9bP7gtegctvYLWGJvBJnvMfVj//Gw/scsO34yhWrAP5Rk6ALAqMG/gY6PE77Y26yHghxGWNPqltlnRPQxdcbncbgLbMPXrUQEghEdOu4QvyoX9DgtrpW/cHUHjT/rWOyCnF/Y4FE7zpdSCKzgtsA8FeY7IBRwMJM9V4z/YvkIpdvMCWPU8RI4ZAyZfzFuVSGvH4eF2OmXaq4S332l7TB3p43IOjArHAWo8MIAGO41m/DRCLGZSzts0pZ8YYBfu+N/UgRzT4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4uisSBlKsVHh6C6tw6WfaBRfXEVGp6VAWGrxTLpmrss=;
 b=cykY6VR86NP3XrQSvFWq+vTARwDIaEOmCplhHv+3fZ156K8AYIZiHyZr/tX7V3NYz5MEWrTGqE6iYdDlakdwJxqKgIdoeFbIaG3DS1376aa9ACqqW8bB5Q6CKEp0XAGg1HfyivyRgwO/EiEsSmThbSR389FB1BzawBO8Dooj6go=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB7PR04MB4762.eurprd04.prod.outlook.com (2603:10a6:10:16::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Tue, 29 Jun
 2021 07:10:04 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::c445:d742:eb76:86dd]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::c445:d742:eb76:86dd%9]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 07:10:04 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-amarula@amarulasolutions.com" <linux-amarula@amarulasolutions.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, Francis Laniel
 <francis.laniel@amarulasolutions.com>, Matteo Lisi <matteo.lisi@engicam.com>, 
 Milco Pratesi <milco.pratesi@engicam.com>
Subject: RE: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
Thread-Topic: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
Thread-Index: AQHXZm6BrEMFEqCnfUmVVsyYC57skqsqm4mg
Date: Tue, 29 Jun 2021 07:10:04 +0000
Message-ID: <DB6PR0402MB2760C13BBF36FF98E4F4635988029@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: amarulasolutions.com; dkim=none (message not signed)
 header.d=none;amarulasolutions.com; dmarc=none action=none
 header.from=oss.nxp.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e1f4aaf-1319-4c9d-40d1-08d93acceb16
x-ms-traffictypediagnostic: DB7PR04MB4762:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB47621F29EF4B9178954E3CD1C9029@DB7PR04MB4762.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N7/scxZU6AfaTly/cEVGhSDMCTT9iAy/If/kRlfXz1mStFB6sejGO2+DUaItZ5y3oPvg6dbRZxy4h99Tn2gx8JHKb0qvPW2v3dHuYR2zsAFPyjGbclAHG05D8lnjFU5V8Wx5sWoiFko8+twVUjzqqUKSRQAyL60JmXIC8o+aodB5z3wqqAHrkGExui9ZJNvxetwssKhqmv1u5tDF5FWNWSxYa83C3kaN6dRFFlHeC9fNQrmNFlEtRltutHgX56ZmnfS9Wq6GYgDEA4lOBC7ejol4zDpiF6IjuE00LNw9FCaMYQzL8Kk/RJl0FK/82s87+9uG6aU/41X111xRJLM5S9MuaT6QAowr+7B599aS4GIdSHUgz2i4onqSh8GYuJkL6XFH3AbXERPmZtKy3c2fmgHFWKQxctNnGQwEbDDvqrQO663nScbg9lE+MOGJ67XtX2GoePVCuJydSUSzOOzxT/WPW+ctdEp4PCnQo8n5U8oeqN63jVihye8XwGjkMQipjLxbO90xsaKMz6++Al/rI6sWlIayvqn12pVd6WjlFroZ56hNiqXdfzzHwM+GDGyUZS77k5zdr9ANFznQ3ZzPyzBZt8Q/ikx7Wuvk6tgysSDlbfjRck8ePgm6frGMx5ryfgNtJ8aysQ8rDmlkEwgZuEC1oVuXFdVyyz7a/JYZ014ftw/DbostAhS1TtGa25aRBINsUIVvvKWyQliFw90buWZ78ec5hMmZB5Wm1bx74tAkR94Z4qr2+gGwOwVWSZUuIGJOKqcegq7WjFqsi2sTeLA027cEfD86gfKywCZ6C8VE+Szdgj6okfy76qk6A0VZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(396003)(39860400002)(376002)(136003)(86362001)(26005)(76116006)(8676002)(7416002)(2906002)(9686003)(4326008)(55016002)(71200400001)(186003)(966005)(66946007)(5660300002)(38100700002)(64756008)(45080400002)(316002)(478600001)(52536014)(8936002)(83380400001)(122000001)(110136005)(66556008)(6506007)(54906003)(66476007)(33656002)(66446008)(7696005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MWdizohVjxjsCMb7zLthhlQQ12UYphisauXOY2urC++yPPlNK9F/TXAZ7tzm?=
 =?us-ascii?Q?2ZkD58SZY6W73Z7Ss+XOia/Bcx2BjdnduXOQvUjEmTaefpEN2OMeKO5trYF5?=
 =?us-ascii?Q?1UPfDm05MFIx/gWwTvMf4YTjsyP3k5ezfWlNk633xANHzCCnS9zxuPzDPTvG?=
 =?us-ascii?Q?kUS9iKf9PFQJEd/i6CMDIOLbT92u94wBW1penqwUYqawcNku8hhhIxmDPsdX?=
 =?us-ascii?Q?ddfD9PVA0U2y7U08HeDkCRq1aqkTdPaDE3lP9Z5ha73qpjDGj8VbquiRNBbc?=
 =?us-ascii?Q?cmoelumyxDnFxLtKtELczoKuLLK0FTzDkqrLXvAltgYMWM1koCrBqhTWmtMN?=
 =?us-ascii?Q?X8w1zQnu0qvlFF8pfaCX6cLvbuEg8ZYRG3Szf6kMk7zrYY5v2fbrHRCIhVta?=
 =?us-ascii?Q?KZf8TM1mTl/2CKhclcPgEADqaA8sJoQvgLEnjbn2FED6tPV8YF48kG+Xf0u8?=
 =?us-ascii?Q?+yy22ZJUOiKO9CHJKDxaQAQtHYOOSLT4phRBPKV66JsC12p/NgI1jGOhxC9B?=
 =?us-ascii?Q?AINJJU9wBBrHMVzydAHANRGxTpP5NeSTFAz11+rqJMSymhbF81BUncI8ad2z?=
 =?us-ascii?Q?oxddV0k5IScL3eVFLXwe+3sRdUCT6S5YNKqcvWBWWaVh1IXPs8YY8C54y5xe?=
 =?us-ascii?Q?nEFnl9pT47lzI8ydLxWtQi/RdUEu5QcwotnDtOVTA/9OE61krg+iAWB62+PC?=
 =?us-ascii?Q?mg19QPgesT89IU2G3yKnosulPcM7E13JOc/QI4i+ts+vhR+rKEhf7ufB5y7d?=
 =?us-ascii?Q?tyEESk+OK7jljSU28whAmQFKEYA4WUSfJx/bqZJyIxU4GiDhXBtFG+9geGHV?=
 =?us-ascii?Q?v3sq5yTDOF2/O7Z2n3zhpkvRCnGVMf48EyUW7+0UdrbvRfDzJncoTcVPZ+Le?=
 =?us-ascii?Q?7V+CwcLxZGRwJtPMu5RnrgE8vyWsRRdrJpDz8SA91S+keGZHqh1Z8LxeP1t9?=
 =?us-ascii?Q?S9iiyBIKiY1uSKatv4JKU++EsWCxRhMOn3EVdzzod+rMNlFSVaDyNT8WzceS?=
 =?us-ascii?Q?Ig+mHOxWmeHyU2FRTHTdtdhe5MTxqYLFYMs9LJXWuDt1rQnc/5x1Iun1+lHv?=
 =?us-ascii?Q?wpmNaeJVWCsGH3qkx4/Cek3gak+IMynN8qXQoA/QYrZrhhqu6YbjeuetKob1?=
 =?us-ascii?Q?GZfWkfpczuHAUznzRzcbmFWJoA6Q7CGoyKqKvTh4gXnCq6aNKngkhzm80Ogz?=
 =?us-ascii?Q?JKvLdWMzGwpRL7+ktZOu442ufWYzW+V1BREzA5JnZ8oChAjP/aV0GTNNs4rl?=
 =?us-ascii?Q?IF8QPg4B92B7NVQlQ+7sGmPeVnY/AxLPJA6CgYFyMINmUzw6xODAYwQaIBqi?=
 =?us-ascii?Q?aOLw6z369pE7WkqY2yzc1QCi?=
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0402MB2760.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1f4aaf-1319-4c9d-40d1-08d93acceb16
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2021 07:10:04.0299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rh2FB7EJzaA8YjyXLP+GD7HzhLFx1O7Lfw7HmaiE/aW9waDHWRr6hYJXY7JlA70tk3cVoYDIv/7vGqS1GrTosg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4762
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_002450_688773_B08CCAB5 
X-CRM114-Status: GOOD (  17.06  )
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

Hi Jagan,

> Subject: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
> 
> This series support MIPI DSI on i.MX8MM.
> 
> It worked directly with existing mxsfb driver but the SEC DSIM timings has to
> be validate and tested through all platforms, ie reason I'm sending it as RFC.
> 
> Tested on Engicam i.Core MX8M Mini SoM.

Thanks for the work.

> 
> patch 1: dt-bindings for SEC MIPI DSIM
> 
> patch 2: SEC MIPI DSIM bridge driver
> 
> patch 3: dt-bindings for SEC DSIM DPHY
> 
> patch 4: SEC DSIM DPHY driver
> 
> patch 5: MIPI DPHY reset enable in blk-ctl
> 
> patch 6: display mix blk ctl node
> 
> patch 7: eLCDIF node
> 
> patch 8: MIPI DSI pipeline nodes
> 
> patch 9: Enable LVDS panel on EDIMM2.2
> 
> Note:
> - all these patches on top of Peng Fan's blk-ctl driver.

Would you please update to use V8 patchset?

And the dtb:
https://patchwork.kernel.org/project/linux-arm-kernel/
patch/20210604111005.6804-1-peng.fan@oss.nxp.com/

Thanks,
Peng.

> - anyone interest, please have a look on this repo
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.
> com%2Fopenedev%2Flinux%2Fcommits%2Fimx8mm&amp;data=04%7C01%7
> Cpeng.fan%40nxp.com%7C8185c94655404000316208d93485a285%7C686ea
> 1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637598570833578734%7CU
> nknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI
> 6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=HKAHBv4YM0G6mVV3bq
> oPOyNb2mQTH03YSBU8RnrJmlE%3D&amp;reserved=0
> 
> Any inputs?
> Jagan.
> 
> Jagan Teki (9):
>   dt-bindings: display: bridge: Add Samsung SEC MIPI DSIM bindings
>   drm: bridge: Add Samsung SEC MIPI DSIM bridge driver
>   dt-bindings: phy: Add SEC DSIM DPHY bindings
>   phy: samsung: Add SEC DSIM DPHY driver
>   soc: imx8mm: blk-ctl: Add MIPI DPHY reset enable
>   arm64: dts: imx8mm: Add display mix blk ctl
>   arm64: dts: imx8mm: Add eLCDIF node support
>   arm64: dts: imx8mm: Add MIPI DSI pipeline
>   arm64: dts: imx8mm-icore: Enable LVDS panel for EDIMM2.2
> 
>  .../display/bridge/samsung,sec-dsim.yaml      |  184 ++
>  .../bindings/phy/samsung,sec-dsim-dphy.yaml   |   56 +
>  .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts |   90 +
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  104 ++
>  drivers/gpu/drm/bridge/Kconfig                |   15 +
>  drivers/gpu/drm/bridge/Makefile               |    1 +
>  drivers/gpu/drm/bridge/sec-dsim.c             | 1535
> +++++++++++++++++
>  drivers/phy/samsung/Kconfig                   |    9 +
>  drivers/phy/samsung/Makefile                  |    1 +
>  drivers/phy/samsung/phy-sec-dsim-dphy.c       |  236 +++
>  drivers/soc/imx/blk-ctl-imx8mm.c              |    4 +
>  include/dt-bindings/power/imx8mm-power.h      |    5 +-
>  12 files changed, 2238 insertions(+), 2 deletions(-)  create mode 100644
> Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
>  create mode 100644
> Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
>  create mode 100644 drivers/gpu/drm/bridge/sec-dsim.c  create mode
> 100644 drivers/phy/samsung/phy-sec-dsim-dphy.c
> 
> --
> 2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
