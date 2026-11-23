Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3222A606A330
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 16:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=py17zo7s;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.a=rsa-sha256 header.s=selector1-NXP1-onmicrosoft-com header.b=nxrXtT99
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7ToU8vFfIa+nrnuzOeubWzp6NHbP/Sf25oeCb7eoYxQ=; b=py17zo7szfbkoME3h/FmYKAyvU
	SEitq7E+q9/yLa62pWcp8VoNp+xoqqL9doUZMnBzgsypwwqClw55d60iD/uhL427qHgmoAFZwK7LX
	Bae3pABG3uhVAC7OFhNmpYoYS5M5alvLjEHSmYy1oFiCSPR6AB3k2whTuqHV4aFF2O3fDeOygl529
	3ePKFR6ZbRn0zfZvOYkrrYE6NfoRgkRXiUWPFhy1DthfqRxTyf/dQU89xGOhbrGHVb0yF4i6FyyT6
	FQRT6JchIzY84eOnInQbyiEsF/WeU5EdpR3oyQnBJFiEP+TAZcxJ281j0SZ4rbI7S1lG6aokgjDFj
	hiUrK0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXDR-00000004FCF-3H1L;
	Mon, 23 Nov 2026 16:48:29 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXDM-00000004F9r-15WU
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 16:48:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5MajPqIeIcfYOrzRZh4/8t2Z9V2pSAqABKnxcioKMFneEtWocCmJhpACzvCvw3YGNoOaXek7Bo0uFk+tzqs9nZh8I73C/DsnsjHi1GtlEjV4UyYRLp5ehZAmzNDN3aNQWZbcW0fko0zzV0JhikMquwcGaMcpcO620owLr70UkQSgbJq4576fgwqCJeRe0USyJ4faiIHrZi+uymMZ9MRlen99hzvGxHtfnKslAIIo5ffQ9Cdx3QVm8D+22a4XWo9AUvj4KiePMD9aUOyjfK0bPC7VN5FUNg2QlxAoyMN3NDO9+FE6JyemduT1aSupxrp653EjqDI1pNvWMAaTrbOyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5mWGiv3bqD17bdr8Xlz9oVxri6TC7UgERSewOueDRuc=;
 b=FX99ek5EGuhhJTD5vUDcQBixVVhMHHTPQD01esOR5Phr5f6IJ7KxauiFP3sVqwyeWAVQFGidR+vSobjUmWulFdO38YLom34H2rtZU/DX2XFc7rQ1ngTmC8M9VQxXDoEOYF6dgQ1TEhu8H3SKH1whrqTJH4wgQTXwCAlo4suGgNuB4Yy/3DqE4KMPbMnfem4rTdhXki3PhAHhoifUjoSgoIESuUlZgu9BEuTKu6A9EFyikMV7yu6oi7c8shPh+Tvf1Oxu6F2dtU/4l9PfkXk7y4rq108zSZT/dkNF8zWGcuPfJR9COjN3/JxiAo0DrBhHQ9rJVpxbgP2uq9ecDCHFcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mWGiv3bqD17bdr8Xlz9oVxri6TC7UgERSewOueDRuc=;
 b=nxrXtT99A8Ysw3ub+VnbG3kGE+ovd0WW5CaW086fG1/EwrKsRqXbbEuSCRUcm9QQr2wcZ/02Ko1viZrdcZ6zbVMr3NVGhBTDmqhpktBhvXYrCFAHB8UGxtBQJ7AxnyxLpNd8x7MR+YNDauPfN0WB6sh7o4i5PNVXj+fvLkcKT1eC+gYkjfwQFXByH6SDGvGYBv20H4cknVSYDILQgbcGPKDFU8d4tDL+2Q3XZvYNDEGC1ooQC0wasU2vZ4x7Myav1rV11BG18v8ChzYAiG9KgUrKRazO4f5R5yYnivyoAa7XpDXOVoJ4UYGh6CkEjLejb6IS6iHB+Vgi8FFc8sA4fg==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com (2603:10a6:290:76::14)
 by DUZPR04MB9796.eurprd04.prod.outlook.com (2603:10a6:10:4e1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.9; Mon, 23 Nov
 2026 16:48:18 +0000
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b]) by MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b%4]) with mapi id 15.21.0639.012; Mon, 23 Nov 2026
 16:48:18 +0000
Date: Mon, 23 Nov 2026 10:48:07 -0600
From: Frank Li <Frank.li@oss.nxp.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Niklas Cassel <cassel@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>, mhi@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	Anvita T <anvita.t@oss.qualcomm.com>
Subject: Re: [PATCH 03/11] PCI: epf-mhi: Add MSI-X support
Message-ID: <awRuR7FXqXMeAVxQ@SMW015318>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-3-6d8839ffa9aa@oss.qualcomm.com>
Content-Disposition: inline
In-Reply-To: <20261122-nord_ep-v1-3-6d8839ffa9aa@oss.qualcomm.com>
X-ClientProxiedBy: PH0PR07CA0068.namprd07.prod.outlook.com
 (2603:10b6:510:f::13) To MI3PR04MB12438.eurprd04.prod.outlook.com
 (2603:10a6:290:76::14)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MI3PR04MB12438:EE_|DUZPR04MB9796:EE_
X-MS-Office365-Filtering-Correlation-Id: 654c8f70-a3f5-409c-1d3d-08df49819337
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|19092799006|376014|7416014|23010399003|6133799003|18002099003|22082099003|10067099003|11063799006|56012099006|4143699003|261021121427099003|261009223027099003|261026140227099003|261028144727099003|261022075727099003|261021123027099003|261022105027099003|261102123227099003|5023799004;
X-Microsoft-Antispam-Message-Info: D6WjBjgndfCXD04Fs9FMVaVlijFvfzFBUKxoE3Nuw40xOUCKnL4QZFlMwdmTm7LSuZrYJMK1WV4uuE1nDbH88A5Iwq3H/p1xbB7Jz3U7B6cUmKhYsTy1JaizC6KuyGLrmKzOPdmaxDYeNjVAacr3kHUMfCLZtYP+9I/ydu9FtX+pP9ox1oDJQn6cNAw2epLjypGpZfaO/2P+0CuAccEH4xbH5ebwk4U0Q2GKOkfRzmAxma+IYEcT6PGIAZtx6JNikmRaJbH8pdICNnK+IBElQOevnptE662MoiaUgvetB4p/iTlJTsnGaFa4ltjjIXR6mtC9kiMPqoKtdjMxppds6+CVmV0k5SGRtte+Uw3f3wcDLiAIeKcd6+bONE7THL18SHUSbxJLC1T3i/1cIM8TyFWw4coIXiCRZzXaI5QoDqakSz6+AfNPz2B8xB2R7qW9haqUMHNKSq4so5/uki/tWBLSzExxb9eWJH+1FjXG+Pz2Id5t9EWGM/36mldIH/YgaZWWKFn/TWaUPs8/TIuqgNeKThe8zI4oWY5l8Prz8MwhKkv4uGcVaSEY5L0uUrVhVhLB8E199dUOYE+mLquCMb17iJPJETY9/q3gqN8wpPHG5RamNn4cL413yP03vnmoDe60jkwW5FSL9HLWu5TXLZZdCxSzvpogqg0dUBGqb10=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MI3PR04MB12438.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(19092799006)(376014)(7416014)(23010399003)(6133799003)(18002099003)(22082099003)(10067099003)(11063799006)(56012099006)(4143699003)(261021121427099003)(261009223027099003)(261026140227099003)(261028144727099003)(261022075727099003)(261021123027099003)(261022105027099003)(261102123227099003)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n7eBYZhLxsOBPF/bupgypxpGYHmJB9nEDrcFBrRTqRuN1zn9aS2Av/3Bt3bW?=
 =?us-ascii?Q?vlr+pLRr+FcrFB6Chb/+9PrNiBDZedBtVSE8GkjFpt44qY6WlFBzWY4zXXCQ?=
 =?us-ascii?Q?IqmP48nUFLLogAtH2xfRgI4GZgYliwPVYFrR9C96YXMazxxDT9K/EecngMQG?=
 =?us-ascii?Q?tH9r2HtHFCpCt0fC0nFQFmf+rgC/XrcALVaO7cMhwtCcNNxWfk5X6vwGk8Qf?=
 =?us-ascii?Q?P2qdsae7RvpRVHCzJ++dgzVpu10mOgSWMV1KsdBjv91Ahfgmkh41iHfvsRCn?=
 =?us-ascii?Q?xM/gk1pOLC4BOQ4CmN28N64u3VJgOWdC2xpFMGAMu7t6bDokrgmw+ovCCkJT?=
 =?us-ascii?Q?oxpmU2GXFy1/QwbqzPypvrwwVMUlf6sC0spcqK/zVR0GEgzI8+Y4WLMyv6vT?=
 =?us-ascii?Q?eWAIyF9l/8+CzGcqpOQotxEA9AO/RLq6h+ELImv82npmDfdbcMWyU2QQxSYD?=
 =?us-ascii?Q?lHB+XzEkCvks8JHh6Iyl/caGXulz1EbtjhCaTCk0oYvxt8MtXBF0xBfCPEQS?=
 =?us-ascii?Q?wlttMRZldYolvxxE452w3+WabGKohJXDag+MwCn0Z6te2czz5xydiEV2NhrE?=
 =?us-ascii?Q?kCvgVRAmSLiQ6MsILaRHVwGvr1Px2Bcy7eSwAKnvOEkRjdBPqukGgxvQTgzV?=
 =?us-ascii?Q?3UeYOyFq20fGVKVgtfz1EraZej6ehgbvpnRDSxtBtDJVsqYSN9u+Qv2iK/as?=
 =?us-ascii?Q?c2FoyS1gjuGm4RJLTSwVBevOzblV9mbk3chH6bnIdW2+/jFFhT2DLI0FtbuB?=
 =?us-ascii?Q?cjfmYc1sMGlMNjD5pnxrpyJrpbIHaL5bqOphxpb0/tD8J3eZKcdYJdrZvefD?=
 =?us-ascii?Q?/NNOS68EfunP6OzfVoN4tL3sbfT6FFOyeD4AkzwCDWd4b0ivEBz8J23GtiYm?=
 =?us-ascii?Q?oP5v8+WhhT6Piys7rS5dwQ+5SUxNA+CTNf2dtQD1weVu2lA2XPRa9yTwT2RU?=
 =?us-ascii?Q?cmmarKToBPP9QUArdIeoHbwJPaKKvYl/zCxkdpl9HuVSsEaQU4b+sXd7ba+O?=
 =?us-ascii?Q?dm4PpU+99tISo9MsemzwDyRfjCseIsuI2sNN6Jc6/Fen+zS5aYNt6pPb/kyQ?=
 =?us-ascii?Q?yTVBkEnG0xws1mTp3yX7mCHHB5IdSUcMz/H/5sFwrUpe6twt9Bc8WG5PhQZo?=
 =?us-ascii?Q?y381a34iHIKKiztEFfn1Dqsd5zRzQGAvhottRQhqolWM/vyY+E0oiddBdLFj?=
 =?us-ascii?Q?6vQkEUyTbWApNkSnWA2MWysNJCkA38wPUWi1OLwb5C0U2TIvINIssktCot2+?=
 =?us-ascii?Q?ewSYokatgA8x3q0S93WrKH+PFyy3bbU7e0apyuIOcVWa7gflj24XAg0XqAwN?=
 =?us-ascii?Q?Btmz0jkJRahItg0GARYsKy9VRJkhTyj1jdvSd/eL8Y3AQX/Lyg1ggFfExpLG?=
 =?us-ascii?Q?0XFlc/qhxfZU02VtXDhuO/D0b01orZE0woaaHWkb5EB4uqBW+y25OaP9TlmI?=
 =?us-ascii?Q?QaoqhgjIF1CJ9ni7lLf0Q/6DNjquXYM1ZGXGtev4nA7rb2789O4z2oi5qaEU?=
 =?us-ascii?Q?dZt1GEVbuiqpQ7bU76QbJr4J24/NdBD9XoYyEpWLD+ffJqpIEkKcbqFklB1f?=
 =?us-ascii?Q?kerBRhIE7brECAy+e4rHExRrJfwWnbNYxjvKUR6m58IAAIuNA3PLnxHXl/fc?=
 =?us-ascii?Q?2D65jcwIb0PichViItt35Mb+L163ZR+5Bj6t0U9aEnEuaTg4iY/96T7/kCGR?=
 =?us-ascii?Q?gs1B8nJUgIlq1CicmM7N4gqR1x1xbSqzt8cldBQgbF43VLz6zLQPMXG8PvIm?=
 =?us-ascii?Q?7mzbx+NfXS2c21aye3UZZSGgCxRc4JYewfl+mc0zYCUQTNcY/sUT?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 654c8f70-a3f5-409c-1d3d-08df49819337
X-MS-Exchange-CrossTenant-AuthSource: MI3PR04MB12438.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2026 16:48:18.0523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bPI17ZznFBnxLLm/MduZl4rvfLfUYz5VcypuO/qUp+FqS3kqaElSZ09Q2iGhXriGvLB+U2Uu0pmB4YJ+KyGfRTIlZhG9mOpF6EH7Rx41cupns7xt6xvfgQmwzakhNmlM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9796
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_084824_442953_AFA4210B 
X-CRM114-Status: GOOD (  26.57  )
X-Spam-Score: 0.0 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 22, 2026 at 08:26:16AM +0530, Krishna Chaitanya Chundru wrote:
>
> Allow the MHI endpoint function to signal interrupts using MSI-X when the
> endpoint controller supports it. On controllers whose epc_features
> advertise msix_capable, set up a dedicated MSI-X BAR (BAR_0) from a
> "msix" memory region supplied by the platform and program the MSI-X
> configuration.
>
> The "msix" resource is optional and only looked up during bind; it is
> required only when the controller reports MSI-X capability. At interrupt
> time, select PCI_IRQ_MSIX over PCI_IRQ_MSI based on whether MSI-X has
> been enabled by the host.
>
> Fetch epc_features earlier in epc_init() so the MSI-X capability can be
> checked before setting up the BARs.
>
> Signed-off-by: Anvita T <anvita.t@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-mhi.c | 54 +++++++++++++++++++++++++---
>  1 file changed, 49 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> index 52cfffcfd5ca..a8765beffe06 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> @@ -148,6 +148,7 @@ struct pci_epf_mhi {
>         struct mutex lock;
>         void __iomem *mmio;
>         resource_size_t mmio_phys;
> +       resource_size_t msix_phys;
>         struct dma_chan *dma_chan_tx;
>         struct dma_chan *dma_chan_rx;
>         struct workqueue_struct *dma_wq;
> @@ -155,6 +156,7 @@ struct pci_epf_mhi {
>         struct list_head dma_list;
>         spinlock_t list_lock;
>         u32 mmio_size;
> +       u32 msix_size;
>         int irq;
>  };
>
> @@ -230,12 +232,16 @@ static void pci_epf_mhi_raise_irq(struct mhi_ep_cntrl *mhi_cntrl, u32 vector)
>         struct pci_epf_mhi *epf_mhi = to_epf_mhi(mhi_cntrl);
>         struct pci_epf *epf = epf_mhi->epf;
>         struct pci_epc *epc = epf->epc;
> +       unsigned int type = PCI_IRQ_MSI;
> +
> +       if (pci_epc_get_msix(epc, epf->func_no, epf->vfunc_no) > 0)
> +               type = PCI_IRQ_MSIX;
>
>         /*
>          * MHI supplies 0 based MSI vectors but the API expects the vector
>          * number to start from 1, so we need to increment the vector by 1.
>          */
> -       pci_epc_raise_irq(epc, epf->func_no, epf->vfunc_no, PCI_IRQ_MSI,
> +       pci_epc_raise_irq(epc, epf->func_no, epf->vfunc_no, type,
>                           vector + 1);
>  }
>
> @@ -714,11 +720,40 @@ static int pci_epf_mhi_epc_init(struct pci_epf *epf)
>  {
>         struct pci_epf_mhi *epf_mhi = epf_get_drvdata(epf);
>         const struct pci_epf_mhi_ep_info *info = epf_mhi->info;
> +       struct pci_epf_bar *msix_bar = &epf->bar[BAR_0];
>         struct pci_epf_bar *epf_bar = &epf->bar[info->bar_num];
>         struct pci_epc *epc = epf->epc;
>         struct device *dev = &epf->dev;
>         int ret;
>
> +       epf_mhi->epc_features = pci_epc_get_features(epc, epf->func_no, epf->vfunc_no);
> +       if (!epf_mhi->epc_features)
> +               return -ENODATA;
> +
> +       if (epf_mhi->epc_features->msix_capable) {
> +               if (!epf_mhi->msix_phys) {
> +                       dev_err(dev, "MSI-X BAR address not configured in DT\n");
> +                       return -EINVAL;
> +               }
> +
> +               msix_bar->phys_addr = epf_mhi->msix_phys;
> +               msix_bar->size = epf_mhi->msix_size;
> +               msix_bar->barno = BAR_0;
> +               msix_bar->flags = info->epf_flags;
> +               ret = pci_epc_set_bar(epc, epf->func_no, epf->vfunc_no, msix_bar);
> +               if (ret) {
> +                       dev_err(dev, "Failed to set MSI-X BAR: %d\n", ret);
> +                       return ret;
> +               }
> +
> +               ret = pci_epc_set_msix(epc, epf->func_no, epf->vfunc_no,
> +                                      info->msi_count, BAR_0, 0);
> +               if (ret) {
> +                       dev_err(dev, "Failed to set MSI-X configuration: %d\n", ret);
> +                       return ret;
> +               }
> +       }
> +
>         epf_bar->phys_addr = epf_mhi->mmio_phys;
>         epf_bar->size = epf_mhi->mmio_size;
>         epf_bar->barno = info->bar_num;
> @@ -743,10 +778,6 @@ static int pci_epf_mhi_epc_init(struct pci_epf *epf)
>                 return ret;
>         }
>
> -       epf_mhi->epc_features = pci_epc_get_features(epc, epf->func_no, epf->vfunc_no);
> -       if (!epf_mhi->epc_features)
> -               return -ENODATA;
> -
>         if (info->flags & MHI_EPF_USE_DMA) {
>                 ret = pci_epf_mhi_dma_init(epf_mhi);
>                 if (ret) {
> @@ -763,6 +794,7 @@ static void pci_epf_mhi_epc_deinit(struct pci_epf *epf)
>         struct pci_epf_mhi *epf_mhi = epf_get_drvdata(epf);
>         const struct pci_epf_mhi_ep_info *info = epf_mhi->info;
>         struct pci_epf_bar *epf_bar = &epf->bar[info->bar_num];
> +       struct pci_epf_bar *msix_bar = &epf->bar[BAR_0];
>         struct mhi_ep_cntrl *mhi_cntrl = &epf_mhi->mhi_cntrl;
>         struct pci_epc *epc = epf->epc;
>
> @@ -773,6 +805,8 @@ static void pci_epf_mhi_epc_deinit(struct pci_epf *epf)
>                 mhi_ep_unregister_controller(mhi_cntrl);
>         }
>
> +       if (epf_mhi->epc_features && epf_mhi->epc_features->msix_capable)
> +               pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no, msix_bar);
>         pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no, epf_bar);
>  }
>
> @@ -880,6 +914,13 @@ static int pci_epf_mhi_bind(struct pci_epf *epf)
>         if (!epf_mhi->mmio)
>                 return -ENOMEM;
>
> +       /* MSI-X BAR address is optional; only present on EPCs that support MSI-X */
> +       res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "msix");
> +       if (res) {
> +               epf_mhi->msix_phys = res->start;
> +               epf_mhi->msix_size = resource_size(res);
> +       }
> +

You'd better use pci_epc_aux_resource() to get such data, instead of direct
access epc's parent device.

Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
