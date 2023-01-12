Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DD6DC61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 14:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPCM4COZkGWBwvG+gRUmk5+Gvbnrgp8J8qtDTzNAxhE=; b=IkDnqBw77kVIEk
	qNOM4VBKOJewVZ7r4ILk7i320UW3LrBwrUTHJJvgh1HDHp5i1Z9A403DdNuHxfWPfoziuckmiA+Di
	ROTlc/J2+9zf4rbUnQRgiyksgmg4vDHgdWS9Nbg92ERlzYfmR/mAeV4r30X6DZzpN+Cppadf6h+aq
	rPgo0inK7zAry4MYuju0fr1x5m2pRYOBW3jA5cX6yaR4wkCxD9gBZk46KNHeP8ooGr5UkQZcZDlhr
	wwuHyGYCGCyEplfJ/csDT1lydhB4cZkbc275yzOq5egC893gLO9mXw++bORlb7LhIvO1sSjv1OI2q
	6sJ/uZKtlFVpr/5Sdc8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFydA-00FO5o-G8; Thu, 12 Jan 2023 14:32:36 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyd5-00FO2v-Il
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 14:32:34 +0000
Received: by mail-ej1-x62e.google.com with SMTP id u9so45274327ejo.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 06:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X6uMjJS/3NnDxO/SMA/w1sCCelcrWohvr5VsLfwhgYU=;
        b=mA7vp0A3H9QLTwxyxBiSUUJrToUQsdD3hA4dGO+UWGtE2Qz/yTR9suwEI+4Pnf8Bk/
         BSqv+CJKZj4FSkX1ttLb+Bg8f7fw6qbTJawcj5/af+TbuK5U5Lwcg1xfvEpKw6NoRxjK
         GWTZbkLsEVGcO7K4hN0jyhU89xsbhAN5LCd2piTvzt497Wf6NC+7/6xab+9iyKsq6ZMz
         /DorbILM7fePxjSwd23rhthjDEdZfflfpgMO6pNqjx1+51W1dA+X8Z8D24G8kKdIfLw8
         /eWcW7F6D9yDiRroZanlU5vgywk3XoLM8ifoW5kxZmTTnUfm3DEP9kuHFD/mzeKakBcK
         rTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6uMjJS/3NnDxO/SMA/w1sCCelcrWohvr5VsLfwhgYU=;
        b=aIZOqnejuWAWUFjOWlGBYHPkerwuVfPi7yGWxxMWwGNV7T+NAP8CyQrKXphRia91Px
         LVvpUSH/SH+NiJczlA/vjSxRkMDA/3kTqAE4v0VAj5bZQJA+lOj/7JSUA4yiLNxu94RE
         5FtS4SNTadOY8r2jK5NNoJo9PR/8x59ejEMYgceFV3FzheCalX1fwRUqzN6U3BTEzQMy
         82Mno1nnvnsxEg3Uu9M5eormlAevJDrMpJrFWK38VSzw0Md5RbNXwD+lBpRat6ikiHxD
         0qEL4vravHIZbfxOrCCzcrp4FV7iBHkrCaSZan6006rLwA5P3iLv3VZIZXbK2/vPnSU3
         NHvw==
X-Gm-Message-State: AFqh2kpYYsKNSfVTMcoATU/pN1X33JEBVA33dtruRdnYw5EoFcEzEdsa
	p0X1LXVq9PDx561raRSXCBvQPQ==
X-Google-Smtp-Source: AMrXdXsqW8Cd/27xRzj7BYpHe/IRGl8aYcmOsGdFJkLK0wcL6QXh4jaHkK6atMgaLVH69Eft9ugnag==
X-Received: by 2002:a17:906:e11a:b0:84d:13ac:2fd4 with SMTP id gj26-20020a170906e11a00b0084d13ac2fd4mr22014886ejb.17.1673533947444;
        Thu, 12 Jan 2023 06:32:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m24-20020a1709066d1800b0084d4b8f5889sm4623834ejr.102.2023.01.12.06.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 06:32:26 -0800 (PST)
Message-ID: <a6823408-a7c0-9e27-45e5-50305aedb8db@linaro.org>
Date: Thu, 12 Jan 2023 15:32:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8550
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
 <20230112130542.1399921-2-abel.vesa@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230112130542.1399921-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_063232_075394_CBF82D06 
X-CRM114-Status: UNSURE (   7.02  )
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

On 12/01/2023 14:05, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
