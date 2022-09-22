Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F4FC6FA92
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjmQYXXVN+TN35O9j6BqyfuFv7AvCPMG56iZC13eZVg=; b=GY38TPxaIqu0yH
	ply2wYgGelpa0qznJU4viweN9Ez8UtREAiajaj3SZIvtLs8KWsd2K4oh1emtKxzX0i4Oe5x47nGMv
	brR2LqQ9q5PDmphcvtQ/rRzpK1wbigw92ToPHdE8KNgrQ9PGajIro6NEUZ/Lm1VkAvPQCAHjrcQfY
	aSqFqxIiNaqLI9PdFI7nd/mdvwuNqql+ByBhs+VGx2bhDuHejW0Nnw1J07KMrJHnGIGaOIXnoCfab
	Hb/Hr9inpIkxMKb2cGG1Dq8DBTaFWUDHjepwflv/Jl6RSiO0Rvcv3q7VmCN14JX0p4G+csPu5ekgC
	p3Bb29ApLQDkTvZOEhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLgX-00FU4l-KE; Thu, 22 Sep 2022 12:52:09 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLgT-00FU2G-Tz
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:52:07 +0000
Received: by mail-lj1-x22b.google.com with SMTP id a10so10944279ljq.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=PNn1OQ2Plf4WVBh8wbrS607nOaHGst3TaPaRJYK7Aak=;
        b=CVGA+9eYGLDgWkSPKlFtUYW7Io1/rFSCvwEMKB7Gs/8EG6JZbR6Klv1N/Ssdfs+JO6
         3Kr1a01uH9k/kaacPBCO4DpAJ4HrfKFcCD7ZgKpoPkG6YHm7RaUDrQB1ciLK6fvi23F+
         LAe8eD4drDrtN1FtQURTmtvpR2coeGjD+xWZt61UNnAOy4+gomuZPUYs+X0rgsqOlE89
         1mk4T0wlxkGlScUZZk+4wtbPpL+LnUTrsbMSOGutcLpxe9NwTsPY9IopfBRrBg1XEaBZ
         ML0D2CDd32mohuD8Xstavzd0cUwk3sfurhLWThgIctivIdhfRmfWDtlydGQS3DGOysSh
         V8tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=PNn1OQ2Plf4WVBh8wbrS607nOaHGst3TaPaRJYK7Aak=;
        b=MwVkLiIbO/wL764Z1jmfW/zbta8zRj/lhst/J0IgqBQx+WBDK2a7TowDJGaWWNTogR
         EofKd0BSHl7zdTOAy3QGGWaEPvg0ZzgAhp60FfvrnscQkqRJomDd3vIQuzJ8Jgq00PSK
         +QSsOTp87RSZeW07FLAHZLPN1XrnN2Ir51WxC99jw/xQgfdAbn2o+9LPXCo8XyAj2KPc
         Vovc5zcyU5ajK4XNJ3Ul6+ZZjm5AB52RZBsUQX1t2BwryOxw+fNsdB2Oc93CDoJPnWDv
         hDM98sQlNVkvyoUmaOdWPX2zg0ngcw0ggE04UkaVvX2fBZ1HHvA0RjIvlaYznXGVgiqP
         3r4w==
X-Gm-Message-State: ACrzQf3Xd1KZFG8gDVVz631a+gKeBWXRkE8y9o46CBv4L3/uxz6oym5B
	F0zyl9rLgEbQf3BlK0DDP/ApqQ==
X-Google-Smtp-Source: AMsMyM5673D4f9tuM/pxeZPs6CGF5k+tgPEYNZ/c3GXJJnsbfS77mWqxFlfpPqoIXPaNAY62naOkMg==
X-Received: by 2002:a2e:b712:0:b0:26a:d1d9:f8d1 with SMTP id j18-20020a2eb712000000b0026ad1d9f8d1mr1100753ljo.271.1663851124500;
        Thu, 22 Sep 2022 05:52:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t7-20020a05651c204700b0026acd11cd51sm904641ljo.59.2022.09.22.05.52.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:52:04 -0700 (PDT)
Message-ID: <179bc9a0-8d11-cc3e-80f6-25bb15325e35@linaro.org>
Date: Thu, 22 Sep 2022 14:52:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 03/17] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195
 compatible
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-3-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-3-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_055206_009796_A1ED8869 
X-CRM114-Status: UNSURE (   7.49  )
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

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add a compatible for the HDMI PHY on MT8195
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
