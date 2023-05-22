Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE30EC77B75
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi9oyZvEDym8E9PzxJKs3xp0oHfQwMyPEugKA20ygnI=; b=q1TLOlFNmUcYoP
	a575VhWEbz4fN6jUmmKP4ATxR0LpCgED+nwXklxtykFd+fh0KD3JMtovW0p1viR5SDDtNapFnoFI7
	EG6JW/NTDiGtp3mY25P6/oRipUvZe59t5l9htmcFQlD5azi/Gs25rNg5jsv5Ybmd/bV1gjRtCxgfV
	4qL/6vGy+FwzhOzw0h4W0G1JFesYP5VEmrqOv9s4OJL1b7Ugtn9BY0kaEnCEpUfDjpJ9oxYBvBGrc
	7IfDa8lJk03kE/sqnQPD8E2vsdB9NcT8O5vB0dAPtluVJvx6v5cb1yMsBs9m0r75dwDgE0XKpWb/j
	IIaBi+308/oCI/1ei/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18te-007HgM-1n;
	Mon, 22 May 2023 17:00:34 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18tb-007HeU-1Z
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:00:32 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2afb2874e83so19065151fa.0
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774827; x=1687366827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dlUNb0hPQzUYISfHb4EUlMG6b83cZ0qedXnGzzVBM3I=;
        b=F4aJdb8dtdTeepxLkPBvTHXhNf30JZM7aRTeJL4D8zrJdYWGotG+RrgZQmR653WSmV
         FMmBgCHOc9typKK5eSzzmWPzZuISTOCPmUO8PtzxeDjVgO9uwzWniNEkYErOMyQ8DkUI
         V42SGPnZhA7WkwlY7Cu1TURAAxPP5fqriKB3/fU89zR5jSbwTKfPvzo7YxwZTReON11W
         gzcfMNVtPAPNKy3agbZWOxhsu5GpFKEK8ZBlh33hNFCCsaSjobkGfHX+jplO3ymfRzDM
         nccUiYjo9Z0KtxGM8+4xr2WZD5XZKwwXwQ2G3FK2XhgfyMhMuhrUtVLdUPEhkEJ1PhiX
         VZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774827; x=1687366827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dlUNb0hPQzUYISfHb4EUlMG6b83cZ0qedXnGzzVBM3I=;
        b=hD+vIrhC7IOZmAy0U2k5lZy9fNFzBYPjROTWhACUOGgFSl+puny4sIJL9HM2f1VJbP
         w7npXQlqMmPggKB0vYR6uvT4X6oYzm+BK3e9EQyV2ru2ZF5PkoNXyVQhwx/2t1q1bpEx
         H+DVkPjLncQPamj2+iVvaovQArfDRQTa+aXFTDvoi9/viEDE/TH80W/MpxyLlnVWnbRe
         tEYThqIjnZH226PYqmMo/nxF/akxeI6Snu1BygoFDM1kjmwLQlYtcrelPfeazRtAdOa4
         TZbVzdG3PZpUaJRzNMNBuxzUBvXtLVOUaOmTfqo82PUfDJWHnAogj8Zl0QhAThqyImnj
         6kFQ==
X-Gm-Message-State: AC+VfDxjJi2oT0VUp2kQfBE1GIMtYjfzEYiGqnIpN4iEJHuw/VjQnQfR
	z6TO8qS6B8UjFvbnBtwBC1GC8A==
X-Google-Smtp-Source: ACHHUZ54dXFQqhMx5DWRg7ykMPj9ps973ssspCJJD3XTTpSQH1+uUGif8Pd/b6BKTH6Ch6a3IjlMdg==
X-Received: by 2002:a05:6512:3765:b0:4f3:8244:95dc with SMTP id z5-20020a056512376500b004f3824495dcmr3321784lft.15.1684774826820;
        Mon, 22 May 2023 10:00:26 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id q26-20020a2e875a000000b002ad92c2ff54sm1218892ljj.15.2023.05.22.10.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:00:26 -0700 (PDT)
Message-ID: <9bbf64fa-3ab7-9171-5d2d-d6f523f71862@linaro.org>
Date: Mon, 22 May 2023 19:00:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 06/11] arm64: dts: qcom: sm6115: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-7-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100031_535256_7490E9AC 
X-CRM114-Status: GOOD (  12.70  )
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



On 21.05.2023 22:38, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 631ca327e064..289b96d31414 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -784,7 +784,7 @@ ufs_mem_hc: ufs@4804000 {
>  			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <1>;
>  			#reset-cells = <1>;
> @@ -825,24 +825,17 @@ ufs_mem_hc: ufs@4804000 {
>  
>  		ufs_mem_phy: phy@4807000 {
>  			compatible = "qcom,sm6115-qmp-ufs-phy";
> -			reg = <0x0 0x04807000 0x0 0x1c4>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0x0 0x04807000 0x0 0x1000>;
>  
>  			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
>  			clock-names = "ref", "ref_aux";
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@4807400 {
> -				reg = <0x0 0x04807400 0x0 0x098>,
> -				      <0x0 0x04807600 0x0 0x130>,
> -				      <0x0 0x04807c00 0x0 0x16c>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		gpi_dma0: dma-controller@4a00000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
