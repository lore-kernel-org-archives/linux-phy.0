Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0784FC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 08:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDIBZA+BatpGHh/yzTaGC9tjlTn3eU15BObmn2aJBMA=; b=EsJSxhQt1X93n6
	O8UetlUxhu5InKrCFssbWVeF9mbhKVIMYk0ZzsiK6/2mV0Koy+vZ5MybFYZ+efFbUTNBly5qdXFB1
	5A9UMZF/GHiE3/fk7JHWI+fANaBMK5Ke39PCd+RCez9vYFyukFZZtreX3Bf/0e6MNW3SHGAPHzmUA
	s5nZWA4UY71Ggm2N8tEhQu/238XkQlZbF48WwDqK7UWwZuxenvBxA00BG82f74+euFLfPAL4oxBbZ
	NGyV8VVId9yeLAprMz+Y1L9uSKYC08B2EFuVihE556/pNbYX6Ky4mO3QGFnfdTrT2qBm16oI1tweu
	ipjuXjUk9jOI1RQZSW0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saszi-0000000F6gR-2qv1;
	Mon, 05 Aug 2024 08:23:06 +0000
Received: from mail-westeuropeazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c201::] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saszf-0000000F6fa-3cAg;
	Mon, 05 Aug 2024 08:23:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=do1wD9NBzn5EWyVtG/UCAIXCZt12EFkw5QdXtSNVyvgMwFI881E/QAURumtFrtD/UkWLBRRNNLzdDyacCvmitsUqfknHPh73TPlZQvsckDhFcXm4Ds6Nys4C0ZjlaQnfbFlE1Ihm+p8ABQpgpTkZmDPnHFb36g2889PE/79NIbp7qRUE0tI10Sqwiy2RJzatil1TJk9VyNpYxYgjix+zTYQl9CzUWmgjkx2a2CLXHCOT+NlTQzzh9R0utm33ZfpRwgey68U5LRVgn9x5AMmfLa6VMAMU29Zy0NAOxOfnG0lpMW+GBOxkkPhfX+GfCfGlHi3m5bcLBEjCHYVhNouy3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G02YygDFqa+17AW1Rx4N5Cg4v1h9qx5amWsxBx1CurQ=;
 b=BfcFRFn6OloV2jCgxYzhKk2xCkZf6sQL5xQhWgyMaZyWFw15KYkMZO0rESja0tLXm0RHku6DetD27joAmis08Fbsd7mg462+YFTXZgAvgIbclEQA7UASHs/aIWQSN6xLbTuYq2WGt9pTRdByKZyYL6mWZhTITDXO5+qn9o3ZcU2fmnKHYk1dx9QGvIY/RxeR7B8FEB8BGORvkRO8w2iMlv78saoipq8SuUPif8iERECxmbDNZfKWQe40JT0DvueALl2or3RmMzCqD2HxUwWuBV/4MEj9ojupcd1QjqRcQARpVIfG/oodv5+PCGw2gLFo1kAMmV5B8gu2FK+Ruba+/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G02YygDFqa+17AW1Rx4N5Cg4v1h9qx5amWsxBx1CurQ=;
 b=eLMpfJEC49+5mN24Wq6OTNOeoHTJ6oMiLa20LNnd44gholBZ4e1/vSWUxLhzor11NpMBPRmjd+2leoJei98RWk2QMbakDZzq/ohqKZibWwWXTAwprYcwhl8tT1ZeglTdDwfKdc7k1GErP13pES82mtLya6JonHR7iy8LncEcoTKN0Fe3XgHAFNnRBuG62dmoiKTcw1xKP5jJK++XpCL30Zydj1v+Y/+n/MjpaW1xLAFAgSfeNT38aB42/cp8axfgypuNOhL8cI0jHTVTyroKx5/583DL7ns2w1bKOjitVx9AVFk+N2l2nR7CVVcrRHQ/7mVSMYJ3+PyfC9LIecUCGg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by PA4PR04MB7599.eurprd04.prod.outlook.com (2603:10a6:102:ea::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.25; Mon, 5 Aug
 2024 08:22:52 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7828.024; Mon, 5 Aug 2024
 08:22:51 +0000
Date: Mon, 5 Aug 2024 16:22:11 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, Frank.Li@nxp.com, jun.li@nxp.com,
	l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com,
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: imx8mq-usb: add compatible
 "fsl,imx95-usb-phy"
Message-ID: <20240805082211.ngrokcmzuijnu26d@hippo>
References: <20240802091702.2057294-1-xu.yang_2@nxp.com>
 <21557eac-44f0-451d-a194-c5d545cacbee@kernel.org>
 <20240805070429.rqykjd3ap5swd5vl@hippo>
 <0e1b0f11-152e-402c-97ea-788c7830267f@kernel.org>
Content-Disposition: inline
In-Reply-To: <0e1b0f11-152e-402c-97ea-788c7830267f@kernel.org>
X-ClientProxiedBy: SG2PR02CA0081.apcprd02.prod.outlook.com
 (2603:1096:4:90::21) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|PA4PR04MB7599:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f1b02d-a4ea-4db9-443b-08dcb527cc0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|366016|7416014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YsKs5JIek+mmNANsuouRffExJYNKhnrgm+XjCB2ti4iqCVXnQmaRm9gZW3Oy?=
 =?us-ascii?Q?h5v4C/vDRIGSAnOv+U4GSV33MuJITUztjsgCU5ewlP2QA60hiLP6skSFTlC2?=
 =?us-ascii?Q?20bgXfBgArtcwrIFgeNqVWI5UyDIKVJtXiex44ieB8Boa6PUkHpGB2U8Buvn?=
 =?us-ascii?Q?ctYZy2/9YoyiAF7SExAI/abMUv03c5TyFBF35YxCfsbTO+KkN4Fd2k5ylX5O?=
 =?us-ascii?Q?D44a1KmW6aZ+nGgEQQXdqKS8jlhRLtRLVZS7zATH+AWksc9Fw9i5rA2yxDeV?=
 =?us-ascii?Q?/QLBn/3/6pdvTOkrJBJkzJGBHW+MD1RtF5rKX4eCHsN6a+nz1j54IcQ1msUu?=
 =?us-ascii?Q?f9VxfnFbAnDBE5Yo4zgwz6vu3nI9eEIxcmD4sjFBXUUT9r8VcWFuOsDzXad8?=
 =?us-ascii?Q?9EK4szMYNLF20a3OjVKasfxM2gvnILudPplvYMvZl1sgI7ZYOFLOHF1iRumd?=
 =?us-ascii?Q?q8/XORLGUU7iva62mkCJnK+30oBEaGLuCckNxE82uS5vBiRsA76fhu365bpQ?=
 =?us-ascii?Q?OwDtninL5cXaQ/+LlySgZ9C2m3gONdDWjp90tTxsJpNZ447yGQ2kudn+DQZJ?=
 =?us-ascii?Q?ycYBnQFKj4aifUoN+B5fIBVeXP6+8EVBhc50r4CtAOe/TvnqUOtmCBi7cHef?=
 =?us-ascii?Q?vUU3DEHK2UfAMaJxcsH5G5PwDSgOV77AzN/MQ8FiNfEj6aItQJfCMpr+aGPz?=
 =?us-ascii?Q?HYBl+TnOTlUpLL2eEL5ASDKeBbGfiLWu1Nlq7A3G8puoUTAISnm2prV9aEfW?=
 =?us-ascii?Q?xFiMjqoNm2nNzAlRuxVYjoEx9QeHbW4opIKiBQglA42FjPQtgByf6WQ0eqQp?=
 =?us-ascii?Q?QugavargB12c+76hljR/za8m9EzerPiwU5SFwMaSenN7EcvPvpKgHt6IAKTq?=
 =?us-ascii?Q?tgkZWz1PiQiakJ29WtbYkJGRKOMH4BcUhBXWnnmgLS7LHjw+du6kkcgXh9f/?=
 =?us-ascii?Q?CApYmoOnGSMgqcHnc67XIaCyeKju5PYcIeZ/mZdK/BmvalfguYO4DME1fMhs?=
 =?us-ascii?Q?jCeYEngZphxfUoHvGoPXBh0nuzF1k5NauyP04wi1hkNV1lNgHUgEx0Ne7PaJ?=
 =?us-ascii?Q?P7uHTQLSyU2OzOj6Bd7cLFxz9NF4WHrT4okokgV2IeHGBGbHRytiGYFeuSa0?=
 =?us-ascii?Q?AXFb+408Pp9SppZXmcJcI0AGuMGj2CbX2jhdYOVoMs8RuR3JB4SIXRgbqwMc?=
 =?us-ascii?Q?R8qGntT+L6haAzixzmXaPnjVXiuCCr4R+DHii1PQZQYjoUej702V/rYjFyyE?=
 =?us-ascii?Q?iFOM0wAmUDFEa1TftH3IzVd7IWD74VF03OxXpF0Y+VhkDcMXNyg3dD+7zsdv?=
 =?us-ascii?Q?UYkpkBKcMt6s8FFUfnLqADIrSv5lV3jlmOV/fqoQ7S7vQ/DZ2MlwZqJRpAph?=
 =?us-ascii?Q?3UOrL+NOGes2Y8zkD8AuDtNkMld9ci1uz9LZpobDYeYsWyPZSg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(366016)(7416014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hYnQL7NseWDQ4bF37Z/9v9VXROlBGanbvVF42gBRE/1kPA/tQZ1YLbYSd7rU?=
 =?us-ascii?Q?kGolfZkcqgClswnf4Abi/uKrpkVnEqH3zd9SKbc+Stqp/SKLv6OR7sjA5Ccx?=
 =?us-ascii?Q?oRcq4NsEnohIMyHDXR6W6Vy+w/4MJr32TB1yxK4EWmlURa6z+gQjfOXTninP?=
 =?us-ascii?Q?URLajNCNCol1lA1izlt0vxCGKVa5jP+9wYpUjeRDsgryTJRTsgmn3C4AHOiw?=
 =?us-ascii?Q?Pss58eqzAiGXtGFs0yj0x6vtJW0HofZkz0clvOBypmZQUyIgqFooDGJePHQ1?=
 =?us-ascii?Q?RzYtN6xXIwduMSthk/CwvB0aFRSs76pTqdNWmuM+JCSWh8kGd3JrNawIkBni?=
 =?us-ascii?Q?Wp9rmfocdL1dNY+ZVxo5q+x4o/Vj9ZZ51h+8BYsmhqpoAKIlGTOQx0O/JOYU?=
 =?us-ascii?Q?Yg9xuSaAysJJkVbb2eanbmCkMnTjj5TSMNoArMU1b3KeROO3WyLXMnoQFxF5?=
 =?us-ascii?Q?u44todrlUI/cZdx4SjAUvygc9DjOTSsng1UZcxNStQqJM6QS/2Pmgf8ZBipw?=
 =?us-ascii?Q?vD9KC1r75tGz4EXJ7aBMdqCJ2NMpe77M16ggCZFvw8SLP/0wFpyD5sKkhYLm?=
 =?us-ascii?Q?9riIR5uWznL4ONdVZpb7TEppZ5w359GNAaDa0Qhly9LZtw/qnkzUSD1m2J1o?=
 =?us-ascii?Q?fwfJCxVAF9PYwjScN/z+q2JyDJDcBlXOsa4ElLZwbZAWCwnXdwgGXXQCf7oL?=
 =?us-ascii?Q?eFIrYAlqSuCFmMj5xiGKHlZRzc5S9FvqvBNOetARPP9ak+8ZPfmiNe1zkjrs?=
 =?us-ascii?Q?WRqRz3XtddPDfc1XfitN97FwFmDnt1GQ7C4i/f2qjGIA5Xm8YwHKW2MzmxkW?=
 =?us-ascii?Q?AVyFIj4a21o2XHQt3kqkS5W6HbPnCs8/E9AyAMcSxSr/NsoWYHREOgKHWbRj?=
 =?us-ascii?Q?oZzxONjI50fJyWrMHlcJASqSbw8qsCqqy5opqyHTwtSDiaA/JyWEIALtBpKn?=
 =?us-ascii?Q?5j/e4OYbyLu8+XDEk2yY5YfS23Gc36MFULFw/JicT4LiW23MJECHn58bX5vM?=
 =?us-ascii?Q?RDQqDqUCJT8uCvixCZGNlkIL9EJQ4snuXIjUaJEDaVbrzE+1PZgTCguHrjrX?=
 =?us-ascii?Q?ySsh46ogxVC46kf2/3Vy8e4WuAbcDYIfTpbqABM5PuVPO8cTkIQbaj0tGx8t?=
 =?us-ascii?Q?iIohQlwfa5BRfdp3nPjR4vtYGhT0RRhBG4BuoiT0zWB3a6/+qdXswc1qM75r?=
 =?us-ascii?Q?mNbzdkLJJV/dlX3A7odbuVJpVQMjq+o7a20NX2vUX4DFK9cVRUp0sgz/IURC?=
 =?us-ascii?Q?3bwIhuA0xTqreoj/Hy1tbMCCekAemtPX84LkfpBqKw8nmzVhmJd9ts0eEtpi?=
 =?us-ascii?Q?kKsIgamNrB7TANW77gBVo708MPeq2V8raHnRWyfNKF8RITR5de5ZYrfz/k/i?=
 =?us-ascii?Q?XW94jpHzvsKnvMtdcthbdjt0kEOjEPOKqE2WA9DtXMcBcgY1yobg0ShZ/J+Y?=
 =?us-ascii?Q?+rcjTaQeIV15Iw7dnSZTNmp6D8Drw9EF9vK8xbTbQK/83CE2J4v0XIb65aQz?=
 =?us-ascii?Q?xPxWxn/DELas9WUCjTOvtE8xkSjNPig2wh3PRQFtQm6G48ByL9rpkhgUt0Ac?=
 =?us-ascii?Q?r/jwOwOuvAG5MyNQtpPhrvquJQU9GEGgkhyRaxcL?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f1b02d-a4ea-4db9-443b-08dcb527cc0e
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 08:22:51.5160
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Sg8Eq7iH85pB1BFpKxs7NuwuRK97STRI6qeBfCoSproAXZ2+7JbVkG9xjVD96ZRjdUg1qzAmPbmBJnZS8MD5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_012303_934269_6F0AEAA3 
X-CRM114-Status: GOOD (  20.82  )
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

On Mon, Aug 05, 2024 at 09:22:18AM +0200, Krzysztof Kozlowski wrote:
> On 05/08/2024 09:04, Xu Yang wrote:
> > On Sun, Aug 04, 2024 at 04:16:34PM +0200, Krzysztof Kozlowski wrote:
> >> On 02/08/2024 11:16, Xu Yang wrote:
> >>> The usb phy in i.MX95 is compatible with i.MX8MP's, this will add a
> >>> compatible "fsl,imx95-usb-phy" for i.MX95. Also change reg maxItems
> >>> to 2 since i.MX95 needs another regmap to control Type-C Assist (TCA)
> >>> block. Since i.MX95 usb phy is able to switch SS lanes, this will also
> >>> add orientation-switch and port property to the file.
> >>>
> >>> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >>> ---
> >>>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 40 +++++++++++++++++--
> >>>  1 file changed, 36 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> >>> index dc3a3f709fea..b0a614a9556d 100644
> >>> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> >>> @@ -11,12 +11,17 @@ maintainers:
> >>>  
> >>>  properties:
> >>>    compatible:
> >>> -    enum:
> >>> -      - fsl,imx8mq-usb-phy
> >>> -      - fsl,imx8mp-usb-phy
> >>> +    oneOf:
> >>> +      - enum:
> >>> +          - fsl,imx8mq-usb-phy
> >>> +          - fsl,imx8mp-usb-phy
> >>> +      - items:
> >>> +          - const: fsl,imx95-usb-phy
> >>> +          - const: fsl,imx8mp-usb-phy
> >>>  
> >>>    reg:
> >>> -    maxItems: 1
> >>> +    minItems: 1
> >>> +    maxItems: 2
> >>>  
> >>>    "#phy-cells":
> >>>      const: 0
> >>> @@ -28,6 +33,17 @@ properties:
> >>>      items:
> >>>        - const: phy
> >>>  
> >>> +  orientation-switch:
> >>> +    description:
> >>> +      Flag the PHY as possible handler of USB Type-C orientation switching
> >>
> >> No need to duplicate definitions of properties.
> > 
> > I replace it with "orientation-switch: true".
> > 
> >>
> >>> +    type: boolean
> >>> +
> >>> +  port:
> >>> +    $ref: /schemas/graph.yaml#/properties/port
> >>> +    description:
> >>> +      A port node to link the PHY to a TypeC controller for the purpose of
> >>> +      handling orientation switching.
> >>
> >> Same here. You probably miss reference to usb-switch.
> > 
> > How about port? Should I replace it with "port: true" or
> > 
> > "port:"
> > "  $ref: /schemas/usb/usb-switch.yaml#/properties/port"
> 
> You can drop both if you add ref to usb-switch and use
> unevaluatedProperties.

Got it! It's helpful

Thanks,
Xu Yang

> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
