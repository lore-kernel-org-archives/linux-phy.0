Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDC6C77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3EfsTnR/FhELy/Rd9Bj9mfSVIJEQgC2h6UQik+QMgE=; b=vg/66l6tFGCz2P
	TztrxJE8dWrWGdVmZO9gsUrERkP9x2EGz3/+nxNfXS54uFr+Z7ppP25CBUbfPukabOqJrwkkQybMj
	Wi+8FJ4frA79pMPZGLfVqrC2aW5Dpooy71ydszwsiY6xHm9JT2QjSeV+y7P0c4aS9j51Obdy4Fs+f
	fZq19j8vKSvEQfXNIS7c6SFawTFSxxBCE4oUqH6AIrSVxlSNJpZ0CpCfq9F/7fGbNAbAczLihpmw6
	gFlSGklkwJDkd1ZjSuZduTMX8NAuaerDav7T3Cuim5K8fHKNuE48erDKW8smC0PyCSl+UN5WXNCAr
	BAR6Iy+iSJwc35nqB3Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnElW-008h6u-0k;
	Fri, 14 Apr 2023 08:26:42 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnElT-008gzy-2D
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:26:41 +0000
Received: by mail-ej1-x62e.google.com with SMTP id ud9so43527176ejc.7
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681460799; x=1684052799;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cc3XhoVrKsfuWOuFNSb6VleyMIegrRaVdqtu2PiBP6Y=;
        b=bt73naGw+ZXi4dc8Cmhv0FLtGUbeOgrPuV1QMF4QPK4DWhqcDIiQyq2SXqDshVY58+
         9i5EZRohDL67399mm6hHhCeQV/EJor+rJ8VeOerrE+yvaisOQ2EXVIzVKEzSqBMW6Bsj
         /QStpG4ys+runlabZaXcTBjIl7IH/NVwijX7kgLZam1r0Xs+zSdWpyc9iow1Bl3P9Zr6
         qTEXFqfz9+7uepReMSv77u28y+M74JLZY3/yfgzdzoLj7xro2lSoL8qMvur81rANjaL9
         4QuNXgOvOjBgmIoG5TjRbKELD2WjLfk+HiPP6p9vqHmpim7DFpm87T/BjxLYHqgQTBqD
         uyUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681460799; x=1684052799;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cc3XhoVrKsfuWOuFNSb6VleyMIegrRaVdqtu2PiBP6Y=;
        b=mAOO1uiypXO8wHqVKLR4mWmTiz3UziMk8dWXLdlnPm1hVXcG3TLFnzy0ywf/bWoOGY
         WVdPDg1sCTHV0kCJRAHJtckFbPIRIkm6tcTZj47mAgFvJSUEzBKe9nPBONek4Jm4/wD1
         PI7kM//AkXV1e8dnKJRKpZmqdDw/e79kIctdi1A/hkjqSw53L7WJxE0s7E/X55T6wVm2
         4DVcZg9Q7blPZqK93A0ysVRYd2znPYZEXgQIJZuRkVizRykP5Oe4+t+NIu/3MLjNO6tY
         /MRnCTtPbm3gZ7RB0XDBefa8nyhIZ28WZu8ZbqTWu1H09IUmKMFwPba7UN6KIrz0UkkR
         /KuQ==
X-Gm-Message-State: AAQBX9e6nRZwzvE4PCq66gGK+vyyue/wYXA+hqt5YLrUKgYdI5dcJ/Wx
	WfZElqCeK5FkVT47GMFvLZNT2w==
X-Google-Smtp-Source: AKy350ZHB0iX4SpIl6nSdBkIW18ThkfNLzwYurPIDtNAv4p6SmGfIue6rSdxEw2SmolXbx+cb6/kbQ==
X-Received: by 2002:a17:906:b2d4:b0:94e:d17f:eacf with SMTP id cf20-20020a170906b2d400b0094ed17feacfmr2364045ejb.23.1681460799195;
        Fri, 14 Apr 2023 01:26:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id a10-20020a1709064a4a00b0094a4e970508sm2117803ejv.57.2023.04.14.01.26.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:26:38 -0700 (PDT)
Message-ID: <d5580870-a440-a3b7-1c67-26db193a7f8f@linaro.org>
Date: Fri, 14 Apr 2023 10:26:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 09/27] dt-bindings: display: mediatek: color: Add
 compatible for MediaTek MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-10-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-10-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_012639_755991_7F39FC5E 
X-CRM114-Status: UNSURE (   7.64  )
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

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795's COLOR block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,color.yaml     | 1 +

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
