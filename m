Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBE2EC54ED0
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XRzZTSzInMKXkG5I5oWRNpc+MWrSDYeoAhGzj7s1CU=; b=ng0nyzUXBhUeJP
	415apuMxvzcJbJ8eKvV+70KaH8QAFSGO1XAOVUKlle7u38ZS2WB+cBScdWfWWdezdzrYJ0OoTA2/q
	flo/VH3ovgVTQtW86HCxQIqCNpDpG4TSLTXyFg5MkKpmcfDs/goVty+SyLhJAbqJFXAjlqvkteMhH
	I56h8eH6Eb88+DbtQ5c1umEvBFDbMIe8X5F73UvvnsW8ib+zsq6RVzqNZlhfQQVKXn6t7oO7yWNjA
	2mLi3mvUK8qOh/5IsM237zJYTPKQ6iX3uebOkoVt+e5kALX6+EB9yS9DqmgJGAWgck/sqk13Hvgqt
	j6wztU92ftiR7tc1nyNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNZ-0000000G6Qi-2AYO;
	Wed, 21 May 2025 14:25:09 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk8t-0000000G3V7-340T
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:01 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-601609043cfso7897521a12.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836598; x=1748441398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UedCLNxDCDNXrkhFG5Bwr5eGT+o8jfZIwOWNIdKE0rM=;
        b=XDU0vUI781xhaTJBaXJs3SdVhauPGjCies//Iu/3xp+uJM8YX8hW0RH+SHNlnan3Fo
         ys1FPqIRtjcv0FmWFtE9x0Z6/qaGHMGx1xJVXVSm8HJJYiTnfcb8v2xN9CKclGjmMEsi
         yTyISZUQe8RDxSN4UnjNuTV/902sJa6yrjQa5QSsqzWf3t14rAz2bBA+UF3G44YXHGeR
         or5lBVs19lJfc1plGDL2GbpvToi9S1OY5Lp/n6wEydUU4l0q0WOTrftSvnx68NwuoAas
         JdPN4xNETWchvuyjQuU0iYIPl3NZkRVlKs3hC9rO8u7jvNkcnmG8ZCZPymYz+SwyxJxj
         V3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836598; x=1748441398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UedCLNxDCDNXrkhFG5Bwr5eGT+o8jfZIwOWNIdKE0rM=;
        b=bMVGQQupcHFXZI5O0H6MOkRduijeuuYTMvJ5L+cFMNn306hKcnJ2ayTO5lyw8EjsK9
         pPzXJPKHoVM1Uh15ZC5wjxCQc5d21INc4F0/4ad1om7H2Peqm6Mi3DADnb/EpTdM/Cvz
         aujGvygMSXptbNkPo1CVBtoVO/+6GDdK/JU7A4GfmASyL8ogPaMCJ4ECt2x8fVMj1G04
         9qUzY7tdpoaUdR7pku2nTdpRcS1C4e8GZO8ioKo7gn7e6LuKuod+RnLh298rQDNSfQK6
         8Ey+Hq6aEW/zy5gwdgG+yuQeskg5oi3pG5VN1BPuCIMqhpCtHpEdMj0KsWHBgkbTaOAc
         /SSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtuN7Zo5Niu2F2jws47K6S1okXDlKCnQmAnW78TWYYD4GlXIJfse0cBa8czm8bGt5WqMiX2ZX/diA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwM1o1V9aOwKpg/87B8Ss/socXgw/YmH5GvGaaW8/KtlLHhTMnG
	Dy583qBHnbvOztsCOsLbs97ZmsN+z8IVcO/9gSE0pMLmOwIr0Xt7dZYTTu3lKmdHqRY=
X-Gm-Gg: ASbGnctl2wAYTOxyWYdNhoRGmtJtExRvR4xrZSDllxkog2NhtT3b1pre5hN4iLOB7N+
	LBo1HaDkshcL7HrK426+szDxmw6+9OyP3/+2KJkC77NSwlp/5MYpy+MeJYpgWFkx4wN32I7WzXN
	WR5SRs/PigE3ujIw54FdCIola6J7AQzHQF7yrL4NBf4jCrFPVKti4xzSrV5tlJ7D6qYakLMSRyz
	bUoWg9UeFJtQ+DWasoGbSx24Su1muR5HPIy3ESlqIkhHwHVfVLzJYCgN+Q8ELnLDqdaybAVm29W
	8eKk1q+jN3uVlXEMre59QC2rPRamCJW+iwTq2K5UmTEVxCwO8Jdh2QXZGa6IDQev/rvp8g2K9Wt
	TT+U7
X-Google-Smtp-Source: AGHT+IHjTB+uSvP0d7ytYVEkpks/MODhIoqcBa9GEuSth8DVEvHEQL+8Uy97ooyKORTwYBtfF0WaSw==
X-Received: by 2002:a17:906:9fc4:b0:ad2:51d8:7930 with SMTP id a640c23a62f3a-ad52d46923emr1701313366b.12.1747836597677;
        Wed, 21 May 2025 07:09:57 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:09:57 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 02/12] soc: renesas: rz-sysc: Add signal support
Date: Wed, 21 May 2025 17:09:33 +0300
Message-ID: <20250521140943.3830195-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_070959_782518_5BD855D4 
X-CRM114-Status: GOOD (  29.33  )
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

Update the SYSC driver to allows individual SYSC consumers to control these
signals. The SYSC driver exports a syscon regmap enabling IP drivers to
use a specific SYSC offset and mask from the device tree, which can then be
accessed through regmap_update_bits().

Currently, the SYSC driver provides control to the USB PWRRDY signal, which
is routed to the USB PHY. This signal needs to be managed before or after
powering the USB PHY off or on.

Other SYSC signals candidates (as exposed in the hardware manual of the
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- this patch is new, however, most of its parts were picked from [1]

Compared with [1]:
- kept only the signals part
- droped double "the" in description
- mark init data with __initconst
- use flexible arrays to store the signals
- simplified the code in rz_sysc_off_to_signal() and
  rz_sysc_reg_update_bits() as proposed in the review process
- dropped rz_sysc_writeable_reg(), rz_sysc_readable_reg()
- fixed rz_sysc_signals_init() as it didn't work with more than one
  signal
- embedded rz_sysc_signal_init_data in rz_sysc_signal for simpler
  memory allocation
- added rz_sysc_get_signal_map() and struct rz_sysc_signal_map as
  a unified helper and data structure to handle a signal
- use rz_sysc_reg_read(), rz_sysc_reg_write(),
  rz_sysc_reg_update_bits() in all the rz-sysc consummers

[1] https://lore.kernel.org/all/20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com/

 drivers/soc/renesas/r9a08g045-sysc.c |   3 +
 drivers/soc/renesas/r9a09g047-sys.c  |   3 +
 drivers/soc/renesas/r9a09g057-sys.c  |   3 +
 drivers/soc/renesas/rz-sysc.c        | 185 ++++++++++++++++++++++++++-
 drivers/soc/renesas/rz-sysc.h        |  35 +++++
 include/linux/soc/renesas/rz-sysc.h  |  30 +++++
 6 files changed, 257 insertions(+), 2 deletions(-)
 create mode 100644 include/linux/soc/renesas/rz-sysc.h

diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
index 0ef6df77e25f..d2c9e3b77f41 100644
--- a/drivers/soc/renesas/r9a08g045-sysc.c
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -25,6 +25,9 @@ static const struct regmap_config rzg3s_sysc_regmap __initconst = {
 	.val_bits = 32,
 	.fast_io = true,
 	.max_register = 0xe20,
+	.reg_read = rz_sysc_reg_read,
+	.reg_write = rz_sysc_reg_write,
+	.reg_update_bits = rz_sysc_reg_update_bits,
 };
 
 const struct rz_sysc_init_data rzg3s_sysc_init_data __initconst = {
diff --git a/drivers/soc/renesas/r9a09g047-sys.c b/drivers/soc/renesas/r9a09g047-sys.c
index a3acf6dd2867..fd4018e0aca1 100644
--- a/drivers/soc/renesas/r9a09g047-sys.c
+++ b/drivers/soc/renesas/r9a09g047-sys.c
@@ -69,6 +69,9 @@ static const struct regmap_config rzg3e_sysc_regmap __initconst = {
 	.val_bits = 32,
 	.fast_io = true,
 	.max_register = 0x170c,
+	.reg_read = rz_sysc_reg_read,
+	.reg_write = rz_sysc_reg_write,
+	.reg_update_bits = rz_sysc_reg_update_bits,
 };
 
 const struct rz_sysc_init_data rzg3e_sys_init_data = {
diff --git a/drivers/soc/renesas/r9a09g057-sys.c b/drivers/soc/renesas/r9a09g057-sys.c
index c26821636dce..cfa5be48f049 100644
--- a/drivers/soc/renesas/r9a09g057-sys.c
+++ b/drivers/soc/renesas/r9a09g057-sys.c
@@ -69,6 +69,9 @@ static const struct regmap_config rzv2h_sysc_regmap __initconst = {
 	.val_bits = 32,
 	.fast_io = true,
 	.max_register = 0x170c,
+	.reg_read = rz_sysc_reg_read,
+	.reg_write = rz_sysc_reg_write,
+	.reg_update_bits = rz_sysc_reg_update_bits,
 };
 
 const struct rz_sysc_init_data rzv2h_sys_init_data = {
diff --git a/drivers/soc/renesas/rz-sysc.c b/drivers/soc/renesas/rz-sysc.c
index 70556a2f55e6..3dd5d444050b 100644
--- a/drivers/soc/renesas/rz-sysc.c
+++ b/drivers/soc/renesas/rz-sysc.c
@@ -5,11 +5,16 @@
  * Copyright (C) 2024 Renesas Electronics Corp.
  */
 
+#include <linux/dcache.h>
+#include <linux/debugfs.h>
 #include <linux/io.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/refcount.h>
 #include <linux/regmap.h>
+#include <linux/seq_file.h>
+#include <linux/soc/renesas/rz-sysc.h>
 #include <linux/sys_soc.h>
 
 #include "rz-sysc.h"
@@ -20,12 +25,183 @@
  * struct rz_sysc - RZ SYSC private data structure
  * @base: SYSC base address
  * @dev: SYSC device pointer
+ * @num_signals: number of SYSC signals
+ * @signals: SYSC signals
  */
 struct rz_sysc {
 	void __iomem *base;
 	struct device *dev;
+	u8 num_signals;
+	struct rz_sysc_signal signals[] __counted_by(num_signals);
 };
 
+struct rz_sysc_signal_map *rz_sysc_get_signal_map(struct device *dev)
+{
+	struct rz_sysc_signal_map *map;
+	struct of_phandle_args args;
+	struct regmap *regmap;
+	int ret;
+
+	if (!dev)
+		return ERR_PTR(-EINVAL);
+
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "renesas,sysc-signals", 2,
+					       0, &args);
+	if (ret)
+		return ERR_PTR(ret);
+
+	regmap = syscon_node_to_regmap(args.np);
+	of_node_put(args.np);
+	if (IS_ERR(regmap))
+		return ERR_CAST(regmap);
+
+	map = devm_kzalloc(dev, sizeof(*map), GFP_KERNEL);
+	if (!map)
+		return ERR_PTR(-ENOMEM);
+
+	map->regmap = regmap;
+	map->offset = args.args[0];
+	map->mask = args.args[1];
+
+	return map;
+}
+
+int rz_sysc_reg_read(void *context, unsigned int off, unsigned int *val)
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
+		if (signals[i].init_data.offset != offset)
+			continue;
+
+		/*
+		 * In case mask == 0 we just return the signal data w/o checking the mask.
+		 * This is useful when calling through rz_sysc_reg_write() to check
+		 * if the requested setting is for a mapped signal or not.
+		 */
+		if (!mask || signals[i].init_data.mask == mask)
+			return &signals[i];
+	}
+
+	return NULL;
+}
+
+int rz_sysc_reg_update_bits(void *context, unsigned int off, unsigned int mask, unsigned int val)
+{
+	unsigned int shifted_val = field_get(mask, val);
+	struct rz_sysc *sysc = context;
+	struct rz_sysc_signal *signal;
+	bool update = false;
+
+	signal = rz_sysc_off_to_signal(sysc, off, mask);
+	if (!signal) {
+		update = true;
+	} else if (signal->init_data.refcnt_incr_val != shifted_val) {
+		update = refcount_dec_and_test(&signal->refcnt);
+	} else if (!refcount_read(&signal->refcnt)) {
+		refcount_set(&signal->refcnt, 1);
+		update = true;
+	} else {
+		refcount_inc(&signal->refcnt);
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
+int rz_sysc_reg_write(void *context, unsigned int off, unsigned int val)
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
+static int rz_sysc_signals_show(struct seq_file *s, void *what)
+{
+	struct rz_sysc *sysc = s->private;
+
+	seq_printf(s, "%-20s Enable count\n", "Signal");
+	seq_printf(s, "%-20s ------------\n", "--------------------");
+
+	for (u8 i = 0; i < sysc->num_signals; i++) {
+		seq_printf(s, "%-20s %d\n", sysc->signals[i].init_data.name,
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
+	for (unsigned int i = 0; i < num_signals; i++) {
+		struct rz_sysc_signal_init_data *data = &sysc->signals[i].init_data;
+
+		data->name = devm_kstrdup(sysc->dev, init_data[i].name, GFP_KERNEL);
+		if (!data->name)
+			return -ENOMEM;
+
+		data->offset = init_data[i].offset;
+		data->mask = init_data[i].mask;
+		data->refcnt_incr_val = init_data[i].refcnt_incr_val;
+
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
 static int rz_sysc_soc_init(struct rz_sysc *sysc, const struct of_device_id *match)
 {
 	const struct rz_sysc_init_data *sysc_data = match->data;
@@ -115,7 +291,8 @@ static int rz_sysc_probe(struct platform_device *pdev)
 
 	data = match->data;
 
-	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
+	sysc = devm_kzalloc(dev, struct_size(sysc, signals, data->num_signals),
+			    GFP_KERNEL);
 	if (!sysc)
 		return -ENOMEM;
 
@@ -128,7 +305,11 @@ static int rz_sysc_probe(struct platform_device *pdev)
 	if (ret || !data->regmap_cfg)
 		return ret;
 
-	regmap = devm_regmap_init_mmio(dev, sysc->base, data->regmap_cfg);
+	ret = rz_sysc_signals_init(sysc, data->signals_init_data, data->num_signals);
+	if (ret)
+		return ret;
+
+	regmap = devm_regmap_init(dev, NULL, sysc, data->regmap_cfg);
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 
diff --git a/drivers/soc/renesas/rz-sysc.h b/drivers/soc/renesas/rz-sysc.h
index 447008140634..111f79ef9573 100644
--- a/drivers/soc/renesas/rz-sysc.h
+++ b/drivers/soc/renesas/rz-sysc.h
@@ -9,10 +9,35 @@
 #define __SOC_RENESAS_RZ_SYSC_H__
 
 #include <linux/device.h>
+#include <linux/refcount.h>
 #include <linux/regmap.h>
 #include <linux/sys_soc.h>
 #include <linux/types.h>
 
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
+	struct rz_sysc_signal_init_data init_data;
+	refcount_t refcnt;
+};
+
 /**
  * struct rz_syc_soc_id_init_data - RZ SYSC SoC identification initialization data
  * @family: RZ SoC family
@@ -35,13 +60,23 @@ struct rz_sysc_soc_id_init_data {
 /**
  * struct rz_sysc_init_data - RZ SYSC initialization data
  * @soc_id_init_data: RZ SYSC SoC ID initialization data
+ * @signals_init_data: RZ SYSC signals initialization data
  * @regmap_cfg: SoC-specific regmap config
+ * @num_signals: number of SYSC signals
  */
 struct rz_sysc_init_data {
 	const struct rz_sysc_soc_id_init_data *soc_id_init_data;
+	const struct rz_sysc_signal_init_data *signals_init_data;
 	const struct regmap_config *regmap_cfg;
+	u32 max_register_offset;
+	u32 num_signals;
 };
 
+extern int rz_sysc_reg_read(void *context, unsigned int off, unsigned int *val);
+extern int rz_sysc_reg_write(void *context, unsigned int off, unsigned int val);
+extern int rz_sysc_reg_update_bits(void *context, unsigned int off,
+				   unsigned int mask, unsigned int val);
+
 extern const struct rz_sysc_init_data rzg3e_sys_init_data;
 extern const struct rz_sysc_init_data rzg3s_sysc_init_data;
 extern const struct rz_sysc_init_data rzv2h_sys_init_data;
diff --git a/include/linux/soc/renesas/rz-sysc.h b/include/linux/soc/renesas/rz-sysc.h
new file mode 100644
index 000000000000..e2864ebeadf7
--- /dev/null
+++ b/include/linux/soc/renesas/rz-sysc.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_SOC_RENESAS_RZ_SYSC_H__
+#define __LINUX_SOC_RENESAS_RZ_SYSC_H__
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/regmap.h>
+
+/**
+ * struct rz_sysc_signal_map - RZ SYSC signal mapping (to be used by consummers)
+ * @regmap: SYSC regmap
+ * @offset: offset into the SYSC address space for accessing the signal
+ * @mask: mask into the register at offset for accessing the signal
+ */
+struct rz_sysc_signal_map {
+	struct regmap *regmap;
+	u32 offset;
+	u32 mask;
+};
+
+#ifdef CONFIG_SYSC_RZ
+extern struct rz_sysc_signal_map *rz_sysc_get_signal_map(struct device *dev);
+#else
+static inline struct rz_sysc_signal_map *rz_sysc_get_signal_map(struct device *dev)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+#endif
+
+#endif /* __LINUX_SOC_RENESAS_RZ_SYSC_H__ */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
