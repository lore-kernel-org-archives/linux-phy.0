Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135B8CCF9F0
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 16:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xgurGEO/SLYFPP3hH2L4zPLj7UM67qQYeHtBDbeRAw=; b=zDSJrPYhMep6ZD
	HJK//l6tiGPLUWqtsXonrZ0CYsy+NmzH19tgeztnjIoMyTcIqwXnutl32BXjQgkuqa4WkjOjZ4d6J
	H6EapzOYYtO+1rtrpUDqsDXTLVyKY1FKaxnC+FItL90hdZ/B8MimdJOUf9Fz4aqrK+bgPaoR2Qs8F
	zE6YPWq4RQejw9QjzbXJTR1KBWtcPJYBSe3adPPziEliSsXhCjpxyceVLlDgqr/5XtFOYZFtl8HRQ
	HGr3z6POV3w3ArzoB4AuOOkZ1kQ8lyZLhyNUkGcg1fL+7haesoX5lLPraqyqdf8FHqkx9pvqIZGMY
	n5Pj5ZTrHOtaWRd16vhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9DQ-000000023tg-0RoH;
	Wed, 29 Oct 2025 16:40:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9DO-000000023tF-3Ruw
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 16:40:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ED154605A0;
	Wed, 29 Oct 2025 16:40:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5AB8C4CEF7;
	Wed, 29 Oct 2025 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761756001;
	bh=NdTp1VvlzXT2iMmRb+rzAshXMwZ79HLOe8xu+us+kJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uToJNhpDTN6RNRLAFbn29AjYO7MrPMp2zZskc9hsRSRGpM+74g36Z0GDf51W6Mrza
	 vETg//BYRbnaU8mg+KpsVXrosVmirha6BfUhF3Ycsr3cK8u5Af+l0F0lW+LA43NTZH
	 QqvkIB0+1jdimtMKRncxhzAjvnOX4SCI4206/EDRJRkcseKpjS0Eyf+4NQvMFwomnA
	 MLfvZdoIQ2BIRC4CGhCHpEKrHJdtlDrWb1dlCyAXnjc4z/L1G3JAM88gfWcw6uLZTs
	 l+DonwkjYE1NdlthoHbTVWmf+muYP3xggO/DIQ6i/TNwv4Q6I0BzKdfAhhw7hu4u+T
	 YXQXuHuWr/GWw==
Date: Wed, 29 Oct 2025 11:43:04 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: x1e80100: Add missing TCSR ref
 clock to the DP PHYs
Message-ID: <u6f4spt62rzqyqifaza7q34e7vf2jmbrbmzmgxtlhjupya3lsy@6vvssqcfhmtg>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
 <20251029-phy-qcom-edp-add-missing-refclk-v4-3-adb7f5c54fe4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-3-adb7f5c54fe4@linaro.org>
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

On Wed, Oct 29, 2025 at 03:31:32PM +0200, Abel Vesa wrote:
> The DP PHYs on X1E80100 need the ref clock which is provided by the
> TCSR CC.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So lets attach it to each of the DP PHYs in order to do that.
> 
> Cc: stable@vger.kernel.org # v6.9
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index a17900eacb20396a9792efcfcd6ce6dd877435d1..59603616a3c229c69467c41e6043c63daa62b46b 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -5896,9 +5896,11 @@ mdss_dp2_phy: phy@aec2a00 {
>  			      <0 0x0aec2000 0 0x1c8>;
>  
>  			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
> -				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
> +				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +				 <&tcsr TCSR_EDP_CLKREF_EN>;
>  			clock-names = "aux",
> -				      "cfg_ahb";
> +				      "cfg_ahb",
> +				      "ref";
>  
>  			power-domains = <&rpmhpd RPMHPD_MX>;
>  
> @@ -5916,9 +5918,11 @@ mdss_dp3_phy: phy@aec5a00 {
>  			      <0 0x0aec5000 0 0x1c8>;
>  
>  			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
> -				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
> +				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +				 <&tcsr TCSR_EDP_CLKREF_EN>;
>  			clock-names = "aux",
> -				      "cfg_ahb";
> +				      "cfg_ahb",
> +				      "ref";
>  
>  			power-domains = <&rpmhpd RPMHPD_MX>;
>  
> 
> -- 
> 2.48.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
