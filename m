Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 653C9D3B7CA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=72KBWouEM1QMv37PoMLJ83oy1YEqtxDW8X0PQk/M38w=; b=kauBznxnwdTmJc
	FvB74zSmJ4eXQB0dwxuPF/iDrkLU7RQmx7HbWaMFD1scJ45ptELbfQ5IxTeoRe2TM5E/MMQqs6heW
	TpYg7B0z9xPPuYpFScZ7yfvkiz7xfn06oa/4utsjWjDYasFdCgWcMFuHDAB/e5jQfhM3hw7pwTQGN
	BzKY1pLDdUt1+uZIQ9sfSB19hEQVDeb5yGkktJrFyhLBNkKYN9HGa73o/jHIVeFou09/QTo/fwnyh
	IF6zfk0MXimmcKi1gI1WJT2Pljvd7dupHRCG2c30DNkH7s/rwyOndd7YGHeuRn17VfQ+8lKZ20qmc
	l0mO3oSX6Q/YlSRDvpPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlC-0000000A7FV-0AQ2;
	Tue, 26 Nov 2024 09:21:30 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrkp-0000000A70z-39eP
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:12 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-434a0fd9778so14142075e9.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612866; x=1733217666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oAr4THz/iUZpjgn32cU1UjSoRJJwQ4eV9JJMqnie3fo=;
        b=dUXXC4RArimxo8/DYKKA57US5TV8f1wjc8vVAX8U54cfzF/loIE7NkmNtom2fI3ma2
         GvGXEJ3L49Yu5GCGDzEQ9cgCW2OMri4o7rB4Cgmp7HnZDVOOB2ZMAKOQiYnzT5r8LJGS
         L0QHAh/vS3giZvDfOekbVJnenzgsbTULKSPHAniwF/UdsR7P4fb8K18b664SAZlbLEDs
         Er7BwgmS8c6j9imJDVDjxM1diYN3v55MXjoq2F0ijl7Ze4GpSZuz8rHf3WS04iPTQUL4
         Fs2P2rKpy0Fx25P+C1MM290vlKTGf59Mbu3dbYWTjKHUczeF5+BgxaSye39eCqcn6bqf
         agSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612866; x=1733217666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAr4THz/iUZpjgn32cU1UjSoRJJwQ4eV9JJMqnie3fo=;
        b=GmVIyjUbHG7MPdnxpLJOqO7TLgAKj+zV6Z3rOJo4pytQEpGeI2EEOdolA/yWguWExv
         wNgILIBUVLRHnugBFbgFMnQVfalPNX4mcR/uc/Q4lXiCqPTpjRRvpBj28VOh4ChNr71v
         6VJlFtusjuVH9lIDHVNE9rrdRMqjDeRd8FZvp0dZBcKDGy6lQXbfoPt+ozwsQkztVaJS
         LYdqNgnM5L+h4xFGJ4IZyAmB1BtT/2CRuyZRZN/wW89EPe7GMUOC1JwL7FBQYKlHDbrD
         9pCKr8AdNVEwr+S9jjzxOnQxAtzu4hZgYyuZyC5xN+M3ixmFxL8rZyhYSwsU3ZSQdkKs
         z2xQ==
X-Gm-Message-State: AOJu0YwK+Fidwn8klN5MXKokNM3aaFXgsuNsBIOQOfIHK5S5tdh+oQ7v
	R41lRI8KwgX1LBFcBlIGC3sMtO9yHcS/cMIHoZvtMJdEby4EYUPPTt+RfeUAZqA=
X-Gm-Gg: ASbGncvIoyfKbuZ4DJ5jg1BUZgJW6PipaVmWZQ6OeHARqayWdyOonwmQ4c3JAf2pwTQ
	UXkEbVmR3tE5NdurVp3nlrDU355uMqQIupskrTYS37l9MtFsGiUOiqfSZX0dfkq3WjaX4uyT6NT
	jqlYmtgAEuZq2qQPUUvTD6f38l297sgedZCZu6l7H99nuY9OZXvZuxIwxg/kVaTbOPO99ds2MVD
	d38nRXEz47KtekkblFys3pxVaOQef/JAcJsbkYD15n7L38tGYClyl8S1E/AbFDcCfRQMRBLOxK9
	mYk=
X-Google-Smtp-Source: AGHT+IFYYXObOhQgBxHQSwsO08mkH4nUnksbd2zyW86LbEQQVgUNpvZSz9E0wpJV3PjUdbW9GlwA3Q==
X-Received: by 2002:a5d:5f8f:0:b0:37d:5173:7a54 with SMTP id ffacd0b85a97d-38260bdfa48mr15515396f8f.52.1732612865602;
        Tue, 26 Nov 2024 01:21:05 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:05 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 00/15] Add initial USB support for the Renesas RZ/G3S SoC
Date: Tue, 26 Nov 2024 11:20:35 +0200
Message-Id: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012108_049254_E4FC8084 
X-CRM114-Status: GOOD (  16.64  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds initial USB support for the Renesas RZ/G3S SoC.

Series is split as follows:
- patches 01-05/15	- add SYSC driver support; this is necessary for USB
			  PHY as the USB PHY driver need to touch a register in
			  the SYSC address space, in the initialization phase
- patch 06/15		- updates the USBHS documentation for RZ/G3S
- patches 07-10/15	- updates the USB PHY support to handle the SYSC
			  USB PWRRDY signal. Along with it a fix for the
			  DT bindings and one for the PHY driver were
			  added; fixes are RZ/G3S USB related
- patch 11/15		- document the USB PHY Ctrl support
- patches 12-15/15	- add device tree support

Merge strategy, if any:
- patches 01-05/15,12-14/15 can go through Renesas tree
- patch 06/14 can go though USB tree
- patches 07-10/14 can go through PHY tree
- patch 11/15 can go though reset controller tree

Thank you,
Claudiu Beznea

Changes in v2:
- dropped v1 patches already applied
- added fixes patches (07/14 and 09/14)
- dropped the approach of handling the USB PWRRDY though a reset controller
  driver and introduced the signal concept for the SYSC driver; because
  of this, most of the work done in v1 was dropped
- per patch changes are listed in individual patches, if any

Christophe JAILLET (1):
  phy: renesas: rcar-gen3-usb2: Fix an error handling path in
    rcar_gen3_phy_usb2_probe()

Claudiu Beznea (14):
  dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
    #renesas,sysc-signal-cells
  soc: renesas: Add SYSC driver for Renesas RZ family
  soc: renesas: rz-sysc: Enable SYSC driver for RZ/G3S
  soc: renesas: rz-sysc: Add SoC detection support
  soc: renesas: rz-sysc: Move RZ/G3S SoC detection to the SYSC driver
  dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
  dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
  dt-bindings: phy: renesas,usb2-phy: Add renesas,sysc-signal
  phy: renesas: rcar-gen3-usb2: Add support for PWRRDY
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
  arm64: dts: renesas: Add #renesas,sysc-signal-cells to system
    controller node
  arm64: dts: renesas: r9a08g045: Enable the system controller
  arm64: dts: renesas: r9a08g045: Add USB support
  arm64: dts: renesas: rzg3s-smarc: Enable USB support

 .../bindings/phy/renesas,usb2-phy.yaml        |  26 +-
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |   1 +
 .../soc/renesas/renesas,rzg2l-sysc.yaml       |  23 +-
 .../bindings/usb/renesas,usbhs.yaml           |   2 +
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi    |   3 +-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |   3 +-
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi    |   3 +-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 123 +++++-
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  57 +++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  77 +++-
 drivers/soc/renesas/Kconfig                   |   8 +
 drivers/soc/renesas/Makefile                  |   2 +
 drivers/soc/renesas/r9a08g045-sysc.c          |  43 +++
 drivers/soc/renesas/renesas-soc.c             |  12 -
 drivers/soc/renesas/rz-sysc.c                 | 350 ++++++++++++++++++
 drivers/soc/renesas/rz-sysc.h                 |  70 ++++
 16 files changed, 778 insertions(+), 25 deletions(-)
 create mode 100644 drivers/soc/renesas/r9a08g045-sysc.c
 create mode 100644 drivers/soc/renesas/rz-sysc.c
 create mode 100644 drivers/soc/renesas/rz-sysc.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
