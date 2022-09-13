Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87CE3C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 09:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ez/8q4YoIaZ239uhbT4jFA76vNRDtRlsn8MQ9a4IMY=; b=Ibfr8oOTryMbp/
	rDhA/OTmAbl8ITEILMCzmyYFX6GTrGicmVGXs6wznhSk/piSH8Yl1AF25RwTQGTsK51lpJ5JSyxdA
	U7/Yzm7Eo9chTRBmWAtXSNdkNsFcYXJKYbSvIdM6oVrBP0y4XaJ12kxtrRh8Pgdeomo4c8TUKGe8i
	oCthpUJj5U2BWT3RNIhdEJ/wMOSxkNpmaR3RbYYiRGdCxyWgmkgtt46Cz8QrEScax2jLgA+sOiMhq
	D50VEqpcKd4ThblY+cyIDxblky+UxCMTfxfbsRon5TOCxo/ZyIBQ9cZLeQkwRIaebl5ZEBIQhZOV6
	QLRjgzVA5hJQnR3i6thw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY29a-0058a4-Qc; Tue, 13 Sep 2022 09:24:26 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY29E-0058Jx-M1
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 09:24:05 +0000
Received: by mail-wm1-x330.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so9076452wms.5
        for <linux-phy@lists.infradead.org>; Tue, 13 Sep 2022 02:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Z1xC0W4hin+pRPCZPd6aCVe3bFPCOSbaavZwwbQ92NU=;
        b=ZLyA097rO7m9R29VVxGS1LQdv1f2llkfNYcNRH4q4rjcN7JpZJdACp+mS7jftrii++
         +MU3EPYiEqbb/qVL3lUCNFYkCZ2elppzjyydX8EGZ5EYdNuFpOlNUp61afI8POD5Obb1
         adhZ8WsmesMgTYKZl23dsU+FVN5VtXIaCaTF9/nYU/D7ZSV6PX1+Oxe4pgw2rHJwcC8A
         ajlt4rES0tJkgc76z7nQ4MBUUu2+3r+AKqSjmcL4AN7n16InMEylzjuUnX0NhtsGMpUv
         Ddam8Rs8HxWt6MfY25qVNsQhDJDFKnUIkB2qk9FN1OJZF/MInRRitvco9piM+PM7AE/t
         H85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Z1xC0W4hin+pRPCZPd6aCVe3bFPCOSbaavZwwbQ92NU=;
        b=octOwon+l41hpjpbcyeBNOU8GXpp56ZJC3a02pjbb+Gj3nJ1SRQXkvc9+ZyIjajWM+
         5gTuCg0deDKWMSeTXXKmDrW2fdFgjPpElDuXb/d7eAGQn18lic5cy+DuJsRKlbfgXq7p
         J45gFiFwiLop+5pA1W5pZ5ZA+0qut/Wq6JOSHClV2VYX+KR1Vj7BPzuGUCC05hldDhd2
         tRXvlKJP8qWsVQnEhYzhSw+HUonDWZ+8Fg6MkjZndWWWs0VBtgwt1zSv7p1lGhorF+F8
         i1xz2tR9zKqY17PP90gm5fB/2p89LfGi1YHY2CyNyyXnPbPljTiXOn+/6RfVgjHENYPU
         6TdQ==
X-Gm-Message-State: ACgBeo3KZ9eAgvv6+vB+btP76Ra6bi7UVvQimsZWOveoAUcK9vvsUhJu
	CQmL/PLzV50xt6PWHrAyt+P9kA==
X-Google-Smtp-Source: AA6agR5yK7X1AzIN26S9Ej9ya717s4rcc2ki8vtmuLlhX2g9faSGqnSMoYXKIM5ANzadPOx+SIGnSQ==
X-Received: by 2002:a05:600c:4e8c:b0:3a6:11e:cc08 with SMTP id f12-20020a05600c4e8c00b003a6011ecc08mr1670850wmq.198.1663061041001;
        Tue, 13 Sep 2022 02:24:01 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id h14-20020a5d430e000000b00228dcf471e8sm9739989wrq.56.2022.09.13.02.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:24:00 -0700 (PDT)
Message-ID: <41691499-0dfc-8ee7-f767-ba89ea8b320c@linaro.org>
Date: Tue, 13 Sep 2022 11:23:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: ti: phy-gmii-sel: Cleanup
 example
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20220912085650.83263-1-s-vadapalli@ti.com>
 <20220912085650.83263-2-s-vadapalli@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912085650.83263-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_022404_771367_B922452C 
X-CRM114-Status: UNSURE (   7.19  )
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

On 12/09/2022 10:56, Siddharth Vadapalli wrote:
> Change node name in example from "phy-gmii-sel" to "phy", following the
> device-tree convention of using generic node names.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
