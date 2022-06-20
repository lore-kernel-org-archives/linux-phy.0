Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD9FC43334
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 10:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8q+H8R4Kqx85kAHGVtsRTkmGPCRjxMMBYJ8NPjSDoOU=; b=YNlN/0iFrJOmBg
	NKPNzDRQTkuJxRYTdRc8WfJ3r1BT4Q4iovDGmMU7BhRNp0hi8s2rqC7hFoCHl7BR9D0fvJq6ErJMT
	g0XnqXNHYpvkUhA1aHyRdR9Bg3T8gVOthV2htImP6eTnv8de/F0CzlEBbE/GwN/+ayZ1gs51++8eC
	VMhYS3R5m4eZOYtqxsuHJRVeN1lj/bSBgWjJ93mgoj+FFP4zr7bOIO44j3E92pHWlzI70o4ePr6I5
	idfoupKzzqPSDbX+4H9o2Sz/fCmA1RXCMYyBsOAvuRRnPITqEdMKYhtsynS7Yglphn7KAacmsVGj3
	NpsqEJehGHSr2gPkDavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Eoy-00HVCA-1x; Mon, 20 Jun 2022 10:39:52 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Eoc-00HV3H-1X
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 10:39:31 +0000
Received: by mail-ej1-x62c.google.com with SMTP id me5so20240975ejb.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jun 2022 03:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Wu7OjQauT8VsAEcCNOR8tTiMvlUSYPeipgtsHwYY4Vg=;
        b=m8op4FixOAAlfFZ7egA7dw9XYWx1MedsRDNb/RiDDswivswf1dRO3JJr8j/dB6U8b0
         wG1V5eA/LYFuOiUxauvTX1kFoE58uC+7lIApV24t1QqUfrlEdBkeiYdRYVgO8VVV5B3m
         jPlzFxqwsU7KOcgnyBRxDPuMzMxryRAXpnoBnH906aLguQ16CafUqTcdhR8ML9FBGAsq
         Q3XTgGHED3qelMs+zISNTJBb66zeIDaCzP4HIuMXZM+Sya3peej5uQ8Sc35IWTB8xPqo
         eFNjunF8X1gBRtP5rVsjNvLSjMAkbL6VLJFinF/mlNcaldTExFi/tx1RsW2mxCD2Fic4
         GftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Wu7OjQauT8VsAEcCNOR8tTiMvlUSYPeipgtsHwYY4Vg=;
        b=TLFl2H6jLOFKZHKu8vRP82ZSy7ePPBn08Lxvbr/wB9PVRhWL+L8W0ggxoJaLn44uL/
         tNQETFEjwByJtfaAXXJqXT2I8593dfyaCQdQva37wvorFMBEhj4e9YJJYFDctqGtERuD
         w8AvZoNvuJMmR7U5Q1kl0hZrEwmk0ywvmo20C1MODu2DFvlz9vizoBcKHai7y4ry/cBT
         RmAPlCubT3fPhf29Q9JOzELiEKLMorUqnIPF7usyq+WJ5Usdj2I9vDSbNrKt3bB1AMG+
         +/0O0e7NZsa3uDjWTmHpjAUwIN8ll1oZnZSwxZ28SlEY0/C0bsLuOTQvkf4+LCbgBTqC
         oq/g==
X-Gm-Message-State: AJIora8+HKp692PwxRL+/qgIpJkFHGrrYVsQ/5T3xT+IhMExxm186pS0
	jvB+/w/KKji5YHdg2FSnV3A66w==
X-Google-Smtp-Source: AGRyM1sOCeciJIgUmFsu++sl3HilovcjqIj6UVBWntWzocHHiukB6fjy1Eq8qCfxMertj/cHx6/Q/w==
X-Received: by 2002:a17:907:7f8b:b0:721:9c02:37f1 with SMTP id qk11-20020a1709077f8b00b007219c0237f1mr9006305ejc.211.1655721566494;
        Mon, 20 Jun 2022 03:39:26 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c18-20020a05640227d200b0042617ba6396sm10335480ede.32.2022.06.20.03.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 03:39:25 -0700 (PDT)
Message-ID: <6e9f17a7-677e-e4b6-54ae-77ad07bf5204@linaro.org>
Date: Mon, 20 Jun 2022 12:39:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add prefix for
 Mixel, Inc.
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
References: <20220620034533.4108170-1-victor.liu@nxp.com>
 <20220620034533.4108170-2-victor.liu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620034533.4108170-2-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_033930_174361_95A91522 
X-CRM114-Status: UNSURE (   6.09  )
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

On 20/06/2022 05:45, Liu Ying wrote:
> Add a vendor prefix entry for Mixel, Inc. (https://www.mixel.com).
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
