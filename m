Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FE5C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbYwaIU65mrlwytxCCqluOWEIWR+i/rA2OSNnoq7oFI=; b=BC3+U9e1kN1p3W
	zlW0pXzaei9OAJOrqIO+GL2ds0nn7IgkL6YVZR5SyoTsUmXZGeG3RCjza5UQuHBkmyjTNQxwcCEcL
	9ZgMx6LX7n9B1b4BUKi7kJRCmEkpCdxalxKVV75P8fnVHnBhCJKZgzqGaZkQwZb9XvUpjK8du/jLM
	N+6OYdut0r5j0t2zSd44oFUS6nmaL+k8xOHR2zWfI911Yt5KmQZBOwM35ggj6UHuMdOf3I8SZFd0B
	nH/P/omY3L9Y6R1ilc8huRlXfqlkC8jLr8DcI6xo/X4Qj3cr2Z627O9hi3tvNWa6faL6UuQ9v+FCG
	iNqu9JXaKMpfwtCOKE8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhUWl-00D7Zu-8V; Thu, 21 Apr 2022 10:59:11 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhUWi-00D7Yf-Fk
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 10:59:09 +0000
Received: by mail-lf1-x129.google.com with SMTP id bq30so8017138lfb.3
 for <linux-phy@lists.infradead.org>; Thu, 21 Apr 2022 03:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=fWzbz0uK61AwfD+yiXMsbQRKrFNjfCltGVfKBy1niE4=;
 b=OkHo6k4V3Od8Y9k7bmR5u7hmBKOfMahHiIlwoiA0TohJ7+6U1/S38EXZg5mFiACLqV
 QCIKeei0tPByChIuHTCEFnFBuChGPSMCsiqF53H5baVVmqWJDmTlqRnbt7ScvOWj7bzT
 WVhMf3hWTai/yWOAkOggQiRru5QgciR+HqurdCUVOemB1DCtWhIfNHNUwqGegIXrJvhb
 PVTrfPzOqdR3XiV8xBFWjKFixz7V3IzSigpvvlYgFMzIBRhbKNjhHG1x79wjPvn/aM+j
 L9hbuKu0pWW32ull9aQ4gfpdXxe2yCNjkw3CU4cGM8H5ieq9inAiu53ZG2saXY5hPAxe
 giKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fWzbz0uK61AwfD+yiXMsbQRKrFNjfCltGVfKBy1niE4=;
 b=7ICb44bXVvjVi5EqAxqxjec5xaKNDi+MtSsIsGoLZM0R4HZ/bMM4QVOooz8R+VUwTT
 0GPEMVkLuxs8N2hOx0j0NHSenrGtpYiok5IuQaFjfUoDWqqZgVMWjvBE7tyMSVY4hlnk
 jq6rLjCeekjUZV5lQhdZv4AQVaPyqP6M22KDDks0AAPCNWUcaMHMfyjLvT5ot89yzDiG
 bTkYeSRBtgQKWWW0s+oGR1YLeh7XeIY/SLno0cZn7VwkVhWh80MNXqmHRzQqq/ujDrm+
 mZO2vtyWUGUnpcS43KOFFyVo1m4D9FHokOlSMWDjsyLnyM9UEOjDezNTU+oQ36Jxxnkw
 FUiw==
X-Gm-Message-State: AOAM533X6hr6d6gzaT6ftMr8bkZ36Ztqj5JgAPNXkJj98ifGHekvCNDV
 TI2tzD8mIjdb4ONHRzFsLA6fNg==
X-Google-Smtp-Source: ABdhPJxhGbbAtY3JdnXrm5gM7UPgEd3lOaM94kpLzor20vzd+pu5M1xuypG+GGFQTvA/Gy36/z3n+Q==
X-Received: by 2002:a05:6512:21cd:b0:46b:b89e:186c with SMTP id
 d13-20020a05651221cd00b0046bb89e186cmr17933321lft.250.1650538745402; 
 Thu, 21 Apr 2022 03:59:05 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 bi2-20020a0565120e8200b0044826a117bcsm2150569lfb.44.2022.04.21.03.59.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Apr 2022 03:59:05 -0700 (PDT)
Message-ID: <55d6e32b-9cf4-384c-1036-1adfb867ece8@linaro.org>
Date: Thu, 21 Apr 2022 13:59:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH RFC 2/5] arm64: dts: qcom: sc7280: move pipe mux handling
 to phy
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220421102041.17345-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_035908_579948_51233F0A 
X-CRM114-Status: GOOD (  15.29  )
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

On 21/04/2022 13:20, Johan Hovold wrote:
> The QMP PHY pipe clock remuxing is part of the PHY, which is both the
> producer and the consumer of the pipe clock.
> 
> Update the PCIe controller and PHY node to reflect the new binding.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 18 ++++++------------
>   1 file changed, 6 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index c07765df9303..b3a9630262dc 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1837,11 +1837,7 @@ pcie1: pci@1c08000 {
>   					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>,
>   					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>;
>   
> -			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
> -				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> -				 <&pcie1_lane 0>,
> -				 <&rpmhcc RPMH_CXO_CLK>,
> -				 <&gcc GCC_PCIE_1_AUX_CLK>,
> +			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
>   				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
>   				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
>   				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> @@ -1849,11 +1845,7 @@ pcie1: pci@1c08000 {
>   				 <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>,
>   				 <&gcc GCC_DDRSS_PCIE_SF_CLK>;
>   
> -			clock-names = "pipe",
> -				      "pipe_mux",
> -				      "phy_pipe",
> -				      "ref",
> -				      "aux",
> +			clock-names = "aux",
>   				      "cfg",
>   				      "bus_master",
>   				      "bus_slave",
> @@ -1910,8 +1902,10 @@ pcie1_lane: lanes@1c0e200 {
>   				      <0 0x01c0e600 0 0x170>,
>   				      <0 0x01c0e800 0 0x200>,
>   				      <0 0x01c0ee00 0 0xf4>;
> -				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
> -				clock-names = "pipe0";
> +				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
> +					 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
> +					 <&rpmhcc RPMH_CXO_CLK>;
> +				clock-names = "pipe0", "mux", "ref";

This will not be compatible with earlier DTB files, which was a problem 
up to now.

>   
>   				#phy-cells = <0>;
>   				#clock-cells = <1>;


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
