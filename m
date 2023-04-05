Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9EE7C761AF
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 06:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZD/4a0xOUoltIV6qNHlACe4+5z/bwWBx5HoXyTZpcM=; b=rrvGTlTmhj87pg
	0chbMshy8n1VsI8CCwCjgrKW2lB+ywT9zGehJwVQ6X4Slb9bOP6IAACFTyJd1SieOstjYQwJlnVWS
	6TUqkyg8hUKhBOZ1XsHQpvAW/hX7MEZeQt4KuF1s0rOq15d24j7Tdwu2I3WV6tGQzXKRnHmB+68Qz
	g/aTdC6Pyn/yFRAHHLKopoXv5nMGo41kPEQZI7qhozPHTU9uVQ6CffAGlCD5OD8KA4XRcFuUqB9XU
	dqaW5tx+R016vb6WlrXx48m8fAZZAr/rwiLU8hKS9DVrVdnP3XAlO8OrI3c9JofTizgoz/BfrDfE1
	oI3/BmlFZd1gztdXQDoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjx5y-003ZIq-1M;
	Wed, 05 Apr 2023 06:58:14 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjx5v-003ZHQ-10
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 06:58:12 +0000
Received: by mail-ed1-x531.google.com with SMTP id fi11so15118198edb.10
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 23:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680677887;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b0Tz16hU06t/jQvjXVl+O8i4gFgw1SyUWujyjlJaCwE=;
        b=PpeuMEURank6WUN37V4HZv7lRqZapYIrqDhEh/0MAOF0xAM6iGWHE3p8+TaQbwKqqt
         SqBNO0Se7fAt0U4SLk+d1uBfYaIB7XEsMdmz+E32OPu/fPKk+ITy79f3ExewF+X66HYx
         0bjVb1NfXnBvhNXvfOhgltXAl1uRRp3fSKPkxlADVSGEvak1/2cZ4Xfeuw+azyOEegnS
         Fw0rWnlbSXuycNRHp9YYphMyg6Q7i+IajYa+p6r/9ph+dnezsvf2Ewti+4+CzjcH1u11
         BcClMQhgyNnYjKsgPxfhLurW/gyHXJRbgb1ncHIgxQ7sGG3oVfU9WX5OLXhFd30i25Cd
         YyPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680677887;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b0Tz16hU06t/jQvjXVl+O8i4gFgw1SyUWujyjlJaCwE=;
        b=ytwj1XqtgnLtlE5x2zPZYtbcsg6jDStcohWQbtTokT02zA3DMjHO5lX6zkduME+gdT
         MEYDNx1EyLWg9084Jx9GnZW9ils8m0UvI147nOelUmcFv9TvxdvRJa9gW78mcpq2Bdkj
         p8EUfo2Cfji9yDp/acedIocZjkvvu+vyNwjCzV87waYr3x+vgOq1xctVoY5ttrNt8+TQ
         Z3YECPfNikZRSKX+EtuQEs5tYXD/oTFE+1xltZyztCRrn/zFiPbJQHbqLMb5Aylw/xlh
         dum6qoA77xwTQfhQ4m4t3f3UP+2dIXJ2/k7IkmysFniWvaicWvyY20edEuxvzaHHKwTx
         GtoQ==
X-Gm-Message-State: AAQBX9cEVKMUC22tESqdyP0Q+bvcUP8OVE9AiUqgA5YadwbFIdfOlj/N
	ADuRYxI0ugiQV/B1fT1BqP0H9w==
X-Google-Smtp-Source: AKy350ZE3HG/9IWJXBZKKUuUf6EPSfW9JpqSBUDBkoR1mNRrxXUL7GIWWbjCguslGb4ZJPTIDoA3gg==
X-Received: by 2002:a17:906:384a:b0:931:6641:9897 with SMTP id w10-20020a170906384a00b0093166419897mr1759666ejc.44.1680677886921;
        Tue, 04 Apr 2023 23:58:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id c10-20020a170906d18a00b00923f05b2931sm6938769ejz.118.2023.04.04.23.58.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 23:58:06 -0700 (PDT)
Message-ID: <79ddaff0-00a9-36db-2bc0-4c844ffd9528@linaro.org>
Date: Wed, 5 Apr 2023 08:58:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 5/9] dt-bindings: PCI: qcom: Add IPQ9574
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lpieralisi@kernel.org,
 kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, mani@kernel.org,
 p.zabel@pengutronix.de, linus.walleij@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
 quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
 quic_arajkuma@quicinc.com, quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
 <20230404164828.8031-6-quic_devipriy@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404164828.8031-6-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_235811_377903_C3C89C3D 
X-CRM114-Status: GOOD (  13.95  )
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

On 04/04/2023 18:48, Devi Priya wrote:
> Add bindings for PCIe hosts on IPQ9574 platform and allow
> msi-parent property

Missing full stop. Also in your other patches.

> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:
> 	- Updated the commit message and dropped the aggr_noc entries
> 	  as it will be handled via interconnect driver
> 
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index fb32c43dd12d..8657ab65008c 100644
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
> @@ -105,6 +106,8 @@ properties:
>      items:
>        - const: pciephy
>  
> +  msi-parent: true

Isn't this conflicting with Mani's series:
https://lore.kernel.org/all/20230108203340.GA229573-robh@kernel.org/
https://lore.kernel.org/all/20230111123004.21048-1-manivannan.sadhasivam@linaro.org/#t

Although for some reason Mani's patch references non-existing commit and
hunk...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
