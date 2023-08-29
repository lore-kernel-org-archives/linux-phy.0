Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C56F4C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nIAfesceiJ4qw7CKUYIiN8zeXTwz67b2bwos9k8r9Q=; b=UEkHpkO9XNW0Dx
	jMptPplcazXvOjoR2J0WevwmaNln6W6JelxJYnRhZTIyV4q5ZagDEXlZDIAalSxlTzcLrlHBR0Y84
	frf5oEez7RROonv9Mq1kATIp9yOSiYXJ/7l4e7mSGeomYY3cN8BOWOhat4hTk6lUmZbGggng6GMgf
	bgCRUXRmqgANk7CZdHDvNFdyjuGGtECwalvC2fzLnJcUqds+E/eT4Ro958S5VXqnVyaNmyk8Tr8wh
	BLebhEki3T+0rNYJ/DNFZa/A5NrYl//57+zydyEMsxBYJmA65z6QLXl6kr/YeKGhGuPJ0lTkI6s5r
	PJUKPBok54oQaNm8zn4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Pt-00BymR-1g;
	Tue, 29 Aug 2023 17:22:13 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Pr-00BylJ-2p
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:22:13 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99bf1f632b8so629843166b.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329730; x=1693934530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2tJx1LZA2LjgFtn73CfwP5M/IqTnK+MwGx8w31m75yU=;
        b=zhdT4+gqpd6hXl/1AYIMtl2I0Wi+ntmhHwcmBTqkgBdvdiVKuV+a+dl3qf6MAC89Yg
         xtFKR6zdCcg3/y9R9kN0QMBc3eeiglNerx8lEfteQJMddk3E6iZif5l2T9B4XvKrE4ma
         hYV1xLa2w3qc7BFGJIpITAtU+wKnbA5fhNkJSaRIR9+2o36urU0mHIIeYsJkxt6huU8v
         SdEYknF7yo13DKV/C0MCR/50DtwnBGfyf/pCh5qAp0176tnlclQF4fBPE5h/SKyKzi4q
         alj0NninrfISvuwp2iM8QhKKKSXceytX0YvYXWTOUbyrmlluV8qB43btBUzRiXMPYAFy
         NyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329730; x=1693934530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2tJx1LZA2LjgFtn73CfwP5M/IqTnK+MwGx8w31m75yU=;
        b=JGDlRE+Tu9/CTm+nF8J9GxScXoPtbFxK32AZ2Fr9VVtuslIvNUg12Bm4lZs5VlADPC
         ZX3+jdiXQYmnSDAh8v4MlqlTBe0zqB6226KuMgio4lNgw79ifAd7z4xkDCGNWQs1YZ90
         rsRZmiO5ub/JVXfbQdvwcN+JhSe+Yt/baj+McSoCKinurC4GXmxjzBfYqHFkqqO4tcNt
         QpZo7jUM72TLBocual8fMNUKQprjOEIr9AZg8Nrvcd3uRBXVX7OTHE9hPNgawVUqkjhF
         na0AN+LZU25P1jjCTZ5JB+wiG9zo0QRnqUetomV9oMaXMLX+nPgk7FpxaO4L2pJv8/Nu
         GdkA==
X-Gm-Message-State: AOJu0YwYkCrQp7qWLul41b1ucJ5+oGB9FYAJZ8NMNW26Y5z0C8sPqJx4
	Y02XPlxtsV208nAl25NUgCTEJg==
X-Google-Smtp-Source: AGHT+IEkfyuO10UaoAlJW/IYUjOxaNUiUgX99OtB+CD8vi2Z/YeQChXUrbKkNwIR57XqpbHKCgrV0w==
X-Received: by 2002:a17:906:51d6:b0:9a1:d087:e0bf with SMTP id v22-20020a17090651d600b009a1d087e0bfmr15768869ejk.43.1693329730572;
        Tue, 29 Aug 2023 10:22:10 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id v24-20020a17090606d800b0099364d9f0e2sm6189666ejb.98.2023.08.29.10.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:22:10 -0700 (PDT)
Message-ID: <92b8261b-420e-d96a-ba77-9abe7d53b427@linaro.org>
Date: Tue, 29 Aug 2023 19:22:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 04/31] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-5-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102211_920877_834F9540 
X-CRM114-Status: UNSURE (   9.89  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> Add Geniatech XPI-3128, a RK3128 based single board computer.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
