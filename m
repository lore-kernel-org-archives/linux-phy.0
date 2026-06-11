Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF87CD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qht9FT3ay1wjPC0c8DmqA10jr/jQaRmIITxAVSLbFp8=; b=aOUC/uIkHXzc1j
	DutsAiv5D8AVx6t/pqAlwFnqaUum18OUkvN0Thq3zdBeEbGAJQAcMHAqwW+eZKBHJg8zrr7siWfP+
	ziPMf2z+A0c4C9P1dKbE69n8V7hHvBZnCvnOwFWsx9XI99PCXAvzuUKYg4vdyQCP8y3pE8APwBJ7E
	40ErC6yX/yh2ovfmIjKY9ARtFgB/BXIJqBISEu6WdAjP5Vz8bXdcoP2VcDs7WTMsJabk382QvGXB+
	RTIMTm4PExwtY+t+V/GS9EUPZxWc+WkpY6YkHs9k+5Yp49HqIr6NBHN1ikDUYbf/vwaeHAsL8HxpC
	SECHL/BY7SpbMeSouJmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd6b-00000009GiY-2CSj;
	Thu, 11 Jun 2026 10:57:49 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd6Z-00000009GiD-1QYX
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:57:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GWX5/iDpD7k555hjzI5xtaxupBZSYZC5r2JMckHkQTaiy0ds+CSOIKoxxTtTPvFL9olj7B0bAjWxcckefYWIDhcw3HW1iJFsQ1yEMk6dY1ar/++ssB+a5Sxr1c97Osi0+MilVVpDD5StA+vm22ofRxJlpjiIcK73AU+kUZgShOe8uVXma4ICnEIZ0pff5Wa9i8QI/uuC4b2EK04rmXIMYo9hwP84RJFOYwhsGPHGcPO63Yt8FmFaUZfeHWzek8kusuZIkeeGQQMWazKEAzBcnqHdwGRVgzhRX9Z3dOQc5vfJW9mGwXbsglYXLiG9w4cXmLNhpykUL4Jd/I7F4gkavg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N6TGZyY7sMhaCy5r45B5wiuJkIFiPGh8UemhOayogKc=;
 b=OpzlDjyU/7t3v/Rz3xipJmrQAUIMnEObY6FkwTXbX+Iq31jL4GYJge65QJq+9bYvge2hSbZPnVOmV8FwvpnwWuxWdDcg06orWXF8hQ0RybghNBZ5K7uUxiM2Kk3OJQm6eit85z9Ji2Jgdwb5u+XabVdjxHkzpiEy/KzRATMFhrMukjgCXE4wTxJ3oZE9FlJuTRlfirRPePGa3lg1SpblgsGNmnZdXZ1pfJ1TrHBllbJogdCKDF3aF+1ddze6N1Ty8ZvuEH16FiB/1ijiqK1/hCngEHhCBgoM1QkO6AzGEi+LANKymXPVyikdqL+mu42M2k0ri2I2ILBZJ6HgFlbk4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N6TGZyY7sMhaCy5r45B5wiuJkIFiPGh8UemhOayogKc=;
 b=YiUsJSpdIIpgc5N/VhDmtxjBUX/4JTJ37WKGm1sT4m1hB/5TlB93yX5wwtSvOkOUvNXJbmD8izdZUwcrtVWOgill/TLYBT9tuLyb00N91UBMGwjWfves6c3Pwv80hDJNVWPvo6cAOd+xMYVTdo+/uYWoLuVWDGlDqX199c6RArhO/JaeyUbrIfa2Z+4u2JTEu7sjm4EspQXwTXsXDVmMEqRNcN9+aeJgQje+biTjxk5sG/wAh6IJHtE7t/NsGrvDE8l8SIAvC61/BkuVM8jQn+I3B6BwfMHtfwwKUXhlDuwvo/FNftdth4h4vvtFta6TbaWLaelnv28sATv+tTqdcg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by AM7PR04MB6951.eurprd04.prod.outlook.com
 (2603:10a6:20b:10f::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 10:57:42 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 10:57:42 +0000
Date: Thu, 11 Jun 2026 13:57:38 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 06/16] phy: lynx-28g: generalize protocol
 converter accessors
Message-ID: <swpglelmlqhrm4yx3b5ku7fnazmu6ztyv7s5tjs6vcpseidykk@auuihj4zppak>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-7-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-7-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR2P281CA0120.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::13) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|AM7PR04MB6951:EE_
X-MS-Office365-Filtering-Correlation-Id: 85bf4889-fe9c-4658-3acc-08dec7a842aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|23010399003|19092799006|376014|1800799024|56012099006|11063799006|4143699003|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ykEty4g9sBMK6AY5fptzSivdx6Fcve6G5RNsb1+vRJ6TCy1J1x+Qve/Jr/EsNxR4HMvCkvlzwvWGHmrnchfYOUGntXLawo2lUYqAx38eyTMAUIsnQMskXKZx/SGS0dZK8+TkBiL2DcjlW1HcKTFCMQz/RiR80e3QSbAVeXn6vXqIWrMDjZWWCF8TN2G+BuWzC+ASy12i4ml7RtImk1kscg7R2JYDCW4jwmH4R1CBGAiSa/OHSGm5XA6Y3GhvHnvxtTthm39JBcCJYLukzTHR2LeJiNdcd1P6Rt5aFcTDfeupAG7r6Qxe4TSQU4XN/z2jVqoszUVY+tbkGyUERHvHG7Qe8HmsgWelexlgBZFS/vc1pTk9umJO/+Jw7gnpyEcD4Usp+L7sQhKzesVCKkQ+doYv9GbQufjPne4EafOy4i8+2ekzYUNqMUrXwYmoZEe559iBLxN5u1VrBR1HLPaja77oM8A6X4O/skHCMWpZJJP2V16gjQ+ONOrWkI5G7GrnjcYDjK0V0V+R073vHnjEuE1hlo/pwewCV8erHKWWwcZvxx1JONs5/qk7cvEb3vCLypKGobuis3yQJz+XzFuowRG99M9fR5nEWo9xjOpC0mDmkAoYHNYjs7nr6Q4h8LinK67oXI5DQuzNj7WQnOlZMmMckhPbYi6ptV0EAKjMPnx8KVY8wUNekUaRhfXcl7dq
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(19092799006)(376014)(1800799024)(56012099006)(11063799006)(4143699003)(3023799007)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ta+4UYj+X/k6vDyt9rMU8hUNIDsv84MzOxiHML9PNXT3Vw2KeOqijLevO7g/?=
 =?us-ascii?Q?9QkaOpZT+sswupBpDthjj/+6Z+32UyUBnEVxH0xP1vP2ZnkeCN06q1ZGqOga?=
 =?us-ascii?Q?m6YSkBEW3MFE7u8lEZIKlm9gJuCY/kxOwokVfPW4iqii5JQqBSCtb4EzHD5K?=
 =?us-ascii?Q?BOlbz3hnjP0TOUFD3r8+TMXv2oBSASixWOMEyREEwOD/DFdNqmc3siGDXB1D?=
 =?us-ascii?Q?qUQZm0U0bIdbd48ZUXznIv6RyPxTBYK1N0EA11VhIZmSM+08O+gQtj1i6548?=
 =?us-ascii?Q?3ju4AeTjMVahbE7/B9v1OSSaNQYVkZQ3uSnSS6uwQB/NmwnCsjDEmsskMoRT?=
 =?us-ascii?Q?DTS5zQCNc9H4Yh7AA3v44FNEUjhxEFPRpqn4EZr0LXG7teWlY2APILD6ScZU?=
 =?us-ascii?Q?KbYJZPc2Zs338su07LfGO8EyYUoo+2+NvHtPa/CBqqbsoDBd6UzALlo698tK?=
 =?us-ascii?Q?YI49ufUBhw+WebXvTwhHvEtVz8U9qEPUwGw7zgEgfTpFGluNeMd+ZVMNqQW2?=
 =?us-ascii?Q?u3X0LBdqYlq83IqcIpobRpYjrygkNSvcTUpp+3wctVjFPynDKU4VOPcVgXum?=
 =?us-ascii?Q?5MbLMNoapD5aBPOStJ5ZBSQ0dn1QIBQD9U1o2obL1vJBe5FmXFEuYjDYKYGn?=
 =?us-ascii?Q?XnpxRmJDws/GPJVO+Q3VVjfw69NVJEsoXsSRvzhVgHeVCtAs9fpsSFoG7M1W?=
 =?us-ascii?Q?tPu7Bz6vIvyUgbjJNX5QLENJ8pVTLHxiF48n7oXPP9DlKzChuFBB5nO01cc7?=
 =?us-ascii?Q?SEAlqmF87JAm4jtcvOQYWOzPxbQ1OPSh+CmsAm2aK0nAFEcscOYJUzSi5oGY?=
 =?us-ascii?Q?ZwHHP8C2lUmbVKNNZT53W7WNIp6svHPe86OAFN8/ZIVh18cyOir3g8YcrUxT?=
 =?us-ascii?Q?5+rM49dHK881eFHn/6PqPg2LCTRX5ry6gii3TUA23WFp6An7eNClEeymUOoV?=
 =?us-ascii?Q?vZcGoMTDcsDuYVCOeSveVry9n0HZD0D+lJgJe3tzULi3rROMufElJtlhxV7k?=
 =?us-ascii?Q?xQu8Xkfi8x4htcjOjilaoXhl6QdbpDTLMaSZBYadFp1lK+Sl/lvjT9zhAxn/?=
 =?us-ascii?Q?0CMrwQyV5HTH1ngeI7era06VyhzoiVrH6j4YGQKnBqO5c0AZg5EniAzlvP37?=
 =?us-ascii?Q?OJR8IOCgEYAWjNN3vdZFvCfK+FQweBNBwu5YbK9MOkTZdf5r/2suk7FlvoqT?=
 =?us-ascii?Q?f+HUHpXocrD8axTjr+/d38DC81tHl1B60R7YDZ16rx2ciY1GNDpJP6SpXJmA?=
 =?us-ascii?Q?6zlpd6RF4RU2eH1oLyZwRGIBVtKfnN1sQqUCpIToh22D07gj5sODimAdvlDF?=
 =?us-ascii?Q?ukz6d4ffi2/OLm2HJOMkbG9HW79RIFVByDBvc3MZXGQ1CYjZ54SXPOj/Ubu9?=
 =?us-ascii?Q?kvBta/mzjpkijsBESg3FiQzpiWHzI4zIXKTdwf1pL62c26UMuBKnH1XP+xwD?=
 =?us-ascii?Q?aS4VVvKZ8E8T5pmU3q4KQ6jgpkT7kNSgQxXDEDNxI9dnqH2t573seMi7fPHJ?=
 =?us-ascii?Q?cOm0schxMmc56YeoKVF6ny042kriDalxH1Enye1xW7bafdNdRPoJ4FCR7JSI?=
 =?us-ascii?Q?KCqFmrLqJ689V2d84Xps2N3sjrEdb/qykDivHO/QpqJ0vzG9ZJ1mo0IgsKD+?=
 =?us-ascii?Q?NF4bBzENY8tsue42I7nwzyUy+vwhaUWqrSCDFhG9y09mir/peLtE3ZFhZSD8?=
 =?us-ascii?Q?J3HyphZeXTQF/gVu5cxxdvcxhpnQQvCkAHhXTjooczzyWyWl6NRwAfIDwi3T?=
 =?us-ascii?Q?yvQWweT85w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85bf4889-fe9c-4658-3acc-08dec7a842aa
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 10:57:42.1416
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IJ+9PxJ6HiurLRVTZQi8IH3ty3AtjFL6rYz1V7DuOtsvrIjQSjAFTZyxPY8wWdfLvDtBcLSvinwetHink6DtXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035747_400550_E0B2CB0F 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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

On Wed, Jun 10, 2026 at 06:19:42PM +0300, Vladimir Oltean wrote:
> The protocol converters on the 10G Lynx are architecturally similar, but
> different in layout from the 28G Lynx ones.
> 
> Move lynx_pccr_read(), lynx_pccr_write(), lynx_pcvt_read() and
> lynx_pcvt_write() from the 28G Lynx driver to the common module, and
> permit each SerDes driver to provide just its own bits in order to use
> this common API.
> 
> Currently, that just means that the direct calls to
> lynx_28g_get_pcvt_offset() are modified to go through the
> lynx->info->get_pcvt_offset() indirect function call, and similarly,
> lynx_28g_get_pccr() through lynx->info->get_pccr().
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
