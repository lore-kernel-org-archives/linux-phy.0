Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FBDFC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoQOZFPizi9PGcECYbNQRsULZr5Xn0KnAAXxPZuwzfY=; b=pqnnQkXvF5ZbNl
	eVo27XRpfjr7Bif84W638Jvdqu3v+IyV+ocVKRm5VZ2ZBrQic8iMATjN+FirxWHSxWkKieqWDE0MG
	nF6ZK6HR5JRU9oncjbL9V+sZ4JAuXuc48Agw+9WPHMB0177srgY923fPYEYyGGjlYTczgwKU7tKnB
	3J3Z1p7gbiCWJfrB81GtUXISaF/Wt9oQae2pyVH0rteV1O1Bnsj6ntm3D3eYPeCHSeOu8Oef2EFF3
	vOrT+DeCOJtLMY55VrYPyNfas2FqVgDYdfctKlDOCQri629WB139TypJsqFHbIXtSN1sS7zl05gfo
	ifi0Etc1yJ8LGsoyqXDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLgB-00FTtw-Lb; Thu, 22 Sep 2022 12:51:47 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLfi-00FTdn-3u
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:51:20 +0000
Received: by mail-lj1-x234.google.com with SMTP id g20so9643121ljg.7
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AcReqp2gEJDplwIiqlXdRZl1+dQuLiAN6jLoyy64CrI=;
        b=vniiXCPYi2uHVswmxrHaLfifuGnTgh31cEiXXDrVozUBpdvgG1p2hAl0Iuww/tOgJC
         51g7fQ3iDc/taoVV7V4GHA31OjtWbcgJMDX+hUwoS5rCcH8Dl+8Stfx1M/7mE1+2Bd5A
         FS/3RYRQ2KRYMI6qPadyS/zKUJ0TBby48SUTUC1KBsX5KZbvKo+hEWmsvOh2eFQKBdcC
         lOXsuuZFZ01TsN9IObctd00VrMglSMuCMpC2mBh7+57odvkGvsZJc7Hl12+6BMPhz4h0
         VlXKpbLhfEODyJm8qT4XpB00JjoItgQhb2I/QFcMCOxYSwJH/kgC8yWpEJ4swhQZGhR5
         5V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AcReqp2gEJDplwIiqlXdRZl1+dQuLiAN6jLoyy64CrI=;
        b=hLlziK6sRBN+tHYnA7K/rEfs2ClfsC0CtQtrFHQYwndyuUQb34cM0tHzzeYZR9W7wa
         ob5Po86vdB+F9z9AOP5xTNKvLYesaRMVQR0imWijFNe4AMoTP2YD+F1GJ54EiKqOTYRZ
         Alsm5Y3+GrvysgOVhMmtl8nbsrAzrhgLe/VerihkmGZTXf4hhgkuGtH11AUNUkYuXiS7
         YgblMLFAE67rXeYsdofE7rjwMOspKFTn6yNnOF/IuQ9A73/fpnXMfRMaZK0U4Q6RWJMy
         p/mBeYdIWTqbfw4snO78T86PylUmZUBSo7mSV8Uh5+jfogs6z5t+nWZ3B4fwmLMRfypy
         otTw==
X-Gm-Message-State: ACrzQf3okNjlTix7JfgSZ9npj1MlEugB3H3Q+Pzr+A9Bmy9WzNBxECxk
	9XfX87uByBQKtAntEVVgUwUD9Q==
X-Google-Smtp-Source: AMsMyM6zFmrBuzTnD7uKlfv9Cfe4AuqBZFpoTZEtb1B6RSpxjj2qH9pnzETt4sbwd+x+Txnu7oQFsg==
X-Received: by 2002:a2e:bf0c:0:b0:260:3df:1bce with SMTP id c12-20020a2ebf0c000000b0026003df1bcemr1096075ljr.117.1663851074490;
        Thu, 22 Sep 2022 05:51:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k20-20020a2eb754000000b0026c64fd8f0csm845872ljo.71.2022.09.22.05.51.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:51:14 -0700 (PDT)
Message-ID: <98e33290-b571-221a-75cd-386ab39a4819@linaro.org>
Date: Thu, 22 Sep 2022 14:51:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 01/17] dt-bindings: clk: mediatek: Add MT8195 DPI
 clocks
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
 <20220919-v1-1-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-1-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_055118_202939_BC88050E 
X-CRM114-Status: UNSURE (   8.38  )
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

On 19/09/2022 18:55, Guillaume Ranquet wrote:
> From: Pablo Sun <pablo.sun@mediatek.com>
> 
> Expand dt-bindings slot for VDOSYS1 of MT8195.
> This clock is required by the DPI1 hardware
> and is a downstream of the HDMI pixel clock.
> 
> Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> Reviewed-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
