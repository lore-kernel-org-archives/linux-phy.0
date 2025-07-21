Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C84BC87FC6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Csf6XQtnELrZWURfae91tTeVF7qk7aDB+HOj8yWADuM=; b=dFevNOUxslnthW
	iy9XwQDBdYfLPAcWdvbJjCjTUy5ufWEWQy0Pu0sMw3/ogbncRwrKDpvGLjZV3FJDo0UGRstiRYcTL
	6DaC4qjFgBJHgK0l1yTUAFT3W8HqweAN/8y4d8P1tJPom7EC2GN/kK7Q4EGhL3+7iBb//xhO1C8wD
	PI+bcHFwKYGaLZm6KVQMNNpweyiu7LI0twCK5lTmR+TTuHfihxgu7uRIQ8EgZ0cK+FxMOGlqxcbB+
	n0Y0rATfAKFlUmoWBd0Lcn3TpKhSJPJMHSKetca0YrEFhFNVXjiUwISPp3qQa41pWG6eT/wdvX0VX
	EuzQlL/EOvGWV4nVDkBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5j-0000000FxOs-49o8;
	Mon, 21 Jul 2025 02:17:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKV-1wGX
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3776E44587;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09823C4CEE7;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=D4slPNc6Z1U3EWga2c4poJ3saIhVXP1H0Ye4x3zfpK8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=JzaT2j3gm84YqDFJmwfh9CKhE93Y0wn+3uW/Cj2nTjb6aavjPhgiD1BeUz0WDVZlG
	 BzYtpBfgctpKQlT8FydQhDTejAWf9DrGFGBmlUbk6Trs/7S1fyA9Mh/xH/4TG9qsqi
	 DnoH5xmYrNuviVIcc6vRg4WqMNxn2ALeKLDEEzGPFkkkWNQuEFQnFG1ult4S7QW2r6
	 jgTAWFvV19qGfYmCLcMVm736V0orUvBGph2M88wF1RYKK6Sk2n+CLD+3Ka4HFY1rne
	 lVs57oeFwciqAFXXFP2wfaf6D59Je4fBfN3Uz7zZEUlhwaN/QnNcIOgMe+OUvrksN8
	 to5b1O/HC0tyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7100C83F17;
	Mon, 21 Jul 2025 02:17:19 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Subject: [PATCH v2 00/17] arm64: tegra: Add Tegra210B01 support
Date: Sun, 20 Jul 2025 21:14:54 -0500
Message-Id: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ6ifWgC/z3MQQrCMBCF4auUWRuZxIZaV95DuojJpB2wjSQlK
 CV3N1Zw+T8e3waJIlOCS7NBpMyJw1JDHRqwk1lGEuxqg0KlUWMvViXxjlJYqVtr0J/7voX6fkb
 y/Nql21B74rSG+N7hLL/rz+hk+zeyFCjo5LXvHGln6TrOhh9HG2YYSikffXBOt54AAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=4059;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=D4slPNc6Z1U3EWga2c4poJ3saIhVXP1H0Ye4x3zfpK8=;
 b=DAg8YVEDqTLQjcwuGcianfkqSUmfcS0Zt9XbFE7poCGvB5cdaqLa6Dwleey9xMIk7ZRthnWlE
 2UO3dC5JJOgAgmFuWAAj0r1loGajcqrqWgEqfgRZJtPbjmK7ltJP6Kw
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191721_548835_82A1F145 
X-CRM114-Status: GOOD (  13.50  )
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
Changes in v2:
- Fix patch 1 subject
- Add descriptive name in patch 8
- Fix copy-paste error in patch 13, discovered by kernel ci
- Link to v1: https://lore.kernel.org/r/20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com

---
Aaron Kling (16):
      dt-bindings: soc: tegra: pmc: Document Tegra210B01
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

 Documentation/devicetree/bindings/arm/tegra.yaml   |    6 +
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
 29 files changed, 4262 insertions(+), 7 deletions(-)
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
