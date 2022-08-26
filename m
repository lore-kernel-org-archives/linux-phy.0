Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71407ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 14:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tb1O3TNITFugleFrVNh1fIIXgegptlgS0fdY3WElm9M=; b=Xz6sHIj0L8O4sn
	BHB5MRWUlJvJidWK0QaQ5/w4ttOxtjqGHG6w+elpnbaP66Kq1iIF+LGUWw7D2b1jDeKUUQsauvIu1
	TJXZtoYMhH679sAzFY+mZ7cqaKnds1g7aicTN8FFjWzVfvK3NPS7qfZDd7uZf4a0RlVSLNOa9/Zfv
	AEyz+1QVHG6JOk5DrYqZMoOFB3IYxY7OTKKtYHsA6ivZ02Vr86IDzFn0gszwyDyuQt7QM5yJZQXBI
	QddjDerge8yiUFb0yq1e+L7VLYfGNfN+Mql3sEjywiEZmRzVE17n1dquDCYdCFoYWqeZXDarASBuG
	zok6RdRPs+QPWuLJFMXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRaGs-0068xc-Sa; Fri, 26 Aug 2022 14:25:18 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRaGq-0068oA-5G
	for linux-phy@lists.infradead.org; Fri, 26 Aug 2022 14:25:17 +0000
Received: by mail-lf1-x130.google.com with SMTP id l1so2197938lfk.8
        for <linux-phy@lists.infradead.org>; Fri, 26 Aug 2022 07:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=06T9wTlCHBAEXY2GEb3qtwxCsT7B2RAGjEVPlOQCqks=;
        b=ZwE10iRG6CbbaA/6sykl/gq+h+IcnIMa5gJPDRkX0gHTE4GrnN6lsCgA/VqoB9fauZ
         EVxr4jMb3a+Jl9Q9Na57YjR0rlWC7QVjC7PncqtYGqV1ZeVkTuOTPQdmqezjHE4qh1hE
         aIy8iWkcPMJQBcnzQaoAFVj1WS0IrjBHinOo5jD0HnMIZA4TUMu1nCCtBNHqNIZKiMCT
         Cy+fwM/H00QTIFa2yIRv+zxStjTIYyDJ5lRLb9z7qGhaS6b5zE2uc0PUP18MLzKtgeTt
         pbGu88qICKMttQjFO1MXEX7nK740RIpeymtSzVUwJngqAgkhrYGFdBnh01LsMvq15vWD
         l4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=06T9wTlCHBAEXY2GEb3qtwxCsT7B2RAGjEVPlOQCqks=;
        b=4PsgAzLU5qWM7EG9+USHa6boTWPrIDLg0t/5Zfmc1KUQzjpzByvgxgamKqvt9r0Axc
         gzfQygCb1mLAo7RPF6jzRVQ9cSzM3jJXiQeNHYkl0SGxQqzhCPsNoV1liJmM/RgMzxKG
         Brcc6VbgOaxeQVP0TLR4RV1CkkHVJVC/gkVerAYuggz5aY6ljx+Uk5PT1SQT8+OxuF2q
         0gPMiqf0iTHJ+nhqZtvc4NvyjT5uQvRoFVNc4k30hdCt4101GlsEoO/WcC8Y+48RLhDQ
         HMNe0N8lNZkiJ5j0cvmIH+T+S1tReFObU76hpeY82RdAsK+ISntGWnGg+TTwBPOsUoak
         5SLw==
X-Gm-Message-State: ACgBeo3j/WAiUG2f/8K0tYpbXZz1+7lnd4TUJH0MJiQHwerKi9mctT/B
	86ryz3LKBgLYbDZjiFOra9gFYw==
X-Google-Smtp-Source: AA6agR5dy+Gw8ohowBYNiJa6W/b7Gi3/F4l2mDhs2M3US0iGXtl48LOKo978070UI5a03H4IhoIFMQ==
X-Received: by 2002:a05:6512:1096:b0:492:ca89:a38d with SMTP id j22-20020a056512109600b00492ca89a38dmr2868202lfg.152.1661523911767;
        Fri, 26 Aug 2022 07:25:11 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q14-20020ac246ee000000b0048ad80a6d07sm391894lfo.170.2022.08.26.07.25.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 07:25:11 -0700 (PDT)
Message-ID: <6474b61e-69d8-dbcb-f638-7729ec3dee31@linaro.org>
Date: Fri, 26 Aug 2022 17:25:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: msm8996: add #clock-cells and XO
 clock to the HDMI PHY node
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
 <20220704161148.814510-4-dmitry.baryshkov@linaro.org>
In-Reply-To: <20220704161148.814510-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_072516_235496_0CAFC296 
X-CRM114-Status: GOOD (  16.85  )
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

On 04/07/2022 19:11, Dmitry Baryshkov wrote:
> Add #clock-cells property to the HDMI PHY device node to let other nodes
> resolve the hdmipll clock. While we are at it, also add the XO clock to
> the device node.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Bjorn, I'm picking the patches 1,2 into msm-next. Could you please pick 
this patch into your dts-for-6.1?

> ---
>   arch/arm64/boot/dts/qcom/msm8996.dtsi | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 25d6b26fab60..b72385ffecc6 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -1049,9 +1049,13 @@ hdmi_phy: hdmi-phy@9a0600 {
>   					    "hdmi_phy";
>   
>   				clocks = <&mmcc MDSS_AHB_CLK>,
> -					 <&gcc GCC_HDMI_CLKREF_CLK>;
> +					 <&gcc GCC_HDMI_CLKREF_CLK>,
> +					 <&xo_board>;
>   				clock-names = "iface",
> -					      "ref";
> +					      "ref",
> +					      "xo";
> +
> +				#clock-cells = <0>;
>   
>   				status = "disabled";
>   			};

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
