Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C59ACD1284
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 19:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uu/nZFp7y+eN3v8EvuzvDfUvwWManY0tiXFPqPiZ+/8=; b=Aoo7Lq7a4F3WF0
	oAucqGFu4PwfB3S/7WjqYVJmfAJSAv/JD+LxJutetOzIPh3WNK2bU3P173Ai4IK+JMm7ffo4MoQEI
	9X55nLtwCGu0ShpBWCU78/GtQ9piEma49yZrM1EU+T1zkHKMNfIu3LGPg5GvbuJ2ymfOIRWgEDKX7
	ICb+/D4f6m822VHd/ii335XelqR47xnfDvH8Tl2js3NrJ4vQH1CKgaf78p4+BQR1nhZNDocg8Tfm4
	dKCyYyB4QvIh00I16jjs9A48PFMnN7hdnNLLQF+xEiJ/86T1KjmV3iDDIULjN/4QtuLrezFEIcAdp
	seDY3065RquoZ4jCnbWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrkFi-0000000Cbd9-3rMl;
	Tue, 02 Apr 2024 19:57:02 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrkFg-0000000CbcT-0af0
	for linux-phy@lists.infradead.org;
	Tue, 02 Apr 2024 19:57:01 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a472f8c6a55so719037366b.0
        for <linux-phy@lists.infradead.org>; Tue, 02 Apr 2024 12:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712087817; x=1712692617; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tVIGx7ik4JbWBNp+SY29/AwVMNtIA1b6xEQoLQV5riA=;
        b=Vod+a8/ds67v/wpSukbnlHLHyktAXoTXKMxnikxEGGYW0/qzzHhru/T2NKLR4zgnpT
         UOEgCT3Z7rjHoeqgPpjtnc4KCIgcpzgvRnPvk8sIElJakZc99xGoVkTWtuwLAnXlP8D9
         IvU5GjeU6ufilUW0c3ac7vo7ZzLimdii45R+76EZjfjdKf1O2AclVFH6KFCuc7gFeNRY
         YOGq3wFSwUfKddEOMPX/PNfjNaxr/EVy8j+YIYETdvz7xVFRcALkwRHSxIhu+SZF7idC
         ExY9ntrnHqxJvQiPimmqcxJvEvnyERDPnNErvD8e7jPocpym5YqQamtjuLF/SgVPEWvQ
         BdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712087817; x=1712692617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tVIGx7ik4JbWBNp+SY29/AwVMNtIA1b6xEQoLQV5riA=;
        b=AeNMA39OKgFODW2+2ZPHV1/kueclf7Gkm6nXxmlffvwnbhrT8ZMi+R23uRqa0uRnSI
         dn04GQf7St23DmF0YYSrW8Ib3HbwivJvj1mBQKSikAMVt2OMzWJrtjf7MlTWh//zhUi1
         m88NHe10Dvkc1dE5enUx/DIw3XCmHN6FL9S7Y+Q9kUBp/VZ2P5Hcti/WG4taNU9TNP4E
         OFg518rYz7CHFzlMz+bT3/cV47TL26H4s1Amo/HQZJaKVMoHHFKl4JVTkkYhoQPBKkOE
         r7fLDJK32DPFdbR+cO9BSE9gf01NLZLVOHQb9Cq21genIWoos8ApcuM64/9JaUL9EmzB
         D9Cg==
X-Forwarded-Encrypted: i=1; AJvYcCWWY6wvhtG6lE3TKzGxSShXJOI/CrjZp9mfmXS9t029gJlbUZEQJT17krmt0dI8f7f36Gs/1UVkS4A09V1A1SS05FYIUDf9ySAmKpdHuw==
X-Gm-Message-State: AOJu0YzE+bhykRpG1VPooOpFcGjlb1pGvkvKhk+ViBn3P+N9ekDKq9x0
	nbarH+CTajlCU4rb6hUcWwgw5f9ZPEVloUa+eM1qZbts8uPyMwyO
X-Google-Smtp-Source: AGHT+IHd34X6G0IdGs3i8h40+amOyl+iU7TtyG8nE4zHIVY0wUHrry8OcOvNzFNz5x84BnJUYlloOQ==
X-Received: by 2002:a17:906:594:b0:a47:32b3:18c5 with SMTP id 20-20020a170906059400b00a4732b318c5mr7875589ejn.68.1712087817348;
        Tue, 02 Apr 2024 12:56:57 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id l3-20020a1709067d4300b00a466af74ef2sm6871329ejp.2.2024.04.02.12.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 12:56:56 -0700 (PDT)
Message-ID: <3f817155-3660-439f-b6e5-8d32c866f5cf@gmail.com>
Date: Tue, 2 Apr 2024 21:56:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574
 gen3x2 PHY
Content-Language: en-US
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
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20240402192555.1955204-5-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_125700_216498_66D6BAAC 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
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

One minor mistake (I believe)

On 2.04.2024 21:25, Alexandru Gagniuc wrote:
> @@ -61,6 +61,43 @@ required:
>     - clock-output-names
>     - "#phy-cells"
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

This should probably be minItems: 5.
You already have maxItems: 5 at global property.


> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: cfg_ahb
> +            - const: pipe
> +            - const: anoc
> +            - const: snoc
> +
>   additionalProperties: false
>   
>   examples:


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
