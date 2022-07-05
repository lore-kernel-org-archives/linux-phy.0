Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10A04C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYV4qEQd9zbFFaaDyvuCl+Y3Nw5HAKcDsCWCC/5BP7Y=; b=YW+Qv0C5Cjc+Ov
	UFBw7q6ec0rZOcuipZyvLdZ2/ypjn2bspNP62jo9Jrd6rXr8ox4TcRnRzO/vsLNo1PRAUUP8rY2xK
	qTpe1bYxc8ZEym/ryt4uo0nylXEU1Cnd3AEWeC2W7aQiWLwCqVzXitk8p2JMcbJeGhJKvUbzZKsqu
	oQcAfCEZa+uaRdpeEnB33vl5xrLUoVm4l+NeYU7asg5X1Yu1X6bhDddUf7j+dN0dqSFbj1M2aFNSf
	ACZkPM3DX6omXc5tVHnZjb0Yt9l9+lFBlLNvux+5Pj9wdiulaG4zxpCOyBv/ugH/jgc7Mksyysi1O
	mt5OVYHHy4UZTc9Z4CPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fdy-00H7eg-FN; Tue, 05 Jul 2022 10:18:58 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fdw-00H7dN-9v
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:18:57 +0000
Received: by mail-lf1-x134.google.com with SMTP id y16so19707813lfb.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Y5xxTy64j/IXBvCi+UqEMeFH3+HKluv0ERR26SN793Q=;
        b=ShbD8KVHYEBcL9LRw9qfy6xw+WbCyxIo4MmO6Rco9eNztxwwK+J8EdEpAtS/CSUMnV
         Yl7ja7yrdX+V9ziX5WX7k8C1npjSj1jgJXkOaJubu0OA/1lWKYPiZn+k0U4GJB+p7tM2
         FEiVR2XKuMAGXOB8NeYhzTrdnGSf3m/Tg54XkMoW4lcMVHRwcsIc3kqjfhCntjTGL5K1
         oJOiUFO1ovQqnC2dWlqPmB7ggNstNVUdShx0PxSrodZigDSxnM12cA4jMKOrmyvauJSp
         CNrDou6negNaeAfGGrqTP8PXDCj144N2eWegeRrKY2/xBQi4Q6u/roPrj+x5CawMZiiI
         cXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Y5xxTy64j/IXBvCi+UqEMeFH3+HKluv0ERR26SN793Q=;
        b=W8FQgHdFzwoVZv15vY/Jd5gUD+oRhoy0vuxzw6dJYvPcJXU53z5R+zWd0q0SJdfIgp
         IBLLB+LBODLkllIc+wVXONDr/LsGbCRs7ZAS3CXn4SSd6iMIvM5FlEznhh58O77EH9gp
         1NHDmMpTAUGs20KSN6FBMuJ6NegRKqs6IClh8ngZtCMjLk4AD/7LfgfZWLGirmvm5L0D
         j/WTewBe9CQURpXWT0nbs//4hJCPfh4WKw0WFKpe7rd2xO4B/wM4OnUCVApQ0m7YqnzL
         SPT64JuxDefnBEAeRTZRwCiJrX84cJCBM/QVdHgSeNG7WrWHW5fcog5X+AbdihHV4Yye
         cJdA==
X-Gm-Message-State: AJIora8FjAB8QY7TMmrh716reupUMHpq53mgNf16p8mgKxSwNz61ATwO
	ZmyNQkP8z08pNz2cb+8Iwraz9Q==
X-Google-Smtp-Source: AGRyM1vi/9AQ0rFfXa1qV1eAVB2hWBksCtW/Bu9a8xbqhzOHB3YAxZ1ou0nh9spOXllZ6Lw7YYpMzw==
X-Received: by 2002:a05:6512:1053:b0:481:18b4:a90 with SMTP id c19-20020a056512105300b0048118b40a90mr21331495lfb.22.1657016334548;
        Tue, 05 Jul 2022 03:18:54 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z6-20020a2eb526000000b0025a94f8fadasm5283789ljm.67.2022.07.05.03.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:18:53 -0700 (PDT)
Message-ID: <4ed57143-d182-fef2-7570-a8b000a88f58@linaro.org>
Date: Tue, 5 Jul 2022 12:18:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 18/43] dt-bindings: phy: qcom,qmp-pcie: add example node
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-19-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-19-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031856_372672_35ED6E8F 
X-CRM114-Status: UNSURE (   8.48  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Add an example node based on a cleaned up version of sm8250.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 

Should be squashed.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
