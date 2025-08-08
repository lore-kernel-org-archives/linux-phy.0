Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3499BC87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 21:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lbWRooqD3juBj1Wo0wfagiJbXjdCKNkrli5Tk/URiQ=; b=wH3vC/nMnATBaJ
	EGcNhEpTBgDtbDjZ1nA7GRnJ+MGylRoNQJzSMXhm7QelwwcZBaTQ2KP7uvgC+2KAcKg6pTl6x7SF2
	WAPW8MYsUaZ6FI76FE7n/tWzzbqYf9WIj1YrbUngW5W58i1PilGDpNCafsItt1hHsRj9DiVl3W6LG
	8xQuUGrJHaoatpVoAZH4VGoDRX3pKAmgGn6CpY/5QNWTy+z/9VeO2uOzKZp29umXG01rHeljUeuzz
	DGmaxFht09dxIIdRZDf1gMhx1r0ioLjsn9aeXRMecB1m20FsCvGH8ZzqABAd08+qxEew6hX3OWoFB
	48bxl/T54cI31dIZ/2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0g-00000003kfV-4088;
	Fri, 08 Aug 2025 21:52:22 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0e-00000003kdQ-0tqF
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 21:52:21 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3b785a69454so1457158f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 14:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754689939; x=1755294739; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4eso6q1Ql4hiLYxYhXhY6ZR8ZJDF1IdVnxzdPMfBWU=;
        b=ElH37StCMjsxRW6odhWOlxtBJLFpLj1TNr5+ifzyH40fRY7x/eDoflyVdMMd4zEQ2F
         TRuBNrcaxdTFTAscOlSC7nK7852ZF7tVAqwRJ2EBWLpv4ZufEjXHB0E7GUg/k7QHfW1B
         AlKZ0pSrOpAHH53P/4ytii1/n/0T4fMSSvc/5DBSYe06mLHVO09gkKks98VbEQtjLNWb
         pbNptf5+4ByuGdylBVZs4jc1FUIcbuPBqc1L237U4OIu7j74lyGHu/ND4i32MT6be22U
         5kjURAysnaccJp0UJCTHC7PTaw2p7iD+O1MkAzOya0eVnVvS2p+XzPQPxNZMoEVxqTxr
         m4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754689939; x=1755294739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W4eso6q1Ql4hiLYxYhXhY6ZR8ZJDF1IdVnxzdPMfBWU=;
        b=ffJ/b7FFiJeufZOM78JL35ikQMDfewitsvzj7cBmy7L3h3ajANrSRAueNSYy+NsnWf
         sUO1CG5K7pzJkm8FHLz/XVM+2zLTOQnpg33EWbN5IWoA4hqmbnvMgcwklYzhXDPhURtP
         rcfDqzYVUxOWdAfA9W/9MPayp6fIAYYU3nktrhbGrZQCQ6/ue9tajxWN/RapNgo/nNjt
         bFnosr0+M0eG2uZyxLfqyUExw1HoA0XNvnVRJlfmlDIv+afZbeYfj/DF0JuvQnGrmCXW
         zBTkCMsqPOD/N10cNOVIJ+XqWdVFm8v7FIimjeU96GSwxIhoZwrhfbihgByee8w8JkoY
         J7lg==
X-Gm-Message-State: AOJu0Ywrp7gcV6l6sZY6ucBq9L/B011k2nCttgKrMpKfdN0pBTj+ZLyh
	eksz8MdXWP0VdA2oAVlRrDD/thRbsX5bYSl+Nk58at5iUHKC+vQ4rrhN
X-Gm-Gg: ASbGncuSyvo2W63r6qxkQJq7hhp72xBT6vwcglD0tJL9Z5hvK4L8jAS7n5fHvhll6D6
	TzZNS6S6rL7Vq54YCHD96waYC/0vKqVlOJgS+zMaMYZVVjriNJKt5tyNVXfenrpROaRo/VOqTJy
	GZgtMNi9hP06PUnacXKdLa8JmkjcfCwkAtoHXlWyNUmHA7zG9jjeCNISomfnWTDCdLaOVupHi3x
	PAnwAeK7bZcREY74hIz37Nap+3JHSPqvs5OUEQXT7jx7OA8NJuTMYCsMx3I+4nLGg7uU5Ub0vsW
	dmRvq4CkdDsYp5eWvLiDJxGwkEAvDKvV0qdXhX4Hr0cW4qnMav4Z/XgVUTn2s6ut3JWBkEH1dvH
	XZxtSnKB+H9BzOch99sYQ/npLuArkvuFLctwlstJ4M3P6hIFJC9AYtbfaYBADYOWUFxdMBx+02t
	6ZmaQpfDU=
X-Google-Smtp-Source: AGHT+IFwCjDrfEQICalf5NxwHTcZ88cI3WyfLffrmreA57STBVTNRiDMr27sd6w5OkjIo6Mai2gOEg==
X-Received: by 2002:a5d:5d0d:0:b0:3b7:fbe3:66bb with SMTP id ffacd0b85a97d-3b900b5551fmr3431850f8f.50.1754689938538;
        Fri, 08 Aug 2025 14:52:18 -0700 (PDT)
Received: from iku.example.org (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm5326759f8f.51.2025.08.08.14.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 14:52:17 -0700 (PDT)
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
Subject: [PATCH v2 3/5] phy: renesas: rcar-gen3-usb2: Allow SoC-specific OBINT bits via phy_data
Date: Fri,  8 Aug 2025 22:52:07 +0100
Message-ID: <20250808215209.3692744-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_145220_256579_00D8803B 
X-CRM114-Status: GOOD (  16.92  )
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

Update the PHY driver to support SoC-specific OBINT enable bits by
introducing the `obint_enable_bits` field in the `rcar_gen3_phy_drv_data`
structure. This allows each SoC to specify bits required.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
v1->v2:
- Added Reviewed-by from Neil.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 27 ++++++++++++------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 7ac56102aed0..a37af7d8f2f4 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -71,8 +71,7 @@
 /* OBINTSTA and OBINTEN */
 #define USB2_OBINT_SESSVLDCHG		BIT(12)
 #define USB2_OBINT_IDDIGCHG		BIT(11)
-#define USB2_OBINT_BITS			(USB2_OBINT_SESSVLDCHG | \
-					 USB2_OBINT_IDDIGCHG)
+#define USB2_OBINT_IDCHG_EN		BIT(0) /*  RZ/G2L specific */
 
 /* VBCTRL */
 #define USB2_VBCTRL_OCCLREN		BIT(16)
@@ -93,7 +92,6 @@
 #define USB2_ADPCTRL_DRVVBUS		BIT(4)
 
 /*  RZ/G2L specific */
-#define USB2_OBINT_IDCHG_EN		BIT(0)
 #define USB2_LINECTRL1_USB2_IDMON	BIT(0)
 
 #define NUM_OF_PHYS			4
@@ -130,7 +128,6 @@ struct rcar_gen3_chan {
 	struct work_struct work;
 	spinlock_t lock;	/* protects access to hardware and driver data structure. */
 	enum usb_dr_mode dr_mode;
-	u32 obint_enable_bits;
 	bool extcon_host;
 	bool is_otg_channel;
 	bool uses_otg_pins;
@@ -141,6 +138,7 @@ struct rcar_gen3_phy_drv_data {
 	bool no_adp_ctrl;
 	bool init_bus;
 	bool utmi_ctrl;
+	u32 obint_enable_bits;
 };
 
 /*
@@ -225,9 +223,9 @@ static void rcar_gen3_control_otg_irq(struct rcar_gen3_chan *ch, int enable)
 	u32 val = readl(usb2_base + USB2_OBINTEN);
 
 	if (ch->uses_otg_pins && enable)
-		val |= ch->obint_enable_bits;
+		val |= ch->phy_data->obint_enable_bits;
 	else
-		val &= ~ch->obint_enable_bits;
+		val &= ~ch->phy_data->obint_enable_bits;
 	writel(val, usb2_base + USB2_OBINTEN);
 }
 
@@ -430,7 +428,7 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	mdelay(20);
 
 	writel(0xffffffff, usb2_base + USB2_OBINTSTA);
-	writel(ch->obint_enable_bits, usb2_base + USB2_OBINTEN);
+	writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTEN);
 
 	rcar_gen3_device_recognition(ch);
 }
@@ -450,9 +448,9 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 
 	scoped_guard(spinlock, &ch->lock) {
 		status = readl(usb2_base + USB2_OBINTSTA);
-		if (status & ch->obint_enable_bits) {
+		if (status & ch->phy_data->obint_enable_bits) {
 			dev_vdbg(dev, "%s: %08x\n", __func__, status);
-			writel(ch->obint_enable_bits, usb2_base + USB2_OBINTSTA);
+			writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTSTA);
 			rcar_gen3_device_recognition(ch);
 			ret = IRQ_HANDLED;
 		}
@@ -591,28 +589,35 @@ static const struct phy_ops rz_g1c_phy_usb2_ops = {
 static const struct rcar_gen3_phy_drv_data rcar_gen3_phy_usb2_data = {
 	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
 	.no_adp_ctrl = false,
+	.obint_enable_bits = USB2_OBINT_SESSVLDCHG |
+			     USB2_OBINT_IDDIGCHG,
 };
 
 static const struct rcar_gen3_phy_drv_data rz_g1c_phy_usb2_data = {
 	.phy_usb2_ops = &rz_g1c_phy_usb2_ops,
 	.no_adp_ctrl = false,
+	.obint_enable_bits = USB2_OBINT_SESSVLDCHG |
+			     USB2_OBINT_IDDIGCHG,
 };
 
 static const struct rcar_gen3_phy_drv_data rz_g2l_phy_usb2_data = {
 	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
 	.no_adp_ctrl = true,
+	.obint_enable_bits = USB2_OBINT_IDCHG_EN,
 };
 
 static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
 	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
 	.no_adp_ctrl = true,
 	.init_bus = true,
+	.obint_enable_bits = USB2_OBINT_IDCHG_EN,
 };
 
 static const struct rcar_gen3_phy_drv_data rz_v2h_phy_usb2_data = {
 	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
 	.no_adp_ctrl = true,
 	.utmi_ctrl = true,
+	.obint_enable_bits = USB2_OBINT_IDCHG_EN,
 };
 
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
@@ -747,7 +752,6 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(channel->base))
 		return PTR_ERR(channel->base);
 
-	channel->obint_enable_bits = USB2_OBINT_BITS;
 	channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
 	if (channel->dr_mode != USB_DR_MODE_UNKNOWN) {
 		channel->is_otg_channel = true;
@@ -786,9 +790,6 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 			goto error;
 	}
 
-	if (channel->phy_data->no_adp_ctrl)
-		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
-
 	spin_lock_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
