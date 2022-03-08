Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB49C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Mar 2022 14:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myJB1m6LMGqkGek4s1XKzeTan7jLz0yqPXyQBBunRtA=; b=yASYSPUay1+iQc
	O9gmRMJBtK0klsFKAhkhxkfvN3M4hdB7cIOx1LvGGl9G+n+l2knyB9u9WJdJOQB+ZpyXXC3WjaQ3p
	9lV/x28Crmta1gOdiCytmVorK1nnAh2WKDQT/1yez5tM6DxlYmhmoxPnrE2ElPODTcFN9fXhLfudx
	NglWFnAGNIdEB58mQfQqZ4hTWGZIOpdsUp71LUqUz/zXIbpXmFTlccDc72xjPYrw7kY7CaY5M4Bp4
	Ik5VLa9beVy50qntojQcthc3f65tBU6aNwuZuG612f4ySTS+BqgTSr0U9O8Obb1m/xal0MWugxE6E
	Wa6ozmnBoqpNfAsMBAxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRacG-004hE2-CE; Tue, 08 Mar 2022 14:15:08 +0000
Received: from mail-vi1eur04on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::619]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRabt-004h3s-6d; Tue, 08 Mar 2022 14:14:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkKtBYl2aOB9cKwasIMsW3/HxFWHcJAhCAAm52NH/IjPMYVEXkXq7SIbIS6APIkA7E03M4PJF1g6ZzRZB77ueHczHvXLYKw72hJwCwT1HB5rxISftinYKuQh2F9qld0m2g0oCubZ/jz/PToi7uJwqDLe/89r/59MIzVjavMGwJe2vywmE2V5AytCeR2mZk5uv47z2AeG3/VDYJMEmFtkdAU7qk+qs/soQka0wVfN6lMoKhwQFrDkS40h2oBlaVR5oXwkuNeJk3i2mljOtnSroOldA+m33j3Rc1AbRZsQGMQy/F2CZznr9YfnVFlsrjzPxNCQWQrQf4w118mZlIkNyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=se6OFYaLJcRFExr1fONGsB6U/JIdomhAn5GydNNR/Vo=;
 b=SFDMkI4KRro0q7dBUMUzHax7xIwEP2kdr6wGkmz33RI43wVpzY4xyX+x3oNmAlLbrlKlXXnu+d8CLn9Z2oDXzZS47QLNe+SFMxvDV1AXkyk5NaFTO7iGMa7YDWGhobRjx5zZ7rnJ7yA6rxv9oVRK+LeY63zwBeZVK5d2ajyFGA0vEOJ0tyjTb+RBnvX+2Mug46+Gg1jHU637frkm4l9lhWVzQa+ccmktsqQoaWToXNCbi7qmkOFdoWbTWizMmOgLkPGxl1NQSXwqoEFoZHepC+GNEa78FR7nlLFFdqLUS1GQzOa1BiIXNtp/QZ6QWevhMJzgfW9eF1gZOhOdxjzthQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=se6OFYaLJcRFExr1fONGsB6U/JIdomhAn5GydNNR/Vo=;
 b=RCVle6DW42OiuvFYiAtctVD8KeRK483Dc2USaRDnjV1AMhFTIOzwydFnvtI5s5pqmJnSd/9zUwXR6dnGk0zFJu5e1tiholFiNi7jAzoDNm2z8i+rUs4OLBI15zti7AngKvx7mrAZUoxBYEFnNIpdTrv2FCacvgFXSIB+Vyn/IUc=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM0PR0402MB3684.eurprd04.prod.outlook.com (2603:10a6:208:8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.17; Tue, 8 Mar
 2022 14:14:41 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::ac0c:d5d:aaa9:36]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::ac0c:d5d:aaa9:36%5]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 14:14:41 +0000
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
Subject: Re: [RFC v7 net-next 13/13] net: dsa: ocelot: add external ocelot
 switch control
Thread-Topic: [RFC v7 net-next 13/13] net: dsa: ocelot: add external ocelot
 switch control
Thread-Index: AQHYMcjV+C/Y5FAWfEOOeJZ/sjfXGqy1iiEA
Date: Tue, 8 Mar 2022 14:14:40 +0000
Message-ID: <20220308141440.ggghkmkteey74cwo@skbuf>
References: <20220307021208.2406741-1-colin.foster@in-advantage.com>
 <20220307021208.2406741-14-colin.foster@in-advantage.com>
In-Reply-To: <20220307021208.2406741-14-colin.foster@in-advantage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffba86a9-4f56-40fe-2ba5-08da010dfca7
x-ms-traffictypediagnostic: AM0PR0402MB3684:EE_
x-microsoft-antispam-prvs: <AM0PR0402MB368407324A4124B0CFE3A34DE0099@AM0PR0402MB3684.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NTBxDm07CcHlmo4j1Kvv1nQFLM2ClDDfAh5pVEHMHn6RUiWbR7F/DBvumVysGkUbn+93t5DABie7eEpKRbypHkwJl/DkPL1rbVpDCxQ3t2hmv6ruG2fi/gEMr+EItMcUZmAhJiDC0Hr5K2LXofOY+W7gGOq+wxlAeBg8nHAqPKy9OgOUblvxuSzBTYWvBjjyU8ZKQ6OuxOlePgtPUxWfPv6fegSIEQZ9fllHh3DLvW4876sPL4OpPuntkbp/Qk/9hBXlypyvv1wjC7LkSDCGx1pJZ6QcVojVO0swuPr5WJxXnPecuHkiBHUaPBNt9BWQZuHspbQinPRO2VSIZWZ5WAOg2Y9FzeVwPwGM1BmXScmstdXqjOexJkklPbj2rK/KzgUhFl5GipCQmpbbJvpsuVPCPWw2j2EUjkv9CsLagqjM5qnXq9ZUdi1iFef/AObpZNNQo6ftyGsZPb71/adlwkUNwyEUcotVHH9Kj192xfjPTQUlUvkkGJHOvCmiQfKVxAtHcuCEnMDP//jayG5bnsxFVZ0h67kQrq1mU9cXK5gPtGHNkL0bwx6WRS+I1BK5xW3ZYDD7MLZ6sa0PmOjOeVkbZZXbBi23vg9WxTwnF27mbxNPOfPIQ9Z5w3RGh9wWe2w9WfO2MLnMsGE7gNgwqWmbkm5g7LCswA4ORZlwTefUBxazu1R0L/rmgzxQKP9FE+gqAYaWX8HYbozKbVjG6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(186003)(8676002)(54906003)(64756008)(66946007)(26005)(122000001)(76116006)(33716001)(1076003)(91956017)(7416002)(8936002)(30864003)(6486002)(316002)(6506007)(6512007)(66556008)(66476007)(66446008)(38100700002)(508600001)(38070700005)(44832011)(6916009)(86362001)(2906002)(5660300002)(71200400001)(83380400001)(4326008)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5XxQ8W8Lu5n61h+nnN0MQ+18eTY7YicaVn1+MkhrsVGQEgChHPgX3+3nDFYH?=
 =?us-ascii?Q?sM7V46xvJLU6I5gqRpIF7YzlTHADCaoXRY6U2f9t03OdhXcs++31ydHyFvjW?=
 =?us-ascii?Q?4B2SzBUpS4sTXY8vTYvSMZzY0CwOIMV3lKYcpNyJI6+kLrMW0S7M8WX3DcKb?=
 =?us-ascii?Q?aeCex/hPaepD3Ixq+B0cNUFoSr4y6xZmw5t6Ltxg6amnnKWYRHm5uxpMLGJn?=
 =?us-ascii?Q?fXyXFJ3rc7bfqXHuCjE9OZxcXYtIN4fgKuAacuR9qM54UfaYop+ggCF7vfVK?=
 =?us-ascii?Q?bSk8UXpt5vmz0BkPyFMKx9mBVplb+eT6lkhsBpjLbljb7iKFMiR4+f0MTlcB?=
 =?us-ascii?Q?M6flQovNfpRkg760okDwyZ2zj4Af0nAsszEEYdLP+VaSl/r4jIkWiFeW5u25?=
 =?us-ascii?Q?kgaQloq9YQQWAM+sS+1keI+uizEehdGw3o6orZVAYIRzgsL14fg8TvzWB4CY?=
 =?us-ascii?Q?b9Ck5GrGvSiW6YaDs+u7oA+hr8flJ05ASHE+7F/eL1Uw9yVfdQIO/rGHM6+E?=
 =?us-ascii?Q?NIJMG0mL7M+gOfsnE5s3XCxmQD3qn22/a0tM8IJ0ZqOlvwU29h3kNbsp2RUw?=
 =?us-ascii?Q?uW7D+c1jNdFeTNC329c2ETSBDbab6ycYPiPPTQERa4Fxrh77KE/fY/jgARM0?=
 =?us-ascii?Q?/ydFGR1ikTYT1a9FQ0uygFbehxV2c96K14WxJxEbl71dIaykRIJTSACKU9Je?=
 =?us-ascii?Q?sayfVfP3gxLtSneGLKhPLrOHKIvkVXEZwe+GysU4XeojIyOzb6NJGl6j5Fn5?=
 =?us-ascii?Q?HS7iwHKcrwwr4NXIOT3dWG0pq9ImIUHkgjBNElYt67HfCjSBBPmo155qL2RE?=
 =?us-ascii?Q?fSLLB/SWsAkmlQ1HM3J/IfuAYTopHrOtdqj65J5FUNcXBGj7hBjHhqlzou/I?=
 =?us-ascii?Q?piGQZHqNqnUFavrzYM1RZnGASOFFridFHnYLASIDDoWvkbsZpOXa97HDcZIA?=
 =?us-ascii?Q?UtRF9vGw0N3XnYilDTD+bSsgz/qisSUU55AWI5JKHas0FGVwOs8pOODlYrgP?=
 =?us-ascii?Q?fh1vB47CXSkUG/oCbqoXQfaJ7e1cB7n/3XzMSqVhkJWMhijWeRorokLL4dvr?=
 =?us-ascii?Q?DsTQ4BSFJOaASQvWVN5o6JKM2v1hjnZM8E5fw6daYh5ExGdTVcjf4jPcrC8S?=
 =?us-ascii?Q?XtYt4OTK9obiVDSgsAVzq97gvlvGsL/RpMNDMd/6qYELyf10LzeZ32MPHJzr?=
 =?us-ascii?Q?WdljJ/ZRHV3NLiq4S87i+FNaLUXFfv7o6NNjGwFc99P49pQTS468EJNkqI8U?=
 =?us-ascii?Q?yHE+rlPVT9V3lKm9TLSkrWSNX54anoi57zfWiBHb7sTA4J4O/EVAku2Fh4R5?=
 =?us-ascii?Q?6C0Ys8XXWCIwFUrA88AMbnH/pmJ04+suHIBHQlpPuzTIy6tpJrF5aC/sbYGm?=
 =?us-ascii?Q?2EyahsjSixN9cQGBfPqyf51cTqu+OfP9oycsqnDYPMHNneImksE2o8FI0dNV?=
 =?us-ascii?Q?aKoPgUX14JU/3p+9K1FCHY+9nbIdgrdv48AGUOhTKVPeB5mO84vSREsKCraU?=
 =?us-ascii?Q?tmK9t0X3eWhTGBLI+/6gXDazk790C4eapyVrFvONYP8pPI2GtFF/Y5qRc8uY?=
 =?us-ascii?Q?OyKPyiA85O8BLlWzogFZANMqEdjfYjk/iMHq//xmQ/6bzQY0Et7Lz9176Y5k?=
 =?us-ascii?Q?1hREUuawjB2T1yqkUrR6g/Y=3D?=
Content-ID: <0D2F60564359A340AD263D7CAA61858F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffba86a9-4f56-40fe-2ba5-08da010dfca7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 14:14:41.0269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Djjbz642mEM9uFANYYvxUcXqiXkL9xA8INIknRylLqxx31cfNytrm8FV0yH7F28OmlQ5qHaWIPMUvRKAAAqCCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3684
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_061445_439585_8CF61277 
X-CRM114-Status: GOOD (  10.42  )
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

On Sun, Mar 06, 2022 at 06:12:08PM -0800, Colin Foster wrote:
> +static const struct reg_field vsc7512_regfields[REGFIELD_MAX] = {
> +	[ANA_ADVLEARN_VLAN_CHK] = REG_FIELD(ANA_ADVLEARN, 11, 11),
> +	[ANA_ADVLEARN_LEARN_MIRROR] = REG_FIELD(ANA_ADVLEARN, 0, 10),
> +	[ANA_ANEVENTS_MSTI_DROP] = REG_FIELD(ANA_ANEVENTS, 27, 27),
> +	[ANA_ANEVENTS_ACLKILL] = REG_FIELD(ANA_ANEVENTS, 26, 26),
> +	[ANA_ANEVENTS_ACLUSED] = REG_FIELD(ANA_ANEVENTS, 25, 25),
> +	[ANA_ANEVENTS_AUTOAGE] = REG_FIELD(ANA_ANEVENTS, 24, 24),
> +	[ANA_ANEVENTS_VS2TTL1] = REG_FIELD(ANA_ANEVENTS, 23, 23),
> +	[ANA_ANEVENTS_STORM_DROP] = REG_FIELD(ANA_ANEVENTS, 22, 22),
> +	[ANA_ANEVENTS_LEARN_DROP] = REG_FIELD(ANA_ANEVENTS, 21, 21),
> +	[ANA_ANEVENTS_AGED_ENTRY] = REG_FIELD(ANA_ANEVENTS, 20, 20),
> +	[ANA_ANEVENTS_CPU_LEARN_FAILED] = REG_FIELD(ANA_ANEVENTS, 19, 19),
> +	[ANA_ANEVENTS_AUTO_LEARN_FAILED] = REG_FIELD(ANA_ANEVENTS, 18, 18),
> +	[ANA_ANEVENTS_LEARN_REMOVE] = REG_FIELD(ANA_ANEVENTS, 17, 17),
> +	[ANA_ANEVENTS_AUTO_LEARNED] = REG_FIELD(ANA_ANEVENTS, 16, 16),
> +	[ANA_ANEVENTS_AUTO_MOVED] = REG_FIELD(ANA_ANEVENTS, 15, 15),
> +	[ANA_ANEVENTS_DROPPED] = REG_FIELD(ANA_ANEVENTS, 14, 14),
> +	[ANA_ANEVENTS_CLASSIFIED_DROP] = REG_FIELD(ANA_ANEVENTS, 13, 13),
> +	[ANA_ANEVENTS_CLASSIFIED_COPY] = REG_FIELD(ANA_ANEVENTS, 12, 12),
> +	[ANA_ANEVENTS_VLAN_DISCARD] = REG_FIELD(ANA_ANEVENTS, 11, 11),
> +	[ANA_ANEVENTS_FWD_DISCARD] = REG_FIELD(ANA_ANEVENTS, 10, 10),
> +	[ANA_ANEVENTS_MULTICAST_FLOOD] = REG_FIELD(ANA_ANEVENTS, 9, 9),
> +	[ANA_ANEVENTS_UNICAST_FLOOD] = REG_FIELD(ANA_ANEVENTS, 8, 8),
> +	[ANA_ANEVENTS_DEST_KNOWN] = REG_FIELD(ANA_ANEVENTS, 7, 7),
> +	[ANA_ANEVENTS_BUCKET3_MATCH] = REG_FIELD(ANA_ANEVENTS, 6, 6),
> +	[ANA_ANEVENTS_BUCKET2_MATCH] = REG_FIELD(ANA_ANEVENTS, 5, 5),
> +	[ANA_ANEVENTS_BUCKET1_MATCH] = REG_FIELD(ANA_ANEVENTS, 4, 4),
> +	[ANA_ANEVENTS_BUCKET0_MATCH] = REG_FIELD(ANA_ANEVENTS, 3, 3),
> +	[ANA_ANEVENTS_CPU_OPERATION] = REG_FIELD(ANA_ANEVENTS, 2, 2),
> +	[ANA_ANEVENTS_DMAC_LOOKUP] = REG_FIELD(ANA_ANEVENTS, 1, 1),
> +	[ANA_ANEVENTS_SMAC_LOOKUP] = REG_FIELD(ANA_ANEVENTS, 0, 0),
> +	[ANA_TABLES_MACACCESS_B_DOM] = REG_FIELD(ANA_TABLES_MACACCESS, 18, 18),
> +	[ANA_TABLES_MACTINDX_BUCKET] = REG_FIELD(ANA_TABLES_MACTINDX, 10, 11),
> +	[ANA_TABLES_MACTINDX_M_INDEX] = REG_FIELD(ANA_TABLES_MACTINDX, 0, 9),
> +	[GCB_SOFT_RST_SWC_RST] = REG_FIELD(GCB_SOFT_RST, 1, 1),

If you add GCB_SOFT_RST_SWC_RST to ocelot_regfields, can't you just use that?

> +	[QSYS_TIMED_FRAME_ENTRY_TFRM_VLD] = REG_FIELD(QSYS_TIMED_FRAME_ENTRY, 20, 20),
> +	[QSYS_TIMED_FRAME_ENTRY_TFRM_FP] = REG_FIELD(QSYS_TIMED_FRAME_ENTRY, 8, 19),
> +	[QSYS_TIMED_FRAME_ENTRY_TFRM_PORTNO] = REG_FIELD(QSYS_TIMED_FRAME_ENTRY, 4, 7),
> +	[QSYS_TIMED_FRAME_ENTRY_TFRM_TM_SEL] = REG_FIELD(QSYS_TIMED_FRAME_ENTRY, 1, 3),
> +	[QSYS_TIMED_FRAME_ENTRY_TFRM_TM_T] = REG_FIELD(QSYS_TIMED_FRAME_ENTRY, 0, 0),
> +	[SYS_RESET_CFG_CORE_ENA] = REG_FIELD(SYS_RESET_CFG, 2, 2),
> +	[SYS_RESET_CFG_MEM_ENA] = REG_FIELD(SYS_RESET_CFG, 1, 1),
> +	[SYS_RESET_CFG_MEM_INIT] = REG_FIELD(SYS_RESET_CFG, 0, 0),
> +	/* Replicated per number of ports (12), register size 4 per port */
> +	[QSYS_SWITCH_PORT_MODE_PORT_ENA] = REG_FIELD_ID(QSYS_SWITCH_PORT_MODE, 14, 14, 12, 4),
> +	[QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG] = REG_FIELD_ID(QSYS_SWITCH_PORT_MODE, 11, 13, 12, 4),
> +	[QSYS_SWITCH_PORT_MODE_YEL_RSRVD] = REG_FIELD_ID(QSYS_SWITCH_PORT_MODE, 10, 10, 12, 4),
> +	[QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE] = REG_FIELD_ID(QSYS_SWITCH_PORT_MODE, 9, 9, 12, 4),
> +	[QSYS_SWITCH_PORT_MODE_TX_PFC_ENA] = REG_FIELD_ID(QSYS_SWITCH_PORT_MODE, 1, 8, 12, 4),
> +	[QSYS_SWITCH_PORT_MODE_TX_PFC_MODE] = REG_FIELD_ID(QSYS_SWITCH_PORT_MODE, 0, 0, 12, 4),
> +	[SYS_PORT_MODE_DATA_WO_TS] = REG_FIELD_ID(SYS_PORT_MODE, 5, 6, 12, 4),
> +	[SYS_PORT_MODE_INCL_INJ_HDR] = REG_FIELD_ID(SYS_PORT_MODE, 3, 4, 12, 4),
> +	[SYS_PORT_MODE_INCL_XTR_HDR] = REG_FIELD_ID(SYS_PORT_MODE, 1, 2, 12, 4),
> +	[SYS_PORT_MODE_INCL_HDR_ERR] = REG_FIELD_ID(SYS_PORT_MODE, 0, 0, 12, 4),
> +	[SYS_PAUSE_CFG_PAUSE_START] = REG_FIELD_ID(SYS_PAUSE_CFG, 10, 18, 12, 4),
> +	[SYS_PAUSE_CFG_PAUSE_STOP] = REG_FIELD_ID(SYS_PAUSE_CFG, 1, 9, 12, 4),
> +	[SYS_PAUSE_CFG_PAUSE_ENA] = REG_FIELD_ID(SYS_PAUSE_CFG, 0, 1, 12, 4),
> +};
> +
> +static const struct ocelot_stat_layout vsc7512_stats_layout[] = {

Why not use ocelot_stats_layout?

> +	{ .offset = 0x00,	.name = "rx_octets", },
> +	{ .offset = 0x01,	.name = "rx_unicast", },
> +	{ .offset = 0x02,	.name = "rx_multicast", },
> +	{ .offset = 0x03,	.name = "rx_broadcast", },
> +	{ .offset = 0x04,	.name = "rx_shorts", },
> +	{ .offset = 0x05,	.name = "rx_fragments", },
> +	{ .offset = 0x06,	.name = "rx_jabbers", },
> +	{ .offset = 0x07,	.name = "rx_crc_align_errs", },
> +	{ .offset = 0x08,	.name = "rx_sym_errs", },
> +	{ .offset = 0x09,	.name = "rx_frames_below_65_octets", },
> +	{ .offset = 0x0A,	.name = "rx_frames_65_to_127_octets", },
> +	{ .offset = 0x0B,	.name = "rx_frames_128_to_255_octets", },
> +	{ .offset = 0x0C,	.name = "rx_frames_256_to_511_octets", },
> +	{ .offset = 0x0D,	.name = "rx_frames_512_to_1023_octets", },
> +	{ .offset = 0x0E,	.name = "rx_frames_1024_to_1526_octets", },
> +	{ .offset = 0x0F,	.name = "rx_frames_over_1526_octets", },
> +	{ .offset = 0x10,	.name = "rx_pause", },
> +	{ .offset = 0x11,	.name = "rx_control", },
> +	{ .offset = 0x12,	.name = "rx_longs", },
> +	{ .offset = 0x13,	.name = "rx_classified_drops", },
> +	{ .offset = 0x14,	.name = "rx_red_prio_0", },
> +	{ .offset = 0x15,	.name = "rx_red_prio_1", },
> +	{ .offset = 0x16,	.name = "rx_red_prio_2", },
> +	{ .offset = 0x17,	.name = "rx_red_prio_3", },
> +	{ .offset = 0x18,	.name = "rx_red_prio_4", },
> +	{ .offset = 0x19,	.name = "rx_red_prio_5", },
> +	{ .offset = 0x1A,	.name = "rx_red_prio_6", },
> +	{ .offset = 0x1B,	.name = "rx_red_prio_7", },
> +	{ .offset = 0x1C,	.name = "rx_yellow_prio_0", },
> +	{ .offset = 0x1D,	.name = "rx_yellow_prio_1", },
> +	{ .offset = 0x1E,	.name = "rx_yellow_prio_2", },
> +	{ .offset = 0x1F,	.name = "rx_yellow_prio_3", },
> +	{ .offset = 0x20,	.name = "rx_yellow_prio_4", },
> +	{ .offset = 0x21,	.name = "rx_yellow_prio_5", },
> +	{ .offset = 0x22,	.name = "rx_yellow_prio_6", },
> +	{ .offset = 0x23,	.name = "rx_yellow_prio_7", },
> +	{ .offset = 0x24,	.name = "rx_green_prio_0", },
> +	{ .offset = 0x25,	.name = "rx_green_prio_1", },
> +	{ .offset = 0x26,	.name = "rx_green_prio_2", },
> +	{ .offset = 0x27,	.name = "rx_green_prio_3", },
> +	{ .offset = 0x28,	.name = "rx_green_prio_4", },
> +	{ .offset = 0x29,	.name = "rx_green_prio_5", },
> +	{ .offset = 0x2A,	.name = "rx_green_prio_6", },
> +	{ .offset = 0x2B,	.name = "rx_green_prio_7", },
> +	{ .offset = 0x40,	.name = "tx_octets", },
> +	{ .offset = 0x41,	.name = "tx_unicast", },
> +	{ .offset = 0x42,	.name = "tx_multicast", },
> +	{ .offset = 0x43,	.name = "tx_broadcast", },
> +	{ .offset = 0x44,	.name = "tx_collision", },
> +	{ .offset = 0x45,	.name = "tx_drops", },
> +	{ .offset = 0x46,	.name = "tx_pause", },
> +	{ .offset = 0x47,	.name = "tx_frames_below_65_octets", },
> +	{ .offset = 0x48,	.name = "tx_frames_65_to_127_octets", },
> +	{ .offset = 0x49,	.name = "tx_frames_128_255_octets", },
> +	{ .offset = 0x4A,	.name = "tx_frames_256_511_octets", },
> +	{ .offset = 0x4B,	.name = "tx_frames_512_1023_octets", },
> +	{ .offset = 0x4C,	.name = "tx_frames_1024_1526_octets", },
> +	{ .offset = 0x4D,	.name = "tx_frames_over_1526_octets", },
> +	{ .offset = 0x4E,	.name = "tx_yellow_prio_0", },
> +	{ .offset = 0x4F,	.name = "tx_yellow_prio_1", },
> +	{ .offset = 0x50,	.name = "tx_yellow_prio_2", },
> +	{ .offset = 0x51,	.name = "tx_yellow_prio_3", },
> +	{ .offset = 0x52,	.name = "tx_yellow_prio_4", },
> +	{ .offset = 0x53,	.name = "tx_yellow_prio_5", },
> +	{ .offset = 0x54,	.name = "tx_yellow_prio_6", },
> +	{ .offset = 0x55,	.name = "tx_yellow_prio_7", },
> +	{ .offset = 0x56,	.name = "tx_green_prio_0", },
> +	{ .offset = 0x57,	.name = "tx_green_prio_1", },
> +	{ .offset = 0x58,	.name = "tx_green_prio_2", },
> +	{ .offset = 0x59,	.name = "tx_green_prio_3", },
> +	{ .offset = 0x5A,	.name = "tx_green_prio_4", },
> +	{ .offset = 0x5B,	.name = "tx_green_prio_5", },
> +	{ .offset = 0x5C,	.name = "tx_green_prio_6", },
> +	{ .offset = 0x5D,	.name = "tx_green_prio_7", },
> +	{ .offset = 0x5E,	.name = "tx_aged", },
> +	{ .offset = 0x80,	.name = "drop_local", },
> +	{ .offset = 0x81,	.name = "drop_tail", },
> +	{ .offset = 0x82,	.name = "drop_yellow_prio_0", },
> +	{ .offset = 0x83,	.name = "drop_yellow_prio_1", },
> +	{ .offset = 0x84,	.name = "drop_yellow_prio_2", },
> +	{ .offset = 0x85,	.name = "drop_yellow_prio_3", },
> +	{ .offset = 0x86,	.name = "drop_yellow_prio_4", },
> +	{ .offset = 0x87,	.name = "drop_yellow_prio_5", },
> +	{ .offset = 0x88,	.name = "drop_yellow_prio_6", },
> +	{ .offset = 0x89,	.name = "drop_yellow_prio_7", },
> +	{ .offset = 0x8A,	.name = "drop_green_prio_0", },
> +	{ .offset = 0x8B,	.name = "drop_green_prio_1", },
> +	{ .offset = 0x8C,	.name = "drop_green_prio_2", },
> +	{ .offset = 0x8D,	.name = "drop_green_prio_3", },
> +	{ .offset = 0x8E,	.name = "drop_green_prio_4", },
> +	{ .offset = 0x8F,	.name = "drop_green_prio_5", },
> +	{ .offset = 0x90,	.name = "drop_green_prio_6", },
> +	{ .offset = 0x91,	.name = "drop_green_prio_7", },
> +};
> +
> +static void ocelot_ext_phylink_validate(struct ocelot *ocelot, int port,
> +				     unsigned long *supported,
> +				     struct phylink_link_state *state)
> +{
> +	struct ocelot_port *ocelot_port = ocelot->ports[port];
> +
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(mask) = { 0, };
> +
> +	if (state->interface != PHY_INTERFACE_MODE_NA &&
> +	    state->interface != ocelot_port->phy_mode) {
> +		bitmap_zero(supported, __ETHTOOL_LINK_MODE_MASK_NBITS);
> +		return;
> +	}

You might want to check
git log -4 --author="Russell King" drivers/net/dsa/ocelot/
especially commit e57a15401e82 ("net: dsa: ocelot: remove interface checks").
And you can/should in fact use phylink_generic_validate, since there
aren't any special constraints that I know of.

> +
> +	phylink_set_port_modes(mask);
> +
> +	phylink_set(mask, Pause);
> +	phylink_set(mask, Autoneg);
> +	phylink_set(mask, Asym_Pause);
> +	phylink_set(mask, 10baseT_Half);
> +	phylink_set(mask, 10baseT_Full);
> +	phylink_set(mask, 100baseT_Half);
> +	phylink_set(mask, 100baseT_Full);
> +	phylink_set(mask, 1000baseT_Half);
> +	phylink_set(mask, 1000baseT_Full);
> +
> +	bitmap_and(supported, supported, mask, __ETHTOOL_LINK_MODE_MASK_NBITS);
> +	bitmap_and(state->advertising, state->advertising, mask,
> +		   __ETHTOOL_LINK_MODE_MASK_NBITS);
> +}
> +
> +static struct vcap_props vsc7512_vcap_props[] = {

Why not vsc7514_vcap_props?

> +	[VCAP_ES0] = {
> +		.action_type_width = 0,
> +		.action_table = {
> +			[ES0_ACTION_TYPE_NORMAL] = {
> +				.width = 73,
> +				.count = 1,
> +			},
> +		},
> +		.target = S0,
> +		.keys = vsc7514_vcap_es0_keys,
> +		.actions = vsc7514_vcap_es0_actions,
> +	},
> +	[VCAP_IS1] = {
> +		.action_type_width = 0,
> +		.action_table = {
> +			[IS1_ACTION_TYPE_NORMAL] = {
> +				.width = 78,
> +				.count = 4,
> +			},
> +		},
> +		.target = S1,
> +		.keys = vsc7514_vcap_is1_keys,
> +		.actions = vsc7514_vcap_is1_actions,
> +	},
> +	[VCAP_IS2] = {
> +		.action_type_width = 1,
> +		.action_table = {
> +			[IS2_ACTION_TYPE_NORMAL] = {
> +				.width = 49,
> +				.count = 2,
> +			},
> +			[IS2_ACTION_TYPE_SMAC_SIP] = {
> +				.width = 6,
> +				.count = 4,
> +			},
> +		},
> +		.target = S2,
> +		.keys = vsc7514_vcap_is2_keys,
> +		.actions = vsc7514_vcap_is2_actions,
> +	},
> +};
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
