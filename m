Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11F28D1BDC7
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 18:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26/+7qidQx+STfSYhNYRD4Bi3S+8OWmjWEj5m5GHK4M=; b=wGthtCuxO1DJAM
	ENzKf6YUJwMjg0yFWzKUbcJo7OfxcP243k63PTlQPhjHskZTZ4rHpw6tVgNPgyaW0+9SAZtqVAeF+
	COXdsXSayzP5X35BhPx8s0WeqOMpw4ggKRVItr+1y5/LlZVcpyVTnDxF3hv1WoGmTgj7cOSHo9WG6
	g+UtvgIn2MXZMm3skx3GcD+K62dsnOZF7bTBvmbiA3i/6pWratc9Cedq3PSQE6iZyraIvBcvIR/jc
	ubPSbTPSSmmbanlZeMnVs7GU1HsG21HfpqJ13cixWg1sgp6Qg+AAvGKbKVfqP95jtQhCE/SoSI1/i
	uSCcOUYYb6sSUoTPi5Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQr9Y-00000006ttW-2WDP;
	Wed, 03 Dec 2025 18:00:36 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQr9V-00000006tsQ-1hqI
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 18:00:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s+eLEuhTQFFuNfaFckPB6Zfw5cbjh/NpZa11RmRFJ/A2ZYksJCiYNVXz7+SYa0/Ht35vEdW+h2lIipdCR6DiSR0kDP4S7kSSsJNOnmNeREyCJ5CFjfTwV9Sbvkt4Ehv9SPuYUpCt4DkDvGsm5xZssIr8erSmRNJo7LRokoqT3U/CEb0KBkzi6zLP9JReXPDCiqNE4I248isAYCG1ploN8zwrNtWW0EpbkoacuX+WLOS3P5mpCwgryATOhWLsOuz9LlT5HGftX9oya2CHGuDfTENlKavMGBn8s2LUaZrfeSdUksZYcFu+9EjEDbRb3qzzeIgE8mEsGa2wBVZBWzKOBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nly7xzjRk1cbndgdWE5BvvrK3siYemgxOEnd+wREICc=;
 b=kT7z8qzz/fV0qghGCl3OAve8P02rYVVxmzsBvkmAGTdjTzsr/zXNtSVrMTJx8ptiDD6Xxvf/zlP2MuI6B8MyUHGs2SIQf5g0/s5VIGbYW8+WfdYTZ/PUDEmxwZBTenueDTziz+8GjlTD6tdKoKEDFte0RwSSHTjYvMUWb83MZFq/TX4hPays0wpZ1rxhy6VLqwmFybxkVIIV6lxyoE2tfOidzkGde0fpFZnvXcTEPxqCSuU/ko4pdnJ2k24ymFHUzwxL7oJqoYvLwUHEDaaPdC1OulXG6wXR3fKCCiB+q50V2w/5SmNSxpvyvAXryhTePdBTmtybdwMXiFfW86jeEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nly7xzjRk1cbndgdWE5BvvrK3siYemgxOEnd+wREICc=;
 b=lfvLrGfAtk3oPD3jlL9FDXU+5tNMICbqOXbNpVWuECAgEzKsdgoEg/xa0JHXQb0dsWjzTGqPDdqZl+g6AqrZiYzIjMfE8T2vaE/lAEEpeT7MAbKsxWbrm8X28lyOIZHFxRKy8Ug66szOTKr3iEDV8NDsQBJPU4Ecg7E9XYogWbsp4r+pkIi2CCZoA6O/xZa5F/5dIBo54z/5/6T5vVox4qc1skB4SyQsDGTAVRUeqcDFrZBFtxp6ZFc6z1D9LHVXuHiol6VpXc+xzmRVXRn9o8cX3de2A2vWLWP6yKtjRAGMoR3W4sCHrnFsLpu8+/ZJQJqHoLrJ0EbJd6KPcRgd9Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by DB9PR04MB8122.eurprd04.prod.outlook.com (2603:10a6:10:25d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Wed, 3 Dec
 2025 18:00:25 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 18:00:25 +0000
Date: Wed, 3 Dec 2025 20:00:22 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: Lynx 10G SerDes Driver on my kernel
Message-ID: <20251203180022.adhggfqgfj4wsoqi@skbuf>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
Content-Disposition: inline
In-Reply-To: <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
X-ClientProxiedBy: VI1PR06CA0092.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::21) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|DB9PR04MB8122:EE_
X-MS-Office365-Filtering-Correlation-Id: 033675a0-0703-4c6d-f95f-08de3295d5d7
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|19092799006|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PrjJhJubdp2wuP/szy/+dCRvvv7RTYWWETR/XpJfrEovRrKltcYOiY3oDCCH?=
 =?us-ascii?Q?ESk687CYw09ro032FXU2f0qS2G045+VBmMjtMw2FJ4UrYrCK/IwE/mWYcBiu?=
 =?us-ascii?Q?JHeUBwl/dNKSR1D8w0qLHsZXwDKGJdX4t2DdGcrh3W/tOWjcu+Ni6Nggqa2P?=
 =?us-ascii?Q?TmgKdeNWL6/fj6FuEnCw54GUUr5jUyleV0sgqGDf3X7wMGBUQWZSUXalB4+d?=
 =?us-ascii?Q?0rqsv5RQ2pkxbXcE0wT1OLB68IOiNBkpG+0BcKPesgoMEiO65QSrbBdXN83h?=
 =?us-ascii?Q?2zaI1VlB34RdubIA6XANIZUaD85AZtB0ND2/wKJtVDMYs3urSsJUpI9ARWRE?=
 =?us-ascii?Q?DSn7G7NcQp3HM/PKdSKpvK7L1lasg2JOpFQ2WhLu086kIaE4JK3z8JGHti3d?=
 =?us-ascii?Q?+ixtvsEi0szwuLoZi8WyNN04Tvbi4mnKqmuySEX1mvIIZJeQDdPtntvexEWm?=
 =?us-ascii?Q?rxb4cBZ81QwD63hVTp0shaqr4phcFNo+mKaRxhCZVw5QCTfaw0vylEVB8f6r?=
 =?us-ascii?Q?537BL4n4ZvDgwP1GkiEM1hoGru4/Mlt9FO0hTPkTzYpX7mCr/KkLOpqzKvf3?=
 =?us-ascii?Q?O/V0wvhvSzU5iBWcZfn4u+N8h2xR6VLmurLIYI9yUUC8Mww3SDummE2WIFP1?=
 =?us-ascii?Q?DHbHEJ5vYnOTuhQvWzamtfPnCLOisK1mVdL4jUNuWWnIpHpXt/EISKwQpu9y?=
 =?us-ascii?Q?JRuMQWnV35S0rwygYZT97Msai9qR6YyWwjpzlOA+qmCRIea4Z863FGLW1arY?=
 =?us-ascii?Q?OvinU5PAjzVDho85EjfWIhDdJp3rzEZ5z8XjSzO9nVnFMLXyIun/4uLHgOSw?=
 =?us-ascii?Q?nNHgw/T/vH/bZFpLG2HHgyx4sntNcgNAjf/pddG2wPLiqmGJFIU6BRO9oqB0?=
 =?us-ascii?Q?7j5+AXenYM49WZZIPzc42yM4AKTcpR5u3pW4YCV+m1EH3ciqd9d4Cpl7l685?=
 =?us-ascii?Q?gM3HVS9b/awUGaxyeRqLfqAXZpsvkjWIUcYBe6r26xtXY8S7s3mX/wMWp5q4?=
 =?us-ascii?Q?nCB2HgJ8VCV3wMYu6E3uo2Mq4mupVcKO+wpGf3x41EXqmE+aqAFrR4IOUDCl?=
 =?us-ascii?Q?YyE7VihQJw5TtcN3FcbSHv6E92b+fnMRfhaIJmBZwKwcLSoJm+cS1INbaj1X?=
 =?us-ascii?Q?ks1osKmV28rJtxt2ql8uw3pQ4PEtPnqVJOumtHrqfUiqm3ffjliModwe+bvY?=
 =?us-ascii?Q?8Hw+cAvFlMvAb2Xkk0AEDVCx9kmvQpbh93Cn2WxXzRyqneT1MBfAA6GQfeP1?=
 =?us-ascii?Q?flnoCiD2vmUGVzfv4sk1yTByGCU8eE9Fxdnux70BFcMfGv9wgqUEi5Svih3w?=
 =?us-ascii?Q?+RoSVtTuUuL5Bq6OwUuJ+0hvxPInwNEjoJPHyOHSEsSEvhxwO0RUhEFLkBZ2?=
 =?us-ascii?Q?TLi3Nx9mhwfy3STLbdZ60WKwUl045Hi/jEpRoaBeL6vfzvUAUw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(19092799006)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gn4Bq5n/Q4Xqmy4slYzi4EpwhRm+t5ukgmP8WVJlNxW8bIR72LiqWxu6w50T?=
 =?us-ascii?Q?TTncxbOHVBxEmZu6U9RPpCqrOomUpH1ufxabJd9+4B2gzeH72Es+2EhO9BiI?=
 =?us-ascii?Q?JRf7RTQDy3Ert9IIgpPtBaMGIhi3/aNfnHXFRLzj841RyTbn4w3+Vdabg3i3?=
 =?us-ascii?Q?mM2pVXvdHUkkV92hScUpry65hKZYXnvO3ZdS6VZ/pl1MD5dyfstPwo6a3qY0?=
 =?us-ascii?Q?2oPrK832jYqft+Pvlz52pUTuqKrN+m+E0mQeC1JyuVG4AkUfVN7Ln7ahNaUv?=
 =?us-ascii?Q?9A+9LGa/IGvOwPhvn88y9dRQ6eRqfJKK9xt4NkKvZAhs0q4SlbPSF8uvqDHd?=
 =?us-ascii?Q?Igs5qjWz05dYbi85ILB4o1h6flHTSuDJTuLEzPhNFP63RYzeU9WFpsKRlYQV?=
 =?us-ascii?Q?rbcsAouEb6XW7lO4Vi6MqwH4aoojZk7JKTuiOMhZQ63F/3cbmU4c69odlj82?=
 =?us-ascii?Q?6R8E/BfeDO+xjS/tyfdOjKHgbxbX5xObwcwn6Yx7L/Go93aFGRRH73liwJHD?=
 =?us-ascii?Q?rtrYcWTGu8UW7XXlGwBOKOr9Rm29U3GTSvfyVZO+uPMcF6f4sZcPA7BXg2Pm?=
 =?us-ascii?Q?Z8YVrsE4cPROJrY9yvxpGtossKJC8ibXy8ikUuPsx7sw1Qb1HSAuToFownXR?=
 =?us-ascii?Q?o898pLt7jbRy/KO0shG0a1/EoPtnSEn08W+5CGDwfti/VVuIElzEFSMtnT8I?=
 =?us-ascii?Q?yI6ZUiodgctrcpZ3YZ3C6EhsXOGBQhiQAa0XRnFb5qYlYYytvprN+cfyfE7v?=
 =?us-ascii?Q?4gxRxm4g521GHGnQmTw/nqoWk0NQBNFFVfVvev2083n94HUarmVu2Wr1g8Eb?=
 =?us-ascii?Q?4ctysC8yKsTUgwT2p1INi9PkB1zJTrcjL7RMLAMIt5rMG+CMaAOmvewcgZTP?=
 =?us-ascii?Q?Y226PLZjigNLNyN1YAC6w2OwluSAwpheSiGjI3JJAq/3/1i8SSt3VTDVzht8?=
 =?us-ascii?Q?AFgoYRIN5UIcRxsd0tYoe5LaYk3rwJCE+6t4I94xzBGNsMRzY0tXAbLorb9D?=
 =?us-ascii?Q?UyMUgZnss22Rpey8ehV7NO37c/+qxtanUvenSjkgegbnwxiVaTSXQSuaScce?=
 =?us-ascii?Q?PrTMtO59mxKBUVOP3Z4yrbRqmb6wpfDHU85vSxeNSQIcKbuNmMgyvz80Vmwj?=
 =?us-ascii?Q?r0GGivyqi7jgx5SJcoivTVei8of0khx735qwtFJ02qIMOYYXQISZ4LorgmJd?=
 =?us-ascii?Q?qgUvOHR5QnULLTFSDtzPGC2BHKrGAXh8t4YBpvwPwXGOooqu5PhXeqXonOPF?=
 =?us-ascii?Q?nGicFACdI+USMqsjNJAPGDO+faXU+JVF/P70g2q8RP5hVxzqxK4uJ8iVhIC9?=
 =?us-ascii?Q?bqIvbM+XEOdo/K+shNrlObtif+Nk9QoJC+ZBwKP7h975zWOT4ppOgK19yQu6?=
 =?us-ascii?Q?ddGOj3841qtS2HNeNe3NtaUsJvEYyy3nCISEmS4ACYTN67jFZ/4Je5xCPCIh?=
 =?us-ascii?Q?OVfU3oWnOZ2881jliljbXkN658qI4u3gHbmDlZkNK6qa65FU+r8lRXEubPC/?=
 =?us-ascii?Q?8MEPk/sBgQdejd7qE/dlKJUm+3VwtBc/N3hAdnnuBpGbekmlTkRR8S9yes9e?=
 =?us-ascii?Q?6bD1hz6nG4XIG8I26mdMAVrgZJYunmD7wAp7vTFt8l7GoLyy0VUDFKT59nYZ?=
 =?us-ascii?Q?3OPXyCFaSOcebj1Zsc18T9DdNqU/+/DxMciiSokac3iIxjAXsyVjgYA+PqSf?=
 =?us-ascii?Q?e5nqdw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 033675a0-0703-4c6d-f95f-08de3295d5d7
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 18:00:25.4049
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8RkoH0dMYRepBtnwsfkJXDUZpGtLOOuMqvtXJnqjZnbOUQjGsp3GpoHTRANRxK026dXj11GKDctnxLFxB9zqVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_100033_447933_3E9851B7 
X-CRM114-Status: GOOD (  26.76  )
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

On Wed, Dec 03, 2025 at 05:25:46PM +0100, Tanjeff Moos wrote:
> > Each SerDes protocol requires a different clock net frequency:
> > - LANE_MODE_1000BASEX_SGMII requires PLLnCR0_FRATE_5G
> > - LANE_MODE_2500BASEX requires PLLnCR0_FRATE_3_125G
> > - LANE_MODE_10GBASER requires PLLnCR0_FRATE_5_15625G
> > https://github.com/nxp-qoriq/linux/blob/lf-6.12.34-2.1.0/drivers/phy/freescale/phy-fsl-lynx-10g.c#L2273-L2298
> 
> According to LS1046ARM [1] SGMII requires 1.25 Gbps. I don't understand
> where the 5 GHz comes from. I believe I am missing some knowledge here.

The clock net is an internal frequency provided by the PLL for lanes.
It is given by PLLnCR0[FRATE_SEL]. I said that the lane can further
divide or multiply it using a power of 2 factor.

Indeed SGMII wants a 1.25 Gbps baud rate, and it gets that by dividing
the 5 GHz clock net provided by the PLL (PLLnCR0_FRATE_5G) by 4 (it uses
RAT_SEL_QUARTER for LNaGCR0_TRAT_SEL and LNaGCR0_RRAT_SEL).

Because we _know_ that lanes can divide the 5 GHz clock net frequency by
4 to get 1.25, we say that a PLL which uses PLLnCR0_FRATE_5G is good for
SGMII.

> > The problem is that 2 PLLs can't provide 3 distinct clock net frequencies.
> > So you can either support 1G and 2.5G, or 1G and 10G, or 2.5G and 10G.
> 
> According to table 31-4 "Valid SerDes RCW Encodings and Reference Clocks"
> (page 1919):
> - SGMII can be used with PLL=100 MHz or PLL=125 MHZ
> - 2.5G SGMII can be used with PLL=125 MHz or PLL=156.25 MHZ
> - XFI can be used with PLL=156.25 MHZ
> My clocks receive the following frequencies (on all devices, "fast" and
> "slow"):
> - PLL 1: 125 MHz
> - PLL 2: 156.25 MHz
> By choosing the right PLL I can use SGMII, 2.5G SGMII or XFI, which I
> actually do. It is possible to freely assign PLL 1 or PLL 2 to any lane
> using LNxGCR0[RPLL_LES].

Oof, this is hard to explain, let me try. The short summary is: you can
use the 125 MHz PLL refclk for both SGMII and 2.5G SGMII, but not at the
same time.

The clock net frequency is derived from the PLL reference clock, but
they are not one and the same thing. Their relationship is:
- From one reference clock you can provide one of two clock net
  frequencies.
- One clock net frequency can be provided from different reference clock
  frequencies.

The entity that loads the RCW configures the SerDes PLLs in this way.

It knows the SerDes protocols per lane, and their respective mappings to
a PLL or the other, through RCW[SRDS_PRTCL_S1].

1. It looks at PLLF. Based on which SerDes protocols are mapped to it, it
programs the clock net frequency (PLLnCR0[FRATE_SEL]) at the right value
for those protocols. It is a *fact* that SGMII requires an FRATE_SEL of
5 GHz, 2500Base-X of 3.125 GHz, etc etc.

2. Then, the RCW loader asks itself - how do I obtain this PLLnCR0[FRATE_SEL]?

As you say: SGMII (aka the 5 GHz clock net frequency) can be obtained
from 100 MHz or 125 MHz reference clock. This information sits in the
RCW[SRDS_PLL_REF_CLK_SEL_S1] field. If 1, it will try to obtain the
clock net from the higher frequency for that protocol. If 0, from the
lower reference clock frequency.

So applied to the particular case of SGMII from step 1, you are telling
it in the RCW to generate 5 GHz clock net from the higher reference
clock, aka 125 MHz. This translates into a write to PLLnCR0[RFCLK_SEL]
of 001b (aka 125 MHz).

This is all to say - when you use SGMII from the 125 MHz refclk, you
have to use RCW[SRDS_PLL_REF_CLK_SEL_S1]=1, and when you use 2500Base-X
from the same refclk, you have to set RCW[SRDS_PLL_REF_CLK_SEL_S1]=0.

What happens under the hood is that these 2 settings result in different
clock net frequencies produced by that PLL, incompatible with each other.
You can either produce one, or the other, at any given time.

In Linux we don't change the PLL refclk and clock net selection that was
made by the RCW. Doing so would mean powering down all lanes that use
that PLL, and unbinding and rebinding the Ethernet driver (because the
supported_interfaces mask will change, and the phylink instances need to
be destroyed and re-created to pick up that change). It is a very
invasive operation.

> > You are just requesting to support the 10G, 5G and 2.5G media speeds via
> > LANE_MODE_10GBASER (with pause-based rate adaptation in the Ethernet PHY),
> > and the 1G and 100M media speeds via LANE_MODE_1000BASEX_SGMII.
> 
> Yes, that is my minimum target. I hoped that the "fast" device can support
> all speeds, but it's not mandatory.

What do you mean "can support all speeds", do you mean the media side
speeds? By switching from 10GBase-R to SGMII it would support them all,
wouldn't it? Above I'm just re-explaining why you can't support 3 SerDes
protocols which require different clock net frequencies when architecturally
we have just 2 PLLs.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
