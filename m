Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817FFC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=or+ekkAVELPHmNDwMLreyHLq+oaPOFe2BznWdqS5/PE=; b=fr7Hbn3rYM2KaX
	ObE5e62h860uFQAtzdfX8jpUJCWrswRlAbgDPJsZ9oWC/ZBa7kf9fWs/nJIKmfFCzfSDHEa0I43U9
	vL4HXLn9KpJ5ldJV14I1i1C0tPit6ifusBjlfZNBjqL620ToYDvE6BJgHzOUam5kxMq+WrgYC5R09
	N+jALEK0z8mE/si/HDEtVD+4HxFH/ZR5GVO7MDcnZp3vcWpNDd1LhYtYCC0L327NTxJ/3qyUIkUh7
	KBEgVCffx1lYNlx1j/5iedvSD6WrcR2Z/8KeDASpWy4Uqi9OAjbWN48QNUxqpUG3I/nDKmyxhZ/a2
	eyK9DvFDjAPmiRPXRxHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MD-0000000Flew-3h4W;
	Wed, 12 Aug 2026 09:34:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MD-0000000FleS-1UHn
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BD625414F5;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 949F2C2BCB9;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527284;
	bh=BQ5z6QONddo0/kZR7JvLPfgP8kFsD1j6RLJMJ82C1KQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=miDPwXqfOgYT/7OKWhPXBx8N6d2cs09PQ+VAogGU0WWQWB71zH9a9LxRm8xit4106
	 0FGxvsq6f1wRmGr4JuHn7LXuvemus9Ce7E/Qfv8aVNbrQqo/tB4AizK29fX56NqFSm
	 WBSPBXTdkWXPV+9byTPKCaH/1s7YYMSRopvMrXN1x5xMoC4O8wjaxGcpWJtx2eyufl
	 8zmRKcmeXJDkNGANUfRZrAtzB8r/f11qg+0BkWd2Zdy6sV+0qHjg32q7DCVWWasofg
	 vQOOyrQqqyxeuQX4qOxLckBkb4VYVSnPFWm9SGlOTgXoJOrCmAiyRcFR+iHfD/rGQy
	 mGz0DD3n2wtiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69778C5CFDB;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Subject: [PATCH v2 00/14] Enable USB3 for Qualcomm IPQ5018 and IPQ5332
Date: Wed, 12 Aug 2026 13:34:35 +0400
Message-Id: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/zXMQQ6CMBBA0auQWTtk2iJpXXkPYwyUQSYGCq0YE
 8LdrSYu3+L/DRJH4QSnYoPIL0kSpgx9KMAPzXRnlC4bNOmaLBmUeTmSsrim1mDVautaxZ2qGXI
 yR+7l/dtdrtl9DCM+h8jNf2LIaUe20uRKQybToMJlFX+T+bGOTTx/IZMvfRhh3z/PkLPeogAAA
 A==
X-Change-ID: 20260803-ipq5018-usb3-4b289b1ed16e
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=4043;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=BQ5z6QONddo0/kZR7JvLPfgP8kFsD1j6RLJMJ82C1KQ=;
 b=Dtgg01Djp9cU1Gjus8a4Z8V49sY0y5rS9TvjuhXDpkoYRLtnqi2/YYC/O5Z3rXV49J/hqzJK9
 Ge3PsjE0NafDIsR558C7+62IHv+RwrwXNq8ww15aYLHIVltcum/seRL
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Patch series adds Qualcomm 22ull Super-Speed USB UNIPHY driver support
present in Qualcomm IPQ5018 and IPQ5332 SoC which is required to enable
USB3. This PHY is interfaced with SNPS DWC3 USB and SNPS DWC PCIe.
Either one of the interface can use it via the mux selection present in
the TCSR register. Current patch series adds the support for UNIPHY with
DWC3 USB.

---
Changes in v2:
- Rebased on top of master tree
- Included support for IPQ5018
- Changed bindings filename to match compatible string
- Dropped items from compatible list in bindings file
- Added required block in bindings file
- Removed double space of reset property in example in bindings file
- Added branching logic based on compatible string to define the right
  clocks per SoC in bindings file
- Renamed phy driver to phy-qcom-uniphy-usb-ss-22ull.c
- Added missing error handling uniphy_usb_init in phy driver
- Changed to use devm_clk_hw_register_fixed_rate to register fixed rate
  pipe clock
- Changed to use devm_of_clk_add_hw_provider to register clock provider
- Release exclusive get of vdd and changed to devm_regulator_get as the
  regulator supply is also acquired by the m31 USB2 phy driver
- Inlined acquisition of clocks to phy probe function
- Use reverse xmas tree sorting of variables in phy driver probe
- Moved USB mux selection away from phy init to probe as it needs to be
  set before the controller is taken out of reset.
- Flattened the USB controller nodes in line with latest bindings and
  flattened driver approach for both SoCs.
- Set clock frequencies in IPQ5018 controller node to ensure they're
  parented correctly and override any freqs set by the bootloader.
- Removed patch to add usb phy node for IPQ5332 as the pcie0 phy shares
  the same MMIO as the usb3 phy. Hence, chose the approach to override
  the compatible string of said node and assign the right clocks, reset,
  and related properties upon enabling it as a USB3 phy instead of
  adding a new node with the same unit and reg address space.
- Link to v1: https://lore.kernel.org/r/20230929084209.3033093-1-quic_ipkumar@quicinc.com

---
George Moussalem (7):
      arm64: dts: qcom: ipq5018: Add USB Super-Speed PHY node
      arm64: dts: qcom: ipq5332: Flatten usb controller node
      arm64: dts: qcom: ipq5018: Flatten usb controller node
      dt-bindings: usb: qcom,snps-dwc3: Add clocks for USB3 on Qualcomm IPQ5018
      arm64: dts: qcom: ipq5018: Add clocks required for USB3 support
      arm64: dts: qcom: ipq5018: Add Super-Speed UNIPHY to USB node
      arm64: dts: qcom: ipq5018: Enable USB Super-Speed PHY

Praveenkumar I (7):
      dt-bindings: phy: Document the Qualcomm IPQ5332 UNIPHY USB Super-speed PHY
      phy: qcom: Introduce Qualcomm IPQ5332 Super-Speed USB UNIPHY driver
      dt-bindings: usb: qcom,snps-dwc3: Add clocks for USB3 on Qualcomm IPQ5332
      arm64: dts: qcom: ipq5332: Add clocks required for USB3 support
      arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY to USB node
      arm64: dts: qcom: ipq5332: Enable USB Super-Speed PHY
      arm64: defconfig: Enable qcom USB UNIPHY driver

 .../phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml        | 111 ++++++++
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |  41 ++-
 arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts     |  18 +-
 arch/arm64/boot/dts/qcom/ipq5018.dtsi              |  82 +++---
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts        |  23 +-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi              |  57 ++--
 arch/arm64/configs/defconfig                       |   1 +
 drivers/phy/qualcomm/Kconfig                       |  10 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 .../phy/qualcomm/phy-qcom-uniphy-usb-ss-22ull.c    | 304 +++++++++++++++++++++
 10 files changed, 577 insertions(+), 71 deletions(-)
---
base-commit: 7b6a23be392e99e7a4cf72325697315460cf2a20
change-id: 20260803-ipq5018-usb3-4b289b1ed16e

Best regards,
-- 
George Moussalem <george.moussalem@outlook.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
