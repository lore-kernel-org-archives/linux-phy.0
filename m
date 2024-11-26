Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE23FD3B7CC
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlUZlDekYWgQkZ+PLdgiFBSinMYB10DvosYL//D3zOQ=; b=tkH0EACU9CSgeW
	GvnmHTdX5X9qSFJswMQ2ckoKxOvmhtCTIrtwGOxP7xSHqXz++OMT8f7yzqHbJtaA2gSFilODND6Mj
	vySFqmG8YElZRREWQHEmq+W8roAWRdONV3Och7lFUDXNjYwCtUaw/oCAm5tUHBmcOVveYdrgl+fg3
	77teuaVKro6NYUnIj+Kd15PRAuXA6XbeW33kG1kOOrKRTSvF5hqwcHanQ0yVcyPWaN0XV0HmSWDuY
	j96UgxUKT2KJ2ay5VboXLtlCxciNyhHTlVWMO8jwRqYFcd1hLcyBJtit0vwW3AIuc1/nOeGn5mGwq
	Z8ATfFDFzmEICzIIWuNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlC-0000000A7GT-2hlb;
	Tue, 26 Nov 2024 09:21:30 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrkw-0000000A75T-0Lzc
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:17 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-43155abaf0bso49707915e9.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612872; x=1733217672; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VDINqiI7eZIxSdpV6EMx/C3NNutYl7b6+j2YZ5M4Qvg=;
        b=gltOpsrs2kS5nT0JaGn3YbIXEaeNDE5e/YLB3FvwwZ6oSusobD4SL+UZmKX7+9pcsH
         ouJvnFmeDzC/Hq52w7t/u/3IoUK2jk9NKkq7QzUiHK40Pw762onAvV6T2F6D9qHIzNxA
         +1ijpnpRfMv3tgYYECsG7vFrbv3Yzd3HpLIm/9RKwNXXe6wX7vJ57YtW6TxylS4dQSL+
         etSu5mRpqN22zSScrP8CRefca7Va91c+67/3izWOtXAgPLzbHXFSYiM1tlKxM8FGO/PF
         JDnBjbG47lxcCImFECjyssVPrcH290+wBGwu0Yg81efWEW5OkJZDl9cd0XewYVDNjk5C
         JW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612872; x=1733217672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VDINqiI7eZIxSdpV6EMx/C3NNutYl7b6+j2YZ5M4Qvg=;
        b=ibe1LGBqyWlwDVsBNJkiAw/NJm6FejHZ58JNAPHHAJnUmoTVhJkuhe5GupehwUiGF8
         3XbedXuewLntwqCMw+wAdWtfqJx+ykATECWRXZyitbK1VCHQ/nUd8a7raE+x6MXftrqt
         7V9wOtMNAD2ZFGyGW/mH5M/L2u72j8iEcqmswOXTRXHe1gJw7F9jde7FyPXD2ZGiNiPT
         frgVa9OieN/nmrvQLXhOH3w6j/DjkOkAnAObarNGwoZoCsyzwPIzV8r+6lHaH8YhaaaN
         2WAZV6db2dUbm8/v6lO/3NrzIQHzlSbIkZbVjqUQiizF94ch9DcYVI3y7RGW1eWkZdgB
         KGWg==
X-Gm-Message-State: AOJu0YzFzoqiAghcAw++3I4OYYciIQwBpu2pK3t2zHQ6fdmIlSnT362R
	eCnoFdNkM3U4UO/MuYF9djrLRRnkingd2blCBqWjEtczYlfyx6gZy64Bg31VJaY=
X-Gm-Gg: ASbGncuEkIRK7tpWeI8vaWdQvuGeqKgjF2NbKuSZU0KKrX4TC+nbgCBoUbd8m4aaz2S
	zhsUgm2XNhFa+uJ35ujQ2gfzfgNqZ3bcZ638CfqqAi3s7e7gyi/V04KL6bncsheDINmT7AZeQIK
	IrdUWCAjUjaj9YtMIUJySZS8GuieeVPcRgy1DhiB0Nt4UhGPg/qz+g/kGlNvJyw4A7E4putD8X6
	LVKiaiAQ7FkkjQ17KyL5r+BoNOml0XNbIj95SdcG5rhUKySDgI3ArcoAjUV8Ii+2w90H2zGY0zp
	k/0=
X-Google-Smtp-Source: AGHT+IFiAn9ufP/2lxYbOVs5nw6bxrcqi6yQ6uQejelWxHdSz9crLVthGd227EDJ3fiqmZHYRLomqQ==
X-Received: by 2002:a05:600c:1c23:b0:434:9e63:faff with SMTP id 5b1f17b1804b1-4349e63fe62mr73118195e9.2.1732612872339;
        Tue, 26 Nov 2024 01:21:12 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:11 -0800 (PST)
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
Subject: [PATCH v2 04/15] soc: renesas: rz-sysc: Add SoC detection support
Date: Tue, 26 Nov 2024 11:20:39 +0200
Message-Id: <20241126092050.1825607-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012114_157750_A59C834D 
X-CRM114-Status: GOOD (  19.73  )
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

The RZ SYSC controller has registers that keep the SoC ID data. Add
driver support to retrieve the SoC ID and register a SoC driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this was patch 05/16 in v1
- changed patch title and description
- added SoC initialization code in its own function
- addressed the review comments
- introduced struct rz_sysc_soc_id_init_data and adjusted the code
  accordingly
- dropped the RZ/G3S SoC detection code (it will be introduced in
  a separate patch)

 drivers/soc/renesas/rz-sysc.c | 72 +++++++++++++++++++++++++++++++++--
 drivers/soc/renesas/rz-sysc.h | 18 +++++++++
 2 files changed, 86 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/renesas/rz-sysc.c b/drivers/soc/renesas/rz-sysc.c
index dc0edacd7170..d34d295831b8 100644
--- a/drivers/soc/renesas/rz-sysc.c
+++ b/drivers/soc/renesas/rz-sysc.c
@@ -14,9 +14,12 @@
 #include <linux/refcount.h>
 #include <linux/regmap.h>
 #include <linux/seq_file.h>
+#include <linux/sys_soc.h>
 
 #include "rz-sysc.h"
 
+#define field_get(_mask, _reg) (((_reg) & (_mask)) >> (ffs(_mask) - 1))
+
 /**
  * struct rz_sysc - RZ SYSC private data structure
  * @base: SYSC base address
@@ -211,6 +214,59 @@ static int rz_sysc_signals_init(struct rz_sysc *sysc,
 	return 0;
 }
 
+static int rz_sysc_soc_init(struct rz_sysc *sysc, const struct of_device_id *match)
+{
+	const struct rz_sysc_init_data *sysc_data = match->data;
+	const struct rz_sysc_soc_id_init_data *soc_data = sysc_data->soc_id_init_data;
+	struct soc_device_attribute *soc_dev_attr;
+	const char *soc_id_start, *soc_id_end;
+	u32 val, revision, specific_id;
+	struct soc_device *soc_dev;
+	char soc_id[32] = {0};
+	u8 size;
+
+	if (!soc_data || !soc_data->family || !soc_data->offset ||
+	    !soc_data->revision_mask)
+		return -EINVAL;
+
+	soc_id_start = strchr(match->compatible, ',') + 1;
+	soc_id_end = strchr(match->compatible, '-');
+	size = soc_id_end - soc_id_start;
+	if (size > 32)
+		size = 32;
+	strscpy(soc_id, soc_id_start, size);
+
+	soc_dev_attr = devm_kzalloc(sysc->dev, sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->family = soc_data->family;
+	soc_dev_attr->soc_id = devm_kstrdup(sysc->dev, soc_id, GFP_KERNEL);
+	if (!soc_dev_attr->soc_id)
+		return -ENOMEM;
+
+	val = readl(sysc->base + soc_data->offset);
+	revision = field_get(soc_data->revision_mask, val);
+	specific_id = field_get(soc_data->specific_id_mask, val);
+	soc_dev_attr->revision = devm_kasprintf(sysc->dev, GFP_KERNEL, "%u", revision);
+	if (!soc_dev_attr->revision)
+		return -ENOMEM;
+
+	if (soc_data->id && specific_id != soc_data->id) {
+		dev_warn(sysc->dev, "SoC mismatch (product = 0x%x)\n", specific_id);
+		return -ENODEV;
+	}
+
+	dev_info(sysc->dev, "Detected Renesas %s %s Rev %s\n", soc_dev_attr->family,
+		 soc_dev_attr->soc_id, soc_dev_attr->revision);
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev))
+		return PTR_ERR(soc_dev);
+
+	return 0;
+}
+
 static struct regmap_config rz_sysc_regmap = {
 	.name = "rz_sysc_regs",
 	.reg_bits = 32,
@@ -235,14 +291,15 @@ MODULE_DEVICE_TABLE(of, rz_sysc_match);
 static int rz_sysc_probe(struct platform_device *pdev)
 {
 	const struct rz_sysc_init_data *data;
+	const struct of_device_id *match;
 	struct device *dev = &pdev->dev;
-	struct rz_sysc *sysc;
 	struct regmap *regmap;
+	struct rz_sysc *sysc;
 	int ret;
 
-	data = device_get_match_data(dev);
-	if (!data || !data->max_register_offset)
-		return -EINVAL;
+	match = of_match_node(rz_sysc_match, dev->of_node);
+	if (!match || !match->data)
+		return -ENODEV;
 
 	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
 	if (!sysc)
@@ -253,6 +310,13 @@ static int rz_sysc_probe(struct platform_device *pdev)
 		return PTR_ERR(sysc->base);
 
 	sysc->dev = dev;
+	ret = rz_sysc_soc_init(sysc, match);
+	if (ret)
+		return ret;
+
+	data = match->data;
+	if (!data->max_register_offset)
+		return -EINVAL;
 
 	ret = rz_sysc_signals_init(sysc, data->signals_init_data, data->num_signals);
 	if (ret)
diff --git a/drivers/soc/renesas/rz-sysc.h b/drivers/soc/renesas/rz-sysc.h
index bb850310c931..babca9c743c7 100644
--- a/drivers/soc/renesas/rz-sysc.h
+++ b/drivers/soc/renesas/rz-sysc.h
@@ -35,13 +35,31 @@ struct rz_sysc_signal {
 	refcount_t refcnt;
 };
 
+/**
+ * struct rz_syc_soc_id_init_data - RZ SYSC SoC identification initialization data
+ * @family: RZ SoC family
+ * @id: RZ SoC expected ID
+ * @offset: SYSC SoC ID register offset
+ * @revision_mask: SYSC SoC ID revision mask
+ * @specific_id_mask: SYSC SoC ID specific ID mask
+ */
+struct rz_sysc_soc_id_init_data {
+	const char * const family;
+	u32 id;
+	u32 offset;
+	u32 revision_mask;
+	u32 specific_id_mask;
+};
+
 /**
  * struct rz_sysc_init_data - RZ SYSC initialization data
+ * @soc_id_init_data: RZ SYSC SoC ID initialization data
  * @signals_init_data: RZ SYSC signals initialization data
  * @num_signals: number of SYSC signals
  * @max_register_offset: Maximum SYSC register offset to be used by the regmap config
  */
 struct rz_sysc_init_data {
+	const struct rz_sysc_soc_id_init_data *soc_id_init_data;
 	const struct rz_sysc_signal_init_data *signals_init_data;
 	u32 num_signals;
 	u32 max_register_offset;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
