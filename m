Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C93C3C25B4F
	for <linux-phy@archiver.kernel.org>; Sun, 12 May 2024 15:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PTxm6F7isC4r/FVhHAzZvONR33QYllBBikacTf3zAAw=; b=b6eEgDpHQgILZZ
	cHvyqQNHOeSWlD3tcpRGNHzIMhrcH5rTk7w5SyRVFAIclk8hkrv4j+1mcrhHMyeAFdm17YkU3I9S+
	yKgS/6N9jfruR0uYHZpJO3jVfMtezJo5pUraKFv51yOEeE0iY0kMW5Qagt2rVoMkkQghSJ5inR0f5
	fX39E6f7yQIFDRFQeOTmHiW19jMk77UvJnF0zmdV0sWvGQL6yxhkWb41wDFlDkk3EcnclCdqGCQQG
	2iVGgk85vLw2rhQth/4XR5C7VgYKnMqGfkGUeU8m1bGMYHFn3/xubQGHA8dC5WK+jqzM890JupEjF
	867dgbcOB9zZ3qBlTuGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6B7a-0000000ACgb-1U6d;
	Sun, 12 May 2024 15:28:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6B7X-0000000ACfR-02sJ;
	Sun, 12 May 2024 15:28:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8522E60A50;
	Sun, 12 May 2024 15:28:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A1DC116B1;
	Sun, 12 May 2024 15:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527692;
	bh=eGt7xrSBMhn4Epr9ZFy/Lt+CLjsvFOjbiZ7MLPJSmvU=;
	h=From:To:Cc:Subject:Date:From;
	b=JIlijAlU+aKc0EtSy7kZ7MSG7w11BrYPcz7pjgNMTUrqlV8hUbZmv/tevBV5NusyK
	 edG/fCVEYYyW10SNITcuPtyyQ4zpm+cO6C3Ul/VH56/X6f04XzF3IA+KZ73WJwSs3u
	 hKRJ3s+6lKiJclZFuYQsdBXRLAQpp9yvcGa/wYjO7t9L6E8sJuurpSTx6bJwxrgI4v
	 os8ITWJ873CRxA6WnDTY22vxCrFFLU1zk7Q6PJqi/iciOxyVOAU4ew35Y1hxy0xCEh
	 grRDQNu9uqD6B5WNcu4uL4nD/2hF6k5wSEDKgDc01myLorcpBpImVct/5fhUI3Iggt
	 RhdYLHe0k/svg==
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
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 0/3] Introduce PCIe PHY driver for EN7581 SoC
Date: Sun, 12 May 2024 17:27:37 +0200
Message-ID: <cover.1715527166.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240512_082815_116085_90154F2B 
X-CRM114-Status: UNSURE (   7.06  )
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

Lorenzo Bianconi (3):
  dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
  arm64: dts: airoha: Add EN7581 pcie-phy node
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.

 .../bindings/phy/airoha,pcie-phy.yaml         |   55 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/airoha/en7581.dtsi        |    9 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  476 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1227 +++++++++++++++++
 8 files changed, 1787 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
