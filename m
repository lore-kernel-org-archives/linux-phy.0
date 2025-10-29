Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F7A5CCF9EE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 21:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	Mime-Version:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y/40adrg/HRp4vNZdRSQ6fEn+5a1C0wvDQdgPg1hU+U=; b=GzA
	5R8q2hLKdca503xlEFrhbaq0hTPZ6J0IA3OGvLIGRlE07LworgDLxzu1oKSLxlfyieAtI7XHpKPJ6
	yAOYurISC/8V8J2fkrPKDwgC19K9Dq6+o2TdmpGSROL4yTbZJI224xgeTZFb7NDhMpT4itK0V86af
	at09kftRSpXgHYClCF7LYIjLZ/m/9dAaV8R0MpKMaa4Nb7cUNXpt90oLq3ORZu/zwJvguKg8pEKtt
	qlC0koNg3pSaHN/kAEwOiN03CTEz3eZ7g3C5Li8iPqOijMKQsabepYdqLG9uskBOXiJUC9JsDdHe8
	ySaUAzLl+Kqxo6QHxJq9L6la7kJt2Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEDud-0000000302u-36ND;
	Wed, 29 Oct 2025 21:40:59 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEDuc-00000003027-02Br
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 21:40:59 +0000
Received: by mail-pl1-x64a.google.com with SMTP id d9443c01a7336-294a938fa37so5247085ad.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 14:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761774056; x=1762378856; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n1p1oeYfspOx7SSAvPlr7bGgu5n9Q/dCaxclZDr61jg=;
        b=mA4KCXLaXgnSfiB81tNDoy+LNwzlw+AGMB35CYC3YHvQZqwdAxA+DB++S790s6hCEH
         xTc1mHV3CAhDLUAtpwfuLFLzVL7vQhkyP7fzCu0SEjNKW8y9ILcaqwCw+XK28VssHdLV
         Io7/d3+SeOgo4FcpVuKOUYEvJhnW9RC8GflE6UH7zX2cAn0a82+20PJgb1UKrB/OWu1h
         omw0/AU+8W8+ZGjUwCmmiZqdJJduDfnpzRtcP8oe162LSDlUK9dzJ7fGwnIM4EtQ6z6m
         eGVBalZgCmVrEqnX+t3m689U24xwcAXN+t8w+rkA2Af5Lfj6k7Uc/05JUcgTAvun6Rik
         m7Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761774056; x=1762378856;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n1p1oeYfspOx7SSAvPlr7bGgu5n9Q/dCaxclZDr61jg=;
        b=A3gtSjQgGeDYj7+xW7LG5zqlxBJ1lOEkaS0CLdsnAYk0O+av2vMgnkR34hF+3nAMRa
         cqsIXoMXKRiJKvbc04PFqtlFI/eQwgTqulFUPPuu/uhokWs2/Yawx3YsaAR3EYBFLBhi
         2I9GQy0zxlSdDP+7Dx4t5CNOdI5u0FnCxKxaz56csQ12PTmj2V23nOZ0oXo0LsYARXza
         ggBZOgBmRWXFcM6bfJ1bLgz/KFjCIflgjac+A1zz7Vp8LBR/MQ17v/XGUmMzg2N5Gvh2
         k3C6Nm3eo0PNyh6a2ugMWDh5flsC3vDol7fikKbjfkrtGIDGFeh7beX+tk9LW+rYsH0+
         po8Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8hqhX74fu7e18JvJ5ePVGHUvofMnxcOXKlpcMVjjND38jqnHXVO8/5tjFc6DRz+A5vPxrPQgRRko=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+xEJ3rBd6470ZOagl3f/ltCfC23A96HO/A9ZrTg/r0QHzlADQ
	bBHbPGyW3CpdDx6jwlbd6zw3OR17If6Pzetz/Rt12l7haOOalOXs0JBcqvioInGFR22jUOcTiwI
	k6UxvyA==
X-Google-Smtp-Source: AGHT+IEVCwQK+uqTzDFeeOMYHV/ZNZOQw0zJsYdD8Ck4OGRaKkCeRa+O9z2vmnih+ac8NQhsb2enH3x6CnI=
X-Received: from plkn2.prod.google.com ([2002:a17:902:6a82:b0:292:4a9c:44cf])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:3846:b0:267:9c2f:4655
 with SMTP id d9443c01a7336-294deeec254mr49534185ad.41.1761774056444; Wed, 29
 Oct 2025 14:40:56 -0700 (PDT)
Date: Wed, 29 Oct 2025 21:40:30 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.1.851.g4ebd6896fd-goog
Message-ID: <20251029214032.3175261-1-royluo@google.com>
Subject: [PATCH v5 0/2] Add Google Tensor SoC USB PHY support
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Doug Anderson <dianders@google.com>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_144058_048619_386C2652 
X-CRM114-Status: GOOD (  15.67  )
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

This series introduces USB PHY support for the Google Tensor G5
SoC (codename: Laguna), a new generation of Google silicon first
launched with Pixel 10 devices.

The Tensor G5 represents a significant architectural overhaul compared
to previous Tensor generations (e.g., gs101), which were based on Samsung
Exynos IP. Although the G5 still utilizes Synopsys IP for the USB
components, the custom top-level integration introduces a completely new
design for clock, reset scheme, register interfaces and programming
sequence, necessitating new drivers and device tree bindings.

The USB subsystem on Tensor G5 integrates a Synopsys DWC3 USB 3.1
DRD-Single Port controller with hibernation support, and a custom PHY
block comprising Synopsys eUSB2 and USB 3.2/DP combo PHYs. The controller
support is sent as a separate patch series.

Co-developed-by: Joy Chakraborty <joychakr@google.com>
Signed-off-by: Joy Chakraborty <joychakr@google.com>
Co-developed-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
Changes in v5:
- Add usb3 registers/clks/resets to binding as suggested by Krzysztof
  Kozlowski. This ensures completeness of the binding, though the
  driver has not yet ultilized the resources. The usb3 clks and resets
  are optional if usb2-only operation is desired, this is denoted by
  minItems and descriptions in the clocks and resets properties.
  Additionally, rename existing binding entries for consistency and to
  better differntiate between usb2 and usb3.
- Move the description of the phy select to phy-cells in binding as
  suggested by Krzysztof Kozlowski.
Link to v4: https://lore.kernel.org/linux-phy/20251017235159.2417576-1-royluo@google.com

Changes in v4:
- Separate controller and phy changes into two distinct patch series.
- Remove usb2only mode configuration and the corresponding usb_top_cfg
  reg (moved to controller)
- Add more descriptions to dp_top reg to indicate it's not DP specific.
- Add u2phy_apb clk/reset
Link to v3: https://lore.kernel.org/linux-usb/20251010201607.1190967-1-royluo@google.com

Changes in v3:
- Align binding file name with the compatible string
- Simplify the compatible property in binding to a single const value.
- Add descriptive comments and use item list in binding.
- Rename binding entries for clarity and brevity.
Link to v2: https://lore.kernel.org/linux-usb/20251008060000.3136021-1-royluo@google.com

Changes in v2:
- Reorder patches to present bindings first.
- Update dt binding compatible strings to be SoC-specific (google,gs5-*).
- Better describe the hardware in dt binding commit messages and
  descriptions.
- Adjust PHY driver commit subjects to use correct prefixes ("phy:").
- Move PHY driver from a subdirectory to drivers/phy/.
Link to v1: https://lore.kernel.org/linux-usb/20251006232125.1833979-1-royluo@google.com/
---
Roy Luo (2):
  dt-bindings: phy: google: Add Google Tensor G5 USB PHY
  phy: Add Google Tensor SoC USB PHY driver

 .../bindings/phy/google,gs5-usb-phy.yaml      | 127 ++++++++
 drivers/phy/Kconfig                           |  13 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-google-usb.c                  | 271 ++++++++++++++++++
 4 files changed, 412 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
 create mode 100644 drivers/phy/phy-google-usb.c


base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
-- 
2.51.1.851.g4ebd6896fd-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
