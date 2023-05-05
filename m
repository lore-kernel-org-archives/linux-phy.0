Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7364DC77B7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 17:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXza4CPE7/zYmHxm5Sc4QtplIjY7POR7q2tMTO6qwWQ=; b=QPKmrEH2Td1L09
	Hu1He3VjEthKdynSziVxQMeesCwFkC+u9eZc4fBy1iS1il7C2kmFH7pb0lbzYOcRd3EGx4TRvdcZD
	6EnhZJupzA5/gEzWPcRjSPYX8O/ZmyXzmRhLrgR6hFx7EPTbhjzzdDkuYlRuUwwyjC5N9bseMyuqf
	/1YW17crnJshhmcFWl4eBTy1QrRUWi5ZMwC34O32YJLpqpbBPTj5bhZp0WN2HjlN9BHrDBP/UOBgH
	hLHXeHf5eYfNzXPGchXCeW/aY8UuiVq0w65AkkTqWSvX9esuZpGXeBxUL7NeS+xs8RFheGjo4GeUN
	/W2Am79Na6R+zOPyuCXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puzVw-00BSED-04;
	Fri, 05 May 2023 17:46:40 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puzVt-00BSD5-0q
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 17:46:38 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so3974443a12.1
        for <linux-phy@lists.infradead.org>; Fri, 05 May 2023 10:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683308795; x=1685900795;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8N9Yr+zLlSevy06onPb6pPa3VVo3y3jk+4XaNqiZBs=;
        b=sKW0VW5qv/7liKcH03jq3lk5gNpZ71TggQwdgC9owC7Qd+4QeRfutxoL3s2ngNcm32
         rGhb9Tg5t4Z35Xsh5i3B655ThqoI85HmZRcSn1wR7WLqL/aOVT8cN2dO90KMTQeW3SaX
         OPZByvxs8o5lkPwB+h2HTxUPB5FGMqImkY5jklyJnSGp5NMHhh0W1imyzaB4yfoETlgE
         K0WrgYY7ji9Xi+SGdABphR9eDWZsXGsWCzNPfLfSSPzh/5LSJ/YMmItvTe+N5PX699+v
         ytg90Sq221DtaqNUyguk7pT7ZqMUndt4CIXhDvUXren0qsZQcJy5DqQXOihgPl46JBK5
         aRHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683308795; x=1685900795;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C8N9Yr+zLlSevy06onPb6pPa3VVo3y3jk+4XaNqiZBs=;
        b=cJlWYJmmFJPz4pRfHFUdrqsUNU17xLlRMTGJOU1neAOJk7Y3JGMCU6/hXRCSuk8Udv
         uJc46mLFXzOrVIf7ui2ZvVDSJjYNzFzeB9VRw8pe4bqvR2Q3seH9PBVmSO2LjCFB6rVU
         l1CRhjWcHGSVJSEcZ+SGPggyNKoljuPCx/jBR5gTxYLsdi4yETQ3B6ZRZrQ+wwjfktKw
         LkocWEwZqeUXLCtC7nbAaVcfpW69ahxe+myq2XVMMlss6kDw3PtFsTif3fi/6mPC6HRX
         1YiMoR2KOTb7mEhX2LwSYJZurrYvHIOkmF1U1bK+RL30DFoo3NXD3ZshvAczm8Pu+kBk
         P58g==
X-Gm-Message-State: AC+VfDysQI6mHwqEqAuB9qzwj7IdkW7jMnPmqSoV+T0SpDyBSygldNQG
	BEHVpldOTEFdq0uuCBV4dgz2sA==
X-Google-Smtp-Source: ACHHUZ5YVY8N0DzX6h9cm4JNuQQzxfsGQgQZKNrnF1+roP7Bz5pge3isOtPrJreeZ48Xm5hU0N/W/g==
X-Received: by 2002:a05:6402:1343:b0:50b:caf9:4b85 with SMTP id y3-20020a056402134300b0050bcaf94b85mr2026314edw.18.1683308794939;
        Fri, 05 May 2023 10:46:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id s3-20020a056402014300b0050d83a39e6fsm286383edu.4.2023.05.05.10.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 10:46:33 -0700 (PDT)
Message-ID: <ccee82e5-96d1-1275-8fe3-73ccc81db11a@linaro.org>
Date: Fri, 5 May 2023 19:46:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v10 2/9] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1683183860.git.quic_varada@quicinc.com>
 <10b8b06f133c72415a609e6bc6595424712e029e.1683183860.git.quic_varada@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <10b8b06f133c72415a609e6bc6595424712e029e.1683183860.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_104637_346894_8E892ED7 
X-CRM114-Status: UNSURE (   7.30  )
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

On 05/05/2023 09:35, Varadarajan Narayanan wrote:
> * Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> 
> * Making power-domains as optional since IPQ9574 doesn't have GDSCs
> 


>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq9574-qmp-usb3-phy
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: cfg_ahb
> +            - const: pipe
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: pipe

required:
  - power-domains


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
