Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 487FEE8FDB7
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 21:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqxK2a4BNwfxeegOR1psb+pSS6E8H8sZ8xmkgOhKxTw=; b=DPHMWoRtR4TikK
	c1+oZIpab0s06skaxzcyndl6i1Ha07L3NRURQfZ6P4tdD2nrJP+Ij4CK9Mf7/qC7uRuRvvQ24t6C+
	GE2tLaiQyCCxoGEAioMmbGfYRwuWgQCqxDfyDsDgymqYjez5z3kIRrMVid0etArsWk/wJLGwQPMIO
	jo7NrQUikqicAYh+yN6i1L6BuPcW4wxj13tBanP/EjbMSINZ3lFAE/+HHfx7Ct+kUSbbA5JK+eRNO
	ytuJ8DWMM7ztTsR3wfF2+0e46ZMUykPH+w0leQcqbgDuFYrHFwo01OnkxlX6/sAGZhFxoD964REdq
	uKTsp+C2fLfRAFj8F+bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnmY1-00FJbO-2i;
	Tue, 03 Oct 2023 21:03:17 +0000
Received: from mail-dbaeur03on20620.outbound.protection.outlook.com ([2a01:111:f400:fe1a::620] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnmXy-00FJZf-2y
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 21:03:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AxV+02jPru9LFm2Yh+4Ijy0HrmKqGFTNjXjtfLTUlMB6Y/v60SBkBnZDUcA1+Qn1ThJN7U7LB9dn8qAsv9O8n+73dPl0I7fwmWSY+Xhd0qgeCoBDPPBCIBldvUl0Xi7TIEUVsRQf1BlpCe/mbkcz4LZ344O8xMWefNi4wCFcvsenb17afbLrddnof7D/snheV8cUWzPSj2oZV9k7LfhNDUCcZj1+1k31Pje6e5kD0Rk2Ydh6nfq04Al1PqcCoPpHWtmBP0VfD5SGAJpmUfWXRTCIS2Kzm0iBe2ggeMwLtdWHRAvoRghJiGx2I+9kEBnX7SHx5W3t6X144NF4FRtsGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64KRXe9lAEsvqO4h72TkhDPfpP0Ec9+Teo9EB5gp9U8=;
 b=hfDcbfJ1n7VGSIn5gSICdCNKpoQtrZCydOE9Se+90k95Dndisgcn1lDpEOGFaivNExymfet7Hx1vj2AapvKtXDvUMZoRloOeEok/L4EGb5q6FUEyJbSOVMgdscD0rOGh0sBae/nIWYMWsTHyllRJfYpetYIpEXwh5c1sHIGhSsw0KPSqjD6KcuLqrfHk9XPlfwxQgs2W4Q9UJc9fppCS0NoW2ZZlJIeSmgcyFfK1Sdkh0ppgNC8TEY8F4mUHK41NiAljZdEQ3MC1G9ucqx81bZb0Vb54LUQiWd3/SzxitXs2AV0i9eTcNOXxhvJEfGQWkd6nyenr+k+tYGITiHtofQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=64KRXe9lAEsvqO4h72TkhDPfpP0Ec9+Teo9EB5gp9U8=;
 b=q9VKRsn6DRzKY3pE0mB8CyiZPGTZWUakb5GAhpziLLYq7I/XXrsi6VsbLe6tfc+P6Ir/FlTf81+HtqV0vBQmT7s3ez8kdILF00L5WqIHxSl6DEioScr1LjGWCi1W64STodAi1xTnwRRPgyks6vn+WIJn9rrOnHnG2tdF1LTzIew=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DU0PR04MB9442.eurprd04.prod.outlook.com (2603:10a6:10:35a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.34; Tue, 3 Oct
 2023 21:03:07 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::568a:57ee:35b5:e454]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::568a:57ee:35b5:e454%3]) with mapi id 15.20.6838.024; Tue, 3 Oct 2023
 21:03:07 +0000
Date: Wed, 4 Oct 2023 00:03:02 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH v2 net-next 07/15] net: phylink: centralize
 phy_interface_mode_is_8023z() && phylink_autoneg_inband() checks
Message-ID: <20231003210302.sxz6jmcs7t5jmcqz@skbuf>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-8-vladimir.oltean@nxp.com>
 <ZRv6vNJhvVI9/1RX@shell.armlinux.org.uk>
Content-Disposition: inline
In-Reply-To: <ZRv6vNJhvVI9/1RX@shell.armlinux.org.uk>
X-ClientProxiedBy: AM0PR02CA0008.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DU0PR04MB9442:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a0b560b-658b-4269-734f-08dbc454247e
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bknmfz09as6TJkXstb8BEwbXqOaOM8JpU2ILcl5W9QtXApOqqFoSXdKUENpeOvgLBzmKJ9RnJG5sTqhuJpdyWIcEJlmYel3uIKq5p1VNT5wVo6RiL/srn74kfdoLx3Em9BYTyMxTip73/MK2dr/NKJGux9DZ/EppFni3FFZ3UkTkkzbC1ytmvpaKEBcyeC/vZaCOnJfh3XdkfbZtmSai5/3PXz7ptevoyhNDg5t00dGhlctqvTm9erKBOfIvJji49c9ytx7+xKcAIHwM7Cq6Zbsztmpy2bHP7xvm++eRbL7soyDKV9My1OI/LqggarYZyYUrceLFaBG1mGzgpll4X/z1S8+cXI53wFlk/reQbH3zuhQcrkTcauevZQkmIMRrWm5LSQqMXe4sKJ81aOxGR7qW49+VVwPdvMGriRbilbdOFnE6Myz2kZUYiDx1vE0m2SN2Vk7e6Vo61gJ+/UCedS431FQo3YMxjU1R1FLbOHVJho/PPZ04sWHll9QcMG5DPPcYYL4PWaBDYnch7+E28CVqZi/IHsUvI5Kd0EchE/NpztJrvki8iGvfj6P0zkQ/
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(376002)(136003)(39860400002)(346002)(396003)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(478600001)(6506007)(6666004)(6486002)(6512007)(9686003)(1076003)(7416002)(83380400001)(316002)(41300700001)(6916009)(8676002)(5660300002)(44832011)(66476007)(66556008)(4326008)(8936002)(66946007)(54906003)(2906002)(33716001)(86362001)(38100700002)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UlKYPLsub8ZAKMB5ILhjYMsx0KHaaNQt5NlveuArefdIn/Xak5Hr5mfs0Qls?=
 =?us-ascii?Q?vRX5SIkNzk52BSKZjEWXQoOV+tI2osMrVF4WmIKT3Agbd+NavuCB/tHKmuyi?=
 =?us-ascii?Q?PZdIFi7KC7Ww7qb4EL+Gk2GeWa7E6a62T1Oblw1NroFHojZpSJthYEx/C4d0?=
 =?us-ascii?Q?WCPA9KLxvszgcepz2JwuYLBxkjj7U3SeYF7q4pUTC8mFvtwskx8GEleD4hAe?=
 =?us-ascii?Q?cKEuRHQ4kzjHStcB0xagQralVDl7Lmkk57uBGBRiSuKK//VLbQ07EHDWP0/e?=
 =?us-ascii?Q?O5XZZWiSMfIWstk3H+L4I/1llmBrRwFei1b5ZWaiRcPWWQF8QrzHQZoN1wWp?=
 =?us-ascii?Q?J6aEj3ZcVypcYdWj7W88kfffbR2A9Rs/WLhjdsuDQgz9sb1ymUDSjAsUt+FP?=
 =?us-ascii?Q?mwYGM8V6e78CxUk1zzS63W0h8NAALIKNzb+GL9bpPzC8nkryghsxCj89HRJf?=
 =?us-ascii?Q?HuK6el1eXDq/gU3akIIowzbLquhuLsgN1+Odr5kD4eXop0vLAgpDq28gPOc2?=
 =?us-ascii?Q?ry8qX4lQcds8fId8cCxHBI0oQ0/D7O+9IlhiD3dPNKU2k74tMGcWywlzNQGi?=
 =?us-ascii?Q?WHXtA/sxzp7WXZmVnIOt1GEMFjBqA8XvgA5njWDEOVXw3G8Bwb66L/NRgHaX?=
 =?us-ascii?Q?Sp0EjN/GkKsO+vWIq5D/IQrdr18bjnD23H8lYXX/jzObU1drhAFKYNs+REeA?=
 =?us-ascii?Q?B0PZcDBjOEulPpJgYBA2E9WE6ucEfCpjJc11aZGJ7J9xrcYYAsEt66A6ccw6?=
 =?us-ascii?Q?S0OohbfFva2AbTnoKlhYMaSzK85ZyNAT2S8lGFcLySwU+foeDRQZrlwZ544n?=
 =?us-ascii?Q?QLuxDa9JTfOjiXq9PU+QZgSYU9r39QEjU7XkmkrGAQsEeeaswG2tajhXZwJN?=
 =?us-ascii?Q?mxEDs/sIbqn4fesLxxwnWDNx+FAW8zKCupvqRGFc2PrZKzDd7GPALfniQeCz?=
 =?us-ascii?Q?j8ZOWlMFYMKxOZqFTWtP9cP8hK37JugUJubnlds7QoVcLxGkM8z8hTz06Bgb?=
 =?us-ascii?Q?lHYcKr0k9wm2PMdAYKMOKOZA/WMgOauKa/IblsUp+WNP6F5DXnngA4jV5tVe?=
 =?us-ascii?Q?1A+rW5IEcZkjquVtg4u5VR0cFSisc1u9wjoyGJ6nLY3dGIySNjlS5xNwcsga?=
 =?us-ascii?Q?SlbQ9/GQAS8Cux828Wln9dprPrE7LAuSucXjnu8YLOlFaLXK9+p5jorMBRsn?=
 =?us-ascii?Q?HHTp94VKs7V/AEpo9kf05mv/dzlwExGkuiwWADxhVM9GjM4N5a9V3nf7swlz?=
 =?us-ascii?Q?DwGmGgKxUifXZ2cQ7VNZHLYMx+4Octr2JkixdXzCsWgKRj8ZvIq4hs7d3NQZ?=
 =?us-ascii?Q?844/SwnE5G8E6YCOY+HxaWw230S3WQ0IGybtX7oEaU7qnAA1+lXII8z/ckgH?=
 =?us-ascii?Q?rLKP/cJ+X7SqZzssmvabdYHoxbTXBzLlkmz4x5AU7VCT84i6ivEj60QZr8uI?=
 =?us-ascii?Q?mHpd2y/6Lv+r4nyhsVUOM31+sTku6sD1OQrKwrSnwCblcTaF0duOc8sXzcC9?=
 =?us-ascii?Q?v8que06ToShHAPpwSSlO4gHwuCUWdjkdyl16QBEX/1J80xGrTuYMxOlBfeBL?=
 =?us-ascii?Q?O3LEfBj6J+czuLgmvX8drr8Z06r+i5XY+Zf77UEtukAUl51bZQftxUZ4Izwz?=
 =?us-ascii?Q?IQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a0b560b-658b-4269-734f-08dbc454247e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 21:03:07.4556
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ePzfbjoo93wuAAbjOqZL7SFV6WdvBNOv+2crxQ4T1oBru1eHH+nTDJUJrYijuxyNy6W/A/MpNf5mYibb9ng22Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9442
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_140314_964532_BA688F42 
X-CRM114-Status: GOOD (  23.74  )
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

On Tue, Oct 03, 2023 at 12:27:56PM +0100, Russell King (Oracle) wrote:
> On Sat, Sep 23, 2023 at 04:48:56PM +0300, Vladimir Oltean wrote:
> > In a future change, we will extend the PHY interface modes for which
> > phylink allows the PCS to handle autoneg. Group the existing occurences
> > into a common phylink_pcs_handles_an().
> 
> I don't see anything wrong with this change, despite my comments on the
> next patch. However, including INTERNAL in this may cause problems with
> DSA. I think maybe these two patches need to be tested on DSA setups
> that make use of INTERNAL.

Prompted by your observation in a different comment, I've searched for
PHY_INTERFACE_MODE_10GKR and found aqr107_read_status(), which sets
phydev->interface to this value based on the MDIO_MMD_PHYXS :
MDIO_PHYXS_VEND_IF_STATUS field.

I am now of the opinion that phy_interface_t is a phylib-only property,
more than anything else, and a slightly obsolete/hard to extend concept,
at that.

The selling point of phylink_pcs is the possibility to have an optional
phylink PHY, so I wouldn't want to reinterpret phy-mode = "internal" and
managed = "in-band-status" to mean "clause 73 autoneg in the phylink_pcs",
because that would quickly clash with the phylib PHY's desire to see the
phy-mode set to something else (it is definitely not "internal").

I don't have access to an AQR107 with firmware provisioning for KR on
the system interface, but presuming the feature isn't entirely bogus,
I shouldn't deliberately close the door for it.

I am exploring the possibility of adding support for 'managed = "c73"'
as another autoneg mode in phylink, among the existing MLO_AN_FIXED,
MLO_AN_PHY and MLO_AN_INBAND. It is quite clear that MLO_AN_INBAND !=
MLO_AN_C73, because the former is the PCS doing the negotiation and the
latter is a dedicated block selecting a technology-specific PCS. So I
think there is room for this extra autoneg mode.

I am also trying to see if there's anything hardwired into phylink to
require a phy-mode when a phylib PHY is absent. I will find that out in
the following days, while working on the v3. I guess for optical SFPs,
it just made sense to reuse the same data structures, to present MAC
drivers the same kind of API as for SFP modules with PHYs. But with C73
autoneg, I don't think it makes as much sense.

If phylink can be made to not require a phy-mode, I would prefer to pass
PHY_INTERFACE_MODE_NA, and for it to be completely ignored for MLO_AN_C73,
both in phylink and in phylink-using drivers.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
