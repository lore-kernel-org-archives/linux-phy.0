Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E9F7ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 18:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlFI680ZLWAbApFE0qd7+5UKvHsqMVYhUZP8CIlIKLM=; b=LYXWBphVPWtt+P
	Esgsj6+uyRdnYthxOkl6MDIBbotECcdlujDqgqAHVM/P+cjS5K2w20q7BWaBJ2hkqggpn5lhSKySM
	xGptiFMN5NQSN/ATpP7wqp5uePu5eP6sQG2GmriNM4G616tRcfadgTnNARWoU4cNTOYkECOBW77H8
	KVcA0iVMZzXPPRAE1em9kILDx0l9M1Sne3u5z+so2Gd+UWoWsBsb1KDRbsDEqLhE5k0OvassaRjPb
	8tLoKeJGUO36Tx+66d2/k1Eekx1CvQPKBgD1lXn7FQ//o/52BCUDI1lp/IjE+Gnh0KD/Jm9bP3ZjK
	Bj5PfgokdsbrELFFjKSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaL9l-00DYcW-Nr; Mon, 19 Sep 2022 18:06:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaL7P-00DW7g-H2
	for linux-phy@bombadil.infradead.org; Mon, 19 Sep 2022 18:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=luoO1LxKDmftX99eiF83qZnJXT6xOXQyVnCCkkwkdZ0=; b=gBVr2qo5/IsCk8qE5D2fIsySPJ
	t93Km9S3j8NCWijFrVnQkpgB9WEbqBxVnhPDjCNCEcH49jAIIMfG2ihYaL65QbLFxrMQi7G6++hGL
	3NAGY4TtIjWto+SC+WWBTPjtmRXpCQUNZpHvrY9YVECh9dlxC10mJ91sqNTND1a+fgL7SgpjEFrxz
	Z/0jMdM0hZtKoVIiTw3MD3Z+dd2Kg3N6OX1QFOa38zy5P9dIU67EGt60vCTtPQ8R0PyskMbyfiuU/
	KvUnPkXC3IFHG0D4l7z5DiWY9ivDcvojtLzP6/v5XZTNKySRKcwVv//Uovv+vv8uaATKrZOZfalCe
	VLkTd9qw==;
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK7g-00E8DN-Gi
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 16:59:59 +0000
Received: by mail-ej1-x634.google.com with SMTP id kr11so90758ejc.8
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 09:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=luoO1LxKDmftX99eiF83qZnJXT6xOXQyVnCCkkwkdZ0=;
        b=vgqXPnwJfBaDfi4hVLCviUh3Gx+X6JzI45XAKLuOUe2h2jHSiPiCAyLXcxsC8P5RX8
         mta4oVeCIoH7ljc8WQ1ufUbqSXG+JeHfF2n9XlW25tLQG4BNAEXLcv/BfM/5Qqh31CDw
         dR5uoEZ+9CPX1nLrigQUnUFhp01iu2MqLIRhZV16zhGCpSUSc08x0yl1LIhZI0j6ubo/
         HNz7tWo0DAhRyZ/1LM/TVbEnEjGa33dBNjwTlf0gOpW2f6h9k30WlZMJIu93SnWPW4JS
         69GS6lI/fA7OAzCXcd8Bgc13gq5urO9ok5789REso4IcaVC2cs4G6s6RHxENYewjNzam
         9RBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=luoO1LxKDmftX99eiF83qZnJXT6xOXQyVnCCkkwkdZ0=;
        b=Ikd35zRTEspV7ccSSVX8M6hTT1PRQl7BMtcT3CsJwD1WM5MhdeGTAZQP9z29SiigGo
         kPu1yb0RHsr90g8KGrmdsLm+3rMqzgzcyZZG5n99nPa15JiS2OZdAJ/grEhk9d0koNc4
         T3mWNykoodxZE2BJHamJhmH/VsOIB8gcLKfcjW3gpnw0NaXquhTG9lV/AnBrcSC6NM1M
         Ooy8zmHLh9pC2HnjbA5MQbiB72mmMUaZ4sPsdUdfjaxpQRr94rzS4/eUAY6r2yUjgqhM
         usC1QQSTsCFCSGzZkRcvOKO2He+XK4AbobnCJw236pMNWr7/jBcN+oGTnTwrSaMDdgSn
         Zx2g==
X-Gm-Message-State: ACrzQf2VsixTZCKocEvrFFMX/4sN5lWzX+MzNIutrWaVM8UwXWOD7PBg
	soWtAPT8S/GrhYr65wMa3oa1dw==
X-Google-Smtp-Source: AMsMyM5rnDUnukBVd+yEqOxJIHItyo96vhlvjjoScLMZLrhi/dI2zDekSyBitbbTOdXRgSb4OzTwlg==
X-Received: by 2002:a17:906:da86:b0:740:7120:c6e6 with SMTP id xh6-20020a170906da8600b007407120c6e6mr13618036ejb.44.1663606793008;
        Mon, 19 Sep 2022 09:59:53 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.09.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:59:52 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 19 Sep 2022 18:56:03 +0200
Subject: [PATCH v1 05/17] drm/mediatek: hdmi: use a syscon/regmap instead of iomem
MIME-Version: 1.0
Message-Id: <20220919-v1-5-4844816c9808@baylibre.com>
References: <20220919-v1-0-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-0-4844816c9808@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Guillaume Ranquet <granquet@baylibre.com>,
 devicetree@vger.kernel.org
X-Mailer: b4 0.10.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_175957_063450_5145F3CC 
X-CRM114-Status: GOOD (  11.17  )
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

To prepare support for newer chips that need to share their address
range with a dedicated ddc driver, move to a syscon.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 3196189429bc..5cd05d4fe1a9 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -172,7 +172,7 @@ struct mtk_hdmi {
 	u32 ibias_up;
 	struct regmap *sys_regmap;
 	unsigned int sys_offset;
-	void __iomem *regs;
+	struct regmap *regs;
 	enum hdmi_colorspace csp;
 	struct hdmi_audio_param aud_param;
 	bool audio_enable;
@@ -188,44 +188,29 @@ static inline struct mtk_hdmi *hdmi_ctx_from_bridge(struct drm_bridge *b)
 	return container_of(b, struct mtk_hdmi, bridge);
 }
 
-static u32 mtk_hdmi_read(struct mtk_hdmi *hdmi, u32 offset)
+static int mtk_hdmi_read(struct mtk_hdmi *hdmi, u32 offset, u32 *val)
 {
-	return readl(hdmi->regs + offset);
+	return regmap_read(hdmi->regs, offset, val);
 }
 
 static void mtk_hdmi_write(struct mtk_hdmi *hdmi, u32 offset, u32 val)
 {
-	writel(val, hdmi->regs + offset);
+	regmap_write(hdmi->regs, offset, val);
 }
 
 static void mtk_hdmi_clear_bits(struct mtk_hdmi *hdmi, u32 offset, u32 bits)
 {
-	void __iomem *reg = hdmi->regs + offset;
-	u32 tmp;
-
-	tmp = readl(reg);
-	tmp &= ~bits;
-	writel(tmp, reg);
+	regmap_clear_bits(hdmi->regs, offset, bits);
 }
 
 static void mtk_hdmi_set_bits(struct mtk_hdmi *hdmi, u32 offset, u32 bits)
 {
-	void __iomem *reg = hdmi->regs + offset;
-	u32 tmp;
-
-	tmp = readl(reg);
-	tmp |= bits;
-	writel(tmp, reg);
+	regmap_set_bits(hdmi->regs, offset, bits);
 }
 
 static void mtk_hdmi_mask(struct mtk_hdmi *hdmi, u32 offset, u32 val, u32 mask)
 {
-	void __iomem *reg = hdmi->regs + offset;
-	u32 tmp;
-
-	tmp = readl(reg);
-	tmp = (tmp & ~mask) | (val & mask);
-	writel(tmp, reg);
+	regmap_update_bits(hdmi->regs, offset, mask, val);
 }
 
 static void mtk_hdmi_hw_vid_black(struct mtk_hdmi *hdmi, bool black)
@@ -474,7 +459,7 @@ static void mtk_hdmi_hw_aud_set_i2s_fmt(struct mtk_hdmi *hdmi,
 {
 	u32 val;
 
-	val = mtk_hdmi_read(hdmi, GRL_CFG0);
+	mtk_hdmi_read(hdmi, GRL_CFG0, &val);
 	val &= ~(CFG0_W_LENGTH_MASK | CFG0_I2S_MODE_MASK);
 
 	switch (i2s_fmt) {
@@ -566,7 +551,7 @@ static void mtk_hdmi_hw_aud_set_input_type(struct mtk_hdmi *hdmi,
 {
 	u32 val;
 
-	val = mtk_hdmi_read(hdmi, GRL_CFG1);
+	mtk_hdmi_read(hdmi, GRL_CFG1, &val);
 	if (input_type == HDMI_AUD_INPUT_I2S &&
 	    (val & CFG1_SPDIF) == CFG1_SPDIF) {
 		val &= ~CFG1_SPDIF;
@@ -597,7 +582,7 @@ static void mtk_hdmi_hw_aud_src_reenable(struct mtk_hdmi *hdmi)
 {
 	u32 val;
 
-	val = mtk_hdmi_read(hdmi, GRL_MIX_CTRL);
+	mtk_hdmi_read(hdmi, GRL_MIX_CTRL, &val);
 	if (val & MIX_CTRL_SRC_EN) {
 		val &= ~MIX_CTRL_SRC_EN;
 		mtk_hdmi_write(hdmi, GRL_MIX_CTRL, val);
@@ -611,7 +596,7 @@ static void mtk_hdmi_hw_aud_src_disable(struct mtk_hdmi *hdmi)
 {
 	u32 val;
 
-	val = mtk_hdmi_read(hdmi, GRL_MIX_CTRL);
+	mtk_hdmi_read(hdmi, GRL_MIX_CTRL, &val);
 	val &= ~MIX_CTRL_SRC_EN;
 	mtk_hdmi_write(hdmi, GRL_MIX_CTRL, val);
 	mtk_hdmi_write(hdmi, GRL_SHIFT_L1, 0x00);
@@ -622,7 +607,7 @@ static void mtk_hdmi_hw_aud_set_mclk(struct mtk_hdmi *hdmi,
 {
 	u32 val;
 
-	val = mtk_hdmi_read(hdmi, GRL_CFG5);
+	mtk_hdmi_read(hdmi, GRL_CFG5, &val);
 	val &= CFG5_CD_RATIO_MASK;
 
 	switch (mclk) {
@@ -1428,7 +1413,6 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
 	struct device_node *cec_np, *remote, *i2c_np;
 	struct platform_device *cec_pdev;
 	struct regmap *regmap;
-	struct resource *mem;
 	int ret;
 
 	ret = mtk_hdmi_get_all_clk(hdmi, np);
@@ -1474,8 +1458,7 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
 	}
 	hdmi->sys_regmap = regmap;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	hdmi->regs = devm_ioremap_resource(dev, mem);
+	hdmi->regs = syscon_node_to_regmap(dev->of_node);
 	if (IS_ERR(hdmi->regs)) {
 		ret = PTR_ERR(hdmi->regs);
 		goto put_device;

-- 
b4 0.10.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
