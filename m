Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 189CBEE4996
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 20:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGEp+dmIO+hvf6q/hWQz0brRGa9XMKhqSD1CokhKTB0=; b=jB/9l33mB5Logo
	/kj4tyXrjGcy2Qod91LIn++w5HXZzNIu4hnun7Y2zdKCS69AJYHYfdbkhjOeGN6fHGzXWEzjb0jT8
	urrZQpifhpP5GQWp5q2iN+4iIbxpCcJUD4Xjzh6Y1L8EW4X6hWx4ss3v2k8FFWKlVqLU4f3Ag0MQC
	SCRuO2RPhSg23xUWSXQaDSDmcg4NDT/75yvoo/37Jwc/a/w4UmRGE78LP+Dq+DUKX5zhVWK/jEz2O
	shK6JxYiLsN5lWf9TyZLF5HxWlHw0ebIFeyeTnhi9SCwar1V6FYmqlyW0lHOZTdvgfL9QjEUwSUOG
	CTBdZa3yQUuRhzlsWkYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXp9R-00CSbv-2e;
	Sun, 20 Aug 2023 20:35:57 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXp9P-00CSbb-21
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 20:35:56 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9a2033978so42745801fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 13:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692563753; x=1693168553;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=csI8lozwNJXFKYvp5Xe+6zD1AtXpNCUuV/hvW9zv3fI=;
        b=PrSXuqwwdY9mKi74yvy7vcMyPpHMKgBGLNe8GwaOFrcnru2RNisPqRZNgulVW4tg/7
         8PUTzdHPUP/2snQbRlpYrjWBhkIHgiA5W6joa42j8AzmpB7UGAecxceLkuocdV7L+6of
         eRLzErq3hkYdbI2LSVkeuYGW2unVl3WWtPp2b2qR7V3oVjR9nAHBtjJnuBIY1fDKB3t7
         PMzueAUO1r7yAaJp0J0DDxbrx7Kef9cX36hHxB5XeScai+Nb9/Bbo18XjSjO89g87iW/
         rbX6AP3r8IhYK6Chy2xEmPaxWDiY8L482PYv74w+7MTHgG092SMF0c/8IJJyzjufdQNg
         SB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692563753; x=1693168553;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=csI8lozwNJXFKYvp5Xe+6zD1AtXpNCUuV/hvW9zv3fI=;
        b=FSeQGUYeRGonVcIlrEH/BF7YiV32swdGSih3CuIdPdUbML3l8p85Yg8Xzg9hVZMZ7t
         3DHOO2yvffWfUENkqDKRVxQ8V8DXPrC1lfVu3ujQOu0ceOXFdW01Qc2JZ4V1X21jv8lH
         9jivbcM4jiH8yl+3mfMfIvaIBQ/pXjMkNyKJqDPcgWCaQOZ3iNWGqKZ06xPbFHmj2brc
         1j+9xoElcU0dnksogavGZlk/XREij/guC4Arc5GCp8keosSljrhJJhbXYT/0RntO5pzZ
         kr1V6wnkd3xk6j3v1a4s1EhuQPQfPgDEHXZn4O+ocDCZyfXjUyJcOtfzRJla6vECztuC
         kEqQ==
X-Gm-Message-State: AOJu0Yz6EyZb80OR6+6843zdQPjkab5HER06gf2D2V+Zzj4aw4O8tEGi
	MauDcmZPrfJlkuTTdf/uQFuKzqz7PJ9n+9q6m7M=
X-Google-Smtp-Source: AGHT+IGZjE6rYwA9gmuKFki0x2Cx+rNzYubH8mlYe44hazGbmJCBmIZg+F7UjOQOumBEwQdZPeHscQ==
X-Received: by 2002:a2e:3505:0:b0:2a7:adf7:1781 with SMTP id z5-20020a2e3505000000b002a7adf71781mr3625348ljz.2.1692563753139;
        Sun, 20 Aug 2023 13:35:53 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id d8-20020a1709067f0800b00992c92af6easm5186598ejr.161.2023.08.20.13.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Aug 2023 13:35:52 -0700 (PDT)
Message-ID: <d6dbafb8-cbd5-806e-ed4f-0e08f820033c@linaro.org>
Date: Sun, 20 Aug 2023 22:35:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 02/18] dt-bindings: phy: qcom,qmp-pcie: describe SM8150
 PCIe PHYs
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
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
 <20230820142035.89903-3-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230820142035.89903-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_133555_686366_E0F594B2 
X-CRM114-Status: UNSURE (   6.94  )
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

On 20/08/2023 16:20, Dmitry Baryshkov wrote:
> Descrbie two PCIe PHYs found on the Qualcomm SM8150 platform, single
> lane and two lanes Gen3 PHYs.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
