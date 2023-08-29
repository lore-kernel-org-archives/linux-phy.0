Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D019DC6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX/9Ztz7qEHi+NLXHTl6/3luvcynjjuQHt+HS4yeMkA=; b=s8zM4B4eMdbYGH
	CJYCKhiQRf+QMi8RFMEJKOTPvpiLSvu34OtBL0MKNBXhk8Ro4GBLQ7qclN7np9BK1Whr6HQb1X8Ae
	Nk1oOFPPGJAyz2A02OpNV2aQsf+/EeX61OQn4Az1aN0BLCDYofwbsEUHRRUxqMByxq4jB1HCYxGhv
	x/FStuQZsk42ydBdxGN3JdGRxLV+tuOeAqtNmzwM/WPoVgTCC2m1iHncCsDE8chhHr4xd0s/xbWyu
	TQMSiEC1jECfYzsDCG7AWq6FKPhu3tK8HVf3NH7zCfYIw4Zzk0dR7THd577o2EHCPI7kieozniVMH
	oZJScwmaJ5v9bBk5w7OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2On-00ByV9-19;
	Tue, 29 Aug 2023 17:21:05 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Oi-00ByRa-2v
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:21:03 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50091b91a83so7221215e87.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329659; x=1693934459;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QBKkSL9t38kSqeftJsbciCM+HglFHnwrbKgwPhleq2o=;
        b=WOyiTVlnOOUo6lKsyRU0FN0t4Y0sbAF7/1a9l8mU5zGheftOc2fA41+7bCjl3jMHaC
         SdSdMV2DBKjRnw1tr2HnWisrSnTXsku10i1pwBDD62x096r2AUaZ8gEGrGo3NCJbxgJz
         zv1axfA/ZNKEESvUiu0gC/krrVKl/kGAJfwbyFwsYFIzEIzVkf/feQ3TBotYPHegFQ8y
         Fdle+Z4wZCcxfK+3JbdGH9LGAWOKMXY6nXXMQkDr7d51pdunU2ilmTA/HRTXh2s9cmnZ
         9hm29kl6z4GKDxqVPxPFJ30PJphupOPXQbS5T6+pHdzKUPeEn90N1xu6MxDgkYvi1l12
         U90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329659; x=1693934459;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QBKkSL9t38kSqeftJsbciCM+HglFHnwrbKgwPhleq2o=;
        b=DZ0TkQiwq2EE2Kxqvi7hyPE18HykiV5RnfH+flIq6xcE7ee6li+OFnaBbc7hZigomE
         vK3xLyq+I+fxi7ER841RodNsG+iXSEAU+Effb9V+B+v2JCS0sYDKiVTYMsTUcftZKHwx
         /G1EFrAxZ3NAWbm4iTSn4tOkm2y11WbcPQqi9hasKljKEZOBaGCcD+7LwcffNi19DHX6
         5SQ9jZ3Z0YeIrPkefDHoT/aZyQ3OGABJf5FkDZYBLiuMlJMy/DVWlDJjhvGHdr0dQuol
         0HB4OYYYeb7H7Cp7DxkosSZsQHvpWEDNS/23VKG40yNAwFfcrv52sAP52eanr/HvtsJW
         rlhg==
X-Gm-Message-State: AOJu0YxbRT0uiHXEkFDGvKZBEsjCE1F5mlB5GAnbj9O9qnNUcS4rUzUD
	1BxCy0j36Zo9XfJezzIFYttIRA==
X-Google-Smtp-Source: AGHT+IG/q2ZZ6mJ8wgVf7UkQm2wC4U2oV3GvzNYN1v09DUHmgy8f2+SWpj1f+hhyVjmrfvs8FPGv0Q==
X-Received: by 2002:ac2:4bd3:0:b0:500:ac3:dd77 with SMTP id o19-20020ac24bd3000000b005000ac3dd77mr9085492lfq.10.1693329658953;
        Tue, 29 Aug 2023 10:20:58 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id l15-20020aa7d94f000000b0052568bf9411sm5797806eds.68.2023.08.29.10.20.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:20:58 -0700 (PDT)
Message-ID: <d3fa22f6-22e4-3d15-70d1-d64b2c125ad7@linaro.org>
Date: Tue, 29 Aug 2023 19:20:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 02/31] dt-bindings: gpu: mali-utgard: Add Rockchip RK3128
 compatible
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
 <20230829171647.187787-3-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-3-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102100_959058_1BD56D01 
X-CRM114-Status: UNSURE (   9.23  )
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
> Rockchip RK312x SoC family has a Mali400 MP2.
> Add a compatible for it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
