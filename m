Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47CEAC19F32
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 15:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrdTi84gxikvEZOX541iSxDZeSMpsOeQm8vNAccRQiI=; b=hmxXZP8Hd1zA/H
	MV88VJnNS4DPtYvtFayqo067m7+K0i/1IPXPShxD18AMK9kiWM6lP615Jj8lS9hMqiJqzyH+AWPiI
	Hd9N1v1iFS4Wo9EarGCJt7lHQYyOuEaN0Gd7hyq+RZ2KFWODgCOz3gnAN8lNleKQpMt1PuzewCuN4
	HAg7unUtfF08aVThz2y578q7mKnep82Y46JiLVNfWWOLOf5kcK+ppB1XaWnhxgw1PHrgEtmzinzv4
	HQUlgj/vfo02M/EEWO/TXZpk4eAZv8L5Y6/rW5GIKiO2mOdOgTz8nOikdj9KRCThD241psO3MouFK
	jwE0q8i3swwOVrf49CQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpr1Z-00000008ZJ1-04iD;
	Wed, 05 Mar 2025 15:51:09 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpr1W-00000008ZIO-0QxK
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 15:51:07 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-43bbf0fb0d6so3698165e9.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Mar 2025 07:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741189864; x=1741794664; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vxVKB76bLrKcTnL2OLZ+yJMwzvP1Wr7E1CqkYn0gh48=;
        b=eeGmUfJBy2DDlEj0EyHcaDrkOY5wfSSIry9G2sGfemi7PLmz0McwHK2ntdyfb5kjQa
         U+Vl71qCAKxxfuydhNQgGzMqWn9RDJXb4J8Q9/DKINDI7xb6Ot9H9laeWBuO1ECLryZY
         u6QZz1x7KDyvImsH9GYqT2aGvhM47J43RF2fOTkvPYe3dVghrcK4EkDG81j2sMbHKjSi
         LW6tb9DUhqVmO6hfcnRXx8TAWF2AI3Nuw3yQl30sVYu5O4e1R2hQUiHopxFg10dkOdoM
         OL8s0wp059hgPsO9uljdXeIJwdwBJsOHQo/j2vM3qzmhU9a/EfCVyrySneNPv2yAnf8T
         /f+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741189864; x=1741794664;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vxVKB76bLrKcTnL2OLZ+yJMwzvP1Wr7E1CqkYn0gh48=;
        b=JxX+eZjEvxex7gnILYKeS98a9Ux5YQ6Np0NQ9OWBh9YVu5HxH+GfVMcthdpBhyRYkf
         ln1GZ0BPuKJz60dCfOnkSV8/FYvONXqylblsfZflLK5GcSZ9C88CnWsQ31wwB7iV8aet
         vS/REwqjGCHvUgOE9eYYiwxaUBGNMjOdjbU89jSo3aIqPdUWI2/B6jH28Afapl8kHmbX
         +LSzq9/XiWnHSK1UfYWfX68SI/whURiCqZDlaSqDh/s3ujjDYnGTuOCOmtTDXI8NxUod
         V05V0hG/Bv9FXimK8V/OkWOtOLdvo5OtgOHJHKsKom9Mp9P5m0aIqufhUWKg/eB+19qz
         QMKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmPmOm4vdoFjAIwGh9iC8Ggkp54aHGtUHmksEP/wNTapHfedWYz0mvwLj15P+SvLWoyIiMoUY/STY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMlvuXuicE7GO2QyhceRWL7TBzkkhmnYwN1rjrWJbhBjCXG14+
	wSEw9FLwZBitJFcJhbVp1J2kQq84CuoP1Xx8unqk1YbNhLWdyndH815NbIZ6ssQ=
X-Gm-Gg: ASbGncvWEnkWCYGJK0krN5SausqtrjfAvRzE3NYaG7Meji7ZAgVOtbRczfX75gwlxfs
	xdSu8ZFbCJO4kbipwKP6RYf1ctFFipnuyvNgU82Z7ezqcFTuYS0Th6zI24uG1jMyDqr9IK5T1AL
	gTCzw5cH/z3AuXAf0uyQFNqf8Bqvt8oRoa57HVwJkQ7/IeyAN23CGdsgRtD7IMXo4ZBfLASyp8b
	7Bb74W8HcppnBNNhuSi//VWfaI8AUZe/SsvY+EBEUb+dLtyRW8iZC+lkrbGyfosIv0MntTS3sU+
	n5tR35QiwhJxwU18Yg+8qtsz3jZ18Ar22nuEq4ZHLfkbvw4Ps2DGlqbKYr31nJ7I
X-Google-Smtp-Source: AGHT+IHKh69jaNhVoQk0+PTameUSMgr6FbV84ntJ4ya5Ipe9aPo8QOqJhhHdKjEvy7a7Wzt6DhcrRg==
X-Received: by 2002:a05:6000:1a86:b0:390:e005:65c4 with SMTP id ffacd0b85a97d-3911f727385mr1121477f8f.3.1741189864104;
        Wed, 05 Mar 2025 07:51:04 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844adfsm21524277f8f.62.2025.03.05.07.51.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 07:51:03 -0800 (PST)
Message-ID: <a95b4c01-9d8c-49eb-8242-93ae411caec0@linaro.org>
Date: Wed, 5 Mar 2025 16:51:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
To: George Moussalem <george.moussalem@outlook.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, kishon@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, kw@linux.com,
 lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org,
 p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org,
 robimarko@gmail.com, vkoul@kernel.org
Cc: quic_srichara@quicinc.com
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E7167E44F92DBC29FF3C9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <DS7PR19MB8883E7167E44F92DBC29FF3C9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_075106_151907_0DDC5014 
X-CRM114-Status: GOOD (  10.41  )
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

On 05/03/2025 14:41, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Nope, that's not a correct chain. Apply it yourself and check results.

> 
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Also not really correct. I did not provide tag to Nitheesh patch. How
the tag was added there? b4?

> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>

> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 

...

> +        reset-names:
> +          items:
> +            - const: pipe # PIPE reset
> +            - const: sleep # Sleep reset
> +            - const: sticky # Core sticky reset
> +            - const: axi_m # AXI master reset
> +            - const: axi_s # AXI slave reset
> +            - const: ahb # AHB reset
> +            - const: axi_m_sticky # AXI master sticky reset
> +            - const: axi_s_sticky # AXI slave sticky reset
> +        interrupts:
> +          minItems: 8
> +        interrupt-names:
> +          minItems: 8

Why is this flexible?

> +          items:
> +            - const: msi0
> +            - const: msi1
> +            - const: msi2
> +            - const: msi3
> +            - const: msi4
> +            - const: msi5
> +            - const: msi6
> +            - const: msi7
> +            - const: global
> +
Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
