Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1562E728E1
	for <linux-phy@archiver.kernel.org>; Sat, 30 Sep 2023 18:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19SfJFh5zdjrFQ6puj1VNmBJzrFmTlDQlftobeBricI=; b=sON/HTuYqwJY7t
	oMNFDU/WLmfzN/+BpBAtzE2wwCTtYbbuDAE9LmtzoA8kslwHdM1EYjXYE2Z8gSt4yMz9K8SLwOUiA
	gefzmSz/LZ0U3fOYyh+uU2x1oTzKIySZhGbwJ+7xWAM1CYhCppxrEv3+5Z5bMVIM2q0fn1q2S8+U9
	cN3k+GVQpOXZ1xKBHboo2mSNBSW5O/LrHWm/o/i+7RWun9gDr8R4C8Qi7gWoIWMTlmFtsWq5voYw+
	OincGBpVmLZrY6+U2zWTXn2r1we6qYiWTx1/BDXaNh+uNMMaQWsDMoezQ1ZDRWzwVPxBVgEbayDm8
	+BP0nwEdfrsfyQTYSkYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmekF-00A1Xe-1q;
	Sat, 30 Sep 2023 18:31:15 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmdfx-009vC2-14
	for linux-phy@lists.infradead.org;
	Sat, 30 Sep 2023 17:22:47 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50573e85ee0so1193934e87.3
        for <linux-phy@lists.infradead.org>; Sat, 30 Sep 2023 10:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094561; x=1696699361; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWtx9dHqmbOflZi0fnqEVpNoq1UTPPJzLzExwXGV3SI=;
        b=AKOf9NyONZ3+QDrYp4jEHmOCmzebnG4EYLXEkvMAMBsNsAANoEKB+C1kA+g+i96qWo
         iXWRAJzGYPN52uuUtcqN+mTduUJ13NzpRvmu8IvWTiSRsL5gWDnPIcOWZ4Lv/K5UN+Ng
         Wf9eBOC5fW9NDzH/yBnjuKOksJ1RXOrVALNuP+yYTtXwVtFspdhMaqXwi3j2FS8V7PGl
         G4Zla0s7iw4LsNrpkTvkDPamK+b0VP5N9/K/8Xd8TOfYqVOcHZwoM8WX0prDO9rX5QZa
         j6vDwDaZTUsngQpf+5E4JEeW+ge3/oYOa+ekk2WcPetQmhT9Pl+cI52XkzvjsQIzMtg7
         /y/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094561; x=1696699361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWtx9dHqmbOflZi0fnqEVpNoq1UTPPJzLzExwXGV3SI=;
        b=di4Citzh/m4vSR3l5YdRyRSyRp7fPkZR15658V/r/TaIJYslMEQL+jPwPc6mBZWEdc
         ftgomJ6eo9314mf1ZMW8gwjs37wUfyF5ifQAWLGuK03ebYVhC4yEVkAMTg6wa48IUMXi
         OQf1OP9F+HyVQMBYzbifEMe9VuA27t0d13e1nzdw7Wa5umjsIHy4Au+oyOR6RxiIml8Y
         gXWoEN4eCGYDexd+1XyB1AC7tlDzMctr5Qrdyyi231ZM4PBvBbIBVp+3r/rnSOgU6LCB
         VUUbcX6B7AYLMjG5umpy+aeaA2FDbBuraIEjBs8EDhohm14amP2x6m6b3pJiNI8XhKj8
         2BYw==
X-Gm-Message-State: AOJu0YwTII1rIkfklSIecJ4VTzTtXoZ4re8nwMLPRtEaW4NEkmdOFblz
	xT/SqXqb1MW+MgEIvBWpjIzcqA==
X-Google-Smtp-Source: AGHT+IFmPULHC/lTZvEAMtHRivlmdkecp21az20I0qHWTzyMMavZ5xJfz8FMnJKA5soibKeUp+nyEg==
X-Received: by 2002:a05:6512:3a8c:b0:502:cc8d:f20a with SMTP id q12-20020a0565123a8c00b00502cc8df20amr7139739lfu.27.1696094561376;
        Sat, 30 Sep 2023 10:22:41 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:22:40 -0700 (PDT)
Message-ID: <5bf11343-6ab4-43a8-b12d-f2b072ce388a@linaro.org>
Date: Sat, 30 Sep 2023 20:22:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: qcom: ipq5332: Add USB Super-Speed PHY
 node
Content-Language: en-GB
To: Praveenkumar I <quic_ipkumar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 arnd@arndb.de, neil.armstrong@linaro.org, nfraprado@collabora.com,
 u-kumar1@ti.com, peng.fan@nxp.com, quic_wcheng@quicinc.com,
 quic_varada@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_kathirav@quicinc.com, quic_nsekar@quicinc.com,
 quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-4-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230929084209.3033093-4-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_102245_403206_6B53C4CC 
X-CRM114-Status: GOOD (  15.60  )
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

On 29/09/2023 11:42, Praveenkumar I wrote:
> Add USB Super-Speed UNIPHY node and populate the phandle on
> gcc node for the parent clock map.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 25 ++++++++++++++++++++++++-
>   1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index d3fef2f80a81..b08ffd8c094e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -158,6 +158,29 @@ usbphy0: phy@7b000 {
>   			status = "disabled";
>   		};
>   
> +		usbphy1: phy@4b0000 {

Are there other USB PHYs on this platform?

> +			compatible = "qcom,ipq5332-usb-uniphy";
> +			reg = <0x4b0000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE3X1_PHY_AHB_CLK>,
> +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&gcc GCC_USB0_PIPE_CLK>;
> +			clock-names = "ahb",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			resets =  <&gcc GCC_USB0_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb0_pipe_clk_src";

I'm not sure, what is the best approach her. For QMP USB and PCIe PHYs 
we had to use fixed names historically. On the other hand for QMP DP 
clocks we are fine with the generated names. I'd prefer the latter case.

> +
> +			qcom,phy-usb-mux-sel = <&tcsr 0x10540>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>   		qfprom: efuse@a4000 {
>   			compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
>   			reg = <0x000a4000 0x721>;
> @@ -200,7 +223,7 @@ gcc: clock-controller@1800000 {
>   				 <&sleep_clk>,
>   				 <0>,
>   				 <0>,
> -				 <0>;
> +				 <&usbphy1>;
>   		};
>   
>   		tcsr_mutex: hwlock@1905000 {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
