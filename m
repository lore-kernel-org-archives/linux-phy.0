Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A908C54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 12:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVBC9lMbJMHFBG6shnhbunVzK2tPGkHLAjvFEqeIQYc=; b=y6CtguO5JSec18
	O2XI/ZAUtqvMxgogPOmNGvKuctSD1ByD8ry3+K+82A40+QFodDSzAqAGczFgUMWLLo2ZubiekEVX+
	WSW7mqmxMODBHOlUScolhbGAwTo23jIV42WFgq6Kaxbu/MEbgObs/lG1MYad4xWApGTuQRs8HJeWN
	Vbg4coA9tyfrJnI7twlkwPUPN5nno1cLPrXz2G8yIibgpfqncKPwOYluwuatPzXV6aPdcXTou/qsl
	dH3uSbMqTlqbHsvmkEKfTAHul4WsnaEtb5qJ/zEhgBDH32Kd21XHGpyOIHE+70UVyaw//QcB7LxiK
	2YeL9B/zc2ZSJAjSIEwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siv3k-0000000BAOm-0RB5;
	Tue, 27 Aug 2024 12:12:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siv3h-0000000BANF-2hyh
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 12:12:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BBCCCA4191F;
	Tue, 27 Aug 2024 12:12:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F891C567DC;
	Tue, 27 Aug 2024 11:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724758632;
	bh=pqaE6MBhVqZ3MnXvihv9QZJKz2GO/zc7qXNrlb1bhlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EZWU14K+PAj6TLtV2SsINSwgSrjjuNOe8bvFXR17KR/IHlsyxOjzJw7FcrOhgivzh
	 G/Ed3KWIn9RjuLFZnQK6EkgKXmcfU65uXzaxkKaAGj2T86/ekhSVR5MJe0WHIfvW2U
	 YGup/38jbLJVdxT/3tyPXqb4vIDfJfPpQCXH53ww2/gzMtEWQSaBVrLRveKATf93vQ
	 ZjXTGs0/xj38HQ58xACYINxWRf7zlDngVVJPCuBYdn/SwjskFuza+RR5DVrE0ca3DP
	 fBxzFCQWTcSTOFbfRukgvbAwAZ4/NNzCROBLcSJ16uL51MrtvQ54UcOzdVghKQ/M/r
	 0gzd4sXB+ohAA==
Date: Tue, 27 Aug 2024 13:37:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/8] phy: qcom-qmp: pcs-pcie: Add v6.30 register offsets
Message-ID: <2ojutgxk4kplxwrxxcq5zorejuohbow7dr6lhl4cwndkwzvxf6@lxg4um6krdnh>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-2-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827063631.3932971-2-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_051225_760536_D92F8C86 
X-CRM114-Status: GOOD (  14.02  )
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

On Mon, Aug 26, 2024 at 11:36:24PM -0700, Qiang Yu wrote:
> x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8. Add the new
> PCS PCIE specific offsets in a dedicated header file.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
> new file mode 100644
> index 000000000000..5a58ff197e6e
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center. All rights reserved.
> + */
> +
> +#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_30_H_
> +#define QCOM_PHY_QMP_PCS_PCIE_V6_30_H_
> +
> +/* Only for QMP V6_30 PHY - PCIE have different offsets than V6 */
> +#define QPHY_PCIE_V6_30_PCS_POWER_STATE_CONFIG2		0x014
> +#define QPHY_PCIE_V6_30_PCS_TX_RX_CONFIG		0x020
> +#define QPHY_PCIE_V6_30_PCS_ENDPOINT_REFCLK_DRIVE	0x024
> +#define QPHY_PCIE_V6_30_PCS_OSC_DTCT_ACTIONS		0x098
> +#define QPHY_PCIE_V6_30_PCS_EQ_CONFIG1			0x0a8
> +#define QPHY_PCIE_V6_30_PCS_G3_RXEQEVAL_TIME		0x0f8
> +#define QPHY_PCIE_V6_30_PCS_G4_RXEQEVAL_TIME		0x0fc
> +#define QPHY_PCIE_V6_30_PCS_G4_EQ_CONFIG5		0x110
> +#define QPHY_PCIE_V6_30_PCS_G4_PRE_GAIN			0x164
> +#define QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG1	0x184
> +#define QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG3	0x18c
> +#define QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG5	0x194
> +#define QPHY_PCIE_V6_30_PCS_G3_FOM_EQ_CONFIG5		0x1b4
> +#define QPHY_PCIE_V6_30_PCS_G4_FOM_EQ_CONFIG5		0x1c8

There is no user of these. Squash it with the user, because there is
little point in adding dead code.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
