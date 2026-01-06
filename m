Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71180C2A071
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 06:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oob7nmRQoWRF8cOVL27F/slSWN4V0BeGzIMNj+dFgt4=; b=EdxAq0LTlGY6gb
	MGYcIcyEMcLNMUHpwmYAK2NRTVTc2cVURBS/2HdKxK6s5Rnn8E4VFTCxBqGljTQWl6DLE2XnZQ8dy
	+Vvd1U1cUfe4GuuyIs0UZL/R9rF0Tc9czjqoFsZ1nZ/fEPjlRgivx/M4by3XIBYReafivl2/fs4zU
	a1n0QyoRIyEfXPpIKkd3l9Idm5wjdbSoECINr8RKH9lriWDvsUegyliJx2hmnT/1kktNZX5zmScFO
	BS2Rn+DxFuY2lPV6CnGaxIrFSJWHfmsiMhjO+sfpoEXiZslTr8kk99EQVzNhr4LO1iuS578wEwC22
	yoZ7Hz5HdojPTs2rXbww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd0aS-0000000CTGM-3uWM;
	Tue, 06 Jan 2026 06:30:36 +0000
Received: from azure-sdnproxy.icoremail.net ([52.237.72.81])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd0aO-0000000CTEA-3QY7
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 06:30:35 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app1 (Coremail) with SMTP id TAJkCgDX0Wn6q1xp+JqQAA--.64521S2;
	Tue, 06 Jan 2026 14:30:20 +0800 (CST)
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
	zhengyu@eswincomputing.com,
	linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v7 0/2] Add driver support for Eswin EIC7700 SoC SATA PHY
Date: Tue,  6 Jan 2026 14:29:44 +0800
Message-Id: <20260106062944.1529-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: TAJkCgDX0Wn6q1xp+JqQAA--.64521S2
X-Coremail-Antispam: 1UD129KBjvJXoWxKF1rAryUAw1rur4UZF43Jrb_yoW7KF4fpa
	ykCry7Grn5tryIqaykA3WI9FySvan7JFW3ur4fJw1Uuws8ZFyvvrsak3WYvF9rAr4kK34Y
	qF4aqF98CFyUAFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbGQ6JUUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_223033_034428_DABFD167 
X-CRM114-Status: GOOD (  22.29  )
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
      - Map the io resource with platform_get_resource and devm_ioremap instead of
        devm_platform_ioremap_resource API. Because the address region of sata-phy falls
        into the region of hsp clock&reset which has been got by hsp clock&reset driver.
      - Use regmap_read_poll_timeout in wait_for_phy_ready to replace the while loop check.
      - Use devm_regmap_init_mmio and regmap_write to replace writel.
      - Adapt to the clock and reset driver framework, replacing the original readl and writel.
        Because we are implementing the HSP layer clock and reset drivers, the corresponding
        clock and reset registers can be registered into the driver framework. And I have tested
        on the Sifive HiFive Premier P550 board.
    - Link to v5: https://lore.kernel.org/lkml/20250930083754.15-1-luyulin@eswincomputing.com/

  v5 -> v4:
    - eswin,eic7700-ahci.yaml
      - Add "dt-bindings: ata:" prefix to the subject.
      - Wrap at 80 characters in the YAML description field.
    - Link to v4: https://lore.kernel.org/lkml/20250915125902.375-1-luyulin@eswincomputing.com/

  v4 -> v3:
    - eswin,eic7700-ahci.yaml
      - Fix grammatical errors in patch subject and commit message
      - Add an explanation in the commit message of patch 1 for retaining the
        "ports-implemented" field, which Rob Herring suggested to remove
        in the review comments on v2.
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
      - Correct the loop condition in wait_for_phy_ready() to use the current
        jiffies instead of the fixed start time
      - Change the return value from -EFAULT to -ETIMEDOUT to correctly
        indicate a timeout condition
      - Remove redundant clock disable handling in probe error path, as
        SATA_SYS_CLK_EN is managed in phy_init() and phy_exit()
      - Use dev_err_probe return in probe
      - Reorder local variables to follow reverse Xmas tree order
      - Wrap each line in the extended comments to 80 columns before splitting lines
      - Adjust the position of `#include <linux/io.h>` for proper ordering
    - Link to v3: https://lore.kernel.org/lkml/20250904063427.1954-1-luyulin@eswincomputing.com/

  v2 -> v3:
    - Use full name in "From" and "Signed-off-by" fields information
    - eswin,eic7700-ahci.yaml
      - Remove the introduction to the reg, interrupts, phys, and phy-names fields
      - Modify the usage of the clocks field in the examples
      - Correct the order of dt properties
    - phy-eic7700-sata.c
      - Register operations use the GENMASK macro and FIELD_PREP instead of
        the original bit offset method, and add "#include <linux/bitfield.h>"
      - Modify some macro definition names.
      - Remove the redundant initialization assignments for "ret" and "val"
      - Delete ".suppress_bind_attrs = true"
      - Modify the driver name
      - Add "#include <linux/io.h>" to fix the robot test issue
    - Link to v2: https://lore.kernel.org/lkml/20250819134722.220-1-luyulin@eswincomputing.com/

  v2 -> v1:
    - Delete the original controller driver and use ahci_dwc.c instead
    - Add eswin,eic7700-ahci.yaml
      - Correct the descriptions of reset, interrupt and other
        hardware resources for the sata controller on EIC7700 SoC
      - The clocks for both sata controller and sata PHY are controlled
        via a register bit in the HSP bus and are not registered in the
        clock tree. Clock are managed within the PHY driver, therefore
        it is not described in this document
      - Add $ref: snps,dwc-ahci-common.yaml#.
    - Add eswin,eic7700-sata-phy.yaml
      - Add this file to include the description of the PHY on EIC7700 SoC
    - Add an eswin directory under the PHY driver path, and include the SATA
      PHY driver code for EIC7700 SoC
    - Link to v1: https://lore.kernel.org/all/20250515085114.1692-1-hehuan1@eswincomputing.com/

Yulin Lu (2):
  dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
  phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver

 .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  58 +++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/eswin/Kconfig                     |  14 ++
 drivers/phy/eswin/Makefile                    |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c          | 221 ++++++++++++++++++
 6 files changed, 297 insertions(+)
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
