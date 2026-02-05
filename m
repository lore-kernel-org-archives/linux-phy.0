Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 901ABE91290
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 08:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vYL8K6kgMGh9hXmVtwccbyi0IwzFvw6KCPpZZ4RirGk=; b=12K4nxDG5+ZFmR
	6MEGDDgQde31vpw+G1Z2JYTsaH1XQJ6YWQMOyFQRRR8+4fRDkNCnG2I7VXCdZhsS1JoYoGNXPQT5V
	xOYrtH9AimgTB9z50aEqNsf5NAbeV+fdCOI4VuAsZDZEaPkEIUws8/wm/mE1SyRM0+eOL1qzpF7tr
	tNWCBiF3UYhYdrBDYNAExZmtbjI2lKJglAiou93OnNIdjuBeA9DuTV7B9nJT0GNPTucPOjV2FcEoo
	pV3Ofsl1vt8CtFaKXTWOLtYNau7NQbblX/OAQdD3ZYfPsn9xRC9JntrYjcbck1anQrXVrw7RIak+S
	pOL+j63dGOshajYPaOIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnubF-00000009bdW-22Kh;
	Thu, 05 Feb 2026 08:20:29 +0000
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net ([206.189.21.223])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnubC-00000009bd3-0T0C
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 08:20:28 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgAncKy8UoRpw+oCAA--.10662S2;
	Thu, 05 Feb 2026 16:20:13 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	fenglin@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v9 0/2] Add driver support for Eswin EIC7700 SoC SATA PHY
Date: Thu,  5 Feb 2026 16:20:09 +0800
Message-Id: <20260205082009.1780-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: TQJkCgAncKy8UoRpw+oCAA--.10662S2
X-Coremail-Antispam: 1UD129KBjvJXoWxKFyxuw4UuF4kZw1rKFWxZwb_yoW3JrWrpa
	ykGryUGr1vqryIqan2ya109FyIvan7JFW3ur4fJw13uws8Z3ZYyr4Ika1YvF9rA3ykt345
	tF4aqF98AFWUAFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbGQ6JUUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_002026_412834_8C92931F 
X-CRM114-Status: GOOD (  22.90  )
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

Updates:
  v9 -> v8:
    - eswin,eic7700-sata-phy.yaml
      - Modify the format of the "default" field in the
        "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
        properties.
    - phy-eic7700-sata.c
      - Correct the incorrectly formatted symbol "-" in the comments.
    - Link to v8: https://lore.kernel.org/lkml/20260123024823.1612-1-luyulin@eswincomputing.com/

  v8 -> v7:
    - eswin,eic7700-sata-phy.yaml
      - Add "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
        properties, because these parameters may vary across different
        circuit boards.
      - Delete reviewed-by tag of Krzysztof Kozlowski, because the tuning
        properties are introduced.
    - phy-eic7700-sata.c
      - Try to get SATA PHY transmitter amplitude and pre-emphasis signal
        eye diagram tuning parameters from dts instead of hardcoded values
        in the code. Because, these parameters may vary across different
        circuit boards. Define default tuning parameters and use it when
        these properties are not declared in dts.
      - Add a comment to explain the reason for mapping I/O resources with
        platform_get_resource and devm_ioremap instead of using the
        devm_platform_ioremap_resource API.
    - Link to v7: https://lore.kernel.org/lkml/20260106062944.1529-1-luyulin@eswincomputing.com/

  v7 -> v6:
    - phy-eic7700-sata.c
      - Rename PHY_READY_TIMEOUT to PLL_LOCK_TIMEOUT_US with value 1000.
      - Add macro PLL_LOCK_SLEEP_US set to 10.
      - Add "goto disable_clk" in the eic7700_sata_phy_init function.
      - Modify Copyright year from 2024 to 2026.
    - Link to v6: https://lore.kernel.org/lkml/20251201060737.868-1-luyulin@eswincomputing.com/

  v6 -> v5:
    - eswin,eic7700-ahci.yaml
      - Delete this file and it has already been applied in reply[1].
    - eswin,eic7700-sata-phy.yaml
      - Add clock and reset related properties.
    - phy-eic7700-sata.c
      - Map the io resource with platform_get_resource and devm_ioremap
        instead of devm_platform_ioremap_resource API. Because the address
        region of sata-phy falls into the region of hsp clock&reset which
        has been got by hsp clock&reset driver.
      - Use regmap_read_poll_timeout in wait_for_phy_ready to replace the
        while loop check.
      - Use devm_regmap_init_mmio and regmap_write to replace writel.
      - Adapt to the clock and reset driver framework, replacing the
        original readl and writel.
        Because we are implementing the HSP layer clock and reset drivers,
        the corresponding clock and reset registers can be registered into
        the driver framework. And I have tested on the Sifive HiFive
        Premier P550 board.
    - Link to v5: https://lore.kernel.org/lkml/20250930083754.15-1-luyulin@eswincomputing.com/

  v5 -> v4:
    - eswin,eic7700-ahci.yaml
      - Add "dt-bindings: ata:" prefix to the subject.
      - Wrap at 80 characters in the YAML description field.
    - Link to v4: https://lore.kernel.org/lkml/20250915125902.375-1-luyulin@eswincomputing.com/

  v4 -> v3:
    - eswin,eic7700-ahci.yaml
      - Fix grammatical errors in patch subject and commit message
      - Add an explanation in the commit message of patch 1 for retaining
        the "ports-implemented" field, which Rob Herring suggested to
        remove in the review comments on v2.
        Link to Rob Herring's review:
        https://lore.kernel.org/lkml/CAL_JsqKFotNLZZXwiy7S6K8qXLdGRAnsa-1zvZRDQBE39Gf5kg@mail.gmail.com/
        Link to my question and Niklas Cassel's reply:
        https://lore.kernel.org/lkml/aLBUC116MdJqDGIJ@flawful.org/
        In this reply, Niklas Cassel mentioned his view:
        If the ports-implemented register gets reset from
        ahci_platform_assert_rsts(), then it seems acceptable to
        retain the ports-implemented property in the device tree.
        This aligns with our design.
        Link to my reply:
        https://lore.kernel.org/lkml/4ab70c6a.8be.198f47da494.Coremail.luyulin@eswincomputing.com/
        Link to Niklas Cassel's question and my further explanation:
        https://lore.kernel.org/lkml/aLlYkZWBaI5Yz6fo@ryzen/
        https://lore.kernel.org/lkml/7206383a.d98.19918c22570.Coremail.luyulin@eswincomputing.com/
    - eswin,eic7700-sata-phy.yaml
      - Fix grammatical errors in patch subject and commit message
      - Adjust the position of reg in the properties and required arrays
      - Add reviewed-by tag of Krzysztof Kozlowski
    - phy-eic7700-sata.c
      - Correct the loop condition in wait_for_phy_ready() to use the
        current jiffies instead of the fixed start time.
      - Change the return value from -EFAULT to -ETIMEDOUT to correctly
        indicate a timeout condition.
      - Remove redundant clock disable handling in probe error path, as
        SATA_SYS_CLK_EN is managed in phy_init() and phy_exit().
      - Use dev_err_probe return in probe.
      - Reorder local variables to follow reverse Xmas tree order.
      - Wrap each line in the extended comments to 80 columns before
        splitting lines.
      - Adjust the position of `#include <linux/io.h>` for proper ordering.
    - Link to v3: https://lore.kernel.org/lkml/20250904063427.1954-1-luyulin@eswincomputing.com/

  v2 -> v3:
    - Use full name in "From" and "Signed-off-by" fields information
    - eswin,eic7700-ahci.yaml
      - Remove the introduction to the reg, interrupts, phys, and
        phy-names fields.
      - Modify the usage of the clocks field in the examples.
      - Correct the order of dt properties.
    - phy-eic7700-sata.c
      - Register operations use the GENMASK macro and FIELD_PREP instead
        of the original bit offset method, and add
        "#include <linux/bitfield.h>".
      - Modify some macro definition names.
      - Remove the redundant initialization assignments for "ret" and
        "val".
      - Delete ".suppress_bind_attrs = true".
      - Modify the driver name.
      - Add "#include <linux/io.h>" to fix the robot test issue.
    - Link to v2: https://lore.kernel.org/lkml/20250819134722.220-1-luyulin@eswincomputing.com/

  v2 -> v1:
    - Delete the original controller driver and use ahci_dwc.c instead.
    - Add eswin,eic7700-ahci.yaml
      - Correct the descriptions of reset, interrupt and other hardware
        resources for the sata controller on EIC7700 SoC.
      - The clocks for both sata controller and sata PHY are controlled
        via a register bit in the HSP bus and are not registered in the
        clock tree. Clock are managed within the PHY driver, therefore it
        is not described in this document.
      - Add $ref: snps,dwc-ahci-common.yaml#.
    - Add eswin,eic7700-sata-phy.yaml
      - Add this file to include the description of the PHY on EIC7700 SoC.
    - Add an eswin directory under the PHY driver path, and include the
      SATA PHY driver code for EIC7700 SoC.
    - Link to v1: https://lore.kernel.org/all/20250515085114.1692-1-hehuan1@eswincomputing.com/

Yulin Lu (2):
  dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
  phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver

 .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  92 ++++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/eswin/Kconfig                     |  14 +
 drivers/phy/eswin/Makefile                    |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c          | 273 ++++++++++++++++++
 6 files changed, 383 insertions(+)
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
