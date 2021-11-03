Return-Path: <SRS0=WqSa=PW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3365C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  3 Nov 2021 02:08:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E7F760F56
	for <linux-phy@archiver.kernel.org>; Wed,  3 Nov 2021 02:08:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2E7F760F56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXq3Ty4DZuyHhgqye3hOSpGsz4FyI2ZnqiQ27Rk+PG0=; b=jnziPvum+aOogS
	d3AhXWOWMG6ltkqPl6v2wCRPXBnWe+0877scGD8mvsEs5rTTXUAtp5Mk6bSXp/rr8MpWdRbi5i1Lw
	ejHicmFvcC+5Ae1gmMwaQdfPMHXAawpNMDsHfevDb4Nu+/FPxdJnzucqeTLLTsUi2lo3Rb6Hishmz
	MMiTxBP3DqhA8wFg0h0H2ZAo+vyBL2J6NHnLd71vQgSYUvm/nv2/i79+d70bpCUiumY1jAC/DdImn
	G2PjURkniF+bovnV3lK1uIxsC8+Id/PZ3vLS4zJynI65qb/gNJmbXsSLjbuRG1FbSlyeQe3uUpRG8
	0eyYNpKwow32wX0V9QQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mi5h2-003qI9-Je; Wed, 03 Nov 2021 02:08:00 +0000
Received: from mail-am6eur05on2073.outbound.protection.outlook.com
 ([40.107.22.73] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mi5gz-003qHY-S9; Wed, 03 Nov 2021 02:07:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bd6RG8tth43xAMzg+q9vYtHs81/pzz+WPNGPURosgsn07Wm9VVVR4kYIGxFdKeoU2U+H+fbZqzxhGoIi5fr3/ozHyNkhW/c4mSwY0TYYjMzEIDPk8Y2N7ZI4xkA3HJpv9cknunT7WoZ8d9RRTdTpbGuSwlI96iroeFLZQNHeBjs4IXAAPJuvwIgLXR6tFRi/62EvlJLyREZCnUp6UDn4f7gg2yQiVaG2rsed107cowvGPN2kpWC2+wvPR0kl+K+jrIPXBjWn63xSeB3vgQ0EbOwFG9h/6a6bg5J7qIXVhrq6JZl1wdag7r4uwdK4L6AVnGoIBzeAASaRJ5MxhobGig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=se20+K5QC5SqXFWa+TjzV/LuQdj72ELQ/FyJcbegehU=;
 b=oO1Z0PWmoRATeVGlf26ITodFyG2x+RPNUgv3xRC8Yj/LUcDjsoTJncYFOZ+MvcLCkFvdQmdkpKA3ecpXyRJIzXiDIcQEsdz9QHGS+mnN55dDr1nXmnTGEK2sSOEY61EaqR1+Lwa5Ga+Q3BO22Hd2A6w6dpduYyByAiFNtLPik3gHeGdGjeEZ6oBRsjCEPQJX0UFHhpqxBdWaB14FhJt0JiavU4e4bmLmkJTDNUy4ivQx11k2ZxDLKbZxMA0ci8BeKDx9AO3P1XXAg5o1bB75SSqEa3yoQLmpItCE5lJJYukTdvKGdQYe7oby6b5N6PuOB7rEjbfzFp8CIJANTWTQzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=se20+K5QC5SqXFWa+TjzV/LuQdj72ELQ/FyJcbegehU=;
 b=OZxChEo/r2BWb2zg2oAf9QsqPbU3A3MQOw0PIQ+2mphfVwXLd3pyHG69BVCaXFLGinAXgrQTNBEFp2Iyn7IpeRvP2SqQQZmKobwj7GrsZCivh1YQc44t8W5kjb9iJUpudIoEk69NZ/iCpv41/pU9MB1b0cQHogqY5RJVEdaWR2s=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB9010.eurprd04.prod.outlook.com (2603:10a6:20b:42e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Wed, 3 Nov
 2021 02:07:54 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%6]) with mapi id 15.20.4669.011; Wed, 3 Nov 2021
 02:07:54 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Rob Herring <robh@kernel.org>
CC: "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, "tharvey@gateworks.com"
 <tharvey@gateworks.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Thread-Topic: [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Thread-Index: AQHXz5WHLrz9Vu7bJUqGSfOlmFnxU6vwcZQAgACcxCA=
Date: Wed, 3 Nov 2021 02:07:54 +0000
Message-ID: <AS8PR04MB8676851C466ADD43D145B3588C8C9@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
 <1635820355-27009-3-git-send-email-hongxing.zhu@nxp.com>
 <YYFqCptm9m7Onbrv@robh.at.kernel.org>
In-Reply-To: <YYFqCptm9m7Onbrv@robh.at.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dade73f5-7205-42ba-aa88-08d99e6ebf4e
x-ms-traffictypediagnostic: AS8PR04MB9010:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB90106498ADDDA775EEA9470E8C8C9@AS8PR04MB9010.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xe+ZCXBs4WHREOYecM3Tq4o8YsAR+SnTknFFaIyLtgh1WiY4B3VrXidoZ+/zTdYzNzmA02T4dauNgdB0mFmCd+oPAHnE/woctiYwvz1YnswoM5+qvdc2J9v+BwuFdotCJKlO4yV3LHhZNLzGxy86nZV1HE3uH+9nSUyh+yUi9mcpHYza/nJqUN47/bLhy1yUOguInMNnhCAh37uJb2CwTdT1tWmKFRBNsNvGDVAHxgrfXLLp75mz3u/t2/lxMECzFpnauFcrRiYumBypMlVIeMMtl9OIlKTEiEIGz1e+aFVAnzUS98MtD2fF1aa7MUvJBBdJdgGYS6M3oVIUGhvmOHqsXp0UB8KgIAJwYItWTZjb4wdEpGjnWaYTujwaEnuAnUMp2eSYDew7AmfyULwXr/Br+ehZD2YuCSuLM4F7GMog4JRDV2RLN0QeiLXnfgpj7SBal6nUvjdmFHiFaz2zf1oXfupa795PLULtrOqns0qnKHQ0jn557ApwBtijI291bBoLxKwORVHOrAd7nP5ynaFabb9/HaRb4gvSf/0LMEcSAzsyhhLAXWUT41IrvVyYXHf6rqsGeKzJbKWkTdE2uUh4mbY/WtuR6CmJ0hm3O1IkVccjDfgzpvTedth+cJpbsCyURKeNib8MkwaCePTYgQmLkb7kZa9MM/HEQE6/M1WEaqjJUJd5WDIay5wMG/BZZzUFbQAGLwPvaMjV4HQvM+D6ouMdb6QJlFSY+QOZINzROWMcBcEOwbLfyZUno+XALM1iaFPFqGUVXE/2X1DFm7OriMhQuwioj8Vi+O1pLB8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38100700002)(122000001)(86362001)(7416002)(55016002)(6506007)(76116006)(186003)(52536014)(66556008)(508600001)(66476007)(5660300002)(9686003)(45080400002)(26005)(66946007)(83380400001)(53546011)(66446008)(64756008)(2906002)(54906003)(7696005)(6916009)(316002)(38070700005)(4326008)(33656002)(8676002)(71200400001)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?07tsZCXug6GVN4FLDho1OGTvAMsQVs/xMA5S6hGuPN/roOMvkbyEPj2XASBq?=
 =?us-ascii?Q?+sBIZnjwu4c80gPh9jGpGnPzp3fvKSUiuzgghuBMy9PWiUaC1ZWyqLEV2OHI?=
 =?us-ascii?Q?54tLi0j5LZGxlmqwYtaNDDOCOhHYAb1RKSvRbVrxxDwyrIjeSRvSB3wv+j9J?=
 =?us-ascii?Q?RB7sG4+0P8AGg968EzOc/RILqugrdWc0ckGjS2bZ+0bU8y2be0Csr1tHujuK?=
 =?us-ascii?Q?BexUsewFxWZSvqkYmpENMWmwtv8TXO5y8auWiE5ds7yqJQ/WhA0i2OkHTc9w?=
 =?us-ascii?Q?S+VFgUKI9mc3diZa+ug56o57/FsbvoTEwgtWRSPj9+81tAWHt7gvkOvve0rU?=
 =?us-ascii?Q?DvyYyRNEtQZdejmxgswK212I7U3IWUQ2YzPgqctqfwPrbbF8U3YFnxHhUf34?=
 =?us-ascii?Q?TIqydbEwJmeQiwtLWzri33+6nWuds0mreU3NxFFnajdPtV7S9bL/yMP89L4s?=
 =?us-ascii?Q?GJvwuhPHeeC2iZVGhCryj1y9N8KIc9TmKwWwzDoAQEktL8jlZuiYMe1xy/kY?=
 =?us-ascii?Q?7LBWVnEo9MbwVjDtivOq06dMGlu5jDkTxaEidNNUfPh2QxwHRqMyKwezVVEJ?=
 =?us-ascii?Q?ZNrXyNM+gOzV5PXglFIVkJd9w5j1DeW7hcepWGvvgboZTO/2++1Gznh3609e?=
 =?us-ascii?Q?9lGFpBkoWzkeuC5Akb0Yql1vAHjHI2VVCtrYM4yEx9h0iKq3oSkd3h23I+rY?=
 =?us-ascii?Q?SP4grK4Fis1hLlxZNRLtMMhT3MFza790a+sZps/7UI0wYFtiQ26vgLTUjBBK?=
 =?us-ascii?Q?uF+UdlNO/K/sN0dK9RSFbav0Yj1JVuFWvkKdWnqzvfcFcw9kPhJIMDx9tC73?=
 =?us-ascii?Q?oEpAmCCtHVXhIr0jCALQ+g9/ujkAbzHjFImwPmAWw0bWzWqkOVmfYiISalcV?=
 =?us-ascii?Q?2obwmg5cGYYP9pPNKkNS14+ZHcoOJDYJXlWGhNU1Z/hlw978evfaFYdmSww+?=
 =?us-ascii?Q?tcDH3mySCI3iMfLcy+YXu+dPr4jMa/72emX4kFHyftlfps1gUEw2jzmiB3iu?=
 =?us-ascii?Q?RXynC9B3nmWKdZMPYYZuLlDlPOl517YkeSBTx9j16bBhxZrdeOMSObxuLI+6?=
 =?us-ascii?Q?JfDJEFbBd+TOjG2NkdyxMs95DQlWslZzxQe4dwmYK68/jvD/L5HXdhiX1i+A?=
 =?us-ascii?Q?MkHV0lp58/kb/uafR84JAfa8/Tvy6lP3RpfTqwj0UPybZwkwORx1DEznOypl?=
 =?us-ascii?Q?Vlej4p+3w6JzERO//kbcOFKl1sHjSe/SxIEaRFdwjs6yDXVI6vQMELaixGFx?=
 =?us-ascii?Q?av9vatrkkNm2KRs3xdN0CkD6RbAwQcqQn/+qeMFUkrugAz6PofDLxgtggfZP?=
 =?us-ascii?Q?Xz116muxhBPz82w3hsgnYjdlbqsRMbzE1Cdat4Eht03PyXaLsrKCKEiJ2rVS?=
 =?us-ascii?Q?9DGwnm9mDXA2xlvxEZKYovXSdQVh350d1CGsoVKB/vR5nt0RKfapQIZc4Pjy?=
 =?us-ascii?Q?4BIRaJKdl8PcxzFXtu9fCCJZ+2fhhfOg4s9lxnEK9UaGC/uyLlzWCBatvgSA?=
 =?us-ascii?Q?7DAay/8ZJEYlcQwTLEwl0CNkK45oRB4c8HjEIjv3WCzz5iGBIqSCMlPRO+5R?=
 =?us-ascii?Q?2IE9vS6SPBl4FVPWto+8xN4aNp826pp8Gkh1ql6MM1G3AWzXmKeGQdGooEPW?=
 =?us-ascii?Q?Kg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dade73f5-7205-42ba-aa88-08d99e6ebf4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 02:07:54.1187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xDjvyLrF9aaW70MvpV+3F7MjXF8ZNvVjq13o9beZDIzPHo188sD9FM5auG7Ddc3wXshspOYgqinQbKxb6bqXDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_190758_032524_350DE8F2 
X-CRM114-Status: GOOD (  25.10  )
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
> From: Rob Herring <robh@kernel.org>
> Sent: Wednesday, November 3, 2021 12:41 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: l.stach@pengutronix.de; Marcel Ziswiler
> <marcel.ziswiler@toradex.com>; tharvey@gateworks.com;
> kishon@ti.com; vkoul@kernel.org; galak@kernel.crashing.org;
> shawnguo@kernel.org; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; kernel@pengutronix.de; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver
> support
> 
> On Tue, Nov 02, 2021 at 10:32:29AM +0800, Richard Zhu wrote:
> > Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> > Tested-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 95
> +++++++++++++++++++
> >  1 file changed, 95 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..b9f89e343b0b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > @@ -0,0 +1,95 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> >
> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fde
> vi
> >
> +cetree.org%2Fschemas%2Fphy%2Ffsl%2Cimx8-pcie-phy.yaml%23&amp
> ;data=04%
> >
> +7C01%7Chongxing.zhu%40nxp.com%7C1364bc88f1f84bac546708d99e1
> f8542%7C68
> >
> +6ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6377146804867737
> 07%7CUnknown
> >
> +%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik
> 1haWwiLC
> >
> +JXVCI6Mn0%3D%7C1000&amp;sdata=iEptMTlSVOTBuZCQNAKj6dyMFU
> fuBRnSt24nB6h
> > +Z9Lc%3D&amp;reserved=0
> > +$schema:
> >
> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fde
> vi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%
> 7Chongxing.
> >
> +zhu%40nxp.com%7C1364bc88f1f84bac546708d99e1f8542%7C686ea1d
> 3bc2b4c6fa9
> >
> +2cd99c5c301635%7C0%7C0%7C637714680486773707%7CUnknown%7
> CTWFpbGZsb3d8e
> >
> +yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn
> 0%3D%7C1
> >
> +000&amp;sdata=Q9S%2BP%2B8hliF4led7BdtytbPNzLH5pKLEoMjxhFIeg9
> M%3D&amp;
> > +reserved=0
> > +
> > +title: Freescale i.MX8 SoC series PCIe PHY Device Tree Bindings
> > +
> > +maintainers:
> > +  - Richard Zhu <hongxing.zhu@nxp.com>
> > +
> > +properties:
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8mm-pcie-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: PHY module clock
> 
> The description doesn't really add much. Just 'maxItems: 1'.
[Richard Zhu] Okay, would add maxItems: 1. And remove the original items and
 description. Thanks.
> 
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ref
> > +
> > +  resets:
> > +    items:
> > +      - description: Phandles to PCIe-related reset lines exposed by
> SRC
> > +          IP block.
> 
> More than 1 phandle? The schema says only 1. Again, for only 1, you can
> use just 'maxItems: 1'.
[Richard Zhu] It's just only 1. Okay, the original items and descriptions would
 be replaced by 'maxItems: 1'. Thanks.
> 
> > +
> > +  reset-names:
> > +    items:
> > +      - const: pciephy
> > +
> > +  fsl,refclk-pad-mode:
> > +    description: |
> > +      Specifies the mode of the refclk pad used. It can be
> UNUSED(PHY
> > +      refclock is derived from SoC internal source), INPUT(PHY
> refclock
> > +      is provided externally via the refclk pad) or OUTPUT(PHY
> refclock
> > +      is derived from SoC internal source and provided on the refclk
> pad).
> > +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the
> constants
> > +      to be used.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [ 0, 1, 2 ]
> > +
> > +  fsl,tx-deemph-gen1:
> > +    description: Gen1 De-emphasis value (optional required).
> 
> Optional or required?
[Richard Zhu] It's optional. Would simple it and below later. Thanks.

> 
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    default: 0
> > +
> > +  fsl,tx-deemph-gen2:
> > +    description: Gen2 De-emphasis value (optional required).
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    default: 0
> > +
> > +  fsl,clkreq-unsupported:
> > +    type: boolean
> > +    description: A boolean property indicating the CLKREQ# signal is
> > +      not supported in the board design (optional)
> > +
> > +required:
> > +  - "#phy-cells"
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - fsl,refclk-pad-mode
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/imx8mm-clock.h>
> > +    #include <dt-bindings/phy/phy-imx8-pcie.h>
> > +    #include <dt-bindings/reset/imx8mq-reset.h>
> > +
> > +    pcie_phy: pcie-phy@32f00000 {
> > +            compatible = "fsl,imx8mm-pcie-phy";
> > +            reg = <0x32f00000 0x10000>;
> > +            clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> > +            clock-names = "ref";
> > +            assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> > +            assigned-clock-rates = <100000000>;
> > +            assigned-clock-parents = <&clk
> IMX8MM_SYS_PLL2_100M>;
> > +            resets = <&src IMX8MQ_RESET_PCIEPHY>;
> > +            reset-names = "pciephy";
> > +            fsl,refclk-pad-mode =
> <IMX8_PCIE_REFCLK_PAD_INPUT>;
> > +            #phy-cells = <0>;
> > +    };
> > +...
> > --
> > 2.25.1
> >
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
