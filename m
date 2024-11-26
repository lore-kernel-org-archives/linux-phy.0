Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 463EED59D8A
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtpdvgh2kfzzlb+U+QCUNUjn9hfJG4yixnWBztZ/l5k=; b=dO4M/OEP9G66Vd
	MGrJf89OjZRlrhXyTuHDcnxfM/tuKa7l5iaZU5fyG/oW3WLf636cv+OR1vR/GMaGhYlDdt8JXqumz
	oDmD8qyi6aryfumwVtJ5Nh3iLKuCVpU2x0LVMc7kCjsW0KT7mHdgegsjYbKZnfiDsosZrIgI6FRYy
	KHcq9kY2/uKy/0ZAhtT5vy1Y2Zis1symRgz/oWGpLe2kSjSfojo1yUXkgTO5Pc2N4OqcGIALhULGE
	8D4odMAEVguK3jBHHZIiiW9048oClK/DTVBRFRYdgG/NPavQfd6NEq/ZnnWTMpvCTnkP0vJKhJ9Bt
	AvNPS2tecYtbeSWdFT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlC-0000000A7H4-3uZM;
	Tue, 26 Nov 2024 09:21:30 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrks-0000000A73G-46Sl
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:15 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-434a752140eso2727625e9.3
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612869; x=1733217669; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vCamtieJ1Any0nEDdOYudZWF6ph91xcO8/i+h+/3r0=;
        b=ftg+mwOMLYRS2rMizB/u4maAJI12A4bSkE0l+RPHXlxYwiLb10Nym8sOvMvkwkLeUk
         i31+GmcIZisRojwjNSAxtD5BsGPuNfsk369dEifeNunoQ1CpZTdmPf3mRqGdyuDvLnVU
         wCeHfuoWlnzbAth6bWYxZqeaKqbkfj+VtvYSSSbpHYHMzA3ML+APK2r1dE2ohjW64gfr
         gOoVa9cRTq/UuQ6WfJ5vuUeB3mHsb7EjMdeHT5Bj9mmaWoIXHIvNovqYEF/cZNZJvOwX
         oGEbRf7QE0pb68EQaEIChaLJd4OG8LqPShuU67WBBwCNlRSD8OyvuQjQynLWn/Fyc5qM
         Hubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612869; x=1733217669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vCamtieJ1Any0nEDdOYudZWF6ph91xcO8/i+h+/3r0=;
        b=gAkVID0ZlEnXlU/8ursg7fw53P5EGtDEfV9uDC9D9SZe+nmJipZF0eO3jj/a6Y/aGh
         zLWrA3GF8EY7PQ4WSEYAnmXjiq2/9yw06f1ZJ71pj4pY2uo/MDFLnVSmCue7kR+mBtGq
         j+Dy0X6gVBkxhqFS5mwuZdlOvmaL3zFsfm6rlWMZJXWyIsdtc0kmZptpnX8GftzC6S9i
         husSs1xTzomQuk/oFMX3k+jJUlcvR9vMS8dKIbrASnciE41XxyLy5lzXEv2EHz3956Mc
         vhhpzfpKExDIkEcHM7D4VpT2IPVLfvWwAfH9I7KsFJ/TF7aNamOZ9vSXIG4G4NZMP96u
         qgWQ==
X-Gm-Message-State: AOJu0Yyt3t4t/a7wGX6dXFb+VObuKv0yocPIGxsoYDOgoHZEVkpnt7x0
	Zmbm5fH8BjGf80A8EBivSyJINT+gs2Q1l8Vv4TA3nGhKozhRG33GvRXnAY/20fo=
X-Gm-Gg: ASbGncsM/xoZVBkP5SzzPjlG8gQSLBSP8cUsOpqRMyTvtENXRU4yYNcVYFUJryuOZmK
	Oxzw4IrAjrEZLShyS+cQyg2lx9j9gqy/dvZIHcJOAqAFuco68ZsAVCNbKq7gYkUg/LwJ9o1Ginm
	MDt1EV5yLvUkKNriqMqoXvuoF38CU8pQ1wcvG8lBsneh43k7oklbDYp81P2dsB0dNN8NvjlxXaf
	zFQEn+DLkQWgEZVnfjh3+fGx3TMEUTNtrrmDe1Sq5jPjPSZbMleFSReglh/Fr1XmNfUqj+A76oQ
	8xk=
X-Google-Smtp-Source: AGHT+IHaYOnIDbCpLmYeLO1a6tWYrQIEozAksJelkAeI7VXpQtyjiqqF3I9/uKkLk0h0PGHL3GFAQQ==
X-Received: by 2002:a05:6000:2ad:b0:382:4a4e:25bb with SMTP id ffacd0b85a97d-38260bcc4fdmr15091977f8f.46.1732612868973;
        Tue, 26 Nov 2024 01:21:08 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:08 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 02/15] soc: renesas: Add SYSC driver for Renesas RZ family
Date: Tue, 26 Nov 2024 11:20:37 +0200
Message-Id: <20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012111_063490_4189D644 
X-CRM114-Status: GOOD (  32.69  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G3S system controller (SYSC) has various registers that control
signals specific to individual IPs. IP drivers must control these signals
at different configuration phases.

Add SYSC driver that allows individual SYSC consumers to control these
signals. The SYSC driver exports a syscon regmap enabling IP drivers to
use a specific SYSC offset and mask from the device tree, which can then be
accessed through regmap_update_bits().

Currently, the SYSC driver provides control to the USB PWRRDY signal, which
is routed to the USB PHY. This signal needs to be managed before or after
powering the USB PHY off or on.

Other SYSC signals candidates (as exposed in the the hardware manual of the
RZ/G3S SoC) include:

* PCIe:
- ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
- PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
  register
- MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register

* SPI:
- SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
  register

* I2C/I3C:
- af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
  (x=0..3)
- af_bypass I3C signal controlled through SYS_I3C_CFG register

* Ethernet:
- FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
  registers (x=0..1)

As different Renesas RZ SoC shares most of the SYSC functionalities
available on the RZ/G3S SoC, the driver if formed of a SYSC core
part and a SoC specific part allowing individual SYSC SoC to provide
functionalities to the SYSC core.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Change in v2:
- this was patch 04/16 in v1
- dropped the initial approach proposed in v1 where a with a reset
  controller driver was proposed to handle the USB PWRRDY signal
- implemented it with syscon regmap and the SYSC signal concept
  (introduced in this patch)

 drivers/soc/renesas/Kconfig          |   7 +
 drivers/soc/renesas/Makefile         |   2 +
 drivers/soc/renesas/r9a08g045-sysc.c |  31 +++
 drivers/soc/renesas/rz-sysc.c        | 286 +++++++++++++++++++++++++++
 drivers/soc/renesas/rz-sysc.h        |  52 +++++
 5 files changed, 378 insertions(+)
 create mode 100644 drivers/soc/renesas/r9a08g045-sysc.c
 create mode 100644 drivers/soc/renesas/rz-sysc.c
 create mode 100644 drivers/soc/renesas/rz-sysc.h

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 9f7fe02310b9..0686c3ad9e27 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -378,4 +378,11 @@ config PWC_RZV2M
 config RST_RCAR
 	bool "Reset Controller support for R-Car" if COMPILE_TEST
 
+config SYSC_RZ
+	bool "System controller for RZ SoCs" if COMPILE_TEST
+
+config SYSC_R9A08G045
+	bool "Renesas RZ/G3S System controller support" if COMPILE_TEST
+	select SYSC_RZ
+
 endif # SOC_RENESAS
diff --git a/drivers/soc/renesas/Makefile b/drivers/soc/renesas/Makefile
index 734f8f8cefa4..8cd139b3dd0a 100644
--- a/drivers/soc/renesas/Makefile
+++ b/drivers/soc/renesas/Makefile
@@ -6,7 +6,9 @@ obj-$(CONFIG_SOC_RENESAS)	+= renesas-soc.o
 ifdef CONFIG_SMP
 obj-$(CONFIG_ARCH_R9A06G032)	+= r9a06g032-smp.o
 endif
+obj-$(CONFIG_SYSC_R9A08G045)	+= r9a08g045-sysc.o
 
 # Family
 obj-$(CONFIG_PWC_RZV2M)		+= pwc-rzv2m.o
 obj-$(CONFIG_RST_RCAR)		+= rcar-rst.o
+obj-$(CONFIG_SYSC_RZ)		+= rz-sysc.o
diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
new file mode 100644
index 000000000000..ceea738aee72
--- /dev/null
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * RZ/G3S System controller driver
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ */
+
+#include <linux/array_size.h>
+#include <linux/bits.h>
+#include <linux/init.h>
+
+#include "rz-sysc.h"
+
+#define SYS_USB_PWRRDY		0xd70
+#define SYS_USB_PWRRDY_PWRRDY_N	BIT(0)
+#define SYS_MAX_REG		0xe20
+
+static const struct rz_sysc_signal_init_data rzg3s_sysc_signals_init_data[] __initconst = {
+	{
+		.name = "usb-pwrrdy",
+		.offset = SYS_USB_PWRRDY,
+		.mask = SYS_USB_PWRRDY_PWRRDY_N,
+		.refcnt_incr_val = 0
+	}
+};
+
+const struct rz_sysc_init_data rzg3s_sysc_init_data = {
+	.signals_init_data = rzg3s_sysc_signals_init_data,
+	.num_signals = ARRAY_SIZE(rzg3s_sysc_signals_init_data),
+	.max_register_offset = SYS_MAX_REG,
+};
diff --git a/drivers/soc/renesas/rz-sysc.c b/drivers/soc/renesas/rz-sysc.c
new file mode 100644
index 000000000000..dc0edacd7170
--- /dev/null
+++ b/drivers/soc/renesas/rz-sysc.c
@@ -0,0 +1,286 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * RZ System controller driver
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ */
+
+#include <linux/dcache.h>
+#include <linux/debugfs.h>
+#include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/refcount.h>
+#include <linux/regmap.h>
+#include <linux/seq_file.h>
+
+#include "rz-sysc.h"
+
+/**
+ * struct rz_sysc - RZ SYSC private data structure
+ * @base: SYSC base address
+ * @dev: SYSC device pointer
+ * @signals: SYSC signals
+ * @num_signals: number of SYSC signals
+ */
+struct rz_sysc {
+	void __iomem *base;
+	struct device *dev;
+	struct rz_sysc_signal *signals;
+	u8 num_signals;
+};
+
+static int rz_sysc_reg_read(void *context, unsigned int off, unsigned int *val)
+{
+	struct rz_sysc *sysc = context;
+
+	*val = readl(sysc->base + off);
+
+	return 0;
+}
+
+static struct rz_sysc_signal *rz_sysc_off_to_signal(struct rz_sysc *sysc, unsigned int offset,
+						    unsigned int mask)
+{
+	struct rz_sysc_signal *signals = sysc->signals;
+
+	for (u32 i = 0; i < sysc->num_signals; i++) {
+		if (signals[i].init_data->offset != offset)
+			continue;
+
+		/*
+		 * In case mask == 0 we just return the signal data w/o checking the mask.
+		 * This is useful when calling through rz_sysc_reg_write() to check
+		 * if the requested setting is for a mapped signal or not.
+		 */
+		if (mask) {
+			if (signals[i].init_data->mask == mask)
+				return &signals[i];
+		} else {
+			return &signals[i];
+		}
+	}
+
+	return NULL;
+}
+
+static int rz_sysc_reg_update_bits(void *context, unsigned int off,
+				   unsigned int mask, unsigned int val)
+{
+	struct rz_sysc *sysc = context;
+	struct rz_sysc_signal *signal;
+	bool update = false;
+
+	signal = rz_sysc_off_to_signal(sysc, off, mask);
+	if (signal) {
+		if (signal->init_data->refcnt_incr_val == val) {
+			if (!refcount_read(&signal->refcnt)) {
+				refcount_set(&signal->refcnt, 1);
+				update = true;
+			} else {
+				refcount_inc(&signal->refcnt);
+			}
+		} else {
+			update = refcount_dec_and_test(&signal->refcnt);
+		}
+	} else {
+		update = true;
+	}
+
+	if (update) {
+		u32 tmp;
+
+		tmp = readl(sysc->base + off);
+		tmp &= ~mask;
+		tmp |= val & mask;
+		writel(tmp, sysc->base + off);
+	}
+
+	return 0;
+}
+
+static int rz_sysc_reg_write(void *context, unsigned int off, unsigned int val)
+{
+	struct rz_sysc *sysc = context;
+	struct rz_sysc_signal *signal;
+
+	/*
+	 * Force using regmap_update_bits() for signals to have reference counter
+	 * per individual signal in case there are multiple signals controlled
+	 * through the same register.
+	 */
+	signal = rz_sysc_off_to_signal(sysc, off, 0);
+	if (signal) {
+		dev_err(sysc->dev,
+			"regmap_write() not allowed on register controlling a signal. Use regmap_update_bits()!");
+		return -EOPNOTSUPP;
+	}
+
+	writel(val, sysc->base + off);
+
+	return 0;
+}
+
+static bool rz_sysc_writeable_reg(struct device *dev, unsigned int off)
+{
+	struct rz_sysc *sysc = dev_get_drvdata(dev);
+	struct rz_sysc_signal *signal;
+
+	/* Any register containing a signal is writeable. */
+	signal = rz_sysc_off_to_signal(sysc, off, 0);
+	if (signal)
+		return true;
+
+	return false;
+}
+
+static bool rz_sysc_readable_reg(struct device *dev, unsigned int off)
+{
+	struct rz_sysc *sysc = dev_get_drvdata(dev);
+	struct rz_sysc_signal *signal;
+
+	/* Any register containing a signal is readable. */
+	signal = rz_sysc_off_to_signal(sysc, off, 0);
+	if (signal)
+		return true;
+
+	return false;
+}
+
+static int rz_sysc_signals_show(struct seq_file *s, void *what)
+{
+	struct rz_sysc *sysc = s->private;
+
+	seq_printf(s, "%-20s Enable count\n", "Signal");
+	seq_printf(s, "%-20s ------------\n", "--------------------");
+
+	for (u8 i = 0; i < sysc->num_signals; i++) {
+		seq_printf(s, "%-20s %d\n", sysc->signals[i].init_data->name,
+			   refcount_read(&sysc->signals[i].refcnt));
+	}
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(rz_sysc_signals);
+
+static void rz_sysc_debugfs_remove(void *data)
+{
+	debugfs_remove_recursive(data);
+}
+
+static int rz_sysc_signals_init(struct rz_sysc *sysc,
+				const struct rz_sysc_signal_init_data *init_data,
+				u32 num_signals)
+{
+	struct dentry *root;
+	int ret;
+
+	sysc->signals = devm_kcalloc(sysc->dev, num_signals, sizeof(*sysc->signals),
+				     GFP_KERNEL);
+	if (!sysc->signals)
+		return -ENOMEM;
+
+	for (u32 i = 0; i < num_signals; i++) {
+		struct rz_sysc_signal_init_data *id;
+
+		id = devm_kzalloc(sysc->dev, sizeof(*id), GFP_KERNEL);
+		if (!id)
+			return -ENOMEM;
+
+		id->name = devm_kstrdup(sysc->dev, init_data->name, GFP_KERNEL);
+		if (!id->name)
+			return -ENOMEM;
+
+		id->offset = init_data->offset;
+		id->mask = init_data->mask;
+		id->refcnt_incr_val = init_data->refcnt_incr_val;
+
+		sysc->signals[i].init_data = id;
+		refcount_set(&sysc->signals[i].refcnt, 0);
+	}
+
+	sysc->num_signals = num_signals;
+
+	root = debugfs_create_dir("renesas-rz-sysc", NULL);
+	ret = devm_add_action_or_reset(sysc->dev, rz_sysc_debugfs_remove, root);
+	if (ret)
+		return ret;
+	debugfs_create_file("signals", 0444, root, sysc, &rz_sysc_signals_fops);
+
+	return 0;
+}
+
+static struct regmap_config rz_sysc_regmap = {
+	.name = "rz_sysc_regs",
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.fast_io = true,
+	.reg_read = rz_sysc_reg_read,
+	.reg_write = rz_sysc_reg_write,
+	.reg_update_bits = rz_sysc_reg_update_bits,
+	.writeable_reg = rz_sysc_writeable_reg,
+	.readable_reg = rz_sysc_readable_reg,
+};
+
+static const struct of_device_id rz_sysc_match[] = {
+#ifdef CONFIG_SYSC_R9A08G045
+	{ .compatible = "renesas,r9a08g045-sysc", .data = &rzg3s_sysc_init_data },
+#endif
+	{ }
+};
+MODULE_DEVICE_TABLE(of, rz_sysc_match);
+
+static int rz_sysc_probe(struct platform_device *pdev)
+{
+	const struct rz_sysc_init_data *data;
+	struct device *dev = &pdev->dev;
+	struct rz_sysc *sysc;
+	struct regmap *regmap;
+	int ret;
+
+	data = device_get_match_data(dev);
+	if (!data || !data->max_register_offset)
+		return -EINVAL;
+
+	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
+	if (!sysc)
+		return -ENOMEM;
+
+	sysc->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(sysc->base))
+		return PTR_ERR(sysc->base);
+
+	sysc->dev = dev;
+
+	ret = rz_sysc_signals_init(sysc, data->signals_init_data, data->num_signals);
+	if (ret)
+		return ret;
+
+	dev_set_drvdata(dev, sysc);
+	rz_sysc_regmap.max_register = data->max_register_offset;
+	regmap = devm_regmap_init(dev, NULL, sysc, &rz_sysc_regmap);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return of_syscon_register_regmap(dev->of_node, regmap);
+}
+
+static struct platform_driver rz_sysc_driver = {
+	.driver = {
+		.name = "renesas-rz-sysc",
+		.of_match_table = rz_sysc_match
+	},
+	.probe = rz_sysc_probe
+};
+
+static int __init rz_sysc_init(void)
+{
+	return platform_driver_register(&rz_sysc_driver);
+}
+subsys_initcall(rz_sysc_init);
+
+MODULE_DESCRIPTION("Renesas RZ System Controller Driver");
+MODULE_AUTHOR("Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/soc/renesas/rz-sysc.h b/drivers/soc/renesas/rz-sysc.h
new file mode 100644
index 000000000000..bb850310c931
--- /dev/null
+++ b/drivers/soc/renesas/rz-sysc.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Renesas RZ System Controller
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ */
+
+#ifndef __SOC_RENESAS_RZ_SYSC_H__
+#define __SOC_RENESAS_RZ_SYSC_H__
+
+#include <linux/refcount.h>
+#include <linux/types.h>
+
+/**
+ * struct rz_sysc_signal_init_data - RZ SYSC signals init data
+ * @name: signal name
+ * @offset: register offset controling this signal
+ * @mask: bitmask in register specific to this signal
+ * @refcnt_incr_val: increment refcnt when setting this value
+ */
+struct rz_sysc_signal_init_data {
+	const char *name;
+	u32 offset;
+	u32 mask;
+	u32 refcnt_incr_val;
+};
+
+/**
+ * struct rz_sysc_signal - RZ SYSC signals
+ * @init_data: signals initialization data
+ * @refcnt: reference counter
+ */
+struct rz_sysc_signal {
+	const struct rz_sysc_signal_init_data *init_data;
+	refcount_t refcnt;
+};
+
+/**
+ * struct rz_sysc_init_data - RZ SYSC initialization data
+ * @signals_init_data: RZ SYSC signals initialization data
+ * @num_signals: number of SYSC signals
+ * @max_register_offset: Maximum SYSC register offset to be used by the regmap config
+ */
+struct rz_sysc_init_data {
+	const struct rz_sysc_signal_init_data *signals_init_data;
+	u32 num_signals;
+	u32 max_register_offset;
+};
+
+extern const struct rz_sysc_init_data rzg3s_sysc_init_data;
+
+#endif /* __SOC_RENESAS_RZ_SYSC_H__ */
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
