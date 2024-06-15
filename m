Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D4A7C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 21:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ImCzn0Nljg9LXFbsVBfYkJkFSJKVak3Rwb+C7DVN8Ls=; b=XIfd5ZD/h/DY6M
	UiEzCozlN0v91nY0Clr4lfzM6HzIal2DAfZqXqDEb4NW9Ipb/BKkDx5A7O6nXzmWxZmY0NJnH5ALI
	I3e/cE0WQPYLNReIYEcO8HuG/Rpt3ptmH+jB5a9qBHqtxhAngVLg4emOHAoVVA7rV+TjznhPneixH
	iwscgK2EmQrPvATN2a/Ne+QNRzUo+kQb0JK545OzosXHwKFFdivy+mWzuKLkNf2qwxjz2GK1Jn5QX
	uKhUMAsVYT3QWJZduXVAKBY80Y4wKfE3IXri/XtuSc5vG5YZvb8TIr22KM/9GQ7Gy7IoKvyJiV7Nv
	ejvXOtVi+M6EWvyNPsXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIal0-000000067Zl-0Bey;
	Sat, 15 Jun 2024 21:16:18 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIakv-000000067YO-31ft;
	Sat, 15 Jun 2024 21:16:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 939B9CE0966;
	Sat, 15 Jun 2024 21:16:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4C40C116B1;
	Sat, 15 Jun 2024 21:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486169;
	bh=Jc3vAk1elq+Lgi/TU/hAh3y8Cbgzaz7t4Elvh1xGdXU=;
	h=From:To:Cc:Subject:Date:From;
	b=nwRLwqNrd4VOTEBgSDYiKIsN7I73CT8siurgyaPLGXTPohvgMP7uS5UdGqepq0W1x
	 BoWEaL8pmS+afbBo51sjcikaSInHkzwF4HBTENtkyQ+q5eICF/Ovdo3oXUjJgkzKj9
	 L/RtizFWpVX76JxWB3O81w9Sk+fsDr+1WZTMvpNiwUIMTxmcCZgUZ0fyGbcd9iQRp7
	 WSTu7dpVt+HYNmSWpHCRH+oVl/DUPNUGtHIY9w0sHS++e7SYMCZEPRDByUl1baSIJX
	 R3UWEOG2krFeOq8U6wJ4GT2uYTi7WZJipIRQuBUhi5p3EGcFGyzA5eUtyKPQCvOBtk
	 qQyzOQiaUjGtw==
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
Subject: [PATCH v4 0/3] Introduce PCIe PHY driver for EN7581 SoC
Date: Sat, 15 Jun 2024 23:15:40 +0200
Message-ID: <cover.1718485860.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_141613_970300_AFFEB8A6 
X-CRM114-Status: UNSURE (   8.41  )
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

Changes since v3:
- fix compilation errors on x86
- remove patch 2/4
Changes since v2:
- introduce registers description in dts binding
- compile PCIe PHY controller driver as module by default
- improve code readability
Changes since v1:
- add patch 4/4 to enable PCIe PHY driver
- rename documentation binding in airoha,en7581-pcie-phy.yaml
- fix kernel doc

Lorenzo Bianconi (3):
  dt-bindings: phy: airoha: Add PCIe PHY controller
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.
  arm64: defconfig: Enable Airoha pcie phy driver

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  |   58 +
 MAINTAINERS                                   |    8 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  477 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1248 +++++++++++++++++
 7 files changed, 1803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
