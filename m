Return-Path: <SRS0=wp9D=MW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15036C4320E
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 09:50:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D36F860F4A
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 09:50:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D36F860F4A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RXxG87My2f1HHcJN/syJ6SbvcvgGC/dxi491b6j8QPA=; b=WYlAoECJsvw6rb
	60tyt3QIFs407xOxTbgZla07ht54JIcLHxV+FR5al7lcaUoM5pS8liF71kEsksCA/L2rf9N1FM/yh
	eLS5j8B1nw0o29bg2CBtOJDsYizIU7fgqQIyz/GKuRe7NsWKZfcSLMlOWu7bCGBEBx9R32Hm8T6Ls
	tv6UELh+QbUI69dQ0jJrOqgazi9S54vrD8DRcpCuQbEz3dO6N+XMdjrukUQdHPEFba6KF3jKM36VI
	8SyzzzNEMi0fPjuM2TgWn3ecr8x5WCxxkxeQmRlD4+j1vWHXbDjJDO3qR6R9+9t0OrUEt35MGbalx
	lKvhYsvHk+vsF8e6fpNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9PA2-007zvM-AO; Fri, 30 Jul 2021 09:50:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9P9w-007zrL-Pk
 for linux-phy@lists.infradead.org; Fri, 30 Jul 2021 09:50:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8207B61052;
 Fri, 30 Jul 2021 09:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627638628;
 bh=HPRTefNmV6AOp/Y+4TXPirb16XdPvxqx2Z57/uQyDKM=;
 h=From:To:Cc:Subject:Date:From;
 b=MlXlNa2Z6bXAX3OaWNYy3qTrrn/dtoblfyNHwHnctkxKBbm61tmsgRaLEgbj2OXwM
 cI6fHNtCtFptt/KIDOTC5NI+lHGvv9FpzJWBt+MN9lyXhied/lLW+BFBmyKv0NVHQn
 GYsd7iCKj1hqtiyo4LRFC2wxhbW3eMYZUHrGKdDkcDAnZ+R+px90L58CUgwdrLFc+B
 z5x5zHl3kPoaR3zSmjWqFcvTxi7zO/koG18K0lkM+QXM68Bi//lw0JK3dTP99cpIVE
 K8NB0+MhpwYKOWml+9GEy50OJniXsDSXHw4rCMrJeIjVP9xZNdJObS5pvgtg37hGKA
 J0ZfZgj7zFEqA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m9P9t-006s3o-2k; Fri, 30 Jul 2021 11:50:25 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Xiaowei Song <songxiaowei@hisilicon.com>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v8 00/11] Add support for Hikey 970 PCIe
Date: Fri, 30 Jul 2021 11:50:03 +0200
Message-Id: <cover.1627637745.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_025028_908135_29B3EF4C 
X-CRM114-Status: GOOD (  15.13  )
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

On this version, the DT bindings were split on a separate patch series:
	https://lore.kernel.org/lkml/cover.1627637448.git.mchehab+huawei@kernel.org/

The patches here should apply cleanly on the top of v5.14-rc1.

patch1 contains a PHY for Kirin 970 PCIe.

The remaining patches add support for Kirin 970 at the pcie-kirin driver, and
add the needed logic to compile it as module and to allow to dynamically
remove the driver in runtime.

Tested on HiKey970:

  # lspci -D -PP
  0000:00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
  0000:00:00.0/01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  0000:00:00.0/01:00.0/02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  0000:00:00.0/01:00.0/02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  0000:00:00.0/01:00.0/02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  0000:00:00.0/01:00.0/02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  0000:00:00.0/01:00.0/02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  0000:00:00.0/01:00.0/02:01.0/03:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd Device a809
  0000:00:00.0/01:00.0/02:07.0/06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)

Tested on HiKey960:

  # lspci -D 
  0000:00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)

---

v8:
- Changed the drivers to follow the DT schema under discussions with
  Rob;
- Added patches to fix powerof logic and to allow unloading the driver.

v7:
- Moved kirin_pcie_match to be closer to the probe function;
- Improved patch description for:
	"PCI: kirin: add support for a PHY layer"
- Added missing MODULE_*() macros on both PCI and PHY drivers;
- Fixed a warning at hisilicon,phy-hi3670-pcie.yaml reported by
  Rob Herring's bot.

v6:
- Use an alternative approach, in order to keep the Kirin 960 PHY internal to 
  the driver, in order to not break the DT schema. The PHY-specific code
  were made self-contained at pcie-kirin, in order to make easier to split
  it in the future, if needed.

v5:
- added "static" to hi3670_pcie_get_eyeparam() declaration on patch 6/8

v4:

- dropped the DTS patch, as it depends on a PMIC-related patch series;
- minor changes at the patch description;
- HiKey and HiSilicon are now using the preferred CamelCase format.

Mauro Carvalho Chehab (11):
  phy: HiSilicon: Add driver for Kirin 970 PCIe PHY
  PCI: kirin: Reorganize the PHY logic inside the driver
  PCI: kirin: Add support for a PHY layer
  PCI: kirin: Use regmap for APB registers
  PCI: kirin: Add support for bridge slot DT schema
  PCI: kirin: Add Kirin 970 compatible
  PCI: kirin: Add MODULE_* macros
  PCI: kirin: Allow building it as a module
  PCI: kirin: Add power_off support for Kirin 960 PHY
  PCI: kirin: fix poweroff sequence
  PCI: kirin: Allow removing the driver

 drivers/pci/controller/dwc/Kconfig      |   2 +-
 drivers/pci/controller/dwc/pcie-kirin.c | 647 ++++++++++++++-----
 drivers/phy/hisilicon/Kconfig           |  10 +
 drivers/phy/hisilicon/Makefile          |   1 +
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 799 ++++++++++++++++++++++++
 5 files changed, 1311 insertions(+), 148 deletions(-)
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
