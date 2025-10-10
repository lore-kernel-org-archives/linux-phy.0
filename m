Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1965CCD185
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 20:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	Mime-Version:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BZmxsqEnpvQUVTsZQNUEsvaqbCuGK/GsqR2xWdNufwQ=; b=Yi2
	Ju5E2ZmYhoBI3CZwHd+TGBdEQq5sGmg0GgAnymZIjFudM6j6OOOE7WA50u3xRLV5RTWo/fNdCngXu
	KyznsmHXpyOdAqf1BQwYqAEs8y+UreDtMWOGDkjW1xv2mCkoHxntuuKsTux9vapaI8XGB6ybNdAJQ
	aG+MIq3E9henPvADEENaZFQl5Ap9cNdcPSeWmsxcskNmlf306ouqtTxa8wZ4LI4u85xHNWma3/ZCg
	uRcU7WOSNmE2V06ndTpsByYv/r7LeP0X4MSuB3IRHyQUVsXwmMd/PSHJXwI7qhnMtNl3RqVhy0xA7
	kMdCtVI4iO1zAr98hTTD8dVNhOFQGbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7JXH-00000009IQN-2QDZ;
	Fri, 10 Oct 2025 20:16:19 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7JXE-00000009IPb-1vUR
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 20:16:17 +0000
Received: by mail-pf1-x44a.google.com with SMTP id d2e1a72fcca58-783604212ebso7331150b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 13:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760127375; x=1760732175; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=estI8qEVcPVY31PTAjZ7lIjF6tdHShVWJ6+L1IGJmXg=;
        b=RNgpeAsmkdTABb6sjw1/AQwt17W8D5SVJceexxTszd05wPi/3Bj0VBgQQBRpxA+1yy
         OvKQfwrUPVjbSem+PWhR17bzq8Ez/GPMuom7GfI2mFNymQQTOSo0RIs8m3tnxo4fTKom
         Trv4f8lZGUEJyBz4MzNNHgQ+2al7wIwUXG29KAWXv8qy/+mXhKQc3sbBewaZ9lZxteDw
         4bok9BNlDpNMpb4ReLlQz3sPIa6IA47jHRyVKV794QN192XQ8nnAxGPJ/iLIWPoaGatr
         n+QyWgruVGEpSsANAIiGe275LkKBzWE9RMc93giRYRnP0efCP17T8aQc58YgsbzClqNT
         h8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760127375; x=1760732175;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=estI8qEVcPVY31PTAjZ7lIjF6tdHShVWJ6+L1IGJmXg=;
        b=BmUB1lD/6nWlCSq68OryeBTh/RQzEFBODJzjk+qlfimSCq3i8F8RkWzTKcEfNj7g06
         zG5+6kX/na+gRrX27/5qMRgs4YmF2kZGoA5i7wSV3F5DEc/F++VI8Al8e2wgdykdfp1N
         +Oarfg3VqERcrlZepRziiGYg0K1W6fKY5qA7aETXlyZYzsqPKsSUC7ZHt5ZGIPt2FeQe
         SjxD5NbOQXzVGLrse/m5/kks/WM+fcdFDt0k6Y9La3+qnqYcTz2iC4Kigew7CC6La3ug
         QqvxeZ+vc5CUXZt16Zx4BFSBUYg2FaKrGr/FcfQfZgycrnzMOQM+umpZebqZHgOv7JOC
         FVZA==
X-Forwarded-Encrypted: i=1; AJvYcCWRc9Hzv6cRrE6IgIXgZvpBqNQ7pzsrwFt1HLKFsofptGoOn09INyygKCMJSQCWcujg2akvef+vo/Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywl5+Hp0mY1xrakch4AQ0rFZGHqVqv4EbAj+xRslhD9uFionmw9
	349bd1dMV1GSXjiqOQCla8pw34mR8wHkaUCfkdIRg0z4ACAC5N2tjTqyqXQCP4Xem1Gw48axFP0
	fxiV3pQ==
X-Google-Smtp-Source: AGHT+IFJD5qJ8MoWXYq3MeKta2yygNl8qvdxme+xxEYvwMoAACneZQcghqeTL0yFWDPZvoSjrD0dclHeIIM=
X-Received: from pgjq5.prod.google.com ([2002:a63:e945:0:b0:b47:34d0:d386])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6a20:2595:b0:2fa:26fb:4a5c
 with SMTP id adf61e73a8af0-32da84edd1bmr17849128637.59.1760127374950; Fri, 10
 Oct 2025 13:16:14 -0700 (PDT)
Date: Fri, 10 Oct 2025 20:16:03 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.0.740.g6adb054d12-goog
Message-ID: <20251010201607.1190967-1-royluo@google.com>
Subject: [PATCH v3 0/4] Add Google Tensor SoC USB support
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_131616_492557_520C41F0 
X-CRM114-Status: GOOD (  12.55  )
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

This series introduces USB controller and PHY support for the Google
Tensor G5 SoC (codename: Laguna), a new generation of Google silicon
first launched with Pixel 10 devices.

The Tensor G5 represents a significant architectural overhaul compared
to previous Tensor generations (e.g., gs101), which were based on Samsung
Exynos IP. Although the G5 still utilizes Synopsys IP for the USB
components, the custom top-level integration introduces a completely new
design for clock, reset scheme, register interfaces and programming
sequence, necessitating new drivers and device tree bindings.

The USB subsystem on Tensor G5 integrates a Synopsys DWC3 USB 3.1
DRD-Single Port controller with hibernation support, and a custom PHY
block comprising Synopsys eUSB2 and USB 3.2/DP combo PHYs.

Co-developed-by: Joy Chakraborty <joychakr@google.com>
Signed-off-by: Joy Chakraborty <joychakr@google.com>
Co-developed-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
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
Roy Luo (4):
  dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
  usb: dwc3: Add Google Tensor SoC DWC3 glue driver
  dt-bindings: phy: google: Add Google Tensor G5 USB PHY
  phy: Add Google Tensor SoC USB PHY driver

 .../bindings/phy/google,gs5-usb-phy.yaml      |  88 +++
 .../bindings/usb/google,gs5-dwc3.yaml         | 141 +++++
 drivers/phy/Kconfig                           |  15 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-google-usb.c                  | 286 +++++++++
 drivers/usb/dwc3/Kconfig                      |  10 +
 drivers/usb/dwc3/Makefile                     |   1 +
 drivers/usb/dwc3/dwc3-google.c                | 597 ++++++++++++++++++
 8 files changed, 1139 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
 create mode 100644 drivers/phy/phy-google-usb.c
 create mode 100644 drivers/usb/dwc3/dwc3-google.c


base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
-- 
2.51.0.740.g6adb054d12-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
