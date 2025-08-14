Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B2AC87FCF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLM1ctrhL3/Efnf4+hezm3mx4iaDDlzPxcwpURynjGc=; b=YhFc73AKmaH7TS
	TYdNlQrsyqQUK/iD/essDuUk3VqiSKuzn64Q8sy/8MZ9LeS8DkgswPacW+TjmIeFu3lW8KaAufBXb
	j02GgigGZYhjyFljfSwYYCn/1DTWp+Bc8NlbhzLWiBx6hNEASBPCHJHgJkQQwDlj+7DRFJ54WIN8I
	/q+smJ2wIG1Nu4vMif3N59IbW+wCUijPrH8dzzARjtAk0LgRtaxa45npykqWjIKXLTH6MS6qVlAki
	rKirLK/AKBVF/MwmTDq22EAWiJwjoa9NVo6OT1H3Y6/lyQB0ZqGU5kIrfKr6xG+C97mUKTYx0sPV0
	Kj890EkySj6Ie8I9UppQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umNvE-0000000FbPV-2j1d;
	Thu, 14 Aug 2025 02:42:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umNvD-0000000FbPL-0NxU
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 02:42:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 241A1601DE;
	Thu, 14 Aug 2025 02:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94629C4CEEB;
	Thu, 14 Aug 2025 02:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755139349;
	bh=gO3lJXgabc7AUPzva2vdMGiplMe6IOlcwtjT6/u0L4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKSv53ddCeFZktY6OTHrIsl/pgos9p00zm1sqO2e4PozAJ2sBskiudD4873TCmr/F
	 0GZMdS/bl9LHR4T1vDPy0fBzdVA7ftX7HTxsyetASg9t0jLT/18/EWl2CVWv3bSTqy
	 8v9DcoQ1yNCsd+45madOmFEVYNIt2LVTGVPqr0QooP2BGuKbt3OhGOBhdXQf/M2HHX
	 Z//mD73GnVVHdhFNKPGFeY+l7dJt8YUs/6Q4tbSW/5N2OHydmvfkRDLX3hb0cBCI/V
	 4dw4a2ic2Xm4QREt25fdp2ZSzZS+SYvzbb7t3V+rACvq33MnArlB/Ikq7UI54dC0b9
	 86W8UyaTdGbnw==
Date: Wed, 13 Aug 2025 21:42:26 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	agross@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
Message-ID: <tlkv63ccpnti367am47ymhaw3agjnyuonqstgtfaazhhptvgsp@q4wzuzdph323>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
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

On Thu, Aug 14, 2025 at 10:59:04AM +1000, Harrison Vanderbyl wrote:

Welcome to LKML, Harrison. Some small things to improve.

Please extend the subject prefix to match other changes in the files of
each patch, e.g. this one would be "arm64: dts: qcom: x1e80100: ".

"git log --oneline -- file" is your friend here.

> Describe device tree entry for x1e80100 ufs device

A blank line here please.

> Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 91 ++++++++++++++++++++++++++
>  1 file changed, 91 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a9a7bb676c6f..effa776e3dd0 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2819,6 +2819,97 @@ tsens3: thermal-sensor@c274000 {
>  			#thermal-sensor-cells = <1>;
>  		};
>  
> +

Watch out for unnecessary white spaces, we want to keep things neat and
tidy.

> +		ufs_mem_hc: ufs@1d84000 {

Please place nodes sorted based on address, then name, then label (i.e.
in this case, only address).

> +			compatible = "qcom,x1e80100-ufshc",
> +			"qcom,ufshc", "jedec,ufs-2.0";

This line break is a bit weird, please indent it.

Regards,
Bjorn

> +			reg = <0 0x01d84000 0 0x3000>;     
> +			
> +			
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +
> +			lanes-per-direction = <2>;
> +
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +
> +			reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
> +			reset-names = "rst";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +
> +			iommus = <&apps_smmu 0x1a0 0x0>;
> +
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +
> +			freq-table-hz = <100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<100000000 403000000>,
> +					<100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ufs-ddr", "cpu-ufs";
> +
> +			qcom,ice = <&ice>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,x1e80100-qmp-ufs-phy";
> +			reg = <0 0x01d80000 0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
> +
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ice: crypto@1d90000 {
> +			compatible = "qcom,x1e80100-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0 0x1d88000 0 0x8000>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> +		};
> +
>  		usb_1_ss0_hsphy: phy@fd3000 {
>  			compatible = "qcom,x1e80100-snps-eusb2-phy",
>  				     "qcom,sm8550-snps-eusb2-phy";
> -- 
> 2.48.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
