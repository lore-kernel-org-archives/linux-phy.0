Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F1BCD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5dTMb/K+dw9IauH2zWRXt957c/dpZOppnmWHtVpB/w=; b=Qtz76E+gMhUNgr
	7+1oJZZrmxpdqMvYEWWYCTlXQuOkpGqsk+QR1R9ISnP36AyuBSfFYKCXtb0fKCDWI8CsZBnolHiQ7
	rl0Rl42JQCtea/F6U1NDwZKmsZMMlRooi+fDszD8bEC16zMOLibBR6UoXPqZUca4AIQP0DEoPNvjl
	YFJ3hB/nUMZAPkGQvDKlHZnRcxiL5x/bKkiZCMRHbQMm0mPnG+fJomc8OyfpVYXsb4h/g3htwTL9R
	XEGkpQHAArL2R4GXWXY2YvR/wbG1k1GJ3CfxT8TBSOk7jd1eA2zQr00uhW9Ozi3JAfl6qLNj/5Vig
	RYd80fqQS3EuTXUhgI8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdnL-00000009KRq-2xP4;
	Thu, 11 Jun 2026 11:41:59 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdnJ-00000009KRI-2zty
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:41:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=skEYL6zCnvFjc3s27ZRrUmvhjNqV5G7TGvUR1EyFBB9chIDruw45tVMSiG/pSGvXyxCpELa20/lJcDB6lJGd8KzVYANHInwhupaE5vfb9sIJq92SxHF/4KsPqRQwDwHoKNgutBbgxwxhrjnOqyzjdUr22T1v2tpaaowDhW6h86JPdi0j/r32cIUjhBzQrqoNcxwvbXp7sZMocODa0JrSoYrsipO1RZTvs7AopVNwL/OYj9OERTvN4Q//sr5RIUox7BgQEk3w3TE6P0ZLpsjfeINTq29I46aAvXVFY6tJ6xnd6XpbeWxzW1gYNo0jjcwmUX0UbDNEXh/od219HZHdIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wIy1t/Q12Ke7HOt1uE4jA88vZcEcLT0zeR5huJ8gNDg=;
 b=fZ7HyRndSw/T834RrH9q60vHS06jj9SixmMpWTHBOsrrrwPhczvAo6RKnJEeNAWNi425uKwL2iSrsulqXAQbGRXMRYR5/rKlok8HGhywu4PCjgizQrLWsoL3NUx3DcyWWStSqLfyrLIh3dJ+nPmaexlGyggWbBDZcsQ7y3Gu7IAkrGU82xtWZwp/e1QF/YIn7x1KV5hSVgp3vuSDDojVmcEkBJHN5Cd2mvB1em413FvRhFc6RA4C8PzIuXuDR2RUWU5j3ft9OG+RsbkNgBOUE6pD9mcHhbuXTZlebNMiX2ZNkcnoB+icjuqmN8mZOO7hAByHxMJK8aei4XqI3aK8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIy1t/Q12Ke7HOt1uE4jA88vZcEcLT0zeR5huJ8gNDg=;
 b=H+227w/yy6953iImrr4OiJABvSApG3kJAmBoxwpYb2QqJlY2lYuyZ/90/hSCv2C41TD+AZkLA+FnBsDTcIWcOX5QMROA1DnGqPxDLLgPzi7/m6OyLaLqIMGeyPTIuFaXq3YgasA9xHP9okWvdTpmdSqzVGJ1lY9+3mQRNmjs0FvJANZLF5R4IxNWBKvV+kEtDGErjCDZjjzmQRjaa5+TUJjR9WgqvlwR31wUbYYqMgCUx+oUfUo+xzNA/ZylpkPQqVnoFBH/NWSvstkUbZqczsRLEMku/xkNJQBJBqOgo86GPWtMGtlr/2EA9d3bHSwG+w7ne90cvZYzvWiCf+8ZVg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by DB9PR04MB9580.eurprd04.prod.outlook.com
 (2603:10a6:10:307::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Thu, 11 Jun
 2026 11:41:52 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 11:41:52 +0000
Date: Thu, 11 Jun 2026 14:41:48 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 12/16] phy: lynx-28g: optimize
 read-modify-write operation
Message-ID: <hd3msacrybnttfkrr4krtzaj6axz7d4fofune47zeqzqo7e3b2@4gpo2wjttlt6>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-13-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-13-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR4P281CA0281.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::14) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|DB9PR04MB9580:EE_
X-MS-Office365-Filtering-Correlation-Id: b4b93075-e2a0-4153-2323-08dec7ae6e51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|19092799006|1800799024|366016|56012099006|4143699003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: nRSOxU2ISNfA3YKVFEKBQNQWZjx5IzdD3T8vz7hH76SRAAahgZLaega6QCV4UTv2On4omL2ONEkJIxLPWc3JUU8pGcDiH/8qadJ/AhcYhQ4B3aMIcJ0xTMjvaEfh1cu++t1ltRVVOwrE1+LKWId51UyurA0y/2UTImt1KDVfl4RlF/L+EHocRQ8373ewZvwgAv2+iKfxbXYebkCcKiFjPiKMqhAhmhjYGhB8YvshTFsYkKC0iDLUKySjIwlHm7N5feJd8yVfQ1itrJ1VmWHVEvdSUM0OmLOMCZxuITNCFLXT+Fs2vbXql9eZjBRsYEITNRpEy6pYSvEDKcjPJfhWLvxTBBwDNz/dJeKvhGiTAh9c6Nj7qPdFvmrrOui8vYl83gnkgBxA0BafKKjgQox0wxu8mNNyKu6pVeZhSECtcwqU33mgSSjED7vZBnp5S5l8Af0zsae9BuA5lkEsk2r4ldvH46yXlLcBpVQlfi/Tha0jZUzlWTrZynIGQg6H+sqSx+8kR67An8wG12QimWuL7PtWTR8g0cKDLBEO6+NaPDS/dbLtyaJxdquxCt8bOq2u/QgctGAgrJilP5zfJA0Bn22pFehZsUNevcAJxuNTxp77hn3ogZQVhygjGSn1Ol+l82IVBVgUmffJ6foLtPDKUCYvxrTEA861G2jlUw8t0OBxIKRqE4hqbqWpYmRmUCEQ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(19092799006)(1800799024)(366016)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bEA34oB+vWYm/3DF2MV8//4DWtDUE77QgGTOQ5g9PxeJ5REUIhVosEo5g7QT?=
 =?us-ascii?Q?N0a/I3iWVwNqcKPAR26Wr9aUXyykPPOWUodWYfYuNeXW1KOD9Q6fhTOnVwGA?=
 =?us-ascii?Q?xpyZ0XWwFzplUcStve6Kwy50kXso//YRi/CFar6dwTVf2DHfePt5Y3APHNc+?=
 =?us-ascii?Q?cuNCz5W7dz++kaq62JnmOZ6QuQnPD4I3OprNi8/0QRjXsxeAygX9qRVuRjap?=
 =?us-ascii?Q?H/qlNn2yTSXvF4fD82GjBr9pHMmr9Uxhbt8FxNFz/hSHJVW3wimbNpSAV3Km?=
 =?us-ascii?Q?J/C/VHpSAQlTvVesdMWeMn6dF7Bm18NCIvTqkt8gaQvgsNejbPL8jMDJ2hch?=
 =?us-ascii?Q?14zMUxdWT45bwNJaYcI8rxkwRnyidn/XliOh4KQINoVIwo47uxyoKmXrdjt0?=
 =?us-ascii?Q?E9/cyknowyN54rA5A59UFlE9o5vPzmDgcXgThsCTD/6JxXVpR5902ddBHtc+?=
 =?us-ascii?Q?S0pGe0t3F2njlokTv/viYQKq5REOUduHF0aF8DEqQtraJ/fFGoXucjGX1sod?=
 =?us-ascii?Q?+QgN9Pvgsr33q4umKsoAzGyir2uVKk7MVAdfrLGDcdCcez0+1RSBAwp5ymCr?=
 =?us-ascii?Q?0i7qxg2jwABkT/CPE3muGEiMmjjpdlLkSVEMHdqGrd4Bjdcll+IN+KzETE9C?=
 =?us-ascii?Q?W17rGmTlp4bCPHjBhIyKVgU8zPU+wW46WlyHGiVMyw/+2haCQ2sAvnDUrb9u?=
 =?us-ascii?Q?3OjO5r3M5bMruAbaeq9sByo9U3gkHJXdNDRxF4NnJzpA+ob+2n2l85XylQs9?=
 =?us-ascii?Q?MyVvKlp0/6Vz0rBjSEnc149/0Ahr0QKbIP2QydAIUcSIf5ou063XW4C9eDxw?=
 =?us-ascii?Q?dzq6uZBDS9cdLRtXEO4C/Lmt8JZdr49x0ge4EISRXHZ6mxQbP9zl+NnhVdC8?=
 =?us-ascii?Q?CtkgF/IBZM1/ROSW1QVgFHHOzpz83OyiRJencwWc/BmW3jvWF1s3Cg0VnWjw?=
 =?us-ascii?Q?3MlvoHZxeVRrryxrdHXL7CiRtEPanmMk3sXwqUGWKHm0BBha3j56m8g/OmmC?=
 =?us-ascii?Q?9QI8Nhm+8UVMuhDRGWujfjoX6frjXgV7R3pjCvtleRUyY4l/g1vQFJ72d7WC?=
 =?us-ascii?Q?iZbdAjfcyyPkUumKJWCNOI8QNzT3EQRhHkQUJ0eVY0H7WQYSm1TD/BhTBkaS?=
 =?us-ascii?Q?NHs8hD33qklI+0N2dcLCpPhvPCKJ9+s9TdFL80w2R7t/bKq9Ups53/Hts7HA?=
 =?us-ascii?Q?dD8LG56pndiolAd8oHlaWymh8elaJCqwh3STYp314p3RSWqSL5aQn/WioGig?=
 =?us-ascii?Q?aEUWYhL7lKu5RInNpvFAj4sXQ7ijbO/F9ETAqrFn4xefQe+lh1qZ4U3Zr6xY?=
 =?us-ascii?Q?S/2IbHa7IrTCEvou20DzMtTvgqps6JhMO7QA43pgJgXupXcokeo1ZvivAsKZ?=
 =?us-ascii?Q?ICieFG+8EFQJsdbK79nzd7ePdSh6JgjArSQ08Hpz6ZLLZ5O3jxxkio7ze11H?=
 =?us-ascii?Q?Gy5JSLDu1qHrz9rFIIhnyt2dZtokkrIfUAu0C+gbGvzRxS57cJ5kEzBXNApr?=
 =?us-ascii?Q?6M9npQw4P2sY3mpFFnKMfxWa01pANuZLcZJ2fktdjXfgmPyPrXUIG3lJ2E4P?=
 =?us-ascii?Q?kNCM7vNKVUheDsCwHibaKSPqVdJ8TqUOCCpreDqnA6s+0rMtnOe0s6ruhY9y?=
 =?us-ascii?Q?EYggCvpSP+t9xBWwjaNg/ne5CrL5QQ43PKfGEEqk4vn14BpfIFiOE0n8oD2E?=
 =?us-ascii?Q?4jQXn5+bOxldFJs9fPyrC6GoHQC6VDEkWTACQSyoZyq3fQaOhQ1FVCk5P4kj?=
 =?us-ascii?Q?l++nxSvbbg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b93075-e2a0-4153-2323-08dec7ae6e51
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 11:41:52.3584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RAQR9tvMABZ8g2s319MUP8L473FSUsnAhZJ3Wb/ylWGe2GHiiQ0E9u0ngYnDNAU/FcFnR3vVGKksDJAFkkBDfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9580
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_044157_756277_59ED6DD8 
X-CRM114-Status: UNSURE (   6.85  )
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

On Wed, Jun 10, 2026 at 06:19:48PM +0300, Vladimir Oltean wrote:
> It is unnecessary to rewrite a register if the masked field already
> contains the desired value upon reading. The hardware behaviour does not
> depend upon register writes with identical values.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
