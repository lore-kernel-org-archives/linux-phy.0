Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4ED2C6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 16:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqJsG5p4fZ1S+adNPp8rYU1OGmzGTsWYy5Mq06bVCbU=; b=l1U3s9wq5mDQGD
	zYynN9HgdIg41SqbwBpnA7ezfkcuHRxffoTWUseRbuPWQF/jhmoXO0+F6gdtSAxGQa4XCtJIc88X4
	YsdGq3GCvRKwqz1exVEpDHdwI/xKiKebN5alGdZ2iW6V86FjSfoYfIAi723+y2nH3GZ9mk8Aojz7Y
	4uiyU82q0deDqByEqdfthJhopQ/paXt/AhrbWvTYjaY2+//L2RGpc7NSr5rVAJpexij4f6Henycy0
	+mtPxW/P8j0dXByHvM/xlQziSStn3Dy3imEZiXhiSLFqKMY1y23DnauUgKJvm1zNDn5iZ1sskmRdc
	dK3bEDSzR6gyTtTMRuig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb23s-00BtWx-1v;
	Tue, 29 Aug 2023 16:59:28 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb23o-00BtWF-33
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 16:59:26 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so42646a12.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 09:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328361; x=1693933161; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q6E5l4p6ydZ17uXkOlyCd2QIGqtq2GGVNLb4d/oALZo=;
        b=T9tKnYeqZHmVH6enMgg43hLzkN68QZqoEwmFHgmZI/QBj8WCiXcuPSfA4astwUgMM5
         lMJyftf3cA58rsyj1HaRTTuEoQsJVz8zXYNr9ehwsbsGkEx0ecNLT60yX259rt3SY+9b
         NfL3c9a4q/T1jrEFsSYMj0GYKItD0YcR7TPN9h/KyxQ18VpAYpoxWEk1S/1MDG6zCiPX
         NEc8uUAt9c0pshM0oDhvUy4JsTa8bRNaCrOjNBjA5ZnMqG6DcNytdlt7RT+al2oHwzc/
         7bvhu9ioAK24cDbzmzYQ7AFRu/1zBe/qRwgsBOaOMTqRyhH0dFkWxXsN/iGoeT0iU5HH
         054g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328361; x=1693933161;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q6E5l4p6ydZ17uXkOlyCd2QIGqtq2GGVNLb4d/oALZo=;
        b=kUoGTa/NiFwCjN5ucQj1kJuAO/lI18N2XpVHtdXHG+jt0SU9oLVfpWQnEKqzjiTrqG
         ZCmjI1r3Vl593yI/O/1lSWwKkiV2RLRNs1QRTlMzeDRMBL6EzFOw0UoyUrQrE5RCB4wS
         I95z518nBoeJz3e2AGE9Ex0ygg8Yxd2JhRmK6357bJkhYgYtCWTSe93pfEgIPiNWSrWK
         UaGWa6C+lMqUtMHcVJc2ZHvhPOHp4vi9PKmjnk9A/TBge0C2huuBtJNXmBM0g+sOo4zu
         IOoTUziyBJkNtlV0iniflWOFq0zarjWtdNAGkr9N6UmLsIHCQchzgiQxfds3GzdapooC
         AxZw==
X-Gm-Message-State: AOJu0YzX0OatICfKAP96PccadIvY/503gWyeTp2AlVMRJMs+hik2P8JI
	s7kvts2bq9Wae+llGWdwI5A6Eg==
X-Google-Smtp-Source: AGHT+IGIj1KMlvwfJomohXDcL38Ci6Rl4M8OBPVW4F6QPISXVlVOBW578qDmgi5s5HINQQI8mCkvfw==
X-Received: by 2002:a17:906:5d16:b0:9a1:ee8c:7f3b with SMTP id g22-20020a1709065d1600b009a1ee8c7f3bmr3438544ejt.7.1693328360831;
        Tue, 29 Aug 2023 09:59:20 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id q4-20020a170906144400b00993860a6d37sm6130245ejc.40.2023.08.29.09.59.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 09:59:20 -0700 (PDT)
Message-ID: <61245ef4-3b96-67c9-fa75-5dc43c86b211@linaro.org>
Date: Tue, 29 Aug 2023 18:59:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/9] dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS
 UNIPHY
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_095925_003163_1E911AD4 
X-CRM114-Status: GOOD (  13.99  )
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

On 29/08/2023 15:58, Praveenkumar I wrote:
> Add ipq5332 USB3 SS UNIPHY support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,uniphy.yaml  | 117 +++++++++++++++++-
>  1 file changed, 114 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> index cbe2cc820009..17ba661b3d9b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> @@ -19,21 +19,53 @@ properties:
>      enum:
>        - qcom,usb-ss-ipq4019-phy
>        - qcom,usb-hs-ipq4019-phy
> +      - qcom,ipq5332-usb-ssphy
>  
>    reg:
>      maxItems: 1
>  
> +  reg-names:
> +    items:
> +      - const: phy_base

Why do you need it?

> +
> +  clocks:
> +    maxItems: 3
> +
> +  clock-names:
> +    maxItems: 3
> +
> +  "#clock-cells":
> +    const: 0
> +
...
>  examples:
> @@ -55,3 +149,20 @@ examples:
>                 <&gcc USB2_HSPHY_S_ARES>;
>        reset-names = "por_rst", "srif_rst";
>      };
> +
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +
> +    ssuniphy@4b0000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
