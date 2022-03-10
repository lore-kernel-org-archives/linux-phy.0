Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F3DC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 19:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkF3D9fzLbRgogxFfMY+rukt1mP/LbCW37EDBTSN4QE=; b=G0vUJ27DVovI1K
	kQ4yRKD1vQUeufws+kXuoeAeh7ftoU144B41jpjmOrutlpBJWldzG4tEgwqVkC1T5Dslrq9qEzpn+
	/4XhsUNq9l1bCylxoULLKtGZWR52TtFo9IYewv44bA6aHm8EQlvQZYm6BdemtZcTpaokVcntpqaMt
	g/M0slUHcsZaZslRSORb13oc7/gOx/U86LOHpChuX85wp5EMZrJSFMf/piGw+4xSL5d4J311qpECB
	bBAULtSr+/tUfbXG91KC/q/FqCGhLq1r/4dALLdszvFdNoaEv5pWbR34tNSkmPjaXx6Ke+F+LFSBw
	ORDJ6wJczQiPO7UQdE4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSO7t-00DmHJ-Aw; Thu, 10 Mar 2022 19:07:05 +0000
Received: from mail-db8eur05on20614.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::614]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSO7p-00DmF1-UF
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 19:07:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eJLZjbuppDjKwybeg4pd8Zt5qk+dXgqLZse4IfQWbUioHAS3Du72F7Ib0ZEy5StP1XurZunqUZle7sDe/SDjLblH31q9Q6Hs3SHGHYapXg1p8AoCXLcZtNqa875ki2QKywTJHoeJjPWJgO6ZtHEVj/Lp3zKiH781HfET5yps2Hz3Ing4YOmYQQPYHn92Em+rZl07aic4/P3YE1kB1xpSy6q7sVGi9LFZEmbPa5GbNA1LRhSYmyxJ9+pPr+rx20fxyO5FX4qW7qBxoHtCJ74Q8AevJODp0F3KSUwSMsa35wLLv1yxOCBlNSorkuWPt/pHxAjTfYBo2WtiEXS55AJOSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYDD+glDZA2fbmHxadN13ftEs6/7OkYP9bNKBKqz6rE=;
 b=cUeTze4zbbdnEzfZCAufeLx/FO+gHy/9zIXevFEcGhAQ6VIk3hPuHfGocBo/z2bPoOUBegoayw0Us0DUz65Bja6J4dCPyq+TPmO7DCcU3XeNwAtHyUujrAheBKRx4cIXPMApQUcac8waOPeSwLTusc847OtDceTl24auOn7UXbKu9dVtVlWIPDtO3qR0ZO+hCNNAc+EtZz3kBcgrczh+rH57mZaMOVmHuk0O4CpxHw8ceH3GwHq6Nm2vSTAMbUY4ecy4+kJdHIMMdxHRRjCgGlWF/a2HdS+JLYcvE/xTOYBF+sxSdu3+HS1hk96FUJafYQzC4FFNu4As0+l7rOHWDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYDD+glDZA2fbmHxadN13ftEs6/7OkYP9bNKBKqz6rE=;
 b=cOlJYXcpAuuPn4htZOrb1f9DdnWFoDpXmlz9kKpkmJ2kypYm0yWHCsjs3v2mwSg8/R4OG15hyJgktxr/G6qW5ufNmpOETcnRLZmtNml2QEKNOsWVA5DdvR9+GxSERhh+t/2HaF7PJo0lIBVOcScVcrPhTyufwnnVj/G5lvLZb2U=
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by AM0PR04MB6945.eurprd04.prod.outlook.com (2603:10a6:208:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Thu, 10 Mar
 2022 19:06:58 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%7]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 19:06:58 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org"
 <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Hongxing Zhu
 <hongxing.zhu@nxp.com>
Subject: Re: [PATCH net-next v3 2/8] dt-bindings: phy: add the "fsl, lynx-28g"
 compatible
Thread-Topic: [PATCH net-next v3 2/8] dt-bindings: phy: add the "fsl, lynx-28g"
 compatible
Thread-Index: AQHYNI5zaHxB4i/pbUitMandv5pwdqy40/SAgAATuoCAABM7gA==
Date: Thu, 10 Mar 2022 19:06:57 +0000
Message-ID: <20220310190657.dvqlp25atdknipdh@skbuf>
References: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
 <20220310145200.3645763-3-ioana.ciornei@nxp.com>
 <a32fa8df-bd07-8040-41cd-92484420756d@canonical.com>
 <Yio8L2X0Wece2Uxm@shell.armlinux.org.uk>
In-Reply-To: <Yio8L2X0Wece2Uxm@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 201d905f-fb49-4c29-e052-08da02c92649
x-ms-traffictypediagnostic: AM0PR04MB6945:EE_
x-microsoft-antispam-prvs: <AM0PR04MB69457132578B064BC27DB8E1E00B9@AM0PR04MB6945.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zyB2MOM3FR7FnsYFACyXsq2UYaGrcjov7T9nZHLqEijhwXmEvYGgk2uz4Lp3j14stG7zYw4HERjCYy462zBOD5PHk7wlhJtlNpa1WB4SOnwkuQA+f9++B2/4Hotv60Nk8nqz88jmTLfuQhweZ0xBR+E7rGwN6C8RZyW0CbPCBsc4y0fxAZXv0PNR5ZMJsmk0mIpKFZxL3mThGdmRMRfHrUCMtgFpRM0ZrnqggnpJSOQUB/sofmVM9MF2KSuRc/ByUcSTXh/C/Fg5YellXf4OMUjvJbFYhzTcpnCdTJLETzZzBEfn7Dc3gLvioOJyAhqij5E3T8EJZDvq47a76xvWPLfjVDIbwryHVuid3mTxZKx3n0cOfAfVFlzxc1quE4zGXAhTQ51lK4l5+JP0bk4mW+Ok8yenXd77cSmh34dSMTN1zI6loe0eun4rfgnfZpUqEEedAD+lEymgCgDFt2bx8w/bKNxZJm50DQbVgsyabAnWN/O1zeJ3lHE/M6Pc2GQuyFc779w3B96Vft+GX7VmA2KzuPfSLEaij9mOPDy8Lw+rPSpjwp5BqoSJ+PGP73nq/f58RGVOyB0PPWclwTYe1H8zOXY+ClLDEvV2lbhvFIAZIAdQ+2svXO3pFetH0DSQy+Ry1gOADZK+swyher/aDPzDypU6DMknzfFnJHbhQstzf2GQEJSbaN4Pf+P6sg6p976H7Oc7pxDkqVuO2MBTeA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(5660300002)(38100700002)(6512007)(86362001)(8936002)(33716001)(122000001)(44832011)(7416002)(6506007)(186003)(1076003)(26005)(498600001)(71200400001)(66946007)(38070700005)(4326008)(76116006)(83380400001)(2906002)(64756008)(66476007)(8676002)(6916009)(66446008)(66556008)(6486002)(91956017)(54906003)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5W/l0jIjRDiTrerMuqnuhygEEMYlTxuF3Fm3uoC2sEARrX2yvphOG6/rCDM1?=
 =?us-ascii?Q?Asyi/FjwoHfVUoV5taSS0AcgEYENvrX8unxSrZO3N/b0V2hVthgZmE4e0EoR?=
 =?us-ascii?Q?Cktez+tWBVYYVEhMSX5+Vu/eJroNpRBaqE6N9JZIYfo9RS4OyQT4j5b6H8mR?=
 =?us-ascii?Q?sRvd+0xmPYEe7kM6bNis8mAf2CFVtsYX3+mNleyLE7BEfL0heAnneNYE5s2t?=
 =?us-ascii?Q?QBxp700LuCbDIojrHzevZHCgbh3Qz2qKS0il4NBYAYWX4UeGF/Ecr7f8dCWz?=
 =?us-ascii?Q?CtKpvSyB0KcBqblCTkIO2aXOQRATmUsW9INsQJeYVuCJPMHk/tV/c7/gYmNG?=
 =?us-ascii?Q?p/wveutDQ+xuBulLgbRE1bhy5kuBUa6dMgLO0XoL23PVnJ1incv6HuHAT8kv?=
 =?us-ascii?Q?MXu5froNlZA4xl6YCbc5tpovB9gNo7K87bMsNLA1C4QQM4N99ExaPzMRSl8o?=
 =?us-ascii?Q?lrlaj2K3ZcZ2Co9BfYJkHy6GPE63aZrDJpzUqbHvBZQq5w222vNvrReKAnVn?=
 =?us-ascii?Q?P3SW7usCYafKvlvZZEhbdvkHlR5mJ/oXkU5u4gaZPmmXFqyctFauuBPeG9hb?=
 =?us-ascii?Q?Fqjc9M/v/GfCx+Qgy7nJqxTvFjSqrMBEyzTkZzy29GiNFzPqgBWrktjjm+XT?=
 =?us-ascii?Q?+dekz8vpqB4ucYzFd5A1xNOTW9HQ/qXxFbMSccqTQAWpapdOJZ4y1LggSfEp?=
 =?us-ascii?Q?mLQWBF8cXrS3WVNhtWiJJKNNMPDyzRhUgw9efietA835dWVoOOk/ZZopHLR3?=
 =?us-ascii?Q?bQ52Dfy12KJTmO2ItsAhtXCP3/jNr+KYBMdiRiuTAnnuYpsKtiv3KM9W/75/?=
 =?us-ascii?Q?N9U2qpFAWveGEa9nmSdkNYtwlYC2tEAh3zyU1TQURXTjaG/9+qE4W5kQ5nLd?=
 =?us-ascii?Q?YrytcxzIfE3l++7R/62kUQ6+BX+8MoqHaIyrzlGuPUxos/jeJDTN68kkhP3C?=
 =?us-ascii?Q?Xghe0V0nJeh4TVEw60h77Zbe54tNh0a0PAbAbz4z1tvCz2F2MmZzxp4LaGPP?=
 =?us-ascii?Q?WbEexMk1BmM/UJ0kbejJjONhVmK2WsApbMZOezFY1XvlUD87K85b9/ed2jIW?=
 =?us-ascii?Q?KFDlP10939l4tO56qmIV88vHdAakbdOPOWuZZiMtZ6SnIFTy+3VwHG6kEJPw?=
 =?us-ascii?Q?8bhEqyMDKhAal+rM3/G3oU0bSm0AUnU0AFaborct7FVHAv1hONspAqouLOQ8?=
 =?us-ascii?Q?yBLlGkcTLWuZV1f516jYXTLZG0KkPirZhXfDoRkWXQ+NnbScmL3LdnG9AXXi?=
 =?us-ascii?Q?jg/FILDVZWhHA33su+LTalIPr8aWoRuaugsjZBjm2/p+RPwfct0gxCidRu3e?=
 =?us-ascii?Q?T5610Wz157Md4YMxcdrskwlyGYwIjV0HcGlpMLu33k3GrbzU1ITVRAsBZn3M?=
 =?us-ascii?Q?M0tTFYb8eQqv5seNiB1Hu/Fnzyb+Q9m2nG/QQIV4mRFy0yey3YW0rpBg5lC9?=
 =?us-ascii?Q?VGNIHZwfE2cQWujJAxpgLwKcAVHHAlOpBNcQsnQtgww3QJ8eXpL+3w=3D=3D?=
Content-ID: <F9D52F26FDD46D48B78BB059DE976449@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 201d905f-fb49-4c29-e052-08da02c92649
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 19:06:57.9779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JYKgHVNg9XtpvkZinZF5u7y1XELn9R2Nhw3iZvWJ1Rr17ztRQ1TNczPuRAPDbuG0LtHA6e2A7gTz2ck9o7uvUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_110702_083731_19AB18D9 
X-CRM114-Status: GOOD (  18.53  )
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

On Thu, Mar 10, 2022 at 05:58:07PM +0000, Russell King (Oracle) wrote:
> On Thu, Mar 10, 2022 at 05:47:31PM +0100, Krzysztof Kozlowski wrote:
> > > +patternProperties:
> > > +  '^phy@[0-9a-f]$':
> > > +    type: object
> > > +    properties:
> > > +      reg:
> > > +        description:
> > > +          Number of the SerDes lane.
> > > +        minimum: 0
> > > +        maximum: 7
> > > +
> > > +      "#phy-cells":
> > > +        const: 0
> > 
> > Why do you need all these children? You just enumerated them, without
> > statuses, resources or any properties. This should be rather just index
> > of lynx-28g phy.
> 
> There is good reason why the Marvell driver does it this way, and that
> is because there are shared registers amongst all the comphys on the
> SoC.
> 

The Lynx SerDes block also has shared registers between the lanes as
well as per lane registers.
For example, I can configure the PLL to be used, the equalization
parameters etc by using per lane registers but the protocol registers
are shared among all the lanes.

> Where that isn't the case, and there is no other reason, I would suggest
> creating multiple phy modes,

I suppose here you intended 'multiple phy nodes', right?

> one per physical PHY in DT, giving their
> address would be a saner approach. That way, the driver isn't locked
> in to a model of "we have N PHYs which are spaced by such-and-such
> apart", and you don't have this "maximum: 7" thing above either.
> 

I don't think the model of separate driver instances per lane is
applicable here.

Ioana
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
