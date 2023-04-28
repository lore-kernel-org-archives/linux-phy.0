Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8DBC77B60
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 13:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdvljkH1PY0tKy1y2/1u+gq2+t88KwhyJeLr0Rouz6s=; b=4PW2kWgU7ouCsY
	Kh4o0aS08mZyPptA4T0enUaanRI7eCJB5BDVWZSpHvBHDrcpaPMUS1z0+RugNDZ9KCQSpOYLF97EI
	ldwa3W7lvfe1G2CKHWHfady9ZwyULc+KqWtQDZxc7/BmMMjA0zCwez9+YyyeMChQothiCngJBF5ji
	7DS44N6p+APqcA4iwkD6wVd8xWGBAnpNmjPUGLB/aFAZPqY6FQSG7ELW62vQ/69wH3rpIEoOjxyR6
	FfaWNzDITsQDio+CpK05eDPpyDS5oabGL7T8isJAFpgI23APLuDtu6Vuvfziyc97VAjRV5hKzYTyA
	FKsnmc2UYjPYEbZq7ghQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psO82-00AOpX-0e;
	Fri, 28 Apr 2023 13:27:14 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psO7y-00AOl6-0d
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 13:27:11 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f178da219bso98264605e9.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Apr 2023 06:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682688426; x=1685280426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gkJoG1LPHO8i6Q8wWiW6Rl5rdW7E3T2NGYe6a0Rghqs=;
        b=ZdfR/e7VVW6XiNkmL3LmeM9+R4kj8X362H1qodHBMdg+uyiTshG0jpKr6rOibBTLeu
         DA6AQrMAhDORd2ChFpbJX2cLTnbyPu/BHIGoBE75Na1jUzq6e5AC0V+UIGD++SG/sNXJ
         mGDaZ8yLslXk5mssqHuBP36BhSqhv+mPHsLS0BPVVZ4BED7q8ohax35mMWz6I9VPGZ3t
         OPOLiuu8l7Yaw62vcREt7DtwhNkiHcKre57Q5mvg4Esp9IK6s6lMW30S6s6PLj05uT4H
         e+sgnqYRSRKx4U2/nHvg3skEwxeqVxsEjqS6KT74CuzPHkxQDm2TxYR1vuAwCaLefcer
         MIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688426; x=1685280426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gkJoG1LPHO8i6Q8wWiW6Rl5rdW7E3T2NGYe6a0Rghqs=;
        b=W6Pn9RhxL8JMVnm8/3H8h3AMWd7nvL292UiPsAwzb8nvIyJ373Low5c5G3DacfmUBa
         imX/QTkXWMNzWuhAPVWDm9UIL/zozBjSbplAMTcfhAsyMQtEU7LX2OKdpKPvh/GrH1Bn
         RvD2B7ldrLmULYSKW+/DJ1tsqfo3VIZZpgJzay6JhHthcJKQma1qiyMhAREGMhSLjIta
         +9HTOhiEkwx7wh+nG9Zm7BGYt249GGTJKr6CEnpDI5jgoxolIGRsNyQ05DpD6hOalPko
         0EsSB9qG1VvEkJslpcEuA0qvW3sS8GQOaXFKbnTI9NOwlp9pbLpCMW2IuD2KR7xdTlzm
         9ggA==
X-Gm-Message-State: AC+VfDxsXPv+eIMFlYRRo0iPbPY+iWZVJhHdRdP+HeXBQ9pfxBfzt4F5
	gqCVv52fXxMODmvMSLmWPhVnEQ==
X-Google-Smtp-Source: ACHHUZ4s83IplXBwoNtSQYlpNZ2jgP0cGcl1S9RUA3BThTitRPqEC3TEtyd9ZfVctIWKGMQH4+ujZQ==
X-Received: by 2002:adf:e54c:0:b0:2fa:a4b5:6b8 with SMTP id z12-20020adfe54c000000b002faa4b506b8mr3865844wrm.27.1682688426294;
        Fri, 28 Apr 2023 06:27:06 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id f6-20020a5d6646000000b002f6dafef040sm21107235wrw.12.2023.04.28.06.27.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 06:27:05 -0700 (PDT)
Message-ID: <4b690859-be5a-c331-8243-b875136d4807@linaro.org>
Date: Fri, 28 Apr 2023 15:27:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for
 SA8775P
To: Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: dmitry.baryshkov@linaro.org, athierry@redhat.com, robh@kernel.org,
 konrad.dybcio@linaro.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
 <20230428130824.23803-2-quic_shazhuss@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428130824.23803-2-quic_shazhuss@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_062710_298528_C95D85E3 
X-CRM114-Status: UNSURE (   7.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/04/2023 15:08, Shazad Hussain wrote:
> Add the compatible string for SA8775P SoC from Qualcomm.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---

(...)

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sa8775p-dwc3
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 3
> +          maxItems: 4
> +        interrupt-names:
> +          minItems: 3
> +          items:
> +            - const: pwr_event
> +            - const: dp_hs_phy_irq
> +            - const: dm_hs_phy_irq
> +            - const: ss_phy_irq

Why the last interrupt line is optional? Is it really optional?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
