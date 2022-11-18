Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1F06C43219
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:Date:From:MIME-Version
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rwYNobUmJVfECxyKg8EUBZ5IaawuIk5/6mEgZR2Hsns=; b=VfRnflrDWb0Jsn
	7FaTrfmqBWpexfs56qqE0/iV27kA4NPQjEOX0H6OarlHg7t2MjDD9/sq/EO9meaz4kkjY+bgQW3g9
	UO7ur8XulElpTCLDXiuTgfJaukLK07ru3tIemaEKC9jSnMBNKs576FgS9mrhkGO8BFTUyLeko7+1h
	AYt3h9Erg0Ln4cmN5fihnooaTiI7Il4+y75w7z1xCxY/pwMXvPaWxgJIVcKRtjJXLirAQ5lLMjlNJ
	kn6kkh2tGFmiA8C56sRKtNJuDo5xHeZcCAOdRwgg+F2yhCIaNrs+r7kqeG3+WL86jaq9XEbLZsAZI
	qwRVA7jsaaQvercnGtuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3ZP-0052A3-Dh; Fri, 18 Nov 2022 15:46:23 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2Qw-004Tac-6c
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:35 +0000
Received: by mail-wr1-x42e.google.com with SMTP id cl5so9512556wrb.9
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=r1O9HZ8MX1IL7UJAa5JH+dfK6/alNEcaVbgB3wjs4gs=;
        b=F/nX0fPsj2tPLUnIyGh9FdlQJm505Li4kv12GOJg/laM/BN4t1o7cDArjx/hBkOv/s
         lgxBXsILzg3UqegTRvrMY/g/ferTWZJj8KFHeAe6h//THsif+i74kXuNhfuaPJqK8exE
         9y6milsbhIokCYIrHGbaz1nj1kyh0MSZgbsSDAEFr5MZOCvT/UJv6yeq/5nn+Ix5zjsK
         a1LXXpOF9E3Xn45knkRZG/88aQnBk+cXFXtEpf5IWdAnEFI8wisDqHs7j02Ijs0/N+F1
         DIXH3nibBE4L2EWIZdFpN/w3XfzgOEkxsFitChKg+FNLGWp5Y6rSv4iWCqDKToriVsqN
         75qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r1O9HZ8MX1IL7UJAa5JH+dfK6/alNEcaVbgB3wjs4gs=;
        b=tyz1w3j+tXVe2VBq/bCXEFiFJApkvWeqNUdhxFGAKuDM5gshDXw7L3LTQTv6ebNVcT
         ZcN7pDyfpZyDn6RI/sikXeMZWYLnxSmYBdFBlHmdUEeoBtFJvCetRKBB1pTmy37RAtYQ
         JBWprt44U4QwTuCUqhrdQl6Kr9Ytl9t9j+78Cetywlsfpt4bWR5pGqE++S7xAK3dHBJ2
         5IvudwmjGRiMvCOSjbv+ywi0VUeB4Fq52kgSBDCypZ29Jd721cwlpcNWv0EvULs0JRxM
         30vH417S04VPDyJEyG9SqF/19zwB7jWZwbqkU9HIG7aoW9AS6q5EpOBuX5nu6RP62PUP
         LxnA==
X-Gm-Message-State: ANoB5pk0A6mL+qafEVYJ04e4H+Dz4iFL0F+o68xtTu5KFC4v8Vkpg2O0
	gx2hp4Rl8/uARwNSfoqIEVXXiQ==
X-Google-Smtp-Source: AA0mqf6XKcHEDCl9rShqtBbR8Bxs5ZkAhKbK7DnnG5j7Xa9ZYop8ey+c8nEMBxbXJS6hVwShM9KRqA==
X-Received: by 2002:a05:6000:18f:b0:241:a046:91ff with SMTP id p15-20020a056000018f00b00241a04691ffmr4433055wrx.23.1668782010856;
        Fri, 18 Nov 2022 06:33:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:30 -0800 (PST)
Subject: [PATCH 00/12] dt-bindings: first batch of dt-schema conversions for Amlogic Meson bindings
MIME-Version: 1.0
X-b4-tracking: H4sIALaXd2MC/w3MwQqDMAwA0F+RnBcwxenY37RNVgNdCs3mRfx3e3yXd4JLV3F4Tyd0OdS12QA9Js
 h7tCKoPAxhDoGINkwLxm9tRTMmNVYrjrnZIf2HL/kQb09ewsowhhRdMPVoeR+H/Wu9rhu2AOmCcgAA AA==
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:26 +0100
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_063334_291002_55634CE6 
X-CRM114-Status: GOOD (  12.42  )
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

Batch conversion of the following bindings:
- meson_sm.txt
- amlogic-efuse.txt
- amlogic-meson-mx-efuse.txt
- meson-wdt.txt
- meson-ir.txt
- rtc-meson.txt
- amlogic,meson6-timer.txt
- meson-gxl-usb2-phy.txt
- amlogic,meson-gx.txt
- amlogic,meson-pcie.txt
- mdio-mux-meson-g12a.txt

The amlogic,meson-gx-pwrc.txt is removed since deprecated and unused 
for a few releases now.

Martin Blumenstingl was also added as bindings maintainer for Meson6/8/8b
related bindings.

Remaining conversions:
- meson,pinctrl.txt
- pwm-meson.txt
- amlogic,meson-gpio-intc.txt
- amlogic,meson-mx-sdio.txt
- rtc-meson-vrtc.txt
- amlogic,axg-sound-card.txt
- amlogic,axg-fifo.txt
- amlogic,axg-pdm.txt
- amlogic,axg-spdifout.txt
- amlogic,axg-tdm-formatters.txt
- amlogic,axg-spdifin.txt
- amlogic,axg-tdm-iface.txt
- amlogic,g12a-tohdmitx.txt
- amlogic,axg-audio-clkc.txt
- amlogic,gxbb-clkc.txt
- amlogic,gxbb-aoclkc.txt
- amlogic,meson8b-clkc.txt

To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>
To: Guenter Roeck <linux@roeck-us.net>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Alessandro Zummo <a.zummo@towertech.it>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>
To: "David S. Miller" <davem@davemloft.net>
To: Eric Dumazet <edumazet@google.com>
To: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
To: Andrew Lunn <andrew@lunn.ch>
To: Heiner Kallweit <hkallweit1@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-amlogic@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-watchdog@vger.kernel.org
Cc: linux-media@vger.kernel.org
Cc: linux-rtc@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-mmc@vger.kernel.org
Cc: linux-pci@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

---
Neil Armstrong (12):
      dt-bindings: firmware: convert meson_sm.txt to dt-schema
      dt-bindings: nvmem: convert amlogic-efuse.txt to dt-schema
      dt-bindings: nvmem: convert amlogic-meson-mx-efuse.txt to dt-schema
      dt-bindings: watchdog: convert meson-wdt.txt to dt-schema
      dt-bindings: media: convert meson-ir.txt to dt-schema
      dt-bindings: rtc: convert rtc-meson.txt to dt-schema
      dt-bindings: power: remove deprecated amlogic,meson-gx-pwrc.txt bindings
      dt-bindings: timer: convert timer/amlogic,meson7-timer.txt to dt-schema
      dt-bindings: phy: convert meson-gxl-usb2-phy.txt to dt-schema
      dt-bindings: mmc: convert amlogic,meson-gx.txt to dt-schema
      dt-bindings: pcie: convert amlogic,meson-pcie.txt to dt-schema
      dt-bindings: net: convert mdio-mux-meson-g12a.txt to dt-schema

 .../bindings/firmware/amlogic,meson-gxbb-sm.yaml   |  36 ++++++
 .../bindings/firmware/meson/meson_sm.txt           |  15 ---
 .../bindings/media/amlogic,meson6-ir.yaml          |  43 +++++++
 .../devicetree/bindings/media/meson-ir.txt         |  20 ----
 .../bindings/mmc/amlogic,meson-gx-mmc.yaml         |  78 +++++++++++++
 .../devicetree/bindings/mmc/amlogic,meson-gx.txt   |  39 -------
 .../bindings/net/amlogic,g12a-mdio-mux.yaml        |  80 +++++++++++++
 .../bindings/net/mdio-mux-meson-g12a.txt           |  48 --------
 .../bindings/nvmem/amlogic,meson-gxbb-efuse.yaml   |  52 +++++++++
 .../bindings/nvmem/amlogic,meson6-efuse.yaml       |  64 ++++++++++
 .../devicetree/bindings/nvmem/amlogic-efuse.txt    |  48 --------
 .../bindings/nvmem/amlogic-meson-mx-efuse.txt      |  22 ----
 .../devicetree/bindings/pci/amlogic,axg-pcie.yaml  | 129 +++++++++++++++++++++
 .../devicetree/bindings/pci/amlogic,meson-pcie.txt |  70 -----------
 .../bindings/phy/amlogic,meson-gxl-usb2-phy.yaml   |  56 +++++++++
 .../devicetree/bindings/phy/meson-gxl-usb2-phy.txt |  21 ----
 .../bindings/power/amlogic,meson-gx-pwrc.txt       |  63 ----------
 .../bindings/rtc/amlogic,meson6-rtc.yaml           |  62 ++++++++++
 .../devicetree/bindings/rtc/rtc-meson.txt          |  35 ------
 .../bindings/timer/amlogic,meson6-timer.txt        |  22 ----
 .../bindings/timer/amlogic,meson6-timer.yaml       |  53 +++++++++
 .../bindings/watchdog/amlogic,meson6-wdt.yaml      |  39 +++++++
 .../devicetree/bindings/watchdog/meson-wdt.txt     |  21 ----
 23 files changed, 692 insertions(+), 424 deletions(-)
---
base-commit: 094226ad94f471a9f19e8f8e7140a09c2625abaa
change-id: 20221117-b4-amlogic-bindings-convert-8ef1d75d426d

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
