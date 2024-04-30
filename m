Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABD0C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 02:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47Gl8CF1rajm8NSowwduHt0m2D2it8FK/nm6diL086k=; b=3En+D9YRcdPbsQ
	wv/YmoWunRA3m3EwMaIpeN6klcIySIGoBStz/tar5ngQRrFgdo0gV24GL8toMy4zrynG3mixzH3iQ
	sDePm6jNcpjle13c/jtZPwXLHUmnD8M/I+04aBkyeyD4fc06AtsYw/Y0VboWteG4bfp8RwDIzj43K
	o4EiTCcXCPKflUm5qTG5WafefXtsCbkSqxkfnDmD1Bk/VV0/ZHNNQhbrvhy4cZ4RIAAp5p9WRIMw0
	7Eyv3KGd+EiJkO65Iq60ER4YbHbpXf/Pjn/1sOuDhckzLZS+j9g+bXETBDwh44h+1KrO7hjWiQN+S
	G1AZcpW44h6IQ9GE7piA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dcb-00000004q7X-2Lp8;
	Tue, 30 Apr 2024 02:53:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dcY-00000004q4p-0T0m
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 02:53:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E1A49CE0EBE;
	Tue, 30 Apr 2024 02:53:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 128CDC116B1;
	Tue, 30 Apr 2024 02:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714445606;
	bh=LkqUxMJI3hQBY2Q9vRftthMS6Eg5NaoMzQyUOIwrhYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ielezc6mRJ+qBvuNkvcqe56A4U1h0nqbkw5Z6EAmADbrzdaIMyCBaFTu3N4OrrIsD
	 Jy4a7cHO/mF184X1ZNfoL6gjA0ooDStmGv+hOEcq5TvitFawC/CNYXpDS6N+eWaLTi
	 n5qbSB8trmbMeb4k3k5AKL4IZ1enSNv/bFfdbbJZAGzN2AhM3zy3rPcHmtS9rGDq1J
	 SHb2ci8vtBgFm39lCmrdxprFFlURlEZEvTjl1jo9kcuYNaxcoKl6C/lzSThK3aWtC5
	 ZsCkHWWlAXnJZ6sJUWpW12qrFLs+LK0nkubpMaIgryZxXGZmrLQvNrVp3pMrmRglcG
	 ZdGVMCutN0JEw==
Date: Mon, 29 Apr 2024 21:53:22 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: sm8450: remove
 pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
Message-ID: <ugqukizt7eclhtgogizrzbxjie4s6x746voajn2ivxhtwid3tu@pzezgwy3jcsj>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
 <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-1-868b15a17a45@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-1-868b15a17a45@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_195330_359700_A2B872BB 
X-CRM114-Status: GOOD (  16.32  )
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

On Mon, Apr 22, 2024 at 06:16:18PM GMT, Neil Armstrong wrote:
> Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
> provided QMP_PCIE_PHY_AUX_CLK.
> 

This looks applicable to the other two patches, but I don't see the
pcie-1-phy-aux-clk being removed in this patch.

Furthermore, the cover letter does not make it into the git history,
which results in rather lacking documentation on the reasoning for the
change.

Can you please update the three commit messages?

Regards,
Bjorn

> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 616461fcbab9..71797f337d19 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -754,8 +754,8 @@ gcc: clock-controller@100000 {
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
>  				 <&sleep_clk>,
>  				 <&pcie0_phy>,
> -				 <&pcie1_phy>,
> -				 <0>,
> +				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
> +				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
>  				 <&ufs_mem_phy 0>,
>  				 <&ufs_mem_phy 1>,
>  				 <&ufs_mem_phy 2>,
> @@ -2000,8 +2000,8 @@ pcie1_phy: phy@1c0e000 {
>  				      "rchng",
>  				      "pipe";
>  
> -			clock-output-names = "pcie_1_pipe_clk";
> -			#clock-cells = <0>;
> +			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
> +			#clock-cells = <1>;
>  
>  			#phy-cells = <0>;
>  
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
