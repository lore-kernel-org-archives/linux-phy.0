Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 103A9C5DF85
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LE13XHHseF75Vl50a7/8GjOtUMp0F+3foBWFDE0xwdg=; b=wIUsk+okaWLy6j
	2ohot9khs6LwHt+isYvyRsiAdqKDvnueoHC23xvFbtU+lAg1rCGrkc9Hc9NvS/TGdFo36lOtrK5fc
	/Tgbb26jWn8eUKeVuNtFTi0VyWWgJja896THcyeXL8edpU+ka1FPJNTyQkh/gnVJdeGi3AFaBt4MR
	9yRHP/+vXVgOJbiGnj+87ldGgq0qdcegw8tdeZ+WennbOOjvBx1W1HH8i/Qc8pqeV6BfHpRhWpo8g
	6yu8w9CHwtwL0Y0SdUqGTS9wPEg+9tzXLVX0OthoNluYp+YF7PtHU+nfOVDqm/dHsDN6BsFltxkyq
	rzPxMrdelM5brdjb64bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3gt-0000000Bh3W-2fb0;
	Thu, 20 Aug 2026 14:24:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3gs-0000000Bh34-0fYD
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:24:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DB18860008;
	Thu, 20 Aug 2026 14:24:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 364291F000E9;
	Thu, 20 Aug 2026 14:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787235860;
	bh=NAsW4/8L/l7bKLOr89lyxh8DJHkZw7d7pgVMpyH25ZM=;
	h=From:Subject:Date:To:Cc;
	b=IOjDZbiGtjJePz77cq6OWJyK3Jy3cUBptg++DohCW1K+SEEPQg9EDLdyErR8MNMM4
	 a3mbAakAXIfWdyxaJiCXWVkG3+g0yEjq6i8nIh5dyTNOIh1cyk6zDqRbceil1gNpOa
	 w0LON4CzHrw85ykdrZ51MgpCrC9dTZbF7xB7t6txGFJj/kugcf40HB//pJY7sgpWkX
	 KRCmUkr0bbBEn7QIhZnRCyGOywQv0Zgp7GhmjnMb0vwZkAxLVPbfZ8Fk0v9YrIe3yA
	 7styau0VLKmefOi4/V007gmpfeXiYmbZtpBHrlLh0pPUUHe103jTsap2gDAnUPxgvJ
	 xMGa3c9tl0kig==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v4 0/5] USB4 mode programming for QMMPHY on X1E
Date: Thu, 20 Aug 2026 16:24:09 +0200
Message-Id: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XNQQ6CMBAF0KuQrq1pC7XUlfcwLsp0kBqlSIFID
 He36EKjspnkJ3/ev5OArcNAtsmdtDi44HwdQ7ZKCFSmPiJ1NmYimNgwyXPa+cYB7UORNdVIUW+
 4KGVhGMtJ/GlaLN3t6e0Prxz64oTQzcjcqFzofDs+Bwc+95bsgVNGFbe5UJBpC2bnQ1hfe3MGf
 7ms4yHzxCDeiBI/iIiItNpayTONoBaQ9ANJ2TeSRgSgZKVCo/NC/kGmaXoAzXpB4k0BAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787235854; l=2921;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=dMH/mlRmTXXxKm2F9JmSmW0Q8hbi66FMbnIFCERmKEI=;
 b=RPmQRr+KEb/PyT8fMNf829EsU/5i3ooPYJMvzKQhnt7+4ahYxsl0WrW3/FGscGIzMGMmpcZlN
 zipVV/x+iGqDwsT1eOW6aI1qeFsTSgT0n5OSx7uNTi1aqsY8GIvr6Vh
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 599 ++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h     |  15 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h |  45 ++
 include/dt-bindings/phy/phy-qcom-qmp.h             |   1 +
 include/linux/phy/phy-thunderbolt.h                |  14 +
 include/linux/phy/phy.h                            |   2 +
 9 files changed, 658 insertions(+), 93 deletions(-)
---
base-commit: 7079a12d7506b07fb53b54a664bfad5fa9b16d70
change-id: 20260518-topic-usb4phy-e9612f5ba008

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
