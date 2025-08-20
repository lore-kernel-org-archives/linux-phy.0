Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF33CA0EF8
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s3rgSLjFgNbfWcv/XP0UY7bbnTru8r56KrMmW/Nuq4=; b=M7Wlg2nNURQ3Pu
	wrJNKonwux7um0s8PjSgCNPiCl2lO3NE0v4sYfa08zZs0a/VIBgbI6cj3+F37TLYD1j6rpSl/731S
	UF2nfvib9RdRg5Yo9+16IHJjVrMq5rG30W+bSVz4lUyOitoPDZVjWjLeQnVWnEFhZ8skxsKys1J9d
	6F6ZomSOC+Jg7pjJFOk0lisf3+6RNeTGTTiup2xjEy/7ZqarvkPFQByr/6slwXJqJz0EUkMflA251
	pipwxcRmTz3qHGcdnMcqIcq7t/4I7afOKwyHnCuz8tCqoYrtgfClB6WVtCB4PV0ydPHvjQ7WxCkQv
	+5LpWPhTGDFAZ9e1ZltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofrp-0000000D6m8-0BEE;
	Wed, 20 Aug 2025 10:16:29 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofJQ-0000000CyjD-3bxV
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:40:58 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45a1b004954so45530625e9.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755682855; x=1756287655; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yzzsV1XvsxlzkLd9loB0EUOGKZo196ybFa4QKb2RzLU=;
        b=rQsmkvwlZ61cP2xLZKtS6oD3XwfqKx+yJDtnrqfzj46xBqvtEUOVHuSwFD4IyzUSI4
         aus53xCEAjyy4KyVqkDjWpcqSSYTu8gsDi3M9y+SDG+a3hJaeyzO2n+QeQatgHytLMNE
         1fjx69Pl7NqqjXJubonYIRlwMEsXM9Als2pY5otrLqnm4+q85O4CfPjLSWu0dcj5tfmB
         Xge/404MF8MTFLjj0vNxF0zq2K3TkdIQ6sLerOcBDs5cbYAOc3kL3MyoSSbIsDmbhqQd
         vgpcGCeIHv4mHUwtE7j5jFIw0rMYf05YyVC5sWCJ0tPUF6MQM/AxaycNEn0L719Fy/sE
         WZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682855; x=1756287655;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yzzsV1XvsxlzkLd9loB0EUOGKZo196ybFa4QKb2RzLU=;
        b=mQoFQkbh+LLcZEWsPlQuHG+C+/Vnho2Ks7sF/qa7NG6Xx94JLyVvpchiw6tIqOdAig
         LjUteu6DIz2HFRt0bthXox90aQSaXqfxew85eKWuKr/j/Pu02o7o0hLcxFN2XkRDeLP2
         JGCnDqBJgGgngiLHKYhpS15WxbZw6x7/qywlT+U8Mt/p7uArPxU8F8AaGI8jEaFiWsdS
         3tOsteYYFZO+YEQaIfrMmPqBRyTcd/bzC1bhAicJaVRz8oC30KfqdoO6aHaqe5Tbf5eM
         /FhbDJxCSu8pEdcjMl01B07H1BXha2pdEjei3UNbJfm/HY8u3OImXsPczb2fiuLYS4cw
         Xdbg==
X-Forwarded-Encrypted: i=1; AJvYcCXJqqTyvm10DirJC/D5Lrb1cOCFSkxmWKc0374sgDtIgNjTXjEG67xcDMYaEvwLX+LnP8kzAsDihUc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVDntIGI2HsIhBDHrkIH/+8gNrTAzxfunxHwvNDJ4KdsopruH/
	4HRAsag7KRvNY6T7IFX9WWECjgJIkaN5w4DpIgZ/PID+P2EDW+IEmU3sQxN29Z0xAKE=
X-Gm-Gg: ASbGncskBHrBbqvWTWBuFY2noM4d88ipdl+tNb+BjPu3VH/R/UKuFgcN1sROyfifi9m
	Yv7PTFfCT4SgxvU36awvyNjvedHQQn6Z/0duCaTNtwgsOon9ofscpNc+hPC8NR2W/ogcyWXSQnT
	UtXub3gdKRoubblXQWMh3P/xP2ig7qOQnCLcDSJpgtN7YrJCF0mCv9VrEflsbWrtDhB9Wsu1+/b
	bKc4FkNkza5SQ2xO0nXbqih94e4xMWHtfcG40LsZilA+Y5AJ8lOSA1fP8BhL64xws4i5EhhwYKb
	+HWTbZMEFtXKN23pU1ccHttcJDOTdoZsZF+SCGuigknLu6dbkA5SbWaJJmMH177yo0qSXrGy//H
	nxMxyg9/UEjvwNxkAn+DMh9ey5IkPO0yaFGjdaendmGhaGxg6Th44dDPkmkqote+kFQldWvZPJU
	bSjQ==
X-Google-Smtp-Source: AGHT+IEeghXw0m6JDZS1d5MhVcQIQaVDe3djwuj01U6mfo4wAkk3Pv0FB0hXUATB2KRJRFAtHH/lOg==
X-Received: by 2002:a05:600c:4584:b0:455:f59e:fd9b with SMTP id 5b1f17b1804b1-45b479f3a13mr15577625e9.24.1755682854663;
        Wed, 20 Aug 2025 02:40:54 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:620a:8b00:70df:79b5:b54c:4e1a? ([2a02:2f04:620a:8b00:70df:79b5:b54c:4e1a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b47c4bd0asm24800545e9.14.2025.08.20.02.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Aug 2025 02:40:54 -0700 (PDT)
Message-ID: <31361b5c-32de-4618-bb89-f550f03b47d1@tuxon.dev>
Date: Wed, 20 Aug 2025 12:40:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as
 required for RZ/G3S
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, biju.das.jz@bp.renesas.com,
 krzk+dt@kernel.org, geert+renesas@glider.be, kishon@kernel.org,
 linux-phy@lists.infradead.org, yoshihiro.shimoda.uh@renesas.com,
 conor+dt@kernel.org, magnus.damm@gmail.com, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, p.zabel@pengutronix.de, vkoul@kernel.org
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com>
 <175558495459.3265640.2032619822487575179.robh@kernel.org>
 <20250819133744.GA87211-robh@kernel.org>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20250819133744.GA87211-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_024057_010191_311F62CD 
X-CRM114-Status: GOOD (  11.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi, Rob,

On 8/19/25 16:37, Rob Herring wrote:
> On Tue, Aug 19, 2025 at 01:29:17AM -0500, Rob Herring (Arm) wrote:
>>
>> On Tue, 19 Aug 2025 08:42:06 +0300, Claudiu wrote:
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The reset lines are mandatory for the Renesas RZ/G3S platform and must be
>>> explicitly defined in device tree.
>>>
>>> Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
>>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>> ---
>>>
>>> Changes in v5:
>>> - none
>>>
>>> Changes in v4:
>>> - none
>>>
>>> Changes in v3:
>>> - collected tags
>>> - rebased on top of latest version of renesas,usb2-phy.yaml;
>>>    Conor, Geert: I kept your tags; please let me know if you consider it
>>>    otherwise
>>>
>>> Changes in v2:
>>> - none; this patch is new
>>>
>>>   Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>
>> My bot found errors running 'make dt_binding_check' on your patch:
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>>
>>
>> doc reference errors (make refcheckdocs):
>>
>> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com
> 
> No issue here. The QCom folks have broken "make dt_binding_check" in
> linux-next...

Is patch 3/7 in this series still good? I can't find any issue with it locally.

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
