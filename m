Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E9CCD1288
	for <linux-phy@archiver.kernel.org>; Wed,  3 Apr 2024 07:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9m9KuY2+E+NmWTgWGrwTGPNecKMYFblK3MxFZIYHHOA=; b=lPsj0jo5w+OmV3
	TbNa5mks6114fHdMocEyBeRwlFZHqi24H0V7VQHVihHrHhNI3DqXG6iuUbZB1Ej+HWpcnP8a9UwQn
	zSSuXmMEhzM9ixmt3jbv7HBNIsv+f+9qmIQLLplL1XXBNkko2/WGUtX4K/EzF3J7nUPc2xMSEbORR
	MnjhUdGYUkeVNiQCAzXiddN68gHnG0GbjXooClXdVmMUtAZ976wJtPZxEmUtxhINjU1tl2fu9uSUT
	3iuX3AC5/5meC8ZdopNufxqADbjFBbW38YSnd7+kYPQMG6yHFyT+/TCs72aR6r30YS9XmXgeUnPut
	H8FYa/sVDqjHVBx20fGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rruqn-0000000ERTw-16eO;
	Wed, 03 Apr 2024 07:16:01 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rruqj-0000000ERRW-2bxJ
	for linux-phy@lists.infradead.org;
	Wed, 03 Apr 2024 07:15:59 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-56bdf81706aso7549801a12.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Apr 2024 00:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712128553; x=1712733353; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CdsWdu2GvTItN5GazbN+3i1C2YVB/RZnYUwLLHX1mNc=;
        b=OqMMxo7gdJXa7bjA/PGkC4mRC8hVVxq3b8BETe2j6sd6Vli95OVzgrdP29p0RIimgI
         7Kpfi2JiHdqgZmDi7Yk/KU0snO86tUNLCJVlXhFyCyZ2gR6Cj4cXOcaMeO06Fjhw7c6f
         b6+OAfj/6kw6COANSzY2fEo/QYgVXMoifQNGyofr/1MrQ6s9/D3yUilviT+u9P6k6kll
         RCk8J5BoBfNEgdSaQuwXLBEVcp1xJZvoXXd822umof+9eGSW85i+K1fUevyJqIv98TSh
         9c9Q9YBgiQqiVLr35ld+nvIZc03L7q57463PrAyQ5kwhtoLPzIrGQji3mq3Ges5Wqcfp
         ndGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128553; x=1712733353;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CdsWdu2GvTItN5GazbN+3i1C2YVB/RZnYUwLLHX1mNc=;
        b=E2UmsnWlrtOlpdAB9zeI5HIkylnfZs5ARmRwT87CcIDz1ObE9yGgNQJfIA5vwM9nvh
         PZ5tNwwbN8rYpJd7alcSUhtQ/sCunjU975zevBe+MLZCfMB7lu0juHIbpWPnzvRG2aRd
         TxXmI6H4w+Iw9Qtd1Mc5x/nWvwWSbaxlH9G8IFvoxyHqxlqMzY43tYA64PR3+qtrgR1Z
         IDEWMv8ols5s8oLjxzKIxSNXXcFJ0uBlPZfgI3gHiT4eXC5qDUv4o6AJNATVGAueW6v7
         IxX1NwW9Lq9IYVTutXZrKRMgRTX255L3z/oxxU2BVfJiY1gxPW8bfkOdNe6eVI2tb71a
         UZlQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+mNK1KWdzS/lxI7ZlkFWQIO8uhmaz8XQ1OhCD3ZZXvhqR4BdPYsEfwfT53mf8kJ9oN5Hi6jnraKARfOwT/nEL5amvM1opG2Q1fEo1HQ==
X-Gm-Message-State: AOJu0YwRwTSiPLTx0ZorWZguk1s9NLURM3BBCXonhj9V+yquLpLHt8B1
	TWneOMKj3hwCB7Xwi9I3+ucrIBacMXkYoZuhi+Jqfb6A1aQEpEAl3g1wZrG3mkI=
X-Google-Smtp-Source: AGHT+IFZV3jDZkfBaGKYy0xfPr9fpENgSYfKgv0EP3IMvf0ecDDaVbHabuKXU07P352uBWWZJQq3LA==
X-Received: by 2002:a50:9f06:0:b0:56b:9f7c:3c32 with SMTP id b6-20020a509f06000000b0056b9f7c3c32mr1243861edf.12.1712128553425;
        Wed, 03 Apr 2024 00:15:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id fi8-20020a056402550800b0056c509a11acsm7592367edb.33.2024.04.03.00.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 00:15:52 -0700 (PDT)
Message-ID: <bfcb5df5-79cc-415d-b224-06887cebb6f6@linaro.org>
Date: Wed, 3 Apr 2024 09:15:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574
 gen3x2 PHY
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ansuelsmth@gmail.com, robimarko@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240402192555.1955204-1-mr.nuke.me@gmail.com>
 <20240402192555.1955204-5-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240402192555.1955204-5-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_001557_708343_A12A0D6D 
X-CRM114-Status: GOOD (  12.16  )
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

On 02/04/2024 21:25, Alexandru Gagniuc wrote:
> The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
> extra clocks named "anoc" and "snoc". Document this, and add a
> new compatible string for this PHY.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 47 +++++++++++++++++--
>  1 file changed, 42 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> index 634cec5d57ea..b0dbd2726acd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> @@ -19,19 +19,19 @@ properties:
>        - qcom,ipq6018-qmp-pcie-phy
>        - qcom,ipq8074-qmp-gen3-pcie-phy
>        - qcom,ipq8074-qmp-pcie-phy
> +      - qcom,ipq9574-qmp-gen3x2-pcie-phy
>  
>    reg:
>      items:
>        - description: serdes
>  
>    clocks:
> -    maxItems: 3
> +    minItems: 3
> +    maxItems: 5
>  
>    clock-names:
> -    items:
> -      - const: aux
> -      - const: cfg_ahb
> -      - const: pipe
> +    minItems: 3
> +    maxItems: 5

Just grow the list here to match ipq9574 and keep minItems: 3

>  
>    resets:
>      maxItems: 2
> @@ -61,6 +61,43 @@ required:
>    - clock-output-names
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq6018-qmp-pcie-phy
> +              - qcom,ipq8074-qmp-gen3-pcie-phy
> +              - qcom,ipq8074-qmp-pcie-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:

> +          items:
> +            - const: aux
> +            - const: cfg_ahb
> +            - const: pipe

Only maxItems: 3


> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq9574-qmp-gen3x2-pcie-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 5
> +        clock-names:

> +          items:
> +            - const: aux
> +            - const: cfg_ahb
> +            - const: pipe
> +            - const: anoc
> +            - const: snoc

minItems: 5


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
