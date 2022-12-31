Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADA0C4708E
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 22:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4LP6yJfs824rhTfAPgI+lN80+CO4vWebxIa+eiv2Wc=; b=gjnu/1y1UnYFRd
	SxVPWYBJ6oUhWzyb9KDt67nqJ3FkJo7mCWouJD1uSZtH5g837WxrqASa5f/yKGOeJx1/sfzik19M9
	g6K7KeUv0iy8BmWmLx2PGdp7pN1fkb/5jYIgLEeFo6P4PslX1bkmBalwidU9W7oS2ZtRv72Gy6Bon
	B4gm5WQVD702V3XnWTIMhDx0/m7kwZKukm+Ze/sBcJUr+4tCVabrFcPaGbcjQL/kGXULOld9KBjX9
	w5cMlzzMAKW3qqpgX4KEDgQm3UpMRac7+EZmVTXgDEtso80WdSMKNiJTbyrVp6c//y7bYEmlbYl2a
	O/9D6f7i4q4/EpGDe1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBkHr-00B05V-BZ; Sat, 31 Dec 2022 22:25:07 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBkHl-00AzwL-IK
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 22:25:03 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4NkxWl0WJqz1S5Dp
	for <linux-phy@lists.infradead.org>; Sat, 31 Dec 2022 17:24:51 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1672525490;
	 x=1673389491; bh=DCkNDvFHww+MS2eiPqi7ClBRtEBcvg/7faZ0BrO8Uj0=; b=
	Q2hn3W0TBPNpKbwmK/V+wZgBw+2V4jTVWeccTgp8jEPnmNPQ8upmJmtpI3eZS2aj
	oNpEN/3Dv+8rc5NTEKb/mYc621O3DLmKYx+N6M4nHh6RMkSSviO0zi7XDa0ZhNh5
	u1dv02nR/M5UTT7rO2G8aarO3oLXNwvR4I1MQdI+l/HVH1ziav8Jfju8JJWPb+qq
	f6uYFNrSTAr0YRp8tHMaZ/ojJQFBg9deE3jbJAEhMVp5r2VfZyj6d+V+nsP1iTeU
	jgHX9dlyXMu7Zb1q4gae0k5PFvETmrmqRYRqyq1fic6nz06tsFOMrN+4gbPcVaax
	Vo5YSkumKH+khhvTnuKK/A==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id xlmhOpjG7TJX for <linux-phy@lists.infradead.org>;
	Sat, 31 Dec 2022 17:24:50 -0500 (EST)
Received: from dorothy.. (unknown [190.196.92.66])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4NkxWf3QN6z1S5Dx;
	Sat, 31 Dec 2022 17:24:46 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org,
	Lux Aliaga <they@mint.lgbt>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Date: Sat, 31 Dec 2022 19:24:17 -0300
Message-Id: <20221231222420.75233-4-they@mint.lgbt>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221231222420.75233-1-they@mint.lgbt>
References: <20221231222420.75233-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_142501_776233_CB40657C 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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

The SM6125 UFS PHY is compatible with the one from SM6115. Add a
compatible for it and modify the config from SM6115 to make them
compatible with the SC8280XP binding

Signed-off-by: Lux Aliaga <they@mint.lgbt>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 318eea35b972..f33c84578940 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -693,6 +693,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_ufs_offsets_v5,
+
 	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
 	.tx_tbl			= sm6115_ufsphy_tx_tbl,
@@ -1172,6 +1174,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm6115-qmp-ufs-phy",
 		.data = &sm6115_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm6125-qmp-ufs-phy",
+		.data = &sm6115_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sm6350-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
