Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DBCEC02181
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 03:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eK4/tnq03oVzAXEX7xksgKU9I/oQFzi7i3wE1ykxemU=; b=r69Su0GBVgXfEF
	Xom3hY3oH1cFNd8NFiQJdW1hSbeBL1yLRfNV1QG3QBApEjwE0uDPJdEnXVBk96KaGAqcPMCanxrB/
	OJ3nVx+dGmKLbPnrSprT81qzufa13R8CoIvAXvm+q3orPihbZXvyjNjsxT09guPjq9cVNJDlPe2I3
	CL62FIddmL6BxzBZIJ1LMRQC+gvtdEbkq9CoKFsTH2SarSvzj25WpbKYLMsJzG2Bs60vEcwWdgTSJ
	9HpINS8sJv0gR9kbYPOGuf3halBpx/S1WABNEZbCjxKmDnc9BCYEqQwRlfL9b8Nj8rX2hmhcv5Xbb
	SM/SCELTfshDq3U0qYMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtP-0000000FxkO-3t7f;
	Sat, 25 Jan 2025 03:31:31 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtN-0000000Fxk1-14rK
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 03:31:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CAE8FA401C2;
	Sat, 25 Jan 2025 03:29:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F291BC4CED6;
	Sat, 25 Jan 2025 03:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737775887;
	bh=nHAa6+rhzIVq14iE10KQE5p5M0mnRnXUn1tLmXTmSdk=;
	h=From:Subject:Date:To:Cc:From;
	b=VPogy25uS77IvsADujpnifvP++TAZMuYb3hPV6QtmVMNcdH6agDKBjx5bpbCS18y1
	 odpA8LcHLuN9hsmKsrpU3x5N1cc0jlplEik7T/XbCuPc68yfqHjzOXyYaSrGzzI0NI
	 8nPrpPlTSqG2LVLpWo+bsc52SqsLf/ryPiTD/a5JriXOSdGPWDcJh4mS24lxSUEfTH
	 N+piMsMTtQr3k3kWl84fAhblNzb1hLHqgzqBfra91PoOf3vUDgocJNxDLGItnKZCgS
	 hJ7xoCRx5l4/GPMifqqjEpZ+Rvjh2NR5jfSJVagnuhxD2ilUH7gfy0gcHndnUK4OaC
	 sYTT5wY5YJPtQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH 0/6] X1P42100 DT and PCIe PHY bits
Date: Sat, 25 Jan 2025 04:31:16 +0100
Message-Id: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAARblGcC/y3MQQ6CMBCF4auQWVsyA8UIK+9hCGnLqF3QYouKI
 dzdCi6/l7x/gcjBcoQmWyDwy0brXQIdMjB35W4sbJ8MBRYVUlGJyY/WiJlG2fVTFKWuK6y14VK
 VkE5j4Kudt+Cl3R348UzdaR9h4BjV1m2yf5WwliQxl4jHE5IgkR6me7PTH+XPP1hncuMHaNf1C
 zjVeMC0AAAA
X-Change-ID: 20250125-topic-x1p4_dts-3b9509bce3a3
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737775883; l=1920;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=nHAa6+rhzIVq14iE10KQE5p5M0mnRnXUn1tLmXTmSdk=;
 b=tBeB11e5HhKgSjY7rEwh++eL5F089B+hv6/Ba3RS89nWuoek2723N/UidWaFKmE7/cSC679HZ
 NDNCV9SXrnuDdjJyB2JOq1UQF2r+wNrajVvDUCVHaKQhjqSlYyl7XH9
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_193129_461109_0441A942 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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

X1P42100 is a(n indirect) derivative of X1E80100 - the silicon is
actually different and it's not a fused down part.

Introduce the DTS bits required to support it by mostly reusing the
X1E SoC and CRD DTSIs. The most notable differences from our software
PoV are a different GPU (support for which will be added later), 4
less CPUs and some nuances in the PCIe hardware.

This series very strictly depends on the NOCSR PCIe PHY reset patches.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Konrad Dybcio (6):
      dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe Gen4x4 PHY
      dt-bindings: phy: qcom,qmp-pcie: Drop reset number constraints
      phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
      arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR resets
      arm64: dts: qcom: Commonize X1 CRD DTSI
      arm64: dts: qcom: Add X1P42100 SoC and CRD

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   26 +-
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 .../dts/qcom/{x1e80100-crd.dts => x1-crd.dtsi}     |    7 -
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts          | 1270 +-------------------
 arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi       |    2 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |   44 +-
 arch/arm64/boot/dts/qcom/x1p42100-crd.dts          |   17 +
 arch/arm64/boot/dts/qcom/x1p42100.dtsi             |   81 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |   18 +
 9 files changed, 148 insertions(+), 1318 deletions(-)
---
base-commit: d7dfdec72fb32629d1affc32ff37a66a7fd1fb53
change-id: 20250125-topic-x1p4_dts-3b9509bce3a3
prerequisite-message-id: 20250121094140.4006801-1-quic_wenbyao@quicinc.com
prerequisite-patch-id: 719a1c1319a8f25be57f1e9bc68887684ff0d7cd
prerequisite-patch-id: 44ff71b8033fc91867a83a2f8f063fd0d9951d5e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
