Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97168C52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HisW5FdtJ2MiPo1e8aUuGdKe9McMlF4w9CS6vqYSwk=; b=s7Ho4FjctblHgr
	JY0RbR13BT/wWxq2Dwq0gT0cmn4ObQF4BhRdfeOyZovxvVDfUkG0+fD8ALTetQx2bYsNPEAL4yVxE
	KZLJl5j2YYEq5vSkSmHyo9GaRcO3CzLjcOyBGToyXqq4f0GDgQeS2XAPApH/4WP+sXk0jxlHDWRrh
	RwXtEAaYVI33ZaHPkpicxq9moIM4n+4mqQDeLGjLUImTm3OPyGb5A0IWPiqSh+cIt0SL/YBHLd0Ia
	3Y/sIWddFU/15BTCboo5tFLy5Coas7XjZv8OKzsciie3eW8yKifPaH8+yPdB1B4yViT0nWd/KXahh
	sZgHaooYnwXYDJV2Zbkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9n-0000000DSH4-3gsv;
	Thu, 22 Aug 2024 15:55:27 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9ju-0000000DKvf-2hxN
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:43 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a8684c31c60so121164066b.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340521; x=1724945321; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSWof3eimbYWdm3Zde2Iz4BDEJwC1Ylc5fdAQ7iNZKY=;
        b=XhzDtOT5RP/0v5I15+DD1QKeTbFJOKHOfM+Xwan3w0dgXGAn0Ix1WToAbmiFEu3VtC
         QgBXQHuUtmRzSa+3A6VpcrePNK2VK/FlM0LsJ2JfEAEfJUi5bXznFyUoV/lgNUIX2a9u
         ZfFSWrSbsCjJAeHKxGFN1S3PIFpRdZxTBjBC9ALsaAStIrjG1lgFSVADD0MYaQbKxmit
         7to8qvbKNnvm8ObfQZWMfYs51AwSrcXr/Bd1tGc3nD6kfs1upJpOaORsHbkNOkxfCMN6
         3bTgvmQv3IQXaRP4j4BtzrmB52mBvkXiV3Zgr2cdBa8J/FI71fPlBO8tKGqh0rl1mIxR
         wehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340521; x=1724945321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XSWof3eimbYWdm3Zde2Iz4BDEJwC1Ylc5fdAQ7iNZKY=;
        b=E7IEDAxhWu+57qHdfDaZxLM4KVvdE9703IjNOMXr2O6EbqbUWzMlv7yobsuUI46K7R
         dzcDgAyLmdbSE901zxeTnsYHGEQZdbAcfOimo6ovEQ2JkptcpBFSmr+ZBjXa+uXv7azU
         GZr3hYPpu6Di2dayuYGXoXcOIF3a91tr1hlV0Cv6h2R/RSxPqAVgJe2PV5EGsSTNCfV4
         PoGIJ+xcYkQm2/lQ7zVfDJxeMUXZm+xUYqWNUD/Dg9a6KnP1ruh33JZd3FHR8lRx9vWr
         MhrfJ9zgVqtn1ZD6MxHvDXGJNi+eLDa4BoBoipfrh3IG05CxKFQVPX4ZrGYmOZtp+oOI
         kz6g==
X-Gm-Message-State: AOJu0YyMcDh6fbnDn7LdBtEQfguSqQJqDitR5dKrUND+PmCKo98nS4Fv
	EmVa09BPN7ycAjRQLQ/Y51HFnmRNVHIeOimZVeUMn4nKVg4+pPtVSLGDbroH+Mg=
X-Google-Smtp-Source: AGHT+IEBQZ1FZ/LXCGsRTtDo2mrL6RRIsqfYVgMxLk7cvYuAGygDFmxNvFc2QDySBzsJWYCvzMOvmg==
X-Received: by 2002:a17:907:7214:b0:a86:82e2:8c64 with SMTP id a640c23a62f3a-a8691b5c943mr185347366b.35.1724340521191;
        Thu, 22 Aug 2024 08:28:41 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:40 -0700 (PDT)
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
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 12/16] phy: renesas: rcar-gen3-usb2: Add support for the RZ/G3S SoC
Date: Thu, 22 Aug 2024 18:27:57 +0300
Message-Id: <20240822152801.602318-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082842_753861_C058D18B 
X-CRM114-Status: GOOD (  10.50  )
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

Add support for the Renesas RZ/G3S SoC. The support is similar with the
rest of RZ/G2 devices with the except that the RZ/G3S needs bus
initialization due to hardware limitation.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index cf4299cea579..58e123305152 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -583,6 +583,12 @@ static const struct rcar_gen3_phy_drv_data rz_g2l_phy_usb2_data = {
 	.no_adp_ctrl = true,
 };
 
+static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
+	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
+	.no_adp_ctrl = true,
+	.init_bus = true,
+};
+
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 	{
 		.compatible = "renesas,usb2-phy-r8a77470",
@@ -604,6 +610,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,rzg2l-usb2-phy",
 		.data = &rz_g2l_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,usb2-phy-r9a08g045",
+		.data = &rz_g3s_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,rcar-gen3-usb2-phy",
 		.data = &rcar_gen3_phy_usb2_data,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
