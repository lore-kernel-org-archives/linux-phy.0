Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 943B9C48BEB
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 22:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJp52eE0bL6oeUUhyRZgFz5PXvfkROxW7UiQFF5bL2A=; b=Ba2nOrie7HfjgA
	l9Itr1kbT9gG+v1zV1PrNjYBRh6+yqVZuD5+WUQ/+o+hC/2ueja4lIjWzuzI4gFMdD0733ZvkTmsG
	pzr78Qd8mQB3XVNYH7yWFGrQOP3oWjYcJgx48nIgDfpIu6JiJWZ3DbC9+js0oSnkK7+wXTZgueiNf
	k616vwSwIsVli8rRG5PEX1lIuKL0Zc+CHKsWoPgSfZvqPJu6J6irfNbwMgp3d42IYz0KcwJJopGCI
	M4EsSVi1ozVWjcpkzVrVAnoISRv9ePI4Sn26lk8PHYunJ1Y8wG0LeJkb3reMFIgUeM3STKtlWHBQ9
	3F6r4p6lorSUKmSnkD9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcuke-00000002khd-0iBi;
	Wed, 21 Feb 2024 22:07:40 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcukZ-00000002kdO-1bsU
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 22:07:38 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-6083cabc2f9so38854477b3.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Feb 2024 14:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708553242; x=1709158042; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cIdAj9Rc9YrdEZf80SuI9gbBcjMeYE4blz3NlBPNkk=;
        b=ShOH+i9VvWiBCSwGmXJeYdc5HZfdesLRn2b0k0Uoj97VM6W+UiCL66SpGAsvUVjrqL
         0km+RQlmz4tBAR/fg9iQ7s7qv8j7GcQuPMFbddZ1M5i9dLnrp/BONo7nkzE1UeERqMKh
         EZkKJbHiD6jYZf2vEObKn2FZhlCjXSZIet1MLLqlbNoeo9yE5rqCNrfPhTQ5mzAQ4DBp
         Yv5KM7vY03yKJ+4TbMy2Fu4U1tAQOlAuL7w4GbcBAwZ3SbTVMJJbK+a5KQoHk4QJCE5M
         tPg3l30FnwTWZHC5F83/R1INaiQamCbgVqVCN15hvKxT6Y8cYZ/8h5/PSoHCoH8HUpGF
         5Kzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708553242; x=1709158042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1cIdAj9Rc9YrdEZf80SuI9gbBcjMeYE4blz3NlBPNkk=;
        b=LJ7hAiui6T6HWFpbTXOt6Mb+xcWthMWgzguxxm1fsxfz5bV8137WUFP7eoZkE4NJUz
         ZMD4UI5Cq7fjlpCs3foj7mq8RS122tFH6oLENP3X30lb7sr9lGecR19JPTPTInQsZiFa
         VN2l8MEIINHota0Lx9q+5SaE3W48JFyPCj+mK2eHWAdDS9EHUAOxaC3uIGl89WNL+X2M
         h83xCZV7THa1+hwe2Pi2pDyUMs/4xPRrVl1N+kzFvntz+Eo1tZBqNIPp/ChRA+/7I/5m
         2Qv3XzGBq3B4YcE8x3J5WeEmClalt9HXAII9uTBMZPUaynoXyVPGwr10xaBdpHmSZNFR
         EWPw==
X-Forwarded-Encrypted: i=1; AJvYcCURe0Ure3X4zC8ZaC8P5fl/spuuNPD9izt81lPe5Lb9NzTpSQD3TvPd4RqFkYck/NcTKsxtXMho6T+B7+X1aE0XoUs9e/kQEbiRarHC3w==
X-Gm-Message-State: AOJu0YwvELahdCR2Q/MYEGcKFTwSkvzWJXp5gHeQ0kw44hRQEQayj4tT
	r6V81xAgWvuXgD9HSsKXjnTxpS4gctzUyiFCkRv8Ixog59tLWxLx6a2soDIIZYWdpKtYGqbVJ7d
	x/Pk+zrbsd/L4l+dsMBasyse8/8JNfXJSO/+Kcg==
X-Google-Smtp-Source: AGHT+IHcXCkZHHGUkDm2xvIgiK6VurrE3eAJdP/r6uC/vcQd0YLTd8DmYtHQlaiiKrj98oMZezfQEBryKYUS8JEchGY=
X-Received: by 2002:a05:690c:86:b0:607:d9f7:e884 with SMTP id
 be6-20020a05690c008600b00607d9f7e884mr20419761ywb.4.1708553242109; Wed, 21
 Feb 2024 14:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20240217093937.58234-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240217093937.58234-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 23:07:11 +0100
Message-ID: <CACRpkdajVH4Y2K5W+o5XAoiEr57ObVbaR+9QdFV=Cp765B+dfQ@mail.gmail.com>
Subject: Re: [PATCH] phy: constify of_phandle_args in xlate
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_140735_466326_38CC0259 
X-CRM114-Status: UNSURE (   7.07  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBGZWIgMTcsIDIwMjQgYXQgMTA6MznigK9BTSBLcnp5c3p0b2YgS296bG93c2tpCjxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBUaGUgeGxhdGUgY2FsbGJh
Y2tzIGFyZSBzdXBwb3NlZCB0byB0cmFuc2xhdGUgb2ZfcGhhbmRsZV9hcmdzIHRvIHByb3Blcgo+
IHByb3ZpZGVyIHdpdGhvdXQgbW9kaWZ5aW5nIHRoZSBvZl9waGFuZGxlX2FyZ3MuICBNYWtlIHRo
ZSBhcmd1bWVudAo+IHBvaW50ZXIgdG8gY29uc3QgZm9yIGNvZGUgc2FmZXR5IGFuZCByZWFkYWJp
bGl0eS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KKC4uLikKPiAgZHJpdmVycy9waW5jdHJsL3RlZ3JhL3BpbmN0
cmwtdGVncmEteHVzYi5jICAgICAgICAgfCAgMiArLQoKQWNrZWQtYnk6IExpbnVzIFdhbGxlaWog
PGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
