Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF955D49795
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 04:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ky2M5QU7r1HVHefYcqmXYuLxqpm+H242wzAIuY97BRM=; b=zRJRn537geMFaW
	46VhSAxHPJUeoIAU7FZVAzIDmyL8PJZOOxAWz5GV+7QvNXy21VvkciprvCXp3AXa4B37GH2EymLNa
	X+nFa1jmjYkLpY4FRZO7edN7UK1wWtkKNAghb5tpuqmYd9QXsrQNEsApuvuxQc+pp6JJtUxdKbvmK
	LtT4g9MImLvxRBHEf2hdqgGP+KY6+KIjlF+W5i1iNuA1VuxFamkYPT1scesqVlj4dHD0Mw8qrETvB
	cQ5TiN2Rx/1tA769bYr90sMr3Gl1kCGmrblOuUeOvzQB9NR8OtZ6RstSlH8zkb8TpXHYX2ET5/2EQ
	EC3XqcLkJubdN1RhCKxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHy9w-000000053DB-2Xmc;
	Mon, 02 Dec 2024 04:35:44 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHy9u-000000053Ce-3VR5
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 04:35:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9316AA40CC3;
	Mon,  2 Dec 2024 04:33:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA72EC4CED2;
	Mon,  2 Dec 2024 04:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733114141;
	bh=4LW9gvNkk5SwLprkBeVa9iGAFVHl1x72N5pvfESSSHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M+68QYjGmnax3kgcnHDpRkL+mhMBscvfvH3YnchGyKBqXTdzi3JqyXCVp//q+lUBu
	 wYTcr/di4ak+Fe7w+1rEIZJ10jXaJ6WvCv9xvljy/IP2l8VvVsPPrWqCgPfXtr2yjU
	 zRMFUzo0/1OnIZq8PKUnGV7V3UJYb8vtCQfDMZSzofIclLRMvsB9gVF4+AuEE1y6R7
	 d1BZRqfOEb91tle0+xjbD18CrHSnwFsQpaDy5vO7kNdrPSU05fwvxuknfIoJ0jwWNt
	 cvdUIkGX069oV51w3fB4ZsOXND/emmtlYSxBEmVCVIwGTADEuN6Kfsg6TXUT0AjOPj
	 nwXr9B4vWqUaw==
Date: Sun, 1 Dec 2024 22:35:37 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	konradybcio@kernel.org, quic_tsoni@quicinc.com, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcs615: enable pcie for qcs615
 platform dts
Message-ID: <ewjkbs2vtilbpbokt25tfypru6atpookv3iecl4465l64hgzym@f5d2bkbkpoae>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-7-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-7-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_203542_939793_2F008B47 
X-CRM114-Status: GOOD (  12.79  )
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

On Fri, Nov 22, 2024 at 10:33:14AM +0800, Ziyue Zhang wrote:

"arm64: dts: qcom: qcs615-ride: Enable PCIe interface"

Regards,
Bjorn

> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add platform configurations in devicetree for PCIe, board related
> gpios, PMIC regulators, etc.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 42 ++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index ee6cab3924a6..18f131ae9e07 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -202,6 +202,23 @@ &gcc {
>  		 <&sleep_clk>;
>  };
>  
> +&pcie {
> +	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> @@ -210,6 +227,31 @@ &rpmhcc {
>  	clocks = <&xo_board_clk>;
>  };
>  
> +&tlmm {
> +	pcie_default_state: pcie-default-state {
> +		clkreq-pins {
> +			pins = "gpio90";
> +			function = "pcie_clk_req";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio101";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio100";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
>  &uart0 {
>  	status = "okay";
>  };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
