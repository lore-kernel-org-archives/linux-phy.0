Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEDC7C54734
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 11:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LStRFv4l2FSCqrgrAZQRTWRxkYdJeAHaBk3CAzWlmls=; b=o5QkZF1ABUYPp3
	Qo8Ta8d8RXo06UJmLAgDLd7zt0W8siheqERc9lginmhH8l7c/kWXfqqwbtlB9/mgTb2Tey6y8/c9Z
	KcxzSqnsxjTjxu/bDpcjjARn62Lb9BsxI/3qZZBy1hkPwC+25XEvKZ4VeM4PI7Au0Pe3gUpRqxv6L
	/Hsl15Xzy78FO+YAyQQ+H+wHqCGrn7RLSoHKUnhWw2YF66IQq+E4x5Xey1Xibxk0mDiDQF81rYyE/
	jvdpmqIERHFKVCetjHH/EHLeG/XRHV8ItM4uXhgjTggj+9yKr5dYoTFHOotvCTWazmhT7Fy3DKKHU
	v/G+9OR/qhESQHCZ0YfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sityE-0000000Auyf-2H8s;
	Tue, 27 Aug 2024 11:02:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sityC-0000000Auy7-1ZFA
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 11:02:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B39D3A417FD;
	Tue, 27 Aug 2024 11:02:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CCA7C8B7A0;
	Tue, 27 Aug 2024 11:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724756559;
	bh=AdxxyU7osmJMtOozW5BsXf+2/zQypAfNNaF3yzunBVk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fWnmJFwMfvSprxmKFgXSpRKb2p6ZxhMsPV+1W75GynZLR7cYyCHoF2/5c6NKrBLug
	 oQjbcA0JCpLRSQXh/SwKhW4UuOrUP0GaMChkPVPom7YSoL4889apIwavlckTM8kTQD
	 PQqGO3HegTX9dcaqzYmXKnbO5pG0xwwdnDVpySOBfjskKyvbBeU2emKSkS+SzIL5N+
	 V5iN9YtvertY+9qj7EI/r+Abt0WlFwupNDvTM/Fhvn17A/XAwOSSYCcrrunMAjXxLv
	 q/8xla2Cl1AxeIsSZ5ySnt0+vNGU1vuZf9D/UmQvvgYTvCWkqlXTqewQMFnekfvl/I
	 u2wB68YFyTwPA==
Message-ID: <52b32254-8468-4fba-8357-0edc54dee129@kernel.org>
Date: Tue, 27 Aug 2024 13:02:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
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
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240827063631.3932971-9-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_040240_512117_B9E4EF19 
X-CRM114-Status: GOOD (  16.17  )
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
> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
> support to use 3.3v, 3.3v aux and 12v regulators.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 52 +++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 6f953e32d990..59fb415dfeeb 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -248,6 +248,8 @@ struct qcom_pcie_cfg {
>  	bool no_l0s;
>  };
>  
> +#define QCOM_PCIE_SLOT_MAX_SUPPLIES			3
> +
>  struct qcom_pcie {
>  	struct dw_pcie *pci;
>  	void __iomem *parf;			/* DT parf */
> @@ -260,6 +262,7 @@ struct qcom_pcie {
>  	struct icc_path *icc_cpu;
>  	const struct qcom_pcie_cfg *cfg;
>  	struct dentry *debugfs;
> +	struct regulator_bulk_data slot_supplies[QCOM_PCIE_SLOT_MAX_SUPPLIES];
>  	bool suspended;
>  	bool use_pm_opp;
>  };
> @@ -1174,6 +1177,41 @@ static int qcom_pcie_link_up(struct dw_pcie *pci)
>  	return !!(val & PCI_EXP_LNKSTA_DLLLA);
>  }
>  
> +static int qcom_pcie_enable_slot_supplies(struct qcom_pcie *pcie)
> +{
> +	struct dw_pcie *pci = pcie->pci;
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(pcie->slot_supplies),
> +				    pcie->slot_supplies);
> +	if (ret < 0)
> +		dev_err(pci->dev, "Failed to enable slot regulators\n");

return dev_err_probe would be a good call.. probably more so below,
but won't hurt to use here too

> +
> +	return ret;
> +}
> +
> +static void qcom_pcie_disable_slot_supplies(struct qcom_pcie *pcie)
> +{
> +	regulator_bulk_disable(ARRAY_SIZE(pcie->slot_supplies),
> +			       pcie->slot_supplies);
> +}

This I feel like is overly abstracted

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
