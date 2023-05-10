Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFC4C7EE26
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reGzB5vhB3653/5lmI63wDvizUqzHN0Tz6vKn6oafr4=; b=qntQObwTC9v8X6
	+brxgr9UU5z7EBjXNQfPtbuxDcenfB3hltivc4ONWzDHW/W6cXEfH5vOKFPp7s0cSiW0LZNz/uAhS
	FPR7cxri11IhNQ5o3eaLt18v3fx8uOvJlLOfKwL9fIfI0qOIgx2J1TGMr8AXeqL8HMsjq29IyGZUz
	H5IFlZ8HXR22nVnVnIDTnLKKTNw2cLqQLRh4YTA9GxYX0vyX/tWN16XXrXDi9lpJoe6VPfxnA6qXj
	BOvtXRzeenb0Wu6Xw0R9g0TwSKCOiMPN63XMoYGAnBzeJCqK0v7FBpghsu1aAPEoQriH/WmQ2Hupz
	xOkk3km83JyQp0YPdRTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwefU-005Rht-2a;
	Wed, 10 May 2023 07:55:24 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwefR-005Rgz-2m
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 07:55:23 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bcb00a4c2so10840318a12.1
        for <linux-phy@lists.infradead.org>; Wed, 10 May 2023 00:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683705318; x=1686297318;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oob8w8ofobCi5vSBmyGbDt7IQ2Ps/8J6O1qvcfUAdXw=;
        b=AOIvpkjd/QsRYky8F0xjpBaEpCuRDCwXik8hQIKdGmZTprdNKPydwA7egtHhiHtr+S
         g2DxMuC5mGadrCd2Y1TRlOVFfNCYW/IFQGSiF0YpDgehbAJxB7YXFk8s6Q58OyZ+8eoz
         L+Rws7THJpOxpDSnPsTtc653HLV3t1x50t+nz8rPNGQdU8KuprFbPcIU1UTFiVpSnzce
         z9QeH8IHslagm1hRjPit9r00XaVF/4pP3HFhGCbW9GjU+P0icUPgqqZTGTa9MLnbY6Xc
         27LBZ7EdR0WEKeShlDHohSrXbBWJcu2B7txNGYADsWsWE0x9f0KJwiM6clU6zNI4CWRa
         fW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683705318; x=1686297318;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oob8w8ofobCi5vSBmyGbDt7IQ2Ps/8J6O1qvcfUAdXw=;
        b=X5UMbMgR013LqAd8IDL1lNY6LfeGVHDYW9TynPaA0+ZUxuUMnR7fG85nIEJW1ihnu9
         v2dkp/f84H1vU9H/ipVSNgTNu5ATH6euuSYxtKZy5ADjbuVwnQPXT4nrlvDb8btqznOu
         0VLHH8wJFloZeCxYgcy4y8njVtLZmncQaDuZ+GKWIBbC5D2xlJ+4N5InX3WVZJcjzl9e
         z5CB8SI3Cx7HfZsjMjPqa2ki7hgUQftVGudHBgKj0n45oK5AC+BVMASmbxwBK464i0wq
         wSFTJwbsRmk9ynXzyiKyrAWF6OR4ee8ESNb4JAG8vVzYyTW8oKzUPB6J+CN0tbu7hNDH
         uUrQ==
X-Gm-Message-State: AC+VfDz2Gi8g5gTFiqEocoJx3qz/Icfxm8prPAh25Qgwv/hmx0vVvMpc
	Wv++YX7naYy4D88anb0iCFsZ0Q==
X-Google-Smtp-Source: ACHHUZ5golxil0e/W6BJ4TEDUe+sdgf27BzQ05eUIRsCUCgqLSWgzqWxOAj1zjkOs3zNleeaZHYFig==
X-Received: by 2002:a17:907:70d:b0:94b:d57e:9d4b with SMTP id xb13-20020a170907070d00b0094bd57e9d4bmr13863359ejb.2.1683705318163;
        Wed, 10 May 2023 00:55:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id de9-20020a1709069bc900b0094e6a9c1d24sm2386066ejc.12.2023.05.10.00.55.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 00:55:16 -0700 (PDT)
Message-ID: <7d426635-1d0b-2317-3b45-fb28b068b0da@linaro.org>
Date: Wed, 10 May 2023 09:55:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/8] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 ports and orientation-switch
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
 Steev Klimaszewski <steev@kali.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Johan Hovold <johan+linaro@kernel.org>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
 <20230510031930.1996020-2-quic_bjorande@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510031930.1996020-2-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_005521_925349_12D90544 
X-CRM114-Status: GOOD (  10.32  )
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

On 10/05/2023 05:19, Bjorn Andersson wrote:
> The QMP combo phy can be connected to a TCPM, a USB controller and a
> DisplayPort controller for handling USB Type-C orientation switching
> and propagating HPD signals.
> 
> Extend the binding to allow these connections to be described.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> Tested-by: Abel Vesa <abel.vesa@linaro.org>
> Tested-by: Steev Klimaszewski <steev@kali.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
> Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
> ---
> 
> Changes since v1:
> - Corrected port $ref
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
