Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FC8DCA101F
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 15:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyiP1fFXjX42PAk5tksJUXKYiQNQwTMAM3c8+XNbbaI=; b=Uh1MxFfYuZmxX3
	dHQ06oQ4hR7RlOxprpou3IQvn6lTG532Ga9e4iPoh523bjaNihY6KVfpQ9qUqUVXZZaOE77FIGwZa
	0tu9Rcs7XVYjcLxN7hWAezH3f3xPwbqX5xyqiUW/MrL7PLgeSVcffPF13u+DchNDMPTYzJ9dFVMNc
	ga2bnq6vv4txsQuduV2YGpLdpxMdHa/PgWAU/RwXBeqyQvOW9WDRNdiLdFJ25DjhSMiYo7LLADSln
	o6aG7lWRBawEf4ZaB3r06CUdrGOOFtmqV4Dn548szYg7ecSBZPH+981wiEvM/SoklhEAeSGlHhJNa
	OcvOVVxeeWZbyRqLEy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuYYr-00000002pHr-3kpA;
	Fri, 05 Sep 2025 15:41:13 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuUDg-00000001F9J-2VwE
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 11:03:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQby2dxWeY0j4T56tw+cVA1TvHv3SGQ6ZqAILCZS5EMy4+wtltjlKOcMvNj1wrfKYU4Z5+nobbZ8l+Qnmp4MCIt6CzBH+4m4VlUTs5etZb/r1dflEmLMWT53MSrRWRwG9PIB9XVeDDYeXECEcJDoQvSgQ3fKwzERMso1UHsGiJd+zgYRs/hrElvbgwWbU8D0Xa0+6a0CxTxfADdTug3HLrPUVWNQI9i1uWi75DpznWDMt3bY8uMxlZCBQM9U0InCbymoYFJBPBGoq4s0Xw583c3ihfsQTBcvrhIS927dn1awAm4rZkpOyFZdi6bWgW/DzzZA1qyDyQpPb+WLKT4HWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H5SdK9+gsrkZY+7lBxe+XpEnc2FbROojpSmF2ie8dDE=;
 b=pOOyj1gqMa5EH+xGOhiUJOecW0WzaKVqItmxNAwRLj+f17ekpXJDRklm10c+1FlWS7imFVdhKF8OGUqzPIdKGbPapB8GJ5sb1zDlC35yFR/tPk7fZGZkYM83ry3xa2TmgnoP0AwJX4xSGJtsDSRKuGMvC6G1GpVHUgtB0z63yfO2kQlsBuT1urK8b6J1RVjnuuD2LnLZhkg/cP33y2JKXAIcV1vtnKYeWcTTSRZ8LqBfrHRA71Co6TrzNFmdrow217A+AsGi4ARjUG7SQedGmRQFgADxsiNHxKSdwbJsht5pT0Lf49zVK3S3/6WkIc0H0w50MhZI+xsYtlx3JPK2kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H5SdK9+gsrkZY+7lBxe+XpEnc2FbROojpSmF2ie8dDE=;
 b=lzbWtT4aWsFi1TwKdqsrw8UC4+8oOim5w8hAk0vkCbVlFdFOeYsxkfG9yhGgXulGIvA66wtuX4TJN5damteQmi9Ll6/OAPRgMa3ndr7TEY9OdEjES5jcmA9apWk0TZN9LpLw9qM+M8+cN75kUtZaauMNjDEmGa4Ncq2+DCbUT/6X+e5iINIDqIeOcrvRVKj56ECcyRgsrsDLF6DLqd1ZUSUnr7eFWK+Ursdj9mlrQ6JrUnuv9G9LK465HXChIJlk87ELFTOPIcATviSd4PQbez2P8S5aRq8BV19rNoZCjbHNMrQzuxOvcPpnqLhmNzRTyfv78BRSzhUu4t0+cKH3Dg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM8PR04MB7346.eurprd04.prod.outlook.com (2603:10a6:20b:1d9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Fri, 5 Sep
 2025 11:02:59 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%7]) with mapi id 15.20.9094.016; Fri, 5 Sep 2025
 11:02:59 +0000
Date: Fri, 5 Sep 2025 14:02:56 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250905110256.zbqkhhhjcvlbv7cx@skbuf>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
Content-Disposition: inline
In-Reply-To: <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
X-ClientProxiedBy: VI1PR0102CA0094.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::35) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM8PR04MB7346:EE_
X-MS-Office365-Filtering-Correlation-Id: 44ba09cb-98db-4102-053a-08ddec6bc6b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|10070799003|19092799006|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nZ75RdGev2+lTG1wu3Y8rGDw7MMs/AYRYKdqvBG5tS5yzxVchpX+JOWURJ1C?=
 =?us-ascii?Q?ZGLfU+gm9prQB1xJGOgqqnFvpOdb4LnLix0dXaoCXl9ISio6pbQta4MZv4tf?=
 =?us-ascii?Q?uigTk8SokXcSZEhlF7JfJd+PxB/pUvnuFllW7iH3/zgAxPtB6aNoFYLmgdMs?=
 =?us-ascii?Q?+n9lgzLG8IOb1F0TwF7dJ/yiPOQ+wKeywTv1Ld+EgYYvZI5GQ/4nsV/xImuH?=
 =?us-ascii?Q?GktiBz5Te+sUY1QG9gtQc2s7idVk5wM04BShfie363HbHq7B90Ysq6sbnd0U?=
 =?us-ascii?Q?OB7mZsCJ0JnupX/BxHT/UCzKD3lBqoptr4BIN/hWeg2M6Wm6I0swzmtocjkN?=
 =?us-ascii?Q?X9YeWQfeLdnlGvpQ5QKlmiie87fYgs75wPs24CTANSSL2aLS31r/YqdQr7t3?=
 =?us-ascii?Q?+eF/ys0j0EOUX/5bAvbbxNEFOdBn28vfmK9Qs+b8kXK+sRhH3N3vioHpb7BX?=
 =?us-ascii?Q?17qNO4k3R6Q5EmeOOrUbY9FN0nxkdcdIZWVO7ZriBwL5UB0n6J9fLb7Gup4L?=
 =?us-ascii?Q?XUNGGSBslhtpVBN2NUdoV9OW3vBraIe9SeONdbpzJo5k/tIxO7s7TvC34Kt6?=
 =?us-ascii?Q?O/pvsc9JaRqcMK2W9d2hvFaisq6AzNMgczMHOXXJS0SLTBKsH2t4Q3HLWz42?=
 =?us-ascii?Q?sbwCapXjmzphkcYD8uekD+bZ06ngV35f0Sk0b7M1YkHqI9A9GgFYL+VRuHWb?=
 =?us-ascii?Q?NDFNPO79uZvpR1JsVsx/5KNEDGoJMIEkkEZDfS2TwxmaaxoYnSqh7JU7bCuK?=
 =?us-ascii?Q?Yk+Zx5LAOcWLWcODZ6K59OF3HcIAvJEQO6ErmOVJfvF7qSIP78MMtLjMpc0U?=
 =?us-ascii?Q?CbfbauEdE+uNRgqljvqlH2RvDO0c7jJh9FoQOyEWNa0UAdJiNngbECO7Qtiv?=
 =?us-ascii?Q?Trd+uNBxdOcAYWr0TWt2SWFnkRGNXlZ8qOJT/HRgBjbYpw7smzWzBHetCPhE?=
 =?us-ascii?Q?4X5KMY6Dkp+LKmtoImldHc77uiwBad1yLgnni8afE8IPAN9WnpijZ5qDKofl?=
 =?us-ascii?Q?49EGrX32OxiajndMaiEVPQFVLoPa6gAhZ0x2uqQpfJsDyaOINy53y3hiLDs+?=
 =?us-ascii?Q?QKLWXIiobTz5zKZMDo/DnOKclQ++wxOP+TVbYQ4W9uVy+TuddjL5UKLyV5+8?=
 =?us-ascii?Q?3Ekddn8TJ9tKw/HhErdiOiY9AJ/B5uW4fYX4rs0pihjDvEMHO4GxRAf6uJAA?=
 =?us-ascii?Q?Mv7uZ7zr/AZnMghxtnyxWXuXSUKTfmr2bXJtOuyxSoSIUKd+2lI3ugz1fuiZ?=
 =?us-ascii?Q?Mwa1i3WyrYNifJvOrTd5JCmuI3+vqmQnUM/witfhE2R5MiAbzpRIhemV/XvF?=
 =?us-ascii?Q?9I2wqebQwBQwj9te5ZRXYWT/S3WaTag+lhp54Wa6/6zaAkLAmnXRofNQvSAE?=
 =?us-ascii?Q?umjpNLXP9jk/ViH3QhzbYNRuLGr6Nn15Akcy9HQ+/fS698bTEcBCUYIc0uNP?=
 =?us-ascii?Q?DZ8nYRRnqEc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(19092799006)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eEfWQ7VWg1JGBziaY+/g7CP7vvrZ2ZDO20KNctTLYQkQ3wVckAyICEW/6OBk?=
 =?us-ascii?Q?aORBXONFFGI6458zL6/Ydh6SuK9/e5Rpk6LWEpesBJh4cIyLniYiR1b0kIAE?=
 =?us-ascii?Q?rWqZzgRcRmwBVv3m3BdmoPErLiamT8qBJyxWrlYg9S1KV3nf+jrWZdOHHK7b?=
 =?us-ascii?Q?mHa0vEVgi7NdLZ0doDd3+9vaOeaG2iXk8afhTaUUJbkqXXitFC0WC2qZtXJo?=
 =?us-ascii?Q?iNrgXHHTLHdlI06nbdMnUzISajJrlygyBiXOwuPIAgLc/+YrKVqeiGuovd8h?=
 =?us-ascii?Q?3GGD3RBUKZedyA3ViisQLFFujWC6TJXUx6pJnq4LKaykM8LBJ3yCR4s7bxN0?=
 =?us-ascii?Q?x+t4sSyBRlhcSNDd4757vCs9GyEG9tFgnan/marzIs+GRYkArBAmColnuOln?=
 =?us-ascii?Q?XNHUlfHvyWMFMTeFK4rZW3IubCR+EEu46vsFPf5FFxcGrowHvH3f9QAWHAHh?=
 =?us-ascii?Q?lA3/PB/S1oWwFUSFOyZ1tnKiQSiHS+arf+5wfvg3meJ/iFZi6j8H2yleSRII?=
 =?us-ascii?Q?iqIH7yh4iosBY8uV+mVPf0N2UcPGKTR8IdKqtjCoW2EcTEiPutq3Q/3U3X8r?=
 =?us-ascii?Q?jA/6mepPz5c8Nx7v+eUnIesu0bduo2Nl/aD3IWIsYcbQ4W+bU1CBZIkkHvJY?=
 =?us-ascii?Q?+IM6Xctrkygvh5RZdmxuju1MAern2LOJkAYd82R80888WCveP2b9lJ6tuEHi?=
 =?us-ascii?Q?+/hk1hQ2Oe8qulrevicEeSEEPK/XVMs4q7qXJOKEV9AmQCaOCmQ2ipG+RRDv?=
 =?us-ascii?Q?aLU5BWdSRsayJRywtRZAr+YJxVQUkkPbIKIsyGepw0wq1c01VwHTNRebaVyQ?=
 =?us-ascii?Q?MQbbwdqHJV6bRfNsqEvksagaJBjn1brV337FzCH2j5cT+xnkoohTaLoFv69X?=
 =?us-ascii?Q?f18UoVrsTljxmnWVHdNwgogD0nwsEZYl4WhIXhELb8evmptZ3Ir46iuLtrZb?=
 =?us-ascii?Q?Wjs2FsG+WMbSqmZ6y8QPu6Sbq4fGn7UMAk3sNF7R4lePXYdYlZRG2Aj+/sOP?=
 =?us-ascii?Q?QmWidWuIr9ox6N7lrigR43w1Cz5umZPWzU2E7y/1biIq3U2sTYSotTwNcsXi?=
 =?us-ascii?Q?Syb+zIelt4vKdyrCpMuuHZx0utX7XPtY/zE8pDlSFRU8suL1wSZ+2M9gjBT0?=
 =?us-ascii?Q?TKgPUncCJxUFXVNFsqiZ7rzbjo9iQHAfykNADuaCGGbIXX3Guk/1MLKO/0f2?=
 =?us-ascii?Q?dEYTXN1bk9/2Av/g0+V3VxW5Sl2WFjbPdh9XwOkkJIzNfsywNYjs8hiQOCql?=
 =?us-ascii?Q?Bf02wx8mHd62ncmvexB5iXIsUogjk9hpebsj8EQa76kk+xAXAS2vidmh3sjO?=
 =?us-ascii?Q?pSs8UCVzL2hKL2w29W20Bd1VnfG+AeujfitDsiRM+GkCpfcliPAkQYoei3ys?=
 =?us-ascii?Q?GzQuG4PvwNSbocr9QNBbpX32Mqf1vTPTG/27OUe0mAECzKmNI8QUyaee2Chc?=
 =?us-ascii?Q?NtyrCDaSdqFeNaVRhiJDQRkhGCze1YoCWhU2adznHX3HcyTfV5mcQuyrJ1tJ?=
 =?us-ascii?Q?lVUdQIuuvupfTeP8otNiN+E5CFNoKK5LvpaQQmxaIW/+v2SZlV6iG9nzxTza?=
 =?us-ascii?Q?NL0DpDKlzuixwmBTN2vPrxVxHHF/e1c04RxLW0IoAUr7wDVI/jBkhJjJiDX/?=
 =?us-ascii?Q?TjHXym5pY2DWH1GCTxmUvO3qGvomdikWXHxtjtibyh6Tb5XLUyL0l/J7Xk1Z?=
 =?us-ascii?Q?PSU01Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44ba09cb-98db-4102-053a-08ddec6bc6b2
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 11:02:59.7137
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B39RfG0gGiJgOGicbTez06tYEHYCJyYsQveOVb0JY0gcGszLSQsVCnoFzafmGjIwicthMB1J3HyiqC6HRnnjpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7346
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_040304_640786_F7225B00 
X-CRM114-Status: GOOD (  11.05  )
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

On Fri, Sep 05, 2025 at 10:29:33AM +0200, Krzysztof Kozlowski wrote:
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> > index ff9f9ca0f19c..55d773c8d0e4 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> > @@ -11,8 +11,17 @@ maintainers:
> >  
> >  properties:
> >    compatible:
> > -    enum:
> > -      - fsl,lynx-28g
> > +    oneOf:
> > +      - items:
> > +          - const: fsl,lynx-28g
> 
> Don't change that part. Previous enum was correct. You want oneOf and
> enum.
> 
> > +      - items:
> > +          - enum:
> > +              - fsl,lx2160a-serdes1
> > +              - fsl,lx2160a-serdes2
> > +              - fsl,lx2160a-serdes3
> 
> What are the differences? number of lanes? For this you can take
> num-lanes property.

Number of lanes, but on LX2162A it's a bit weird. It supports 4 lanes
but they are numbered 4, 5, 6, 7.

Also supported protocols for each lane. Just one example: lane 0 of
fsl,lx2160a-serdes1 supports PCIe, SGMII, USXGMII, 40GbE, whereas lane 0
of fsl,lx2160a-serdes2 supports PCIe, SGMII.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
