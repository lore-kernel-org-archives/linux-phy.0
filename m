Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2A2C3ABA2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 11:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z758/0goo+QDUEfLgAsuLdWKV9jYwV+lgTpto7vNl9w=; b=JflX46D/IUGKsh
	hn/tQyVxyq/pPl9+/YmGx0XQsqtcw+ahIzqfHixecxeEe6L0EOlCEym+LTXAaZlio/1VYuNpC1GGG
	41eA9QGMrlqp/of3PqM3YCGGkG7jRWEHYI7MY1EwlHFd3D9cKuw93r7xkdq0svV0qRes0Tmg6Z3jv
	eso1b3TejjecpmkJZPoD4hgV5zYI4RhbPmEQ8lTw1B9+8robmpLcD932Ls8TB8d7wb0cqx/+1JHIw
	d25ocYr2WdDCJlIaAAuo6Tynx5Kn5KUk1F/vnqz6wpU3Ma5aGbis9UWNERVO+5xgr7omOq/AQtFXi
	4TVGntwY3agO0zsFemXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqA1v-00000003tHo-1Xjv;
	Mon, 16 Sep 2024 11:36:31 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqA1s-00000003tGT-1KhX
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 11:36:29 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a8d2daa2262so406831866b.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Sep 2024 04:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726486586; x=1727091386; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g2kD63xCEnK7LpZGmhTprbOnZCv6t5U7PfEhkSoqT9E=;
        b=M2z2Z92DxQo9MBuzBW81hWAYhwEyRu7RN8CaKmWGKazCv8SU8JOHkma6iYW1kKKWe2
         6yyXHEbup2Q9+Pbg/v8G1OllLs75bL0nyw01y4zPHhMvgzCsiLEfJZvWBmMlgzbkertn
         t7DfXEQQNPEFRDYGGtDR2uy8IVZ5nRak3dBkxb0R5buooxv5o9a5Ogq8CQpNgAGDZ9hS
         STEeRlRRcG1m5b8EqUP8vXBg0IlabKFh2lM42slAdnLOcG037ABwdeTZhlaPrq37xN/j
         invSAWgP223prGDhXbRBdJ4XyRblBIll4U2y0n1APoETtdkMLofLV2xGGA5yM1uLqjBJ
         2FaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726486586; x=1727091386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2kD63xCEnK7LpZGmhTprbOnZCv6t5U7PfEhkSoqT9E=;
        b=nMa/CKYRduWk78PngP47nK/kDKIbkzmJHr8oe/vhBdPyjNXMIYn7h0AcUmn+ADiJO/
         0sbbE3XdDDpan3cMeopIBtCWpOyeECQYREdrsjc81LuWeNIJZLolHXwbb4Xt2udPM0Xz
         gXfrxZWavNZhZbq7gN1SqLXTWkRaPAV2wXNFFJu+iCGhNCzeK6sLUWWoPkY1y5z495/+
         /2AIQeuf6vW2x4ucqqKpB6+lulPkxdH3rIYA4QxH5kijMcXqLhuqzVyY3cYoqiQbvzip
         i4ybvW6bvIqX88WFTsVZsj9ASMykRa2SbboIrHBs1GfLSgDutVRbLEbWmq+E+Kp/JZhm
         PF7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcXp8asnw6AFEPYjVmpcK6a02OXinxqCuO6M3k2dYyXzH8MCj45LGRn8jCHqLdVT5Tlw2owom2R+M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzDn6a9u4x8k1ledVZjrxENVehEk3tFyK0mQhlrMCp4dLYN1Qh
	VdWW2i5r1v457YPzn0u+J2k8hqli2Iy9WmRx+fV1Zt538Ffg9LsH0AoLaFhQIaI=
X-Google-Smtp-Source: AGHT+IE4iVNH/Yi3C6l6RnP78Zl1rdiKCTKo5dcFalxIAXD2Y4EUCMepAYttsrZ1Iej8+4iKxR3rHQ==
X-Received: by 2002:a17:907:2d87:b0:a8d:7046:a1bd with SMTP id a640c23a62f3a-a9047d03d80mr979448166b.28.1726486585422;
        Mon, 16 Sep 2024 04:36:25 -0700 (PDT)
Received: from linaro.org ([62.231.96.65])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f386dsm302049466b.49.2024.09.16.04.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 04:36:24 -0700 (PDT)
Date: Mon, 16 Sep 2024 14:36:23 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100: fix PCIe4 and PCIe6a PHY
 clocks
Message-ID: <ZugYN0L/dj0iJxaH@linaro.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
 <20240916082307.29393-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240916082307.29393-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_043628_389636_A3FB05D3 
X-CRM114-Status: GOOD (  12.71  )
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

On 24-09-16 10:23:06, Johan Hovold wrote:
> Add the missing clkref enable and pipediv2 clocks to the PCIe4 and
> PCIe6a PHYs.
> 
> Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
> Cc: stable@vger.kernel.org	# 6.9
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 0cf4f3c12428..53e7d1e603cb 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2980,14 +2980,16 @@ pcie6a_phy: phy@1bfc000 {
>  
>  			clocks = <&gcc GCC_PCIE_6A_PHY_AUX_CLK>,
>  				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
> -				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&tcsr TCSR_PCIE_4L_CLKREF_EN>,
>  				 <&gcc GCC_PCIE_6A_PHY_RCHNG_CLK>,
> -				 <&gcc GCC_PCIE_6A_PIPE_CLK>;
> +				 <&gcc GCC_PCIE_6A_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_6A_PIPEDIV2_CLK>;
>  			clock-names = "aux",
>  				      "cfg_ahb",
>  				      "ref",
>  				      "rchng",
> -				      "pipe";
> +				      "pipe",
> +				      "pipediv2";
>  
>  			resets = <&gcc GCC_PCIE_6A_PHY_BCR>,
>  				 <&gcc GCC_PCIE_6A_NOCSR_COM_PHY_BCR>;
> @@ -3232,14 +3234,16 @@ pcie4_phy: phy@1c0e000 {
>  
>  			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
>  				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
> -				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&tcsr TCSR_PCIE_2L_4_CLKREF_EN>,
>  				 <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>,
> -				 <&gcc GCC_PCIE_4_PIPE_CLK>;
> +				 <&gcc GCC_PCIE_4_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_4_PIPEDIV2_CLK>;
>  			clock-names = "aux",
>  				      "cfg_ahb",
>  				      "ref",
>  				      "rchng",
> -				      "pipe";
> +				      "pipe",
> +				      "pipediv2";
>  
>  			resets = <&gcc GCC_PCIE_4_PHY_BCR>;
>  			reset-names = "phy";
> -- 
> 2.44.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
