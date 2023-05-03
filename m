Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0056DC77B7F
	for <linux-phy@archiver.kernel.org>; Wed,  3 May 2023 09:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXM31+9NVifQ2Oe4xJN+C23GaCbwb43JEakig/Y44pA=; b=bWXuabdHlMO1GV
	JQuqI2aqPf3t7i5GxNGk4DrzFAI2zP0DPXN9Rpe9MyaARGEx96ERYy0jfSnMra0a39cdXGezkWyMY
	7UYBkdKzMelsJvhQtBeutO9eKawscJ4yMZLPy3TXmw8IJ+hI8vz/ohdjVUgwNKcXNNMJsiaHI8Kl1
	LOABGR2B5xFLzjHs1RRn/XOuEF6Qt/jNnv2GQZVQQFRv33pdkEbYnuGUiH/RK5p4+z0zGDYFQGkdF
	KBx8ulaMsYSWUdZahIIbPeeGgh7yAHJv0bccAczC1Y3EnPs7vkSVvuzlyygB8BHsGqPizYmLj7+ll
	hC3t0zCLxU/CIdw3EN+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu97j-0044Qg-1P;
	Wed, 03 May 2023 09:50:11 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu97h-0044Pn-0k
	for linux-phy@lists.infradead.org;
	Wed, 03 May 2023 09:50:10 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-2fe3fb8e25fso3167504f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 03 May 2023 02:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683107407; x=1685699407;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/T+FXX7sVWVqbhY2VKXDOoaJBNQLW/1sdFoVyLs397Y=;
        b=Y78Q/Ld9skWxCIPXweKuqGDku1tQ2YEJrVr5a6ClwMJNdu+TeE80DWnXnrp6AGiOn3
         zQySQTf8fJAAaWzuy+K9N7fHMR6vL/R7kiWim4wL9doI4jUuoN49pB2YKXNZUDpN0cDo
         u+LfvtOcRAFQkLfq+zkzQdTxnByhzOBm23StgSOK32eI7pUeZbnjI3+C13rBt5VQgpYt
         33sPoByohMcXs12emZ4UwZj6PI8zJg0+5oHIbBBmcOjracpM0CFqCdHTlt86LqSwfISw
         ynLaIm/F9yHV3vnE+HXN0DvxV3NAOz5hIdn1mdzlgrc9/DOGE/L/SocDoK5seLrxFGzR
         h1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683107407; x=1685699407;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/T+FXX7sVWVqbhY2VKXDOoaJBNQLW/1sdFoVyLs397Y=;
        b=bAyXH+w4ogf3enadW4lRxeB/wt9/4QCcpd4O2PqleBb9MHqziHShZFu7WQc7OyVhC6
         PCkcVcJCOmYoHLXNkc85kwKMMj3+wMOJrAV0qX3bqhpLOlrND80D5/yG7NkBWcS04v2S
         Z27cnePHzwJOFOw8dkljrqDEUdke70BQB/hstZDYHeOEnkkVpioIinDSq6ySGEE+YjWz
         /GrS/aDnAI16/cgScmcIPmJuXV2Fbx2agkU+5eBOpzc/4tGyIOUhmAupPCnxxkc9giku
         7FjwMlzg20PBZ6kfYH1UQFnFdSWCPJGxS9U8BoswRZmWeShxVODb3a0R2NC6dh9YDc+P
         eGQw==
X-Gm-Message-State: AC+VfDwkExQnStzNZjpEKSrTjBijVkqPtxfnsjtR/liU2I5fV1eLgxMC
	SCZn2MvrCq+apfE93HnY5SgxGg==
X-Google-Smtp-Source: ACHHUZ49An6C/aQRyKygHUY7sJqA231CLElBBL5mvACYZXdUhxIGOwEFlmV/zy906FvjRGXfyKbhTg==
X-Received: by 2002:adf:db44:0:b0:2fa:9036:9cf with SMTP id f4-20020adfdb44000000b002fa903609cfmr13176064wrj.37.1683107406770;
        Wed, 03 May 2023 02:50:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:68:e58d:3e87:f8c2? ([2a01:e0a:982:cbb0:68:e58d:3e87:f8c2])
        by smtp.gmail.com with ESMTPSA id p6-20020adfcc86000000b0030644bdefd8sm871903wrj.52.2023.05.03.02.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 02:50:06 -0700 (PDT)
Message-ID: <579b44ba-3703-a63a-6e79-7da335c1f990@linaro.org>
Date: Wed, 3 May 2023 11:50:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_025009_275950_38B1D75E 
X-CRM114-Status: GOOD (  11.09  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 25/04/2023 05:40, Bjorn Andersson wrote:
> This adds support for USB and DisplayPort orientation switching to the
> QMP combo PHY, as well as updating the sc8280xp devices to include the
> QMP in the SuperSpeed graph.
> 
> Bjorn Andersson (7):
>    dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
>      orientation-switch
>    phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
>    phy: qcom-qmp-combo: Introduce orientation variable
>    phy: qcom-qmp-combo: Introduce orientation switching
>    phy: qcom-qmp-combo: Introduce drm_bridge
>    arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
>    arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
> 
>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  51 ++++
>   arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  28 ++-
>   .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  28 ++-
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  34 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 227 ++++++++++++++----
>   5 files changed, 309 insertions(+), 59 deletions(-)
> 

I succesfully tested this on the SM8450 HDK, and the following works:
- USB-C to HDMI, both directions
- USB-C to DP cable to DP display, both directions
- USB-C to USB SuperSpeed, both directions
- USB-C to USB-C, both directions, enables SuperSpeed Plus Gen 2x1

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
