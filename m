Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E678CA1008
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 20:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kZLj1qxlIPqpBluMFmRvSMWOqg0o/aWcneaBikhC5A=; b=XrFPLg/KwU0huH
	ouf2MIKWWfTj6O9s45ULMhIBRVTy7IZwHDPD5gK+yUY6wkesvkj4Ka4RxfBq+WYtsgTxFJtmnutXv
	KjjeLIAQlJFFkp97RyUTFUf7fK4WXYx6uninTFxt4Uky2xpSWY7iBG64SNkAEY278tKdeDK2cWWZU
	VeMu+uNOjnFNEXpHT5M0eil1s9t0uPDGRZO3gWChf4heoONcbSWM+qMLdHI9aweYH7xgMtVlDMa4J
	fTs+YcY0xjpiBENnKtxKAEySyp5PZcz5hxSQXKjrTEODld0Asofs8Sh5FYtlseZk1etJxcB/p0WY8
	e6MRtZrgS7rMIVeNgXhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcm7-006hLv-0a;
	Tue, 05 Sep 2023 20:35:51 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdcm4-006hL6-2R
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 20:35:50 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99c3c8adb27so446237466b.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 13:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693946144; x=1694550944; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OiSmCxQ/EDKcEARhNdmpkXCPW0esRb5+GXQZAdSBUgk=;
        b=QmxHqNSfM3TBXZOIIG1sMP5H6oGEPDIh44LlylicGwJIQJAteeh4z2TKZMnivrW3zX
         aPL85pOAL0wR0FHdB4FVC3eMt2anN/ZyD3QeZgY5sUMo9Jbp7zIpHEXURyCQQcLspS4I
         qc3QpxYTeE9a2+PQceHXCOYs6JJZucXm1dtObxiE6MsHK70Lxe+6v+Yq9VYlA07eVr3a
         cazAwKkty/vGOL6XpTAAwfLZJSOoSNGlbYu7YB8Uzn2KDQL4kNJxvkAe0l7xAp0hOJhn
         3vU2yuGQAKA4qSdu08ipG/zLeAO/GrCQyxrBIEA9IB2gp5+2+W+w/m1aByJF+U38Y+Ok
         UI2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693946144; x=1694550944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OiSmCxQ/EDKcEARhNdmpkXCPW0esRb5+GXQZAdSBUgk=;
        b=PV8Y2p5lPED5fyKa3TyfZsQNnaKqmQg7VRUCAYi83zAeQJUfg+xnyNDOtCRph11lT9
         9ToWRHThPCoKyXkRm/7zWz8hHFrw8tBJgLWpdzrtMd80Um0eLKsftTuW/kdDJS/NzSeZ
         VcBVv+NhNlx8J49Dh37xxJ2hSC4DfnmYeKblY2U57nPzJyq9PE+wK0cMyqdiylR8IWgE
         UA2r6oEoz6uDZvh+BUWfc4EwpNudSWIZxXHZE4+quWxuBMvJ3jjFZNRmOr2+U+Hi69ln
         5mmK53KWhiCk+VAXrsfGqy/4tB+peF20JjfyDBfjQpQzDL/KLN2WGR14VpfK558WZnWd
         Y0xQ==
X-Gm-Message-State: AOJu0YzCPfQ72YBBy7lUV1lB/doHut0lVurSICGEvkqtGEoUZW4TsXzU
	gIPK/gHj8EqAAqN4RGBiJCAoyA==
X-Google-Smtp-Source: AGHT+IE7rcNuMhGXu4mMQJiB/4NmLmwT0a3++KRDw0wd47NGep+DfyU+NFOr97o9NJb81yuFYh7PkQ==
X-Received: by 2002:a17:906:cc12:b0:969:93f2:259a with SMTP id ml18-20020a170906cc1200b0096993f2259amr649096ejb.73.1693946144056;
        Tue, 05 Sep 2023 13:35:44 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x24-20020a170906299800b0099cadcf13cesm8044460eje.66.2023.09.05.13.35.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 13:35:43 -0700 (PDT)
Message-ID: <35475122-cc40-486d-90a7-09be53588219@linaro.org>
Date: Tue, 5 Sep 2023 23:35:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] dt-bindings: usb: qcom,dwc3: Fix SDX65 clocks
Content-Language: en-GB
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-4-git-send-email-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1693909838-6682-4-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_133548_801393_A2A3ED83 
X-CRM114-Status: GOOD (  11.33  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/09/2023 13:30, Rohit Agarwal wrote:
> SDX65 has 5 clocks so mention in the bindings.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

Fixes tag?

> ---
>   Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 6759105..018117b 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -180,6 +180,7 @@ allOf:
>                 - qcom,sdm670-dwc3
>                 - qcom,sdm845-dwc3
>                 - qcom,sdx55-dwc3
> +              - qcom,sdx65-dwc3

Is indent correct here?

>                 - qcom,sm6350-dwc3
>       then:
>         properties:

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
