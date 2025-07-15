Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A109C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+lRdNvKznbdVfFmUDLsqt31ycVA8kKCeB4n35mUjRl8=; b=n3difgOx/z82gu
	w/QNPXx9hGe5IEWVYnxjo9rm4dhhV9WfNA9a3Z8ccbS9CBKgOxslAmymYbxMbg4nEiUPtKhu8ZZF+
	eiF9APZBBCOYvzayN9+MSYoe5kMFMyBCK41ZvRY6VELuqAVbBtqjuJIdbLAlsUSVXn8iZNIXrD7fU
	USkKpLVhAz8QP5p7qEcj6v1KGaE3P7a29DJPm1LRHkeMgVwXqjvZiXUkhikh1k7MeKToZsuWtwnZO
	JMGz4nEhKI8WNUMJE658nEeDRyTSIEy1n3/d2sT4xty7gUoDuH+h5+8ATA3wUVBYlwaFy6ld+XpaV
	7Xx0gQrpl9tTXZaKTJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOj-000000041Gg-409f;
	Tue, 15 Jul 2025 04:36:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtT-00000003xns-2uPs
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C4100433E7;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9303AC4CEE3;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552230;
	bh=lJMnWbcy+KGskhz7uaYT1aihHLwVRIM23Hj82ckJ5Po=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=ruyyNqafKzOGp8V3DxpibLRSDryzwhZkIMQnrvd+cLPU2P6Hk8rWTc9oTChJce9s+
	 I0UxkSczIfTDHuKV4of4HSi5B8aWuxitjD/KaNZ6aqivVMe0ENdvVZiTveqKSy+I+2
	 tkMC3Z2TZ24xAR94bGJp+rOpbtETLwdr7blf7g41I6d4A0b0TdYp8amLZs4gcGvfZz
	 yuHkPi6993gIR/e6RyVwar68GlIcL4muSNTi/xI3cpGkyIamNkxDbIBcrkRT2birJo
	 FNAIO86EhempjYNvZ/vEhFgWseLLV290acjteEzpA3DKurDVvcaQmqPS40ZWta/FIF
	 RmTmhbL7Z7sAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82569C83F1D;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Subject: [PATCH 00/17] arm64: tegra: Add Tegra210B01 support
Date: Mon, 14 Jul 2025 23:02:43 -0500
Message-Id: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOPSdWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUwNL3RIjQ4MkA0PdZENTk+REgzQLS0sTJaDqgqLUtMwKsEnRsbW1AM3
 FRUtZAAAA
X-Change-ID: 20250509-t210b01-c154ca0f8994
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, 
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>, Azkali Manad <a.ffcc7@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=3831;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=lJMnWbcy+KGskhz7uaYT1aihHLwVRIM23Hj82ckJ5Po=;
 b=ad6asFcWywsWGTUc+VsSSdWsJa0QLq14/57QoeJylGYnViVg/FccIfLjDNpPN9eHX4spILcBd
 kfyTmQg6dL7CVt4Y1+GTPik2zSOUh4Ifu30qdNy0JjH2kvJRTIYPTD2
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210351_780465_513FD3A7 
X-CRM114-Status: GOOD (  12.58  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Also known as Tegra X1+, the Tegra210B01 has higher CPU and GPU clocks
than the original Tegra210.

This series adds Tegra210B01 support to several drivers, as a slight
extension to the existing Tegra210 support. Then adds a generic soc dtsi
in the same vein as other tegra archs. And finally adds a barebones
device dts to be used for dt checks. Further device support will be
submitted in later series.

Earlier internal revisions of this series included changes to the dfll
driver to support Tegra210B01, but those did not work in testing, thus
was dropped from the series. A bindings update to match is still in the
series so the soc dtsi can declare a separate compatible from Tegra210,
preventing the driver from attempting incorrect initialization on
Tegra210B01.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
Aaron Kling (16):
      dt-bindings: arm: tegra: pmc: Document Tegra210B01
      dt-bindings: phy: tegra-xusb: Document Tegra210B01
      dt-bindings: usb: tegra-xusb: Document Tegra210B01
      dt-bindings: usb: tegra-xudc: Document Tegra210B01
      dt-bindings: thermal: tegra: Document Tegra210B01
      dt-bindings: clock: tegra: Document Tegra210B01
      dt-bindings: clock: tegra124-dfll: Document Tegra210B01
      dt-bindings: tegra: Document Shield TV 2019
      phy: tegra: xusb: Add Tegra201B01 Support
      usb: xhci: tegra: Add Tegra210B01 support
      usb: gadget: tegra-xudc: Add Tegra210B01 Support
      thermal: tegra: Add Tegra210B01 Support
      clk: tegra: Add Tegra210B01 support
      arm64: tegra: Add BPMP node for Tegra210
      arm64: tegra: Add Tegra210B01 support
      arm64: tegra: Add support for NVIDIA Shield TV Pro 2019

Azkali Manad (1):
      soc/tegra: pmc: Add Tegra210B01 support

 Documentation/devicetree/bindings/arm/tegra.yaml   |    5 +
 .../bindings/clock/nvidia,tegra124-dfll.txt        |    1 +
 .../bindings/clock/nvidia,tegra20-car.yaml         |    1 +
 .../bindings/phy/nvidia,tegra210-xusb-padctl.yaml  |    4 +-
 .../bindings/soc/tegra/nvidia,tegra20-pmc.yaml     |    5 +-
 .../bindings/thermal/nvidia,tegra124-soctherm.yaml |    2 +
 .../devicetree/bindings/usb/nvidia,tegra-xudc.yaml |    2 +
 .../bindings/usb/nvidia,tegra210-xusb.yaml         |    4 +-
 arch/arm64/boot/dts/nvidia/Makefile                |    1 +
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           |   11 +
 .../boot/dts/nvidia/tegra210b01-p2894-0050-a08.dts |   10 +
 arch/arm64/boot/dts/nvidia/tegra210b01-p2894.dtsi  |   70 +
 arch/arm64/boot/dts/nvidia/tegra210b01.dtsi        |   64 +
 drivers/clk/tegra/Makefile                         |    1 +
 drivers/clk/tegra/clk-tegra-periph.c               |    3 +
 drivers/clk/tegra/clk-tegra210b01.c                | 3758 ++++++++++++++++++++
 drivers/clk/tegra/clk-utils.c                      |    5 +-
 drivers/clk/tegra/clk.c                            |   19 +-
 drivers/clk/tegra/clk.h                            |    6 +
 drivers/phy/tegra/xusb-tegra210.c                  |   41 +
 drivers/phy/tegra/xusb.c                           |    4 +
 drivers/phy/tegra/xusb.h                           |    1 +
 drivers/soc/tegra/pmc.c                            |  117 +
 drivers/thermal/tegra/soctherm.c                   |    4 +
 drivers/thermal/tegra/soctherm.h                   |    1 +
 drivers/thermal/tegra/tegra210-soctherm.c          |   78 +
 drivers/usb/gadget/udc/tegra-xudc.c                |   20 +
 drivers/usb/host/xhci-tegra.c                      |   25 +
 include/dt-bindings/clock/tegra210-car.h           |    5 +-
 29 files changed, 4261 insertions(+), 7 deletions(-)
---
base-commit: 347e9f5043c89695b01e66b3ed111755afcf1911
change-id: 20250509-t210b01-c154ca0f8994

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
