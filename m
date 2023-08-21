Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E37EEE4996
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 20:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K63WnewnZe2UnGm7FpDK2qvADVgTK0/YZArGcK6Wuu0=; b=BOXbkpb7fgfmMD
	IOyww0rsdn9D9ssbaOpl7pFXMXJR2mhH/aa/RurgQxh/VR182+wFleqDCwdsq4cKUYijhnND76Pt3
	jOZiYN/kUV/JnxmTgcJZ9GOsH8rj6jlGe+GgY2vxEg4evy1yZ5FM+zbAk4Ecxx4l7TWQZkV8KwH4G
	xXdJHKBPCvJWhj5lmnL2I8Y+zLt30OmQspi/YFJRsmNK06q/e64hPgtvG0UjQAbbAGbJw+1pyIJVU
	v/+/FBwBQ2mWi5nVnB60KXtvuptq9iG47SUbHhgFXcMFNSzriCoUAfrIEirl5EIRjHGi4bGTqRmno
	7dlhuOoNu54BOh5DxDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYBbq-00Ef5K-0h;
	Mon, 21 Aug 2023 20:34:46 +0000
Received: from mail-dbaeur03on20622.outbound.protection.outlook.com ([2a01:111:f400:fe1a::622] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYBbn-00Ef4U-0x
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 20:34:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9pmw4UnkBdb1advpTg1pR2C9qSKol7O0p66z99FbqFbzPMdBCAZDFch0Ug1tElEpCHcbr+QVaU5WZsyvZdtIoaZJGQ9FhEPC9wSqzLaDo+ZKKqphnq5p4n0hh/+YXSdtgMlMvF9xYcdTVrwFCBqK7B9r1NWvnnIn7tmEoB1SpaQwWkyCruuBeiSYZGfqFV2HxiZ4Q1R4/q7fUvBig/Wu2cXx4vGMvU9TxtI5Z6vp0dzoyhmPrRF3a+k19eL3iI/zuF0JbndI2V6X5WMNG7/zNmGMZNqM0tLrFFpH8s4kUWeNHOKCeex9gaRZxCxALAShnBQVKnE2Q6G4JS0AtUltg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=daK2MCjD8+Mj684cejidTMz8nggFkzdQn4Ly45xejto=;
 b=jse4qiTuA8K1pdE7iv0UEuMkbeOcYUs91rDzZTZfjNFu+RpIsYvTHyR9uzesZN0SFS7eNruZlHx33+RAFJmV9hiarVOMXIErafIr86gRn7nbySo1SCrD31OJcUVu7p0HmZUQzAMBjb1boxtIkb1Dfv6j9XMfHOYuiyazJL+otEkQBXcCQ54W/nObKtYCkwfg6Z8Y4uiEYrKlO85ErdWGvg1G6219TrbWMnhAzF4+1cRU45XrPThvxTMixtjk9YE4lOGtaae09+FZ6p7o5a6uFU7z2sX/KvL+IAOjBeRVlv7Kf5Be7xgkiNMcR2DseLT2TbNMp+Vhaqk15VfrxLYfuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=daK2MCjD8+Mj684cejidTMz8nggFkzdQn4Ly45xejto=;
 b=Sz/c8PBCCtK2aazWbjoLp9IbbJj1oasbWDcY+TzaCxVrybfEBorSElOSI+qW6XOQYU5R5az7s9JOedDnmGSARouXIaZZG5caJOujHkBTwsxgvXf6yv1cSQqLUbLp3qQHY9b8OtOo/tshuNZvp7jf1coPCxxxbXOdvdhLuuwaYGk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PA4PR04MB9318.eurprd04.prod.outlook.com (2603:10a6:102:2a5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 20:34:37 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 20:34:37 +0000
Date: Mon, 21 Aug 2023 23:34:33 +0300
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
Message-ID: <20230821203433.ysulh2bixfypbhsk@skbuf>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-9-vladimir.oltean@nxp.com>
 <20230821195840.GA2181626-robh@kernel.org>
 <20230821201146.hudnk5v2zugz726p@skbuf>
 <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
Content-Disposition: inline
In-Reply-To: <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
X-ClientProxiedBy: AS4PR10CA0025.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::14) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PA4PR04MB9318:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cd31f9f-5f20-471a-50aa-08dba286097c
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oS4nStR7vayb5qkS1v3t7EbNxWAWksO2nJFTVoVRPhDLn+H6tJoY1K0X2a2ecLryeNwry9jbl1LhP606M7zXEOlsSTPq/VVnlzpRWIxjOyhVrY2tKLM3eDIwPhFBTPigy9CXXvuUvYvUWRfugtyHA/rO8qdlh546C0ufv3vSURhhAN5nZX8gOIlQihFzK76DqD9u15a6ky/aGz/OQ2AIH+c2YnzcTMMaN4AQdV3ZOoRdSOYFjP1K57i+qQXX9Yxf8dSIwnNpR1OJhZh0b1UPV4/GkrUeZQjfPCXshok2IhAoMvuqAXMzJUgIQnw5RBrPGz6CW6+sljJNIm8ukeM9SiP/GZUaOeBlNt52O+vYnbDEWNyK8zQMzfcAsKXKVKekj4xtQ3B5Iw616L1a7f2w3O30bF0oxBiOOXbLsOF3g3Mca5WJ6jXwwxtJSHctysZ/AKuXCYxBJpBfVWJ6Zhvknh3Eqg8phx5VE2pS+VAyH0qvzc1P1hJQI8x6WpTEG/Z+w3xu/lscEeVZp0rIIS7CFzJryUGiHs7o0K8V3dIYa087ijP55/9o0FAfZWXvJelJ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199024)(1800799009)(186009)(86362001)(44832011)(5660300002)(41300700001)(66556008)(66476007)(316002)(2906002)(66946007)(6916009)(54906003)(7416002)(8676002)(478600001)(4326008)(8936002)(6666004)(6486002)(9686003)(6506007)(38100700002)(6512007)(26005)(33716001)(1076003)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F6isAOJYnmif7rfx2wf/sVGPdiilavJMQMexaU+d5mdxYa8KR7voSczKL73A?=
 =?us-ascii?Q?sUNCazMh/awdvlzA2vkWC0wk/LREhvbnb81YuC/RCaHfGFozOJuTcoA3ikV7?=
 =?us-ascii?Q?4fGIIeKCDAVz6Wy50vmvSxiufnyEl1+99QAfgDX3XyHNr+Jxao0U96KCvEty?=
 =?us-ascii?Q?TmDjC3rklTIK+S4Iasq8RwQzlqnUA6lF26N9dz8zRvdeWuB0Qhh6skk13FkC?=
 =?us-ascii?Q?7V2wvR+MJigdkyhdYlfh2VGuc/Y6HsDUG4mMyAaa887pmvecw9ct+ZauavRE?=
 =?us-ascii?Q?6nemEXMT2TH4Rjobkvam73y7cVzRHIKZNyYnJyF0Fz4CAU6fLqxS8ZIcriuA?=
 =?us-ascii?Q?ZB778DHnGdsg0UBBKhh9S41XPzoDoJLxsK3kFqnzMjo/Q7mkbi+B1Cx/11wL?=
 =?us-ascii?Q?5vKrEjD0SaPi/Vwc8stS/mkNvgsw+DBw10oQmzBcOnfAf2XeN4PIoMzP8T8/?=
 =?us-ascii?Q?WioQvrTVWQ4UNYJ2x37VMee56RrzVjBK/U97vOgP/pry/Bfvy5WUQeBKF9fn?=
 =?us-ascii?Q?3LNW8/PWdOEJuvcerWGxCs3dVYXO9U2jLfeG/k2HWkOSOl0LvJidLxiXHlZ0?=
 =?us-ascii?Q?zMOXgMriHMXeAipjKUSFuPUV/i0h7Ei4C6SeGifgr5wDuaCwG1dEe1cvbA5J?=
 =?us-ascii?Q?LiukmEfqwS4ITJMgafRHmkwNL9KoTKZ7+R7GE/yMpaKYQeb4gTceM6htbFHC?=
 =?us-ascii?Q?tow7T7ZFXlJHy+CfHSOnlMVCLg3+PR2/7c0ShHd8HuXkF9sD9Ufxhmfibmef?=
 =?us-ascii?Q?5ujmwY5Fok309j+5uTEHYbYl2A1Z24oy25HlSbjEziVF1MFLQB2lO3iy6QCf?=
 =?us-ascii?Q?6eNT7qHdGt1hU8IGKjRpOqFWkDw8kn3Q3bUohZRC8mNlSBBGeZoYWmu3Rr9z?=
 =?us-ascii?Q?0eyNcklDEoGBnbABuSMgvf8hpkv8ZWX0UIBl4bzFlKRxI4hDXh8HOpvT167X?=
 =?us-ascii?Q?OcNPxMm4pmf4FLEbDv+AO2cnHv2ZwXJBlPtD/kKPBEiIM3cGqdk+6/RSsK9e?=
 =?us-ascii?Q?l4ASvnKVGOq2YbV2FznE+Xguu3dRol7QQW9KEPdOCa2rK0SAmqWivvBP5Tw4?=
 =?us-ascii?Q?GQAoBGLTCBK1yd2DADEsxbqwzVM+SyyXzl66FNcxfDgS9kg2qLV8lMb8EsRn?=
 =?us-ascii?Q?EXeEVmOVO58ORq7BsZYrdOUKZoc2Uv1fFzp4xRhkK2Fyz3mW1GXsqkg8oq+0?=
 =?us-ascii?Q?iNFi8jfI97SdHWhAKkrp4/e/NZAjkyWFwahlfJtyOdcSmFl9MTMDmKpAbstQ?=
 =?us-ascii?Q?NPDkdCETm2Xtt30rE/nf02lmwy09I7XE1ItH4RKTytbDLTbprOAW9pJRV4rt?=
 =?us-ascii?Q?V7S4zBGfPAK42C1rUy9BG8tOyUeqyoGzkIgbrrQNaWAKabAenmbWFuFNLXtE?=
 =?us-ascii?Q?nHUSL5ZnKJd7szYt0xgAEPGvsu990PXcYTO6kDrLfNorGjKoTaHIqrVJLWmv?=
 =?us-ascii?Q?enGyrRCEsAkWJGDaEX8qsFL7eYTTXgYg34I/3xwuzWeY5tufauj2aOy9s821?=
 =?us-ascii?Q?mVCfOiOMQ78Vssx1rBP+tCaFnQylubIk09IHZ/AfPO24zxDY1/ZNhyq87x/z?=
 =?us-ascii?Q?ZmbSKR8URvzc9//jfVMBAzeRmj3Kdub2bzh7VuuuzXPvGD5z+Z3icR9y5BTz?=
 =?us-ascii?Q?Nw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cd31f9f-5f20-471a-50aa-08dba286097c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 20:34:37.3668
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SHHUC4NpFcXjF9Fc9vj5y/C9NnOzCHGYBipzq5mL2Vh1ESqY5gjgQGJ7SpTQV2KaUHqzbQLnRlzwXZ9x9vgYEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_133443_340189_0B7E93E0 
X-CRM114-Status: GOOD (  21.42  )
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

On Mon, Aug 21, 2023 at 10:20:43PM +0200, Andrew Lunn wrote:
> > > >        - items:
> > > >            - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> > > >            - const: ethernet-phy-ieee802.3-c45
> > > > +      - items:
> > > > +          - const: fsl,lx2160a-backplane-anlt
> > > > +          - const: ethernet-phy-ieee802.3-c45
> > > 
> > > What's the benefit of having ethernet-phy-ieee802.3-c45? Will it work if 
> > > the OS only understands that and not fsl,lx2160a-backplane-anlt?
> > 
> > No. The "is_c45" bool won't get set correctly in fwnode_mdiobus_register_phy().
> > 
> > 	is_c45 = fwnode_device_is_compatible(child, "ethernet-phy-ieee802.3-c45");
> > 
> > With that bool set incorrectly, the MDIO protocol cannot access the device's
> > registers.
> > 
> > > > +        description:
> > > > +          Some C45 PHYs have no PHY ID in the standard location, and there is
> > > > +          also no PHY ID allocated for them to fake. They are identified by the
> > > > +          primary compatible string, plus the secondary one to distinguish them
> > > > +          from a raw MDIO device.
> 
> Could you fake ID registers? Is this on any arbitrary MDIO bus, or an
> internal bus with its own MDIO driver which could trap reads to the ID
> registers and return well known values?
> 
> 	Andrew

The MDIO bus is not arbitrary, the integration choice with this register
layout is specific to the LX2160A SoC, and it's an internal PHY there.

But, there's already something else at those MDIO registers (where the
standard PHY ID location is), in the MMD that the AN/LT block responds to.
And that would be:

/* Auto-Negotiation Control and Status Registers are on page 0: 0x0 */
static const u16 mtip_lx2160a_an_regs[] = {
	[AN_CTRL] = 0,
	[AN_STAT] = 1,
	[AN_ADV_0] = 2, // overlaps with MII_PHYSID1
	[AN_ADV_1] = 3, // overlaps with MII_PHYSID2
	[AN_ADV_2] = 4,
	[AN_LPA_0] = 5, // overlaps with MDIO_DEVS1
	[AN_LPA_1] = 6, // overlaps with MDIO_DEVS2
	[AN_LPA_2] = 7,
	[AN_MS_CNT] = 8,
	[AN_ADV_XNP_0] = 9,
	[AN_ADV_XNP_1] = 10,
	[AN_ADV_XNP_2] = 11,
	[AN_LPA_XNP_0] = 12,
	[AN_LPA_XNP_1] = 13,
	[AN_LPA_XNP_2] = 14,
	[AN_BP_ETH_STAT] = 15,
};

The AN advertisement registers are kinda important to the operation of
the driver, so I wouldn't want to mask them with fake PHY ID values
reported by the MDIO controller.

The other option would be to somehow make the mtip_backplane driver
remap (and thus, standardize) its own register space as phy_read_mmd()
and phy_write_mmd() see it, but it's not clear at all how that would
be done, or if it was done before / would be useful generally.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
