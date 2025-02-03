Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31758C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 14:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gMdIUyoOhff6xGOb86f2f9bZRZDxBhkQdUhfMO8YjQg=; b=jePr7wQWAaVfb9
	D+XkpM5s+xeLViZQLihKxybhrSoWrbr10SRxe5LM8cOWLVr3DBAChiqy6eGgZefHtT3mCR+77yY7f
	gi8KmW+JU2Sb+01O0cG5Tg/fDopbCgAwb++ipJTaTPRaiNJ69smJzI0Nbll3ZPsfubhPFpjPe4aQ4
	OCCO72Js2D2Bp3bs257kDwYEOQ3TkQy+5VEKjkpvO9EGO9+FdwSvMgRYGddNyo3Gs9RlUQ+XA9YYd
	zDtjb4NtzUjO8EbZgv2f4vV6gSmBa163gpSvYSH95qAepUFO9qlFJn5GBUNa1TGpR98vVdwQFoD9l
	fIwLWj3P0SU1yKFpHM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1texfh-0000000Fj5r-2p6l;
	Mon, 03 Feb 2025 14:43:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1texff-0000000Fj4w-0f1F
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 14:43:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C2971A40BB2;
	Mon,  3 Feb 2025 14:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887CAC4CED2;
	Mon,  3 Feb 2025 14:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593809;
	bh=qeocwwPQ5C2IAncuVyNvqD8hw5pRTw0+xfHPcXFs1Fo=;
	h=From:Subject:Date:To:Cc:From;
	b=EZ6mUGf/ikBQDK2tWMhmKXhJQ5y9OFWZas7OSgQjZ7tcunuYFmeX2PDBDd/3mueJz
	 hD/GKwcW1o1lBchUgV8knMgY/M74jNE+k5meFOPMXgO3T4g/AzgI4OzdQv2h5+7yKB
	 d8wFBbeUIrWWrP1fp3M6SqWG0WkjPSAe0x8KQAjbZtLC3uwOMEdDBllsX+6d16hRAh
	 hBOVgFpaadfzxyg8ZW8w2OgByUu+PB3OY9k0L03F4DvbiKFjKY29+9oDQUpewVDUxR
	 olyhco9OhV+3QF0SJEA52A7e+x94/5xGPGqacnqF6aow9MrwXVRinBUHY0Pytkg1uQ
	 mR/vtWbvJS4Mw==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v2 0/6] X1P42100 DT and PCIe PHY bits
Date: Mon, 03 Feb 2025 15:43:19 +0100
Message-Id: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAfWoGcC/3XOQQ6CMBAF0KuQri2ZlpaIK+5hDCl11CbSYqcix
 nB3K6xd/kn+m/9hhNEhsUPxYREnRy74HOSuYPZm/BW5O+fMJEgNQmqewugsn8WounMiXvWNhqa
 3WJmK5dIY8eLmFTyethzx8cxu2o5sQCKzuvnNpgpolFBQKoB6D4ILnhu2e6Hv3ya0v+C8LW0Y2
 M+8OUohvtfNk1jRf/MmwYGDrHVjYN+DUm0gKh9Pc8/YsInLsnwB6DajOgcBAAA=
X-Change-ID: 20250125-topic-x1p4_dts-3b9509bce3a3
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738593805; l=2201;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=qeocwwPQ5C2IAncuVyNvqD8hw5pRTw0+xfHPcXFs1Fo=;
 b=kJumrNR4zm4z+AtZTE9nm30T1JkuijLsJAKHRh5QX3iyDydnGCglXhGBM3ipLePNTKJVOJBOQ
 lysZRrbHsCqCFEF/JGw46THXwJ40adSrHnEEv65nh0hGc4G0OXzbfOw
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_064331_326319_85F32FB4 
X-CRM114-Status: UNSURE (   8.64  )
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
Changes in v2:
- pick up tags (added Jens's t-b where it made sense)
- don't add & instantly delete a line in patches 2->3
- make patch 2 do what its commit message says
- Link to v1: https://lore.kernel.org/r/20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com

---
Konrad Dybcio (6):
      dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe Gen4x4 PHY
      dt-bindings: phy: qcom,qmp-pcie: Drop reset number constraints
      phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
      arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR resets
      arm64: dts: qcom: Commonize X1 CRD DTSI
      arm64: dts: qcom: Add X1P42100 SoC and CRD

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |    9 +-
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 .../dts/qcom/{x1e80100-crd.dts => x1-crd.dtsi}     |    7 -
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts          | 1270 +-------------------
 arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi       |    2 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |   44 +-
 arch/arm64/boot/dts/qcom/x1p42100-crd.dts          |   17 +
 arch/arm64/boot/dts/qcom/x1p42100.dtsi             |   81 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |   18 +
 9 files changed, 148 insertions(+), 1301 deletions(-)
---
base-commit: e2ed2f6a484c2779f1f4fa873cd67f8baa10fc9c
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
