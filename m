Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9079BEB64DC
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 02:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQVW1AFJvFo2h+MgAvFyWqQPKqlEsmOMX3RWFZ7xAbk=; b=3hQ3OHbrns4uV9
	jCdx+qBh4iv4XZ45KF4MztADrDBt3Xb8q40P3zvkGpgtC361BT1jkBDzw14q1FCRRf3QbOEMP4xuu
	fPCO6uFuupO0ZsJ6j6QmU4PAycY4U5hTGZM3GM0Et8OJ2U56ibst97xPDVfHB8c1uOu2CNh40MA+D
	NI90Ja8+XK1aW9HwuUjtXdqgMyr/0v/nOflHwQ4iz74zxV3xWqM7pqM7Z4oKtP19RV7n8B7DmHlsI
	eZOaA6nnvsl+XrggbF562BLKUgxiAFfEPWHy78s1+Ua5Bujln5WZoWN+YlzzCR58FWP3J7AoruDy+
	4vQYXMdcMnM/d33XwXtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBnQw-00CvFd-0h;
	Wed, 21 Jun 2023 02:18:58 +0000
Received: from mail-vi1eur02on2060a.outbound.protection.outlook.com ([2a01:111:f400:fe16::60a] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBnQs-00CvEF-0S;
	Wed, 21 Jun 2023 02:18:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xq3Xrn4ZprozXKgWNFC+pclx4nkaSdo6hOCCcG6uWVCllax6NE4eqr5Cw2vN6yn51aRnA/70/HwlyGUj0wl4timFhbOcgvi2cYOm0NNBosMdrgEV2dy+TpVnIp5ddcXnkW70KpnNy2XvaC4Tn4FvC27jAc4BAAQfZ9Cmn+j2MQkRtmXIFlLwo7205GM8/tUQ2p6/3s7S8Xcbm19q5fVZj7R9Wm7wya2rtJtcy2zC6754rEXhrwNbLiHFnyKvb9WCBC2bf3fRjd5GlIei2dvBSd1ae1o3U76n4yfO3QyMThkFCniQ+3z5AbDsiEkDwTH6aPbGVKIW+Au13kNnykk2+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iDwzuCo2Nz8ShxRloZVPleF8zuocyjmlf5nwzQbAHPc=;
 b=K1C2E+lTOrRT+OMM4SRoGPQKqn0/S0nnUPLkEoeWxqI9+7BpuGGAYQuEqdLO8XQQP0kcCzKGEQ1h+VkWzLQI/vVo/vrWsz64TEWmBvCQgni+u3WcyvGiiaFUQVAM+3XL7BeYWaSWkAQZftMujYvvzbYZQk+9UwW5YE7A4zRjpKVzhfrUXkFrJaVAEHz9FvoEoISlNqceuOo3cmXTlDvnTAOcVq6EU1pHXkPh5sD2bEepcsD5ddN9NF+uCBDuxSqbNg7XEJj4sXtq8ZIZN23jvJKSbBZUtIaX6tWCBtREM+yNxg5h7hh8rbikD59HbyJq+bxpz2icX1Znzx5hy3gLHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iDwzuCo2Nz8ShxRloZVPleF8zuocyjmlf5nwzQbAHPc=;
 b=m5TJ31YmzyThL2HVjaLQ6wkubJt25VMbJalnVETEJE9yGmxXo95L7fYQz3z8EcsqSw3Zts3QL57pm9W7Yu7nqyRqmEGLdFXjw0NH4tCEdnuBrrc07Htr2t6hzMMcW2ny+ZAnvuZTNSPDTovbJ1axK2BwsHJdmMUQx+C7RyNFSwg=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AS8PR04MB8963.eurprd04.prod.outlook.com (2603:10a6:20b:42e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 02:18:48 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4%7]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 02:18:48 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Rob Herring <robh@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "s.hauer@pengutronix.de"
	<s.hauer@pengutronix.de>, Jun Li <jun.li@nxp.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
	dl-linux-imx <linux-imx@nxp.com>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: RE: [EXT] Re: [PATCH v4 2/2] dt-bindings: phy: mxs-usb-phy: add
 imx8ulp and imx8qm compatible
Thread-Topic: [EXT] Re: [PATCH v4 2/2] dt-bindings: phy: mxs-usb-phy: add
 imx8ulp and imx8qm compatible
Thread-Index: AQHZndF3ZYVLrS8KXUG+2CHhrNpJ9a+T3F6AgAC04VA=
Date: Wed, 21 Jun 2023 02:18:48 +0000
Message-ID: <DB7PR04MB450588660B64C44A682994678C5DA@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230613083445.1129137-1-xu.yang_2@nxp.com>
 <20230613083445.1129137-2-xu.yang_2@nxp.com>
 <168727496867.3628901.18310366051743547060.robh@kernel.org>
In-Reply-To: <168727496867.3628901.18310366051743547060.robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|AS8PR04MB8963:EE_
x-ms-office365-filtering-correlation-id: 2a4035ea-b749-45fd-58d0-08db71fdd908
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zQWffQe0MOBzcdNyLE3Nr8sNLDwhMD5geTAeXlueJ60QfWEmKWfpw59rVujBrQN2n7nCTO5pO1xUaSqHzPGsJtuRLDzyqMlyjSJDMgmFayG7vj+wf7UITarclNvNWSDPfhxCAXfSsVk5mRRm11DLSqX1mqJ0VA+2N3ZhHMSkgpoe7h6vZqFPvVJgh7+WgHxU2uiLhLACnHQ1CPr3oBSHrFr0p4yIJ1obFofucITJZIQSru6j6L3oL7GqUPN8L6pfHva7mmMaVeTlDbnJu8q7GLmDYh+WBop9Qn7wdJqfi+FPzEQ/oVHs4cjrUclKrRtGMV2frI29als/s6s0qR1VaO+GGIJB0rVA+1o0QGtIvWEWSDtRWm0ZxhGRuCWe/EaCEEtNfu4sybsXX5wqC3J3yRdfHcJ0K8X/SP74JnE/qfDF1jX78YuTKvmCJq46og7mdLBt1ObehhP7ABD+VGo3GSWu/e5cEPL/QXPZ5HP0V/5IzpuUQ9ElzhRC1tDzKFEWmSuq3MV+R8ClYPo89hDNk/DiLrsUPP9mOzhckoCMBo1v/YKocuITStrIbGyXdelfklA0hW+yKFzxNUPEEOUxR8q1OCW/ALG6nEfUzyvdvd0GS4Ci3fuRECIsHU6WcTlIdPs/eR0w1reVFyZusIGWAg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(451199021)(33656002)(66446008)(76116006)(66476007)(52536014)(66556008)(64756008)(4326008)(316002)(7416002)(66946007)(5660300002)(2906002)(9686003)(41300700001)(8936002)(8676002)(55016003)(7696005)(54906003)(38070700005)(110136005)(86362001)(478600001)(38100700002)(122000001)(6506007)(26005)(186003)(53546011)(71200400001)(83380400001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ce79ja05/M57mWwy2hi4mSfohVR3QYS6opR5VrjJ3CgtKv0969t/ESdqk+I5?=
 =?us-ascii?Q?zSMlODxp57Yy/uQFxSrwqnxTYvLMWo5CJ2GDY7lZm8qyDWef2pPiltEFFmyb?=
 =?us-ascii?Q?of1uxRlvziLmE6yGZRCAq6giXLfkZZS7cK7L4fmG4oKYeQbjiIRjU+Rw3WbF?=
 =?us-ascii?Q?GRL925bp4OcekiMl/Re7rtH55IIyY6yQExM2KPP6eLWMv1J058x7bt3m1hdV?=
 =?us-ascii?Q?tYwjnBWOI2P8W/40zGATGW22zDm+DwP/Rt8Xnwrh0LCtnq34+y4/oESEjmDm?=
 =?us-ascii?Q?Djka32yzCKAjp+w9nJroy8qMCtnP0X9Jhp+QC8BqoxjGONGIertwNdRHxNBr?=
 =?us-ascii?Q?LBXz+ci7VHsOo9kdG2FIaZBc75Eab2m4otRMDuHWw/qzI5mo/dcQwJMqGRUK?=
 =?us-ascii?Q?2CZIP5UtfDi/hZaGthiZX2PXwZQ7KnT09AWv61YPkm2g6//nfYgy1/iokL+n?=
 =?us-ascii?Q?OcF8nzwJhe1M1Kcxl4bjSNxoUCOV0Ud8C1WlSxcyPMr+77TfeRKLl1+sbHP/?=
 =?us-ascii?Q?ob5YEpetg81E74loR31i4afZvPtrnxi6HUHGC+AGHrD0kgC5mf/5J2ftnMte?=
 =?us-ascii?Q?w4R9Ki+RvkomVbRQ22b6vzAlcX3axoP+rzxEgIUaSWd5EamJ8uENBk5E0tAF?=
 =?us-ascii?Q?zhaZ8hKvc5bIsLf7A0JVicR1a6zJxjQI7oD9rl6kC5my2RI86CW/6TEDB1WD?=
 =?us-ascii?Q?lwhzj4tcegBMQCn6mZC9InYP34h1679enj7wbCkrNaCvoO5oB4U3kqtxcPES?=
 =?us-ascii?Q?TZ5L7UWAVbSEKm+sTzSK12+k5yyj3NUydGe3KURx8PTipZsadAMBCUnY/bSI?=
 =?us-ascii?Q?+ViqwY0Qthpn0N3WHtuR4BZr1jpAKDNRCDSvOXJcDS+a4bgAaKdrc6UFGmAP?=
 =?us-ascii?Q?OqZfFJ05td0ZMeQes+YHepGvjV+yilGymLl0nlJydgk3TTK60t1fQPspaPzf?=
 =?us-ascii?Q?tA5bOGxFCuzK+b/e+C4mGNDhby2EnZG+jmNvBU0otGfbn/c1mb4WtkKJyQ4C?=
 =?us-ascii?Q?EJebZwX0uZFGCDsfacAHE1vuyU+wMxQCgNUMDzkiJxOnOHqfuxvaCXxthTbi?=
 =?us-ascii?Q?6DJyBuClxwOvO95SZgqMm2gJSZV7qv8yEOG/O3RiX39CH5dRwVkKRvJsOC6j?=
 =?us-ascii?Q?Sk+maFHsBDydutsjOKgH+bviqHW7zftSA2EhpcqaqaNpUurkX0RiqGb6q0lI?=
 =?us-ascii?Q?KXAUNhmm+vqR7A80VPDTGqUDD5kjSpf8rTESqOmDaUf572tCp7gXknhGcuzs?=
 =?us-ascii?Q?zI6f7+HoU0AKYpyyXm/z7K8bNv+7FJFeXnMnkYQcPSUh9RY/fh9tnyfyZPYd?=
 =?us-ascii?Q?TIsBltkTpOUuE+G+mQs9qLHcPqHwf75hEaJqdkEXEwEdMtYLti6iLiSL7gGh?=
 =?us-ascii?Q?HlrK8jstHffhYkwHuz90slAtAcsjeIAt3WuKDDM6vK8GcpVkxwezEblBxy+Q?=
 =?us-ascii?Q?vxZLGfzNowF53XEadpezRGDcY5QDsdOM7AHAtaYLACJsc6uvDwyXRSmJNo3R?=
 =?us-ascii?Q?aQhcuvs0gO0w6+lSYN5/Tzsvn5T/E8X/megoENW+L8JWRQIyD95PbCImoK/v?=
 =?us-ascii?Q?6ZvIAGfcI0MSfBmif2A=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a4035ea-b749-45fd-58d0-08db71fdd908
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 02:18:48.4475
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QVPG8r6TfWxtyOsYHrwf0IKVoa1SIJAkYhm59on8wqnl0otZRqyeITmIcChIaOudFHD04O2l/p24fzSeooEHJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8963
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_191854_186979_D558C963 
X-CRM114-Status: GOOD (  18.17  )
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

++ Vinod Koul

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Tuesday, June 20, 2023 11:29 PM
> To: Xu Yang <xu.yang_2@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; linux-usb@vger.kernel.org; s.hauer@pengutronix.de; Jun Li <jun.li@nxp.com>;
> conor+dt@kernel.org; kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>; shawnguo@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; devicetree@vger.kernel.org; festevam@gmail.com; robh+dt@kernel.org; linux-
> phy@lists.infradead.org
> Subject: [EXT] Re: [PATCH v4 2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and imx8qm compatible
> 
> Caution: This is an external email. Please take care when clicking links or opening attachments. When in doubt, report the
> message using the 'Report this email' button
> 
> 
> On Tue, 13 Jun 2023 16:34:45 +0800, Xu Yang wrote:
> > The imx8ulp and imx8qm are compatible with imx8dxl. This will add such
> > compatible.
> >
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >
> > ---
> > Changes in v2:
> >  - no change
> > Changes in v3:
> >  - no change
> > Changes in v4:
> >  - no change
> > ---
> >  Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> 
> Acked-by: Rob Herring <robh@kernel.org>

Hi Vinod,

Another one is here.

Thanks,
Xu Yang




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
