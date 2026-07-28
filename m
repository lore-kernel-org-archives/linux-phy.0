Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E84C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HzwAm+ZS1O3mOO43pz6/3U/O4/dOpGUheYk7sLnkwT0=; b=yLGJvnnCcPOgxE
	l81e3Xqv7mH5RyJ30eZhBx3LGREHIRFjrhLbWecPbDmHynn4Qek09uR9jQombJqi/07gNqhUC3HjD
	bSqi37JV4aKoeQAXEYcJV8uo9hCm7jxWReARITbID0oHmxxkKRhfa4WOr+CdXUZvnDbLFYdRQLFG3
	TU+oHsCMwPh3pq2f0UAjrt/psscleaCt3o3hTMgjj78pFRQaHzY/XAO/aGSyhU0d6IfWMnPOr9JCB
	1A+NJDlguv/o5u7Mo8nZexuRxc7qHx0W8lcxPITPeVgH13P3wZhCXAX8/kKoQKSw1IbucguCB7IRJ
	YsKkqy9v2DR7BZvikbQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woelX-00000004vIo-0R7K;
	Tue, 28 Jul 2026 10:10:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woelW-00000004vId-1vOW
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:10:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EFA0A43F8E;
	Tue, 28 Jul 2026 10:10:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3E3A1F000E9;
	Tue, 28 Jul 2026 10:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785233425;
	bh=jFpVwDGB+ken5MMKXbe3yv7FTf1GaeW4u1tfomWUaug=;
	h=From:Subject:Date:To:Cc;
	b=l3zSAmVzAQglOwjcIX8O/7otlDbuAB6E9RM7uOLWpk6dHKX0Uy7Gh1TOpbjATAxn/
	 FQ72pGyBZhNfTflABvjAVoYDACMA2DuOCqj9lEe29is0FOfepzT8WcYSs8C28v6M1s
	 Tlu/BYW2nsdtvhvrBbpvslQvwKX7xgQdP3auD4pAqmMIjE4DrR9LFj5s20bZ+uWqPD
	 qfBfEavnjgbFKIOHqSR8/jngVir8H+ypmoKV4VAwb9dVE2CiRFulC9OgPO6ykbJCJo
	 W4AnGxXWONaMUyp5p/ulN7RdfEp2eDWqQrNhP1DF/1J2P6oeuWEEkg6YROECrwOWsi
	 3/nx6sCeH78Tw==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v2 0/5] USB4 mode programming for QMMPHY on X1E
Date: Tue, 28 Jul 2026 12:10:11 +0200
Message-Id: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WNzQqDMBCEX0X23EgS/O2p71E8xLjWLdXYrEpFf
 PdGe+5l4IOZbzZg9IQM12gDjwsxuSGAvkRgOzM8UFATGLTUmUxVISY3khUz18nYrQLLTOk2rY2
 UBYTN6LGlz+m7Vz/muX6inQ7J0eiIJ+fX83BRR++fe1FCilw1hc5tUjbW3Bxz/J7Ny7q+j0NAt
 e/7F94VhxfDAAAA
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785233420; l=2356;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=CgTsrnw/oUs1nfPmmrF4f6odfgN+/4iQgg6M+/qZHn0=;
 b=Qbs6F3qaxa8cYeTTpf8HDpHGcUxvBoIR5a8Ym6ZbuMWOgHA9mv3yJej2VsqH56jAV8bwvc1sv
 SD8OKA+3ZCgCEnI5gz7TAfuYZOisJJiu4nTJA1nNcCRptLr3s6IB1QG
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
