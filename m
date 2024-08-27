Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92229C54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 10:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPBhsPFuUJ/t5Er/UdohJj65eEQBcLqI/jnlN8ofrhk=; b=GXYJMdauD6dV1N
	iHMi2pHI8EDw4sToVc667CMw4kjpIXxTlV785U7dg457XEcMzbKU97MDlAuWvwFnkyrg2K1cBmfwy
	/a5/SVdKm4Sa3abxzZfjY3vRozCHQpUJ7jJfNJd2n36ZdojodLSbhU4Rh5CcmDFFAtqmMhTrK/7AI
	WbyE65rGZI/V5GN5dThyntv92vxr0/WkS02G2EGyZFyTtzQ0yMdhpo4LkjI3dq9YrFJvXwpG8RfA2
	gV3yKefuTqpady8icI9uwzX1M1PlCQ3/SnWP1QA/pzKOuzuhWmnSanuS5vwwbpnm3Rsez+1IWkWGP
	F/Q18wsWgY6dvEYubyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitLJ-0000000AnMO-1I5L;
	Tue, 27 Aug 2024 10:22:29 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitLG-0000000AnLv-38lh
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 10:22:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F05C9A41786;
	Tue, 27 Aug 2024 10:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9938C8B7AA;
	Tue, 27 Aug 2024 10:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724753611;
	bh=ViaDqzwpYnvS/bHWsMjQGqwKYxil9jck0BPMVINQhRw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nGnW70Wy5l1GPvGwf6j0XLOnZugSDqYyDrtIhlTTmNZjGSpSiPVjBDJzL4XgNXOMS
	 QOQF6eZiXBaDzgmnLto7XoCBPsp35WnouB569nfca19j9fki4xfRLseD18xbRkoebE
	 Vl8up2lmG2pfZ75ap3/rbb77e/rekOrh/lfUq4jLat8wQns5a4y8XshHAoUgdzOLm+
	 At3THsWikTSGe1455twvEjvE9RB+DCZb2C9KnzAUoAdd06pcYyqVq64T1Lg6mry+CB
	 MM1zl2+Y5LBnMy/p87y/ijhNT+9DrZ7WOmUrIqjPw9clI/TGEnHs0SaCh0C5HvjSXw
	 9aNr0SV2kmp6w==
Message-ID: <a16b2ae5-43bf-41a5-9a6c-9acbddde36e2@kernel.org>
Date: Tue, 27 Aug 2024 12:13:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] phy: qcom-qmp: pcs: Add v6.30 register offsets
To: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-3-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240827063631.3932971-3-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_032226_870243_48BD1B16 
X-CRM114-Status: GOOD (  12.15  )
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

On 27.08.2024 8:36 AM, Qiang Yu wrote:
> x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8. Add the new
> PCS offsets in a dedicated header file.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
> new file mode 100644
> index 000000000000..9aa6d3622c24
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center. All rights reserved.
> + */
> +
> +#ifndef QCOM_PHY_QMP_PCS_V6_30_H_
> +#define QCOM_PHY_QMP_PCS_V6_30_H_
> +
> +/* Only for QMP V6_30 PHY - PCIe PCS registers */
> +#define	QPHY_V6_30_PCS_LOCK_DETECT_CONFIG2		0x0cc
> +#define	QPHY_V6_30_PCS_G3S2_PRE_GAIN			0x17c
> +#define	QPHY_V6_30_PCS_RX_SIGDET_LVL			0x194
> +#define	QPHY_V6_30_PCS_ALIGN_DETECT_CONFIG7		0x1dc
> +#define	QPHY_V6_30_PCS_TX_RX_CONFIG			0x1e0
> +#define	QPHY_V6_30_PCS_TX_RX_CONFIG2			0x1e4
> +#define	QPHY_V6_30_PCS_EQ_CONFIG4			0x1fc
> +#define	QPHY_V6_30_PCS_EQ_CONFIG5			0x200

Squash with the previous one and the next one, and please make the
indentation consistent

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
