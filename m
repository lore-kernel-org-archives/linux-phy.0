Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5561BC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 15:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iqrh/tHgmKLyzSv/y48+69auWgzDo3sAowaFvmJPecM=; b=qpXkmgOd35rLNa
	BjEP55Wwm0d//VWgZ36XuWBnR/MeQIP1apWeB/L4Vs6oqEztKUbcJHv0YGkayBnToS4J2MGbF5FyC
	2BIY3YbNM/BnjJ/oMAs6ry+BbvrSlHha621HiLLbpPS1YdWQ0zp5+cnezXnu2cE8ix2HingaIlvv2
	/3j1YNYKN84Au2P74m2VV9upmQJwr35i/d1BjI18rmz1LeqIVD8iURWjzFLH3N90jMKW1xzuBuUnT
	MI3vVmhR066jhdb2NTJtQgo7yEryqEXR8yf7YPqipRyzIk29FJhf5vkO1tmOLplN7LCiQV+XrR9MB
	epWXg1KdY2ErjwIbClDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVmg-00GWNk-Pf; Fri, 11 Nov 2022 15:17:34 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVme-00GWML-TL
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 15:17:34 +0000
Received: by mail-lj1-x235.google.com with SMTP id l8so4833238ljh.13
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 07:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kBeLtt806xuAVLanhVYNh3Yb8OkYSIv62TYrl3SBTCg=;
        b=NpUQ1k7cnJ6Y+btt/QCKgUHDvfM24FoMAzrWdP2kHUVvRcdX39YHGWI7RhlKIvRtfY
         Fvqc7DfeHIZB8nWuKjzVacMTbB2q+eUW9FbYki/rYpF4RyhNkou+OrxE2fVthb+90zff
         SvYuUeqT8TsFNm2OjorlexvawJkgedmJLil4EPu38CXdFZT14sPIptQw7tjp601UWDR8
         EkkjcVXQ5zQcFoVBp9VoZQcI3pBz+Yx2wUmaUJ9HZsF3wNPzDgEn4ryA2hMYlxK4OT3j
         LchupSZEtoaB1SoYHnaKv6t3WOwqGv1KFGsDAevEHy3Jls7iYNJCVYxI+QwB+FUNr2mq
         xWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kBeLtt806xuAVLanhVYNh3Yb8OkYSIv62TYrl3SBTCg=;
        b=OvKpMy72lKVX8T56v/DEuYary0YUbq65KT165r+ulMWlQNXAmJPWGTiNPkiUKXoaQs
         Sk2kfb6soe4fAPRctsTb4wO0Fd4rSB6K+uKINpM3xllFmzj0E57jK2P9pUvwBVBt3GMT
         WgUNii8OpU8o/5GFG00FLWgXyZ1qkD8xyqoZ0liMMb5CSLpRTs5/cwNHyjczz+61mJ8Q
         ugj0krd0khUx3xkCKZSWlB2SXVy/3iRi8TJm29WFZP9OPd8+YHBrlki86MTnOOQm6pAU
         qLuDIZMAIV648IYpiONC2GG21lpl5HgwYtifHlLqKp8EUNXcAn5t2y/v41CuJ80tPLRN
         vzXg==
X-Gm-Message-State: ANoB5plU0qPC1vPEBYxHm26q9qaHr0icUgIh5siuwZvbAYVHXOXh6vtW
	vCTG15GnMHrpFkMMHYwes55sRg==
X-Google-Smtp-Source: AA0mqf67yeOajmW2PCp/0xsLFqXNEMXfRV/CNsGFNrg6CE4V6sENMpCjMFr1JbX99+cv2DrS5QSDSw==
X-Received: by 2002:a2e:9ec2:0:b0:277:2600:9cc0 with SMTP id h2-20020a2e9ec2000000b0027726009cc0mr797972ljk.437.1668179850436;
        Fri, 11 Nov 2022 07:17:30 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id d8-20020a056512368800b0049110ba325asm367089lfs.158.2022.11.11.07.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 07:17:29 -0800 (PST)
Message-ID: <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
Date: Fri, 11 Nov 2022 16:17:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111092457.10546-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_071732_974323_E684B91C 
X-CRM114-Status: GOOD (  10.92  )
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

On 11/11/2022 10:24, Johan Hovold wrote:
> The current QMP USB3-DP PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 

Thank you for your patch. There is something to discuss/improve.


> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>

Maybe you want to add also yourself?

> +
> +description:
> +  The QMP PHY controller supports physical layer functionality for a number of
> +  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
> +
> +  See also:
> +    - include/dt-bindings/dt-bindings/phy/phy.h
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sc8280xp-qmp-usb43dp-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: ref
> +      - const: com_aux
> +      - const: usb3_pipe
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: phy
> +      - const: common
> +
> +  vdda-phy-supply: true
> +
> +  vdda-pll-supply: true
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clock-output-names:
> +    items:
> +      - const: usb3_pipe
> +      - const: dp_link
> +      - const: dp_vco_div

Why defining here fixed names? The purpose of this field is to actually
allow customizing these - at least in most cases. If these have to be
fixed, then driver should just instantiate these clocks with such names,
right?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
