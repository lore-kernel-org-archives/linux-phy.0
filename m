Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A77BC64ED6
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 10:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIDH0iQ4grfrLmjM0NELwWEjup/hUC6H9xqIISM/29Y=; b=Re11fOkUCmFibl
	g7sDJi81jra2wsf+4jL310nv0R4jg1UgMjRMuShByYMa5sQWUXMUUN/T+r+aMoGOz62x1LdmfM+m6
	+FTu6FG6r71q2wBLZWNmFzN+qA/Eq3aydzpNO/yHocfj3WRVZvIfJmjUb1RULzfp1NnbnV9nHhwTY
	KUMWHOu8cAqgFhcuIZvwKF+/Xc/emfDQZXtNLylwAkrqPDFrCCtfRIsK/mfi3fmrctEVQJbkFyIiF
	n5i7jPlEohcmCdWSp5yNg0IUi+KVBZwCq7CBRvGOml0OP3zNq6FoLlxiay2kal6d4jMPYl8MFEugy
	LXnr+hXdkfY3knarKAKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbWB-009ZO6-GC; Thu, 16 Feb 2023 10:29:35 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbW8-009ZLz-Cw
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 10:29:33 +0000
Received: by mail-ej1-x62a.google.com with SMTP id f21so3971092ejq.8
        for <linux-phy@lists.infradead.org>; Thu, 16 Feb 2023 02:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a9siJVZPOFvTKH6qbA3a38sGnlXPDe1LlTNA0o2LihA=;
        b=AOvDsJeMQqZAscWrOwd++yaSB5pWNZLC1DGXNJLb/EmImWJhlUMZh/QkrYMOlg3y/I
         oEXtb+SGVQnabDf8ii3/Tn7mSwJ3zPd0kR1SLHubef7tJuVLg0e3tcxfaY0JiQ4Ipy3H
         uakQnIYX1URDOmbeigKL/+zcyZYnovZNVdeMUVr2oMBRDjuwEqSHOoAdUr1EkIEdTK0C
         kJ7N3abgfqkV/8QjHokp1cHgPeOE2uRrEB5DcrmKkZ6kFO1zmpLU74ch+PrPiBXh8PlH
         qqMHG7SNU0S+sHMEfAmRlKVYLVk0wZsqWSDDGxaRgfcAD4Hz/k1coir4sAMlAOX0atXN
         Ry0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a9siJVZPOFvTKH6qbA3a38sGnlXPDe1LlTNA0o2LihA=;
        b=itNHokOQNkqxMrOpmd0JV/xvWqnJ3iDVEZiWtRIX3CdxZfN2l6JkjVZ1RXKYa9xFmq
         Dkvtr9Bopwfpn0g36mzTR26LU4M5L9zwt+ywwCjny05/wnPZjCVw9G+jhVlmZGSyjTgR
         x1SwkKpSIhCIi28emkNSLt8Q43KILS0UgCgwOu+I2Jtcnti809BmHVYmHXH6dYzyYPzI
         MKLS8c9jwj+g01+Pa0TE1pKR2rpE8WJK4KKrwELwW5ZeDgiDHpSPH+1dqAU1oV/UTwvI
         AjJ6ocuXh87YS539sE5DAH90N9fRqllWaxWEKkp8i/ZRojx9ev4POMaMb5LA42I/nTGv
         2Lcw==
X-Gm-Message-State: AO0yUKVaykrkDS/hX3LheIiWH7aEwO2E/U21BQtJkUqkscPISr2sT2yk
	Hq1z/eXVzPrrOY4U+Bg0FPxdwA==
X-Google-Smtp-Source: AK7set8Py/urVAnDtSVqOAA45n+CZn4wecDP3p27sIw8OB/YpmZIlVwbIdd7aUzHO+JP4miZ6M97dQ==
X-Received: by 2002:a17:906:9f25:b0:8b1:2eef:154c with SMTP id fy37-20020a1709069f2500b008b12eef154cmr1592559ejc.0.1676543368620;
        Thu, 16 Feb 2023 02:29:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id lf18-20020a170906ae5200b008af2b5cc1a2sm630463ejb.69.2023.02.16.02.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:29:28 -0800 (PST)
Message-ID: <f883e857-1281-ceae-74ac-72a1f07d6413@linaro.org>
Date: Thu, 16 Feb 2023 11:29:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lpieralisi@kernel.org,
 kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, mani@kernel.org,
 p.zabel@pengutronix.de, svarbanov@mm-sol.com, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
 quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
 quic_arajkuma@quicinc.com, quic_anusha@quicinc.com
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230214164135.17039-2-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_022932_494265_06559715 
X-CRM114-Status: GOOD (  11.94  )
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

On 14/02/2023 17:41, Devi Priya wrote:
> Document the compatible for IPQ9574
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 72 ++++++++++++++++++-
>  1 file changed, 70 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 872817d6d2bd..dabdf2684e2d 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -26,6 +26,7 @@ properties:
>            - qcom,pcie-ipq8064-v2
>            - qcom,pcie-ipq8074
>            - qcom,pcie-ipq8074-gen3
> +          - qcom,pcie-ipq9574
>            - qcom,pcie-msm8996
>            - qcom,pcie-qcs404
>            - qcom,pcie-sa8540p
> @@ -44,11 +45,11 @@ properties:
>  
>    reg:
>      minItems: 4
> -    maxItems: 5
> +    maxItems: 6
>  
>    reg-names:
>      minItems: 4
> -    maxItems: 5
> +    maxItems: 6
>  
>    interrupts:
>      minItems: 1
> @@ -105,6 +106,8 @@ properties:
>      items:
>        - const: pciephy
>  
> +  msi-parent: true
> +
>    power-domains:
>      maxItems: 1
>  
> @@ -173,6 +176,27 @@ allOf:
>              - const: parf # Qualcomm specific registers
>              - const: config # PCIe configuration space
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-ipq9574
> +    then:
> +      properties:
> +        reg:
> +          minItems: 5
> +          maxItems: 6
> +        reg-names:
> +          minItems: 5
> +          items:
> +            - const: dbi # DesignWare PCIe registers
> +            - const: elbi # External local bus interface registers
> +            - const: atu # ATU address space
> +            - const: parf # Qualcomm specific registers
> +            - const: config # PCIe configuration space
> +            - const: aggr_noc #PCIe aggr_noc

Why last one is optional? I would assume device either has it or has not.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
