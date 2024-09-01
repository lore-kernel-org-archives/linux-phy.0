Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37246C54FC6
	for <linux-phy@archiver.kernel.org>; Sun,  1 Sep 2024 18:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPHrMKxx9pfIHj+K7xvNaPqq9ZKwdyRmGVqNHm7Hyk0=; b=NOQG7NqZ3fca66
	F6YVPHCGUZT+acpipwtXc0riren8M4UIEY7NbIIcj27WNnf4S4HJuV1Ngu8oiyQu9bD6lF++N7iSV
	UBA97/cGwWiQNB9ExHOvKKSWieF5XV5K92wTShqj0t0bwbFNRGV+bN4jOLoKLv09YcTFA0nccc7Zl
	W6PibOHUz0FcQuwPF1T52Il3rrNCxCDvLnzpl378Zkn8tya9hUYE9mTkAw+ESnRbNEfWx+MjQ41x7
	CI0TTT0eOIsYlb8h2z38ZF9cC6b0Oh0qYLApQ5nPEYf/iMhkfYANYMPD1f4YEMhlOl/EO+aSeAbU1
	6MQRippIMEgjYiSGmukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpRB-0000000C8qG-3Ui6;
	Sun, 01 Sep 2024 18:36:33 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpOn-0000000C8JM-2O7l;
	Sun, 01 Sep 2024 18:34:06 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2055a3f80a4so4206035ad.2;
        Sun, 01 Sep 2024 11:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725215644; x=1725820444; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cs7r7/Zx+L7jgSgyX/lH7TsYQ/OmfRm7Q2KA/O4kFP4=;
        b=Lb9FS/V60JK6kbHS1OLWDO5RHdA+ppivd+CQlouDFpFbUmqB9EltIQzmP15wGzCFRk
         sD8IIoA4aGu3y7awpoyESz1FNvLxWBGbWphw8c7xZ7WKE6CVAIoFGM5veX7iGhUdPTkG
         iH66XOp3ghlEsoFoiZpxt6mXCa4HjZAVfnk+z/5Iw03Sa6bvzr7OEvXj1600vXxGaBDH
         WRaABGNSjF9OBa4zNOHB4iGWFlOwgwMuY+bx/84DNvB+vNrq+kS5SswikrFjO5G5DLu7
         /6xIJ8Nxydh+ERk391zr/B2tcRFcHTtfUgZ6iL3V0QhHDN9yATAf5ca+Tx3noA1i5Xwx
         rTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725215644; x=1725820444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cs7r7/Zx+L7jgSgyX/lH7TsYQ/OmfRm7Q2KA/O4kFP4=;
        b=oXJaU+Ejzqxh/bkVBIGstYWY9nxBjZFFWsLCQw7elDB4zkuExWnBHmapaH4bo3CHTJ
         fKRCh53KLttCihPp5cmC/HSY98qaFKYkwvLAkD7RrD2Gv+HBz2eyEcROAZVE/fIpDvR9
         0r5/9D7mT4tcoa1ZsoSHKn2DbNmc4OzkdKPuArrt8AnjaWePPgk6tHeP6SYKu06OYYJO
         Sl2nDRS/R/fTyhVMZ3LXaxGNG2oUU1VcLAEiEGEavAX0T9ellNNDIvm4Ih/JmOuWdLE4
         SC2zQnFGIo9jWLAa50F3n7jpI7Awn9byqNfcEmdHhckawwf1aLBzMkwNKOJ2arqQGYV9
         ZAaw==
X-Forwarded-Encrypted: i=1; AJvYcCX4HG3+CN1Y5dMs19/U8tM1AW0ND1n15//fxgEAvVA2OYQfKSkvS4EJpj3GlK1vuDXrV3b8ldItuSGTm55AtrY=@lists.infradead.org, AJvYcCXMZJ4nShbBvmph2vPDGK5rTKKNR40aBygY9azMOrDFF0IsBP3K2qHkTXpPSI1tv25xvXNoGYucvcpj@lists.infradead.org, AJvYcCXg50vRwqyplMb7YGTxMIVLXlTwkTTSeckYbCe7z5mqauCfjRviYsOwU6ERFPSHLujbapqU9K/4zZrOmoq+0mCY@lists.infradead.org
X-Gm-Message-State: AOJu0YykIGOz7j+cuJry0mv+zzhAKGBuB1PQDCZNNm22lOIzqihjkbcG
	jrLe8dMyIwbmb0s4FVc6StupZwUxoCsnMVBcaUONe2BB4yCKCh5C
X-Google-Smtp-Source: AGHT+IEC1rG0a4oSqwPB+FBRd7vgpBdtvMr3n/IBlgrouflEoKepJ4FUNU7icdPjsa6KdeQlrynBGw==
X-Received: by 2002:a17:902:ec81:b0:201:efe7:cafc with SMTP id d9443c01a7336-205444fc15fmr66090815ad.23.1725215644468;
        Sun, 01 Sep 2024 11:34:04 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20559b793f8sm16262405ad.15.2024.09.01.11.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 11:34:04 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/6] phy: rockchip-pcie: Simplify error handling with dev_err_probe()
Date: Mon,  2 Sep 2024 00:02:11 +0530
Message-ID: <20240901183221.240361-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240901183221.240361-1-linux.amoon@gmail.com>
References: <20240901183221.240361-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_113405_628807_39B28654 
X-CRM114-Status: GOOD (  14.19  )
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

Use the dev_err_probe() helper to simplify error handling during probe.
This also handle scenario, when -EDEFER is returned and useless error
is printed.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v5: New patch in this series
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 51cc5ece0e63..51e636a1ce33 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -371,12 +371,9 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
 	mutex_init(&rk_phy->pcie_mutex);
 
 	rk_phy->phy_rst = devm_reset_control_get(dev, "phy");
-	if (IS_ERR(rk_phy->phy_rst)) {
-		if (PTR_ERR(rk_phy->phy_rst) != -EPROBE_DEFER)
-			dev_err(dev,
-				"missing phy property for reset controller\n");
-		return PTR_ERR(rk_phy->phy_rst);
-	}
+	if (IS_ERR(rk_phy->phy_rst))
+		return dev_err_probe(&pdev->dev, PTR_ERR(rk_phy->phy_rst),
+				     "missing phy property for reset controller\n");
 
 	rk_phy->clk_pciephy_ref = devm_clk_get(dev, "refclk");
 	if (IS_ERR(rk_phy->clk_pciephy_ref)) {
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
