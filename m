Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED42EE4996
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 21:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7lhG4i3JsNnNCevedibgVf3nKvUPDuKwmLCeybXSiw=; b=Aqes27C9EP0TSS
	qPYQO9hURSIEyj3rzFICMbolY4VujOsV7vgfqMe+mRjhuR0wsrKvJB2kB3DpzFUaqcMRBDOtXanMu
	wbb4wNtR+soiVWBlHIe0Ld8FtStp5z3pNfTVqzxUBD5Fa0oa4/SAn1cxDen48i64/yGrfZJOEvCsv
	/7aoGjT905NRMBoFBp6ruMHegTf6DrbYfJ40GaF0DmsYP/fLTdYOT5jioW8ealLkk6pCuNOaqbML/
	UZFVyacnRIlqhaLgHuoWpP83dXnVpRh/oDL1nK1mo+IvTuwZaHMq8clnNXynwhT1aw0i0gfTrHyLK
	I98vlfG4GS/T450uIcDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYCrm-00Eklh-05;
	Mon, 21 Aug 2023 21:55:18 +0000
Received: from mail-dbaeur03on20602.outbound.protection.outlook.com ([2a01:111:f400:fe1a::602] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYCrj-00EkkL-33
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 21:55:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gkNluzqZagb4uPl7IDYKkyBdh8JxS8ePzd2UEEk+nZBD+yaWzU9idaRT2RX0FSUGzOGymr4iOyXa08LOjLY1qSZwkVzitYXcRgg+FcOyLU10294kCGGOgdsnFZt9BrbUpOEbnO0SwIRLgAo2ia7NYCVKEWDeSfYYwEIPhBymgCl9ai97xWNwsAPLldUoCF2aHAFF7zFJddh9eT9JbJhBeIzcTMLvtOBK9cq/R4NTre/iblEIbq8VRbNbH1jrM1tY2SFrwJYZ40Y4LJpf2BQt8TX9qJTjOQKKM4UDFppyDH5AorWOdnoLKarKLkIH71gAlKEmVvcWD1v9AZWJsqXqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gr835htoZ7ifxliQADuzhRbHmOtVVsjx1DHVOSWV98s=;
 b=J7ghZkpO8HqEO0Jm1XbqII+t8aiF8n+vx8jFN/Xycxdv5oosIa3apGe/ca6j2BqTWvm85mf4qXxXyzazX0ZoJ154WCAQsbBk7fEbp98+6tPfcricO89DLUBz+m2rrTCcISbZkqRrySMb/6ejjXU7bWCzgmgsQA/dNqV501lmP+036U3F9K3FvOKGU9sMyftPSV+VOhwZLZY5G+Xf9ks95fogCR2kBKZprhXQ+6D0e1gypJroEKnHhUbyznqR5j2NYRJTVPfCK0ZdqaEVl2x8A/+chGUa30xAtz05HFGEmfLk7BInoX318nqWONfAEjVrC4FVNmadHitMs5yWJhFMpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gr835htoZ7ifxliQADuzhRbHmOtVVsjx1DHVOSWV98s=;
 b=EwR//A9EhKDsQCtvOE2vwK9GnLmlTLpb2dfBk2/U5UcHdbBeYR30Q1E+VB0slCECajIp4N3fdyTs9aKbkipy76ED1gNODiKIKxqqKHA31eUgxdAmJXVYyJmrRQbztcnAsjHc9G+9rtsFAhwPd1yL/WY9uin45q2vTMBTU/9ZTD0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by VE1PR04MB7438.eurprd04.prod.outlook.com (2603:10a6:800:1a0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 21:55:04 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 21:55:04 +0000
Date: Tue, 22 Aug 2023 00:55:00 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH net-next 8/8] dt-bindings: net: fsl,backplane-anlt:
 new binding document
Message-ID: <20230821215500.oap7ze73pu237pof@skbuf>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-9-vladimir.oltean@nxp.com>
 <20230821195840.GA2181626-robh@kernel.org>
 <20230821201146.hudnk5v2zugz726p@skbuf>
 <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
 <20230821203433.ysulh2bixfypbhsk@skbuf>
 <842f7ff0-d376-4f55-b72d-2db7ea827792@lunn.ch>
Content-Disposition: inline
In-Reply-To: <842f7ff0-d376-4f55-b72d-2db7ea827792@lunn.ch>
X-ClientProxiedBy: AS4PR09CA0008.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::18) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|VE1PR04MB7438:EE_
X-MS-Office365-Filtering-Correlation-Id: e352f21b-ca88-4403-9ffa-08dba291469c
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LZE3Bm+g4FJuRC3TUOT6ychj3b+rEAe9KyTSp3CoBxYvbbtdY22UmSnTNv6YQ4fQLKHBcuNnlsA+Jhxd19NxY9cWcX88XVrDuJYk1Rco5VlK8oLhMRZpX6A4cBKh13+eJ2q2qkBhKqndCb9hfCI28fjSOfV7GJLsYsKSXyRVccWqB8Go1gV5MLjKhK/NW/ppIqkRU2nU4NKoxn6HV5QC4Y7M9ZbyijNbsY+3UolUs8pOf4qVDwJXj7XT0yhjxO0JZvjeWSMRhW1RsdUzHyVKTYLIoeXyPiX9/iIEvOdK95Ed6BL0VlnvGA6AW32Sm1vJqINjW6Gdw2jvJtp0n5TsJKWRBe1FPfvUqyOK3BOXoPDVYmBj8StW+V8BFiNMNatZQ6uR62EjmQHJUNWcYa16KqmJw+OJrGltbe6AnFbwSf/iJbaYEVrlN+ocjbTB0088VhcQ6PYNfGtWoj40iG1NW+SoNAxQ4dJdwD3TLotbVjFyyn5/WW8XYiL3FmtNyfoGMg/pwNUQDl8eHQznr6f+cn5ytEHs3NDpLdVMMhEZprT7/MK2FGfVqUGxu9ivRTra
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199024)(1800799009)(186009)(66476007)(1076003)(6512007)(6666004)(26005)(9686003)(6486002)(6506007)(83380400001)(44832011)(4326008)(33716001)(8936002)(5660300002)(2906002)(8676002)(7416002)(6916009)(41300700001)(66946007)(54906003)(66556008)(478600001)(316002)(38100700002)(86362001)(66899024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o+4/oGnEjUo/21ZjjMnejzDeDQFaTlFVVcbPIsDiVDv7BfZTe2KCn2ROsT9e?=
 =?us-ascii?Q?zXh2PB5KlQ8Wp58aL2yzybYBCxBvtx67zyKhz1QRPmBHimiKc37zNqGoVR3I?=
 =?us-ascii?Q?zRaalrkSC9JxmEs1ixgWxuFiG+XYMbiFmh334eonahjflBCnTW4NCWnSCdTA?=
 =?us-ascii?Q?TQ+e6AfnLqKmtl1hTt8qNRxIUTpMs/tShpkm1GVLarWp/DgmOhSNquZO22UE?=
 =?us-ascii?Q?MPrYZ/3/1KDjP2Z2Xq6UOtLyqj0SFl4xPbCWGctiB2G1h+AzcbJ+buGZ192L?=
 =?us-ascii?Q?5X5r3N0vBpkjFnPQWqVdRQ8Qf82ovwhNTLYN5wujfybmI4VEZj59cq1WOE/n?=
 =?us-ascii?Q?i22EAss5eVPNuuc9g+B8UMpC1PcAYRVJXSFK4IyOP8FMsG9tob3mB6J8t1VT?=
 =?us-ascii?Q?jzGhCdcv954wi4kb0A7e+LyTlbVg3LfkTrjH83i7XDEsvV12rHlR6AMOYarD?=
 =?us-ascii?Q?XW4FHN8thpla5+Vq13boRV8zrbsxzOH/qIs8cmzyU2xP/cRC8KpHvvQ9fzCv?=
 =?us-ascii?Q?nwLiXdJ1D/9i5rv59CYeFA2xTdaJhMqQ21xi16PoO8LEQ/Eyl9yvo75NKoD6?=
 =?us-ascii?Q?EYqgqc0NKOsW7mfCOn9Ob6dIFw4h/WVfStabg67S6VGkFkDtZoACATMg/jZS?=
 =?us-ascii?Q?KncTtVM4NHABNfULnnFpNi2PukDWMqv2o+BR/E4vk3We7h3sKFkV1OqVSRBk?=
 =?us-ascii?Q?oL46HotgS1DjTMo4qT2RKguIH4c1xDYlwXabcpnoLFSaXaRxWn3b60Oo3vvH?=
 =?us-ascii?Q?Qiu/CwiyK+ainhQbqhfjA6ShAjrW9vYN/SArQmslnT/VNvnfnISyQV0xU3YB?=
 =?us-ascii?Q?4PTXGRFy+/Wp/2AosOqQhUdbj5nZqZGGDPqIw6Skc+ZfD36hksPrV/DrZq8G?=
 =?us-ascii?Q?IqbgBpBYolV1RNzR3ZZZ9yrsGIWienjafB+Weu3NzhjxM+Gz0X5NINUZJHU5?=
 =?us-ascii?Q?H6XusAx1wuoUoMe/25U79zKvaeahnk1WZ1lhzmK4PNEMmSUrdR2yZQ4wVJ0X?=
 =?us-ascii?Q?ZGMC2IuSE6kZsDffsGEwg4XxQLFXEfvrYk4U8FnmsF0wMq6YdlTwUpMjVTNJ?=
 =?us-ascii?Q?7z/It1e6wEuqcudqU7qUHhEQkD5Fk5moqJ9pAFFVwbOlzxcYUXIgnspJa50e?=
 =?us-ascii?Q?Mr+AiAnwVtKSsv5qEMuYKKuX+AheBgBLqqQ0QYyIeDO5KHIsaM9YdBY85lC7?=
 =?us-ascii?Q?e41Gwd5QOoqih675+K9Z6SxEY2Xi3VJ7xbfHYELiIGU5D8lOtOGXub7EEmVT?=
 =?us-ascii?Q?XUIAXnlWdt1ZZIyAD9E/lyNeZJsmSxlI+6FPtBK5ZrWgd3kLqhBnjdhvAHbV?=
 =?us-ascii?Q?7J8aIO0kQOYPoTEt0It0/H4iMGH9xIQUzP4zc1T0HeXen28fBl45Am9OLZq3?=
 =?us-ascii?Q?TBOSBKgsSKBTDUNlKxLLcC3E7WZZ7GekqVBWuny34o9lvO6gAy4rX7l0SzRd?=
 =?us-ascii?Q?eC8GT36fTo6m+7m0LpnZ1/3WXkAiQg+f1BOzZkVsUvjbdqwKqLstiQ9z0J4j?=
 =?us-ascii?Q?DnHKYRbiyMbdEHvzJtLHdk95ccz1oC+IBl5Ofom7Q6Gv6m6FSom8tvAk2v1V?=
 =?us-ascii?Q?zyumAYVvBFj1Y7Fq/85qHk7u/2mxZZUFwOjgXO5R3s2vQSm7Y0lM+3sbVoRc?=
 =?us-ascii?Q?zw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e352f21b-ca88-4403-9ffa-08dba291469c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 21:55:04.3540
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K4bQRIw+FlAlQ9pk6AGmZxqk9+jtiY/7iQCvUsWmKqS2gCIW+ZokIkX9cbTDmahsQBfkvFwLUUUUBBWeVGO5BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7438
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_145515_992159_AA886EB6 
X-CRM114-Status: GOOD (  23.22  )
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

On Mon, Aug 21, 2023 at 11:10:27PM +0200, Andrew Lunn wrote:
> > But, there's already something else at those MDIO registers (where the
> > standard PHY ID location is), in the MMD that the AN/LT block responds to.
> > And that would be:
> > 
> > /* Auto-Negotiation Control and Status Registers are on page 0: 0x0 */
> > static const u16 mtip_lx2160a_an_regs[] = {
> > 	[AN_CTRL] = 0,
> > 	[AN_STAT] = 1,
> > 	[AN_ADV_0] = 2, // overlaps with MII_PHYSID1
> > 	[AN_ADV_1] = 3, // overlaps with MII_PHYSID2
> > 	[AN_ADV_2] = 4,
> > 	[AN_LPA_0] = 5, // overlaps with MDIO_DEVS1
> > 	[AN_LPA_1] = 6, // overlaps with MDIO_DEVS2
> > 	[AN_LPA_2] = 7,
> > 	[AN_MS_CNT] = 8,
> > 	[AN_ADV_XNP_0] = 9,
> > 	[AN_ADV_XNP_1] = 10,
> > 	[AN_ADV_XNP_2] = 11,
> > 	[AN_LPA_XNP_0] = 12,
> > 	[AN_LPA_XNP_1] = 13,
> > 	[AN_LPA_XNP_2] = 14,
> > 	[AN_BP_ETH_STAT] = 15,
> > };
> > 
> > The AN advertisement registers are kinda important to the operation of
> > the driver, so I wouldn't want to mask them with fake PHY ID values
> > reported by the MDIO controller.
> 
> O.K, not ideal. For C22, you could just put the ID values in the
> compatible, which is enough to get a driver loaded which supports that
> ID. But somebody recently commented that that does not work for C45. I
> assume NXP has an OUI, and could allocate an ID to this device in
> retrospect. So maybe it makes sense to make C45 work with an ID in the
> compatible? And get the driver loaded that way?
> 
> 	Andrew

There are 2 clarification questions that I can think of right now.
Maybe more later.

First: Compatible strings per C45 MMD? Drivers per C45 MMD? Is there
supposed to be an interest in that? I might end up needing it (see the
problem description in the cover letter, with PCS and AN/LT block merged
into the same MDIO address, but responding to separate MMDs)

Second: Suppose I add something like "ethernet-phy-ieee802.3-c45-idXXXX.XXXX".
Do I replace just this with that:

compatible = "fsl,lx2160a-backplane-anlt", "ethernet-phy-ieee802.3-c45";

or also this?

compatible = "fsl,lx2160a-secondary-anlt";


I suppose it would be just the first one, but going that route would IMO
just increase the dissonance between the description of primary and
secondary AN/LT blocks. They're the same IP blocks, don't they also have
the same fake PHY ID?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
