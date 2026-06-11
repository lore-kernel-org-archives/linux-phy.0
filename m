Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A8ECD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7Y5RSUv5xmYmwNWdxRv5HUo/U+mNUOw1qBiFYSKbuQ=; b=xAZUNS2AmhcjcR
	/1suVVAGXtSv0UxiuseosWa7b2bV4N+bm4LgxtIC9+daIBWO0w4os2W2YRn6uJ6fAkJn2QoBx8ZsU
	L79GNVjkAnz4NfD9e4dRj5NFkipNKA235zUOZabJyz2T6ZxcZ3POeL0qWu8qHlMTvKh/TL+T0Yulq
	wMw5W59CFM5ns++4+Ew9Vj99QyXqQUhuiLblEjUsbS9J8wJjN3FS86SchQUcs2g8Q7t1jDQhMCLB3
	rd5LwOjHOe1LjMsVqO1KR9Gk81sPzU5L+dKOlYdleF1CQoN0kinN9KNzV2Fp68IG8RdE8aQKL2Jd9
	S80e1GovvUrlyiXNVemg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdkT-00000009KI3-1hbM;
	Thu, 11 Jun 2026 11:39:01 +0000
Received: from mail-northeuropeazon11012040.outbound.protection.outlook.com ([52.101.66.40] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdkR-00000009KHk-1eNy
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:39:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nrOe6ya8eIvPspDcCsZXDrT2x8YjXazb2r75YGTC9GwDoowebRFiblsOQmUYgpL+CMu/6SOj7a31L3bEqlkc3sXc23oMf5ucFSl/NTSkC+rbyxkwhJLAiFFdnDgjdiFMMxLZNLiMWSIK3/NV2V9Y2wVyD82WDQUxnyuYZGGE2Z7vFhaTQ0rI/53tpIVo2ijXCMpmSiqzCiX/en1z5NT30Yk4sIh+X8HihENi9rxqsP85dRu+BLnydb4PAG2R1bVCSXtA/Ld1aeKz+I0iNsBynDAfrHozMMqteKGT9yRdCHKI2SegYOAJB7YVzZb6eXD3GwZ1409DEtEKtKfqCSlshw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9XUsoUfdpdXVVBsEk1x5l/sNeNZZ2qgFqS//nvcp6k=;
 b=n2cqMbbOu3wWogXfTm6EsIf2A7NEQExY0MDvTlV2CqtczG3axKstSYyIHPyUYqZGw02DpqZk8QJvtbLHGAKUHJYwh3E4D0X1lLHIYnOUtVNOekY9G+8bUKxaKKDXxcjyLIeBmomznlFaueJ/QW5MTm6vcpYFOE3aiB/J+zjMTCy53s7N1pVabIam9pa4/VsEYsJ5I+W/rKO3X+rlD6KSb36JBOFcd6fcTwOKafz6uuF618GvqZE78bBYJEORMPQiQBuRr6hgo2M9NN2B8NVQsrj7aeLbg5FQPA1+ERo49jcLbFE4+YQXTNPnOlLHJUHjSQUATsqHRqXr9c8v+upm1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r9XUsoUfdpdXVVBsEk1x5l/sNeNZZ2qgFqS//nvcp6k=;
 b=ACXa1ZO6AooRbpJt4MDw3Gcg1QTFY7MkkE9MubAJSV7ycgfvVXSo+Zxo9M5VyRt/JUPslyia3/z7b3eVIRpTGaq2SKtyN9xnirHBP+bchcxSdm2TqGylO/nm9pktczqGv0GONxPjbiNbhhXj+1wN6cFRex28P/zmmSJMn/TWiL6kYc5/KD/9Nl15x6ERN85itCWU9wYqxXCYt4t3LJ4cquPDasBPn3Yfb2JNAvvXnEfsDReL+eEaLgOUA00vrKZOV9cffkaTmA7/Yd/n2LToSbTf0jFGnptMQpLKmsmKyf+UH2XrkfemsHQ5VxP0zY35yqci5bQB8SlMr7I0fZcf9g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by PA4PR04MB7822.eurprd04.prod.outlook.com
 (2603:10a6:102:b8::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.17; Thu, 11 Jun
 2026 11:38:54 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 11:38:54 +0000
Date: Thu, 11 Jun 2026 14:38:50 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 09/16] phy: lynx-28g: make
 lynx_28g_pll_read_configuration() callable per PLL
Message-ID: <f3ku3fhzwxlcxxioeefm3zmlpqkqhdqweutlngsf7e3nyyifvc@g3xhjszj52bh>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-10-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-10-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM9P193CA0006.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::11) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|PA4PR04MB7822:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eb659a4-d92e-4414-b8b3-08dec7ae040f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|23010399003|6133799003|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 1E+9iE97fgTF9OpBJ8fyWj+vc1HZy5PuNS5EgsoNZOSjgkSnFqCHebE9BOQAzkJ32Yy3mrpljQd5UrYLT+zdm/1R/75meLSahSMnrCfrFr+2L5ev061lcAElnbGTtYScKgk8c5jaXZqaMCYUXdC9uDl/p14bKRIyLxN6X7rOJZsYFLEMjJh4QQdMm/xgSAS8brqZeHuUae+YMQorZcDsGRK8vSdU2nOvoTAlFYwdz31OX2nY2+0R53g1qpnt933AqMfaSgjCTeLFitD+4fYn08gqXqBoAXMOzYZ/Fy/UXTCBTytfT8FoyQgPP98yoCVGF0YcYD8SuagSJrJk3AhPlCFeDTRp/CPoukITcQwvISJj8GmeoM/nfYSWKHwF26586vLnoRQ9CmJejzmIFlJ61iVMQad75vrTenXPDFukdPGwyGt8vHrvmUbgOPDN9G/wSFNBcW6tbP0qBZHG9NiDlTiwTbpvs5BZllfFmM3GNoxTjbkx7fd9uZB+mvXcXRDYQUyk1+UPY5cM9Uke4Z26x5R5lfvEi1na73er4xrortvzbQoT0AKLf3l5bAv9jPiLuj0REqi3xP2jBXy2tftp56TcDk+bF3yPPP/PlSTVAJC5BPZl1M84X0Jit5qPgdFkYf17sIxJhnldQnnyJ9MvvW8YfrPt52T1dQXBm4fZV1d46I/yOKjbvPGfdV/UWcHr
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(23010399003)(6133799003)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xOXDjjQFSBC4h8Gg/pYaTHnEGMCDhcaOVG37veoeRrdd2tGSHhKMjYJy3H4E?=
 =?us-ascii?Q?6ji5cfr8fsfyatQi1t365/adh5qTAziIgCzUcSz5b25hkZ089kerrrhEoTVw?=
 =?us-ascii?Q?MzfAd/X1X8oo0fD7kFAIxpHYIfWUbaLss1V4M/Fws8HbjqVbe9Bzysuj4gnO?=
 =?us-ascii?Q?OoOBu4X5C4SuoKxQxlesRakUYD9+l7Hx/PAnqLYVQVUERbOuwxXFHvRBn2qi?=
 =?us-ascii?Q?NrYMqmfi9U/s6chuu70+uzwBoHIiKjuOOjzewkvyOH5lQ5A/T+6Fm28dZxK6?=
 =?us-ascii?Q?w9XWvQdSJjKP4idfZc+35kzqiOMo/NZU92nE01VJvIgJ9CRS7qIroMCj+RGp?=
 =?us-ascii?Q?ReXj8Lhbj7ATWhHvxkHcmE6XYXQNdwcfjNLOJ4JOFvYrGNVu3vw/wVoIkqZI?=
 =?us-ascii?Q?hNvV8zULrxBkEGfn5/vKnm6EON9MLbgBziarjHtAp2xC9QSmKbRqtDVU29iw?=
 =?us-ascii?Q?sv38oqPZOUXPgqMfznVEEIuCWQUUC1IiyN/hnyweAOcrO9JgR76xN6/KzoRn?=
 =?us-ascii?Q?JgDmgkCK6GJ45lyA8zd1H3sZeg3e1mi6smWXqdIq3PlAr4FVlfPxAozIYXeF?=
 =?us-ascii?Q?sm/NyMSRwDGCjqc8AhS/px1rcgT7fWb1n7HBcCnxRciLAzjr5cDifwHbPrTK?=
 =?us-ascii?Q?IG4bYMWKpVkNy3UMALIIq/Z5eKHXiIz4FFHG6hZRqP/WG/ucUK+hcI5l1Q6P?=
 =?us-ascii?Q?JcjR+10blRITDLZzLTQ8rJMjkz+8GJMrayiheG3exhWtcw2U2MSZa9HFWjll?=
 =?us-ascii?Q?+sfCgjScsWC0hLm+RJXzfYedlKb+Ur4vALn2zZYohQ52R+DM8SYZZHI03x/a?=
 =?us-ascii?Q?mQzFHQZfLe29l41OULpa9LfZp5QAsUelmx5Qq00R587KQka17DINn8I01BDt?=
 =?us-ascii?Q?rFg/YcyZtr6IayY6vCcUOHHxH7+FuzFXry+qWJBB7Y5mi+jzzuRMpAenlFVv?=
 =?us-ascii?Q?A0TkGfs12C25bHu16R1Rq5m8eG4weUt6jfZEbxTBXZsOVNlkXgMB/wRfel9H?=
 =?us-ascii?Q?V3cJ12Do6do3UNRpaR3tqPcNdE9u3pqnuzlhwPO/1hzUHP27t2KCB0la/ivl?=
 =?us-ascii?Q?KQ3FdlZUb8nlscDAEtx3kg0rHI5b+c+m0v6j4dfTVtZpbzsQnckDk0FQ5Ly1?=
 =?us-ascii?Q?IUcvj9rODe2w4yl8TYUbDqzB788gpXuiUlc9CdG72hisaPWJa2Jjj9QFBaPz?=
 =?us-ascii?Q?Va630oixrGbLIdaP6xPSDTtTra1lHsPBlDVIuYTWkJqRbZ7RePJsiir9wOIh?=
 =?us-ascii?Q?Zt3oRUj673J47Ob00CHIxWpChu3YJ0YMFXEmRcbTRpLYTu4yDhB1J9IMQTcY?=
 =?us-ascii?Q?urwFFvEy2NFpev6uC9jjfc4jV+TVAO4JA4aW5uTLzFrHaiJb5ITsRH02em5B?=
 =?us-ascii?Q?OHYLN5ft0v7AH5GWjG0Qzt1KVR4P1kFI7HA/TpYaBfAlEv61uapN/aC6bP48?=
 =?us-ascii?Q?CwI1GvqEOZWkQtMfrsWkPS9yeZ9hhB6UhOE/rTdZcqD05jlOu0kIBqT2HW+6?=
 =?us-ascii?Q?9Y/HXhHW/gnAwdxcrTYEaN318CdtsoOoD88AcWHuxO+VZJVkqhNrNNkk0T19?=
 =?us-ascii?Q?ojCnSpMY0o5Xh7UP9mZDZzYWKQ2CyMI0hCFc5SBKlboh05hCYOm3GGrascil?=
 =?us-ascii?Q?Qq4OW14KXcf9uYfYzf1wjPhv7iWcVe8pyL+uUQp2T7pSadUW/Qy9f/paKpjy?=
 =?us-ascii?Q?pYrkQ/4g45r12nSLM1WKs3DylIV0nJJyJLjUQZyojFQnGp0UgdxsKRa1x0JC?=
 =?us-ascii?Q?vM8zE4F39Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb659a4-d92e-4414-b8b3-08dec7ae040f
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 11:38:54.0779
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TgkxsnIUROj9FPKch94lc3Jit8UCQQWfm/P8Sf4avVYOmh6dD0PvT3PkFymcV9AHdfQwRUeJREUfeCvPJvweQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7822
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_043859_431974_7B611615 
X-CRM114-Status: UNSURE (   9.62  )
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

On Wed, Jun 10, 2026 at 06:19:45PM +0300, Vladimir Oltean wrote:
> In a future change, lynx_28g_pll_read_configuration() and
> lynx_28g_lane_read_configuration() will be made methods of struct
> lynx_info.
> 
> There is no functional reason, but lynx_28g_lane_read_configuration() is
> called per lane and lynx_28g_pll_read_configuration() iterates over PLLs
> internally. So the API exported by the lynx_info structure would not be
> uniform. Change lynx_28g_pll_read_configuration() to also permit reading
> the PLL configuration individually, and move the for loop at the call
> site.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
