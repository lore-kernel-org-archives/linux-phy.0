Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DDDBC369BA
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 15:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40Oqx4NmgTtacaGm4Q4OYtsW0HUXdTl8Uk2345hhwXA=; b=UnuTCcBAEVs9Il
	YNzbjsL20213lx5wQerC4iaZXMn2DSzOn2Ay05yEd0zwOfElH5BNWWa/Dm4d6sLV97BTZp+BzoHpk
	Ag3OaYG6+PXSnP83JvNAPcF2/pvpgtTVkrBK+cnCDxDd/wtMgEy7mnVfd7S833d5qJ9kajYVBgbEq
	W4ZexFjykBWdoxo3G+ebUQZFoHoyni12wHLjWZBrKhOEulf4o6abDAKOhVqBTtAlN0kjKQwVWApjx
	uLKVxQCI7kMjoiWFou//wsD+8soCEAzTKPDWbUrGHY1mZgI+F/qtokmzM9kPzvbVxykwE7/Q9bL0a
	vCR8hW9qXgCqkVFrNkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LR0-00000002Yp5-3K5W;
	Mon, 14 Apr 2025 15:09:18 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LGD-00000002W7y-0gLP
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 14:58:10 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso46668705e9.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744642687; x=1745247487; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pM2NKx8obz4I24MPi7gN8busyEmsDDD7XKGT8uK5+V0=;
        b=aT727L4W1jOCTaBsX0EPMlVm4oCwaCoiQkYv85QXXBsQlIIEnnuLRuC5GntDJmDF0x
         feoSFHp2xJvc3OkYWIKJT4J1ILpJkpTpjyMM9BV/WtdZQUTEii1pIqGq5xj1llD6ok4w
         kRz/h7SKSKyA0fymVOzwu94tRELywSmaEZWNbYqxXJGrhcUUoGmmJeaYteSmesidLynv
         bpakyk5qYJIZdg12yw5lGy3IwOa9ynOur6Q81RSJXzy8nwsyNB+unRhyktrEQlOTrUIi
         DC6X9idVAI0oWmC5Sl2Ghi3LeEQaKsmsdOcR3f7Dgd0lZBiK2IpYwxlJDP1fWy51vAeW
         409w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744642687; x=1745247487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pM2NKx8obz4I24MPi7gN8busyEmsDDD7XKGT8uK5+V0=;
        b=hjrnTK2V/reTLVzTg/ZQ5O+Ys3D02Pa+sc7Y7UrLcY09mBkRrHVA6eFvXn0mwwNQ5j
         x9PVCX2UVCduCAlBomhXTxU6n4ZTMlaRbe6geANu7hJGG7SsnzvbZIBAeVDIdJK6XDlc
         7f9hdusCAzswCzB46I4t+tjElLVrnJrI+hu9icdsg01x1dXQ4urmkhET856yh24mbovX
         ppxSPMuJcfGz9ftwG1kPbBw705lFBMa9vPrrTwXKx8F52y9HRD9HUqDHGRRepA5ImBY0
         XwZarimAVyCOcjeegZ9ig6anfcLkjIrxV0Lu08VaKY+tKFpWNkKSOvHxXZe6BxoqZMsv
         q6aA==
X-Gm-Message-State: AOJu0YxfsluXBFhX0EoYogVxFkyk3kqmP01hsk+7LId2W3BgUyg56qfC
	ofBuCY6DuKSW6lp0GboMfe6ljVjPPunvOeSgAKcF9LiZEV0dYsT7
X-Gm-Gg: ASbGncun1BVut5IAhNJuyin6G9G8lb1JHMVNs/Gfj2bok3dWH9Ci0FoA754mr5zHxLl
	UbBfNqf04Z+EHea+ql8awiIk5dS2C15crsYAwRolg/XqPyhXxzRsMeGAMAkNRIJIlg2p8YhpHBt
	L5rFf5nRfEojqj2DCp5tdCK8ThsOEaXkHMmiHg/24HFlbaruzWfSfwMwW/FmB6qwaohmSimbvvp
	M6jIbDapXrsO7LvCWm82dp91Z984C+APcNW6UNH6aqaphcky8rEJC16ujmkVWxebRn1GLoMDJf4
	HHR5pK7sTMvNx3a6DDHxbQu4TRGVQCzB+RYkEZmYTKcQdqByT2o67wc1pwIROZh/xvhll71zQFg
	=
X-Google-Smtp-Source: AGHT+IFRZJWL166MU3lJcPNUXJ4htm76qJh+hKGtgYCkfK0g1Ix3ihH1Xoda33pQ2MGxMW6aQNp/2Q==
X-Received: by 2002:a05:6000:400a:b0:394:ef93:9afc with SMTP id ffacd0b85a97d-39ea52017ecmr9812334f8f.18.1744642687246;
        Mon, 14 Apr 2025 07:58:07 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:eb55:397c:6c6:e937])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96bdf9sm11067041f8f.22.2025.04.14.07.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 07:58:06 -0700 (PDT)
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
Subject: [PATCH 4/4] phy: renesas: phy-rcar-gen3-usb2: Add USB2.0 PHY support for RZ/V2H(P)
Date: Mon, 14 Apr 2025 15:57:29 +0100
Message-ID: <20250414145729.343133-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_075809_202436_2785FC6B 
X-CRM114-Status: GOOD (  16.74  )
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

Add USB2.0 PHY support for RZ/V2H(P) SoC.

On the RZ/V2H(P) SoC we need to configure the UTMI to a specific value
as compared to other SoCs (which doesn't need configuring it).

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 30 ++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 10d1a89558be..867f43132b7a 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -28,8 +28,10 @@
 #define USB2_INT_ENABLE		0x000
 #define USB2_AHB_BUS_CTR	0x008
 #define USB2_USBCTR		0x00c
+#define USB2_REGEN_CG_CTRL	0x104	/* RZ/V2H(P) only */
 #define USB2_SPD_RSM_TIMSET	0x10c
 #define USB2_OC_TIMSET		0x110
+#define USB2_UTMI_CTRL		0x118	/* RZ/V2H(P) only */
 #define USB2_COMMCTRL		0x600
 #define USB2_OBINTSTA		0x604
 #define USB2_OBINTEN		0x608
@@ -50,12 +52,18 @@
 #define USB2_USBCTR_DIRPD	BIT(2)
 #define USB2_USBCTR_PLL_RST	BIT(1)
 
+/* REGEN_CG_CTRL*/
+#define USB2_REGEN_CG_CTRL_UPHY_WEN	BIT(0)
+
 /* SPD_RSM_TIMSET */
 #define USB2_SPD_RSM_TIMSET_INIT	0x014e029b
 
 /* OC_TIMSET */
 #define USB2_OC_TIMSET_INIT		0x000209ab
 
+/* UTMI_CTRL */
+#define USB2_UTMI_CTRL_INIT		0x8000018f
+
 /* COMMCTRL */
 #define USB2_COMMCTRL_OTG_PERI		BIT(31)	/* 1 = Peripheral mode */
 
@@ -127,12 +135,14 @@ struct rcar_gen3_chan {
 	bool is_otg_channel;
 	bool uses_otg_pins;
 	bool soc_no_adp_ctrl;
+	bool utmi_ctrl;
 };
 
 struct rcar_gen3_phy_drv_data {
 	const struct phy_ops *phy_usb2_ops;
 	bool no_adp_ctrl;
 	bool init_bus;
+	bool utmi_ctrl;
 };
 
 /*
@@ -472,6 +482,14 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 		rphy->otg_initialized = true;
 	}
 
+	if (channel->utmi_ctrl) {
+		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
+		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
+
+		writel(USB2_UTMI_CTRL_INIT, usb2_base + USB2_UTMI_CTRL);
+		writel(val & ~USB2_REGEN_CG_CTRL_UPHY_WEN, usb2_base + USB2_REGEN_CG_CTRL);
+	}
+
 	rphy->initialized = true;
 
 	return 0;
@@ -589,6 +607,12 @@ static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
 	.init_bus = true,
 };
 
+static const struct rcar_gen3_phy_drv_data rz_v2h_phy_usb2_data = {
+	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
+	.no_adp_ctrl = true,
+	.utmi_ctrl = true,
+};
+
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 	{
 		.compatible = "renesas,usb2-phy-r8a77470",
@@ -610,6 +634,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,usb2-phy-r9a08g045",
 		.data = &rz_g3s_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,usb2-phy-r9a09g057",
+		.data = &rz_v2h_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,rzg2l-usb2-phy",
 		.data = &rz_g2l_phy_usb2_data,
@@ -763,6 +791,8 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (phy_data->no_adp_ctrl)
 		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
 
+	channel->utmi_ctrl = phy_data->utmi_ctrl;
+
 	mutex_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
