Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A227CA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DBEcl6LvP3umkQ+la88kvVAz4289WgRUqAoJ84cWFe4=; b=B1hcksVdbeFsCB
	c9yQdiycuwWJykjkVd7LtSGzZ6xezFdmzYc4wrs/rCtHv0fbjCQJjzCjVJaZD+FZc3uu+sITCc4r8
	3xrE2ZmzwDGQmP69uTBVmq0s5kIXHm33hcYJt7cizx23iL9rHD6KoplHknTontTG2RTwT6hq3Wqz5
	K8V/GNsMs+NUD+cV5MMtW4klqf945h0XqWMS29jkqoD9iCz2NjbsVKH9+WwA66aJkwbuRPbyPdxey
	KZTLust+bkXEU9im6uzE7XO2fr1gpj3/VEMB3CxwcGX9bZHg7ZHk4PnXp+kBt4ejrR22BRxJl9Uf4
	0V101XYqktOD9FH6Ar5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3c9-00000009a4O-2xS3;
	Thu, 04 Sep 2025 06:38:33 +0000
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net ([206.189.21.223])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3Yl-00000009Ymx-0Y5r
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:35:05 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app1 (Coremail) with SMTP id TAJkCgAHHxALM7lokE_IAA--.20421S2;
	Thu, 04 Sep 2025 14:34:53 +0800 (CST)
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
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v3 0/3] Add driver support for Eswin EIC7700 SoC SATA Controller and PHY
Date: Thu,  4 Sep 2025 14:34:27 +0800
Message-Id: <20250904063427.1954-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: TAJkCgAHHxALM7lokE_IAA--.20421S2
X-Coremail-Antispam: 1UD129KBjvJXoWxZF4DZryDXF1rAr4xWFW5trb_yoW5Xryfpa
	1kCryYyr1ktryxJan7Ja10kFy3Aan7GFWakrZrXw15X39I93yvqa1fK3WYyF97Cw1kXr1Y
	vF4aga45CFy5ArJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
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
X-CRM114-CacheID: sfid-20250903_233503_428605_93879888 
X-CRM114-Status: GOOD (  13.78  )
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

This series depends on the config option patch [1].

[1] https://lore.kernel.org/all/20250825132427.1618089-3-pinkesh.vaghela@einfochips.com/

Updates:
  v2 -> v3:
    - Use full name in "From" and "Signed-off-by" fields information.
    - eswin,eic7700-ahci.yaml
      - Remove the introduction to the reg, interrupts, phys, and phy-names fields.
      - Modify the usage of the clocks field in the examples.
      - Corrected the order of dt properties.
    - phy-eic7700-sata.c
      - Register operations use the GENMASK macro and FIELD_PREP instead of
        the original bit offset method, and add "#include <linux/bitfield.h>".
      - Modified some macro definition names.
      - Remove the redundant initialization assignments for "ret" and "val".
      - Delete ".suppress_bind_attrs = true".
      - Modify the driver name.
      - Add "#include <linux/io.h>" to fix the robot test issue.
    - Link to v2: https://lore.kernel.org/lkml/20250819134722.220-1-luyulin@eswincomputing.com/

  v2 -> v1:
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

Yulin Lu (3):
  dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
  dt-bindings: phy: eswin: Document for EIC7700 SoC SATA PHY
  phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver

 .../bindings/ata/eswin,eic7700-ahci.yaml      |  80 +++++++
 .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  36 +++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/eswin/Kconfig                     |  14 ++
 drivers/phy/eswin/Makefile                    |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c          | 205 ++++++++++++++++++
 7 files changed, 339 insertions(+)
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
