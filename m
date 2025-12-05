Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF43D2CE1A
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	Mime-Version:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YQVWtxXCv1mt7pnr4uFHK8f0ZH0F1lXqE04T1dAlrCQ=; b=lLf
	6mhcxEtxUmTj8SuA0dJ848YQxHGp/rWNlm1EMsS84RtT9nHIORkUpyVNyy3iobu8BnV/sL229PZZx
	QIrrsyswZZ9M+b3NEkIfnJsZ6hFbpskuXSaXZBBvbJ3UgjRsjjs0RddTzACMcIo8L6fUGHOYJkIjU
	ih143ImCSZF5NW1bWzV2kosG28aQ3y7oEWKn3Bj8mkMYA0D5MuFXY49y+ydL1n80zQZJu44wS/ZO6
	QaZRYP4EEMwCYSxyEhtoQevwop/IbpSHF4QpoVedtExXDWdYYzaXam3vgGK8X2xhSjYAF/NJ2TL1f
	qQyuxnckbNl4E99Srdb/7UUezqy2aBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRMtl-00000008zUG-3GkI;
	Fri, 05 Dec 2025 03:54:32 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRMtg-00000008zRo-0rem
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 03:54:24 +0000
Received: by mail-pg1-x54a.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso1884255a12.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 19:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764906857; x=1765511657; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l7o0+wFB0fxZrZrqPCxWWUrX5bGrJiIWd93CpaGi7BI=;
        b=IgehhbvUSLbLYai09m7O8BI7JFiQFw/2T2bF6MkKQnjLZ4fY+lV0F2UGsvAHy+NU9g
         AqpcR2mjZfjeq8HzEhZlbXatbcPxGeZdIxUgShwUPD1Sc92N5nc444Dg4+UtkF0eZu3p
         v2SvL6DFtZs3sWxLLkl7MMSc7qUBdHOVWBhlPdMjDl5lijTZAp9UwxK2x198giOSRO5U
         BY1UFFA9m6DU24bWQKIxAf9nNaM0bhSy2W7+R684JcFKELWS6WMezXOPVsyyuWWa2sK/
         BVUZC7gZfmdw2tfkqggnITHK9SBHKndqCMr6pcCHhp0stC/juyXFatbz/UbOg7ljBax5
         gzwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764906857; x=1765511657;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l7o0+wFB0fxZrZrqPCxWWUrX5bGrJiIWd93CpaGi7BI=;
        b=AMIynWRrg03rA/iE/IbGd0FxF7JswBWqA/8LWkRRj/pbf8ml0Vw3WwvUZk0DG2XzEk
         bpWfb8VVDAos8QDnfJqi95/P0CSbV9q5d8x5aarcBD1xqFWjmbQQwwQ0SvmuN0Cv3bfo
         AxWIu2fezyGB+gie62VXGS5MU1p9763Vi4vGKulJke+B04TjGJt1LoAw6E55Tp5vYhfx
         pRuycLW2ZxdUJdB99XagKfook4MEPs4jm/i4z3Ebs5xfbzsI/iPTRWiRhYd/w9MpVrRU
         ygvDGF8bDAF0uHePa5p9oDYZ/vVM0QwaqhFfKmOMqefhcN2W3SRLoM9HKLlWTF3F1qan
         C3aQ==
X-Forwarded-Encrypted: i=1; AJvYcCVA6m32kuXT30dWu5q7nTOGgG6v9jaCLsaAUv38Udyv0uVTXNZojUNxVmT+7wUhwmI2zXETeE2oN+o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/dE1qtCiFeMDZkLvOr22OTqD64nNc2X36Z+fM0KWQ81BMFepS
	xY5ogP5ZLVeiRQYcNXykosyQyjNayootlINii7g6KWg1akjaxeF2F5qTzwRVX/LilzzF4+OyH+x
	8zEzW2g==
X-Google-Smtp-Source: AGHT+IH/A0OAPzxz4CmbNcZZUtF8cAw99r376uPh69pJveO0mGRkFLKzTyCIyHvM349SWS0rV0K4DyG164A=
X-Received: from dlii13.prod.google.com ([2002:a05:7022:418d:b0:11a:5223:14ab])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:4591:b0:119:e56b:91f2
 with SMTP id a92af1059eb24-11df0c3db04mr5952111c88.35.1764906857360; Thu, 04
 Dec 2025 19:54:17 -0800 (PST)
Date: Fri, 05 Dec 2025 03:54:10 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGJXMmkC/1WOQQ6CMBBFr0K6tqQzlAKuvIdxUcoUmog1RYmEc
 HcLwajLn8x7b2Y2UHA0sGMys0CjG5y/xVEeEmY6fWuJuyZuhgJzAKj4vZtqyZFEpgsjZWUki7f
 3QNa9Ns/5ErcNvuePLpD+0gIrBCkyTDMoclTAgQc/XZ/+1HrfXik1vl9lnRsePkzbT6NalXsex Z4fFRe8VqqSBFYYbX8Na38sfjH4YEXEGquktFohlOIPW5blDWlfJXMPAQAA
X-Change-Id: 20251119-phyb4-2e03a7c449c4
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764906855; l=5157;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=2tc2ueK5yCrImLff3UraB+poQHbzXwYCQ4YuwSh4gbU=; b=YojkW60N+NQkCkHwVLnMl4R03inzTaOCjroXExlpWISnRrpm+AXiY7T2V3KtLHv4XXhd3XQTR
 /m+a8NOa9+IAkbxt94mvHmeS4IkHloJK5WV1R629yUFgzlVOfStluTQ
X-Mailer: b4 0.14.2
Message-ID: <20251205-phyb4-v8-0-c59ea80a4458@google.com>
Subject: [PATCH v8 0/2] Add Google Tensor SoC USB PHY support
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_195420_239031_402F9B34 
X-CRM114-Status: GOOD (  17.38  )
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
Changes in v8:
- Update the Kconfig dependency to depends on ARCH_GOOGLE || COMPILE_TEST
  Note that ARCH_GOOGLE does not exist yet but will eventually
  be there when the following patch lands
  https://lore.kernel.org/r/20251111112158.3.I35b9e835ac49ab408e5ca3e0983930a1f1395814@changeid/
- Mention SoC codename Laguna in Kconfig description.
- Sort the header alphabetically and sort the variables using the
  reverse christmas tree ordering.
- Add driver and binding files to the Tensor SoC MAINTAINER entry.
- Add detailed comment for phy_mutex
Link to v7: https://lore.kernel.org/r/20251121-phyb4-v7-0-df644fa62180@google.com

Changes in v7:
- Change the device tree binding example node name to usb-phy to follow
 the hyphen-separated naming convention and remove label.
Link to v6: https://lore.kernel.org/r/20251120-phyb4-v6-0-b6694e1f0caf@google.com

Changes in v6:
- Use "lga" as SoC name instead of "gs5" to align with Tensor G5 device
  tree https://lore.kernel.org/lkml/20251111192422.4180216-1-dianders@chromium.org 
- Add "usb2_core" to the reg property to define the MMIO space for
  the eUSB 2.0 PHY IP.
- Rename "usb3_top" reg as "usbdp_top" and update the description to
  reflect its nature as a top-level wrapper and align with internal
  documentation.
- Use syscon to access the "usb2_cfg" MMIO space.
- Remove minItems for clocks and resets, making all listed clocks and
  resets (including USB3) mandatory.
Link to v5: https://lore.kernel.org/linux-phy/20251029214032.3175261-1-royluo@google.com

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

 .../bindings/phy/google,lga-usb-phy.yaml           | 133 ++++++++++
 MAINTAINERS                                        |   2 +
 drivers/phy/Kconfig                                |  11 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-google-usb.c                       | 295 +++++++++++++++++++++
 5 files changed, 442 insertions(+)
---
base-commit: 43dfc13ca972988e620a6edb72956981b75ab6b0
change-id: 20251119-phyb4-2e03a7c449c4

Best regards,
-- 
Roy Luo <royluo@google.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
