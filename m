Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2633CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 18:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5p+qau3Q/sBJOYI6KnOpdjf9xo6uws6luLMn+cEiEUI=; b=bFRfsKeEEpPmfq
	6HzMm7krSsUb9pcA4QBIDc0FfjjM7lyVPsibGBXQyZliNrNySsD08JJ7zr5xzXEmkH+R1t9ULJUwe
	ieGGFK3UoaN+1euaF2ZerRHJCQkxWNFAd5wDiNOxAVXaqniygj0YFCBDBEKEJFqiYTOFl4xR5zVrW
	jrgJQrxS+6aq0u9vpdIb57TnD5+BkMYsQRvWa06retxZbBIGaFdPZbGA03fUc7rIo6msexBZ914rG
	vGx3r19YA/tijaEk4JkSMXcyUP5PefERQq00s76EU5uMDr7Ku6/NcBXaAgXghBHnn5OsODgx9pA0W
	MNV/VmA0fMsdQ8WtAy5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQqz-0000000BE4g-3S7C;
	Tue, 19 Aug 2025 18:14:37 +0000
Received: from sgoci-sdnproxy-4.icoremail.net ([129.150.39.64])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoMgg-0000000AeNr-1oyP
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 13:47:45 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app1 (Coremail) with SMTP id TAJkCgDX+xFugKRoCa7AAA--.21178S2;
	Tue, 19 Aug 2025 21:47:28 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: dlemoal@kernel.org,
	cassel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	linux-phy@lists.infradead.org
Cc: ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com,
	linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com,
	luyulin <luyulin@eswincomputing.com>
Subject: [PATCH v2 0/3] ESWIN EIC7700 sata phy driver and yaml,
Date: Tue, 19 Aug 2025 21:47:22 +0800
Message-Id: <20250819134722.220-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: TAJkCgDX+xFugKRoCa7AAA--.21178S2
X-Coremail-Antispam: 1UD129KBjvJXoWxCw1UWr4DCrWDCF43ZF4kXrb_yoW5XFyDpa
	1kCF9IyrsYqryxX3Z7Ja10kFy3J3Z3GrWakrZrJw15Zw4Y934Fqw43t3Z0vFy2yw18XryY
	qFn0ga4akFyUArJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_GFv_Wrylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7sRidbbtUUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_064742_962995_FFA335BF 
X-CRM114-Status: GOOD (  13.02  )
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

From: luyulin <luyulin@eswincomputing.com>

  Implements support for the Eswin EIC7700 SoC sata phy.
  Implements the calling sequence to interface with dwc-ahci,
  ensuring correct hardware execution order.
  Integration with the Linux phy subsystem for consistency and
  scalability.
  Add documentation for ahci and sata phy on the ESWIN EIC7700
  SoC platform.

  Supported chips:
    Eswin EIC7700 SoC.

  Test:
    Tested this patch on the Sifive HiFive Premier P550 (which uses
    the EIC7700 SoC). Based on this driver, the SATA device read/write
    operations are functioning normally, supporting SATA 1.5 Gb/s,
    3.0 Gb/s, and 6.0 Gb/s speeds, so this verifies that this sata
    driver patch is working properly.

  This series depends on the vendor prefix patch [1] and config option patch [2].
  [1] https://lore.kernel.org/all/20250616112316.3833343-4-pinkesh.vaghela@einfochips.com/
  [2] https://lore.kernel.org/all/20250616112316.3833343-3-pinkesh.vaghela@einfochips.com/

Updates:

  Changes since V1:
    - Delete the original controller driver and use ahci_dwc.c instead.
    - Add eswin,eic7700-ahci.yaml
      - Correct the descriptions of reset, interrupt and other
        hardware resources for the sata controller on EIC7700 SoC.
      - The clocks for both sata controller and sata PHY are controlled
        via a register bit in the HSP bus and are not registered in the
        clock tree. Clock are managed within the PHY driver, therefore
        it is not described in this document.
      - Add $ref: snps,dwc-ahci-common.yaml#.
    - Add eswin,eic7700-sata-phy.yaml
      - Add this file to include the description of the PHY on EIC7700 SoC.
    - Add an eswin directory under the PHY driver path, and include the SATA
      PHY driver code for EIC7700 SoC.
    - Link to v1: https://lore.kernel.org/all/20250515085114.1692-1-hehuan1@eswincomputing.com/

luyulin (3):
  dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
  dt-bindings: phy: eswin: Document for EIC7700 SoC SATA
  phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver

 .../bindings/ata/eswin,eic7700-ahci.yaml      |  92 ++++++++
 .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  36 ++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/eswin/Kconfig                     |  14 ++
 drivers/phy/eswin/Makefile                    |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c          | 197 ++++++++++++++++++
 7 files changed, 343 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
 create mode 100644 drivers/phy/eswin/Kconfig
 create mode 100644 drivers/phy/eswin/Makefile
 create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
