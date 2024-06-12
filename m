Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A17E3C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 15:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX66kn1Fciox9BWE7rxPHeD+cDm/pV8O34FlRVAJ0pQ=; b=v8EfLdzscEhWbm
	izmGhFl1udXac91c867vWWl1RK2MwRzzGc6AEY7tI6OZhO5vppr8/GrgVfZm829vngicClDaR/9mN
	DivSkr+Fxxm0/TTu7bsJb3A2zF7K/fWBPp/0BupyMQoYaQ0hKww4YcPxX4U/g3lIoIlvHT2Z2UEUr
	ksPRgKuUZzEiXMS5gD0h8WPFOzSpkZYELwrhd/2q2oQhAQ0vpkstxShVNjyVlzkloMqNaoNL5ktPv
	VD2sJa0XGKNJ8a0SrWydy30Nn1D9CmO0xVQFKspsPv+hqnGwFYU6ZahzyRSy7ghE19WRObwashcBg
	wv4GiI8g7hDGte6MWFng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQ2o-0000000DCkq-1TUA;
	Wed, 12 Jun 2024 15:37:50 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQ2j-0000000DCjk-3piO;
	Wed, 12 Jun 2024 15:37:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E6CD0CE21BD;
	Wed, 12 Jun 2024 15:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20BA0C4AF48;
	Wed, 12 Jun 2024 15:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718206663;
	bh=zEoSv7xC3KbRRieI1G1loz6QJ3w9qP5EAl0oJ/gqkz4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=K2l0gBlRlMxzfHPPadUb5MC23rfAfH7rZy/fErcGjf8ESoZfKwg3dLhrzJPlknrQ1
	 gfPwTQ//4krhGXfnAnzb9EaN1pxIlMsF5Mtwjgf6io5jM/PVsZRPTsjDRMbm66RgAW
	 95U8B74tnEvlGvNdeMSF9Xj0Mkk/iOroBrK7pwuFK2R+GyNaJ5YSb9D+pkkZ/fwYnM
	 hTX2gQ3W1KTCe+2zyqIX1FY4fj9WoKRq0Ivazc0yDHCrQBI+EwB61EeX8eKjU2iQlk
	 0Aso9umyxDPdagefihfHHiMftCRbfgDEpvuYx7lSkgJhUVaiDhSgCflEa/GaNMbEVy
	 uUTbJeMqbNy9A==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ebd421a931so48170511fa.1;
        Wed, 12 Jun 2024 08:37:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWOHjTySDoEjPlF4UyCwHkCkCrAuze51wfBo2ilbgA76/RNTmtSV3Sz9dMfrjeJOK4EMyF8ggHnM1wyyxKytlsNjSwwxtW+gCp7bYRJpv/dXwaY4pNslF3nIlWP9/aZffki554IG3ZClaTsWz0MjgCqw8N9
X-Gm-Message-State: AOJu0YyAP9r+Ru9AwSvQ4sYi6pxQJZ7ViJVrZliJ/4wUYDnlt81cfNWt
	idwgnVEvlBlMTq6G/Xb5sQZo/G3xEZaofnBDgN8plCKEUzyBdLevISqMFU9uJDmMmZZO57J+PT3
	+5RW0CACmGXOXfRp1JWGDXA/lbQ==
X-Google-Smtp-Source: AGHT+IGl+ogyE6sHWGUc90Hvb7mC4rBJ+Ta5I1YQRQJ5YW4/fVcbcLzryqnOqMTHma3GIk0PNss8ABXfmtsFVV4O4fs=
X-Received: by 2002:a2e:8ed8:0:b0:2eb:e840:4a2e with SMTP id
 38308e7fff4ca-2ebfc94de68mr12672271fa.38.1718206661498; Wed, 12 Jun 2024
 08:37:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org> <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
In-Reply-To: <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 12 Jun 2024 09:37:28 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
Message-ID: <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add gs101 compatible
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Arnd Bergmann <arnd@arndb.de>, lee@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_083746_160471_72595911 
X-CRM114-Status: GOOD (  11.67  )
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

T24gV2VkLCBNYXkgMSwgMjAyNCBhdCAzOjE54oCvQU0gQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRy
YXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBBZGQgYSBkZWRpY2F0ZWQgZ29vZ2xlLGdzMTAx
LXVzYjMxZHJkLXBoeSBjb21wYXRpYmxlIGZvciBHb29nbGUgVGVuc29yCj4gZ3MxMDEgU29DLgo+
Cj4gSXQgbmVlZHMgYWRkaXRpb25hbCBjbG9ja3MgZW5hYmxlZCBmb3IgcmVnaXN0ZXIgYWNjZXNz
LCBhbmQgYWRkaXRpb25hbAo+IG1lbW9yeSByZWdpb25zIChQQ1MgJiBQTUEpIGFyZSByZXF1aXJl
ZCBmb3Igc3VjY2Vzc2Z1bCBjb25maWd1cmF0aW9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcsOp
IERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPgo+IC0tLQo+IHYyOiBhdm9pZCBo
YXZpbmcgbmVzdGVkIGVsc2UvaWYsIGFuZCBpbnN0ZWFkIGNoYW5nZSB0aGUgZXhpc3RpbmcgJ2Vs
c2UnCj4gICAgIHRvIGV4cGxpY2l0bHkgc3RhdGUgdGhlIHBsYXRmb3JtcyB1c2luZyAnaWYnCj4g
LS0tCj4gIC4uLi9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCAgICAgICAg
IHwgNjEgKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCkdvaW5nIHRvIHJlc3BpbiB0aGlzPyBCZWNhdXNlIGl0
IGlzIGluIHVzZSBub3cgYW5kIHVuZG9jdW1lbnRlZC4KClJvYgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
