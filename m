Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3DD9CA0EC1
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 21:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrYrp1O0TSpsvabAHTseYEoN7AoCzEyhrBmHxdbLmcc=; b=gTo86QjdidSS+3
	ybxNaoiyRC45xyKuuPBp+ntPBxnfJNdbahIL6AKD0H3b8LnlSSecsG0aa+3XeSkvm1iE9QLByVXb7
	3wz7c7RfjKILS0J/7sDRc6ZXxKt0vTnHtUVWYm7VbbhoB/1QUp8mf8vQjP5D/VAVdSUXn2REIlCCR
	eRi6zC5yiRgAd9DrxupmmvEvBk8sO3DMzZsDFrXNiT+qOkWpXVMHENwqy22hno3bf4jGVSThx79ru
	S+v3nWXa29Y4krxxaarxzVFBGoNm3V4sU/ct/Wd7ZhZ+qNrCjHkCpJ4tkTCpk8j3hjrKpkVK33kL1
	dIFwb2x5ncIqbqTXHmSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0f-00000003kea-2rMH;
	Fri, 08 Aug 2025 21:52:21 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0d-00000003kcw-0LVY
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 21:52:20 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3a6cd1a6fecso1851515f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 14:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754689937; x=1755294737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=17s9GNw67zEnQfKHaORcRfpjJfC82IfymgU9DuBPbGA=;
        b=aUA1oMmF4SZTKWWScLaeng9D8bhk3PZF0QNY9sUiqQRlCTnK8lisIZSYrhKDubKYQy
         SVtavvNj7pAkPf1BWZ9JDJMhGv3YhCoPK5ubNip58hsj6sEl3YgrMamHMztc31Dmiz9K
         NJPhJX5fA0c69X9nWoioVNVg4YWk00vJxtd9zl/cpKEAZOYNv5O/e26xriqxKhUW+IB5
         2zCzmNn6/5m8HfJY1Ch57khJQVlnmOeSxK6Q4kKHZagvTTNfsE+Bo2CkjdjEI0BXxwbk
         j62KIT50+aQDq7p8h5P3Yn41aPpHDSN4kGzNDeRjffrGehhP9S92FVKXAnw4rgu1oCKf
         2sCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754689937; x=1755294737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17s9GNw67zEnQfKHaORcRfpjJfC82IfymgU9DuBPbGA=;
        b=wqnzZGoIZTTBvCbIOfNn5s5CbKOwFKTkZiuWm+6KpHiIfy/SVoU9MGnhUKT9kMqJVo
         317mKSDLuiYgagZ97OF+OIFf3zSPgyUIuamw9y359RoOVvmWCF06BRAvA0xuTXxWBxNV
         jYTNtjDhyKYMzuIIWdj+qoW38AWVpeBJ3zL9Y9IqqR/+SZUcl8vKRPFuxhdpZa+HymsT
         0H2RAZqndM5GHQXJ1mac3WXhIOwS1JIjaOfwThUpeWGdvOxoAaZ5Uu7WSgPmtRTePTku
         apbj39RHJcYx8BgANyDXsncv5o2XIwyolWfvmA2F2y1pqMpv95fobLzRmqE1Uq3Uyz/i
         hTSA==
X-Gm-Message-State: AOJu0YyIsWxrCNDmYw9gIwhK81q2H58v8jXg/qSkD5WKF09AULqulCaV
	CtzoT2CgkUboxM87n9MDfPVkS87diOdMh+XlpQQ0SUO6yEWxCjgCmuD/
X-Gm-Gg: ASbGncuFaxk7xAHo88lzhIm37KwXKnsx7f/5wjU18dWUuM4rLd82gYlxNrhCEPNSFUQ
	UhT3Oo6FEXKPDqLIvM8q5meH9WMIxvMdxrJuqawP6ohtOOkg5aPEWxgm0/V7J7f7jZ2gO+P7UFZ
	PRBe6N+hsWVEIapXizZMd2F17sDpV2LYxf+OqtuXLLOAHi6cgdLAzPnZiIGLlqhf3oK5CRkcxCb
	Ajq58mDhOUW1ffyPoRhZxilsnDC6Eu6TNamCFRp6FJDVxW1BzcReeD/ecMG/P9BWPjsg3WGwi0k
	2vGclhpxTftPru5MmtXSodrBLZ/SVvNXQ+Why8vJ0j+fp6GsqF8ABawq4Qypcpu1nLliFRRWzYs
	GGZciCYLr9o2DjXqy/as0AyIUcmzabi4GxX5DKQUy4HTGgMreJMOmOIx5LOSFgtaBoPzBwhqCWT
	eo4eIT1rc=
X-Google-Smtp-Source: AGHT+IE+GOceRSOAfa45BZqMkJ6Avuh4YRmhkqoYYcxW3cITtpq11lpt+MxCKB09CYAOA9oejvOCMQ==
X-Received: by 2002:adf:fc87:0:b0:3b7:9aff:db60 with SMTP id ffacd0b85a97d-3b900b4bcccmr2961520f8f.10.1754689937375;
        Fri, 08 Aug 2025 14:52:17 -0700 (PDT)
Received: from iku.example.org (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm5326759f8f.51.2025.08.08.14.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 14:52:16 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 2/5] phy: renesas: rcar-gen3-usb2: store drvdata pointer in channel
Date: Fri,  8 Aug 2025 22:52:06 +0100
Message-ID: <20250808215209.3692744-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_145219_123991_0C32DD20 
X-CRM114-Status: GOOD (  18.19  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Store the SoC-specific driver data pointer (struct rcar_gen3_phy_drv_data)
directly in struct rcar_gen3_chan instead of copying individual flags into
separate channel members.

Obtain the drvdata with of_device_get_match_data() in probe and assign it
to channel->phy_data. Update all call sites to reference
`channel->phy_data->*` for SoC-specific behaviour (for example no_adp_ctrl
and utmi_ctrl). Remove the redundant soc_no_adp_ctrl and utmi_ctrl fields
from struct rcar_gen3_chan.

This simplifies the probe path, reduces duplication, and makes it easier
to extend the driver with additional platform-specific fields in the
future.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Renamed drvdata to phy_data.
- Updated commit message to clarify the change.
- Dropped local phy_data variable in probe, using channel->phy_data
  directly.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 27 ++++++++++--------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 47beb94cd424..7ac56102aed0 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -122,6 +122,7 @@ struct rcar_gen3_phy {
 struct rcar_gen3_chan {
 	void __iomem *base;
 	struct device *dev;	/* platform_device's device */
+	const struct rcar_gen3_phy_drv_data *phy_data;
 	struct extcon_dev *extcon;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
@@ -133,8 +134,6 @@ struct rcar_gen3_chan {
 	bool extcon_host;
 	bool is_otg_channel;
 	bool uses_otg_pins;
-	bool soc_no_adp_ctrl;
-	bool utmi_ctrl;
 };
 
 struct rcar_gen3_phy_drv_data {
@@ -204,7 +203,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 	u32 val;
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
-	if (ch->soc_no_adp_ctrl) {
+	if (ch->phy_data->no_adp_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
 
@@ -290,7 +289,7 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 	if (!ch->uses_otg_pins)
 		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
 
-	if (ch->soc_no_adp_ctrl)
+	if (ch->phy_data->no_adp_ctrl)
 		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
 
 	return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
@@ -421,7 +420,7 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	      USB2_LINECTRL1_DMRPD_EN | USB2_LINECTRL1_DM_RPD;
 	writel(val, usb2_base + USB2_LINECTRL1);
 
-	if (!ch->soc_no_adp_ctrl) {
+	if (!ch->phy_data->no_adp_ctrl) {
 		val = readl(usb2_base + USB2_VBCTRL);
 		val &= ~USB2_VBCTRL_OCCLREN;
 		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
@@ -487,7 +486,7 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	if (rphy->int_enable_bits)
 		rcar_gen3_init_otg(channel);
 
-	if (channel->utmi_ctrl) {
+	if (channel->phy_data->utmi_ctrl) {
 		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
 		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
 
@@ -730,7 +729,6 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 {
-	const struct rcar_gen3_phy_drv_data *phy_data;
 	struct device *dev = &pdev->dev;
 	struct rcar_gen3_chan *channel;
 	struct phy_provider *provider;
@@ -773,8 +771,8 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_enable(dev);
 
-	phy_data = of_device_get_match_data(dev);
-	if (!phy_data) {
+	channel->phy_data = of_device_get_match_data(dev);
+	if (!channel->phy_data) {
 		ret = -EINVAL;
 		goto error;
 	}
@@ -782,22 +780,19 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, channel);
 	channel->dev = dev;
 
-	if (phy_data->init_bus) {
+	if (channel->phy_data->init_bus) {
 		ret = rcar_gen3_phy_usb2_init_bus(channel);
 		if (ret)
 			goto error;
 	}
 
-	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
-	if (phy_data->no_adp_ctrl)
+	if (channel->phy_data->no_adp_ctrl)
 		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
 
-	channel->utmi_ctrl = phy_data->utmi_ctrl;
-
 	spin_lock_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
-							phy_data->phy_usb2_ops);
+							channel->phy_data->phy_usb2_ops);
 		if (IS_ERR(channel->rphys[i].phy)) {
 			dev_err(dev, "Failed to create USB2 PHY\n");
 			ret = PTR_ERR(channel->rphys[i].phy);
@@ -808,7 +803,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
 	}
 
-	if (channel->soc_no_adp_ctrl && channel->is_otg_channel)
+	if (channel->phy_data->no_adp_ctrl && channel->is_otg_channel)
 		channel->vbus = devm_regulator_get_exclusive(dev, "vbus");
 	else
 		channel->vbus = devm_regulator_get_optional(dev, "vbus");
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
