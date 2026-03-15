Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFEFAF30283
	for <linux-phy@archiver.kernel.org>; Sun, 15 Mar 2026 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qpW6UBarcUsD75eNi5o+GN3dNL6qT8PMyI1/NaShznM=; b=ivTuFoZVfDBlIN
	qlrgELZ206xof1MWbMwwb98rLoXKV4xTKMZDr33JvXgNB2xeybCgXRHnbKiJeqr0FOE0suXEcwNev
	K4NgtXXF9VUvt+Z+SFZ1/h+ACSbDKSIc7HZwJLGxVDbKl7xTnTpSJIJ/BUhhf9kk7NkqYFCrs+aop
	/uiBVeS5ibU2ZZBOyjV3XnU7xdNo+J9z9yZsSCT7V6a371rFC3ZjnmS2qt8rcA0kd8J2tWJ/6iUTy
	EvUObp7jPk4YjIWnbzLC5E3h0NXRLi94QjZkyKjMaEnwaq+xA8XQ095uTRuT3QM20Hk5jNmtghqfF
	Vbol/DB2TqXwUSE8/l5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1tLN-00000002weT-06mD;
	Sun, 15 Mar 2026 21:49:53 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1tLJ-00000002we8-3E1s
	for linux-phy@lists.infradead.org;
	Sun, 15 Mar 2026 21:49:51 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-c736261ee8dso1275413a12.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Mar 2026 14:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773611388; x=1774216188; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yyQZotK09J79wwzOqO2g7g0QUr0ijW8kVif2Dvv/7Zs=;
        b=DD15DEok/glT1e/N0lxRPY0kDrid568SiCZxMM60ZyX1AcrzjAb1ioUO45ui2JyQ1W
         vAY9w0Yb0YYG9iVz85gNkeEszrGTzJPPvBp26ogKCovzZT3x/OSfAzX/VhyP8wGILlAU
         NiVhNK0I3jnCJ5HoJJIRF16dGWGSOc+SYkEPhx8/Yd4Iw5ZJ2IL0ILsxyjRzEe2Oyvdz
         0f/FnB7vnSKX1PQxiznglz+5m1T7McpsMgax8ZLx2harbanAGN3rz9r4bUTAACElt/kS
         UfkIR1gjWDbegjRty88p+jRhtHStzPxN4lSF58+9eQvWuVsvrHpIyLD/XJu91w1GfGID
         J6Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773611388; x=1774216188;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yyQZotK09J79wwzOqO2g7g0QUr0ijW8kVif2Dvv/7Zs=;
        b=ADKiKVrDhYqaqbw9m55T6MstnuhM46pzjw24Tf4Wo4zAsKIEvI4cTiLgSbFEWoa+Up
         nGXy/xjT7d9hZyzBUJozedZvAx2p0y+bcQMTkq508xWwuGB3rYL68ATlcHuAlyZFSE0s
         VOUY71+5xh5ceY9j64MBYBAFYRGxGWZIK/d25ePzwKmmKPGJzFmO7U0+J86JIYonO+qh
         OrkxnCKjIDB9avK1N8QUFKPq/2R2ce3TB1Z2laBQd9VniPy8PMEFrmEGL9glpwjfRKJr
         rVr/iVv59xfXVmTr37X5D2xnNbctadFcYzn9cM7mLAPJpEGDgcMnlhHXJcazCYzvffEh
         7cww==
X-Gm-Message-State: AOJu0YyRy5vuLBWpmROmMwFkNyxnXUlzXUmk0DW/UuSJW0uOanlqmaYH
	jfR0a86gCqkzcLr0VdARCYS+gbKK8tm8/5xyoISO0OPWLGuk8lPcovpoH1X+Zg==
X-Gm-Gg: ATEYQzx8RdJ3pnrdFjrS4PC20GRXUt/fhWsRKOmenSN1TkBUC0x9uvX3xvfF0CLull7
	q4+Lgmof8UMMWxqraL+stPKrc/F1FOC5j7SdtXiqneNHQP9Xuk/x3mo4MzIuwAD5aPz6KeW+xM+
	ieN7CmLzNBsr7uh/XDFWBGiWwbCmOWDj/71VIl1fsKAbH2ICNzuOc8YtsWVeRWYpEUY5plGKZ1g
	7pkRLtQAzCYOh+FlR9345tBUS9GCb14AuPXktxc1VYCDegfMNqo2AteF2//wWxAIe+RE6UbbNWY
	QQRp/DV1z7wOx6dNXPwztR6LXBZGW02kbut61h19NJZYE+Na36C1Dw6CZYKHQ7W4g4QPt0aPdU+
	aB9gnbcx5akovKzzN/sSQfGQqUgVf/Yx/mfrX+CLo6+i9hsjbJEgUtc96i8ZY7iAqjFPvB0UOUd
	QEXo/EOtMW1KbLIJeN2M0f9jUztACT5tBBT/TOlEs2NbCN7P2ixXMzv1M=
X-Received: by 2002:a05:6a20:1603:b0:398:b178:a53f with SMTP id adf61e73a8af0-398ecca3e40mr10326239637.40.1773611387990;
        Sun, 15 Mar 2026 14:49:47 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebb6336bsm7896099a12.21.2026.03.15.14.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 14:49:47 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM MAILING LIST),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] phy: qcom-usb-hs: use flexible array member
Date: Sun, 15 Mar 2026 14:49:30 -0700
Message-ID: <20260315214930.4621-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_144949_810830_F05452BC 
X-CRM114-Status: GOOD (  10.48  )
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

Simplify allocation by removing kmalloc_array and just doing kzalloc.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-usb-hs.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs.c b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
index 98a18987f1be..928a982a8a76 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
@@ -34,9 +34,9 @@ struct qcom_usb_hs_phy {
 	struct regulator *v1p8;
 	struct regulator *v3p3;
 	struct reset_control *reset;
-	struct ulpi_seq *init_seq;
 	struct extcon_dev *vbus_edev;
 	struct notifier_block vbus_notify;
+	struct ulpi_seq init_seq[];
 };
 
 static int qcom_usb_hs_phy_set_mode(struct phy *phy,
@@ -209,19 +209,16 @@ static int qcom_usb_hs_phy_probe(struct ulpi *ulpi)
 	int size;
 	int ret;
 
-	uphy = devm_kzalloc(&ulpi->dev, sizeof(*uphy), GFP_KERNEL);
+	size = of_property_count_u8_elems(ulpi->dev.of_node, "qcom,init-seq");
+	if (size < 0)
+		size = 0;
+
+	uphy = devm_kzalloc(&ulpi->dev, struct_size(uphy, init_seq, (size / 2) + 1), GFP_KERNEL);
 	if (!uphy)
 		return -ENOMEM;
 	ulpi_set_drvdata(ulpi, uphy);
 	uphy->ulpi = ulpi;
 
-	size = of_property_count_u8_elems(ulpi->dev.of_node, "qcom,init-seq");
-	if (size < 0)
-		size = 0;
-	uphy->init_seq = devm_kmalloc_array(&ulpi->dev, (size / 2) + 1,
-					   sizeof(*uphy->init_seq), GFP_KERNEL);
-	if (!uphy->init_seq)
-		return -ENOMEM;
 	ret = of_property_read_u8_array(ulpi->dev.of_node, "qcom,init-seq",
 					(u8 *)uphy->init_seq, size);
 	if (ret && size)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
