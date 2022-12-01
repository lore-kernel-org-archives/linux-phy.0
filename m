Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F909C43217
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 14:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBabdmAPNBLBmXNgoT8DYuqBanohCp21RaBh6IavWjI=; b=FsXMjuOvmlRZvQ
	zPY8pY3eccQFQPKYEYUBnFKW2RuzW8OHVI49E6XjRhwv9orFOgd/+zjqA3jW4yw2ONwfOzx/Iyvm8
	94y5thjMdtkYf2NZZwW7QlvgIF9FTISk/Vw5KVoRdu0cW8PUQnLzhV163F3VgM75dmwhekQQwufP/
	J7TB6DEO8l85ZMYvppAGoiUNFeFhxiqGWpCqyc5r9GP5xcaxf3a/YRR+/b4FkiN/ys685vBwgMAQV
	T/zhs9qxI1+acfkWA0QF9TB1aoBNkR7IprrfKBSlnkh1Erm6b/cuBz0sJ9FrLhL4jAeaj5sS0iuFM
	MJ/JKLGaOae9K4HbtLaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0kIY-007qlM-L8; Thu, 01 Dec 2022 14:12:22 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0kIW-007qj9-HG
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 14:12:21 +0000
Received: by mail-lj1-x22a.google.com with SMTP id d3so2030010ljl.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 06:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FUdjNoV4twBRqhcTiBFjGp/lnY9gr8hGcfHeADPJd8g=;
        b=gLdbfB+NoqVy/6JQwUiXSvW6BoGUetq5eK6vmNTOlUmYOP8evL6GpfYN+kZWyfsbS+
         NNL3JCmnZGwZRCfZh2uvvJZu5+yoP5SgR3B9lfA5kAqnIlEP2yXp1Tv/VGC2wp13D8lM
         OCyHFiFWhYYlxyrtKNLFPUnyUKfBfKB3bfHjwgxxcqp58zNBvgj0+RadhAq/o/keDVwx
         agzAhliKrCGPBVUlXMSXOCu7/JDLDFONo7w89SHgWkGz6Zh/qWDfukiN3R1y2gmlhfpD
         DitNcH2K9WGIuepM9uIKgADnyE7OzWoCT00J9krofzu+VA6iUWF1FJePIRVi0IF+EGsv
         hEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FUdjNoV4twBRqhcTiBFjGp/lnY9gr8hGcfHeADPJd8g=;
        b=Ml3uW9Izpoq/jN8Hw7nvlWBU5AIyBnizqi+GlsxLXuQmJV2CjH68kFYo5FJBT+ed0f
         KQg05mOHHEfLM1ob+K83a02ukTwyrZupFHf/gfTF6L8a9DgY2QlJlselWEOPiuBe56Wq
         v4XMY3gXHndHVgnwkBIBxD2DlkN5vMQS/7gvb1Tro70T4Dz0ePavGauOdWfRJCXkGqby
         q25nYlHIDMLP3VIWccrrkAiawCceHdvpSbnYx12ey0qkdWFkS4RGmT/8ZXSR2WriUDLN
         ioRV1xkgvFXXcc8L7F4jUFa5qWx3q4bpmgwZ7/ofTP5MdTtzFiOHIaU3i+di8TcZWiZH
         QizQ==
X-Gm-Message-State: ANoB5pmuwjxG3eexjv849ntZs/ruOWzJFYaGWd4bp2QtHOm7TgSX32T6
	pS+iP8c5a0YO2cGjMb3TTLR1Dw==
X-Google-Smtp-Source: AA0mqf52pp6u4HK9pZLT/QCWfEFCWjSU+8eugblqryuYcRqm+NsMavJ6McDbegAIVleeyAbDg4vpYg==
X-Received: by 2002:a2e:87d7:0:b0:277:100c:db42 with SMTP id v23-20020a2e87d7000000b00277100cdb42mr20200484ljj.417.1669903936101;
        Thu, 01 Dec 2022 06:12:16 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q7-20020ac25147000000b004b514efb1a3sm659117lfd.201.2022.12.01.06.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 06:12:14 -0800 (PST)
Message-ID: <c91b13e2-ac74-153f-f19b-587ded948a75@linaro.org>
Date: Thu, 1 Dec 2022 15:12:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 15/15] arm64: dts: qcom: sc8280xp: fix USB-DP PHY nodes
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221121085058.31213-1-johan+linaro@kernel.org>
 <20221121085058.31213-16-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121085058.31213-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_061220_658228_AEF576B7 
X-CRM114-Status: GOOD (  14.38  )
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

On 21/11/2022 09:50, Johan Hovold wrote:
> Update the USB4-USB3-DP QMP PHY nodes to match the new binding which
> specifically includes the missing register regions (e.g. DP_PHY) and
> allows for supporting DisplayPort Alternate Mode.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 77 ++++++++------------------
>  1 file changed, 23 insertions(+), 54 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 85c674e7e1a5..3c5bc56e68fc 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -11,6 +11,7 @@
>  #include <dt-bindings/interconnect/qcom,sc8280xp.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>  #include <dt-bindings/thermal/thermal.h>
> @@ -763,7 +764,7 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <&usb_0_ssphy>,
> +				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -771,7 +772,7 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <&usb_1_ssphy>,
> +				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -1666,42 +1667,26 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  			};
>  		};
>  
> -		usb_0_qmpphy: phy-wrapper@88ec000 {
> +		usb_0_qmpphy: phy@88eb000 {

Johan (and anyone also interested in this),

What are the next steps with this for older SoCs? Is there any plan to
change the bindings and DTS for them in similar way?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
