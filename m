Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02ACFEB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 07:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcdUs5oEukrkkPmzNvyR0wyBwLJrNWu34tXa5rTeW5s=; b=bKYlgxa3flv0E2
	/rejoN3CqOnFWDaFG+ojFLBg2SSvnvenm5SCAoSOqOABmCkCRkn2R9ifcb1QXd+qaowA1tKZaaPj3
	m1y7R4gS+kwBrIrCQDy0JwZwvHNaM5A71njHa+C+QfWRz/GwH08vo8TFGVaRnNG+ROAJTNpnuT0dz
	jJX0JczeNvah95dvbtlinAz9XEOb7aiWRLt6MGEgeysjaeL7HYW2qWdQ39Z9tqqo+RP6L3CL/myFi
	v69wMuBYi6hniqkDncoLLf9/VQJ20r6veLOJxRknZ4aY5znIGdOkqXDseTx6FiE764U63AgvxYMIs
	ghGod4dQLJTUeovwvtfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Kt3-00Aeu4-27;
	Wed, 14 Jun 2023 07:25:49 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Kt0-00AesZ-0F
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 07:25:47 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51873d9a75dso3080581a12.1
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 00:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686727544; x=1689319544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZYUp6f+gg9nccS7jAmhavJJDmvTnWdlOMMShB2IfyLM=;
        b=f+YcEOcsWR8xL+5nkBdWG/XfQuwyydCnwar9FyE0t3Il1q/TbBYviUimty8SCA+6JI
         OVAHeuvn5JYITI7W9hGiUU7vMeA0ISeoGPV0GNyi9lbrYkZ/vU9OKmTFoGEG1EaL80EF
         WoVjyhNosru4+9vZSX4c1N0vtx2IB2ySXYBz2+3wBy7u5yU53WuKY2tKmVQuJbfPkb6V
         ex3iX/Qm0KBiyzrxddSfGNS3SqjqzEj+Dyw+rK8fdfBGTds/xOsFw2TDpwSP/IS5ZAg6
         +eWVXA0FHOT9SHrACDTibQjZ80tQRKeJNAW01TYc+zt+xoOxBvHkKneW41gn8SX8Pj95
         V+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727544; x=1689319544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZYUp6f+gg9nccS7jAmhavJJDmvTnWdlOMMShB2IfyLM=;
        b=FAIwuUHhI4coW/8Q39sJ1OZ9QJqga7oWhBrfWyBIdYEWo6cTilezPZYwcCk0Ph1yKV
         4jEzir78WgYpKSfxXOASBDbsN9j0k5jcHXtIEIGKkN6SspeIKDuaaFJzvpsMSdn+SWQT
         +ZZtnNp7nhPg7FOTyxxYDdrSfZ3cOnXsTCLWRJa3/eNzJgaAvm/gBGnayQ4GuHAWR+Un
         rMWQJWp/4XyIo8gCKcahNjwNXfoB72flw3wQATpSLRxuYRy21KrgAYubPzsPN0bDhRXc
         V0DJLKx2kAsqCkHy4gg6dpS6FI8/huxRW2avYBLJ3EXueDOE/0Cc3A3FfU9O64l5UCr7
         4nwg==
X-Gm-Message-State: AC+VfDymk+2SHgYHMQozxGq425EBiyBOZ90QobVv/gUOno1uFl+0orKx
	x3jV0GC7kt8hRVfBw1QC1FqKiA==
X-Google-Smtp-Source: ACHHUZ7mP70TiHTncN1MepuY33PcI4oQtT42XBiiH2VcreWZ2uAPSk4CyOcrDDgSGNYQSZjYSpcrNQ==
X-Received: by 2002:a05:6402:180f:b0:513:fa61:397a with SMTP id g15-20020a056402180f00b00513fa61397amr816136edy.12.1686727544263;
        Wed, 14 Jun 2023 00:25:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b24-20020a056402139800b0051827a12b47sm5256406edv.15.2023.06.14.00.25.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:25:43 -0700 (PDT)
Message-ID: <712b2650-f0c1-088a-612c-ef6d6bcc1eb0@linaro.org>
Date: Wed, 14 Jun 2023 09:25:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 20/26] dt-bindings: net: qcom,ethqos: add description for
 sa8775p
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-21-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612092355.87937-21-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_002546_116938_FE035EB0 
X-CRM114-Status: GOOD (  17.73  )
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

On 12/06/2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the compatible for the MAC controller on sa8775p platforms. This MAC
> works with a single interrupt so add minItems to the interrupts property.
> The fourth clock's name is different here so change it. Enable relevant
> PHY properties.
> 

I think the patch should be squashed with previous. Adding compatible to
common snps,dwmac binding does not make sense on its own. It makes sense
with adding compatible here.

> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../devicetree/bindings/net/qcom,ethqos.yaml       | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> index 60a38044fb19..b20847c275ce 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> @@ -20,6 +20,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,qcs404-ethqos
> +      - qcom,sa8775p-ethqos
>        - qcom,sc8280xp-ethqos
>        - qcom,sm8150-ethqos
>  
> @@ -32,11 +33,13 @@ properties:
>        - const: rgmii
>  
>    interrupts:
> +    minItems: 1
>      items:
>        - description: Combined signal for various interrupt events
>        - description: The interrupt that occurs when Rx exits the LPI state
>  
>    interrupt-names:
> +    minItems: 1
>      items:
>        - const: macirq
>        - const: eth_lpi
> @@ -49,11 +52,20 @@ properties:
>        - const: stmmaceth
>        - const: pclk
>        - const: ptp_ref
> -      - const: rgmii
> +      - enum:
> +          - rgmii
> +          - phyaux
>  
>    iommus:
>      maxItems: 1
>  
> +  phys: true
> +
> +  phy-supply: true

Isn't this property of the phy?

> +
> +  phy-names:
> +    const: serdes

Keep the phy-names after phys.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
