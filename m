Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F06EC27C76
	for <linux-phy@archiver.kernel.org>; Sun, 22 Jan 2023 14:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvxpyhp2mhQK5W6bGy/nlb9Ytz3q4MOjfhdc2C7+Z6A=; b=bwEbq5iXFOMsJJ
	UyciJHSjCr+oacmrqlVVg7Cisk2eQiprcf9pSyCoM0MA5erPWw5F/yMAoXywmLg7w+Q9PEJ4uG7RO
	FkSc6ezhHK6e5xTRQ1lwxDVwd0Dc0Ks+zGh+kC03vR/gO0vA252VSG7XPUYWA2k+ZMfDn+ZUoYIyt
	6gC7dwYj4j7L3Sof1C+cGUce9GfjqAy5mr7a1CL7LMLaN2KZlfZ1b/m+EypUcxwVq4MgZ0kIUsAnL
	HucgkZB2KbII+bA/jIdFx3aDN9WZwhGUarbOj5e6zHHHRW0qGz4Q9SQFrbIFQ2oRWLtJ7eFpo01sJ
	6LwMNtO3HnUBn/cRoLYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJb3t-00FPTe-M9; Sun, 22 Jan 2023 14:11:09 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJb3r-00FPRz-9G
	for linux-phy@lists.infradead.org; Sun, 22 Jan 2023 14:11:08 +0000
Received: by mail-wm1-x32e.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so8893313wmb.2
        for <linux-phy@lists.infradead.org>; Sun, 22 Jan 2023 06:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AZRXyEWbQpFjtg2DB58n/2kfQoLivtArMtPHHmMjBIw=;
        b=psPxgqGBE3X6rF+vKXfc90XELktrxm99+p7puFRyKXyvgJOEM7cWOJAe9c8MHVOV6R
         WJenH8vfT/zVfX6uAI5TXufWIIDSVHawLUB6oYhP9YKxzeO1YOKBkFzPggepvoZU3qw7
         g3W1PPKldLW1ev8Mq1Spw8NdEzYVwYbhlcVEoE8CBZQ/oNthZ//XhZugJ3BWvDfMoKG4
         QgcSe4wDY0xzbLHKCipclV272WMrAWjzoC6lBOCKM+WxXib6/8qOYCk9wcx9u9M08zak
         nozizZGLUwRcQtvxi+hDPbgw6/kh2QUJnvaY5Z85kvcDOEyT2WhT/IYCLKw57NYOqicD
         pH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AZRXyEWbQpFjtg2DB58n/2kfQoLivtArMtPHHmMjBIw=;
        b=QoE+vvAT1aRAC6LO/VA4LHYyfREo+nx4ejXiZ3I5VxiLM2Ekc9+HHnVJjLt6Bxhynx
         YPKzxhpzHQoZlLiJZsUIPSkpy5mID8IvA1dHd3awXiBd9eQ/AkgSCTQY3odkQ2Lv6xgH
         9BP5NKnyLBjCTMWc0dttVHczZ1QW/L0xchLKkSCwrXuvYpkk4Ru1P3Ij0yUoK11BWU7e
         jpvZ9gy+NB9w1+5JekBQvWQ76/9xZmx8QdBsfea1yLmnfZmCzx6hS3OG7kPA8EjtuwEf
         qmzrws6tmRMikfnXCEM5lQ+zdazRVubJwfKXkr3fb6C5ChLc0Nmn2p7mTRJOPi1+8Qpm
         DNvQ==
X-Gm-Message-State: AFqh2krqclCQJRxamTv9D8fVkKKRk1dPSjlhWPaWE3R4BY4NltDqmnqT
	KEQqAX/uMfGPNCl1EKvi1jQncA==
X-Google-Smtp-Source: AMrXdXuPwv8v/1rV46mJhP+RM46Rt+X2nwPmAaFNL2bvKuSE7jTpSNYsqqad9bPQYmUdop/7BzGARg==
X-Received: by 2002:a05:600c:4f56:b0:3db:1f68:28f with SMTP id m22-20020a05600c4f5600b003db1f68028fmr12804784wmq.24.1674396661774;
        Sun, 22 Jan 2023 06:11:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f22-20020a1cc916000000b003d35acb0fd7sm8138526wmb.34.2023.01.22.06.10.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 06:11:01 -0800 (PST)
Message-ID: <7af21247-a44e-cb46-7461-204fa6b4fcab@linaro.org>
Date: Sun, 22 Jan 2023 15:10:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-10-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119140453.3942340-10-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_061107_374572_769A4596 
X-CRM114-Status: GOOD (  19.92  )
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

On 19/01/2023 15:04, Abel Vesa wrote:
> Add the SM8550 platform to the binding.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v3 of this patchset is:
> https://lore.kernel.org/all/20230119112453.3393911-1-abel.vesa@linaro.org/
> 
> Changes since v3:
>  * renamed noc_aggr to noc_aggr_4, as found in the driver
> 
> Changes since v2:
>  * dropped the pipe from clock-names
>  * removed the pcie instance number from aggre clock-names comment
>  * renamed aggre clock-names to noc_aggr
>  * dropped the _pcie infix from cnoc_pcie_sf_axi
>  * renamed pcie_1_link_down_reset to simply link_down
>  * added enable-gpios back, since pcie1 node will use it
> 
> Changes since v1:
>  * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
>  * dropped enable-gpios property
>  * dropped interconnects related properties, the power-domains
>  * properties
>    and resets related properties the sm8550 specific allOf:if:then
>  * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
>    allOf:if:then clock-names array and decreased the minItems and
>    maxItems for clocks property accordingly
>  * added "minItems: 1" to interconnects, since sm8550 pcie uses just
>  * one,
>    same for interconnect-names
> 
> 
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index a5859bb3dc28..58f926666332 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -34,6 +34,7 @@ properties:
>        - qcom,pcie-sm8250
>        - qcom,pcie-sm8450-pcie0
>        - qcom,pcie-sm8450-pcie1
> +      - qcom,pcie-sm8550
>        - qcom,pcie-ipq6018
>  
>    reg:
> @@ -65,9 +66,11 @@ properties:
>    dma-coherent: true
>  
>    interconnects:
> +    minItems: 1
>      maxItems: 2
>  

I don't see my concerns from v3 answered.

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
