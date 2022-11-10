Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BBADC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvrxoAriOieEFsX4mncVcp5cL6TdJehh+43FrUy6CSM=; b=PNuVIEG3bjiVdF
	bIckUBI6UC4/FmvW9FXEI2NeC2W9VlXUelHicA7oegnwKv4+RDQWC5PQjb7QKN3PDEPIbwvFN9hww
	CwID/VmUwjhyZTgwTSKMDfC8NBOqkuPlVqvpCPPocd/63OGB39/GL/RXazGHFVRoJlAxnRGUM1qtJ
	npYAONNDXRn8quYC1IwwI+1XSN9F3pgsyyMGBcek36irEAmEmSSRa9iwuLwoinGXVhk6hGix/EM2d
	ejpwtBS7oweaQ7oajD7hrNFYdl18b/vYixuC9ImQrNh6vT0wLvkYgWB6YOSwHp6bOJF4oDjS6qhdc
	dX5UmfUfMYzl1hHeuezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9Rj-006jiI-F8; Thu, 10 Nov 2022 15:26:27 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9Rf-006jgY-RF
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:26:25 +0000
Received: by mail-ej1-x62d.google.com with SMTP id ud5so5883746ejc.4
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBIrtUnUpwPCxhGYomwb4GM+zsBVu0I/2SKS0UvY0oo=;
        b=u9C9MTspr78tO2xgh+3kn9XKjX9TmI1gFILMuUXvqXlKMNgU0iOBOwE537BtTIQ47n
         DVmS8/lN6ohgGOW/PdhhFVm1vxZlkcq5bJYQ0My5sUkA4rxCwS0JR+f3hwEkzEYVtSE6
         Cz1jIC7XVEQMSkwy9FGuN+TS1aas4sdQXSWPGKG0LRlYl4THEut0x/OCc4lm81qTldix
         2GhJvin3kllVmDzOmaS45K4BQDzCaf3p9c+8RC+QygVhrM69YRE3zzV/lhtS53BxeJ5F
         vMFlhk3x1Qbdyse+4DbL3Bw37Hw04M7B6UFlBqQPm0MrYqtNA7sBJHV44WMTzm9o+vov
         bebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eBIrtUnUpwPCxhGYomwb4GM+zsBVu0I/2SKS0UvY0oo=;
        b=ViEZimEZ3xyI9CNdas+rmWTxK9vRqO3VJOkAIWpUYRgYV4OzeSe4yAMu9F2koUEkRE
         gX476sFXl4tu6ja7EnNJZBcwZUpxp9rRwh/cGC2P5iv4Qaxbr58ouujZSCrdd2flq29x
         7xp0wAM2v2EFzTxWfVR7ZawN4Nl3dbOixbgb8KurnjAZbSkp7Wr5rl7W3H4bfoxi9kND
         AXsavZS6drygt+An3XD50u9qHIN6p0QCoKKXHpyGIz5gnho3OHqfTAgNk1Dfqhx7UEjk
         UP51M7GmR7D/u+Y/emEN1AQSc3I+oz/TDXU40E5yR+dQ7iG9yLFDdrYWtRP29wa7KNDj
         Fd5w==
X-Gm-Message-State: ACrzQf1zcblN2oBggYpqcBPZqJMUFjVu1fHcwcOp2xKe7WoPsc7uUT+c
	w3LDXlLRyI/q/1xgdNvPyxPnAg==
X-Google-Smtp-Source: AMsMyM7uw9scvvnaC8dhMd5EM3D/Eh5htDytgprtaGRE4TmgfwiJQR7GCTXjtkZIwsuQOlacLQslDQ==
X-Received: by 2002:a17:907:1b09:b0:7ac:db30:2cf0 with SMTP id mp9-20020a1709071b0900b007acdb302cf0mr59671747ejc.679.1668093981020;
        Thu, 10 Nov 2022 07:26:21 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id i15-20020a17090671cf00b0078d76ee7543sm7275611ejk.222.2022.11.10.07.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 07:26:20 -0800 (PST)
Message-ID: <0d00497e-4503-d417-addd-b7858c1a8916@linaro.org>
Date: Thu, 10 Nov 2022 16:26:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Subject: Re: [PATCH v7 4/4] arm64: dts: qcom: use UFS symbol clocks provided
 by PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
 <20221110151748.795767-5-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221110151748.795767-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_072623_921521_88DBD956 
X-CRM114-Status: GOOD (  15.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/11/2022 16:17, Dmitry Baryshkov wrote:
> Remove manually created symbol clocks and replace them with clocks
> provided by PHY.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Maybe it would be worth exporting some #defines for these incides so 
that it's less likely for the next person referencing these DTs to make 
a mistake, but that could be done in a separate patch. Something similar 
could probably be useful for DSI BYTE/PIXEL clk


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/msm8996.dtsi |  5 ++++-
>   arch/arm64/boot/dts/qcom/sm8350.dtsi  | 25 ++++---------------------
>   arch/arm64/boot/dts/qcom/sm8450.dtsi  | 15 +++++++++++++--
>   3 files changed, 21 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index c0a2baffa49d..935ba6e6bc15 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -699,7 +699,9 @@ gcc: clock-controller@300000 {
>   				 <&pciephy_1>,
>   				 <&pciephy_2>,
>   				 <&ssusb_phy_0>,
> -				 <0>, <0>, <0>;
> +				 <&ufsphy_lane 0>,
> +				 <&ufsphy_lane 1>,
> +				 <&ufsphy_lane 2>;
>   			clock-names = "cxo",
>   				      "cxo2",
>   				      "sleep_clk",
> @@ -2019,6 +2021,7 @@ ufsphy_lane: phy@627400 {
>   				reg = <0x627400 0x12c>,
>   				      <0x627600 0x200>,
>   				      <0x627c00 0x1b4>;
> +				#clock-cells = <1>;
>   				#phy-cells = <0>;
>   			};
>   		};
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 90a26f406bf3..51ca006dc5c1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -37,24 +37,6 @@ sleep_clk: sleep-clk {
>   			clock-frequency = <32000>;
>   			#clock-cells = <0>;
>   		};
> -
> -		ufs_phy_rx_symbol_0_clk: ufs-phy-rx-symbol-0 {
> -			compatible = "fixed-clock";
> -			clock-frequency = <1000>;
> -			#clock-cells = <0>;
> -		};
> -
> -		ufs_phy_rx_symbol_1_clk: ufs-phy-rx-symbol-1 {
> -			compatible = "fixed-clock";
> -			clock-frequency = <1000>;
> -			#clock-cells = <0>;
> -		};
> -
> -		ufs_phy_tx_symbol_0_clk: ufs-phy-tx-symbol-0 {
> -			compatible = "fixed-clock";
> -			clock-frequency = <1000>;
> -			#clock-cells = <0>;
> -		};
>   	};
>   
>   	cpus {
> @@ -661,9 +643,9 @@ gcc: clock-controller@100000 {
>   				 <0>,
>   				 <0>,
>   				 <0>,
> -				 <&ufs_phy_rx_symbol_0_clk>,
> -				 <&ufs_phy_rx_symbol_1_clk>,
> -				 <&ufs_phy_tx_symbol_0_clk>,
> +				 <&ufs_mem_phy_lanes 0>,
> +				 <&ufs_mem_phy_lanes 1>,
> +				 <&ufs_mem_phy_lanes 2>,
>   				 <0>,
>   				 <0>;
>   		};
> @@ -2389,6 +2371,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
>   				      <0 0x01d87c00 0 0x1dc>,
>   				      <0 0x01d87800 0 0x108>,
>   				      <0 0x01d87a00 0 0x1e0>;
> +				#clock-cells = <1>;
>   				#phy-cells = <0>;
>   			};
>   		};
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index efb01fefe9c7..95c01391972a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -722,11 +722,21 @@ gcc: clock-controller@100000 {
>   			clocks = <&rpmhcc RPMH_CXO_CLK>,
>   				 <&sleep_clk>,
>   				 <&pcie0_lane>,
> -				 <&pcie1_lane>;
> +				 <&pcie1_lane>,
> +				 <0>,
> +				 <&ufs_mem_phy_lanes 0>,
> +				 <&ufs_mem_phy_lanes 1>,
> +				 <&ufs_mem_phy_lanes 2>,
> +				 <0>;
>   			clock-names = "bi_tcxo",
>   				      "sleep_clk",
>   				      "pcie_0_pipe_clk",
> -				      "pcie_1_pipe_clk";
> +				      "pcie_1_pipe_clk",
> +				      "pcie_1_phy_aux_clk",
> +				      "ufs_phy_rx_symbol_0_clk",
> +				      "ufs_phy_rx_symbol_1_clk",
> +				      "ufs_phy_tx_symbol_0_clk",
> +				      "usb3_phy_wrapper_gcc_usb30_pipe_clk";
>   		};
>   
>   		gpi_dma2: dma-controller@800000 {
> @@ -3166,6 +3176,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
>   				      <0 0x01d87c00 0 0x1dc>,
>   				      <0 0x01d87800 0 0x108>,
>   				      <0 0x01d87a00 0 0x1e0>;
> +				#clock-cells = <1>;
>   				#phy-cells = <0>;
>   			};
>   		};

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
