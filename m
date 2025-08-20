Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA7ECA0EF8
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 21:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZcQIO64NYByaIdtkjnevpVjCC4vwzYrbgd9Wlt+A+mo=; b=Eyx6yY+R09NuEt
	m9ZMWhYZ7JjLePsCqu6eRGcu0LBvgJh5yQ18UjQ0xGS0gcX87S5/MVmH1eP82gSNv0DZ+qQRALE9Z
	IIV6CTeQI8wqycNN080oMK8VdtSgU1IIkvoXxVKQSgDe92PMWLw3J3ZQ/+YBGKf3Dd0I7/CiB+rnX
	BYwLJaT0Ze8MVDwLglhEexPYU5nh27QWVcMskwnOLeL+HoCbd7oTr2FHwNbEgRCpXoJIL5lw3gdZx
	Z5OU0sMO01JGfViP3+F27Ey+zJm6GekUFrU5nRW+iXbOzQahg08hZ+H51DeSM82NcDxRBL/yHomYr
	IEsdReSWxuAkB3+669tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoqa8-0000000F19H-2WNt;
	Wed, 20 Aug 2025 21:42:56 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomS1-0000000EVxT-1cP8
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:18:18 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3b9e418ba08so95385f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755710295; x=1756315095; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y6eiwry4yNjMS2EnLyC1PO1PH1RUJzWiKmADaSQUZe4=;
        b=mUXS69CIN3SD+LwfNadWYPQxP+4l0DW7+ikY1vyI/M2g+0EUh3prMvc4SIogaGKJIf
         HOf+adH1U+XYqTrRR5HQ09NYMNX3FeHHGif0PZgb4nAAa1KJm2tOBJ3doPFfi0GEqfP8
         vfTd081Yitrj8IdKMlWiPkNhfSu3ki+HKXqvVG+4gLfpSZmRe7SgYQDJXIk3M+pV13am
         f8BZ8LNDTgdGn8fEvPQUmoAl+Lp55gPtQ28iDl2XqXpzOFc/WMLmIpLXJlG70WPKvgoi
         ffAj6wPOFjRNPbfk6H3cPRyGhz+tdQCIDIIoTnG2mwtc4JIUthsBRwWFSKBnXftWd1Ss
         X8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755710295; x=1756315095;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y6eiwry4yNjMS2EnLyC1PO1PH1RUJzWiKmADaSQUZe4=;
        b=dhVusyep2KtpWow3V5qCQ5A+czIiirgARERBhA00qz1FgaEZT1C+QsnZZc9xRc/dft
         bb5jbtb2z1Ycua+i/TRokgqZxOPfS8ww7HjhjIL+a7LVUmo8fn5DHXVNjLWf/6O9LU1m
         skc5Bb5zLpXKFozXEPbITfWqEu5ssye1B3AHHvcRqMLfJrlw3P0CNoe991ZZb3P4gIXq
         O7WwqyJbqwtmNvwFBTWWjKnY6pGnXief4SmNvt9gOnuIsqW07ACkOCNyQLVDVu3CFHF9
         ckR/9cYWq25uFKrtq0R742uOnAZEAtvCsBN9L9jrjzi/lYLQ2XC5nB+B+UuXPAQEKNOW
         co2w==
X-Forwarded-Encrypted: i=1; AJvYcCVITRtBttXnKQvRRiZSZZ9rvlaKmbRgQOa7ZV+oqzbWPmWiWpg1qOYQwxVhd2VuHAw00C7N0AgsEl4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyeVksAzLMvL5l16zXolX1MTt9JhsnUH5y4GsNi+AAzuYrkunQ
	VBrO2EHbxjOelKQgWNcvpbUMs6FdRaZMM3rk54YkxzlXOC6IDAG+C6zP
X-Gm-Gg: ASbGnctvBuN6ni0N6rLTE2T7CwqfPJGMHEyIxUuBc4V+uNm38oukaXI2Lc9ASX4KSLb
	pChiCrUBGqlw5DO000sn/Vvry/l26Jhv6xmaPeiNy7DpLn3LEcWueQDtpv9k/cqlbwYPZ5MxlV1
	O06jOifZG8I6TxWLNzFgUobiwDnbKQpEEBTuJR338/R478S4uwBzNmjxhtLK2zVNh32L+A0OTUE
	zvaqGfVtOFtxMpUqWdaGUhyi1iqtUj56zEkFVi7bb4wxNAn3sURFWMiq5pWjOZCPcmOzFop9O17
	KParyfpxbKXH2Ku9bbhJaMkb3cofxZRJ0OsRSfchqD+oMClg40Oax8oGMo+LOnF4jce3UEnaePH
	eDZAL6nFAjzuy9Poo4O2W5ZrPKsngNrg76w1xyspn5QhX7VR9NDx/d1yW7YhWMAc89XM2ioy2Qg
	==
X-Google-Smtp-Source: AGHT+IHAzw9Tb//dHCV1SUgEIlrfejXuuE6OLtUtwQVU9JGdDqzb/YHaQYf+2dRfIWaqPfe+zZOltw==
X-Received: by 2002:a05:6000:4011:b0:3b7:792c:e8d9 with SMTP id ffacd0b85a97d-3c32c529609mr2661092f8f.14.1755710295076;
        Wed, 20 Aug 2025 10:18:15 -0700 (PDT)
Received: from biju.lan (host31-53-6-191.range31-53.btcentralplus.com. [31.53.6.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b47c2865dsm40319815e9.2.2025.08.20.10.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 10:18:14 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 00/11] Add RZ/G3E USB3.2 Gen1 Host Controller support
Date: Wed, 20 Aug 2025 18:17:47 +0100
Message-ID: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_101817_441481_9F4D438F 
X-CRM114-Status: GOOD (  10.92  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add RZ/G3E USB3.2 Gen1 Host Controller and PHY support. The USB3HOST
is compliant with the Universal Serial Bus 3.2 Specification Revision 1.0.
 - Supports 1 downstream USB receptacles
     - Number of SSP Gen2 or SS ports: 1
     - Number of HS or FS or LS ports: 1
 - Supports Super Speed Plus Gen2x1 (10 Gbps), Super Speed (5 Gbps),
   High Speed (480 Mbps), Full Speed (12Mbps), and Low Speed (1.5 Mbps).
 - Supports all transfer-types: Control, Bulk, Interrupt, Isochronous, and
   these split-transactions.
 - Supports Power Control and Over Current Detection.

Biju Das (11):
  dt-bindings: clock: renesas,r9a09g047-cpg: Add USB3.0 core clocks
  clk: renesas: r9a09g047: Add USB3.0 clocks/resets
  dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
  phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
  usb: host: xhci-rcar: Move R-Car reg definitions
  dt-bindings: usb: Document Renesas RZ/G3E USB3HOST
  usb: host: xhci-plat: Add .post_resume_quirk for struct xhci_plat_priv
  usb: host: xhci-rcar: Add Renesas RZ/G3E USB3 Host driver support
  arm64: dts: renesas: r9a09g047: Add USB3 PHY/Host nodes
  arm64: dts: renesas: r9a09g047e57-smarc: Enable USB3HOST
  arm64: defconfig: Enable RZ/G3E USB3 PHY driver

 .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  |  63 +++++
 .../bindings/usb/renesas,rzg3e-xhci.yaml      |  84 ++++++
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |  30 +++
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   |  10 +
 .../boot/dts/renesas/renesas-smarc2.dtsi      |   8 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a09g047-cpg.c           |   9 +-
 drivers/phy/renesas/Kconfig                   |   7 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/phy-rzg3e-usb3.c          | 249 ++++++++++++++++++
 drivers/usb/host/Kconfig                      |   2 +-
 drivers/usb/host/xhci-plat.c                  |  14 +
 drivers/usb/host/xhci-plat.h                  |   1 +
 drivers/usb/host/xhci-rcar-regs.h             |  49 ++++
 drivers/usb/host/xhci-rcar.c                  | 100 +++----
 drivers/usb/host/xhci-rzg3e-regs.h            |  12 +
 .../dt-bindings/clock/renesas,r9a09g047-cpg.h |   2 +
 17 files changed, 596 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/renesas,rzg3e-xhci.yaml
 create mode 100644 drivers/phy/renesas/phy-rzg3e-usb3.c
 create mode 100644 drivers/usb/host/xhci-rcar-regs.h
 create mode 100644 drivers/usb/host/xhci-rzg3e-regs.h

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
