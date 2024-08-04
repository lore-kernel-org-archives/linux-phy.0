Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDD38C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/+/P24mtaTxXALe8IWxUPBCGeU1OoRFrG5Q42kTn7Y=; b=lCfa6SSWYdIyfM
	x7YuS9pIciPV8OXjy9TPQBKSM+IA+VqdV8lj/tAOG2BnzT4SOvlyDsyeZj7v2lrhGUggBOBO12UJL
	pImG/OOqwxiB/F1taMlh8c7NV8wjTzd+GLa83AeO0jbLyhOWLwOV6903mIYenxYDfaPZ9+9e8x+kE
	IMZp5D6YqN3fGvjGxueUuKujVZlrPl1drq9KllgeMGB2QDz4MYZzAI3ohpzflyHQ33Of/CTj9k9JJ
	y1/CGUjwNFZNk1V4wnTXHAst0+qo0jlyzg7f8rkEbWzsbhSslB/dKsNDKJW8rjjO4PNSmu94IkfaM
	bPsX0UFq4t9tsPY96OLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajBz-0000000DzFi-1l13;
	Sun, 04 Aug 2024 21:55:07 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajBw-0000000DzF4-2jtw;
	Sun, 04 Aug 2024 21:55:06 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52efd530a4eso15341768e87.0;
        Sun, 04 Aug 2024 14:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808502; x=1723413302; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pCexiuddVYJqWOl0RZ40FcRzxOfCT1O1W+s5YZ9iMgc=;
        b=LfJPPSzbJmWAaT+kaIJf/xFcpIWaRTikzEKcvslDLn/bdkwYs5XOymXE1l+6t8Hrct
         Cf7jpnbIymf5bFzg1RdftXK/GpdfWGjtM5p0EJjGg/3Gv3tNiKXFZlC7LD3Y67u2KalD
         j4e5Ji4+ekNRNlLhraJZdy8rLABUCErwDxKXBOSt77pbjk/nbBsbSTG7fn0vHh0PzWBj
         QaO4lxeeudLDvQewz9lpYpAnsUgbdcavI1AwGJDWfInyK+de96aHuTNxtgH+UR6oxTGg
         aFMalFKEjQba9dmtQLrb31bDOTNHUtkJ/twdxnrkw0wPz/+AhUzhf+2pDIPcVt/ZA41o
         AtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808502; x=1723413302;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pCexiuddVYJqWOl0RZ40FcRzxOfCT1O1W+s5YZ9iMgc=;
        b=dALtU7H26AraFgtfqLtpoy1S1RY6G+RThVkwtktMxxNNkc/w9Zrz0jv2B9FosSwcwg
         b3VElWW4lAVpbM2iZHc0fSvsI9OOCrYeNzOXs2D0AbsebN7C1FdT0Juynij0c0OxzRt4
         NXusCznNLPKoxO9jTNhRN7ZQzdJ/HmAV4Ymu9gxBR7EYa/DQ7rqAENkaWzdlPwVP0rNA
         gesuteOtGlzdlKedroZsu6Th9FgXnjuo//dIh4IIfuIb2Zc7razt8PeG0ccTDV3Au0Jm
         qTWi7uGAfANlkOvzDEwbTSdi68Ta+HBj5KQvsiGre56qY3z4qAOhqlHRoF4BdknugoLZ
         mc9g==
X-Forwarded-Encrypted: i=1; AJvYcCWyFaZdzk/OYNGlAkAK/vChjNt6NK3tYieQ/2YnUhVWNQwjxGdx1MzGWJykkjER6pKPpvAmhIYIRI+OTd6mSfQ1OLdra75qDmKUI9kKoOP/E+0SbtI=
X-Gm-Message-State: AOJu0Yzyo40UWDmN4WOHPRm+4EJd2ldSVz8xPM3AUUQ9rnoFUInpCRRk
	HwCwQM44G4vA+3PyAx5+Q5EOQhH0Di5ibY3q7mWgv8JNKkfyxmxl
X-Google-Smtp-Source: AGHT+IFCPz2n+bI1kGoQLioilhFkYLeYs33IRkQdvNgAiTf2rhaF9PMzLiX5ATzV7KlWpxZkXOFHHw==
X-Received: by 2002:a05:6512:3d04:b0:52e:9b15:1c60 with SMTP id 2adb3069b0e04-530bb3a5035mr7252667e87.48.1722808501427;
        Sun, 04 Aug 2024 14:55:01 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:01 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 00/13] Add USB support to Exynos7885
Date: Sun,  4 Aug 2024 23:53:45 +0200
Message-ID: <20240804215458.404085-1-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145504_721119_B5993C19 
X-CRM114-Status: GOOD (  14.93  )
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

This set of patches adds support for USB on the Exynos7885 SoC.

The Exynos7885 has a DWC3 compatible USB controller and an Exynos USB
PHY that theoretically supports USB3 SuperSpeed, but is not implemented
in any known device. The vendor kernel also stubs out USB3 functions, so
we do not support it.

While at it, since we need some new clocks implemented, also fix some
issues with the existing clock driver/bindings.

p.s.: Not realizing the USB PLL has a MUX on it made me waste I don't
even want to know how much time on troubleshooting why it's not
working...

David Virag (13):
  dt-bindings: clock: exynos7885: Fix duplicated binding
  dt-bindings: clock: exynos7885: Add CMU_TOP PLL MUX indices
  dt-bindings: clock: exynos7885: Add indices for USB clocks
  dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos7885 support
  dt-bindings: usb: samsung,exynos-dwc3: Add Exynos7885 support
  clk: samsung: exynos7885: Update CLKS_NR_FSYS after bindings fix
  clk: samsung: exynos7885: Add missing MUX clocks from PLLs in CMU_TOP
  clk: samsung: clk-pll: Add support for pll_1418x
  clk: samsung: exynos7885: Add USB related clocks to CMU_FSYS
  usb: dwc3: exynos: Add support for Exynos7885
  phy: exynos5-usbdrd: support Exynos7885 USB PHY
  arm64: dts: exynos: Enable USB in Exynos7885
  arm64: dts: exynos: exynos7885-jackpotlte: Enable USB support

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  2 +
 .../bindings/usb/samsung,exynos-dwc3.yaml     |  5 +-
 .../boot/dts/exynos/exynos7885-jackpotlte.dts | 20 ++++
 arch/arm64/boot/dts/exynos/exynos7885.dtsi    | 35 +++++++
 drivers/clk/samsung/clk-exynos7885.c          | 95 +++++++++++++++----
 drivers/clk/samsung/clk-pll.c                 | 20 +++-
 drivers/clk/samsung/clk-pll.h                 |  1 +
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 21 ++++
 drivers/usb/dwc3/dwc3-exynos.c                |  3 +
 include/dt-bindings/clock/exynos7885.h        | 32 ++++---
 include/linux/soc/samsung/exynos-regs-pmu.h   |  3 +
 11 files changed, 201 insertions(+), 36 deletions(-)

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
