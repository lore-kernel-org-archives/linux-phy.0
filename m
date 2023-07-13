Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38857EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jul 2023 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GF0b2alqhXuLsnFVtq890RJe/GTceAiHtTVHli1X1a4=; b=NwgPglLZr8mAMk
	beBgTN8sxMN82bWxIxzEyOu6thN/8bx5UpqYYZY2DX09Z4qoQVWTyb9bcLJghSn2rvEsECIjN88jl
	HyO9gqvkTfU0HA+ZUai29/7Ipcadidi850+AEYtadXQmgwRUZruMZOyPpetAzhSF2c98AlF/8e101
	HPDOkukRvHfN+Pz+G9L9qXwT4FZrDcCr5TqcSSeUdcypzYTfaAqouMfnpjYaXZde3goR+Wo71AX6V
	qDeBj3fga5MCcK+x0MvIqNbGMKr8vd/M2PdLHBbPfpPUnG5jpqPl7LFl/je8Uxs7FguEAY3Rf1f8x
	tln6YQ+j+gqcmme92/NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJud7-00367W-2k;
	Thu, 13 Jul 2023 11:37:05 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJud4-00365o-1J
	for linux-phy@lists.infradead.org;
	Thu, 13 Jul 2023 11:37:03 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so4965065e9.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Jul 2023 04:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689248218; x=1691840218;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yg3+ltae9txCQHkNZ8ew/vDeWxnQVlh8GZjwxVSzsmE=;
        b=oR6Qq4tUXYxURj2kKLDigQN4hSxPreEHDACih7z6ejaLWNT/QElG/D79Mrsv/vN8Ny
         0r+3bdojlQyIJB3LRXSzcPJKDF/aM5sJ+YSL+TCEAZEeDugGMvAluBLARlsquemP2c7G
         z2SwQCcCmLjwvmDNrjwkFlcYyqvL+34h6CqznBAWjXdr7mP7WRdJzviKLXhITRKu9Ttb
         ZvZopjmcheoHuPhyIIFLJJ+ajtFLN0a1GN6ZnoWFid9e9mYEpsjnYpLALtsm59WrMUpi
         R3PaSl623Ya0ELHJdgSaXgq5g0X+0yaFSYvq139oVeo2geSlyFbXt84190zfLMR9P+wr
         lSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689248218; x=1691840218;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yg3+ltae9txCQHkNZ8ew/vDeWxnQVlh8GZjwxVSzsmE=;
        b=OUNueNKETP7ERLngI4BC79sv468BhD+HyxI7+Y0gRrOhTpJ0TmXrkYDGfLfbfRoBHW
         H00WHlps3iaMmi9tNrA4ZyDhlvcbffhYzYKX7aIaNDYhIwDJ43LM9SfdwhJnvsH33a9m
         z+4qXdbz11c7WJ1xcY7R8wXV0ZFFkfCprkWwLNuSOWESvTJKt0zm9QVoe1Om3B53nv6U
         NemCJGYeCTIkh+rwJUoMl8GaubGkozm30PTNW/9rQSYRVI4TFO0PwcO5UzupzBlNTJYg
         HgG2H3P6457vZRoMFfYWTF/ZAN/icZhihJZ9WJk1NYXhIci/g3dX88m/r7TNgRh5FXDy
         DD8Q==
X-Gm-Message-State: ABy/qLYLjPYNyVvLS5rtsyn2P8n09TEPMlrA24A5G99CecZphsm34Fd3
	qcVHuCa1FW2sidaldCCG1qAUDQ==
X-Google-Smtp-Source: APBJJlF8GdZS3ShkisOw1onsgke22P9SX9aKJjOQWKfqavy8b9fmDTouU4NBJmZYeT9YO95+hbJ4Tw==
X-Received: by 2002:a05:600c:2945:b0:3fb:739d:27b2 with SMTP id n5-20020a05600c294500b003fb739d27b2mr1180111wmd.8.1689248218586;
        Thu, 13 Jul 2023 04:36:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id 16-20020a05600c029000b003fc04d13242sm15051331wmk.0.2023.07.13.04.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 04:36:57 -0700 (PDT)
Message-ID: <fb7e557c-c41d-26b9-9018-75c179483314@linaro.org>
Date: Thu, 13 Jul 2023 13:36:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com,
 quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1689065318.git.quic_varada@quicinc.com>
 <77fe66271044a18871e1dfb80bbb481617197d18.1689065318.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <77fe66271044a18871e1dfb80bbb481617197d18.1689065318.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_043702_452296_EF0D69D4 
X-CRM114-Status: GOOD (  13.82  )
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

On 11/07/2023 10:51, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3:
> 	Incorporate review comments. Will bring in ipq5018 compatible
> 	string while posting ipq5018 usb patchset.
> 
> v1:
> 	Rename qcom,m31.yaml -> qcom,ipq5332-usb-hsphy.yaml
> 	Drop default binding "m31,usb-hsphy"
> 	Add clock
> 	Remove 'oneOf' from compatible
> 	Remove 'qscratch' region from register space as it is not needed
> 	Remove reset-names
> 	Fix the example definition
> ---
>  .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 49 ++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> new file mode 100644
> index 0000000..2cfdd73
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: M31 (https://www.m31tech.com) USB PHY
> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.org>

I was wondering why I keep receiving delays/bounces for my emails in
this thread... and here we have. Please correct your email.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
