Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 114E9C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26LQMrruJsNdeWBLvhFrewE1EaTSMz+DIUKMZhD/aBQ=; b=MwWbiLa4UtGMxG
	+ZSd0Vl+u4lHLF/q8BPLavKC6jHZPP9das+EUHH9HkQpeZ9+FX36TiHlg3beMAFqakrg/QL8GcUvp
	1nWrjtlO7RfNk1B7NK7myDvu1Pwh1O38ip5uFzEscCn1pm+vYgjPKd62EcHcB1O6zPMlr6MvDRpKN
	z/ZMDpN1mSGd+sP3j3me16vAE1rAL/wwAGfL3ljRM7RM6E6nrWsT8IDWvZoSQasgMOp3oJXMxH+6z
	su6hD1uvRjogLbC4BKsMmMBX9QYPWwCKtYW58Mdjh7CZZH6r3U651A4wYGiX5YzdtPmzNTGF5ETh0
	haBlGkOfbZH1pTl64tOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8knP-009vCK-Fx; Fri, 23 Dec 2022 16:21:19 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8knM-009vAw-IY
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:21:17 +0000
Received: by mail-lj1-x236.google.com with SMTP id n1so5531948ljg.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dYVyisN/1CFHnXWJIqkehSm2uoYfT/wTJfVZDQ/+DVE=;
        b=NCOEh9D/bNqWA5XTFZ60lySOYnIpQa+96P6SqznFbOeL6v6OdCLC7XCYtqlnMoIi7y
         p+mUe0YMEX/F1jPKxOheyI2cpWhhAoqTNwRYeZnGI9j6nYPRiOpQSzh7kjeH2aDkkNg/
         Womedpb8jyh5fPGBgM0iwtj2CEaZe+wSgNW/vL4wduVUJHSn+M8f9Z+ICd2WKCGG096p
         O/xeCICYDdG7fHty21hER+ZOVrIej/d3HbPxQPr0qNFO2vCtmgB+GbWI4I+6Sw8v9/uS
         trqcfaWyJZ2eeUcWPZeeY9Twit6PSGqyCaXcGKwSnG4CwVIGRH8NQOaBcfYFdruuASBF
         vNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dYVyisN/1CFHnXWJIqkehSm2uoYfT/wTJfVZDQ/+DVE=;
        b=OwnTHyi7ou+pPBmmxOiBdyZfYJjGTRbr/q+oQ1BDxGjh3Vk1D50NXwEGsR/DA/dmeB
         qqjvXTeNlaK27EBmT9wD9ay6X8aTtA/f2+iRPPx+VuJTrwcpLIWhbU9sCsJnrk8d7dlo
         8Cx+s//n7pSF/cbHxt7kJtBeN06ewJBEqv3PuZ+K1uygDuDIIbpma85fn1ZFqYhH8IhM
         tmKZOFvJjemLupPPQ/gFwAHkpCEWSRbNVEFr0n/IGp3yJqLEvyLycK3dp/w8X+5UtZgn
         WzUWrAdxxgKc8qG+nBRUWo3S1NSzdWVBrxm7Tu4Ghpj7/knpAf5hgt9RNfBAcjFI9qig
         YR2g==
X-Gm-Message-State: AFqh2koHEYDmapNwLu7miTQUabKYuj75Z7JU1Q7fOa+65KpsXNCZ8jli
	BdtJt5LMMCynlq6EYwKp1OHU6g==
X-Google-Smtp-Source: AMrXdXtG77fus5WAw6rqU/rd5XFEMTUvaZTbdeki21w593nLJmL2dJyYLncYNytMYA5uw6KKXaKdrg==
X-Received: by 2002:a2e:bf25:0:b0:27f:ac86:8db7 with SMTP id c37-20020a2ebf25000000b0027fac868db7mr1814787ljr.44.1671812473343;
        Fri, 23 Dec 2022 08:21:13 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id x10-20020a2e880a000000b002771057e0e5sm497638ljh.76.2022.12.23.08.21.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 08:21:12 -0800 (PST)
Message-ID: <35a193b5-8c78-d24c-45bd-8092c7852260@linaro.org>
Date: Fri, 23 Dec 2022 17:21:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/4] ARM: dts: qcom: sdx55: add specific compatible for
 USB HS PHY
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
 <20221223161835.112079-2-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221223161835.112079-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_082116_679302_EAD8F476 
X-CRM114-Status: GOOD (  13.54  )
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



On 23.12.2022 17:18, Krzysztof Kozlowski wrote:
> Add SoC-specific compatible to the USB HS PHY to match other devices and
> bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-sdx55.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index f1c0dab40992..5408ff715fbf 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -214,7 +214,8 @@ blsp1_uart3: serial@831000 {
>  		};
>  
>  		usb_hsphy: phy@ff4000 {
> -			compatible = "qcom,usb-snps-hs-7nm-phy";
> +			compatible = "qcom,sdx55-usb-hs-phy",
> +				     "qcom,usb-snps-hs-7nm-phy";
same as in 3/4
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  			reg = <0x00ff4000 0x114>;
>  			status = "disabled";
>  			#phy-cells = <0>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
