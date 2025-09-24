Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7004CCAC5B0
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 13:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiP+3VSjjZ7F9ZuZUPcpFc07qAPTk38qhZQUtL9Q0vg=; b=tkyZdi97klVwJk
	xqoz0DX1+f2NbyQ4vrqc9mf1xNEB2y1tgBJ2zIudh/OuMli22nLxMp5WouGqTSh36zi9hEnpjXlh8
	1U/+m8AmApBIn1yOYp2X9qRKwbTxlA6rkSYkuiP0ezcMBqubp9z/VN7nXoPhJAHh2DBFN+/BnRrDJ
	MqpNOGXT7MlUEgOXQ+gx3xvH4ejVqPLtpnjDJ8PC+aUXCLeyFkLTyaU4K4PHcLuhf0WVPFS9DajNb
	zpfNH0CiX/+DSqJs5XNT00tJxIFZ+lpuwDVuBZOsfGSa8Z1lgftLP5RcYx6ryClFC4pmQaO5HJ9Lu
	8RyZHrlwgb88IFvD3q6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1PD9-000000004So-0YJo;
	Wed, 24 Sep 2025 13:07:07 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1PD6-000000004Q0-1eNl
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 13:07:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hoRMFbtFafG+pq5HWRt9lTHCB2lj64WtHr/RSsATJ31eDwkyFS3WeCQIqOAPCYzLptPaIQHr9+rDDXxm5shpAa2GHiO4UfwQfO96PJfXQgfaBXJsOC0GlpTw88uxvN3i+/zVh34IV+3O5JSj/TEFb+9dkoDfeaTEP8jgK0edfk4JO6Pxn65+6dDyg4kfZJQxVksOD4KoQ9ELqZNlgAMffPJCni5ckI9bQKr9JILTTeOPoZoxBB5eFEJQuiUFtTu//+VEVm3deo1OHg4shavC/5b2LVbIhlsI7vuxH3JhbVykQCLUl+pxhgSKU8uxqGUwTqNBT19pP6KYfXfg83wrWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ymqj8QIdeKqC04VmJvPtOcxfD3O2cRYe5Z3otAd3sqs=;
 b=om6it0Ih6DIHS6zyKkb+Hka25iK9wfB4rEm/o+YRJkA1fLHdhYgg6hGDtRGl+a6WAABflxZfP7v2WIV7xu9vOgKD9JpKhQvyz1xezYPSoXoIddU8AzbNGDM2mK7AVaSHwfp+LUgkwtlK8TshhPf2ItsD0+Gfpv8x88NsYV8hhl2F4uabgNEkCtVgfPufJQtVpvBGU9l+P80qAx5o6c4NP40iglxAIhI7L6P+gQQlTcfhbtS7Vqm7pHu40hntBAhIgpUDMTRoFEJPYwnJB08z72aKBThXEXb+9gBvEwxZgjNL0o92BlvY9xqJHKBf35d1JFO9b93pgeri/mh6+87hjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ymqj8QIdeKqC04VmJvPtOcxfD3O2cRYe5Z3otAd3sqs=;
 b=dR+kYjkHyV/6qqUU3x8p+UKiRN9sT8xJimq42OPJB/XLgwZwj/qM+KPxm6nXwrvd3EAN1akuui8ritNqaYWR3rYMQXil7ql5cRocSnwwQVqBcufsrs9LdTwZbPJWCdzYCagAg+FEQdCczsCdtjWHOilY0d/f6XXx3BPE/xH/6V3Sy72GPccSKMePACAYOMw2MgxjP8I7GrjinDjmEoOSeHW+FNdqbNuPjRGONs6iuEzfReLloVwQha8wA+USVNVdSBX1pGIF4ni6DclA8lffo9dt2RmKvD7lS9ido95x8RsTnQNVYWvlmb8nHvOGAmUbvIivZw5M529Yt56jgOUzsw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DU4PR04MB10457.eurprd04.prod.outlook.com (2603:10a6:10:561::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 13:06:57 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 13:06:57 +0000
Date: Wed, 24 Sep 2025 16:06:54 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 phy 15/16] phy: lynx-28g: truly power the lanes up or
 down
Message-ID: <20250924130654.nnliddqiug5hkbsh@skbuf>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-16-vladimir.oltean@nxp.com>
 <e04dd32d-801b-4019-aa2f-95bf8973c566@solid-run.com>
Content-Disposition: inline
In-Reply-To: <e04dd32d-801b-4019-aa2f-95bf8973c566@solid-run.com>
X-ClientProxiedBy: BE1P281CA0322.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:87::16) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DU4PR04MB10457:EE_
X-MS-Office365-Filtering-Correlation-Id: c0df665d-8412-43da-a5a0-08ddfb6b3d85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qGlGVuk1VeV+Xi8S46puuJ+XrDSDjUcBBWF3ShisWkkiR60+l1AS3KyZAS/2?=
 =?us-ascii?Q?bwWZtX0soGloMg4sLHPjZmTelDexUa3jYMayAqjanZotQ/u+ohevSoQvcD40?=
 =?us-ascii?Q?egvEmFk9gYpEE8KpSmNLCHpX1/Bftw1zY1HCnuKCz3Qq6i9H2kC60tW9MqCc?=
 =?us-ascii?Q?EI68eGKljdITp0oILdLC43R1glRruSO/JCrXzZjIuSujn0RhZtIisABUhKRQ?=
 =?us-ascii?Q?9VSIl+/glYbsbIN+HjbrdfeSzo3KRgInXRqEoNu9VXCFzMJzupCi9ifCbKBF?=
 =?us-ascii?Q?9nv2MMJwg6YDMIxMxWV1EkfnJPhM72XLLueVRcT78QQZngqvYr3OOzNbBBq/?=
 =?us-ascii?Q?N2lLyIzyGocc76AXq1uqGr+RokHfnbEluqeH64zSmuxXY/6qHH61Ur4ZPXa3?=
 =?us-ascii?Q?NmHOADbaiuwlynG1szmg3BPXeEPKaUWn9AinyL3HSjh+SRQtkisZAEdnEoyv?=
 =?us-ascii?Q?R4S4rdlkRHjfNP0R9bBXwRXmlC7oTf37UjwzIRaP3LMOGZnCNuXDchzCFMqm?=
 =?us-ascii?Q?5nKTR84/s9k0Tj8qfaZPvHfzYSTCYyF7ybWx0qN/jUJXg6A2DK7GXeKKMFSs?=
 =?us-ascii?Q?11AKrbVO8OO0ctsi1KIIf+tRhJrgW6eZxIric+1TuedWoGWXXUdSwE8HhDDo?=
 =?us-ascii?Q?Z73rTMT4i8sutoBf4y8ClWSY8d09nzLv6dzOpU3BNWsCZDPXpaP2yopySJm2?=
 =?us-ascii?Q?dmPoXayBzqrMVtFcfLnS+KomqqqcnH9FKCnm1+YmjAXDi/Wuz2/lZw6/hWQK?=
 =?us-ascii?Q?NdjFeygx+LEZLFjEKjEl9+LAB+IR+npRmHMLEhvFnZl/969ocI6nq0x9YL0I?=
 =?us-ascii?Q?VVVoyjQSCSNwqdxrptrv15Tz/4s1TLf9uQQf9jrG1ETHx5bsoqIgE5fH8fNd?=
 =?us-ascii?Q?fDgtzkN5Lizj6usijZCdLhUkIGmlcasthtFQZY9I5KR2GAKevkTto180koVY?=
 =?us-ascii?Q?SP1Z95WKXkcSqL/bpQPTd2ym9O1+81dMBBUt3Vh7R9sYmAQJ44YyYK6NXOAF?=
 =?us-ascii?Q?qvG7PZZ9aweOfwpSa4AZ7i6CzlUYgtkK4IjTdFY3fxOndhXwYYRyP4AZaveb?=
 =?us-ascii?Q?jz/zjxamtty4tkDrLUaDIgVYKOEIYlMQI1cbVrWDYetbUIb+oZMquVmw96jQ?=
 =?us-ascii?Q?9ivxqsu6TAcKj232VF60/+nr9YLc81xD74Xx392KPPg7ee3IhBYUrEUtaUJO?=
 =?us-ascii?Q?USf0ZLjcaYgfg0OzJbZTkQyhVp7Wl1dXoFZ8EMOY2Ky8y2Azq5Q7+hihLhr1?=
 =?us-ascii?Q?rEK4UhVndHO6VRhQ0Ut5u0ocaJuhQST29GuIC6VPGesggmKrGaexmKi4tbyj?=
 =?us-ascii?Q?sPJHDRiYtlnYidgImysWUfOT9IB8TrfzrWDbhpKw/Pou1Pb143xauDTNKfZe?=
 =?us-ascii?Q?QmGrw9E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(10070799003)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kPwIS0+G/Gh64IdfCToD7CjbgRc5Tc+QSSaY+0WGhGZhdeP2I+uPKmaUXNMg?=
 =?us-ascii?Q?t0d4dLY6Wbrj8qnu0SX02+dHFu6s+K/ai2X3eqbi1FBhdNB13afEJbJSaWby?=
 =?us-ascii?Q?x2BlqyRn+ia71KsyNrC4Kmb2/+NBGMbpiPBq1LHBbBtDX5qB/QFLwVGn4cch?=
 =?us-ascii?Q?DCjSCs1Y4RzdkBfm1ucZeGBW5z8PTqz4yTEm7J9E5XjOF2LttIViZIjPLyyZ?=
 =?us-ascii?Q?H3m4uY2tLsTqLFJ8bZ7orRQnFOeOq3PVE3/azSzVzv+gJq3hwItnx5R3pROl?=
 =?us-ascii?Q?yT9exItGWsR6o+x1bjpK8TUgcDYURvyKo/D0Ndwrd40/My9wUyVABSeEnimd?=
 =?us-ascii?Q?oZduFj9pRxRRfdhwJ4ZW15o4B7/fUnfbnSnKgi5tlkriHNOJAHfLwK2SU42N?=
 =?us-ascii?Q?mh8TuIdvAVYlxFPEaccBaoBF8Ssxv6LEAqlcIjZgFH6B6xW1M6187hr0hm42?=
 =?us-ascii?Q?9J16DxBf956EUdujp3JBBmvxYfEl/1+LVBsKGjlLubJrOt22NP90gJH8uvdo?=
 =?us-ascii?Q?kcmdHJ1tJHvtfsw+86Meh2aupmzNNHFinLcDtcewEUw/A9tu0TpTyauaRQ8D?=
 =?us-ascii?Q?E4JPiPnhnj/AQH6WYLGAJ4P//zJ94meYW/V2BlhPuvvgqX1b2xzHUus9Iu9s?=
 =?us-ascii?Q?kjvj+bIgK4WqU4qScX+zJ/KHXrEjxeAlMwSWBndAPQPEJbV3ijuBwEjtTRjU?=
 =?us-ascii?Q?ucBPDsgcA8zkqBguhh94OopEkKhtsOHtZrCgmbBBOwZuVe5eLlV81RCTYd3u?=
 =?us-ascii?Q?7XsJed3KFrgMDHA6Eu47/PmQtOg/S+pIt8II+4WRahph6EUFJN1dvJQ4OKmk?=
 =?us-ascii?Q?5CPt7ToJMVqEgK9+yKiYYdTVCpOQNbNGc1Pk46/3kJETC1Q66SSx5ViHuHrg?=
 =?us-ascii?Q?Yb3cDFkFN0rIBOys6yPJYN7K7Yo9+qIN7WtmHq41p/P3mtkRj3imkW1yHq3N?=
 =?us-ascii?Q?wXa9NlC1YiHdeCLo/QaZ0xTVBKLWVTQI9okjzMr7UA+JU7TxWGjm8JImRB/V?=
 =?us-ascii?Q?95HVpPtRIhB8oxdGqM0TOm9jgeFgCfTbaxqzITEzpphpCA1zCCgl9Nga638Q?=
 =?us-ascii?Q?bGdQzTyeimQ/1NMHNDGwt1JObhANRa2UAPvIf6d4PVRZ2YUJNoW1jkxyLuiH?=
 =?us-ascii?Q?F0KGPLoB74Cvv9Cu9c5zkFqnM7H6DLrezIWBh/YZw6CU6BvUT0uPYm1qMvE7?=
 =?us-ascii?Q?IXMOLS0WumDBCHrr2XEz7DLcw29UX98+LdKRo2r4g7Z3U0qCOB2lrz1WlxEL?=
 =?us-ascii?Q?MMQsOG3aeUob1JoXaVrS3tt22tlXeEdtf1HayeECg0jkweTGkEj6Iqknsn3N?=
 =?us-ascii?Q?Dpcy1Ltyc/tUp7ElnXG0plxl5IwybcbdFlsxd9hE96aG2Rk5nqQftGbTMQxH?=
 =?us-ascii?Q?0LdsxPblZvIQPNb8wJ4r97gQ9VQxNC1jr2Gcx/THrrziZCCYX7p2u7+qa2FL?=
 =?us-ascii?Q?xAgp/vWoG9FerligjuB7sOro6dz13cHfEccSbDajOxlhaQrmesjWlgX+7acc?=
 =?us-ascii?Q?/H6TTqZudFgksiBnpfiPyJ7cx/M7y/Q0f3/IIY3KdqiqJLbyKFwmAZY9wQMH?=
 =?us-ascii?Q?gzvxhCtjZbjwb5aBr+nlmL4deFlIJvQMs6L3jhExF6dIEHGQkUr7VP6XbcIy?=
 =?us-ascii?Q?B/TSN2mcUNDcNufpKWbKGOZ3S5NOa2paW+SfL9Wl1Ll/eKgIjv5wk5rvQGNC?=
 =?us-ascii?Q?s9sr4Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0df665d-8412-43da-a5a0-08ddfb6b3d85
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 13:06:57.0677
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ju9IqEN7rClB+TZcGEDjvDqlr32gaUAPp8x+3VZrzVJ0OyC6PJbBIKtsEb9ubQ2q8ui8RZ6XF25oQ+guipE4ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_060704_448315_1FE7F88B 
X-CRM114-Status: GOOD (  11.58  )
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

On Wed, Sep 24, 2025 at 10:09:26AM +0000, Josua Mayer wrote:
> Unbounded loop, perhaps use timeout.
> 
> This can fail on unbalanced calls as you discovered,
> but also e.g. when a pll is unstable.
> 
> See below for when this came up previously:
> 
> https://lore.kernel.org/all/20240218-lynx28g-infinite-loop-v1-1-59cc5cef8367@solid-run.com/

Ok, I can make this a 17-patch set, no problem.

What happened to your patch? Did it get lost? Do you mind if I write a
new one myself, with a single read_poll_timeout() call for both
LNaTRSTCTL and LNaRRSTCTL, to keep the functionality same as before?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
