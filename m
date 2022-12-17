Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E52AC3DA6E
	for <linux-phy@archiver.kernel.org>; Sat, 17 Dec 2022 15:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJiciN+kkDSjxRSf9nllU6X/atVaVdt+YO2qIO0W++0=; b=C/iHvMtUoY7QqP
	UwU3dDWKh5VHN/RVTMscTjQJYtsl0wKOKf6gOsasugxg1oBTmrHll47QXvpkp9wNT2ey6HyZ2POdP
	8VR1fUQbqlVfx6qiW5xpHXQszzktAJl+M0Ihkd5cc2fPdXBInpYl3ot28kg+kh7Y/vU//HU3XAAzh
	wAD6ACHi9jgDo3Jp3YlSpON2E+VHBEo/YiWBnihxtoz2hE+27CDaprVPAEWNzh0JA4hPnrR7ZTSbH
	5DPatxinPNv/T8I5gxLLu9PLwwrg922EH8oFtYCTGWrpVUZzBeWv/JOlKjmkL/MYH67ySjobwf7X6
	gCIQjNStlMLWbB2AVuCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6Yh9-00AT4Q-OL; Sat, 17 Dec 2022 15:01:47 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6Yh6-00ASzt-NK
	for linux-phy@lists.infradead.org; Sat, 17 Dec 2022 15:01:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id 1so7722487lfz.4
        for <linux-phy@lists.infradead.org>; Sat, 17 Dec 2022 07:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3h3onfk/w75vYssXLX8rbrcDV/vqWhlZbg0paogVXE=;
        b=nJ4MxFtd0Kg23YKBoyRO22cEcryuRW4jBivs/VcYCz7SKMv2C1OCVUdZp7eoru0RNM
         cAKbgnpk/uOuTmWjtvUE+XODCVFJTADnf3NN05hVYhRIBUWPez86AYKfi/gHXAPYMafR
         7UxTkOHfVotkxOS9lM3j4vh3y2flNhLcTJ2kdzl9eUGPWR6EHInUIXLp+V1a70YhbCJS
         IpybyJ+YU8bT9F4M0IDhPZXC+mik11beQeHxh/Rt185tbErCfwgHBVXT2McYNanvZl/J
         NRHkTGpuKv+KUBmpbmskTnXsQpU8uenTOeCesioyvI/FLmT1EIVz3YZejDIutENVpLk6
         i6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3h3onfk/w75vYssXLX8rbrcDV/vqWhlZbg0paogVXE=;
        b=Dd9xDvLWU0i+wnhqYzk7eUakSTTYNOVvWBD+LFN/E6eV1MSjr/74C2KgBblb4UMfiL
         R2N/z4wXG8+n06qkD7TUP72VZS10b8DIaCtTceqTchaF0CW7AEcExI90a9VFuPQG37PR
         s16niCELBSrKJcW3pNIvrzxPuC6hvg9/YBl59mgXjTPyC9XqNFhqHVBGloTHSSguTFUT
         T8Kx/j80hcUcgqc570FgUYtqBptowRHsX24LHomTKFffO3GvympSN3/hHbqhBzianzzg
         NFDT+ISJVnAXbjKoYjdfPTBR3aBU0oHHijulRJaYVsckTEuvEPPJH7HstJogwA1G43hM
         f5/g==
X-Gm-Message-State: ANoB5pkcSUSbk6mYV0Ch7HNFO7TvOnt35QpyvUBPCVJBVn1t15IKnyqy
	BEQG0xBeFWwrUQbkIG9nqz34ZCw2HkN7MpzE
X-Google-Smtp-Source: AA0mqf7uSma3aMecf1CJ3CyLaa9GcTXho/Ckya7MKPBcNJZLX4lAUMSmoG77OD2kqt0sYQIutF0sKQ==
X-Received: by 2002:a19:6a0f:0:b0:4b5:6db0:d598 with SMTP id u15-20020a196a0f000000b004b56db0d598mr10190403lfu.20.1671289300746;
        Sat, 17 Dec 2022 07:01:40 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id s16-20020a056512215000b004c316ae669fsm262618lfr.68.2022.12.17.07.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 07:01:40 -0800 (PST)
Message-ID: <98e95f3c-d64a-410d-8f56-845d55675e87@linaro.org>
Date: Sat, 17 Dec 2022 16:01:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a
 clock provider
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
 <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221217_070144_832051_993F663C 
X-CRM114-Status: GOOD (  11.36  )
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



On 17.12.2022 00:40, Dmitry Baryshkov wrote:
> Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index a5324eecb50a..ffffaa7507cf 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -810,6 +810,7 @@ pcie_phy: phy@7786000 {
>  			reset-names = "phy", "pipe";
>  
>  			clock-output-names = "pcie_0_pipe_clk";
> +			#clock-cells = <0>;
>  			#phy-cells = <0>;
>  
>  			status = "disabled";

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
