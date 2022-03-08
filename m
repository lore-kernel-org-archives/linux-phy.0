Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB4FC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Mar 2022 14:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBpBwXSKdvSN8uCX1Z1JlTfLhlU1j9SWAEbCKSJMOFc=; b=B5l3CNnWgz8XyQ
	5EMol7ziaNAVfx925f20K3j3xHFpf0XFAm9rbp1E/MVvue5JhK+ECVnUtT8+kz3rKeLEcBj/Af6WZ
	y6CeqhlNil545K+YCa2KAZCim0tvtcmg1ZnsWFt7ae1s5eCNzoaJgGAfuuLC74JeSODU7BbBahuvF
	B2mGZlKtjfDRXv5ByaCZKmJsCm3h8w0LgkXqh4uVFWgo7ezg1EeIzn9CvokaadYPeS26ionmK4ikD
	lP1pO4juythC691rQPph6gLJq53qMuOSy/gQqFq2+FWUnHqMFB8Cb2yMf42y8qUIvLA8SKNAm3wnk
	Ug2n9z5nvpDaO64XOp6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRayc-004niM-3i; Tue, 08 Mar 2022 14:38:14 +0000
Received: from mail-he1eur01on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::62a]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRayI-004nbK-Vi; Tue, 08 Mar 2022 14:37:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9LkwuvVltMLAS6JtVicitWzUtHyJX9gLM5NkIBKnGqpmS9cgoQB6FRaZvaBoy1QVxRgkL3otO6SOQ0cwf9tft0BQt97czSdnfjh1nNW7QAR04P01PklojQbL6+eInr8gGy2dz3LiXfH+NlqL3FeP+ej3q/9D4YEFcplkF91tOPpLVRR6Ddk0SqrUTqtMmgzhh+xmbZo9xzBsHZ7napYZWzOIcmzSd/+ZakXyK/iByCMMIR1VNq3b8JVRED8VCu1sOIo0PMKhEbzST3/WuHTrx5oOp/ssJvN/sCHjqb7EaVXHYAbwICc18w2gyVB39iHx8aag3YrytmYIs3DonpROA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6N7QV2Iy5S4oVXkugQ0gWNqn3buGD0PSB3m3l0TRsI=;
 b=Ct3KhTVPoPnw2rL10jjwM0Jvz6b7yDNn7ZawN34ZdwbH7FUCRaopmjq6ganao6spBMMBJ5zpY1I/TS6ZgGoPIjERcXWmXnSitKyTZ8LOfNfGQ7c8JZPRTaDikhQJ7ssxHj/VEKj689GKBmziI8jMGFs8lT4+KF/EAIPxfpDgThO+FPV1mUCpJ2aqDwh5nP0FaVH/QVkFhJNoAf9jA7Jp6B1/X0QwIqA2hd9PjvlH5ZhjhWtlNbGXkkdDNvk27nU9OkLP/K88kYSXD/vzZMKtD6EwJm6w9N3P0T3vdfZ7wcPxmpFN25HRQWPbPbVmkxSUDri9uCOtUbXd7MZFhCUeZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K6N7QV2Iy5S4oVXkugQ0gWNqn3buGD0PSB3m3l0TRsI=;
 b=nrn1G+TxXYylqrl2b2OqNLS3bgjPPiiJRhaGb+XxqODRdlRPHD796+Gfwe8JmEUc0iLRTh/NlGtSpP4ohcgFBXkeoCJ5ROmV+B5FZgN/5ssoF3qv9P4kkykx4pLplRJugEg6EH4mKAWePzPNSMzzGVKtvF9kEoCFP10rfXiGeIg=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by DU2PR04MB8808.eurprd04.prod.outlook.com (2603:10a6:10:2e3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Tue, 8 Mar
 2022 14:37:47 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::ac0c:d5d:aaa9:36]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::ac0c:d5d:aaa9:36%5]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 14:37:47 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Colin Foster <colin.foster@in-advantage.com>
CC: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki"
 <rafael.j.wysocki@intel.com>, Marc Zyngier <maz@kernel.org>, Hector Martin
 <marcan@marcan.st>, Angela Czubak <acz@semihalf.com>, Steen Hegelund
 <Steen.Hegelund@microchip.com>, Lars Povlsen <lars.povlsen@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Russell King <linux@armlinux.org.uk>, 
 Heiner Kallweit <hkallweit1@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Florian Fainelli
 <f.fainelli@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>, Andrew
 Lunn <andrew@lunn.ch>, "UNGLinuxDriver@microchip.com"
 <UNGLinuxDriver@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Claudiu Manoil <claudiu.manoil@nxp.com>, Lee
 Jones <lee.jones@linaro.org>, "katie.morris@in-advantage.com"
 <katie.morris@in-advantage.com>
Subject: Re: [RFC v7 net-next 10/13] mfd: ocelot: add support for the vsc7512
 chip via spi
Thread-Topic: [RFC v7 net-next 10/13] mfd: ocelot: add support for the vsc7512
 chip via spi
Thread-Index: AQHYMcjTRgIrF6Xyik+JLHWvUw480qy1kJUA
Date: Tue, 8 Mar 2022 14:37:47 +0000
Message-ID: <20220308143746.w5ccuk3mvzdzno2x@skbuf>
References: <20220307021208.2406741-1-colin.foster@in-advantage.com>
 <20220307021208.2406741-11-colin.foster@in-advantage.com>
In-Reply-To: <20220307021208.2406741-11-colin.foster@in-advantage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0601c4b9-e8cd-4729-2299-08da011136f0
x-ms-traffictypediagnostic: DU2PR04MB8808:EE_
x-microsoft-antispam-prvs: <DU2PR04MB8808AEC7BC1C0D4EA2D582DEE0099@DU2PR04MB8808.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yWJDzc6Bj0e2QtnIU49/jvlhNw1/EqaLjxeoYIOklbRtUJlako4xBuAHIAF92VeYuUozTjjcZmF0rvsjO/UayfFj6wNxWfZLVxaErNcq7wqSQbjNbUct8Lsb4k6dqBF6kEA5zdvAKvy2eAaLelRWOtaXEndDkaCw07zNTGPPs+ZgNHaf/LQavXe0fDm6RGOxq2JfFH0dFz1cywis+ujhS0QiCZ9sboGpKrlPEKEC9pAgfvXbEIOsHNaAn/f9klCgErQfsfxaJbSWrBLGpfI0blCsn5OCvAjzK7zBaQoXgwBLDFA4XmJzawZk90TP47q5thuMTGzmT1ClUpux0Y9RG/E/KeMox23nxPsnCHFya76bDqkS27zVURW4NYrpuv7Hw/O/ArTkrpnjLTXAePVwAlj8btD2XmujR/0Z5WPFzSkLh5HmvKDlEdsa5dwciHfmBPJG1QhuO6vq18tHXTbx/upoQKP8TCvaTJdxN9KhwAiW0QrgO78LeC7H4PIVGW6tORsl90EadtuOIwqsPurts210TgvVdz+8d1E5i6LvToSU6P2TpEoBBu8Yanxkdth92lbcTNfIZhP+ywWtSqW1NtKedcezHt0edpnFQRylGNK+1l/Ptqn2wl59zl+VvIerun3+ho36D3uwMFgmdpZvoHgCsysHtky6ppfhlQcalNfCgorj8+MxveESoCaHpdUnDB9HKSv6XtBPjIKANNDKzw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(91956017)(2906002)(6506007)(6512007)(9686003)(66476007)(66446008)(64756008)(66556008)(76116006)(66946007)(6486002)(8676002)(4326008)(33716001)(508600001)(122000001)(71200400001)(38100700002)(86362001)(38070700005)(316002)(6916009)(54906003)(83380400001)(1076003)(186003)(44832011)(7416002)(5660300002)(26005)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OoxMPvJmXYhX7PmS06wCEt3wjcE+3M0NmYs4khVlKU2G5rhOPm28oShssNjz?=
 =?us-ascii?Q?pnZl/bTNJ4/pZmXAX9daIEQVSNpbwTg3T8zbDK1oybi1jABNKvJ2NpejmceT?=
 =?us-ascii?Q?GjHHSaFH74xCKeCALxhR2v2Koxgz+NEDcQr1HYovKOJdZ3Z2AA4Z+VYDqvpM?=
 =?us-ascii?Q?yxqXzXgPzYy1ANQw7NycsMTJZAJyYDDklwO4DdHGJBr+8ES5XMLzM1twiA2n?=
 =?us-ascii?Q?HIdcpzbVT1cTnyvkhKJekZUbAlh9Nuz/c+bEpZueLXKXxCuwd2VTFEP6N8YB?=
 =?us-ascii?Q?1yUkYtDBbBKsBoyHRaltmWXT8rL5s/N36VK8YlaObdZG/B418G87lM4Utncg?=
 =?us-ascii?Q?njYYupp8lOukeMXWYmCBODpIoZ+Moffd8+OjG3nwG/yr5tSGldXNgmjWrsQS?=
 =?us-ascii?Q?K75L2ioqVLlVOy28hupT4tHqLo40QMlNTQG2i+Dnd0y1xKHx0+YBop3cORFp?=
 =?us-ascii?Q?TWd9PDTezS4O9QFJon3JT6nYdc06umNLrqU3xltxfqPZafdKwhh6z/wAvvQK?=
 =?us-ascii?Q?6ObqMv9HPJ+vHgB9OG/Vz6uD3XMXObcSSNvvvzlXPnplrmmVuKqP5k6FOPG0?=
 =?us-ascii?Q?Z2zaELv1y3QdZUPU2HdcAst3zcPfRF7a/Z1Kq2KrvJDWlB1TMGXKHBLNc37c?=
 =?us-ascii?Q?ozin9CVVqk2H8+JcYBTz+hwvxGhszhCmYFv4RWcnQ/Q1s4z+S2vz2MeoTQmZ?=
 =?us-ascii?Q?Z8K0Y1ZIlmwjWpB8jp3j9YdVNe90gf1chfTkCE0SdBCE0x/E4AC/LQ4dEPSR?=
 =?us-ascii?Q?M1/WyPOehb8IzAlwa9XFYDxL5DoxEd1+LnsBlraxivNUEp1tYuQnAyKnUxFt?=
 =?us-ascii?Q?Q05saq9XlD9JV2qdJZvZsj2STHPWKtw0ithiMek5j444kOltOUBUMnxRLcTv?=
 =?us-ascii?Q?uXZS1S6GSpSxkmWtAcWRUAdcUMuwvjQy1QrZ06ZiwDeB2YWgYpwt73lsY8os?=
 =?us-ascii?Q?9adyL0vk2JKlfaSpw/7wISz0xizllomH7VuA+/ZKvaCIXpWwjyccZqWmRHkY?=
 =?us-ascii?Q?LLmi+RTAkICTuT82GRMwHRnSM7GOZGHxjeo4ClCdbiUWYpk8P0ZI52NfQkXC?=
 =?us-ascii?Q?2RX6h3yjZ4Hj2xZRNWVzR2YsRB9C7ExCc+sE7++GhtLKJcDFkiMEeo8ijSAj?=
 =?us-ascii?Q?YqLDR4shhyJQLGW7iZOLbhBkJnA/j1QFNqHo/44X3a8zQ9ylV2RKPR7GQVOI?=
 =?us-ascii?Q?sQaDHT9mbtS8vyuEgpN+zCSeeNUrZDtX++XgfUkB7t2p8YWPCb49nIehrYik?=
 =?us-ascii?Q?/SgkF/V17V3INFQub8kfZI9Kj5ORc6TFKSRthRr62IDDhTtOqHmD0o5KqLTE?=
 =?us-ascii?Q?Vsdlv7ZiPouAeImxZFwhSmPUlSESXYE98YemJLAi/YmpFBncfsU21UlShaj6?=
 =?us-ascii?Q?WWyuNVaeUyD70utA5YsPuBWIKxVz0EW/8ryzo9Pn1HfDr3c8T1Mn4W7yUaSc?=
 =?us-ascii?Q?xN0qzW58ubWJDBVNq9LGYfwX1Al9PwiPKd2g3QCryxzlZMmZyBBlMonRXyq1?=
 =?us-ascii?Q?izbAlbEMNSg9qHrYsQBavNPAtxHlWtdIBL9YjmmfYm0ps7Co4dLRO2uKbqS8?=
 =?us-ascii?Q?BWzXHvbwnc7/l1P4MTmbslYl6cssfFeh71IZePfzfzb2pXC2UIuNowOz8kBL?=
 =?us-ascii?Q?cMJXDV00oG/nS7uJm4aFEqY=3D?=
Content-ID: <87CFB6BD52C3E54BABAD961CA6C0D3EE@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0601c4b9-e8cd-4729-2299-08da011136f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 14:37:47.3500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ewe8pgSjU0iZBw/jrRI63ct3Vwe14ln3sByaxHZafQI3/c9h/kSpSZBicAJDutdgomliWOCc7Vp0+tpx1JJuGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_063755_113152_0B7B6B27 
X-CRM114-Status: GOOD (  21.31  )
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

On Sun, Mar 06, 2022 at 06:12:05PM -0800, Colin Foster wrote:
> The VSC7512 is a networking chip that contains several peripherals. Many of
> these peripherals are currently supported by the VSC7513 and VSC7514 chips,
> but those run on an internal CPU. The VSC7512 lacks this CPU, and must be
> controlled externally.
> 
> Utilize the existing drivers by referencing the chip as an MFD. Add support
> for the two MDIO buses, the internal phys, pinctrl, serial GPIO, and HSIO.
> 
> Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
> ---
> +#define VSC7512_MIIM0_RES_START	0x7107009c
> +#define VSC7512_MIIM0_RES_SIZE	0x24
> +
> +#define VSC7512_MIIM1_RES_START	0x710700c0
> +#define VSC7512_MIIM1_RES_SIZE	0x24
> +
> +#define VSC7512_PHY_RES_START	0x710700f0
> +#define VSC7512_PHY_RES_SIZE	0x4
> +
> +#define VSC7512_HSIO_RES_START	0x710d0000
> +#define VSC7512_HSIO_RES_SIZE	0x10000
> +
> +#define VSC7512_GPIO_RES_START	0x71070034
> +#define VSC7512_GPIO_RES_SIZE	0x6c
> +
> +#define VSC7512_SIO_RES_START	0x710700f8
> +#define VSC7512_SIO_RES_SIZE	0x100
> +
> +static const struct resource vsc7512_gcb_resource =
> +	DEFINE_RES_REG_NAMED(VSC7512_GCB_RES_START, VSC7512_GCB_RES_SIZE,
> +			     "devcpu_gcb_chip_regs");
> +static const struct resource vsc7512_miim0_resources[] = {
> +	DEFINE_RES_REG_NAMED(VSC7512_MIIM0_RES_START, VSC7512_MIIM0_RES_SIZE,
> +			     "gcb_miim0"),
> +	DEFINE_RES_REG_NAMED(VSC7512_PHY_RES_START, VSC7512_PHY_RES_SIZE,
> +			     "gcb_phy"),
> +};
> +
> +static const struct resource vsc7512_miim1_resources[] = {
> +	DEFINE_RES_REG_NAMED(VSC7512_MIIM1_RES_START, VSC7512_MIIM1_RES_SIZE,
> +			     "gcb_miim1"),
> +};
> +
> +static const struct resource vsc7512_hsio_resources[] = {
> +	DEFINE_RES_REG_NAMED(VSC7512_HSIO_RES_START, VSC7512_HSIO_RES_SIZE,
> +			     "hsio"),
> +};
> +
> +static const struct resource vsc7512_pinctrl_resources[] = {
> +	DEFINE_RES_REG_NAMED(VSC7512_GPIO_RES_START, VSC7512_GPIO_RES_SIZE,
> +			     "gcb_gpio"),
> +};
> +
> +static const struct resource vsc7512_sgpio_resources[] = {
> +	DEFINE_RES_REG_NAMED(VSC7512_SIO_RES_START, VSC7512_SIO_RES_SIZE,
> +			     "gcb_sio"),
> +};
> +
> +static const struct mfd_cell vsc7512_devs[] = {
> +	{
> +		.name = "ocelot-pinctrl",
> +		.of_compatible = "mscc,ocelot-pinctrl",
> +		.num_resources = ARRAY_SIZE(vsc7512_pinctrl_resources),
> +		.resources = vsc7512_pinctrl_resources,
> +	}, {
> +		.name = "ocelot-sgpio",
> +		.of_compatible = "mscc,ocelot-sgpio",
> +		.num_resources = ARRAY_SIZE(vsc7512_sgpio_resources),
> +		.resources = vsc7512_sgpio_resources,
> +	}, {
> +		.name = "ocelot-miim0",
> +		.of_compatible = "mscc,ocelot-miim",
> +		.num_resources = ARRAY_SIZE(vsc7512_miim0_resources),
> +		.resources = vsc7512_miim0_resources,
> +	}, {
> +		.name = "ocelot-miim1",
> +		.of_compatible = "mscc,ocelot-miim",
> +		.num_resources = ARRAY_SIZE(vsc7512_miim1_resources),
> +		.resources = vsc7512_miim1_resources,

I'm looking at mfd_match_of_node_to_dev() and I don't really understand
how the first MDIO bus matches the first mfd_cell's resources, and the
second MDIO bus the second mfd_cell? By order of definition?

> +	}, {
> +		.name = "ocelot-serdes",
> +		.of_compatible = "mscc,vsc7514-serdes",
> +		.num_resources = ARRAY_SIZE(vsc7512_hsio_resources),
> +		.resources = vsc7512_hsio_resources,
> +	},
> +};
> +
> +int ocelot_core_init(struct ocelot_core *core)
> +{
> +	struct device *dev = core->dev;
> +	int ret;
> +
> +	dev_set_drvdata(dev, core);
> +
> +	core->gcb_regmap = ocelot_devm_regmap_init(core, dev,
> +						   &vsc7512_gcb_resource);
> +	if (IS_ERR(core->gcb_regmap))
> +		return -ENOMEM;
> +
> +	ret = ocelot_reset(core);
> +	if (ret) {
> +		dev_err(dev, "Failed to reset device: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * A chip reset will clear the SPI configuration, so it needs to be done
> +	 * again before we can access any registers
> +	 */
> +	ret = ocelot_spi_initialize(core);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize SPI interface: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_AUTO, vsc7512_devs,
> +				   ARRAY_SIZE(vsc7512_devs), NULL, 0, NULL);
> +	if (ret) {
> +		dev_err(dev, "Failed to add sub-devices: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(ocelot_core_init);
> -- 
> 2.25.1
>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
