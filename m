Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD76C77B76
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ttsowl3Mv32PoOBYvQSIe1NuqL+8uqpi/144ZJp7K4=; b=s5fq8UdPv3rUFx
	cp6D+iJT1jez6DG61Aeb/nFW30jBr7w+iFi93APMlh4XQiA/0LdWC6CLEkO8/IOEPk1S0iPTrHGoH
	hI4ITVIUNZiA2Xq81Wwcb51DxGJPmigiYeGO+gXv6oxqi09goL/2YFVnpcLREmogjcc5Pi/u9fNcN
	oZeB2I5WHLJJT8FWC8yAXD+MFj11e3cSQnUKagtDU3JaVCnJU6b1jvp9KpcIrPFwXInm82PKdiGrl
	2T+RNjjdyG3DSIFDcOEL0rI1KhzzBWc4Rly6Yg7KfovJdUMVvFj9cms8oni94hCYaOjHnTHKc2U+e
	6b01Adqt4/6xPSX1p7qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSW-00DVTE-0a;
	Sun, 16 Apr 2023 10:18:12 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSS-00DVS4-1f;
	Sun, 16 Apr 2023 10:18:09 +0000
Received: by mail-ej1-x633.google.com with SMTP id kt6so18630646ejb.0;
        Sun, 16 Apr 2023 03:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640286; x=1684232286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lMKv1eC7oXKgQg7kmPBpEEYkcLgFu/zreUxyQ3hjVRU=;
        b=XY2jm6IUO7nOh7iJmLWXmOyrQaQ2zXMn6pKvFRann89LpKvUgmwOJ4vPQxCYYtgl/r
         VHL5qEdKbz4cEa32T3mijCoxrubeICJTC1oz9/SCZMyviJQLMi2owVoreb9Buhr4/On6
         +o2yhR4LpvZkgSUrbVIEN6JQCj+xh2qQYpvQOaE/rBhfkuXWUlon8FcmuFiI9DUUPlfq
         GSxXv2IZ3AKkBNmIGQ1qMt92cC07eFOt0Ask8D23d61JCAwY7jtB1ylHQUY+4l+MsSZ6
         xPDpywU+Y4gJRduqySkVW4gkcY+GLnvnZArfwxLArMPu+F8KS2LsXiVjNmbrJDBY73Id
         5njQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640286; x=1684232286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lMKv1eC7oXKgQg7kmPBpEEYkcLgFu/zreUxyQ3hjVRU=;
        b=BhIsfcLQTA2XIl4ikKYylMYebDH4F8r81o44hFacAbjO9gGucV3c+/9nux5ga7K4Ij
         hQPrNkHI/KewTkIIab/4hWjarViKypt5BWy61KxvEdhpDfmY4ZtM6TKbeOZo2Ctg0J8K
         OHah9XA+GbUb1hFzhpJvq8648DFnXiL65Nn/yHP3UYfkYkJur4UoqQfZDpfWGervWk3Q
         QDT9c/JkO0yxxN52ZJsETRjh2gNVFAHZ5/7dDU3seQX1iCxCHN2vpVmwfdI7mMWWIvSo
         rGW32FQsgsYC3DiLJnml6VJk/wFyEfXenTq8C0QLbWbSylCKED7ZFwHY+iHYdesZAD0F
         CNdw==
X-Gm-Message-State: AAQBX9fzwz4qUmpb4gCeMCfAzYm0gMh+nSZUxdMCJQyrZOMHxIh2M3Y7
	hLEvnLpSeyh9yYCzGJxpXLM=
X-Google-Smtp-Source: AKy350aFxJm7/QXCtBcZGPfDmRrIsMdjN4hcBIIu5aXI7tPRyjlAly8QSDd0d6aOaUWrFr4Ex5a1Pg==
X-Received: by 2002:a17:906:3454:b0:94e:8431:4767 with SMTP id d20-20020a170906345400b0094e84314767mr4666485ejb.38.1681640286211;
        Sun, 16 Apr 2023 03:18:06 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:05 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH 00/12] Re-introduce Exynos4212 support and add Samsung Galaxy Tab 3 8.0 boards
Date: Sun, 16 Apr 2023 12:16:12 +0200
Message-Id: <20230416101624.15866-1-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031808_575529_4417F84E 
X-CRM114-Status: GOOD (  12.89  )
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

This patches re-introduces the Exynos4212 platform and adds support
for the Samsung Galaxy Tab 3 8.0 series of tablets that uses it:

 - Samsung Galaxy Tab 3 8.0 WiFi (SM-T310/lt01wifi)
 - Samsung Galaxy Tab 3 8.0 3G (SM-T311/lt013g)
 - Samsung Galaxy Tab 3 8.0 LTE (SM-T315/lt01lte)

What works:

 - Display and backlight
 - Touchscreen (without touchkeys)
 - GPIO buttons, hall sensor
 - WiFi and Bluetooth
 - USB, fuel gauge, charging (partial)
 - Accelerometer and magnetometer
 - WiFi model only: light sensor

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>

Artur Weber (12):
  dt-bindings: soc: samsung: add Exynos4212 PMU compatible
  dt-bindings: clock: add Exynos4212 clock compatible
  ARM: exynos: Re-introduce Exynos4212 support
  soc: samsung: Re-introduce Exynos4212 support
  clk: samsung: Add Exynos4212 compatible to CLKOUT driver
  clk: samsung: Re-add support for Exynos4212 CPU clock
  Revert "media: exynos4-is: Remove dependency on obsolete SoC support"
  Revert "phy: Remove SOC_EXYNOS4212 dep. from PHY_EXYNOS4X12_USB"
  ARM: dts: Move common Exynos4x12 definitions to exynos4x12.dtsi
  ARM: dts: Re-introduce Exynos4212 DTSI
  dt-bindings: arm: samsung: Add Samsung Galaxy Tab3 family boards
  ARM: dts: exynos: Add Samsung Galaxy Tab 3 8.0 boards

 .../bindings/arm/samsung/samsung-boards.yaml  |   10 +
 .../bindings/clock/samsung,exynos-clock.yaml  |    1 +
 .../bindings/soc/samsung/exynos-pmu.yaml      |    3 +
 arch/arm/boot/dts/Makefile                    |    3 +
 arch/arm/boot/dts/exynos4212-tab3-3g8.dts     |   30 +
 arch/arm/boot/dts/exynos4212-tab3-lte8.dts    |   43 +
 arch/arm/boot/dts/exynos4212-tab3-wifi8.dts   |   25 +
 arch/arm/boot/dts/exynos4212-tab3.dtsi        | 1175 +++++++++++++++++
 arch/arm/boot/dts/exynos4212.dtsi             |  157 +++
 arch/arm/boot/dts/exynos4412.dtsi             |  645 +--------
 ...2-pinctrl.dtsi => exynos4x12-pinctrl.dtsi} |    4 +-
 arch/arm/boot/dts/exynos4x12.dtsi             |  665 ++++++++++
 arch/arm/mach-exynos/Kconfig                  |    5 +
 arch/arm/mach-exynos/common.h                 |    8 +
 arch/arm/mach-exynos/exynos.c                 |    2 +
 arch/arm/mach-exynos/firmware.c               |    8 +-
 arch/arm/mach-exynos/pm.c                     |    2 +-
 arch/arm/mach-exynos/suspend.c                |    4 +
 drivers/clk/samsung/clk-exynos-clkout.c       |    3 +
 drivers/clk/samsung/clk-exynos4.c             |   44 +-
 .../media/platform/samsung/exynos4-is/Kconfig |    2 +-
 .../platform/samsung/exynos4-is/fimc-core.c   |    2 +-
 .../platform/samsung/exynos4-is/fimc-lite.c   |    2 +-
 drivers/phy/samsung/Kconfig                   |    2 +-
 drivers/soc/samsung/exynos-pmu.c              |    9 +
 drivers/soc/samsung/exynos-pmu.h              |    2 +
 drivers/soc/samsung/exynos4-pmu.c             |   13 +-
 27 files changed, 2213 insertions(+), 656 deletions(-)
 create mode 100644 arch/arm/boot/dts/exynos4212-tab3-3g8.dts
 create mode 100644 arch/arm/boot/dts/exynos4212-tab3-lte8.dts
 create mode 100644 arch/arm/boot/dts/exynos4212-tab3-wifi8.dts
 create mode 100644 arch/arm/boot/dts/exynos4212-tab3.dtsi
 create mode 100644 arch/arm/boot/dts/exynos4212.dtsi
 rename arch/arm/boot/dts/{exynos4412-pinctrl.dtsi => exynos4x12-pinctrl.dtsi} (99%)
 create mode 100644 arch/arm/boot/dts/exynos4x12.dtsi

-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
