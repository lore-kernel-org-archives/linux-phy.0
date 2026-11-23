Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F2F606A31F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 16:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nZ7AfQJZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.a=rsa-sha256 header.s=selector1-NXP1-onmicrosoft-com header.b=yINGSTd+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oYSLg2v2NZM09AtUsIiUvBUNdu2YZvY/Ji1rrrQBdzw=; b=nZ7AfQJZveOYe8WxJ1W0d/i6sS
	ahs8Fj5xOuU79G1mf6F05GAFHzhrFi8Bl7rTzcKJPlhKosRYTvBIEdxOg6xmi43KanWceqofe9FIm
	3khilCAVNq6UEcJMc8IDIV6CoLxKPcLgEPR/5p63gOCC0SNfvulRzKbK3WxrUK/KovJwprm8voCqh
	L4FoZaOMtdpQqcb7LF9zzV6dFx03QcMCdJGjZmryC+dmAtAFa8ebEQEYAUlri0PFHW5e04Q/WicK6
	3kLgJV/r1s3x2Ni0pvQRK/d7dHNhCFmaioY7eAJt2KBZTev8AEV0IVKS0miCZ9YH7GcjnGsrFTVBN
	qgn5NFKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVX78-00000004EJX-3uVG;
	Mon, 23 Nov 2026 16:41:58 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVX77-00000004EIO-0C8O
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 16:41:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mb5HIadZZvGyXgV41uG956oqOF6t89PHFJ2tHjPmM/KRqbe6v1eoqHmOAlz2iEn0SwlQLYF3fFFDuwyiOv/Esw9MzQtbQMRPxcpnZGNLXZagYP8oQwGjz22J3nbD+7JqFigYfFXDiaoiMiHBHQldAPjkAB+uMjqg1aFl6fsKWz6Rx2PnWtBefIEXxDXyQIdUbvIoXQV7grXDZV0qvB9/njUKFsU/30dt6gc3xtV/FuUqlJeVDdwgvQrJUwtwxMg/0h5lHnQlO5/L7WUgkOyIzzaH0pnyeYZ/JweyL4/1w4KRa5PzPOQ2OuhQh1pJoWFQe9L6ol6GpR/7vvZA/MT2Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=puuyONZqQyvaNTFislAf7tN6e6fdu71bEhr6njjkIp4=;
 b=WfjcT5/bPaarPkfA2JFpcHqcVQOt8zVMiTC7iEKLGQZc0GpiE5yd3BqXxm9oK8tigyMx7P9t0CE/SGg4rDHIe/oFDFSTWThpsEivhK/rH9MJRYEPQIZhzu77U53tXlobSJkc/o8g4LAkDnXmvAFJYo0L6U+N0ibJHBVYiUBP4+uR16TahGrz4C6L3q/QSkJhYLvvr13fcq7Kfpp4KeywLrvj537H9QeMzNn0lxP6nk9rbxRNfFJtOnOqDezjbG89t/LNe4RE73FFjhcyfNjgcsOjX6zG7z/26VMQBKIua60MZzykk4hBhjS1NHqSKkYexCV6hj+E4Mi10WfiCfEKZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=puuyONZqQyvaNTFislAf7tN6e6fdu71bEhr6njjkIp4=;
 b=yINGSTd+uRFDyMrZFGx3/MI6ZkIvWvdZ2xUPEsFkbtoGxqtmoh+ypPUBMVm4a6U+xyS6p+xxGkZ+9U/ZSpfnaYLp7rl4KmrixaY5VKv6aLkkdf7acDoNSB1w/AHh1hbP3DAcXwBSJtBghy11pQs5mDWj7PxXJjbL80pEbxoIW3cTjy+PviN5A++T0YAuc/v7asccYGk0ClzvoyAvHQRHIRxIvJRnIEuCNQsDfYMBCXIkMmXgh4eaS4PV+tV3WQzgKZ2gUP6ReG6UJE/sTZCx0y5laDcdOR+uWMrlo0sYvcdSYqk6ghE+nEAhhQirYX3ZWw45YL3BKCuCvsgzzB8Zag==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com (2603:10a6:290:76::14)
 by GV2PR04MB11884.eurprd04.prod.outlook.com (2603:10a6:150:2f0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.639.14; Mon, 23 Nov
 2026 16:41:47 +0000
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b]) by MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b%4]) with mapi id 15.21.0639.012; Mon, 23 Nov 2026
 16:41:47 +0000
Date: Mon, 23 Nov 2026 10:41:35 -0600
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
Subject: Re: [PATCH 02/11] PCI: qcom-ep: Add MSI-X support
Message-ID: <awRsv7j4BptoBdD7@SMW015318>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-2-6d8839ffa9aa@oss.qualcomm.com>
Content-Disposition: inline
In-Reply-To: <20261122-nord_ep-v1-2-6d8839ffa9aa@oss.qualcomm.com>
X-ClientProxiedBy: PH8P221CA0037.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:346::8) To MI3PR04MB12438.eurprd04.prod.outlook.com
 (2603:10a6:290:76::14)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MI3PR04MB12438:EE_|GV2PR04MB11884:EE_
X-MS-Office365-Filtering-Correlation-Id: 19392fd9-5db2-4019-14ac-08df4980aa28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014|23010399003|19092799006|10067099003|4143699003|11063799006|5023799004|56012099006|261021121427099003|261022075727099003|261009223027099003|261022105027099003|261102123227099003|261026121527099003|261026140227099003|261028144727099003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: 0I6Fnp69hxm/HCV9R8wuMqKphwGZMjBBtf+czcjGG0F8XMErOqZ6sKUdRWSOKvScNzCa2xQr/rOH4vvieZ6mGHAj9pEyQ/rRw6v9S0m2NfdtvQxROIPFXqvydOhUqXUuuXTwBpHXHfWDVbIeW1Wy7j50KTZhb+3fz/sTDrDIdjBTQnvI7IjBJgmXkPCbSIsa6EwcgRIs/bWsrAQnW6hVA9UgzhobGBvAlbjcgoRPo+K9quKjuh0Z3uBkmlM7HfWbHMN/ojdgf9ApjfWSIXgSlgG8J8AeP/OJOvbAhUmQoXmVK0TANPSHGde9owQ2Scnh6FJ2hRH++0Q+d72p/2n2WGTbrlIeO89pn3voBtA3G1EQqyAsADgkQf9wWmsH2CIoPjpc9CbzzXnWrx+LjqNecEZkgfIGlTA00otkJGs6FslEL1IuJSCzPeLFF4fn81bhcPKgBl/0ROtPYrqzfOYRgxi4As8sEa+WWX2SeLeC3Yjr/ISHV1r4e3sb+v/s39IabebOCILAEER9W3RQcFzAzQqu1ZKL9qU1kGCHTMHLz1BXxaV8d/PYuUGoR8McMvHIleDFd1apfLAM4H1Fwmp4RcyJJcYBrXofIB84u46NVWJT6eR8bsQ88/p8lE98oDwBm0ogjg1AMpo0W7LNw/Nqly+zOGp+RP3iMYBmbXqHid0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MI3PR04MB12438.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014)(23010399003)(19092799006)(10067099003)(4143699003)(11063799006)(5023799004)(56012099006)(261021121427099003)(261022075727099003)(261009223027099003)(261022105027099003)(261102123227099003)(261026121527099003)(261026140227099003)(261028144727099003)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/aVQOvCnpQrLrRZia+4E80Dqkd9ftHGSZObCT5/uE4S/YBacxoXcQx6CvuUD?=
 =?us-ascii?Q?NAHasWeMkGDEqQNEu2w/BbzW+pKMcMIjcPz2RaBWsjV8Ljuw3OGdbxtZdr7/?=
 =?us-ascii?Q?HUZB2mX9RTgbWzSV/ZT5v5g1K3/znyFzUqTMlddhdarq3FIL9wN3caiZ2o0u?=
 =?us-ascii?Q?b+2qL4m9rtLHBbkXiAwYknbHuuXpEsNrKlJ9oxerWAQNdk/+l2s4Jw5d2ahb?=
 =?us-ascii?Q?bzS9L/Y949YGhKq5ATeLUbE3LUIYRlzk+oEVvbbAKT9/b5fAUpUIBgP9zZhE?=
 =?us-ascii?Q?FPVE5vhLGhuDkcawzmHdIE3EHxjA4eIvdM58VuZjQmIpllrstOA/f1qWVhhD?=
 =?us-ascii?Q?RorZfoLOPukQgUID3rvKpmOtXC6E954WS63KMB4Cj9x4Z9xemkft93JrO5sE?=
 =?us-ascii?Q?RASQqmYc/obnuH3jv1r3WjxArPK5R0Y0vTd/yALWrpD4knfK0bYzsISj6wfp?=
 =?us-ascii?Q?omIuGr9riH12ZyiPTxXeqPWX4foCnnpsiIQ+oNrvLWUefgd5olvlmSNyONvs?=
 =?us-ascii?Q?LCKwzqSUU/yw/LA1vILSnS3NmZRrYMZ2noEHW4jVWgehHPDM66ird/vbnoGY?=
 =?us-ascii?Q?+uHDhOfjF0z+JGIWvstBKCiZA6iYQB+bY6hks+JO87IrW+w/2PoXMPXnMXU/?=
 =?us-ascii?Q?/F1C/sYL8Ar3HgTc8B8I5L+hpgj2uHzwXnHMA8oIiXuKUC9NAbLNoYQLMRo8?=
 =?us-ascii?Q?Zt29zyd/1C/TpOAUDFn96Q/A0VkAlBOuFwymFBoou4+5kO4rDtR0JNNXXFRp?=
 =?us-ascii?Q?++JRafg6mZnvu+8zRgY4luEa7lKVx/ALl6nYvdC4iWJJ6ULpgGxCO+X3vUhc?=
 =?us-ascii?Q?IAIj4JloPiA/Qnb7EFvfADgqu4XaA6oA6WbcqFWbW4DRPhfuXYwc8Hg9RooJ?=
 =?us-ascii?Q?KaV94uKTjFMij6xTDzney/64WoJBOx4DfOcKsmtbokuYQmhigrkzYVlMcUVS?=
 =?us-ascii?Q?/Uw8MovN+qLSxhHeSCAW7VQd+IIpXq/r8wiQXphUwEDePod8O50RU6NWRcB/?=
 =?us-ascii?Q?D1UzyWF9rbU+yUwhF8rBhNa4eYa6uybWmgwBOOaYWgqUFcUfdqXMQC7xZ8bN?=
 =?us-ascii?Q?FSpV8ryJ7Z39HCctI8SC7iBjf7v5OYxsRGxk5BDqWBLi5Y2udb1Efy1qk5ic?=
 =?us-ascii?Q?4m3Hgn/4dDxjT/fnFA8dauphmfBuGwxmBE6tY1HTxoYXePBp4zXfiim//D7p?=
 =?us-ascii?Q?R6hQAocSAaC4l4gl5ZNByolHSYITofCs6qUCD0MV9xiWs/D/VSsa//fDWV3R?=
 =?us-ascii?Q?8u2Sc/j104ClfHXbaTk2rDvmNL4GFLJ0NSI+yPHwE8VytF4/E+YUKifSKktt?=
 =?us-ascii?Q?bTCXTyTswm2bnIR1WKyCIAnrQ9ODZrH3LqJIvZeuUpwTwexZH8ia7/8DoJSe?=
 =?us-ascii?Q?3eVK6rn870p0RecJ9xQ0gWcdQsuohXi1tHn9WCN4i4F+0eRGAsitM6aV/TcA?=
 =?us-ascii?Q?m0GssqqmxRGGaHHz6K2tgKStrQETIbmrWu9Qup/fP/fcYnCXxjYC7TCDFCWc?=
 =?us-ascii?Q?nG178XAdJt54DKZypGe2MlNf2cXMrmzICoujTI36hITZyxZ8Xtw8WXn3MCyS?=
 =?us-ascii?Q?WmlSaU/W1L72McSX6ovpumYrmPh9MSTU3WIljdtNZ6QoD8NtFQCjGTekhzK3?=
 =?us-ascii?Q?y5KptC0Q6MbZPlI3GYCK9QUYfzskEbYp1FmWNqL0r9aZCp4vT/QHPrDHycQh?=
 =?us-ascii?Q?dAzbtfVpen5Aavzv3soIUsKpKRG47Qn1ZGpJngpJaML5QM9J/OP6cygQpxlI?=
 =?us-ascii?Q?ZWKpEbVCcW9pqLTjgbxARuz8mPkMF98UiUliqmsE71HGl4GB1gJc?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19392fd9-5db2-4019-14ac-08df4980aa28
X-MS-Exchange-CrossTenant-AuthSource: MI3PR04MB12438.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2026 16:41:46.9992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BA25ev++uW/4I9Ae8lynCWAwfiCyH2hAb0XYTjhvuyWDB5iA5iaxdtMZqAFz29v/2dXjt9SIBENsXoV/xUn/oNvsvG8SEYNLaMpLbPyqVFs8SOEgWmjziRxzDriLfnXR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB11884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_084157_095317_21BBB383 
X-CRM114-Status: GOOD (  20.05  )
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

On Sun, Nov 22, 2026 at 08:26:15AM +0530, Krishna Chaitanya Chundru wrote:
> [You don't often get email from krishna.chundru@oss.qualcomm.com. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>
> From: Anvita T <anvita.t@oss.qualcomm.com>
>
> The controller can signal interrupts using MSI-X in addition to MSI.
> Add an epc_features variant that advertises msix_capable and select it
> from ->get_features() for SoC configs that set the new msix_capable
> flag. Route PCI_IRQ_MSIX requests in ->raise_irq() to
> dw_pcie_ep_raise_msix_irq_doorbell().
>
> No functional change for existing SoCs, which leave msix_capable unset.
>
> Signed-off-by: Anvita T <anvita.t@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index 2d7ddf8d173f..c794a2207df2 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -170,12 +170,14 @@ enum qcom_pcie_ep_link_status {
>   * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache snooping
>   * @disable_mhi_ram_parity_check: Disable MHI RAM data parity error check
>   * @firmware_managed: Set if the controller is firmware managed
> + * @msix_capable: Set if the controller supports MSI-X
>   */
>  struct qcom_pcie_ep_cfg {
>         bool hdma_support;
>         bool override_no_snoop;
>         bool disable_mhi_ram_parity_check;
>         bool firmware_managed;
> +       bool msix_capable;

why not direct put pci_epc_features pointer here.

Frank

>  };
>
>  /**
> @@ -806,6 +808,8 @@ static int qcom_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
>                 return dw_pcie_ep_raise_intx_irq(ep, func_no);
>         case PCI_IRQ_MSI:
>                 return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
> +       case PCI_IRQ_MSIX:
> +               return dw_pcie_ep_raise_msix_irq_doorbell(ep, func_no, interrupt_num);
>         default:
>                 dev_err(pci->dev, "Unknown IRQ type\n");
>                 return -EINVAL;
> @@ -852,9 +856,25 @@ static const struct pci_epc_features qcom_pcie_epc_features = {
>         .bar[BAR_2] = { .only_64bit = true, },
>  };
>
> +static const struct pci_epc_features qcom_pcie_epc_features_msix = {
> +       DWC_EPC_COMMON_FEATURES,
> +       .linkup_notifier = true,
> +       .msi_capable = true,
> +       .msix_capable = true,
> +       .align = SZ_4K,
> +       .bar[BAR_0] = { .only_64bit = true, },
> +       .bar[BAR_2] = { .only_64bit = true, },
> +};
> +
>  static const struct pci_epc_features *
>  qcom_pcie_epc_get_features(struct dw_pcie_ep *pci_ep)
>  {
> +       struct dw_pcie *pci = to_dw_pcie_from_ep(pci_ep);
> +       struct qcom_pcie_ep *pcie_ep = to_pcie_ep(pci);
> +
> +       if (pcie_ep->cfg && pcie_ep->cfg->msix_capable)
> +               return &qcom_pcie_epc_features_msix;
> +
>         return &qcom_pcie_epc_features;
>  }
>
>
> --
> 2.34.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
