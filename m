Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECDBC3DA6F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 10:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8G8cRLyei7dZA12gOH0AzeiYH9+39meDW9Ks0ae7lI=; b=bXYEysftf/7T3v
	n/YClQHSPlZK6FKnFkZ1VxG4B0G/L1R3CwTIudDOR6HX6b39wShoN9DZ9XJ96XBpAlmXeHQCkh/Jt
	oHivDpCkWdaz15LBECT9JUd37BMsMxZXbXkUqpskO8baA9d+iRXNHYOhp3cD+LsL00oCxq+MGo+Wf
	+9eJJUsKVyJInLBQ9kgrYc3fEFBpD3O12MnLjmiQgTsrAfPC19heCD7aUT3qdITpJKG4YYlafwxxL
	LdUJqeHNNI+kxjyLhP7SGNlqCftR9yOpmQ2nMs5UsDILWZL174N2miuHgnyq6U7E9Yb2dspaNJSh5
	9UDNzmkVxedV0GnDI0xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUD6-004pj6-0t;
	Fri, 25 Aug 2023 10:38:36 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUD3-004piH-2i
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 10:38:35 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-986d8332f50so97062966b.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Aug 2023 03:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692959910; x=1693564710;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4eZohkMhT18ZevoTYowtU1nwE+F5rPhtMYikewT3XXg=;
        b=e9jvLTsyfDb7v5/FGy790xy/syp7CqL6sJhs+3z5/Ntvdmo1P+B/X8/pR+v/yHt1XK
         Y9eB3bA/4WxUdvQwxVAuxwJJjv9Pp+/QZFzqYvpAUpG0s9R63PFkI6U5t3MMboKE1JJw
         FJbARFWXYYIseW0tW32cVHY3sQn9YExgp/vo5vLVJVtnBWAlPnEgkzWRYf7yfUREu6y9
         fxNoqdp+OChYblufYtYWD9KOxb6FQjw7EVKqYpqBMNFouUAXEbchpEXlbp1A+B7W/7Ft
         jirOnOlJxDjN7Wh4i8kGCsaGYJ7v5DcQDphocFeMeTqVCdRECeKz+uMmsO1LXgOQhZ1R
         aJiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692959910; x=1693564710;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4eZohkMhT18ZevoTYowtU1nwE+F5rPhtMYikewT3XXg=;
        b=kvoy1wdjBqoC/ixmKw4iZd8P2JJq6dYGVR0F0vP3dtjE3k61TJKHNRL/Z16XdANb0y
         02gQZws4F5Y8Kk5uzzR7Zc+LcdpzRy8AgtI9VsWZSHWo6u04JiJ3eP00TfjZOTLeyJ7+
         oY1apzfEAGDH8igkIEK/9WXK2m1x9k0qXGxuvDdaqhWRHNtrnpnFo6JB35xovWJFnKVg
         dEIaCPnSvXMjqET5KNV9pWEK9QiWg6mxFv6NVHW3hoUwN/oVBlWl5uRlBnjPT5MAdXsP
         iQSjWBsfXXS/KKgaUYFCxj4BEu0jARBbEDGprtoku5XwiBIRr96ultQMzP8W6NBsk2qN
         23pA==
X-Gm-Message-State: AOJu0Yxv+hgJXeBkQYWmufbjUg0YSkQpbpI7FP9j679gNH+VZkhT1EJN
	Y7miVk5kW+1fgFGHYXTOtd4zkw==
X-Google-Smtp-Source: AGHT+IH0qcquB6UUsjccrAhAd5g5uk1lWTfoEshvV6vXgxsyW5wPkuOjsmNdJVNE/Rf5imzVP/it5A==
X-Received: by 2002:a17:906:5dd8:b0:99e:7a6:d412 with SMTP id p24-20020a1709065dd800b0099e07a6d412mr15041752ejv.19.1692959910695;
        Fri, 25 Aug 2023 03:38:30 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id k16-20020a170906971000b009a0955a7ad0sm827555ejx.128.2023.08.25.03.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:38:30 -0700 (PDT)
Message-ID: <7c0dbf30-295f-6735-88d1-f4e524936c72@linaro.org>
Date: Fri, 25 Aug 2023 12:38:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/5] arm64: dts: qcom: ipq5018: Add USB related nodes
Content-Language: en-US
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
 quic_varada@quicinc.com, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Cc: Amandeep Singh <quic_amansing@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-5-quic_nsekar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825093531.7399-5-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_033833_895249_8AB7752B 
X-CRM114-Status: GOOD (  13.04  )
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

On 25/08/2023 11:35, Nitheesh Sekar wrote:
> Add USB phy and controller nodes.
> 
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 9f13d2dcdfd5..ff477923a823 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -238,6 +238,60 @@
>  				status = "disabled";
>  			};
>  		};
> +
> +		usbphy0: phy@5b000 {
> +			compatible = "qcom,ipq5018-usb-hsphy";
> +			reg = <0x0005b000 0x120>;
> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb: usb2@8a00000 {

usb@

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
> +			reg = <0x08af8800 0x400>;
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
