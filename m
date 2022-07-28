Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0430AC19F21
	for <linux-phy@archiver.kernel.org>; Thu, 28 Jul 2022 11:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5HDiT5BXJ2iNh6YOVm9BfBGr8bWhN/SbMzQIhb4nsw=; b=VUldVb3n8dF3yk
	GJDcFY9BLk0BwZpZ+vMTEJxLbcXsw/2i9Wd85ggJc5cGZxioGRRkD7R0/CQ4iP0mSHf0zGYuCaaEY
	KqmbOwwCMXP0XN8SIWZ8jLdqmoL4XvWmlCyA2Wtng8lFY89DwmQU9ecwunY8PMzUS8jSe/IJt4iEK
	KyOzsFYLqC0dd360DuOe/5+O9Rs+0KSWM34WCidRkuq+YtEx2MIRzAf9ed08yPAaXlbH27f0Tgp2D
	nJgyDneBZbaL0QVDEhTgr0ZluY7G0zvtElk1I5CpS9h9iAnonuXNFxuPhzKeSGIKYd0Kt6AdC6W98
	PLa5qMNfKHQeijsCNWaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH1zM-008tH2-Ep; Thu, 28 Jul 2022 11:47:36 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH1zK-008tFk-Q9
	for linux-phy@lists.infradead.org; Thu, 28 Jul 2022 11:47:36 +0000
Received: by mail-lj1-x230.google.com with SMTP id h12so1674932ljg.7
        for <linux-phy@lists.infradead.org>; Thu, 28 Jul 2022 04:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=n0GfnOx42koEcO5+/PVzP+w1zirglEDHUOT3VpjHSPg=;
        b=K5NRv5yHc/zPIxFDViCXnDRQ3JPb3CkvlN8nCjU0H+WnC+ZCxaSXgX2CsVyjrvfCc4
         FH3d9VPzUC9U/rbBFX9qZCzeXyPo8/uJ+8o6aqEPvdo+tWKwLPWgNmjG6Bn8CWOGoLPG
         b1WsistX7ROQS/wAoNm2FmksMVGZfx9laqc/6NgODjwEhzoNM1ZrP5W+2EiwiqKjnI4P
         3HYYyTjrSHlrmX759/3nS9CqNSUYCecX/CMVF0xDYsaBwXTQ7IBKEgXe9LGTZ+SvWTi0
         7+3ZZt11Lgzgc9ZH6J5WqvWC9cNV4lDEP08g2heMab2UsLm4y2X/E59OyewWoNCbI0yO
         neTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n0GfnOx42koEcO5+/PVzP+w1zirglEDHUOT3VpjHSPg=;
        b=w5JlOw2VHsmcW9red/h2Zxj15rrAjuE2lodmbuDJKh3GQnmqUqYq0YFFqN/jPq8nql
         an9Bw2/n6mbZ63BF091WVqHyOchzMXmg8YldLfJwZ5GhrJbvZDOit5iRQm5DvsdW6+W3
         wiL3P8H/7hC3mFidvVPonOGruMrCzygTHdNTinOf2arYq5Q5XuNLOmvn9suASa49YQuG
         WPBy0rGKs19X4bhJUNNsxiUaPOPf52eroyfL045JUzVCqe5PydqTKYAvFfXOKYcxj89E
         3bn53Q0W/W6tEUK+R7jU0eYrdcsOd0AXckFLOsEn3khGz3f46bMQiqF+1M0CcKto7MnO
         CMzQ==
X-Gm-Message-State: AJIora+U4/ZWU0M2j9tnhySYsaY8XaLzH7RgKRhXfzrrZxpkyHVmNsu/
	CSI/G275dxt6djcUH8/Egd1QQw==
X-Google-Smtp-Source: AGRyM1v4vjYqO3CkCMpBNTBZ/IKMSVwDPE4TYZ0uxKEVLNs/RiM2204FwMlW7/gwgeSXvTXEKcTw2A==
X-Received: by 2002:a05:651c:118a:b0:25d:e721:a35a with SMTP id w10-20020a05651c118a00b0025de721a35amr9114206ljo.278.1659008851776;
        Thu, 28 Jul 2022 04:47:31 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id u30-20020ac251de000000b0048a9603399csm164412lfm.116.2022.07.28.04.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 04:47:30 -0700 (PDT)
Message-ID: <aef9bae5-b72b-d520-a8e5-8f6a838775eb@linaro.org>
Date: Thu, 28 Jul 2022 13:47:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: add definition for MSM8960
Content-Language: en-US
To: Shinjo Park <peremen@gmail.com>
Cc: David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220728111740.30595-1-peremen@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220728111740.30595-1-peremen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_044734_902768_14B86C93 
X-CRM114-Status: UNSURE (   7.32  )
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

On 28/07/2022 13:17, Shinjo Park wrote:
> Document the changes introduced by MSM8960 inclusion.
> 

1. Thread your submissions.
2. Use subject prefix matching the file.

> Signed-off-by: Shinjo Park <peremen@gmail.com>
> Reviewed-by: David Heidelberg <david@ixit.cz>

It is a v1. How the review tag got here?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
