Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BF4DC32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 06:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaDuf5Piv7pGQ7KS01gVD8+dVMHGou4nmJRTyJEYHYI=; b=nPjbQuDCP5Bn7D
	uwnnwFyqzhPhWXhqfML7CxuCQvlYzgyLmPFHY7owkRfsa3RhOLOh7Y0aK9Eoe0uS7iHKLe+uzYXHA
	bSWkvy1oTjnrB5MFJ9DPpFTAUDiWLkd4npYPOJ4y+ESaW+VvhjVE30rs23gX/3I/C50Z7LzQRqq0T
	46+4jP2RuFk5x7l//bs09ILqB5J6VghwwMaQ2J12eXY+lctba7E9XeutL1Ph5aX7hK0sr0z/ECIlT
	ViV8fn1CEDUmBNPiuaYnp/LaSCVSz4yDHXJgoPWT20eh0YLegyApg6ksZ+ytSeWwMDA67nt2GnmZ5
	k797UWEiy+W5sMPLrCwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochmj-002PNf-Kw; Mon, 26 Sep 2022 06:40:09 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochl6-002OFi-Ir
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 06:38:31 +0000
Received: by mail-lj1-x233.google.com with SMTP id t16so2274203ljh.3
        for <linux-phy@lists.infradead.org>; Sun, 25 Sep 2022 23:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=W3hxzdrBIum1j0xz9YZTHAUg/0XjqqL/D7mMmLIxdR4=;
        b=ePexRndPURvdCW/6uFFqR/iEiqGsxFN63U0+E7Mw/SDz4ZwwNEHsmVHumFqZeMYCUP
         w8s7D75BCLIzBKqYzi2ogsSYLQfENPA4YBlkAy7xmGIaZVpzOBLJOJBVmSgV8B9AxENp
         4k9tn5vOQllbiqS/XTVubaMGN3+gj9u09UhLCVk0TYFk8T5lw7S/gkcV2EfEw/3L/JMQ
         D1Pt/0hEH58mgxQwVwA1fUt8341UKEQFrik2uQZ70jnH8wajATyMJdZbd8uzdTiFw7/8
         s4sXMk+6hYNL9CHWmFGnedd4ZzjP6bKJB+in83kJvdPYJbbwwdg5MwyBBVmi4j+WhIEb
         IqSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=W3hxzdrBIum1j0xz9YZTHAUg/0XjqqL/D7mMmLIxdR4=;
        b=x3FqzksG56NOiVA1oJSf+05sRMgLK2eG+D8x3gqiP+uTXqrvjqXSoVBZCNlqY5AwVT
         Ec4TLtuQjwgA6fuPuwm7zJEyfXzBw/PxO9CIv+V8Aj6T6DwmD5bGaM2p2cbzh2ax/eCg
         Q27GWT+HqZJtsL580cE1cuAcUKoLS9QnM1Itq81obWZKZnbjBgSCaeiaQkwD3kVvQeVZ
         Weo4MLLaXamEVmerlAIeY8o74z2ForlmplleZh9600iTdofiob0kx8aG57uuevaMdM8z
         Iat3CLbzWXyg/6ncJsBGssrTDuXj9MxGfhr3/+VAdROWmOLfBJxUSI9tDdV3OfEAAxfv
         zU5g==
X-Gm-Message-State: ACrzQf1UiRfU2A3WMVLigpC2Afwa9WmcbKM5KEkTUoa3F2SWMRk0tFJZ
	PEmrD+1gP7iw1HgVQnF+hJHUIw==
X-Google-Smtp-Source: AMsMyM7zYhJnhCTUeUDjnpPqlK+tH954E2LgxBK1i8gOU2GZVXuiyg0sE4TRiLJTrdd7ByA6IdiJnQ==
X-Received: by 2002:a05:651c:a04:b0:26c:50df:75ad with SMTP id k4-20020a05651c0a0400b0026c50df75admr6942132ljq.416.1664174303703;
        Sun, 25 Sep 2022 23:38:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b5-20020ac25625000000b004a050ddc4ecsm1321680lff.125.2022.09.25.23.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 23:38:23 -0700 (PDT)
Message-ID: <bd99a454-8cee-edb9-bc34-ce0be280bd90@linaro.org>
Date: Mon, 26 Sep 2022 08:38:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 15/17] dt-bindings: display: mediatek: dpi: Add
 compatible for MediaTek MT8195
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 Mattijs Korpershoek <mkorpershoek@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, Pablo Sun <pablo.sun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-15-4844816c9808@baylibre.com>
 <e993c25e-f334-e1ca-73f8-58cf141c521e@linaro.org>
 <CAGXv+5FYjj6=WHWBvNRDmpw2Ux8RJ4a2fT1gXk3+eXSqt9poeQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAGXv+5FYjj6=WHWBvNRDmpw2Ux8RJ4a2fT1gXk3+eXSqt9poeQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_233828_658769_B40C757C 
X-CRM114-Status: GOOD (  13.51  )
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

On 26/09/2022 07:24, Chen-Yu Tsai wrote:
> On Thu, Sep 22, 2022 at 3:20 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 19/09/2022 18:56, Guillaume Ranquet wrote:
>>> Add dt-binding documentation of dpi for MediaTek MT8195 SoC.
>>>
>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>>> index 5bb23e97cf33..2c7ecef54986 100644
>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>>> @@ -24,6 +24,7 @@ properties:
>>>        - mediatek,mt8183-dpi
>>>        - mediatek,mt8186-dpi
>>>        - mediatek,mt8192-dpi
>>> +      - mediatek,mt8195-dpi
>>>        - mediatek,mt8195-dp-intf
>>
>> Aren't these the same?
> 
> *-dpi are MIPI DPI (as in parallel data with DDR modes) encoders.
> *-dp-intf are Display Port encoder.
> 
> Totally distinguishable. :)
> 
> The hardware blocks seem similar upon cursory comparison of the register
> tables, with the base layout being the same, and sharing registers for
> basic settings such as the display timings.
> 
> The DPI ones have some extra registers, presumably to control the signals
> or output width. The DP one has some registers of its own that only make
> sense for Display Port.

OK.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
