Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87516CD4F24
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 15:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzz117fkfcEv3g2JcpA8jDaa2xl1ueE0hcIc4cszjzU=; b=NqwmJHM3h4zkn6
	20q+PR1N2SRfOmiexi94X55OtBQ2ZnZu6iTDq+mVbjlLGdgKAiS/1fe9aZmmuajnMq49o1OSPOXWv
	TYqN3rie5BQ/OfYFkYFq22k3Cl2CFi4z3tEhQRGlxqiDDvb9Ecx8P8KscbHsgpNqjQDeQCg4jzvXD
	c6gz6KQGqgxDAxRn/2PilwuYW5+GYlA2MryG+BL/SO+XqejhPNbQFXaONKJ16v0bwrKDoqLyGxYu9
	fdVmuMusr9BfOjfMTA/7jFbGymM8npE0BAj2KoieJOAft6f4k0OmSMuJTcFK1+DC4ilr96F/xQU3i
	G3gdQIWMgTsnlJ0DxVdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNBEE-0000000325r-0drR;
	Wed, 13 May 2026 15:10:30 +0000
Received: from mail-francecentralazon11013030.outbound.protection.outlook.com ([40.107.162.30] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNBEB-0000000325B-2fXH
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 15:10:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wnns0y4kvYMaxv7Kkw4AvM77hgfxwnwb84UkHkDWaH7R69/ypWE2JzTW9TJFxHw/eIJ5ZnALWSfXGRy7Go+KgmatEWWVzhqgSBmYeJyUK7zCn/4d+zVR4n8JjLYra4WC3YvculbrGaJwlBav65u+C4xk98vZTNaYOf7048iFnX/e4sxIAvIBrLD7wv9k1chPikF1kp6sIHUpeZBQnQt/OuH5KTRrdCeL9KusJ//lEtDeAst7gdnP7u4lKHMO9uSrkKTiquYkYv6fbPzdqdfsC6hW+qxoafojoW5+PO9Z8wN46afbP/9zhUlfTF6nZitp9u+e6EnIeklHc7MGHbgy4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0KVccCh3yC6moFfe9/Ojko95Pin5bOEMU4L2MSNMdIM=;
 b=B7WBeMvGU3JuUdcwSR9a+p0JxvcYMG9VCocQ3zpMi8paeAEG4xMTwKS1QGEz82iR4nkkcJtJYLG/ln77XAQGLUo++D8+IDhOM1QsIr5R0aE/ozAJHofcRhhReF18Bp/y7JzKvVA3Jfb7XwKOKf5JiB0KBHyL18NjaoyP/MWLlcl0m/weSKkyyDqpUsymMFtKMIlOS9uy37ZSFH+rIAhxUx1KEU7UDv0hRnYk/UYrin1HaGQllFIgQYQYC3qxWYGJujiLTXeGrg6JgRGS12sI9dA7Vu1oDt3T61e/h35qW6RApA8y8wQ4LfDJ7MfC3o7N4tabGvmUwQ5diYIVcQSkWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0KVccCh3yC6moFfe9/Ojko95Pin5bOEMU4L2MSNMdIM=;
 b=N7M+PRsPfWuXO1jB2Tk/+37dIxwpAJXcOzBVGPWc86FICtkFMN2+n9sXSHnKzOUO0oRXjH8knvfFaUEe33zPFPrC4UurlQEJNKMYX/0ZYR4D5AgJxSb7CFefuW1kCZZz1aPvwhF1bVOZnmREC3mCL+nrcKqK0C8fFkIk4e+mC3hBKQOjey8ATQ1H1dXRX57ExsFZn65nvefrzLtPMyxAF/sZuFKGHHOtGJ2q4B+5JhCuEF1750awnZdH2fojUNE5QOHvdfWf45kbMNQ2G5su/yvL3yylYYTIO+v5G9qUUWZm6dtcojmU0agxJ8kKJyOGe95I662K/7OjZEUwQGSQXQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12306.eurprd04.prod.outlook.com (2603:10a6:501:85::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 15:10:21 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 15:10:21 +0000
Date: Wed, 13 May 2026 18:10:18 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rabeeh Khoury <rabeeh@solid-run.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>
Subject: Re: [PATCH phy-next 5/5] phy: lynx-28g: add support for 25GBASER
Message-ID: <20260513151018.sfyowih53zistli3@skbuf>
References: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
 <20260511150023.1903577-6-vladimir.oltean@nxp.com>
 <1ba1f688-9f68-4749-a18f-20ae91738ae0@solid-run.com>
 <20260513133721.huu4j3wksxykizz4@skbuf>
 <5cc008f1-d2c4-4a56-a1b4-6fd9bd470049@solid-run.com>
Content-Disposition: inline
In-Reply-To: <5cc008f1-d2c4-4a56-a1b4-6fd9bd470049@solid-run.com>
X-ClientProxiedBy: WA0P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::20) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12306:EE_
X-MS-Office365-Filtering-Correlation-Id: f9a79de1-2c0c-45d3-83ba-08deb101c026
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|376014|1800799024|10070799003|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: KR2Iul3oltx3rfGdto8wb00et+QaPuuYNTUNU3A0zHzB3cPj4RzM/VnCX0OS+rHxwQaLRcJEonugEHgcpDvgIilp2JfPorOs+24Sn1G2kSZQ++WGeix/C4YxpI7txM1CnuwPNdDX2sOQGqpKHAvKz/9YKasM9C7E9JEzHT9DFzERXv5mQykmODh/4QuSAV16EnWoop3PJhz4hPuK3JFBoWb7HTUkxP55vZNU6gMfb3sUU2R4M3EX7lG4+/4yvl0U7qch7JC1mutoaOdcjUuX6PC9nq3jIreagaxxGWlv1ob2uGlFPDW7QZyIXV2gQwOgyN47aYm0tEk3zstVJPCYZJMOtYAoUnn0AAsjpZru3fk0sLWWb4wXq2RgEXSWZzFHC57OnAcuFbVnz2/G6GA45uYF1klWGZr+Lg7xMe28iKKJuzr+3mjnl6TjiKjEDgCTHVdBD+DioAUbQ+nsTjRafEpv7np4no5N7GYmK74+yNEdYxZx6nb8bNMSRMYgKTqTs8Bto+OxFeM1UsJXJCdi/U4GuNOg3LtR92Vt1G6RjZ4fSdbXbPxA0bLvbMHOU0aE50T1PkMZICtrBAxqfPHu4mCcjH/v+zDysCXIPwMlG+utK+NCBqjtSJjlp0lAegQQKv0cD7jV1cvySjSWdltgw4Y11zchrpvsekGYIV/Ba/IaWx/K+L2JDIbqdJe/zYnO
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(376014)(1800799024)(10070799003)(22082099003)(18002099003)(56012099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9zT44bHkCiE17+4WfkmJm0tDSoPFGq6ns+N0ImjR+9RfonAO/ud0Np01MH8C?=
 =?us-ascii?Q?7np+Cs1g/VxH2Ynn4XYlHXtUAAnsLT09e/r3jnNeNweWBLOfii6OYq2oE59I?=
 =?us-ascii?Q?7dZoL9V0cb7faXBeGr5iz96xiypwMjal3t24kJyWa1qzicH1DM6/nbEu0ZS7?=
 =?us-ascii?Q?hFbFPC+T25q0uQyn2/Vt6cZljiZvJObcsX7Szmg7W86a7Gq7aj3zohGiiRbU?=
 =?us-ascii?Q?bu//apxDimhxza6ycpI4w8u6vKlraN8vvp12fFdKEY1ctU6hlqHsFNh9oX+N?=
 =?us-ascii?Q?fSTHgpltOabQTMTJIj1YYf1kQv2ZZ39HbDfbm7AQccLt5zs1hcWANNVny9VN?=
 =?us-ascii?Q?QQKV+sBUd6kjdDaP011/H1ozwiRXFvus5TKG7y7upfPIe+RQuBIDtuJ5A2CK?=
 =?us-ascii?Q?k3GavPKYvFJfUAg++2SrcC8tK+KcCT8xms8rV1AY5BioPBuhHaRjfCyb9839?=
 =?us-ascii?Q?kg5+5TN8H7mGg13Tb75P8thiUK9av+NGGBR7b1ZcOUBgyYcNn3JmBa6/8Sdg?=
 =?us-ascii?Q?b7sA9mQv5P7te9YaHsDMzIOfSC+SMdz4vxsTXImPrPCWhwY1PhF8j6lNOwZi?=
 =?us-ascii?Q?wPXPlos2ZCRROzLqZsb6OgmxiJ8M1W4YTbKpYSUEFoZM1A4FQe3PBGN0S3em?=
 =?us-ascii?Q?tcbpSvIl8TNk4nLyGS76oHODLuY6t53Nbg0TYtx+v1HtvGyqpaq+oFuK/tv9?=
 =?us-ascii?Q?C0BEFVF2QsnJlhReOTlXW3LeqoeGSLpyZtFNU5BtTDJlGI2Fc34P+HEyA+BG?=
 =?us-ascii?Q?/7cnsQtV8h2cxoXFehd1uiRoG2XJ6bNhbX+20N66Yss8ggpwHG9zAmI27F3j?=
 =?us-ascii?Q?DYx/srLVpDUukYJM10IGCfpSNqwSontdLGEGAWV8A1JWv2Rr5thQNcrFa45W?=
 =?us-ascii?Q?roQ4FAKQdnZyM975sAHRO5YwzAsaYLOHStDYfGsNDssDYqeDci/t/2taPL7A?=
 =?us-ascii?Q?LcU1hIY8DxORiwy2alelSv0mpyPpX3ONaK6zqKFGeUu6aiE07SJ9FBg7MKGP?=
 =?us-ascii?Q?GYHi9htPY50OQEzc8jisB7+WMGmyLDTDAAYupDZc2twYhnR9kVGSGijr2DNt?=
 =?us-ascii?Q?ldtG1qaD0FK+kLWHRCw16DzNifZV8pN3wfNhhfPVYSQur+DnfyxWd4iVGPeS?=
 =?us-ascii?Q?W3QptLmiI2rNccfX5DHbILpBv3aLjScZ/qoWyXAD0opbrozOaTtNNRO0heCV?=
 =?us-ascii?Q?nmykB2LNox8VbuPm/Y6KALHxzZthHJ2xN4aROHbSnTWGjU/LC4kaImxV3OQv?=
 =?us-ascii?Q?xOM2j5z2PScdlHhBrKeAFSuTzE2YoVHe4GsTwadzXfgEuPzJXH9ZBhDqbzcM?=
 =?us-ascii?Q?gaUB0lsFl3TbblJy+IJhYcPeL/VZidb9TSNo20C4ooyl8i1AWleuchZO4j9W?=
 =?us-ascii?Q?vFYSvpcjKrFUJbYMbd0UOKhfMWLouPDPHQVFBqhuwOPhrpAE9NwE4Dj8tbgz?=
 =?us-ascii?Q?v/KbVWuKe2ctN6ilIB7ex5Uc96srS5yRS3h54pQJI43gpN+Wb/kI95elM1nx?=
 =?us-ascii?Q?h4RrAdg6k9c/vkzWDN++bnrJwfmfXLn4FZcpj1uy3DUHLS/uAHWo0rTk147P?=
 =?us-ascii?Q?XMjFenlvosT4MwHV+R/XfBIoggcwCwkbAhxfWPOgrbgsVsm1ZW9tJg8oW5hR?=
 =?us-ascii?Q?N/BrqXYKFw32Yqq/CHoOYTp0H9Hrpy2VDuKfgHSF8Fmtv9soQqxMGNBe51nk?=
 =?us-ascii?Q?Tw31LCiayFy7SJjlIhJZh71UCks621qFGUqRKj1EJag1F1uyvUZaFwYg1oSK?=
 =?us-ascii?Q?QaHDU4f25d15J6MK/3AebtvTdQcG3d3VvSj0nss4gHACuJx5DkqDax4RAGiS?=
X-MS-Exchange-AntiSpam-MessageData-1: vwhDWa3leT7EjQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9a79de1-2c0c-45d3-83ba-08deb101c026
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 15:10:21.1376
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zv0AUXurFqhuEFPA7Dna7JiPHSclKOTY9yDEzVKmvYPNmUd/neMoJOYjsR4waAmbopb9MZU4r0oxadXwFZwXxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_081027_692675_39FB672C 
X-CRM114-Status: GOOD (  13.44  )
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

On Wed, May 13, 2026 at 02:50:38PM +0000, Josua Mayer wrote:
> With updated compatible string it is working perfectly!
> 
> I'll send my tested-by on the series, thanks!

Thanks.

> >
> > You can look at my branch
> > https://github.com/vladimiroltean/linux/commits/net-phy-upstreaming
> > specifically commit "arm64: dts: lx2160a: transition to device-specific
> > SerDes compatible strings".
> 
> Thanks!
> 
> I will probably have retimer comments i.e. one phy object ehach for rx, and tx,
> instead of combined - as we can not rely on hardware designers making clean choices.
> E.g. imagine two retimer chips, one handling rx direction of 2 ports and one tx of 2 ports.
> 
> phys = <&serdes_1 0, &retimer_rx 0>, <&retimer_tx 0>;
> 
> Not relevant to this patch.

Correct. For the retimers we will upstream (Ioana is working on the TI
DS125DF111), their channels will be split to separate Generic PHY
objects, to cater specifically to that use case. Hoping that all other
multi-channel retimer submissions where there is no meaningful
distinction between RX and TX will do the same.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
