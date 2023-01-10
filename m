Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 933E4C54EBE
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 14:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8kaY5mQPDKbdP4LTFkPhLdiVV0Rfl4JUMzWugbz7F0=; b=BhIXdCe5La4X/3
	t6wJhPhNcTKTgzQOZ7Qj4kYo7T1WpRMtqY1kPEdBz2ioCB3LC+/Ya1L2W4mvT2I+rPhM4TB/QHimh
	mYHBU/AdB+77nr+GBg0U6R17lFX+v6lo14H8RieE8rMdnOCslRUZUlKqiEUCA1NGzQQl5w3s+8KNZ
	CnNBwNBm6j7Ti7sfDDJtl4XAyezyhZoHX62MKLkCPzkZzleJLJdzkDHirtXnDXx8WkE6ZsuMlbPJ9
	d/BKkYL60m9/orCqQZFXEotFPjmKdfaSfea7nv3AswOZUOmk+/tAzvzIXoyvJJMvx2jeaIy2SfmbO
	l31hcc2Vn31Dh+zURcTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFV1-007HDK-Vd; Tue, 10 Jan 2023 14:21:11 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFUq-007H9C-93
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 14:21:03 +0000
Received: by mail-wr1-x435.google.com with SMTP id r2so11911575wrv.7
        for <linux-phy@lists.infradead.org>; Tue, 10 Jan 2023 06:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8wOlYhsSTVgaYdm2eFZoziUvSeaqxeeC4ypm2ZU+u8E=;
        b=kszY69SppzG5Jtt72RWEpPxfZlA++8X+pe4zSpoGzWxZpDO7QjiSUYnre1WyViXAY7
         1iiWRER6HTf6S2w06VNjW9Ek+hfRQxFAU+/IYMI4W4YWwDhrsDtawi7DyBoI6gmGKm1Q
         0+M2MSORAbu8Ba6hwMxISTSe0WTxhTarMF2tgaST8lj4/7xgaDp2/UaXzPEnYNOvOUij
         EPtqNQR2mhoWaHmxONo3dIvRyX7TdO2y6b3ggnCU0qrh6EVfI1aR/JngbZyGd/hTd9+p
         fp43ISUfXPVH4FIk9xYvMeXzZgYFgvbb1N8ezsuiPAXvtlpEWMj2ixCYsKm1FqG4HLpU
         Mvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8wOlYhsSTVgaYdm2eFZoziUvSeaqxeeC4ypm2ZU+u8E=;
        b=yD5zbVTik7+mBSC3LiORSSJ0GKSNI1T91zyU4bMmzIiV1ZuCJSJqzjfLYlyQbKuDE/
         zP5IItwX4/goGX5Sereypm/xLDvgJynrHbH6hd+DemzZ1uOevHyn2cQ9gIQTpBEEnw16
         iWnK/zVe7ewvjn9SVRv7hfbcX+olQYx4x0tHiGI4ES7CNWrDoM1IY9tS5FyywbYbGcEc
         bIv/PahEWTdwqGwudUBSy2pIa6nNKImgi21PB5itOb6OqRAYFoY39uogRp9Wl8JGlG58
         bmIVemteHPwYCsS1ZB3bh2ugpEyWgHtsEtEffu0G18eWyWrseUkjOaun4LKZluUbDm/a
         Xjqg==
X-Gm-Message-State: AFqh2kpXSaxfUN/j2RyVHVDIrL6BjT2+AK191+yHWrWjrTCdjnNzuzN0
	ksuHgp8PsZTLAdqHYvphJdkwKQ==
X-Google-Smtp-Source: AMrXdXsGPm+Lqm6jdep1fxgzxJDhDVBWyqAyOyD8u4pWy8z+Ow8K31O4z7YtMI4EBCBZ0cS02zAcVQ==
X-Received: by 2002:a5d:4bc9:0:b0:2bb:ebaa:7ae1 with SMTP id l9-20020a5d4bc9000000b002bbebaa7ae1mr6343276wrt.50.1673360457917;
        Tue, 10 Jan 2023 06:20:57 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id z2-20020a5d6402000000b00297dcfdc90fsm11284992wru.24.2023.01.10.06.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 06:20:57 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
References:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
Subject: Re: (subset) [PATCH v2 00/11] dt-bindings: first batch of dt-schema
 conversions for Amlogic Meson bindings
Message-Id: <167336045651.1961204.1502592666018702430.b4-ty@linaro.org>
Date: Tue, 10 Jan 2023 15:20:56 +0100
MIME-Version: 1.0
X-Mailer: b4 0.11.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_062100_336470_92A089A6 
X-CRM114-Status: GOOD (  13.12  )
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

Hi,

On Mon, 09 Jan 2023 13:53:25 +0100, Neil Armstrong wrote:
> Batch conversion of the following bindings:
> - meson_sm.txt
> - amlogic-efuse.txt
> - amlogic-meson-mx-efuse.txt
> - meson-wdt.txt
> - meson-ir.txt
> - rtc-meson.txt
> - amlogic,meson6-timer.txt
> - meson-gxl-usb2-phy.txt
> - amlogic,meson-gx.txt
> - amlogic,meson-pcie.txt
> - mdio-mux-meson-g12a.txt
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/drivers)

[01/11] dt-bindings: firmware: convert meson_sm.txt to dt-schema
        https://git.kernel.org/amlogic/c/658a8ef679435959f550a45f7312afaebb9e20a8
[06/11] dt-bindings: power: amlogic,meson-gx-pwrc: mark bindings as deprecated
        https://git.kernel.org/amlogic/c/bc5998b92b9ee8818cc0f7fe02604751389a154e

These changes has been applied on the intermediate git tree [1].

The v6.3/drivers branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
