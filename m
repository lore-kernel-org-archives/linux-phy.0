Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0043C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 11:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNLcoVUqKdTJPh1c0nzJoGnNVB0dv4xpQQKq6t0nGwM=; b=Gax/taVUsm9F8r
	T8+cB1KXilPVNM+3XAjEIB4vLDpj6V0oJ2afN3IRtFWqFAFDADD/XLijZQZIpttDJXaZW5h+b4RGm
	KhIyWlgyqU0Dx9ePn7+zYso6lOztH/VWIU6WRzC7GH8jy2+uFSWdGK4GEmwMgqlgTTkAnfzRaZPSJ
	uyENBTfoFjNDSWwXmDK028bdMqVIoPiz2PHCs2mavh9X5z8+JUQA9qJKetg6Xnt9yMPgGtPDtjdmc
	lFuLHiheffSZ166+OUpg4lg7irIQ7BQXZizkz4i4sZv9DMX1SVVf/yf0hVNFY2OciESGwL+OgCZsA
	wFlUtn/egk2Xdpqg2QuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwjDg-002yf7-6n; Thu, 02 Jun 2022 11:42:28 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwjDd-002ye5-UP
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 11:42:27 +0000
Received: by mail-ed1-x52e.google.com with SMTP id x5so820173edi.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 04:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZpLQeQeQdZ8PTsl6QzkAMoq8cM5CGyVXLb6GbT76BN8=;
        b=Lmlc5otPHPBiZqkehmSeYYqoo3/95heIBc/+gbh6YpzM/0f5eOv/657FiggDeOdJjA
         4J43hf8bVwXMpb0QsHXqeDF3g/VVBtJyp67DlPLL3/uZZSBWsiWC+2WWkPTBZ/80Yx+f
         TjbXUu4yFkpE02sn2O+JMok11f/baTwo6w/ywXd2N0cUMSWAbMCp/bU6Xn3Y5OxeqX91
         dcJQTdK/9cYOgRM5aj2bC0QicxU6EXnhN3cGZozrGWhUiB136eXah1Mfwjtw8tirTvC3
         yBAoOIhXkBDAYWdKobyKN9QnwhMgGzkgNhJIkZEPW+9dQtudnM4udrjBFbg0hy409Bki
         Zuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZpLQeQeQdZ8PTsl6QzkAMoq8cM5CGyVXLb6GbT76BN8=;
        b=skqL9OUv6Zqr4fbjjoNjYdh8IJdo1MLK6UqnK1P1i2aqa0BgQ9EDhE6MvZ7c7YxIyi
         Zdaf1EZ9+eipVeTJ1BZMfM+H9ms6PJSQXz3VBNSsi8wLS/C0RhO1kSpiMnlauZw2sk6F
         akn+4FRZnKTrGOPSWVZsLU4NI3p/rB0xneOEZ/Wu7zAzJ7S43u5XyP2J7SZDu/LjbkrB
         0OuowpCW5Ti8Re2HShDanPeaBSnUoVtxJPhjemhaBMyDeeAld+mKjQbfNvVUzY7qHgd9
         G8l90VT0vmvgRK8wB4jfzq+1Q6EkSrU73TTim8WW5NK241pNBvos8R38n1kE7ZhnNEPo
         fE2w==
X-Gm-Message-State: AOAM531M3UgwKJ+nbnz8frXFI8qha7MjnNrqIdYGvUEzPl6/XfSeWW1C
	8xnKaw0L96PfNiHjqlqLOoVoig==
X-Google-Smtp-Source: ABdhPJwMBE3w8FcUsIappA+XgJgb3UE5rqzszgUOgdP3LXRDNy7ES7plawOr1PMvjECiQYsVoZm8Zg==
X-Received: by 2002:aa7:cb8d:0:b0:42b:e414:8019 with SMTP id r13-20020aa7cb8d000000b0042be4148019mr5000940edt.151.1654170143563;
        Thu, 02 Jun 2022 04:42:23 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cq16-20020a056402221000b0042dd022787esm2325479edb.6.2022.06.02.04.42.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 04:42:23 -0700 (PDT)
Message-ID: <b5cf82bc-363a-81f8-e3ad-7671c7c0ca4f@linaro.org>
Date: Thu, 2 Jun 2022 13:42:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 'Kishon Vijay Abraham I' <kishon@ti.com>, 'Vinod Koul' <vkoul@kernel.org>,
 'Alim Akhtar' <alim.akhtar@samsung.com>, 'Rob Herring' <robh+dt@kernel.org>,
 'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p4c2baca2d161814f5d51dc48722f904b1@epcas2p4.samsung.com>
 <20220602053250.62593-2-chanho61.park@samsung.com>
 <44fceb66-fd33-4b2d-fe8e-9a1a5837a51a@linaro.org>
 <b16915f7-a4b7-4512-77fb-b2cdd8e7cdb4@linaro.org>
 <035e01d87668$fb2bfcf0$f183f6d0$@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <035e01d87668$fb2bfcf0$f183f6d0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_044226_058323_5319117E 
X-CRM114-Status: GOOD (  13.41  )
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

On 02/06/2022 12:10, Chanho Park wrote:
>>>>    samsung,pmu-syscon:
>>>> -    $ref: '/schemas/types.yaml#/definitions/phandle'
>>>> -    description: phandle for PMU system controller interface, used to
>>>> -                 control pmu registers bits for ufs m-phy
>>>> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
>>>> +    items:
>>>> +      minItems: 1
>>>> +      items:
>>>> +        - description: phandle for PMU system controller interface, used
>> to
>>>> +                       control pmu registers bits for ufs m-phy
>>>> +        - description: offset of the pmu control register
>>>
>>> This does not work... Please test your bindings with different cases.
>>
>> Just to be clear - when I mentioned that minItems should be on second
>> items level, I meant it should affect the second items list, not the first.
>> Now you can have 1, 2 or 10 phandles.
> 
> I put the minItems to the second level as you mentioned but I got below error from dt_binding_check.
> 
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -42,8 +42,8 @@ properties:
>    samsung,pmu-syscon:
>      $ref: '/schemas/types.yaml#/definitions/phandle-array'
>      items:
> -      minItems: 1
>        items:
> +        - minItems: 1

Ah, you are right. This above is not good, but your original code was
almost good. I think it should be:

43     $ref: '/schemas/types.yaml#/definitions/phandle-array'

44     maxItems: 1

45     items:

46       minItems: 1

47       items:

48         - description: phandle for PMU sysused to

50         - description: offset of the pmu control register


Apologies for the confusion.

>          - description: phandle for PMU system controller interface, used to
>                         control pmu registers bits for ufs m-phy
>          - description: offset of the pmu control register
> 
> $ make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> ufs-phy@15571800: samsung,pmu-syscon:0: [4294967295, 1828] is too short


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
