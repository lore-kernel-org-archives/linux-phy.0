Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F67CCF9F0
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 17:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DFzfGNZEBedcnwBuzu+q3+fp9B79njMsw/oF2hCSUDk=; b=jtx9ijQ+hiNEKs
	DWgUuiOJDElYucuiaUwRlEm6P3ZhykEN+J5lz8wLKOH+RkZHC47sAqqdLNBrsvEzw8TrCJkjiufsq
	cpwS4lieN1NYxLGuhtQQUnqufdVjSq61JQDa1pBQpVp+diScTu2ys9C++JpfSwdjPIHp7Siot5C7Q
	UwDTR3GLLBKM3DtDNGJ2cagoRE8rNVkUXBY8v9VIHJqvEFrxWqp1W98Gl/87u7GjfDaReya/gRUQ5
	JA3VsEiJS4j/ox1X7F2QM3vCFN13kTM+Ju0YCi3AIr9YtZoSMT9SLNhI1y7o94oPjTBQsk6THNwka
	dPzDLToMVaFrFZqLtOpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEA6z-00000002E3N-4BpS;
	Wed, 29 Oct 2025 17:37:30 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEA6w-00000002E29-1YIt
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 17:37:28 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-42701b29a7eso121604f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 10:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761759444; x=1762364244; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=UG6tFvFgO0KjwvNvWtuBqBJX6bB6g7mbwTb4gfTyHGc=;
        b=icBW6cw7qHKJ6sHtIwFmwnKzhbJ5abJPmb4fU7x+wJr07V0QWmy4YZUvd3ucP6bPUt
         6EZfrSvgfg3itfLbDEBDOAz4fThO7+hDqOkesIPt4nFct5gikW4IT3CybANKEG0qtGIi
         33JIRSFA7gn5Y0U+KpVrBTXLUXnYjBL3cRVoUAtviQH9uLNCcK+6l3MIH+umlkEGjizg
         Wvx0dUvgBXc96Ux3bLKgp6EOdJFyzF2HWw3XF8uTyVt0YygTLfc70c82Zr6lWjWOPZy7
         /oeYk+GbplL7L2BvA5A5SgEtGHefGaDQMMXo9igghQ6Z7LQ7Cn+H1oLUWRwXqvICt5TC
         JgfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761759444; x=1762364244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UG6tFvFgO0KjwvNvWtuBqBJX6bB6g7mbwTb4gfTyHGc=;
        b=L4KlReT87xwe7MkvoBBVoXVuvkI/n3jczK3osgHibyAXxxhN1RWsyn/NZF4A96pcYf
         dc+b6L7UH1rZCa+kEcqPvDxb6A6mP8Buv8/euiyxlK/JdQEPsVWlyN1OQc5wlrJlNYJO
         sMKxNxZy/tQN2MkZAUC/Lp/Ohtk6A6DFLRCPvvgoqG9jlW6ifRnmuVHCbnpEJOO8VtqF
         g7WAAw9btzzJNa5/nxOc8SJ5m6eJvGcPZeJ3El2MuYrewdmSIOFwnkQXEz5PIfdChyMZ
         6ujjxiZ0yaI5NyoKt469Zhb/uxZwMU8k7kziGlx5s0OJE2KmmN72kycAV6QfjKCDJwKS
         sXow==
X-Forwarded-Encrypted: i=1; AJvYcCUv+s9ou03R4RjASKtifIwci+GTtax+pQXjBiLkbFKhRXb8Hc1yk8cxBEAiplrICJT/7YLsWdDQVws=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6NjOY2jUcfy4EzJfRusukywAYsFSIeXRCyetuvqz4eEJ6pijs
	hePqegTnUYDaZtp6locQ6QrEVTFldwhYBXlZzbCf9BmQCkJaWP5B6TDL
X-Gm-Gg: ASbGncsiGEenMInbOWxgofNKiR4VVvy5JajEZKU0u2KqkyeOBS+jU3AS21/6zFPoui+
	0oOICn6opYULgFuy79pXpFx02Sf4j1D2WKoSU5GCQdI/2oH1nlWlMUg1i8b5C2hKj1Si9wkqbA5
	D6sdRgbJ55+6jP7ntaC0H8eVI1LvXK4N5s+nMSS9VRHTBCECnFHX6GmCRK5brOgvoyD6TkN+z9/
	2J/9WnolZfoy8sMAfop2rl9hRSxVpTqXV7YWqLBHL++F1jCppXQ8T44obN1TszqLxmB5678dapl
	UYuN5sRnrT9jS5PUygYmgjCVvL0OYP71u+JO9DEITCr8BAZOhForysNNmmmTYmxehIxDBoLBBWP
	Q5A/3MnRkeU7e6WLHl7iGqxYS+giKKF/O4obkzz2Ju9mtPN7hI1RRmMiz6R/1O0ON/yOt2PBg6n
	/KnDkz36SmuEUdL6f2yphgJei5teDdeQ==
X-Google-Smtp-Source: AGHT+IGR0/h7xWw5u+tbePy3AOUxoydllJajHgi8S/oFMc9yrZfdEmTBxQl8jliT/49OYCJAl4LvOg==
X-Received: by 2002:a05:6000:40e0:b0:429:8b4a:c3b4 with SMTP id ffacd0b85a97d-429b4c0f438mr437419f8f.5.1761759444051;
        Wed, 29 Oct 2025 10:37:24 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm27493844f8f.28.2025.10.29.10.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:37:23 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] airoha: an7581: USB support
Date: Wed, 29 Oct 2025 18:37:08 +0100
Message-ID: <20251029173713.7670-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_103726_422564_73260B28 
X-CRM114-Status: GOOD (  14.84  )
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

This is a major rework of the old v2 series.

The SoC always support USB 2.0 but for USB 3.0 it needs additional
configuration for the Serdes port. Such port can be either configured
for USB usage or for PCIe lines or HSGMII and these are configured
in the SCU space.

The previous implementation of a dedicated SSR driver was too
complex and fragile for the simple task of configuring a register
hence it was dropped and the handling is entirely in the PHY driver.

Everything was reducted to the dt-bindings to describe the Serdes line.

Also the property for the PHY are renamed to a more suitable name and
everything is now mandatory to simplify the implementation.
(the PHY are always present and active on the SoC)

Also other unrelated patch are dropped from this series.

Changes v3:
- Drop clk changes
- Drop SSR driver
- Rename property in Documentation
- Simplify PHY handling
- Move SSR handling inside the PHY driver
Changes v2:
- Drop changes for simple-mfd
- Rework PHY node structure to single node
- Drop port-id property in favor of serdes-port and
  usb2-monitor-clock-sel
- Make the SSR driver probe from the clock driver

Christian Marangi (4):
  dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  phy: move Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |   76 +
 MAINTAINERS                                   |   12 +-
 drivers/phy/Kconfig                           |   11 +-
 drivers/phy/Makefile                          |    5 +-
 drivers/phy/airoha/Kconfig                    |   23 +
 drivers/phy/airoha/Makefile                   |    4 +
 drivers/phy/airoha/phy-airoha-pcie-regs.h     |  494 +++++++
 drivers/phy/airoha/phy-airoha-pcie.c          | 1290 +++++++++++++++++
 drivers/phy/airoha/phy-airoha-usb.c           |  615 ++++++++
 .../dt-bindings/phy/airoha,an7581-usb-phy.h   |   11 +
 include/dt-bindings/soc/airoha,scu-ssr.h      |   11 +
 scripts/tracepoint-update                     |  Bin 0 -> 22952 bytes
 12 files changed, 2538 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-airoha-pcie.c
 create mode 100644 drivers/phy/airoha/phy-airoha-usb.c
 create mode 100644 include/dt-bindings/phy/airoha,an7581-usb-phy.h
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h
 create mode 100755 scripts/tracepoint-update

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
