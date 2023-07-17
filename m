Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60EE6EB64DC
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 07:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvZp94hxDlysyaWXCRXAUqVd5n9I4Z0by4PQ13QlplA=; b=SQOFAy9Oi0Twqd
	pXnPBhUykqFvBdjj4Ssuivf+/B+xKalt6AtzEAyc3HABxrhLcwBfb0kOqqOtFhfZg/RADGLK2SmPU
	6HtNAgFWyO9aK1dO1+s2jRVCDsGxAlarEEjCBnoAd+vwJ9gop0sat2eOA+XxK7waR2KW4/LEY1FHz
	owGVmusfxSKHiwWe5i364YSq8N7Z7K15V+D1C4bj5sXs5r17pBtvqol50cRHulhXdbFkZqNVhPfke
	dJhUlo54F0qo8FCZWtVlbvuDdaAt3SKupsFS3fAViCXGilxlDfbHf4voQ/ClsH+wPktoO49fVc7aB
	6OQeJDJAYIM0eAkI7Kig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIbr-003J1J-1Y;
	Mon, 17 Jul 2023 07:25:31 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIbh-003Iwc-1d
	for linux-phy@lists.infradead.org;
	Mon, 17 Jul 2023 07:25:26 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99313a34b2dso504372866b.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Jul 2023 00:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689578718; x=1692170718;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qs4HLlO4LlybLe7Ah8QKFBkS3q2XJN402rj3Q8OPMEk=;
        b=xfIJggQILuXOIT+qRFvFEx7EeufNsrNzYjtck6y8JtPZ33lKP1JAe6KxnjHPBNRMhR
         XQmYcAQgQaXXavpmqLlpWcgklGnAntEqbxpScnQwFMzlOyfXZLbOWa3qN8GfUAaTtx4O
         bgsWVNRulYggbDsTqq/i3tbpPZroumqSEi8nZmiPPqK9XX0HRX0S6m8puHbJqhF7XkVQ
         n6mA3T/rOamv1a1KNShWgJ5jEuRZJ4BxVd9wQ2Fs2goDUIyN1l8gRv3wFRD7ItBFUjrI
         q0dJD+PvBT9YaeKX/8mU1tyolE70/LypiQRuG/mEas86+T1OApPOybLu0e4drrMYZdpz
         vRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689578718; x=1692170718;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qs4HLlO4LlybLe7Ah8QKFBkS3q2XJN402rj3Q8OPMEk=;
        b=Medp5rmE3WFUUSNLCn5ClzdKO/SdTGKcJk6YmbQmFZJ4xdfYVLS3b3ZYewXW7A2SQP
         UOJIjCfXyAmtQO/7w/SFlXecNCcmbrdPhlk3LXogMEHboRic/ngObgiWjgl731NIjPPz
         1JKMfHQ8uggVNOEmMn0VEz6lM4smfS0KoDstZvgYwH5lc6AD5uOSunvPdF4v2rrwjOjG
         aipLtFsGiP/jVKVBb5DuklIN+cidGgBTp1I/k1v0vVPbYUmHv3hLYSYlldkpw7SPqYDH
         diM5ESw0Qi09MXp1jDlRa5/RDx9FzEDA7Chh33faiZ3cf4YOV75SfHllmH33cnNVRLhK
         hKfw==
X-Gm-Message-State: ABy/qLarVKyIJYeGe/9sCaRlERSaFfGf/HHXxtOmvk4A0XNVlEl9AhqB
	FnZZZWgOotz71QjMz1OY29IlBw==
X-Google-Smtp-Source: APBJJlFtMxvLm/eKNB8QByqh/kv+BMVjGXQbcUFa9xlTwZ0reAw5LaF5nWU9p8oXGxISfw4wO7C8Ng==
X-Received: by 2002:a17:907:8f17:b0:98d:d26c:e142 with SMTP id wg23-20020a1709078f1700b0098dd26ce142mr9536118ejc.46.1689578717832;
        Mon, 17 Jul 2023 00:25:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f21-20020a1709064dd500b0098951bb4dc3sm8770472ejw.184.2023.07.17.00.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 00:25:17 -0700 (PDT)
Message-ID: <132e9514-7eb9-8915-6130-5bf656c1aaac@linaro.org>
Date: Mon, 17 Jul 2023 09:25:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe
 PHY
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1689311319-22054-1-git-send-email-quic_msarkar@quicinc.com>
 <1689311319-22054-3-git-send-email-quic_msarkar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689311319-22054-3-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_002524_229108_F59DA3EC 
X-CRM114-Status: GOOD (  13.09  )
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

On 14/07/2023 07:08, Mrinmay Sarkar wrote:
> Add devicetree YAML binding for Qualcomm QMP PCIe PHY
> for SA8775p platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index a0407fc..ca55ed9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -16,6 +16,8 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +      - qcom,sa8775p-qmp-gen4x4-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> @@ -30,7 +32,7 @@ properties:
>  
>    clocks:
>      minItems: 5
> -    maxItems: 6
> +    maxItems: 7
>  
>    clock-names:
>      minItems: 5
> @@ -41,6 +43,7 @@ properties:
>        - const: rchng
>        - const: pipe
>        - const: pipediv2
> +      - const: phy_aux
>  
>    power-domains:
>      maxItems: 1
> @@ -141,6 +144,20 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 7
> +        clock-names:
> +          minItems: 7
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:

This probably works but is not obvious and easy to read. You have here
if:then:else: block, so else applies to your variant. Change all these
if clauses for clocks into separate clauses per matching variant
(if:then: ... if:then:... if:then:...)

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
