Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E11D1C52D70
	for <linux-phy@archiver.kernel.org>; Tue,  6 Aug 2024 16:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKardMGEMs/ktZZOpWtMsfqnHCI8JiOCr8/GYQoRsbk=; b=yDC9BwwpNBZzfZ
	mHbbXGfm/u/2pUqkWQaitM3jbev2JonjkQDDc/gHEME2yJNU/xwE+RqcgfMTsUUmXza7e8MEonq51
	Uc8tvvvpSMoCPNsZ1zXDcwNJDhyozQjaQjYbrsGj8utVGwzN0xvt/a0rbqo3tvfAL3qQZnydj51pJ
	ohFwL0NC7EbCYZRdP6ooE5juBFa5GKgdBpTFqJmmUmtp/9/e2UXtblpCptfwZNxANBNsRw3geVqVk
	AYitT6NwvdiXF9jenz1eLT7/FJyGgimz8uE7JVAddZaZhyvwsg/sAif1gHa2KiRDHUobBAfBcKI63
	Nhp6S8CMPiUK2QZd826A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbMnF-00000002JeA-1KfW;
	Tue, 06 Aug 2024 16:12:13 +0000
Received: from mail-northeuropeazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbMnC-00000002JdG-0HO5;
	Tue, 06 Aug 2024 16:12:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Swkfar35d26WDsIv/XGPO55dhlbe47KDRF4U5iwpNcGqs4wB93X5c6ID5iycUPt+vE4SQGFjpMdtHV1Uaod/ZjEMfANYxewKrkSTxxn7b3imH2QhOeyrhruyJXvIQzdLgYNMpIPxyero2gvXouLSHSJUJlJ2Lr3qCC9BU4VUZV4OZUK1t5+9SPX4Uzd1QB3QmZjHQB58bYia9nwO9dPwcGqpk8cGT8NRp4hPkow/TWXZTLHzbCr1aLaOkRKsqbyGQuBYoPsiWs7I0/yawXsQI7dQQsjNjxxvJhAVQ/Ypx3N497m2D+27HYeqMGjunbGQnU56mV7VSuvUmiU+Uzgdhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZ6cp5oWQHZZxzrVjd7MT4rWZLX5IcbCN0kZmRxMc0U=;
 b=S50QQp75DxO/WhpL1RA4eRGWXoAAaQi3IBAOupnNqlTuoVKXsx0CSr1m3sYsZQ8jJBW+atk8Jkz57NO0oXnFnlhGiZMPLbFIFb4gAbhj4yY445WXRZv7SUYzHnsmHljIaiBsDtY/pN1UZWcQ2ehb8Jr09TBStuAI/s1OLP0PFddwO8k1Oj2cv9HBALqcjYs9Fu/386LYJP1+/cH72IlzSwyxCfEN0m+HlvuhL3qtexf2d5c3Gx+E4/15x4g8izdipZGoJQj1JFO2z4c1gQLQ1roFHmIPA6X4LnTcOSZJYIu0c8t5iPKQ/sYqHGgSODcsk6SK99nGMkn37Gp+JAlkhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IZ6cp5oWQHZZxzrVjd7MT4rWZLX5IcbCN0kZmRxMc0U=;
 b=mr5vzE8nRLqpHujjXPZlc3XhpUly+gExKxJOcFwFk+kXOL7OcEU/yvNNfuI6FjJcyCJN855/yOcJiUp8U1fADoK+MhtU6CEenjXrcgRMscpmEovwsNOwMBO6heiSvHvyTDC3M5axn5PKx4tZgk7G45uETt8KK9YQN1bjp7GNYFd4TzJOqI7Jdn+1c1MhOJ3ZVl3XMU+5+E2Ljwxo02U6/AZ1C8O19bS/zRj2y4E+dXeluDUaPI/bIzUIAaTOG+ADVMMfGbYVtDWYklqWwVzeRbs4D01T5BAZxiCQPE6VjyOYBq2xZvtTZJvQWFCjur8MjkKh1kv5ya9L2U+YlziGHQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by DB8PR04MB7180.eurprd04.prod.outlook.com (2603:10a6:10:12c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Tue, 6 Aug
 2024 16:12:05 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%5]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 16:12:05 +0000
Date: Tue, 6 Aug 2024 12:11:55 -0400
From: Frank Li <Frank.li@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Xu Yang <xu.yang_2@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, gregkh@linuxfoundation.org, jun.li@nxp.com,
	l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com,
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: imx8mq-usb: add compatible
 "fsl,imx95-usb-phy"
Message-ID: <ZrJLS37GFmvkQpml@lizhi-Precision-Tower-5810>
References: <20240806050639.1013152-1-xu.yang_2@nxp.com>
 <160dd5fc-83ba-4311-a173-44521342a3d8@kernel.org>
Content-Disposition: inline
In-Reply-To: <160dd5fc-83ba-4311-a173-44521342a3d8@kernel.org>
X-ClientProxiedBy: BYAPR11CA0085.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::26) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|DB8PR04MB7180:EE_
X-MS-Office365-Filtering-Correlation-Id: 40068924-763d-4250-1caf-08dcb63283ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|52116014|376014|7416014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5vvYDarWUNZftmN/bRT1NHiC22oBxFZngVJnYNex919J+jTI6Im5gb6UUV9p?=
 =?us-ascii?Q?f2bDj6jn2OKd9+axBV9+/c6sSl/nNMQnqMF7FQ+XYCMKjrqOzLiUvGulw2zM?=
 =?us-ascii?Q?1jPeI2PGXvjeu08mBmCh0+xZqZM2je/q5EaD6p4BOrjCdd2vYRSGlJKhUN1j?=
 =?us-ascii?Q?66iQe3HWl985/wCS0dt+NoHa0qHnrxo84wY6GaMjc501ASj+r0z0RdC/Sv/2?=
 =?us-ascii?Q?JpzZC9nsQsOy+w9zg4T6wlkDt8hAgX3kTC4APMTe4KQxrAvj4yyrYywjb0cm?=
 =?us-ascii?Q?w7FKnnWj+GNbTuR916OkcisopudbvPRpa7xe2ChrZFCPS0TLZV+bbDe8wytk?=
 =?us-ascii?Q?9e9m5honXZ6v0LPCEzU2jt/fj0FM1oHv3VxfBuTXA5Hjs+5+SeeKT9u4ojkW?=
 =?us-ascii?Q?VV8hMk6WEltMUBwGEXQZrrBbdhz+oQVMePEU7SreT1HGqNXN4PkDXK7JnZqN?=
 =?us-ascii?Q?I96Qp0XzihVk1Ds6bFwWvSMX0zpCLnVb9h7plBltOrVvQmikdDORQBgbfJsb?=
 =?us-ascii?Q?ZMgMrXHx2AxPUGVECcoZHrWBLYP7pVaJY0PDv/eKgCyGV/MKhD1iD1WLpDPM?=
 =?us-ascii?Q?h4aDQaix0prQPvdr6gnr3RLrHcek4LN2mo+VkthPYyEv2PrnfbM/LHgyl9LS?=
 =?us-ascii?Q?+NDSOc5+dTvrhIDctfA0bL+2a0++HNEOW3J/+yepZ/gQwaxpeRFOGyZExNqW?=
 =?us-ascii?Q?qqLEU4YCwRXg1UL+bM6GagolgjKMexzquuM6DaYuYzZGlJwhOb22su9jfCAJ?=
 =?us-ascii?Q?+6Bgf5nu4WGjcDcI6/M+oqR2LpyzK+GYEPWoSkL3K1UHJTrJHq+kbF/r/gHQ?=
 =?us-ascii?Q?LcZ9mw0DoGbh8vgzPolMjha7HvvNNGJgLrpCsBTR6XAW85MdMhhr2nqCopex?=
 =?us-ascii?Q?WB7QBtFzVuk7uz6qGBXNX7PfGuoj1SWJ4Gtk4tGj3RwN4dfSKJmct4tvxkE/?=
 =?us-ascii?Q?ENc/+VXBbbp8pGQtGp+rc+ZoZoTxyRC4ioxNpBmy7FOQApJkqL5zl/DTGFwA?=
 =?us-ascii?Q?889saQzNPC03B7gWRW1V1DfotOr9mSh6QlQmpKlG05zJdl2marEtQVgMuqnQ?=
 =?us-ascii?Q?eAbcBR1n1CSj3q6h2uu2QXeeUO+YlZ2odXDNcOCRndbLZONQknG8yeQrHnyQ?=
 =?us-ascii?Q?kiq4IUUjJyvIFlFyKO+X2QRD3N1G7D+S2M103n3artSdO7aoMCE6amftOFPM?=
 =?us-ascii?Q?afrL1IQ6AijbR5eCgTwj9HO/gWpDksg0/NdSTq4UqNWbwNcxJmLJ+BXFXrB3?=
 =?us-ascii?Q?U+0LJB7Ko9Zj8Xj7dOVMLQZhuEfUR+pDkq5rYeSlMsnn6aSJQxp0o74wLQpU?=
 =?us-ascii?Q?Emkjd+w43QQP1+uu/F0QQTHWjKVOk/GYpUhYBwU2bKjbKkg7Bw19lSYFq8VX?=
 =?us-ascii?Q?5A70PWdAlH4uXggKvvH0ATYbHBfN61ldpvJKacDdA8TC4gcf3w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(7416014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+HiBguMw4Z5Y0jl05vh5khha7vKJUne81jjpz8rohZUt6NZP4RFV1uY5yTTN?=
 =?us-ascii?Q?UxOl3dgfv909cM0swJ23VqeWnZ7lYrKdAaUOX9jtUquEsF00TpvvhI6xulkK?=
 =?us-ascii?Q?Dsaluaa5c6XkdGKUel/EncgIR/VdBt04+vbLwS+SoREG/BhuHiQwls4Abg7g?=
 =?us-ascii?Q?19TGcULX0ej9uS+vGsMS/PQYWTnY6clENifBotzR7wQ4tBTpd0vCzUIj2k9U?=
 =?us-ascii?Q?j9QrTQsb2w9FYePdqMpWYEowUXnTKiQ/9zGvSWFcviSm6UtrdnMrK7uBSAMx?=
 =?us-ascii?Q?2E2Iu5Gc3+6aqZfnnAJoPmDcBz5AErYCxe01VP5JqRtgz/LdBVD3lQ8ZbXSl?=
 =?us-ascii?Q?NxPKUu83wlUtFcOg7ELxC8g5xkYbJDmXeq/VaYtnrj8mu81T9ZuCpnPNzaIj?=
 =?us-ascii?Q?FTZBNj4myZhh6apaxhQ7eGX0XBaC6mTo24i7EhEbP72OXTCFQCtda4YULpR2?=
 =?us-ascii?Q?to4E7zhZ22mtSqhSItnf32bQsWKni68bUwK5229Jcaeyg41qkF3H/OjWW7W8?=
 =?us-ascii?Q?U3fKpy3nUEJR7hNgf4pY3oqeUNtxT2hm06wXECEa+wvi76JhwkJ2pYVd2ZqZ?=
 =?us-ascii?Q?M41V2VUneDYBoN3IEkjk7L18FRgLd8aXDSV6JKQ9WFglChYOc+BUkiH4V8bE?=
 =?us-ascii?Q?sUWDT0Y+Sppe5oLQ2KT1FfyT6SvQQcho2KR5uuGP1Hh7NMEmjOOMRmUEwz2F?=
 =?us-ascii?Q?4sMrF/9TnOxLWOcAiWFQ4lBEUX2WH7GAdtcVETphvBA+bgiWYWqf3pLeba1R?=
 =?us-ascii?Q?agtGwuU1xKRecv9l5DJyzcF9C2LJ0T0fm9//NH8Bt0MplPQ0uyxficB2PMwx?=
 =?us-ascii?Q?s7blY21QImHkaYfgavxBUbghL0cczxtbgHZQvpGfotSCn+EqyZIdCymqpojY?=
 =?us-ascii?Q?L5lz7MkeZ+2gdFxayHV3pN3qEoBoDeposeK3AH6ONDyQnf7tp0yc/8dFv1UZ?=
 =?us-ascii?Q?puuchE1KLhB+JRbt5xpGJlfzdjsjH/aaCJuTmKk1n0uMhx5mx6ZZ/1sjwcCF?=
 =?us-ascii?Q?oGuxr71K3uhYATaNnb3UTN06mU3cJfXSm0VuaoDB2QZAX0SDV1GgLgwju0QW?=
 =?us-ascii?Q?JoUdh0WeSRk8eW1MAXpcFd7n/zp+DrfiwI4xSssNaBWMUAaO1CTjc6ZHDHjA?=
 =?us-ascii?Q?7zgJ6bHLqjJZShKwBdbRGnww2nEbDpu/E3Vnx+t0gFIqzcQrwnu2Nae6POz9?=
 =?us-ascii?Q?MUj3whSITFX+f4svNDx69HHVLckoZkz6zWEHT0hsrKS4UXFp0JtmYiy1DniF?=
 =?us-ascii?Q?ROhSjuFvrT5sDT9xMdZLorivB2z/XdjhpJx07kYqm/yJFMhUIUdjUkD02f75?=
 =?us-ascii?Q?nhpeLJdpt1N6/2zXYs4bdaX1cjXt+m9exA8JlGPgl6a+x4OLFwlf6jE5sFCn?=
 =?us-ascii?Q?dxymUKnOwPOjVjta4lntWKvuarV+msrvGC2g8k0il/MW5Aw64/PUZxoUfM8i?=
 =?us-ascii?Q?Xp4lZz3QG3tLkgg5rm1Z6ClbaLar8ymIKHbQLTWM9z81FdC00UrJriv7z3e9?=
 =?us-ascii?Q?RtWftkgNWrRp7T+BQDNMZPGmnmS1pzINy7kU1OpXD0YusSkr02MW7fcMC7r3?=
 =?us-ascii?Q?nROaC3lXf17fDm4EKf/MImkOy3fwEqEPy9ukFU5p?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40068924-763d-4250-1caf-08dcb63283ad
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2024 16:12:05.4784
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHIV0AkBpJ9CekiUu8/o2/fQ6LZkCSTdo5ONLXti7udW8SjyfHJxyS8rtZOg0qmIkJKjxHIfJxvsIoqRKWtI8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_091210_132799_7E40DF85 
X-CRM114-Status: GOOD (  23.01  )
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

On Tue, Aug 06, 2024 at 10:29:47AM +0200, Krzysztof Kozlowski wrote:
> On 06/08/2024 07:06, Xu Yang wrote:
> > The usb phy in i.MX95 is compatible with i.MX8MP's, this will add a
> > compatible "fsl,imx95-usb-phy" for i.MX95. Also change reg maxItems
> > to 2 since i.MX95 needs another regmap to control Type-C Assist (TCA)
> > block. Since i.MX95 usb phy is able to switch SS lanes, this will also
> > add orientation-switch and port property to the file.
> >
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >
> > ---
> > Changes in v2:
> >  - replace minItems with description in reg property
> >  - remove orientation-switch and port
> >  - refer to usb-switch.yaml
> >  - use unevaluatedProperties
> > ---
> >  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 42 ++++++++++++++++---
> >  1 file changed, 37 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > index dc3a3f709fea..6d6d211883ae 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > @@ -11,12 +11,17 @@ maintainers:
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      - fsl,imx8mq-usb-phy
> > -      - fsl,imx8mp-usb-phy
> > +    oneOf:
> > +      - enum:
> > +          - fsl,imx8mq-usb-phy
> > +          - fsl,imx8mp-usb-phy
> > +      - items:
> > +          - const: fsl,imx95-usb-phy
> > +          - const: fsl,imx8mp-usb-phy
> >
> >    reg:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 2
> >
> >    "#phy-cells":
> >      const: 0
> > @@ -89,7 +94,34 @@ required:
> >    - clocks
> >    - clock-names
> >
> > -additionalProperties: false
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,imx95-usb-phy
> > +    then:
> > +      properties:
> > +        reg:
> > +          items:
> > +            - description: USB PHY Control range
> > +            - description: USB PHY TCA Block range
> > +    else:
> > +      properties:
> > +        reg:
> > +          maxItems: 1
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,imx95-usb-phy
> > +    then:
> > +      $ref: /schemas/usb/usb-switch.yaml#
>
> ref should be rather in top-level. You can always disallow certain
> properties for devices, if they are really not applicable.

There are some "required" in usb-switch.yaml,

oneOf:
  - required:
      - port
  - required:
      - ports

If put on the top, it may cause DTB check warning for other compatible
strings, which have not support usb-switch.

Frank
>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
