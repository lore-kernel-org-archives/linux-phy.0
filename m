Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78628C7EE21
	for <linux-phy@archiver.kernel.org>; Wed,  3 May 2023 16:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9Zq5uvh/BXPI5SxSpChOSGip2OBY0HV/XtP3lil05c=; b=M0FXQHVp+4wMpa
	E+1q6SeSfUNjeIvMRhv5nvN9izeQdxuAUuzoUIPzGMjzfKTS+AWcfyFkAu7r4NE5R5ATpIVL4A5e2
	3J2y2KgZ9A8IfweKJLrgmlZ05KST48TJC4Q98IX/jqsE4HcdmaG/2BXgy9gxlmWnPJAxw4yecEYaG
	dx/q7niKDBhDt0JDFUI6wHKss/OdyXFFmE7Q7U9wxVpUqcIASWeJY/tZPkqAksTtuo1oRqAltfInU
	s7YI+ghRJrk8rp5xZW6MnRk55GBHCQZFj4LN3kthMfi2dEXLYKgMyrg9zcn4xq4252EmbG0rZGt1T
	7bl5DsYqWCta0Zc/FPEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puFHu-0054x4-0J;
	Wed, 03 May 2023 16:25:06 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puFHr-0054w6-2V
	for linux-phy@lists.infradead.org;
	Wed, 03 May 2023 16:25:05 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so8411996a12.1
        for <linux-phy@lists.infradead.org>; Wed, 03 May 2023 09:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683131100; x=1685723100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ze0Jut8Jaw/ifknxqzKnyodBsn/9QHtRL/qVVYq1llw=;
        b=gz/b3Y3bnJRGNrunc5pvQ52kNHqDIXCDEt4x4jhB8mASaiBP7eBrSifq20QrXloxgD
         Li4IrdSsWj6ezR+oguVZMmdxW0P0+tN3zyOOy52LIIkeMNMMNu4696nKi2Ja81xapDAv
         iT1n4aJKv0PpeVaO3HbD8KRwVX1XQOChLXugETqEqhnOfifjg/1Ry5T1OqdOxwb34tUZ
         nAWcVntJ7M0CARs7uAFvZyejjKh2pqUO/vUveWuD5VSDRqFB+phI1ToRAdMInwymNhIR
         eHNPKGU7FOHJNktIfMGCyqkaavg5vCsUiRm4WSkYDk3uCvkuQIg42zSU2gHLaAwrQTJB
         pvig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683131100; x=1685723100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ze0Jut8Jaw/ifknxqzKnyodBsn/9QHtRL/qVVYq1llw=;
        b=TwddJTFP3eKiQXkM2sXTd+tMdavmCOhQRHCGjONM1BmCGknOvvSLMVq3nFcCpoKxDY
         R5mFScgj+hfGkae2sJnf8EP+kG+/0tYKaYm1xDOzIwyKk0DMuZghCg4yv000ixNWuhlG
         C5d5ZsssT03nw1sjKZA7nZuHXwH5o0U0O6pKMtrT052/4iiDaCXRKFBxAB8yHvxBYAi7
         lFofAIasejSXpOXkSzy1LpfFp+ZQ5hKpaziNbj35dOUnknV1eWoujyfTTNB63JgCX/OB
         cFye0sp699n22UYQ7E1Eos/+NtIIoKZ+DeNZm2F3L41oevpInIPDWr47GxP0uxw2ormC
         xclw==
X-Gm-Message-State: AC+VfDzoQYM+l1/2trTTju9mFlHK1cclICBn8iGWeLunwzaPLUImhgIr
	JpvklckxKdEHE4qXYbYMJlo5MA==
X-Google-Smtp-Source: ACHHUZ6Ep0HhQcksbydX/7YXvwqa1Tty4Z/q8q7c2xvPyK6lt1j7GimAB71oBrZSotEDHVh5AIKLCQ==
X-Received: by 2002:a17:907:9308:b0:94e:bf3e:638 with SMTP id bu8-20020a170907930800b0094ebf3e0638mr1939840ejc.11.1683131100188;
        Wed, 03 May 2023 09:25:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:db42:e3d0:c55a:8cf1? ([2a02:810d:15c0:828:db42:e3d0:c55a:8cf1])
        by smtp.gmail.com with ESMTPSA id sb10-20020a1709076d8a00b00958079b676asm14837366ejc.122.2023.05.03.09.24.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 09:24:59 -0700 (PDT)
Message-ID: <faefbbed-0f62-e569-455d-0d21b363f8f3@linaro.org>
Date: Wed, 3 May 2023 18:24:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v10 1/4] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
Content-Language: en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, robh+dt@kernel.org, konrad.dybcio@linaro.org,
 kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-2-bhupesh.sharma@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230502053534.1240553-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_092503_820915_34E50119 
X-CRM114-Status: UNSURE (   9.94  )
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

On 02/05/2023 07:35, Bhupesh Sharma wrote:
> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> nodes for USB QMP phy are being added to dtsi files by followup patches,
> move these bindings instead to the newer style
> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> 


>    clock-names:
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: pipe
> +    maxItems: 4
>  
>    power-domains:
>      maxItems: 1
> @@ -71,6 +69,42 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,qcm2290-qmp-usb3-phy
> +              - qcom,sm6115-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: cfg_ahb
> +            - const: ref
> +            - const: com_aux
> +            - const: pipe

I am pretty sure I acked it and there were no changes here... but since
you did not include it, then lets keep the clock order the same as
sc8280xp. ABI is anyway affected, right?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
