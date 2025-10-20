Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 370A3CCD1A2
	for <linux-phy@archiver.kernel.org>; Mon, 20 Oct 2025 21:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFjbicbL0ZxHkh5S9Ur+2XyU7b5Cb4OVYHrKNvrb98w=; b=briyH1hJyNR0sp
	w8ikbEqi/lJSB0ERHDb5VK0q5MCJN6lSQrN5BfttCdpUhOdqvo6cUvQn9aQSLFPCRpd1crhmkBTCt
	OcMWgmgJB9NIfWC0chr6JsJtsOBwM23/5P4vyq8sfD/JRiCdbUoYr19+qXY+5wZgS1lFNB76V+WPT
	av2OOQCGtcfUkelieQ6bblhZlntEGULEFdruKsNvWgsPiTl8cL+Xv7XsVW1IKbdW4/kYZ6FIjOqva
	AO3/aBydanua8kgRjHtYfF8baK5m/T8O9Jg3OUIanSy2tA2evLqiGOQttQAxo5VmnUGHCpmtr8emr
	BIJ5juughwZpQM0DzO0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAxXK-0000000F7Au-362b;
	Mon, 20 Oct 2025 21:35:26 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAxXI-0000000F79Z-2Irv
	for linux-phy@lists.infradead.org;
	Mon, 20 Oct 2025 21:35:26 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-71d60157747so49732297b3.0
        for <linux-phy@lists.infradead.org>; Mon, 20 Oct 2025 14:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760996123; x=1761600923; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p+3sYnwm/zVmUqqbZ6Lan1Fe/EeeP/Xr5dbG7CHwG7Y=;
        b=XOVvlSYsYxbULaHIMHnf1VEmM0xR2DLJXtp7kd1hSohcjprn+M0u/t3xDiDzJjzUtc
         7v9sUpXWMhzBViczyZTCwX+d9KaJuu5Dnvwn6aRYyJCGv9+bse43eWlW1sh4shhWX0bZ
         PnMHfuVZtRGBufBNk/JRwljLyR6I5rplxW5XXwZKxHGl3v5Pm/Oq5YY6r6HocCDK+uS1
         MsO4r9fkl+uraoBDTKVsnyZvIzW1akur6JLZa9Z2/YlS6XWbjVDeNQdk8EMUStDquehg
         1F/TZlgL94lYZSMeav5YmgMKcGLsKPC40N7LEOL1YWPPMSGz/iNX2l9t21jPwa/nLeik
         UtpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760996123; x=1761600923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p+3sYnwm/zVmUqqbZ6Lan1Fe/EeeP/Xr5dbG7CHwG7Y=;
        b=ZNh/XU63ulP0MHmQxQ3rUG5Alny87wEAELRrdFYBjcFs+uoLv5MRpLekGCGHJMVI0h
         B+Hu+YNfxbYv4NmUhGtWKiCJQOe+U+7kAEx+Uichyygsa1URMprCa9TjF7ZHvgeBGw6t
         eRenwui3Q+yvhYPydJHxPPuidgS+P8oCMsaYt/3qnQykrmhB5c3KzFFBN+ngxz/t6xfY
         Jbs33PHXTSDIzQo+LEzoAdvVG1bf3gYXRRlRxo30ct9yQc1HluiW+F9TW0/N2ioo4Ncz
         1aDBb4b2NDbK8I374CSHZ7ZEu8Z158WvoVpZGg/Xk6Z4rgizYgC/oc+s+bIMtapbXfcE
         3xMw==
X-Forwarded-Encrypted: i=1; AJvYcCXDCqWOZqRwwBDWjz//3a3EPpqHie/Wl/K4iCZsPzVVv+1VqozTadZCEe4iOaOI2TbgBLnPSbIILWQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNgw6p/PuGHdTmfTjS6WbxWb+ouQNASb6I3uPcT1OuuT/Om3fG
	OB+x18rf5R4zNOk+551PAyON7RI3QIwPJez6U86nXKbGWgmx03xGykjP3zN5mUbihb/2zaiCCxC
	+Uu1QAst+8FzR+/b3x7jE4uHtGoFppsBAT8feSo+0PA==
X-Gm-Gg: ASbGncuWnWBaFHlCs8HdumWPbktktxy0YggMoo/vDkcwi84HEAC3tnPT/9hMRdhhkMw
	HWRbmoKqA2DA+7i4Z16ntzGg2MJVHUHF0CNwfLSw0fMvcEVQMOZvdSbLMrMHoHnicjImemyf+MT
	EulaAaJEwr92oK0vjJDg3ol5PmiWrpsoYInxfu/+UjdeAHwWSxXf4xBLEwtjCAW/Sr2bQuFO938
	uM1INjKoofwcYJKoXowiZFM4UT9da0nh5pcy2n0vGHSMW18ag1bCoEF2nvBD7NUhipoV2U=
X-Google-Smtp-Source: AGHT+IHcbLV8sjcTUSW/kYKLFIDfgxSVgbG/hCotLfs+E1Yurw11PQwO89zUraRAtmdIvysGYrHzIqa+Gk+I+qbLfMk=
X-Received: by 2002:a05:690e:408b:b0:63e:221e:bd38 with SMTP id
 956f58d0204a3-63e221ebe30mr9755360d50.64.1760996123201; Mon, 20 Oct 2025
 14:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org>
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 23:35:10 +0200
X-Gm-Features: AS18NWBAzh5HU2QEiT3WGw7lWd7_MVL73oGUD23tlLIja0Rs_422Nhq3kpTmHsU
Message-ID: <CACRpkdZFXxBY2AopX2bgFGE_nhXmV3YirfRwuo4L6qWzzAC4rg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_143524_591885_07CDD786 
X-CRM114-Status: UNSURE (   9.35  )
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

T24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMToyMOKAr0FNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiB5YW1sbGludCBoYXMgZ2FpbmVkIGEgbmV3IGNoZWNrIHdo
aWNoIGNoZWNrcyBmb3IgaW5jb25zaXN0ZW50IHF1b3RpbmcKPiAobWl4ZWQgIiBhbmQgJyBxdW90
ZXMgd2l0aGluIGEgZmlsZSkuIEZpeCBhbGwgdGhlIGNhc2VzIHlhbWxsaW50IGZvdW5kCj4gc28g
d2UgY2FuIGVuYWJsZSB0aGUgY2hlY2sgKG9uY2UgdGhlIGNoZWNrIGlzIGluIGEgcmVsZWFzZSku
IFVzZQo+IHdoaWNoZXZlciBxdW90aW5nIGlzIGRvbWluYXRlIGluIHRoZSBmaWxlLgo+Cj4gU2ln
bmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KCkFja2VkLWJ5
OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMg
V2FsbGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
