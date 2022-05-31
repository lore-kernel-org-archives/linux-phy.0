Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62198C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 09:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xR8YXTFeamsumsufWg4OT/B+WehNIQ9NPmNuUGGyJD0=; b=kp42V047/uSA/e
	9bX/ytjoSWBPUE8TfKefvascjNJlQR6AhiOkBKF3rSppk3pQUME8pdcKgDQWn1JUpXv0JWfM5/6Fu
	qG1zi5Q9uY0Jk0AgW3lqKiO2hCvstWVDG1rZt7kLq/MExbKav5uHml89kqCVMcZsoWoIWY15OqBb5
	QP4WMVI0GHearcAWJUwJcJgySutuCLnNozPHj3+WF4oNmm0Vqf1Ip6x7IoYYZVElUUDS21RKDM4yQ
	qTi2gyOxG1ZHrlOmfyUp0V26EgY9PFAIOiTtKM62h+v3m8uxbMoA1+mZjVF2ieGPufc2TFv1D7v7H
	cOopW2Iw0oaoa34zh/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxqa-009yNL-NJ; Tue, 31 May 2022 09:07:28 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxqP-009yIj-Ag
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 09:07:19 +0000
Received: by mail-ej1-x633.google.com with SMTP id gh17so25321215ejc.6
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 02:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UwUvzuu9ORqwz/hraOonREo96xs3nOSqxNlTBFgypZE=;
        b=kar5XYO1VTAmZ56H2JIPZLRWvGAjD+4CSVVmQh2um4g4HrA4/5UTY0Tq3KiT7LDJMX
         lfnNg32S6beMbdrMmbPxpER60P99//75TZLShib3nvn5Ajvt1KJpoHSU15uJ0Aok4Fz3
         5YDG8LuumEqmBBK7QJVhRF3Bg/hxzIk2V+lcB6Rc6bRsDxmxLCixXUrShX+JjpEh3bze
         VQIfByvjqsSPcDoI4d/BIKKD/CVipkNyGHuazDdvhPEHNHLxZdNGsyDJ5oCfs/4HxC93
         wDxlqj8J8XUE23FLptgMkkBXCtvZ3QiNqw5ORAH1PRiwSIkZ54AV19xmgmpAb6jbCJSv
         dctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UwUvzuu9ORqwz/hraOonREo96xs3nOSqxNlTBFgypZE=;
        b=orEDzVYAeeGj82bHwKuw2LwEkyVIiJ0XFlZ3qh8yRNX/96kJsvB8pIq2NV3T37dsMH
         7LuMoA9pAs8Im17lgtPX0nR6nGJ6gWAkwJHUKiywPjJqMoeo/T/vuqDlS3bOKreVwRZB
         OeuOCJ1+tSqaU32U3oLuWlwcbSCuxOQaBrAItnJrDgqsLJAYjykrcOSoaB6HEXQK62q9
         UXKJsgvuK6HFYNhUbYbotH5EMWpVEXI9HoclBBxGX1RcbOu9GVrXqaislifHNIDcwll9
         /DmGckIi4yphx3Uyjoz5nesEFNHfK6flBzSvkJVRSQvC+8GaM4ykmRekhBi5XBlgoNqv
         RG7w==
X-Gm-Message-State: AOAM532osYjUOZrCia2n8n25IWdd3am9WDPdqw38IVLHJx/m6hPQgeAK
	FU8oFVG46H+9n8kiwP5qyTqFRQ==
X-Google-Smtp-Source: ABdhPJwnGXjqAl6B9j2R9vyLz34mZE6t/MB3Fh+ibD2kwEbvk0UH/Da16ZROYXOCfPEzGHVGAl1XYg==
X-Received: by 2002:a17:907:9602:b0:6df:e82c:f84 with SMTP id gb2-20020a170907960200b006dfe82c0f84mr51590833ejc.590.1653988033705;
        Tue, 31 May 2022 02:07:13 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o3-20020a170906774300b006f3ef214db7sm4782879ejn.29.2022.05.31.02.07.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:07:13 -0700 (PDT)
Message-ID: <152e190b-2284-b82f-41da-b6cb544eac77@linaro.org>
Date: Tue, 31 May 2022 11:07:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] phy: samsung: exynosautov9-ufs: correct TSRV register
 configurations
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <CGME20220531082658epcas2p1a6f22a304ce8031c39c97daa90372715@epcas2p1.samsung.com>
 <20220531082657.53158-1-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531082657.53158-1-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_020717_413450_A7010ED3 
X-CRM114-Status: UNSURE (   7.74  )
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

On 31/05/2022 10:26, Chanho Park wrote:
> For exynos auto v9's UFS MPHY, We should use 0x50 offset of TSRV register
> configurations. So, it must be
> 
> s/PHY_TRSV_REG_CFG/PHY_TRSV_REG_CFG/g
> 
> Fixes: d64519249e1d ("phy: samsung-ufs: support exynosauto ufs phy driver")
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
