Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 313D8CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4cyawt3dzflR4cCDqs1cVcqJWIgyw5xUohHst/guY8=; b=BeMIaQRmb8W507
	Jv933op0er2eRYbBaqK1tyPQSjZaqlQzrEjH1Uvq3z89HlqV3bdP1Kzhd2tklcABB+gyDx7lnmJGQ
	2NuuhfHgivfAzmTZVtYS/eHAIqDX7PKH2MD0uyRfmbpsYokCbdAKjKj14AQDkZHnCkppzdh7Fonn6
	KeWH6PkBHZLoinRSpw9R3aOXj3dfd3quHi9i8mnffqrK5WkWJzIOn9tuegKV9J6JFeWLzaA41X4Di
	1/oKGGtkpybNgGptHzSQyWg//qyi3IRcaKsEr5oOTkSds2txFmJgsLbG6oJxYa1MXO/Rn7mcIXzIp
	QRcrVUh3WGqU0TRos2Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3oK-00000009eOg-3b7z;
	Thu, 04 Sep 2025 06:51:08 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3oB-00000009eMp-1KjT
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:51:00 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-61eaa4f6784so116421a12.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968657; x=1757573457; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1R4w5Pwm4/VSqsKaTMtkwzPkJLiTlbMgt0IEQSjHRvk=;
        b=dEUjMICf4911jyfUpMirn/jbHpAH0xV2vj9zyiqj+IkwR1QpYxdnZO2a1XMVYNqvye
         MWpvn0dU6lDsAuxnKiR0bWESKpCuti4vxJ1FiJxlmmf/3pl49LecODWxmNRJp36Wy2/t
         mT03YVe8Zjeay70S4VN35QKa2gHOURCiVctbsDIHkJq2L9Eu0jRL1JQuuA1450Sr0/iB
         507yImya8nDb2hRDbVOKonmD2juVTbQTJPgBNvx5jSSsqi81/s8Hkr3tpyCgcC/DtUX/
         rK1JK6fU4i7FgHgyuMuf2SZdJUiR7hKK4vB/2SjpPghO9/VD8etk3W4Kzbq2GJQCx1ul
         8biQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968657; x=1757573457;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1R4w5Pwm4/VSqsKaTMtkwzPkJLiTlbMgt0IEQSjHRvk=;
        b=CjOZG+Bzk/pUGHz1j6e0K8RipxQziXj74pduPYvk2uO22NltMgBjVHfID3Uk1itI6F
         P9G4TV6bAVMoB8ADKZQTobQ2M8x8y2h7H6vPa+RU9881T2+Hek26T3nXQLEh5ytxAHNZ
         o9smq/d0hoDQbIaJh0i4h6tfPJpe2TeBNSfMCJn/aqH06zVCVjNPcxGB+fEFqmPrwysS
         dfoZbzPtNf/GFfv91LAJHL2TzhWhMdBOmcVsECVD1o2CH7XGtHn/1ncYRBRLvT1lRdD5
         N3Sh4y/wRi3zQXYZdhpr++NGoKy2XSNN5Bv2gTKKVi1ZM3MHFwdpH15Hv5bp4xREEemL
         mNDg==
X-Forwarded-Encrypted: i=1; AJvYcCVFswkszxl6d0glAISoFirO3qesp5wd756HeuxEoOgkkvQ2SvHTptt9TYrsgEAM2UAjyYnT91HJQLY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxbQOfnF1F+lanrcCPg1WNYr1dMeZ08ZQAEeZKT+u1w0xR/4T42
	gq7LhBqRpRLDP6ykGjOVHo+ruAgXlMtl7sB+muY0SSyuvfZBlNtklw3tLgAdJRq6aFI=
X-Gm-Gg: ASbGncsZF9F/Ye2ZGKMdJanOKRTvwmWf7zbRARunNl70VQ+u1UeNQXx7WkCQKH8PQIV
	P7P9BTZQGR3RIYwv4YrLSMk2F2Rr/B+lTgi91IRQPZAI6mPexR+vp+VG1Z2hax6dG/VoYRflxhB
	5lE2FO61K3HVmCgjTQfGmyBNHBOP7cTK2ap1IUEsv9yfiSS7Tokr9+vo8p7/6ANNKDUQaeYk+JJ
	xnnYrkEJZ8t44wpRMtfJwXpKcKxEHT745GQYdPnLpi112Fql4uPeu1hM6+dJb25yB3XY1YfRQsZ
	LsmSTPj6ew62kw1VLF7lH9PzAvZr0crJ7xNj8zjeNz85lCIZfzBE59ahPgYU1LChEOZIbIgC02J
	9Vd9wQbMR74FbshBbe9gxc9dkyoJUru6+KwporhrsB/MFX8ao1vek9A==
X-Google-Smtp-Source: AGHT+IGs17AwwQqrerD2UI2r/2pbAgOw4DVC25Cyh+9XZUUSvVq5zPYoOFlodqUgo5SO0J0YD9iUDQ==
X-Received: by 2002:a17:907:3cc3:b0:afc:ebfd:c285 with SMTP id a640c23a62f3a-aff0edc4d6cmr1131285866b.1.1756968657436;
        Wed, 03 Sep 2025 23:50:57 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b044703f412sm672795266b.56.2025.09.03.23.50.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 23:50:56 -0700 (PDT)
Message-ID: <04437373-c5a2-43e4-b591-921ce450f3d8@linaro.org>
Date: Thu, 4 Sep 2025 08:50:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235059_381630_5C73B265 
X-CRM114-Status: GOOD (  14.09  )
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

On 03/09/2025 14:37, Abel Vesa wrote:
> On X Elite platform, the eDP PHY uses one more clock called
> refclk. Add it to the schema.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -37,12 +37,15 @@ properties:
>        - description: PLL register block
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: aux
>        - const: cfg_ahb
> +      - const: refclk

Name is: "ref"

>  
>    "#clock-cells":
>      const: 1
> @@ -64,6 +67,29 @@ required:
>    - "#clock-cells"
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,x1e80100-dp-phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3

That's an ABI break, so you need to explain it and mention the impact.
Reason that there is one more clock, but everything was working fine, is
not usually enough.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
