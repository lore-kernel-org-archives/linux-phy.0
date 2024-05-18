Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04743C25B74
	for <linux-phy@archiver.kernel.org>; Sat, 18 May 2024 11:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dMJjoAoLhDLniPyrs5hHQh+Wqfmhx8wmDLw6XKwdUh4=; b=W31vEEUuJlj+ji
	O0bkPXVlQO64hikgCzA33Dq3MIpfNzM1Z+NruZ6lkETUBqt/XCEOW+Nm9mdCw4w840EqvRwcq0XfA
	UGfcEds9FyCE3nJjv36FWcKRbnD1zhbM1/ke3NSDciDRFKDC1HigGNrKDlED9AdgtLxs7/4fE+P8x
	TVDbE2L1+FwTRl87wJ1RsFMi28GV3+20klnTJGwj0Qp+fdQpFrSGfYj600gDYWdmv33CDVoCrV1M3
	lb3QMsxdE1XeC446TrimjtlnWKhzr0nDu+XzKbOe+7pZEsVej6Mw628cbTBVNFns2n3ox6nct64fS
	KILRT0PROztcAAJ0yJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIo-00000009zGc-0Dlu;
	Sat, 18 May 2024 11:32:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIj-00000009zE2-2QQQ;
	Sat, 18 May 2024 11:32:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4DCCA60685;
	Sat, 18 May 2024 11:32:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B5EC113CC;
	Sat, 18 May 2024 11:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031945;
	bh=cq6oYTfrjIb+Xk/7RzKkDlliIQz7C/Ni8hMuGFl2CfY=;
	h=From:To:Cc:Subject:Date:From;
	b=D5qMrziYWaDuXwa6o+HXPJSG+KZtkX7wVH/41DWqXghthubNsWFFKlZqoRufC7z67
	 SKxNq44Ch6IKBkujr0XE73LX7Wg+1GXjO+F+YZFIxuSUo2W5G1GAX3pZzOfC0Cc1FW
	 yhmivzAvdzZp2CXc4MUxMJrVGYOyp7PFvdSNH4IIGY/629EZ/z4rGf81/E6owYDtD3
	 yH7w/SurWO3A3uv6WyMT57+fAukO+JHkmLqA4LNNfV/rv22hwv71q0n6nMCpKMDD6w
	 MU/uqzWjvAkYOw5wA2qTDhJvPa/eZcpC1Gko96t9VkaDz4E8iiWeljfzSQcCXKi2FW
	 PnugGuTlXAdeA==
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
Subject: [PATCH v3 0/4] Introduce PCIe PHY driver for EN7581 SoC
Date: Sat, 18 May 2024 13:31:40 +0200
Message-ID: <cover.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240518_043233_670423_11FF1A25 
X-CRM114-Status: UNSURE (   8.65  )
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

Changes since v2:
- introduce registers description in dts binding
- compile PCIe PHY controller driver as module by default
- improve code readability
Changes since v1:
- add patch 4/4 to enable PCIe PHY driver
- rename documentation binding in airoha,en7581-pcie-phy.yaml
- fix kernel doc

Lorenzo Bianconi (4):
  dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
  arm64: dts: airoha: Add EN7581 pcie-phy node
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.
  arm64: defconfig: Enable Airoha pcie phy driver

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  |   58 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/airoha/en7581.dtsi        |    9 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  477 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1247 +++++++++++++++++
 8 files changed, 1811 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
