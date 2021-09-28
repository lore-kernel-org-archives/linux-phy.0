Return-Path: <SRS0=m7K2=OS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E061C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 07:34:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07FB961206
	for <linux-phy@archiver.kernel.org>; Tue, 28 Sep 2021 07:34:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 07FB961206
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3TG54bWEcsM5RIhKVMrxOv6kjzTEEZRcMqeLlpyOBtc=; b=SWcRSVyJElbmhY
	EdVmn0gkV6TWSzVIYPm7xz25O43zJ/oPX91J5t9aYST3TQ1516I5FMYvUz00XMV8fZRrA6iyfofIT
	T9Ty0E5Y9rf0bt0oMr8Oqik8pW71pY2u0j2O80bBJfmULWj41E/Gtx0dTykQsDLqalUr+//yXr2bz
	Qbpi4zDO5rPXMyDRQXNe5KADZOJbdmKXBfkxRT1m/DZhAr97lOM9vqRaSTb2S6zLqRR6UAXE5/COs
	pLsdykARd1jleq5H9C6dlUesks8VWHczPmyVWuuuu7ztrRIYsekVrOu1kl65u5fEoLmDh00NcAbXD
	jcCZQhYfA2FLElr1ayTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV7dF-0060rg-JU; Tue, 28 Sep 2021 07:34:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV7dC-0060os-Lu
 for linux-phy@lists.infradead.org; Tue, 28 Sep 2021 07:34:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 39F41610FC;
 Tue, 28 Sep 2021 07:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632814466;
 bh=htrqF2oc/dxAQtvS8aSlnb0UgtC3mFheBG7Un+/MuRw=;
 h=From:To:Cc:Subject:Date:From;
 b=JQQrNeJqG4DISlu3Gd9xysq9zxeo/wR/27Jtb2fCC+psPp0GquvfPvGeMW1RGxTsk
 MK/qFKkoSUs4LaV6VvZw9QwQZ8L+q8tC2FxvyWCVpGfDG28rr4dekaHZL/YpJ3Oz7a
 dLS+/U8/BcAK5NdXDI6d/Xh9LNXE+RX27wZdP41RA3nPj+ehnY2KIt4utA8yraTvxu
 6iXRwK8Bq6TPsWN5AFd8PT7qmUecoDUCypTy/RJeSEovPHuV9Uz4kekOnQzhRWDoS1
 hjLdv3YkcEq89dv1x9LLfyzkwtpmNkfjMSFyCL+h8z7LocJ178lQfspT004xzEkeqg
 CJGGIi0bSurcA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1mV7dA-000RPY-7t; Tue, 28 Sep 2021 09:34:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v12 00/11] Add support for Hikey 970 PCIe
Date: Tue, 28 Sep 2021 09:34:10 +0200
Message-Id: <cover.1632814194.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_003426_771871_FA4A9E52 
X-CRM114-Status: GOOD (  12.31  )
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

The pcie-kirin PCIe driver contains internally a PHY interface for
Kirin 960, but it misses support for Kirin 970.

Patch1 contains a PHY for Kirin 970 PCIe.

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

v12:
  - Change a comment at patch 1 to not use c99 style.

v11:
  - patch 5 changed to use the right PCIe topology
  - all other patches are identical to v10.

v10:
  - patch 1: dropped magic numbers from PHY driver
  - patch 5: allow pcie child nodes without reset-gpios
  - all other patches are identical to v9.

v9:
  - Did some cleanups at patches 1 and 5



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
 drivers/pci/controller/dwc/pcie-kirin.c | 644 +++++++++++++-----
 drivers/phy/hisilicon/Kconfig           |  10 +
 drivers/phy/hisilicon/Makefile          |   1 +
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 845 ++++++++++++++++++++++++
 5 files changed, 1354 insertions(+), 148 deletions(-)
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
