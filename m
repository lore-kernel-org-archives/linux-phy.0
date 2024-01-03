Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA0AEC3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 13:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHF+x3Gz2nBSe5zD7iPZzPqlK7WQKK0aHwHkpVzTVUY=; b=dVzAb0zOS0sIf+
	OFvNzB3OVAaQE5YOKn00UTDgrOmxGdqkUDssa8dZ47RWCxHUE5cMnH/+x4Ab7wSzRJScU1VVAwhys
	hzNft8xVudlNaMjbjZMj34WrWMf/LoUcePNLm+B20juMxPiyfyAu2wubVsU+HgT01URl4ptgYF3DA
	TAdX+o0YlZb90IktxzN1dDswuIlRMA9p6SaGcxpQB4LSIQhgbL3+1+Jd5Y6xsDmdCNW4WxqwWOOY/
	EHnIBf2prGe6cO6AGOkveXSnN85ZV1t7J65L29wLGkDFC7DXZ0D7ya8kJAM1TYAMLQC1NKp7sob6/
	JMbbStkPyC1+4/IyczeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1dN-00B1Wc-1L;
	Wed, 03 Jan 2024 13:50:13 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1dK-00B1W0-0X
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 13:50:11 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50e9e5c97e1so2046800e87.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jan 2024 05:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704289806; x=1704894606; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f1dvuFHKe4j17EX4txcAT9Lw2KXFp4kBJ6tMYnn9PJw=;
        b=Qfz0akivFCVq+X4Qt+uf9BFmObWwEqZpcr8qxa6CQzbpkEYKc7HRP7SqTl/gKcZZxo
         dYcHu985dFucDb9CCPvKxKNXSucR5FjeUkfsMB812SQfTACr2HSctopj0wmQSR1IAm6P
         h09Zwpo/M6RAWsOkLh+OG8fPLHwCj0SxCWeOlpFLFZP44NP62/j7TfUB8EZMfwCYEP4M
         QLVatVIEH/MhCH6Ha24YEx6KPvCbWX5j/6vQVKQERIyvubi+Xt1kryJrag/v6QI9e9OK
         BvLOSR91EFFcEcjZA0kuQSP8qWTN1HqYG2kvULLWzR8zUCNyCvzGilx83agU7i3Toqlh
         gQLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704289806; x=1704894606;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f1dvuFHKe4j17EX4txcAT9Lw2KXFp4kBJ6tMYnn9PJw=;
        b=TAnhHQbW+hop/ra2G8Hm78oF4c1FNntHykyFfslPQNYOObJZD9J+DO3bhVt/nTX3ed
         B/rRFCBornwy64uE9D45L38hjhOxzuZiJZpu0L8i9Grn1Z3dcj2sAtoDjJiHzFedUlap
         IHE/gZJBe0dnkBgdLmqOCAGw3K1QrIBc7IGmzvfsb7t2EDdov0NJxOyIeRMIuP1TcoJp
         vuufHriirgRiSyLVYDjbSymIlbxzyTHUWDj/PYxLLewbA6d/Kd9WoKHVd9QgcvSWTnKp
         VU3m93yin9Lgm7FFUq7CXTrk212YbE2ABRtWKIZ2Pn4ydJtoP6WGI75NxgO+P40503/e
         JA1A==
X-Gm-Message-State: AOJu0Ywz9O2E/em4Ib4HAAnKsanvLNAAQ7+M8kMw+tZCm17Edp+Zs8mZ
	rucc7g6VwhByRt6544DYjHaT69bfp4sNgQ==
X-Google-Smtp-Source: AGHT+IHKBy24cMcTBsmEGGMRYVASYXcuE3vV3BgZ0qtR4tJ+F1QDU88ZKxXyy7feuxWWsXnn+F85uw==
X-Received: by 2002:a05:6512:3451:b0:50b:ea8e:b42c with SMTP id j17-20020a056512345100b0050bea8eb42cmr7027914lfr.97.1704289806350;
        Wed, 03 Jan 2024 05:50:06 -0800 (PST)
Received: from [192.168.199.125] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id r9-20020aa7cb89000000b005550844cd1dsm11312288edt.30.2024.01.03.05.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jan 2024 05:50:06 -0800 (PST)
Message-ID: <a888e261-e990-445c-ab98-f63859c19dd2@linaro.org>
Date: Wed, 3 Jan 2024 14:50:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, vkoul@kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, quic_cang@quicinc.com
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-15-manivannan.sadhasivam@linaro.org>
 <e905c463-6f89-4939-981a-7a360ed31669@linaro.org>
 <20231220083014.GB3544@thinkpad>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231220083014.GB3544@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_055010_214312_7A92D081 
X-CRM114-Status: GOOD (  10.45  )
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

On 20.12.2023 09:30, Manivannan Sadhasivam wrote:
> On Wed, Dec 20, 2023 at 01:35:27AM +0100, Konrad Dybcio wrote:
>> On 18.12.2023 13:07, Manivannan Sadhasivam wrote:
>>> QMP PHY used in SC8280XP requires 3 clocks:
>>>
>>> * ref - 19.2MHz reference clock from RPMh
>>> * ref_aux - Auxiliary reference clock from GCC
>>> * qref - QREF clock from GCC
>>>
>>> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 ++++++++++++------
>>>  1 file changed, 12 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> index cad59af7ccef..37344abbe8bf 100644
>>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>>> @@ -2256,9 +2256,12 @@ ufs_mem_phy: phy@1d87000 {
>>>  			compatible = "qcom,sc8280xp-qmp-ufs-phy";
>>>  			reg = <0 0x01d87000 0 0x1000>;
>>>  
>>> -			clocks = <&gcc GCC_UFS_CARD_CLKREF_CLK>,
>>> -				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
>>> -			clock-names = "ref", "ref_aux";
>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>>> +				 <&gcc GCC_UFS_CARD_CLKREF_CLK>;
>> GCC_UFS_REF_CLKREF_CLK
> 
> I'm not sure about this CLK. So I kept it as it is until I verify it.
I am quite sure everything *UFS_CARD_* refers to the other UFS host..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
