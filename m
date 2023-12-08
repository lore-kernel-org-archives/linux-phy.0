Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713A2C10F04
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 07:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QNe5Jcl+RcKYsxIaQau0P/YgXBv6u4YsXLXL7265ik=; b=DeYvanZ9pigwd9
	L583qJpdbQBvc86zmHDL8G2Qzm6uiJp9iQKwCuVU/yuZwoLGeuigCRNr55IPdRWujZj+zfQacw3lV
	vZb2tuf5H+9PWBHwsxBe8+Ej+TerM4KG1qy2Gp4hAAnqJXvRCuFSn3+Bpat0BW7rZp24FxlZXRnSJ
	D3OPX6R5o+1oV+U4t6ivcwh9yzGZFhbAmuEjW+rmt5SyFq0YCShsfvihyjLQBKwz7FiOYuYbEl+JX
	fPmn8GFa/K/S5DZditqGEdfvScFgApC+RhiObno5Nqq9euKJpfw/BcbrYmIyVvvjPUsEFZJ8MD8Az
	ggaC4KvaWQ7iAyohtFkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBVaD-00EzUH-0a;
	Fri, 08 Dec 2023 07:47:37 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBVaA-00EzTw-06
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 07:47:35 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40c26a45b2dso10155125e9.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 23:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702021648; x=1702626448; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p5vewVIqc/JNWV42uuniJTg8DehvtzRgIujd+f407pY=;
        b=qviny3BmXynTsTTQODhbYinFVU2wx474Dc+jElY4+JKGZRmNo1OXeUtKeXqqWnA//6
         tBaDtjZCAUF3byuiGm5XhomoTYYyOZgRGjkzhhy6DmKLpgEFxNUkOGgTJMN3Avf8ND8J
         +GvdTw+uggrVj6bnOBgcig7w5QxDWdXYogii6ajOiThY5qKPRd578py7knKQrJRTQHWn
         r3cYC6ZsqmNF3wJvR+EPFixU2krArjBgg00Z4ga/Z0BO05c0QgtusyND2OBaqSRhtziR
         GJLBXzCJ0L0gKI3UG0Rjkxx8OW+5cxUlLgZDy5ojb5MC+NDRfTp842tu/4tGVuF0jIk+
         jkHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702021648; x=1702626448;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p5vewVIqc/JNWV42uuniJTg8DehvtzRgIujd+f407pY=;
        b=V97uhKe9v3G+ZumRDgvSr7uUXdgVBoyKnHWau3XEJM9xvSrR7pPdwUDP223mpvGsL+
         xnc98dk6kR00UUBji5YgUQw1SqLpiu1eaY+mE4IRAf352fznYNPqnYvzdCajOTi117W1
         yG1ehr4unoeD5YBBDv6vZs2SrDCnxX90i7WDvhPU8ElP63C8RiH8KX93Kn8DG/uXXa5Z
         HpXRbzpVM+qwgy4KTUMw/Qz5nin8H2TUxTx5KoNLN50D83xsOrtsX1n0GQAxkBaVdxD8
         MIz5CeaqKjUUBFyKP8r01GsfQqIxW4HVszHHEJ4zMVv0hik9BBbUbwRvjXxGhRg0yS9R
         2/MQ==
X-Gm-Message-State: AOJu0YyLq1rX3MgUs5OY2nVKaTYXf8QB4nIB8NwzlqJr7EnxFuhAYLlc
	HlMjgXW0mSq/oLNI5QdkJLo3Xg==
X-Google-Smtp-Source: AGHT+IEfvydTk4w7nPbL7Zk/ITGHL8nLhiiHdfMXQSboNERx9g88iW8mL6w6NbHrwPnV7eWGCL93AQ==
X-Received: by 2002:a05:600c:4e08:b0:40b:5e56:7b59 with SMTP id b8-20020a05600c4e0800b0040b5e567b59mr199107wmq.162.1702021647758;
        Thu, 07 Dec 2023 23:47:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id d12-20020a05600c3acc00b0040b5377cf03sm4280372wms.1.2023.12.07.23.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 23:47:27 -0800 (PST)
Message-ID: <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org>
Date: Fri, 8 Dec 2023 08:47:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org>
 <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_234734_096440_7B7B3076 
X-CRM114-Status: GOOD (  14.50  )
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

On 07/12/2023 20:16, Konrad Dybcio wrote:
> 
> 
> On 12/7/23 17:51, Krzysztof Kozlowski wrote:
> 
> [...]
> 
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - qcom,x1e80100-dp-phy
>>> +    then:
>>> +      properties:
>>> +        phy-type:
>>> +          description: DP (default) or eDP type
>>
>> Properties must be defined in top-level "properties:" block. In
>> allOf:if:then you only disallow them for other variants.
>>
>>> +          enum: [ 6, 13 ]
>>> +          default: 6
>>
>> Anyway, I was thinking this should be rather argument to phy-cells.
> I'm not sure I'm for this, because the results would be:
> 
> --- device.dts ---
> &dp_controller0 {
>      phys = <&dp_phy0 PHY_EDP>;
> };
> 
> &dp_controller1 {
>      phys = <&dp_phy1 PHY_DP>;
> };
> ------------------
> 
> as opposed to:
> 
> --- device.dts ---
> &dp_phy0 {
>      phy-type <PHY_EDP>;
> };
> 
> &dp_phy1 {
>      phy-type = <PHY_DP>;
> };
> ------------------

Which is exactly what I proposed/wanted to see.

> 
> i.e., we would be saying "this board is connected to this phy
> instead" vs "this phy is of this type on this board".
> 
> While none of them really fit the "same hw, different config"
> situation, I'd vote for the latter one being closer to the
> truth

Then maybe I miss the bigger picture, but commit msg clearly says:
"multiple PHYs that can work in both eDP or DP mode"

If this is not the case, describe the hardware correctly in the commit
msg, so people will not ask stupid questions...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
