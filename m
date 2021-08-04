Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7920C43214
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 16:03:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BBF366104F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 16:03:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BBF366104F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ol4IPuXFIQXy7OMRp4enVKfMOTuOhA+q9DChkAUl51U=; b=kO21sGqcHnl9Lx
	QyMq+Bj8bhRbDu68wgqWFpAeic/6ONEq9fNta5QYXtzdcHxhOUiTJnUBqjhuIGL3NTs44Wixiiho/
	nDyXuAXmaJQSaj3XK94JF1T0fiLTnrLpDA7UOEEn0DhhTU8ujcWpbzeWdK4lqEXIcO88QbdVF+fch
	IPvDw2/yaZ6PIKECFCftkyzyKuFlhPEEHRWp0PjYXOZqaw8OGF3s8KBefjSS2EnyoFzrcKZwNyYQu
	mkmkaWZJ62Q2eBeG22ZuDkbwHmsSw4y+tQH1GJ83Pxn181bu+PJ/f+jkWYp2EjcbccBuL8z59LnIx
	nEpaVyLWwhoW3EvIWZYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBJMS-006hpP-1I; Wed, 04 Aug 2021 16:03:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBJMM-006hkc-Pv
 for linux-phy@lists.infradead.org; Wed, 04 Aug 2021 16:03:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 63DB761002;
 Wed,  4 Aug 2021 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628092990;
 bh=Y2C1L5U0SUZAqLMzWt93tWKBQx0TR0CWZaFJWmkji9M=;
 h=From:To:Cc:Subject:Date:From;
 b=IoULW2IJrz1OneVDGlbnYwVYteeO0F0G89hllsWtWhEYqHSdIXxV/Juqxk7SPs+gg
 vpf8uUJoI4NPsEDvU+nFM4ekb83QO4P9RrztLi4w2VWLo1OnWAdH64LEBwdf3kdGms
 vjjhZCwGDYi67zaIZYO+j/0wFxfIKXPniUHf/R2zIXEjG8QAPF6cuqdpPfwIoHBAkV
 oYrkV+1M0OMpLNMoX9qR8WpMTrE3OvqHEL3Ld12t3GmKM+vXDygTsDYqqKHwzdgrxs
 MZpLBoJ4Kx2aT2UN1COT0p0NSs+Qwl9N7hgv75/8SImD9BnsMnGnKGxVpuX9tUhN8p
 zgyHw+sYVudjA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1mBJMK-000PzI-9M; Wed, 04 Aug 2021 18:03:08 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Xiaowei Song <songxiaowei@hisilicon.com>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v9 00/11] Add support for Hikey 970 PCIe
Date: Wed,  4 Aug 2021 18:02:56 +0200
Message-Id: <cover.1628092716.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_090310_918440_E55E5ED6 
X-CRM114-Status: GOOD (  10.63  )
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

The DT schema used by this series got merged at:

	https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/?h=dt/next

The series should apply cleanly on the top of v5.14-rc1.

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
 drivers/pci/controller/dwc/pcie-kirin.c | 646 ++++++++++++++-----
 drivers/phy/hisilicon/Kconfig           |  10 +
 drivers/phy/hisilicon/Makefile          |   1 +
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 801 ++++++++++++++++++++++++
 5 files changed, 1312 insertions(+), 148 deletions(-)
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
