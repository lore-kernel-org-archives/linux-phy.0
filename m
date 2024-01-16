Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C14BC47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 12:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92i+W5OdG8smPwkm4QdOPV0uy23BrcFweZdCpixuDcA=; b=ZhGat9s0ySknfR
	okJtVMhens+mYKerISs71Pfvw9d9GsgWsJnTM3mw5h8ad/9Xdx3Gf7B5eJhJYJf/FQ+to4k9PU5Vu
	eEf7SjAJLFTKjYfOjgp4kJ/aUExzF9+dsOvgaWJiH7TEtWpUjcwIohYCOsba5eHc2eVLua1b2w+jG
	wwXtDGWCiEoNQJkiNBHuvg3AtMWdhpOvEdWMkvcE97AKn/KvjlgiNA9mCEmmbR0gj0BMljL5JDTiq
	lQR5RbThfuXwwxHglenbySIX9KKHavU0H981x+dFujFyTO+N8E0xnbah53ynT7PgI9AT+hss02LLE
	Ufoky9UxvEzlkFODzPNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPi71-00C1Bn-2j;
	Tue, 16 Jan 2024 12:00:11 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPi6y-00C1Ag-17
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 12:00:09 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50ec948ad31so9483658e87.2
        for <linux-phy@lists.infradead.org>; Tue, 16 Jan 2024 04:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705406407; x=1706011207; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Wev8/+JRwMgshjlE6OA248QtJUcrnDfEQAw9G9glt4=;
        b=erNi9EBfqQRK4dK/DS144UMzuoQowQlLvtuT0eMuRNS9tV6rW6eqsBZZyVDayiY0P9
         gz9P0lA78ysigY3SV9hsKXeU5HcGTJ5oVs8PCXWJ3LNqG8IbYdr5k8765fm00ag3fzdL
         pCMmw3278ZnFyjCe2+pDWb3HAwcTBs9PC84V/kb3mELI9/oNLI3VdzxWYM8sYHaWe/B4
         MdVSmz7phdYl9nco++IgIUHnnkR7JSXNmA5blx25OfN/N7qLgo1b51SaCibTyZ/Skt8z
         e2gQO3F7nDXrtgbw68SF6W46PPGhdtGPSWo/6ldrmDdlYYcQg+ntgcqqudRaCFC3wy1+
         dsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705406407; x=1706011207;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Wev8/+JRwMgshjlE6OA248QtJUcrnDfEQAw9G9glt4=;
        b=c3qSOlE9Lzhd5IGZl66an6HehPbmWtupXDntzrOnHB9ndM45mVLejEmzgZaYH10pYO
         YA+B97ynhPwVMkAHCzBqBd+C21oCj0JuOxi8vo4220rFKlfZ7lUbdkJycOvIGcEtJeuU
         IPE7IQeRW5VD1wIaT8yS2nCMGogjFkIAHI2UzjWfBfLELUSIoce36Ipyzp3iuvFmpGnw
         6WYiumog5gm4UqByVHPFeXbOgBjzDBiEBKnDoRSv5XUuk5uGopbJzhbsopZTDzhraTjh
         DyNzZS4OM+JeRh9LmStXwuIHftSyzf5CgX97OdaT5ytsgqlRZyWMeXlerRM/FRAxXaj+
         hsLQ==
X-Gm-Message-State: AOJu0Yx5PFBr0RTvV62FxXXGQWAzkBJReLFNHTVUJIvgJFHxNGilSUu4
	ZNN1sCej7f2LYfpN269oUdGbqzBaNFrxIA==
X-Google-Smtp-Source: AGHT+IGfc6+yVYgBAet9fiwwSrpIoLDwtTHC0NEVx2i+LqboNZyB4n5xocQOM/TgazP+gwt7vgS4Mw==
X-Received: by 2002:a05:6512:39d2:b0:50e:7b01:70df with SMTP id k18-20020a05651239d200b0050e7b0170dfmr4282250lfu.72.1705406406987;
        Tue, 16 Jan 2024 04:00:06 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f3-20020a056512092300b0050e7a2be0f8sm1724362lft.191.2024.01.16.04.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 04:00:06 -0800 (PST)
Message-ID: <7c86a91f-0339-4100-81a7-55f95cfcc18e@linaro.org>
Date: Tue, 16 Jan 2024 13:00:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP register
 for USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
 <20240116-usbc-phy-vls-clamp-v1-5-73b2da7691c5@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-5-73b2da7691c5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_040008_379652_415C2C68 
X-CRM114-Status: GOOD (  12.57  )
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



On 1/16/24 02:08, Dmitry Baryshkov wrote:
> The USB3 PHY on the QCM2290 platform doesn't have built-in
> PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
> via the register in the TCSR space. Declare corresponding register.
> 
> Fixes: 0c55f6229bc3 ("arm64: dts: qcom: qcm2290: Add USB3 PHY")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qcm2290.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index 0911fb08ed63..68b52e8faba5 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -442,6 +442,11 @@ tcsr_mutex: hwlock@340000 {
>   			#hwlock-cells = <1>;
>   		};
>   
> +		tcsr_regs_1: syscon@360000 {
> +			compatible = "qcom,qcm2290-tcsr", "syscon";
> +			reg = <0x0 0x00360000 0x0 0x20000>;
> +		};
> +
>   		tlmm: pinctrl@500000 {
>   			compatible = "qcom,qcm2290-tlmm";
>   			reg = <0x0 0x00500000 0x0 0x300000>;
> @@ -690,6 +695,8 @@ usb_qmpphy: phy@1615000 {
>   
>   			#phy-cells = <0>;
>   
> +			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;

This also leaks outside the syscon space.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
