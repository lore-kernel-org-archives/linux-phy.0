Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DAEC25B75
	for <linux-phy@archiver.kernel.org>; Wed, 15 May 2024 10:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4QFEZf4k5wjTOfvUPm9Ql/2bZNwpuF8rar1v0zV9avI=; b=epxRnwSQ2WJkzb
	qzn7Qp3SSTbd7lLlxMFIJpix0NF2IWZpgujO0eBZ3jBE+1HzpMAge1mDIRvMr6a4xxJtlOaPzMVxJ
	H8U3s2ULSvWb1aX0vcufbjHKkFjwkQ4pZDN1Kxl0eyOq7Ksrau9VgDlDoZolc0vvRhYWZStHiOMgs
	q/6W9Pr/1ltRRzcKLe3Hg6chvNJPoE4q4s32YTbNMGJ7c1LnXxQXO+XmOaqRrcOgMX7tIMPQuu9Oo
	wZt2wJFPr6fy0TuQpoZ1DP5xAedtR0+QQzvggl6zP+bZXTEZJyJEbRcxH0xP/9ow1h7KT38LTlWL3
	ChACb0qNBze0+QM+KuoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C87-00000001GIy-3OSl;
	Wed, 15 May 2024 10:45:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C83-00000001GHS-1fa9;
	Wed, 15 May 2024 10:45:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A1416CE1371;
	Wed, 15 May 2024 10:44:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55C95C116B1;
	Wed, 15 May 2024 10:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769896;
	bh=SaM6rBkEWsdmGxMdLo5qtXW2ylDMeVaUbAOoA0bZes4=;
	h=From:To:Cc:Subject:Date:From;
	b=jykfc7/1NJrVt9GVjJIiVgYWF/fWSv+yCSFLQI9iTKQOhhrgmSRaLYuKHUePI0TPx
	 NjkPUDf5KC4/N7cjWkMCPA7RMJi36cJtdt9hGhugKjWutQHMrw2oncj3GomI1nVXGZ
	 8tnl8ZrDZSo+EExs4aV0TAqDG4RYX/ShNDwuXHeNkK9QXS7aPwjt2/gZKLkzAMjcvC
	 PLf4WZWrb3ElOO6JP8UN+8Ot3m7C7V4dp/Mv5hJqiV48JUiIE5QWEOH7ITU98yKws1
	 nZ8JAsF1GWnBlRhULwzCBdCwOUKzTBUWY2SMT338GyEYPWU8pk/sAtWW8Fbf8DA9o+
	 W8Xg01ejw81mQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v2 0/4] Introduce PCIe PHY driver for EN7581 SoC
Date: Wed, 15 May 2024 12:44:44 +0200
Message-ID: <cover.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_034459_639636_544614CB 
X-CRM114-Status: UNSURE (   8.69  )
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

Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

Changes since v1:
- add patch 4/4 to enable PCIe PHY driver
- rename documentation binding in airoha,en7581-pcie-phy.yaml
- fix kernel doc

Lorenzo Bianconi (4):
  dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
  arm64: dts: airoha: Add EN7581 pcie-phy node
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.
  arm64: defconfig: Enable Airoha pcie phy driver

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  |   55 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/airoha/en7581.dtsi        |    9 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  476 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1226 +++++++++++++++++
 8 files changed, 1786 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
