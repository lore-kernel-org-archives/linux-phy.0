Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5383C55165
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 14:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BimOaHQ36tExMBPzuyfIa1G5IiMkqXm8U7iLhS8k9KA=; b=HzSLfl27zH3ubP
	Md2Zb4Xs2E4AG/nuOyHZOGtxgXZ3HqksBm7r8UJ78zwkY5qlir1L+3OUBwpGX8XpCkJylYmhld/j6
	mJfjrDKCDdcBERofUBt1R5iuDY785f6+ZGEGTge4oDjMOFxCppvqeqGrXhE+4LaDhL5bbvYYWPhHN
	KnJuScniE//95y7kNJn6ZKkHLo3lgAT1Gm5ckfn5m6PQuK6I9fYeTmaPBVrtxmp1B3TsmD3A2NJrB
	K2uzBhn9kRXD5MOmB1/QGm982hjPrssbmJ4zj/ivMqKbQ+fw/uynRSmr5dXUz5LodrB61ut5fvvKf
	u1dWTc8U7zukWLfpyKbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRba-0000000AjJy-1sIz;
	Thu, 30 Jul 2026 14:19:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRbY-0000000AjJY-1iSP
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 14:19:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C0A43438C1;
	Thu, 30 Jul 2026 14:19:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA9171F000E9;
	Thu, 30 Jul 2026 14:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785421163;
	bh=8iMH/UPo8cRGnmZlANKjBxiEHfDqNtumzb1SPHblyXI=;
	h=From:Subject:Date:To:Cc;
	b=JJN/lWDZj6mCVpC9cdQwK/H+OvaCxyWsdbabOXy2AMbrPaAZgnChq6QlofHCB2Fvj
	 3NBgA5HrEf4j/1r5tF+NlevS17uaeubRyJze29lNUkPClvpSr/l4zGTxhuleF9Gwmq
	 CB+S7IsLeb7oojoSEXgT85dPQCaCvGAODREZboX/5noBnVoMztECm3XzMidj0U7QzO
	 GjokFS/WRAjLaEbsMyP8CINMMALBzFs2xEPFCamlc0jV7Hh231rTiYVQkQ0SYK/n76
	 hR/okh9N2Ez3BYZ3D2BW+/Gk+ggqlXJFxBd8NDsnu4EZdDxNEItzEc6QlCCaQ3dnai
	 dXkI3ph1VdwDQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v3 0/5] USB4 mode programming for QMMPHY on X1E
Date: Thu, 30 Jul 2026 16:19:12 +0200
Message-Id: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XN0Q6CIBQG4FdxXIcDEpWueo/WBcIxaSUGynLOd
 w/soovq5mz/9p/vX5AHZ8CjQ7YgB8F4Y/sY9rsMqU72F8BGx4wYYSXhtMajHYzCk2+KoZsxiJK
 yljeSkBrFn8FBa56bdzq/s5+aK6gxIanRGT9aN2+DgabePztQTHBFdc0qVQit5NF6nz8meVP2f
 s/jQWkisA9SsS+ERYRroTWnhQBV/UDWdX0BsB4uXggBAAA=
X-Change-ID: 20260518-topic-usb4phy-e9612f5ba008
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785421158; l=2514;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=9I6PIomQ8/a+zhHHxVQoCY2TXaxCyukQFd3p4hbqpfU=;
 b=LDSe1OEi2U36XW7oT2Kj8QyEDR4DqHHrYdg2LQWq5vyr6M2xlGMb9N0e2YtMK1QpU04LARCbw
 EMGF2D0qfjLAAcox7s4U3A+08e5BZBMgU93Ti2SDjMWOs61TQH16yQI
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

The USB43DP QMP PHY, as the name suggests, supports USB4 in addition to
DP/USB. This series provides the necessary plumbing to switch to that
mode of operation on hamoa/purwa.

This is achieved by exposing a third `struct phy *` for the USB4 sub-
PHY, which will be toggled by the USB4 router driver, living within the
Thunderbolt framework, which will be posted separately.

Find more details in the individual commit messages. Tested on a
X1E80100 CRD.

No external dependencies.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Changes in v3:
- Fix up assisted-by tag
- Pick up tags
- Link to v2: https://patch.msgid.link/20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com

Changes in v2:
- Massage the bindings to only allow the p2rr2p clock on Hamoa
- Pick up tags
- Rebase (nop)
- Link to v1: https://patch.msgid.link/20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Konrad Dybcio (5):
      dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E description for USB4
      phy: core: Define TBT phy_mode
      phy: qualcomm: qmp-combo: Add preliminary USB4 support
      phy: qualcomm: qmp-combo: Add USB4/TBT3 configuration data for Hamoa
      arm64: dts: qcom: hamoa: Extend QMPPHY description for USB4

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  55 +-
 arch/arm64/boot/dts/qcom/hamoa.dtsi                |  18 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 592 ++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h     |  15 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h |  45 ++
 include/dt-bindings/phy/phy-qcom-qmp.h             |   1 +
 include/linux/phy/phy-tbt.h                        |  14 +
 include/linux/phy/phy.h                            |   2 +
 9 files changed, 651 insertions(+), 93 deletions(-)
---
base-commit: 0d33d21e47d9dc66f91e44da3fc9220c74d93df7
change-id: 20260518-topic-usb4phy-e9612f5ba008

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
