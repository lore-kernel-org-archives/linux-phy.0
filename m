Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55C71EE49A0
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 06:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZQF1yYNfvBjp9xOAR5TpG1j9HrWhWhWbcZcP0+9IBQ=; b=LbdXvIp5SPRdWF
	MPD07Y0Ys+YuhOLweyyoZy9am0zyvpZ9dMNnWQae0pvHuw+KnKhqGnxXVb+yEVfnSS5Xoa6G4xVg7
	4zehfkBlEcL5d/23HcJwUlSIxhAdNGHWCl9CYPLH8uGmE8hZU7gPDYJoh9eWpAVNZcDH4B8FctTik
	r/27tyhyyBZC5noYh7FHclOAB+B3dDuKq66bBgQ8IPDo3Nx3lLAbO8xI10UGUtQynnapReM954FR6
	aDDB17O0R71ux2l8+8KifwjnQWNFyg5OIXEopuyEWFFNFyvOTknfdRimKeje6jOggkO13Q//a2+9U
	ZsnV5kRNa8usdMett7iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXyDw-00DF3a-0A;
	Mon, 21 Aug 2023 06:17:12 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXyDt-00DF1e-15
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 06:17:10 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so386320666b.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 23:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692598612; x=1693203412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v2DHyxVTCML6SgQFmf5PrsWXwq96mK2/2B8sy/Z+uk8=;
        b=C2TLrPHZmARwktMNeniUL0KRM2S0lGuotVl5NAtWMyV2lPtA9ulYwCm28+Lxg6mW7t
         tc6Xh4ksk/vbqObq6ch/Ati18gnFFMzH14RIALu5McnjYOL3qjUG7c47tp4baaNcT4BL
         20Zd0s2s1Z93Dcc68qNYv4RppsTuk09AO95KsqlZlgE8tJlvaFZ7KXchNUznWT0Sr75F
         eA2IuDL7SIfGtYAM3bcWEFF1h5jaN0f1667Dz9iZs6EabBS/DKe+aaLd/Z0BJgkmG4mY
         g4s+pe9fn+iAwCU8Y0FEBxn2DvK6lYUMowp+k4luRedN2Kq9xhi+yCW2wpzI7K+GlMvG
         w2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692598612; x=1693203412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2DHyxVTCML6SgQFmf5PrsWXwq96mK2/2B8sy/Z+uk8=;
        b=kN3QY5fjQwwqIRESsLqPl9mswWr8cpmnm78a6RBY30Ad0TDWZKklL2sVDaMPWiWjyY
         XFBPJZ6Z5MqEq7pH7tuvW9G+0syrvmkn1JpB+77vbpc/99a/bP71brWczX/j0iTgahHk
         U8gCngGK463ttHw9w8XOX1IugiF2ZYKaZdo19Q+LMsPfodTmjAe6HIn0OozTJ0hoJzop
         m1IlwaAV9NbaJwbdZ8PnOChslVm01PFU1RAwLreA3auwkvUVAKH6YB+KU1IVvtXThkAy
         Qe9b12Hism82APZj8agXSxYK3W2Q6gvM0VDGcFcPblD5f7Gu4HM8C3fnzseNukaKpVzl
         w5ww==
X-Gm-Message-State: AOJu0YyY2umNC6hhY2EiaPgAn8HwFgQtu+97NPo1J8tA3WRwFBZfaPtK
	oOoK9ZhilnwSpIKM/LRSVRjjyw==
X-Google-Smtp-Source: AGHT+IEOgpV7Sr7hyl2V7Utgz/9q0+j+gDRYIgrp8qYMaflN3noIyg4RZtchBkGl08PCwFfZja/qyA==
X-Received: by 2002:a17:906:3caa:b0:99d:f7f3:5218 with SMTP id b10-20020a1709063caa00b0099df7f35218mr4050827ejh.25.1692598612112;
        Sun, 20 Aug 2023 23:16:52 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id um6-20020a170906cf8600b0098d2f703408sm5966631ejb.118.2023.08.20.23.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Aug 2023 23:16:51 -0700 (PDT)
Message-ID: <09b4909d-686d-3e3d-f4c5-12e5cba3dd19@linaro.org>
Date: Mon, 21 Aug 2023 08:16:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 01/16] dt-bindings: phy: migrate QMP USB PHY bindings
 to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
 <20230821002535.585660-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230821002535.585660-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_231709_397386_C94B87C4 
X-CRM114-Status: GOOD (  11.91  )
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

On 21/08/2023 02:25, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,msm8996-qmp-usb3-phy.yaml)
> to qcom,sc8280xp-qmp-usb3-uni-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index f99fbbcd68fb..60cbcf3c19b3 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,20 +16,33 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,ipq6018-qmp-usb3-phy
> +      - qcom,ipq8074-qmp-usb3-phy
>        - qcom,ipq9574-qmp-usb3-phy
> +      - qcom,msm8996-qmp-usb3-phy
> +      - qcom,msm8998-qmp-usb3-phy
>        - qcom,qcm2290-qmp-usb3-phy
>        - qcom,sa8775p-qmp-usb3-uni-phy
>        - qcom,sc8280xp-qmp-usb3-uni-phy
> +      - qcom,sdm845-qmp-usb3-uni-phy
> +      - qcom,sdx55-qmp-usb3-uni-phy
> +      - qcom,sdx65-qmp-usb3-uni-phy
>        - qcom,sm6115-qmp-usb3-phy
> +      - qcom,sm8150-qmp-usb3-uni-phy
> +      - qcom,sm8250-qmp-usb3-uni-phy
> +      - qcom,sm8350-qmp-usb3-uni-phy
> +
>  

Just one blank line

>    reg:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 4
> +    minItems: 4
> +    maxItems: 5

The clocks become now variable, so you need to constrain the number in
allOf:if:then per each variant. At least one if: cases lack such
constrains (qcom,ipq9574-qmp-usb3-phy, if I am looking at correct revision)


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
