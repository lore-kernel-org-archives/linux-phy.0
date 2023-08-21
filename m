Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B648EEE4993
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 18:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN1JzNtC4PkdBwvYT93g+EnXQeENx3OLbQiieGgMTxc=; b=KtqUT/pwgB8OS9
	YRKJunRSIV/2t9yQLiXS58sDYZJhluXBN4BZIP9+UoynOdETqUcaerB1B3x00JVKZS33ALXuW40k9
	dTLbNmoKplduj0oWdlVau/rO2A8OklPD7UtzerBmlSasiUI5uDSo5Nd958H8FlaQToXVHwQLm1t6J
	LNVU6OMm1e5j/U5Kz+EfUNNwcDn8xU5cR93ZEIhgi97UAcxXc+XrDT++D8CPGD3DgqsGSxSVeYux5
	RCTg+EROTJ17/H5SK1t3y8DKjEwUFz8gm2/UZcx/3XWvkts+qjElWatyYsjc1CEd7hR45CrEo7c1l
	FmfgaSiaTMOGedFx92Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qY9RB-00EVis-11;
	Mon, 21 Aug 2023 18:15:37 +0000
Received: from mail-ve1eur01on0620.outbound.protection.outlook.com ([2a01:111:f400:fe1f::620] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qY9R8-00EVhv-38
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 18:15:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkVhEb7EhO/nOdHrHC/3t6AUWfHLnDBLCtdIwNnX75zI0ycl96Ya1GFesMjVIG5tpQ/gR3noxdvRiopWX3EU33X9z4WkM0nCUHRNUeyxeO5XIPto1/LKJnqtCEzuN8vphiBIJ8lo/o6iMXqdDZZhWlBv0yoC9XAkjhuSlIj/MIczn5RpsFykm9htFLiW3cK+8vRgTSTIX5tAC4t9OfxO9+OXqYdq6RuQRs67bI5Wm7mUyflnMrVe0STDrIwiZ5zHjX17Vw0kQEqhFKP8HKQVJLy4yk8CfnMYQTrJJK+Nth9tgZOIboa0a5wH2YRMWzDfMySGK0Eq6WbHT3oQ3b09Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7JkOjae7ZfHOc0kyuMyos6hFiK1/GBEFOOBhYPyPtLk=;
 b=IcEAw+Mn99so9Niwz2pDAZecbNsU8VwQ7VhzQiY+H/Ts0O06FDkav6UHgjqF47GKGaCJJOwVt4IQE8DevIaJgh7yQ5XuMJTiL7Y0So14tGn5yEIGBfR2aBDKhKWYTKhe2WQbU/Ul3IdJUrntf+v9eNbRmdVOZMqCd6HuGrYNGVSRrnq+/Zf41gJjVu92csJFzq8DcWV+YpsgbX05m6Xp7JlsTBUO11+LG2n+t5uQiBUo32mTCt5gdgRo/LUH/FttrVSOAt46yVkBUfzoulGnJaDAjFpHZAScoQt85FelZdyWqBu+GbAKQe2e1ja7t5pHXoh87luqC12Vp83SjGX77Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7JkOjae7ZfHOc0kyuMyos6hFiK1/GBEFOOBhYPyPtLk=;
 b=Cw+fCP38NQ3u+xPAlyBukwyLLJ6bvgwHxTtzNCeaVpksoE1LQKpkFBvjUu/vwO17gN6b5jyVHciaYB5e6lhmPM+2AhM1CAjPSPAhY0Vd5mnA2GiHNXsVk57X6p4pwy//p0JHJIeHM8FCQujAA3+O91hGSskfJ+0vGCwvUyHQ0Hc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB7538.eurprd04.prod.outlook.com (2603:10a6:20b:2d8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 18:15:27 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 18:15:27 +0000
Date: Mon, 21 Aug 2023 21:15:22 +0300
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
Subject: Re: [RFC PATCH net-next 2/8] phy: introduce the
 PHY_MODE_ETHERNET_PHY mode for phy_set_mode_ext()
Message-ID: <20230821181522.eq65uymp2pcko7wa@skbuf>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-3-vladimir.oltean@nxp.com>
 <ZOOpbBX7MoZ0s1L/@shell.armlinux.org.uk>
Content-Disposition: inline
In-Reply-To: <ZOOpbBX7MoZ0s1L/@shell.armlinux.org.uk>
X-ClientProxiedBy: AS4P195CA0030.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d6::17) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: 88ee33d3-2495-45ca-ece5-08dba2729847
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cvFHHhshyPl5uHFxntmY2ok6HJ+yIHZWyWKR2a1+01cJtttwHkLj1s9aW8nMbRACP1g//16SDl7kdukxNTntlg6HtPOIoHOLeOkRAndDk9JDo45Soo6cHc7ggOit/YURcanOfzIh+QIqR3iE4/PkjBavzebf0GJr4G2N/T2vpu5osrt6eT8pte5UTvTOcKgxR/3QIcvr8b8rFoIHUKM+6+dCzxMf6lXrkzx8MqExFDI/+hIP7GKQkRdwYfO/tdut5MeZB5VTTA5ddFdpoYKWNfzbdjv2WRYm3A8A9S1zDu+3O0wUQwdywTyXjMIY7Frd+zJfqNphDpZHdTp3qK6JXAKIgpwMFz6e0iK+qF1TubcwCR1SZuGAiTsoFWLQJHk5vhsdd1gdRaTOpS+cf8+eC1XEs8/6eX31f7tSnFqbxNlu/yL/1XUwEbgfV0Dh7K/k6pOO2QZ3PZfvonA1ikUrd/GWUFXBcQrZJ9n0yXS8MTZqj57dxYTVHvGecXTO3GsdIX0gTwJD+/aNY5myGQ4UaflaO4s/AdpN9joqy8rmysw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(396003)(376002)(136003)(346002)(39860400002)(366004)(186009)(1800799009)(451199024)(54906003)(6916009)(66476007)(66556008)(316002)(9686003)(66946007)(6512007)(8676002)(8936002)(4326008)(1076003)(33716001)(41300700001)(966005)(478600001)(6666004)(38100700002)(6506007)(6486002)(4744005)(2906002)(7416002)(86362001)(44832011)(5660300002)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bZwR/CSOEgX73mAJ8/dr9KIGX2Azuz9WrWePtx624tF36WuL6+68KNrx18tJ?=
 =?us-ascii?Q?ftm/HTeKvheOAPhwYhdsrnA0L2FlBpDc0jpo/VykzjUz7PE1q2wXHWN2gVZh?=
 =?us-ascii?Q?q9J06hTrFRekC40GacpU821ym0nTgzYXWcYQq9Jewd0OmzivCt0YhMUZ3irl?=
 =?us-ascii?Q?RMRe56v89osoPIcfeCqMdkEPCZyeIgeUGKCuYLTRJlx9qplfpnvWrwVE+FgQ?=
 =?us-ascii?Q?xM/2oNRAWUUcLrlIrE+2SA0Tih8cw+cRRwEMb3d3OPnsrsdbykGh0lTHA5Dq?=
 =?us-ascii?Q?bxKnDeUeyKnYaFjwdFt0GGWdgNt5WGZxUAK5Be+rmqgCQSqNxJCyGpC1yRx1?=
 =?us-ascii?Q?own8d7x8VF6xOj2J7U218YpaQ8nYNr8OEf3PAIdeobHTZwdcnfiv5X7D14HT?=
 =?us-ascii?Q?W9qCE1+gxpAsUN3qHy+yaceLyEycm6E9rDTAX98uqdNP6UViXMxBifLLNE88?=
 =?us-ascii?Q?vT7LqmTdAR2CQI92L/mwv2uuqNuSEMpsB6tl3iFQUPXY6L/a3BUDS6WZJDOK?=
 =?us-ascii?Q?ppfRcq1itEAlQOTlJ9lJCT7Cl7t6lrom/D5VAGSRR5z6cRXKLxFKZUXqTAoV?=
 =?us-ascii?Q?MZ++KvrGtdURRa+/MaoJ0g9tLgcc1SE/SkAolaDOtUyOWqNRT/RHA8E8M3zi?=
 =?us-ascii?Q?gD/O4lJhcpkjU3V4BRmurUfbBP7GBPCcegGdRulJNXaE+r819lU9IR57x3RS?=
 =?us-ascii?Q?i7tgBLsU1OCj8OpegymQYKO/WElWxduL9gB33ZAp22VgTtvG1KpFn5FlXpJ0?=
 =?us-ascii?Q?aIEnD8uuNUgMxKbguucJq2Be/IfdwPhOs2EM5J58gEnFjMtXDK8n9oSV+bWi?=
 =?us-ascii?Q?rFqc0OLebYkN00StfMtALQtZ4lEI1lPmNV1l10F8F3jX1BuTtmVzVxvkH7vv?=
 =?us-ascii?Q?ytAxlzCjxIvThQVdV995B624nsg4nCQ5wjnPtCt4TpmzpCVPluhDNmrHpi14?=
 =?us-ascii?Q?n0WkmP5XFLIVT9JLnRk4pW6QdmuAYWj4awLrWw88TEKM/e52Ap3y8feWStEF?=
 =?us-ascii?Q?g/iooO/c1g+CaEzPs6TVJyg9cf/oY1iv0K6aeBgtJdiJOi685/U8F1vlgC0e?=
 =?us-ascii?Q?YboAVGWB58+dPa5eWUncONBAYsaJh/Gp3iG9922DrJnSkN/jIm9tc8F6CmLl?=
 =?us-ascii?Q?udNIyWzIA5df8QEkaRrpNIgPaeibOGKxw8PPtYu8TD1zPUC8TI65vdNLTFi8?=
 =?us-ascii?Q?8jtKGuUFedDe7984LMGoOoTCwQggsBtGiPFAIHXk2IAB/5ybTvP4lsUY3cBe?=
 =?us-ascii?Q?BOi4j9E57CLlbzm8KNtx2w4qq5WCWN4bYVORTf+rH/rnMajy6q6aRVBL6BE0?=
 =?us-ascii?Q?YvLdAEazB7IJKg/xpxQgusJc6DiEHgvIOUrCCMHCtM9hS+izdrVrjbV6ojEX?=
 =?us-ascii?Q?ZqE+sraZicr77He08Gb5xwJJ6YhOUPtrV2FsV6xMMR35I94Pqn+7QUKe21jm?=
 =?us-ascii?Q?b6BhcL6s2eMkS8kvyAtuzY7Ps1piejSo2T/ckI3XgNYa/2gMM4h0vIlZHgWe?=
 =?us-ascii?Q?fR3LZEpYG70GW7JEP/l0Gh9F0J348ldEB+1cLjki8+iqf1ngMtFjrC8lLCQA?=
 =?us-ascii?Q?tFdV4jt0exNKClKYEQKW1mIA7yYaT3zaiUjaJIzPZmWdsflQYsTA76TK+TaG?=
 =?us-ascii?Q?Tg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88ee33d3-2495-45ca-ece5-08dba2729847
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 18:15:26.9232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BRdpMQTP1uWKNNIC37Jsp3yGWCzknUWbd3iHO8azKp1sA9QIeustDLm7uYatLXxUIRejL+7ncQ6oMwEptbOA0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_111535_009773_424F4FDC 
X-CRM114-Status: GOOD (  14.40  )
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

On Mon, Aug 21, 2023 at 07:14:04PM +0100, Russell King (Oracle) wrote:
> On Thu, Aug 17, 2023 at 06:06:38PM +0300, Vladimir Oltean wrote:
> > As opposed to PHY_MODE_ETHERNET which takes a phy_interface_t as is
> > expected to be used by an Ethernet MAC driver, PHY_MODE_ETHERNET takes
> > an enum ethtool_link_mode_bit_indices and expects to be used by an
> > Ethernet PHY driver.
> 
> This doesn't seem to be correct. I think one of your PHY_MODE_ETHERNET
> above should be PHY_MODE_ETHERNET_PHY - but maybe instead it should
> be PHY_MODE_ETHTOOL so that it's clearly different and doesn't get
> confused with PHY_MODE_ETHERNET ?
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

Correct, sorry for the incorrect commit description.

PHY_MODE_ETHTOOL would also work perfectly fine to me, and is more
explicit.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
