Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA8FCD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jINNJD5iZZ+eyjQDg8Ml4KUITnPi4D6M9bKunYrMYt8=; b=WOdky7KoUysq+j
	yMX04TurunMBNMUg+RXWLDmkF1F+GQmEEsbF8+VgHSqYB6Jw9r3kBOXgl2xkYmD1+vveqrPf/ArPI
	7+lOUF+SXg1FNctglmb1NitLsAjryxhMDc+Z7UVJcPuXOt/u4mDEXsAgCzUvWUKUebBnBpXLmQfJs
	w3mHF3qMSkq5aPdsvWu/9cd1Jr7pZrbSTKPX9rjVxymNpPItI3pA/sa2vg253en6NigT8/7kN844K
	yhlNfMSeoBFoxLE34Sb8YLlQ+lbtH7A7fbVjZQqrWdgF8izJtcetpHblYYRvxU4nS0S8/97epo1OV
	WTtIvnIJqaP6xFDec2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXczG-00000009FdM-3FyB;
	Thu, 11 Jun 2026 10:50:14 +0000
Received: from mail-francesouthazon11011062.outbound.protection.outlook.com ([40.107.130.62] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXczF-00000009Fcv-06zI
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:50:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mOIVQxoymMvy4bVSeG8cKgx7dovM59ADUbwPkpliURC2YOvU8tbKPw8gIHU6kLJvn8ENVf23IkMGj1zeuuxii2/FiU6jUGtrYEQqMOOOASwjSwwZh6f1cGBZAKW0nvxdCQv+XYW5U4vrOoNG9NhdxOGWVRxF2RGcG/BgD/jGoRLC56iUWWwIK7KTvqVb88+sd/YlR7Ryen8STt8yOgGNRX8gHk+kWDPk4TA8zWTfbPcy5P47/ojQrQbVOU9ZeT0oFx0T/goLySJ03AG3Y3mhGc7jYLNNF1aj0Z0uSwGqxKi/uUs+hTEKO7Ylt3eoYPUomkg/WVVFuqWC5e/DHXyJbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rQYqACGNcg/c/GKHz5kDm9JFZMa4M4f9I7U5mJEkSY=;
 b=tmEMF68823+V7VV/dqM2sOd5Piys4Sl1sLDK9GWiJXreo09olfwHxVslWNdpSZbp56/JZjY+bkDEZMm6Ad+lDOYEdXwSvOdqqWIRxuFJHpUgp18rhU3iReo8oT3bBBuCCdnC+4/owuIh4ILQwoH0kCBbZtH6Zgc3V9lQyfPfH+Kd+HjDtlwxNHYg+69xz366u7D7VzoE6rfQdWcQ65uz8/fKx8afbovwHhGIBkYizxjYD526FpJox25FoI51qq8C5m5sbkHeTnxS8pGqE2c44X0DMykTx3aAOW5zYSQkNTuh9gnEZsI9sr3mwTyxS7SscMuw1ihWQj7Syzmxqw6fJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4rQYqACGNcg/c/GKHz5kDm9JFZMa4M4f9I7U5mJEkSY=;
 b=BbfDAkd44NqZkCPWxzp7AhUacNxmbgwEoq2KpJZYzIf6FuhhlRPKLic3ePy15/mkznVdTAz9Wg6Lb1rC7oERDi9zzKz0ZqZ+zPy6HDhiuvyXpShmOa3yNr+7vO50vlHpu2RgrWP2toAOUcQgXAy6rAg6VQp/yaOGgQFYYU7IUydVz36jgIOCDKa/FlON2AUZPHINLSJwNks+jSOGNChLFeCWAHofikn3LXESCr7rKsnR5N3Mwvzr1wiY5BlUK9+Q2dha3EaG2YCjxS9VrM4+g54LH3LYJ5KA1Kj15mSj0iGry+4k7qZQyz8pkwGeM4VVZI3h75DsS1pyWaQp+5hHiA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by DBBPR04MB7561.eurprd04.prod.outlook.com
 (2603:10a6:10:209::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 10:50:03 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 10:50:03 +0000
Date: Thu, 11 Jun 2026 13:49:59 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 01/16] phy: lynx-28g: avoid returning NULL in
 of_xlate() function
Message-ID: <vzut5csppgvbfiedvxziwjwujuytwjjmbjwjezdtkljbhbtb44@kgje3c5pxylo>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-2-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-2-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM9P192CA0007.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::12) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|DBBPR04MB7561:EE_
X-MS-Office365-Filtering-Correlation-Id: 30ea1c49-c46b-4cac-bd05-08dec7a73138
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|23010399003|19092799006|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: WjtwqBLJqxHtrKQ2Ozyr63VFr2VNBe2X3zEbXldteIrtYSWQp+1OWZrU+4yCR3dRQJw8CeL1eSjTTXZp5cwswFhXuyO8yqLDCfl7mzj3Lxh8IHSM6C3bp0SDuELj0a5Hnhgx69u0tcAtyULuCv4zmSGW3wMUR+Tid7xYygk6qzbBQTMMkfvEzv9++aER1zooNCUvepOrVIU247Ge4ZVuAUiqDggCOnHOak8Sdjvs2mAnYe8IJMHqNtjmUwyhDw3FxFqtmh2BYgLUpd9A9yRe2N601uiT7IzQqfQtkEmDlBBk00pHGSUZ3/lBS3atbC7hxlSqU+nUDZtag8elrEksf/tuWVFCwvRlFUPiUqo7JJr3UvyBYCTkORiQqsOCb6okFIhTPUKlBsLRcVIrwxevi7ljkC1Wm1+3poIz3A5/Ki+VEi6wY6wjSIWNTZTpZ64D3jzYp9I9lmDT0Grfi2T9A8qyGfWPyxYvSaqu6FaNT4a9f8HU4xY2dsB2q35yaEeqXfmJuBGKe+FE2ToPLre9EsVHUlkTven+8Upqm6K+Z7kI+tAKxtoT0oTsG4FlEtBEeKesv3LltB39Xgc8LA4wH69Heb9PlrYmdBzZCFSUZFnpug2Bcf4kjFnJYY3XFvOluvaF0XznUWdNqYjZeekzBjNO5oglvtH5tRJFsHIjKyezWAdrgu6mCgPiu8Mur6WD
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(23010399003)(19092799006)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bCoprV53GHixbySNOkSvhPRaRUPJO7FV8iK8QNy/wFxXltM4anw8GUPi1dBx?=
 =?us-ascii?Q?zBrZOGqZF8KeehWQYiQ59z6bIWDC20XTFQ9sI/Yzqiv2o2lZO6KGixwv+odk?=
 =?us-ascii?Q?umyHkcK56BMofkCO37Tf+RnB3UPjpwn9Qixy05V0JsCt2qIf4VoXaCliX8WZ?=
 =?us-ascii?Q?74S4R60Y91GASWXBCdgARPSIKUHomP5wnq0xfEQyw8h8HSwdn/YTj8GssoOu?=
 =?us-ascii?Q?2huwN5j9kM9Ul0eenn9soJqC/MLeXtKK+NVmdCRiELV4HsnGeUZt/z5/XZFh?=
 =?us-ascii?Q?RafmFCMuFcERKOsUopy72DWkQKqfEm69YxakwvMtXgOxOaJ4P6ny97ty14bO?=
 =?us-ascii?Q?WMkaFlDGvwtRjl8rmo9Nv8tRK1PWd23kb32Gwx2RCaGOMEobj+wZ8nr5+nUS?=
 =?us-ascii?Q?hISntNxk8Y/w4+K54kvpHQFMHL/1wgkjKbQ7wVRHQKLxE+GNHnj/So/mGHw+?=
 =?us-ascii?Q?2Ln3tN8r5lhIC732dHsZNIG3KPug9FdG9B+OOGsXnNts1Flx2MBEXVMrH1Gs?=
 =?us-ascii?Q?GqDFmepyfUMl6+YYp3Zy3V0JaxqK9H8sO4O7DnIda+dQc1qVJ0xjDauNEbfN?=
 =?us-ascii?Q?Dh+LUbuCou+F48zbP5DUHMSZQaag9TZwWCjp0Dm7icFBjcnwtTjjQ6MxPyX0?=
 =?us-ascii?Q?EM6WDVEvIk3zPFvmQIhhlmMM38KAgF+xRelsDZGNtIeArmrtjdcPpl6KW1WP?=
 =?us-ascii?Q?E+MiAv8pjTeT76R/k8TKHUA3HAA5GHacwaU2VVaZBIniyjtllg4hSNfF2IYb?=
 =?us-ascii?Q?74uih6h8g/vjZQO9QrVybz2sEuX9JuJfP3pDbnojNJsRGMiqQ6bbkXz0rHCb?=
 =?us-ascii?Q?ZAT9ilJ7jLJ6gviMha30ipVK/V2pISI1hqfzX2zN8PDNee/dzOYOkAXMlrQi?=
 =?us-ascii?Q?pN1YR/4ZruEYsfl7HtUcKpLNLZr45SW47Tf5GXkWAhbL8ciLPuCGo8jcH/lF?=
 =?us-ascii?Q?LIinwmzoH3sQs8HbaD0fo+ZJeKMLRxtWzBiqWNEKEF1MruaI8ICB9jPHNMR8?=
 =?us-ascii?Q?3DJpK3Cu/VfVRFdDUJnxYvL4FqIwj4nUcPxiJTfu8qvvp7P4839pNAjs0djN?=
 =?us-ascii?Q?N/Pv9JhLz4kn+wNhgwF0d0C48XTMEgjS0h+mgrN4Yz/frKzQPLeCujdZdgT0?=
 =?us-ascii?Q?JvdFmLKtDkwhyzwAzJgrfwwvs7IBbxDLs07ueLCl1xUMEJ8HRumViAlYQLuk?=
 =?us-ascii?Q?ckE3w0qQe9CsVlesLzJvNW5r08DnPSVIDLnWMSIotS4gN8bTCcUV1wLahyNC?=
 =?us-ascii?Q?Q/lg3ON3Jr/pyfiGtO1M1HzkpddJPUdhh1HolSPN1R50Zc/MCRukKcUiomum?=
 =?us-ascii?Q?ufoDLQXALwTXwkzQfJMxZNWLteOz5ogeP3ENe99x4P3eXRof1QxyiVhXT5bT?=
 =?us-ascii?Q?9pcQL0hQ/27+B0IdKxJWD2TSN/DmA4YR48jorTNsnHfr8b6zEP3QtROB7ufr?=
 =?us-ascii?Q?RRIqopwnIdMRArxyHuvi3J3m7IzG4k0JMPbUdzcH2qzAnHOjKttmm2VIQYU6?=
 =?us-ascii?Q?xeWxYwO3lBUfNIErTRwY+1C5auEkeW8RzN5mQrN3Vn4jZssd0+LYeEWWUXjQ?=
 =?us-ascii?Q?nBu6fuLZ3BPWlJ1pq0IwEeiJ6tE5i3lq+AzpNHp3erOHLBQ8RwwOarN7SsAS?=
 =?us-ascii?Q?jsu0w5TaeFmHjN6KkNf8Jm84S58+CPRIcpSlmUPBSz/S30uQic9TV/GdqNGU?=
 =?us-ascii?Q?E+x21nJ9lwMVmTOD2Z4UW5aaCh4g8M6PBL1IVNIXNp5O9D8tsxQt3W0rtG6k?=
 =?us-ascii?Q?E3hL6dB0dg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ea1c49-c46b-4cac-bd05-08dec7a73138
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 10:50:03.3779
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lJ81FC5jRyGkP0XDzadP5DUc5GDyiuzDt9AOiE07Cy09EpOizfmRPYtqsZuA9gCLHWiwtVqoutjeDyvRgt2yaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035013_086625_C5501867 
X-CRM114-Status: GOOD (  10.56  )
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

On Wed, Jun 10, 2026 at 06:19:37PM +0300, Vladimir Oltean wrote:
> Sashiko points out that _of_phy_get() does not support a NULL returned
> output from phy_provider->of_xlate(), just a valid pointer or a
> pointer-encoded error.
> 
> When lynx_28g_probe() -> for_each_available_child_of_node() skips
> over lanes which have OF nodes with status = "disabled", the
> priv->lane[idx].phy pointer will remain NULL.
> 
> This NULL pointer may be propagated to lynx_28g_xlate() if the device
> tree contains a phandle to the disabled lane AND fw_devlink did not
> block probing for the consumer. In that case, the PHY core will crash
> when trying to dereference the NULL phy pointer.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
