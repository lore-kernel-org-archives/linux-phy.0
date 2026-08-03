Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA5F4C55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 15:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wm3p7dk5CZ5zxGXTGMchS/cQxE8uQHfX1eyB11FXlNs=; b=yxlymKhlbZ4EAz
	N9adZau0oWUV9ro2YUQgYnacgEt6M/1bHu6Pw3ya4Lf0dSlNCeRUgX53UUPfMbaj1RpqwfW36kYHe
	D+eihkS9Hhk1ZpxLUrEouAqsQY6O1qVDscpXyKcjuKvZuv/n3Q0Ll2ge5WWexb3RzcS9L7Rj4G8qC
	MBW/XniO4SMWQzzTV7+xARHqhRH2NQOxXT3v8+g5TNEdLcf/9k4CgoVFVDg1MV+xkKWw70dCWdRB7
	SM1wHOZlQJEiMkn/w6oJr+hZzT/nh9xUz3RRaW8/qfVC0mWloHaF4NJxGJnSvqugv7Ig20hXTR8a6
	ag+r3///JCBRGEOJtIqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquNz-0000000HUY2-1VXL;
	Mon, 03 Aug 2026 15:15:27 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquNw-0000000HUXV-3O8b
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 15:15:26 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2cf27856f9cso34962125ad.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 08:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785770124; x=1786374924; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2Eps+N2PR4CPFEjqvLBuCWridjCN1eWTyFT6MEhu/JA=;
        b=IuBB9alEKxIFsDQq1wEATLmDhhryDJ0c1UtAx3nqOaz+Zik/kqBWxd6pfiC57l90Op
         7shZ2doPJZz3P/VLdAh+sPN8StgLuWj9mY9xEWXV0AWJWjrRmpgHgppMBoOFsIGm63v2
         vDVNpT8YEaRnMG8Fpi47KHui5WrN+oMQUCLlyFwKrLJPSA1vOHMksaK7ymDSieMjzuZJ
         ntvY22vS9N/dpVMqiZJmoJCV9XOtnqsef+zNMlwZ1sZ7ulCDbsigPnqxXtZCTt/nnLs7
         5coJ1n6j75wFvbo/bthPZrv3nKvyYbzkTsJX2q6aSzAaEhSBGj3F/9obI+jQLyQCJLaI
         DRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785770124; x=1786374924;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=2Eps+N2PR4CPFEjqvLBuCWridjCN1eWTyFT6MEhu/JA=;
        b=mfD7mzimLvV669DwYDiq6II8w0LY+XSkEl6SjA9ntHqdMsjBnD1djgBnX8QwlqC1qo
         H/0ZdAmQ08xzxBRllci7IsYy2NtHuY00f7MviZCDb8+MCTzXyeXo0eWSPYQ0TxtqlEXh
         kBJIDrt31VIRgLpS9iwM7obZ0iYZxdCa1n/jMfit51DbdYNcciGnVfirmy3M9Xo74U7B
         yXHfXO0S62nedtrOwldO7ITmrfMNPseWe07CwGDdIEwCx2GUKJ0b+IpXxE+Nhlqy9uvs
         erAVXakuaL7Atsd/lHyVqa+8avp0uLLY91e7sziBPJtr/7Hepf0Sr1a6U8WPvp9vog9Q
         xURg==
X-Forwarded-Encrypted: i=1; AHgh+Rolm/IFGrfTYm47CmmEjUWou68DDzxqGxj16a0u6njoAYfK3Ea50P53eNkeCS5WLHVWFQRvW51dHRs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXIVXoi25Y9NrkeCcrBdKMZaSqBE+lqJANzmqTqxZi8EbLsJVJ
	/07+sU04AWiIdumxupRSbg9pNZeJ/LaccIaBFm+iw3Uzu+RdNGoxMpxjOEsgPA==
X-Gm-Gg: AR+sD13NjHTT/50qGG1SqhoWMSSmb0JhVCw3jcieHWFqho5EmQHYa7OrqLAr4zA4bUf
	U3L4ZjjDz7MAeFI3yu6BBGHwY3BMYNkSITMc3+TGYnawe9THGa56JuKjK0JWOBzZ7OCrDGD4bUf
	zczbXvVc2/fwqn1B5ltnS9UlQfFNH/qt7JkbKAyT1QOq9dojBEMt0Fkr6sTK+/9MHg4/c+yuepK
	FX5yIZupjyqXN/3SvOvcWCdUZ6w+MZ2ZTf4MaHyHdaE72XYBbqg43vZlYxre7k7HQiioilCH1Sj
	4rfZOwZKAEgmR2ei7TW92ggyQYloP842FjAXNeDWhBn43+5Px/Tfrb94XD6Mci+3fP07ZC/fBN5
	GTZcmMtTA2TpP6Cz7WJBn1WWoOk05pD17KM+Bi5jG2R9VNoo6+ZNslM4O4eidSUB8rEI9VJ4C3C
	tDAcfpfw/yFr4iLBFGFvfYXQOX/YTrEStaWjXe2/Y2FkUumoC9ST/c5krhcECFQpL+/7HtmEYSj
	FZSbF0R6JXrydSlApa7Lr1L1bZmkI19HiKpfyniN/L/HFx6
X-Received: by 2002:a17:902:dac4:b0:2cf:8131:75e8 with SMTP id d9443c01a7336-2d05221d386mr103265235ad.13.1785770123331;
        Mon, 03 Aug 2026 08:15:23 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04b121751sm39677075ad.65.2026.08.03.08.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 08:15:23 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Date: Mon, 03 Aug 2026 23:15:17 +0800
Subject: [PATCH] phy: sunplus: fix error handling in sp_uphy_init()
MIME-Version: 1.0
Message-Id: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
X-B4-Tracking: v=1; b=H4sIAISwcGoC/yXMQQ5AMBBA0avIrDWpNmlwFbHQGoxISUdFIu6uW
 L7F/xcwBkKGOrsg4EFMq08o8gzc1PkRBfXJoKQyspRacPTbEllEtlrYzrhSVdZJoyElW8CBzm/
 XtL852hnd/j7gvh/ZgCExcAAAAA==
X-Change-ID: 20260803-sunplus-usb3-ba6c829bc063
To: Vincent Shih <vincent.sunplus@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785770120; l=1561;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=q2P2nGTjEvaZz0ScRAMPdDMBI1PiH11cZ1Bj3+0m2VI=;
 b=AeZDXra40SfMUAO59TNEMxSl7MEfI1UmdAMw1LyTOdyACWEEB56d/gnUitmndOCWt4Zbct1eX
 E0Z+EnkepARAUonL/Y/TbrNhwcdgEUcrb7UoUlxX5uwXtzdr593RByc
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_081524_879986_F530CEDC 
X-CRM114-Status: GOOD (  11.57  )
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

Fix the error paths of sp_uphy_init() to undo exactly what each stage
did: return directly if clk_prepare_enable() fails, release only the clock
if reset_control_deassert() fails, and jump to err_reset if
update_disc_vol() fails so the clock and reset are not leaked.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 637a5fbae6d9..0ad4c7160d17 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -116,11 +116,11 @@ static int sp_uphy_init(struct phy *phy)
 
 	ret = clk_prepare_enable(usbphy->phy_clk);
 	if (ret)
-		goto err_clk;
+		return ret;
 
 	ret = reset_control_deassert(usbphy->rstc);
 	if (ret)
-		goto err_reset;
+		goto err_clk;
 
 	/* Default value modification */
 	writel(HIGH_MASK_BITS | 0x4002, usbphy->moon4_regs + UPHY_CONTROL0);
@@ -129,7 +129,7 @@ static int sp_uphy_init(struct phy *phy)
 	/* disconnect voltage */
 	ret = update_disc_vol(usbphy);
 	if (ret < 0)
-		return ret;
+		goto err_reset;
 
 	/* board uphy 0 internal register modification for tid certification */
 	val = readl(usbphy->phy_regs + CONFIG9);

---
base-commit: 415606a7be939835db9b0d6b711887586646346d
change-id: 20260803-sunplus-usb3-ba6c829bc063

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
