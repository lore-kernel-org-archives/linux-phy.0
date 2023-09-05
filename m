Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F2CDCA100D
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 20:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORWajG9ntJH8UqPlJdtQP2oqYGMfqHkEF0xnyApFsEo=; b=s3m/s3hDQrb+b9
	NVs6Jb89JMHaXcZ6tYxgfbJ3aj1ZCoFBF1J19IFfhiosRIq/SfMnhoUGXvHtiIobKD09r7sTUP5m3
	EQocmRd0hzPgy0UGZTva3enCc9eqpvqAdbnQZU5EgBh8pFKF+uTB8EbuiXbzibV8Rk8f2RWhv8vAo
	rb9Vi6nBPdeuxHSRcL6uiPz1zyJm4UMwLi38bhEYGQ2nScQXpWbD+VZzAOxE2YLYiEnGpe8f8O6k2
	Dm1OFdQE4FgeXkgripOTve40RZ9/RfMTEbTcn+oHLXsoNvMkkuyQlNT4MCJWE2GPiDFERfa01ZkRE
	HX9DfBB4zGTGDVAxMZSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdckx-006hGO-2s;
	Tue, 05 Sep 2023 20:34:39 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcku-006hFU-2q
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 20:34:38 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9a2185bd83cso437791566b.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 13:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693946073; x=1694550873; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+vkcQl2agBJ5k2hYdAGxqtdUpbX0mFxRfiot9JstVTs=;
        b=OBUeR4SnFyfaL+pbfh+L94c9lzxdEMKkiOypcZzTj0CWQ5fTN1I3mmJJ48A6wEbZYW
         yJdna56XO8KFzuvpBPttVVf/vhDEyMK6Bxwn0AUJGqmgrswK5qO3t++qhBW0m/sUnz03
         7IA7VpppqBhqx7/dFbjvi6mTS9KtK7gYwoFEvpsNUWnxVSxP7lnEYO5su0S+65Z5eR6l
         TjUDQ3zJtwow+ewNTPdD2FS95CwqaQ2j4q/val9sEK317Fusn9R2b4uG806L1ul6sR6Q
         mauwc3nt4vwtgUMFXwm7R2rIxFXA649VtRCd530ca2ThnnLhGRX/WdZYk9rwyU6QYcGe
         IXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693946073; x=1694550873;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+vkcQl2agBJ5k2hYdAGxqtdUpbX0mFxRfiot9JstVTs=;
        b=dk35QFBCryUwKQ1sikmv5gayPBADXHIDegkvp6maDxdvQAO1xH/PiWn+bpkzkdjBFD
         ZFjGc8fwS1j005NJLMYt2kPe/3bBOpsnU6IPTVJjTlJP6mvLDexkJLlZZHbdDmSyKS7+
         7OkdbMiVeISZTYa8Z2TrYW3FwDc9kQe73k9X2DRjKTdOrxRqgDPcwfhFlXRfpkUNRPl/
         rinDquHNL2iiguvDVxpbQCcQ1mxI600TiF0HP+L5sNpf7Ow0l9z+1oXk+EvxUrwOCf4a
         Jb0YDOIyzpGU/heEprVR0kL7jB8eKlBTa5x4h/3zsR4sYIIn5iJtyP3wch/hjJUUK/xr
         6WsA==
X-Gm-Message-State: AOJu0YxUUdubG5ipHdtrlqGepOHorTi5FvDsD+hCGA+Oht03n6W4jv9a
	vmL0novAi2M/vxd6uvHj2AboZgiiURnJ48yhFwA=
X-Google-Smtp-Source: AGHT+IGjL6jmXzEcCrmkf6DxJTuuAYKEE4MikTeuDJUCnbpphzZ+ui84G3WJmi+u6BuAtU3OUSGt5g==
X-Received: by 2002:a17:906:23f2:b0:9a5:7887:ef09 with SMTP id j18-20020a17090623f200b009a57887ef09mr647126ejg.32.1693946073684;
        Tue, 05 Sep 2023 13:34:33 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x24-20020a170906299800b0099cadcf13cesm8044460eje.66.2023.09.05.13.34.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 13:34:32 -0700 (PDT)
Message-ID: <37fe0c7e-60ad-4c27-b40f-471cc3d92e1c@linaro.org>
Date: Tue, 5 Sep 2023 23:34:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
Content-Language: en-GB
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-3-git-send-email-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1693909838-6682-3-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_133436_937468_7637EF7C 
X-CRM114-Status: GOOD (  13.89  )
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

On 05/09/2023 13:30, Rohit Agarwal wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm SDX75.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 40 ++++++++++++++++++++--
>   1 file changed, 37 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index f99fbbc..5725620 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -20,6 +20,7 @@ properties:
>         - qcom,qcm2290-qmp-usb3-phy
>         - qcom,sa8775p-qmp-usb3-uni-phy
>         - qcom,sc8280xp-qmp-usb3-uni-phy
> +      - qcom,sdx75-qmp-usb3-uni-phy

I think the ident is wrong here.

>         - qcom,sm6115-qmp-usb3-phy
>   
>     reg:
> @@ -38,9 +39,7 @@ properties:
>       maxItems: 2
>   
>     reset-names:
> -    items:
> -      - const: phy
> -      - const: phy_phy
> +    maxItems: 2
>   
>     vdda-phy-supply: true
>   
> @@ -75,6 +74,7 @@ allOf:
>             contains:
>               enum:
>                 - qcom,ipq9574-qmp-usb3-phy
> +              - qcom,sdx75-qmp-usb3-uni-phy
>       then:
>         properties:
>           clock-names:
> @@ -122,6 +122,40 @@ allOf:
>         required:
>           - power-domains
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq9574-qmp-usb3-phy
> +              - qcom,qcm2290-qmp-usb3-phy
> +              - qcom,sa8775p-qmp-usb3-uni-phy
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +              - qcom,sm6115-qmp-usb3-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: phy
> +            - const: phy_phy
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sdx75-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:
> +          items:
> +            - const: phy
> +            - const: common

Could you please point us to the actual DTS patch adding this PHY? I'd 
say, it is highly likely that you are trying to bring in the unnecessary 
change.

> +
>   additionalProperties: false
>   
>   examples:

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
