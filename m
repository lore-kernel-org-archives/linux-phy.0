Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC437C77B79
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ngPyUJUXsYLmSiJSq820i4RVSLzbMWVZg2eXs82aGx8=; b=MBkJbthDLhLY6l
	kukr0+LTIKMKkh8Ti4wsv/ZAO0O+nbSC+pJgqtaPSHHPsyekNkyDhm5xuRaSt3f6I0SyG8qHk4SaH
	U5tIBOwZZDOo2JT75F2Tyn/faqksHxX1STll1a2ZZAXNwV1IwYKQwwkkz1LiAwRHFs72mtvAr0WqV
	T5qIzsqCNq49ZwwBy/pAYvrVQp//m35TQW30aijLlbRPLqujJz9hpo0KZiE+PL90nDE0VYnNicxVs
	vFqMQmYoFWX+DglfsLKfN01HAhtlK5Ysvbygm44QJO/B/WL8s5fUU1dsw0GZSeapWwzfNR+IuZVOu
	Yx/l1J9Ae3rhOXHXwdlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xa-00Ds34-1T;
	Sun, 16 Apr 2023 13:35:38 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2XW-00Ds1I-20;
	Sun, 16 Apr 2023 13:35:36 +0000
Received: by mail-ed1-x542.google.com with SMTP id 4fb4d7f45d1cf-50672fbf83eso11757236a12.0;
        Sun, 16 Apr 2023 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652132; x=1684244132;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UynXzPPu/DGOhUY3vG4qGCml8HX6Ft9KW/3oejkLCWs=;
        b=FQNN0sb6s9yNnP/CGoXFh3igu4xyIcgaeJPp6zA3NG4A1PMVyPf1FiU2k8/tbyBysw
         FUA+sT19X6zNEqN5kLjgQN3rhf0r04wuIcsXCnlYPJ8p2jbLld2ihtpHCHBMr/sP5Ibe
         49FN7FuuJdWJWH1ofPTtGKAsLruUWcXhAgzump0LmZcFONBwW/sTiu6XJySSG2LM23+O
         ZykDfby1f6p+vgr++p6XK4BoVl6iT6q3cVnKZasmQcbnCuyYHEmh+nku5f2TeFJQ4AaU
         FTQZ0TL74Bp5teic6O3yj/gN5ZDhi3WW8RzJxiwiYN8S+nrgNDkuAtsjOqsqMvqtBRPC
         UNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652132; x=1684244132;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UynXzPPu/DGOhUY3vG4qGCml8HX6Ft9KW/3oejkLCWs=;
        b=gcoGfyAt1aoUlQpMQZ+p1lHOwhanzepik4su7RqOmMlLjljXIn1RBZAIpt+ySi3ZtC
         Y0SBTRwu4KgAAD2dPk0gMwOqRaT1zvyvzNBzkbf8PvBx7E4yyl0ryWVVDpdFhtsFN6Dd
         p0p284aMiaZiuck9vhUBuG5SFfVpOt72Oy6aH3uqdbe8305wZLMTHiPRpHkfRuweI/Xt
         smHprpxccFDht/pM90zftIgBgVNaAeTDG0utKBM6lQhaLdFCjMizzi7UISbSVFGz6zXD
         AHEWJLUVugFqXErFfpbjUa8psXwY8o5Qkobb998EipWxpj6gqTy3xGDVIGsRPsJvk5at
         uPGg==
X-Gm-Message-State: AAQBX9cxxQ+7KyhffRBemTedorMIBoT/hb03LWE5TrWakosTO6OJGerv
	njvTujKwraY9iCkIrK9A7kU=
X-Google-Smtp-Source: AKy350asygcBIZsKMBeNku99Cbv7Vlr8EwyySMjH2lM0enYA55icjSyR1KmoiXcM+WoAFrj6uaFcyQ==
X-Received: by 2002:a05:6402:254a:b0:506:771a:60d6 with SMTP id l10-20020a056402254a00b00506771a60d6mr9675333edb.1.1681652131760;
        Sun, 16 Apr 2023 06:35:31 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:31 -0700 (PDT)
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
Subject: [PATCH v2 00/12] Re-introduce Exynos4212 support and add Samsung Galaxy Tab 3 8.0 boards
Date: Sun, 16 Apr 2023 15:34:10 +0200
Message-Id: <20230416133422.1949-1-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063534_663174_B75EFA50 
X-CRM114-Status: GOOD (  13.68  )
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

Display panel bindings used by the Tab3 DTSI are added in a separate
patchset - "[PATCH 0/3] Add Samsung S6D7AA0 panel controller driver":
https://lore.kernel.org/all/20230416131632.31673-1-aweber.kernel@gmail.com/

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>

Changed in v2:
 - Added note about display panel bindings to cover letter and
   Tab3 DTSI commit

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
