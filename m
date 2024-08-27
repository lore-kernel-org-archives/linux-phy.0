Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8277C54734
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 10:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcGvlmaUgYk/pilEeT6774VLGrTRbCOh2/AQA5MaRzI=; b=YG+ZIjs1UUAk/T
	Z/pzqvK5MJWhiC/ZbtG4TpkzANa8NLw1cA32tpMzktSaZtHKv2ENgHfLtoLiVXVclW9W45BYfpDog
	E9hfFVo8T2b0DMpoVJh5E8pSj3sIG8odkeonO/WFoYzhfFtsbiuXvhULOAad0Vj/rmIw0TqgWOg89
	mirL50q69sSFy0YwXzfAYrMsyJXu5xADMqTKC8Qg7z0KfJmhw1nMOsPELjNlmq02wSDgMkl2We3i2
	0zEwSEbGwRbGW623J9tCwRJaKV2N8ayPtq5L4D0g+DewQZ/sz8NF6z4XsmbE5KbbHDW3UBeRpnmid
	9699zioo20Gok2L5Kjqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitVi-0000000ApYO-1tkf;
	Tue, 27 Aug 2024 10:33:14 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitVg-0000000ApWs-0wG3
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 10:33:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 68F2CA4178E;
	Tue, 27 Aug 2024 10:33:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D693EC8B7A4;
	Tue, 27 Aug 2024 10:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724754791;
	bh=cR7h+2R2D+Lq9NcV2CvzH83tJKg5LBeLkWoEq+6UNSY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aKvyi+Ghqx4bemzetoDEKzGX5EfXUIegPXeuzyAzG5HZtSvGqpul8p8ML276Jw3hM
	 FYzZjrEoHp51Qhmib+lF8rhtP6GVxreg1qCAOldPfVZiHGA4e+sYODDxkMUbr00TDd
	 9hJ/TZ//ufr3P06s47kYc7TB6nLetewf27CLaRIfinh/iLw0YqNO2UM/jxjMj7Wn5d
	 UKGb0RydTOFcMo6jdqmjWDTm29BdepBpKtQ4pvk9Aax5CeHvk8e2r3UEUKJLMs+VZw
	 RBRJ+dirqwBQIu7/0XgetatDFswfjdZtSqVZUbZY4nr6i3C01RWUni7fRizE7CrHwp
	 tg8P+t5jhNKrQ==
Message-ID: <2d3f3da1-713e-4378-b87d-11f10f0f9590@kernel.org>
Date: Tue, 27 Aug 2024 12:33:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] phy: qcom: qmp: Add phy register and clk setting for
 x1e80100 PCIe3
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
 <20240827063631.3932971-4-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240827063631.3932971-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_033312_431033_DD6DFF40 
X-CRM114-Status: GOOD (  14.81  )
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
> Currently driver supports only x4 lane based functionality using tx/rx and
> tx2/rx2 pair of register sets. To support 8 lane functionality with PCIe3,
> PCIe3 related QMP PHY provides additional programming which are available
> as txz and rxz based register set. Hence adds txz and rxz based registers
> usage and programming sequences. Phy register setting for txz and rxz will
> be applied to all 8 lanes. Some lanes may have different settings on
> several registers than txz/rxz, these registers should be programmed after
> txz/rxz programming sequences completing.
> 
> Besides, PCIe3 related QMP PHY also requires addtional clk, which is named
> as clkref_en. Hence, add this clk into qmp_pciephy_clk_l so that it can be
> easily parsed from devicetree during init.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---

[...]

> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x8_pcie_rx_tbl[] = {
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x3a, 1),

1 -> BIT(0)

[...]

> +	/* Set to true for programming all 8 lanes using txz/rxz registers */
> +	bool lane_broadcasting;

This is unnecessary because you call qmp_configure_lane conditionally,
but that function has a nullcheck built in

> +
>  	/* resets to be requested */
>  	const char * const *reset_list;
>  	int num_resets;
> @@ -2655,6 +2815,8 @@ struct qmp_pcie {
>  	void __iomem *rx;
>  	void __iomem *tx2;
>  	void __iomem *rx2;
> +	void __iomem *txz;
> +	void __iomem *rxz;
>  	void __iomem *ln_shrd;
>  
>  	void __iomem *port_b;
> @@ -2700,7 +2862,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>  
>  /* list of clocks required by phy */
>  static const char * const qmp_pciephy_clk_l[] = {
> -	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> +	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "clkref_en",

Why not just put in TCSR_PCIE_8L_CLKREF_EN as "ref"? It's downstream
of the XO anyway.

[...]

>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -3700,6 +3907,11 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>  
>  	qmp_configure(qmp->dev, serdes, tbls->serdes, tbls->serdes_num);
>  
> +	if (cfg->lane_broadcasting) {

All these ifs can be unconditional

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
