Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A85B7C43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 07:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2clzTdoFmPwFPMfqek9jptRHuPjva/kw4j9Wy2gB8Ig=; b=XdN/UGPMLu9rAW
	U2HA6K/0RHTZ3BTx8oORh1HfPBoJ2Apm2cXZSY/qD+JL6iE/XT8VbjpT7FlY4FmxZlZ7NcYX/zKaq
	twYcj2Hz04Bn9LVAK4JLexuLte5dr3kuyOQnecnnI/c+exLVW8sBFSIbUzoZ7juHfyZfVWnEWqVdC
	dPEx7dqJ9lyyZIsjvHJsvtGJmU7S2V4KzBlrHLgi0Wq9u5nNOpvDYCn3genok1l6HNQ+DOAIvXclL
	CaHkGAwVDYNzpUGtD8Hjqiz1pf5S+6PrwUYZcavbhdruSzWkPVXVOyLakTvhW56fJ6YdwXEJSG3FL
	3lGTPxVmsRDRexk0DYjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3YiR-004Dni-2f; Tue, 21 Jun 2022 07:54:27 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3YiD-004Dif-L0
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 07:54:14 +0000
Received: by mail-ej1-x62b.google.com with SMTP id cw10so1948458ejb.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 00:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TGYC+CLd/1M+90gJK8/fomR0IeIc2wCPl2XftG7b1eQ=;
        b=GOJ/6dBufOQs/zj+50TNdmUKIpAC87FLuWO1xJhB6j1TTpS+L2sNXMXSSAxNGtGuUm
         meb69bguCusL1BrbM1+PrgqZf79Ag/Y+EpWCNsurXDkqtg0LKUF3J2ScC3Z6ZRBICknb
         Mj1RMLBfpDF3ycYFTlvBu1c+1KvGjKajpjjTkbroNgktweP0B86GRdCdfzx9LVGYgbWM
         KJy2Hdvxd6Hd7gNuTqZX2YcgFYZcoiiRH1LnnBFX6QjFZkbRgVAgF6UB+sHRGrFloDNl
         1A7aMEbgVFzXlaGs0FZRyec0JR7LgnfrkdJLI3Orh1LrXg5DlRF7uMDn7+2qRJS1/TtG
         3D5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TGYC+CLd/1M+90gJK8/fomR0IeIc2wCPl2XftG7b1eQ=;
        b=TikNrYCH6sHlCzkZwP5sbL3rDqLonWvzIhliLfNOznpmkxlTf/79MKMSRdOjfmozGA
         ciCSidkC44/ksGnW8LhUwXDnDGYsdVuBnKfb6Vg1aOj3MFRI1IuQgI3i9+XwqXZrcglW
         /gebZ/LWM9IroR2085LfrJL82anO9+bDTFHg1VrBUK/rLf+AAl6YtWSoj+LyBVQHDUk5
         nEyIsy86Tg+vkfol7mq6LBnbH7HKZSaBbxYUj1RDdbyRiuuAbEZyO/OUyp8d78reUO9o
         SYY63/hpndx0VL9Wh5XgHw0fFilYPIKcZPiRTJ7dXhEgq689kshfV+MKXMA5AWfORDEN
         dPkg==
X-Gm-Message-State: AJIora/G0Igp/Yz4GZaDl8fL8DEVI0ST4uYohvU5eS5Cjo1HQgCeleSP
	8+tXKF9q8iBaXaG8h7x5yY1FAw==
X-Google-Smtp-Source: AGRyM1uqA1FeXdA7Ei4IAR94TJhY69e1fk/nKllBETSu+3zHFfG1fV4TXg6TMSv3VrOLqbYXeneMZg==
X-Received: by 2002:a17:907:2da6:b0:711:d86d:ccab with SMTP id gt38-20020a1709072da600b00711d86dccabmr24360889ejc.356.1655798050004;
        Tue, 21 Jun 2022 00:54:10 -0700 (PDT)
Received: from [192.168.0.216] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l2-20020a056402124200b004357738e04esm6105915edw.21.2022.06.21.00.54.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 00:54:09 -0700 (PDT)
Message-ID: <626cd8f2-8f54-2877-5b73-c0239a243d99@linaro.org>
Date: Tue, 21 Jun 2022 09:54:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add Freescale i.MX8qm Mixel LVDS
 PHY binding
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
References: <20220620123854.1138028-1-victor.liu@nxp.com>
 <20220620123854.1138028-3-victor.liu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620123854.1138028-3-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_005413_716848_F893204E 
X-CRM114-Status: UNSURE (   6.20  )
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

On 20/06/2022 14:38, Liu Ying wrote:
> Add bindings for Mixel LVDS PHY found on Freescale i.MX8qm SoC.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
