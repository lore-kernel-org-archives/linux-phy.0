Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 865B6C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 07:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4VuU8O9Xwg/zJSFEXz41jMh4NdEbE1SyotTi5WTBjvg=; b=Pjyc9YI5LqgaUW
	5/wShtFC69xTvoussasFYXbglj8E8eXpDCIqxzQLAqBwm/3FIJdmt+PhyKQCgmfZcaeCbTbD8dKuS
	ftktUAIZWd1GWtpE7lNV+o2mtJVFsEuiA/TrwY1wksiRuxSbaU9VsDxxU+sfqbrznhL7hOHp6b5VU
	9Ro7wPU/d24b1IowU/Zr761U3IlfYnAosFLIHCW3ejfXnC4qXlZKZZqjbLuxkvHGfMAZr0ubNUIK9
	1TotW1puJ/lA7Y2CMEcokVxdUpUE0guYTuVTIX6XB1WDrPpdngd9azSDL7LwXa+2rhABXy/gYlydN
	36U5Kr4ZrxaF4Z0d2rmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qes-00000008JqM-3YHS;
	Tue, 08 Sep 2026 07:54:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qer-00000008Jpx-221S
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 07:54:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D1BC460A93;
	Tue,  8 Sep 2026 07:54:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB82A1F00A3A;
	Tue,  8 Sep 2026 07:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788854060;
	bh=L1qEmTcOVOuSfD/klU2LHmtkM0DYfjcpcZLFwOyJ1M4=;
	h=From:Subject:Date:To:Cc;
	b=PCw8grLazHz8vtMr0TuSOLZilQ1rshOeMLiWWBggiD2BxNIWjugFVPV3ej6ckWqNK
	 vGpWu5ifOeMvQSbaX+4+DNfTxaeMIR+x43+Ugw+Z3n+O37Qm7T5Ie8QoLnsLR7uasj
	 YQwTGR8kdE2GqkvFH8qLaMhrZuKTXL0IqCQ2TmLUh0OdFD3WRsOfNVGq8ziC/O5a6N
	 ri0Zstk9d69zrurKu7yENnuR1K6CUAT75deP6TdCKTAnDd6dTdty68xCCR9s+10HHV
	 H+FGMMuoZh5scNluaAEPwALBko7SeAKJGjaetUJxt44GPuqGyd0ei7W04tPMkx+p1W
	 K1Ae1VhOPazsg==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v5 0/5] USB4 mode programming for QMMPHY on X1E
Date: Tue, 08 Sep 2026 09:54:04 +0200
Message-Id: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XNQW7DIBAF0KtErEsEGAxk1XtEWcAw1FRNcI1tN
 Yp89+J0kaqpNyN96c/7N1JwSFjIYXcjA86ppHypQb3sCHTu8oY0hZqJYKJlihs65j4BnYqXfXe
 laFsuovKOMUPqTz9gTF9373j6yWXy7wjjiqyNLpUxD9f74MzX3pY9c8qo5sEIDdIGcK+5lP3n5
 D4gn8/7esg6MYsHosUTIiqigg1BcWkR9AbS/EIa9hdpKgIQWdTorPFqA5EPxIgnRFbEIdggwDc
 8tv8gy7J8A0/tXV6SAQAA
X-Change-ID: 20260518-topic-usb4phy-e9612f5ba008
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788854054; l=3119;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=fkkDRb9iPNoDQ4BpJHf32cdtnBXQT9Lrjp/pNe/O+fI=;
 b=EWeICC/b875dRogbIAADlm50H5+HF0KAPMSMsqHh2oDxqhgGzl0nye9hFSKOaGV5slYz7eltW
 pHoQtURq+UZAZ0r4vMVpuKku0KURDjrPgmYFVyQRj1wPmA/Puq/0QZw
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
Changes in v5:
- Reabse on next-20260907 (NOP)
- By popular demand, wrap a comment at 80 lines
- Link to v4: https://patch.msgid.link/20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com

Changes in v4:
- Rebase on next-20260820
- Rename phy-tbt.h to phy-thunderbolt.h
- Add missing error unrolling in usb4 phy_init()
- Rename usb4phy_init_count to usb4_init_count
- Refactor the submode acceptance logic in usb4 phy_set_mode()
- Pick up tags
- Link to v3: https://patch.msgid.link/20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com

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
To: Manivannan Sadhasivam <mani@kernel.org>
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 602 ++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h     |  15 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h |  45 ++
 include/dt-bindings/phy/phy-qcom-qmp.h             |   1 +
 include/linux/phy/phy-thunderbolt.h                |  14 +
 include/linux/phy/phy.h                            |   2 +
 9 files changed, 661 insertions(+), 93 deletions(-)
---
base-commit: 944a035ecca915ae947905dcfb03f2b9dc6d032c
change-id: 20260518-topic-usb4phy-e9612f5ba008

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
