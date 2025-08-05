Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C7D4C87FD1
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 12:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NniEdlh4TfDSspLb94/tD0CMsH/Qkyvv2Gv0tbkLpXE=; b=Ghefmojg12HhBp
	xXzz52wvvGfmsh2KOP4qzBLeP5TqQ+cp0/yzlzbRSBahydgScFtxYm2EYLOtAYcduoSWGhKhDT0+l
	DRkTH6wE3iCrncQjWT08mypjjfOobNiDuTxHgD2NvHgksvVRh2GqtS4HlogxRXxuqS8lVCFlWjQ22
	Z+1zPWBK69NtbKiM8SoPGsNfLsXztUNf6sXWcsBk/SjhG7NqQVLM/pBee+/+whqTDoRL8Pyzym1II
	ouDEzXYxNFFASbQn65kuh44aMduncbUJUoopRHtVnwMEZft7g/waQtpWey8Kpm6xWNBTc7MtQP10e
	gf4W5PdYYFtnP9w2eNfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujH02-0000000Ck5p-16OA;
	Tue, 05 Aug 2025 12:42:38 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujGjc-0000000ChYM-16U8
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 12:25:41 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3b7961cf660so4307739f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Aug 2025 05:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754396739; x=1755001539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o1nM+ZKQrBb+Htee3aK8Av9Uv/f3aSiUUxHDlz6amBA=;
        b=U2XMgONBWnsopHL/soL9tZnSc35gxKAj2msIEUPQXkZdrgSHpdykov46pR5TM1OCKV
         XDiU26wkjru96S9aHz1mJ2V+jJEn3UtocDe34bCfOY7/BEWBLBD9ztG+/W4RQkNHWrUh
         0NZ9b3UYmK8gIlffYR6TBS0P7g/srikWd45qz7uxEz9rzCRq74VmxxYQYwtsQc+BHpfD
         ifSVLOqmJunOYbHeMwjbfUv+j2W/qyXpp9dy1c2iU+/jcXstBIXQPtm3bCeK8eJW10MB
         Ir4f5yarpx88Zj+gG6S00ULa+QMawN+OMMEgbc1BWePQA2vTNhjb6A/zTW0TD3JwNgtI
         xjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396739; x=1755001539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o1nM+ZKQrBb+Htee3aK8Av9Uv/f3aSiUUxHDlz6amBA=;
        b=Gv6RGNMoSZqJ5DE4RTYcfiPdonKpbRg5XLhYAcEpca8aJpyrvPBswdqgx5i59mbEud
         Dkl/EYulIDqU1pkyH8NoBuaiSBhX1rZ2hC2xohAsXysBrDi4zAZ13xfRcvQWRclmmjCj
         3Ym2eA0NyvCoD5eOBSECm//4bIDYcPJum1/vr8FTzMoRkPrNGXfwdfMZALLLMi9t9XXv
         s7+lAi3+mw2OzRJM6aDps21nCg1iVDFkmipa2nzqIpK3itkMNOvYEbhUFxaS22vmGsN/
         JTfZ5JgtUsK38uWnhxhOH05sLgpQoJ/M6FXaxgngs3HEMbQa+B9o9Bvsk3ifZeke+dEZ
         +WdA==
X-Gm-Message-State: AOJu0Yx0IPDcM5rG6q5CW8HRaW6AOgny2gtCSDKRSnyoe7LnrMzRIgls
	wJPFFrfRjTi6cJvqUkrHeYnk6hMCWGO0wQloVKsau0byn/387W8r8nBIDyWzFXnK
X-Gm-Gg: ASbGncvDiUnJogpKmU/McJbROW/wlhDT0AtDG5P7Tad3rOV0xYU/4SxvabzdpvgNdbs
	+OXatyBkEiExHVt/e9AAnmPg3Fpu9m/HdXcFshZQYQAlS5gL4Te0YjQ5Azzqakrichnxk+tcUXa
	Rp7FNoXM5AJywv+hYc1wrFngk0eIbtrP6aTSWhSuG0JCrlAzVzvUAMQ1elj1CYe7LnAZGUPhJ4c
	mrqfaEg1J7UMS3LJvcl1NzZiNNI9AckYJRKYh+4dpCW5pynJZlPvFikK27O3j18yrpuCdvC73ji
	Ehv8P39XGrXo1REmExGVOixk7cyaFDYMcRY2fAVJrWXsCV6ELSzMAZM3JXEWgRwDZnHh4ueNcpV
	6VYK4xd8s4fPW+vLCidr1ny9O7qGO/K5DK+CloQq9urMJE+HRLmvXUfL6/Qetr5saLHvl66ONDQ
	==
X-Google-Smtp-Source: AGHT+IHc5Icm1SVZv69DweZwMA+oPfcG9+hBe7KOaiBLVovbZ2Nqsy9UgfyhAA8WbXjZU5OUGPlLOQ==
X-Received: by 2002:a05:6000:2912:b0:3b7:9d87:97ad with SMTP id ffacd0b85a97d-3b8d94bc889mr10154634f8f.37.1754396738587;
        Tue, 05 Aug 2025 05:25:38 -0700 (PDT)
Received: from iku.Home (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48a05bsm19153986f8f.69.2025.08.05.05.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 05:25:37 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/5] phy: renesas: rcar-gen3-usb2: Allow SoC-specific OBINT bits via phy_data
Date: Tue,  5 Aug 2025 13:25:27 +0100
Message-ID: <20250805122529.2566580-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_052540_307402_638A50A2 
X-CRM114-Status: GOOD (  17.27  )
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
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 27 ++++++++++++------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index cfa9667c7680..ea387941c6f7 100644
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
+		val |= ch->drvdata->obint_enable_bits;
 	else
-		val &= ~ch->obint_enable_bits;
+		val &= ~ch->drvdata->obint_enable_bits;
 	writel(val, usb2_base + USB2_OBINTEN);
 }
 
@@ -430,7 +428,7 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	mdelay(20);
 
 	writel(0xffffffff, usb2_base + USB2_OBINTSTA);
-	writel(ch->obint_enable_bits, usb2_base + USB2_OBINTEN);
+	writel(ch->drvdata->obint_enable_bits, usb2_base + USB2_OBINTEN);
 
 	rcar_gen3_device_recognition(ch);
 }
@@ -450,9 +448,9 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 
 	scoped_guard(spinlock, &ch->lock) {
 		status = readl(usb2_base + USB2_OBINTSTA);
-		if (status & ch->obint_enable_bits) {
+		if (status & ch->drvdata->obint_enable_bits) {
 			dev_vdbg(dev, "%s: %08x\n", __func__, status);
-			writel(ch->obint_enable_bits, usb2_base + USB2_OBINTSTA);
+			writel(ch->drvdata->obint_enable_bits, usb2_base + USB2_OBINTSTA);
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
@@ -748,7 +753,6 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(channel->base))
 		return PTR_ERR(channel->base);
 
-	channel->obint_enable_bits = USB2_OBINT_BITS;
 	channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
 	if (channel->dr_mode != USB_DR_MODE_UNKNOWN) {
 		channel->is_otg_channel = true;
@@ -788,9 +792,6 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 			goto error;
 	}
 
-	if (phy_data->no_adp_ctrl)
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
