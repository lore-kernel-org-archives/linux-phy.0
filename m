Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CDA8EB64DC
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 06:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=089Q+EImY2wwpm5YuPRXaQmZfX9vnOnEXVFLX6OGdM0=; b=UAZVED+lKvJipk
	6nfpaMee6Uf4A0O+7Zx09mwzmSzhZvi04flkCtH/+EIOk9fRiN/aZIz3cYXA6+MtArWOje3qYpcRp
	MDkLVy4O9seUm/A4X4araoIzu5zR4iKLB+BZSKnZ4rFU4mNrFxu5DwoO/hnBjzYfjIdAOCHGkAjTD
	fD7K1JU0sPbWZAEUm9++3RLrGWTqaDFOe/jeuvBtYQn3EVnYjD56CpF7Po/BY5ljvNSJ079E5mjt5
	OWVerwievZyZiXyPApAmBzX5B3CWJIiyz7zgA7QMEt2YMH1iwGBVVixjmQC2titqy7PcIZBy91bhk
	iuoA0G0F3UQ7hjLdPCvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIaW-000f0C-0V;
	Thu, 06 Jul 2023 06:35:36 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHIaU-000ezR-0d
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 06:35:35 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51e28b299adso518798a12.2
        for <linux-phy@lists.infradead.org>; Wed, 05 Jul 2023 23:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688625330; x=1691217330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Fcrx7Yb80pNkp2uhYzBT6R9rq95NqVLKKCQ4kXAxd0=;
        b=jmW5yDabP4Ok8Fr/e5sXXdC2reJet2oCtHDLIyzUXl3RZi/+e8lR3yq1hjaq2ucTd6
         on95I68Rzc8dD/EKyjP0KklY7Mzf+7LFof+c8R/R4P1iBwS/IEDigfTtU7+0yAWpFV+A
         ZlQN3IbSxQnLLVuFHLOkROx2k+m3HxVlKpkcu0yjxDkW/9K5JrmIhf/38vBuH3xOoTI9
         2iZFd29zoiaETJfADJ0bPy8DqF3T2BLt32ioCIOUBatYqruMmT72VvI7KhDnRWlJ5Jno
         3QnxCNTEXvQpck3Cf9H+87dBECpfJE876XuYTsTxjv5/waJ7PzZQp/1THCKWcW7EnsZS
         vzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688625330; x=1691217330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Fcrx7Yb80pNkp2uhYzBT6R9rq95NqVLKKCQ4kXAxd0=;
        b=WsY23X1iu8QoMNUANbIX1OHlQ5OgKH3BrWBK39/MoRraz8M8qeD/4hAVGkugvFf0Ce
         9DVr6H6fUXaTWFtYjNjE0amgcDLewQUT9kPQTQOhq50JwasVNRa23ZOmkM0GcFc50RRS
         Mi1L5IHWVH+cOh9ZFIzoKLDcDcn3uYStVnlWJzs1RpW9yC0mZnnnoOG64tDKDIY8zTRC
         fmrj+3+vVefgqAbfXmRyDOIjGyYtGUPS+ffWH/FQCCmvg2H5z5CNnLVtFuNg9uUhXDX/
         4c8KH972BrSl8STGTOJxAw+MTrHw9BFQk8UULTTmIBEUvlZ+frHYmKBfJl4WhaLQRpjB
         L1yQ==
X-Gm-Message-State: ABy/qLafLvM8wJh8yDHib+K9iB5/SEt88G18FDJgAJUiuY4ED09vPGb+
	Y9Jbzkah7mYyzJQGQsBqnXoNRg==
X-Google-Smtp-Source: APBJJlEwPvUUd4Sh/nUSdZr5t/lb9kULYOIyiN8QYiEi0U71/oBuWIa+ml3DArx10T5OowOhav02nA==
X-Received: by 2002:a17:906:5358:b0:98e:886:f27f with SMTP id j24-20020a170906535800b0098e0886f27fmr786493ejo.20.1688625330457;
        Wed, 05 Jul 2023 23:35:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id gf3-20020a170906e20300b00992665694f7sm383818ejb.107.2023.07.05.23.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:35:29 -0700 (PDT)
Message-ID: <6203ab10-c9b2-3ea8-a18e-dfd2905ec83f@linaro.org>
Date: Thu, 6 Jul 2023 08:35:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 2/6] dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe
 PHY
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1688545032-17748-3-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_233534_305392_F483B311 
X-CRM114-Status: GOOD (  14.17  )
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

On 05/07/2023 10:17, Mrinmay Sarkar wrote:
> Add devicetree YAML binding for Qualcomm QMP PCIe PHY
> for SA8775p platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index a0407fc79563..9309066bfcee 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -23,6 +23,8 @@ properties:
>        - qcom,sm8350-qmp-gen3x1-pcie-phy
>        - qcom,sm8550-qmp-gen3x2-pcie-phy
>        - qcom,sm8550-qmp-gen4x2-pcie-phy
> +      - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +      - qcom,sa8775p-qmp-gen4x4-pcie-phy
>  
>    reg:
>      minItems: 1
> @@ -30,7 +32,7 @@ properties:
>  
>    clocks:
>      minItems: 5
> -    maxItems: 6
> +    maxItems: 7
>  
>    clock-names:
>      minItems: 5
> @@ -39,6 +41,7 @@ properties:
>        - const: cfg_ahb
>        - const: ref
>        - const: rchng
> +      - const: phy_aux

Nope, you didn't test, did you? You cannot just add entries in the
middle - you break all the boards.

Plus, you clearly missed to update the if:else and all this won't work.
Just test the bindings before sending them.

>        - const: pipe
>        - const: pipediv2
>  
> @@ -136,6 +139,20 @@ allOf:
>          clock-names:
>            minItems: 6

This is not valid anymore.

>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 7
> +        clock-names:
> +          maxItems: 7

Keep the same approach for clocks and clock-names. Not min here, max there.

> +
>    - if:
>        properties:
>          compatible:

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
