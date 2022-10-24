Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03A2EFA3745
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UlPhXxUoun5ajm7wKxI1Ea7NJKGbH2sgHwYeO6m1bI=; b=MEYwQQc5lMENei
	14Z+XRvk7Ll6O5Sf9HrC0UYrTh5E1DyDUhCm+ds/n2KdHxic62JcaHpKFHDwg42TZW5yFA2Hjs3ao
	b1Bh/FxlKlDeM4DUV3yclO6B8eImegwYFM+4qebiKvjuqaAE6QIwNa8/xR5RT6B6ab1hsy36/dHDq
	W83N0bssgt7uf2XwoHcTt4r97QaG1+jniL2dHe4eMVC8/rDwDrgxA0MD81B03XCFnM1+Xo2gRWJdL
	ws9OR3v5Z1dHU5Xnn70zykH0JMeJ94RVjwm0NXt2rebmKv8cSuxExpiSESGJtXQn00sIGuJIYxEuG
	dfgGkUvFUt+fwW/UI1SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL7-000Ghi-Do; Mon, 24 Oct 2022 09:01:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL3-000GdJ-Ry
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2D719B80FE1;
	Mon, 24 Oct 2022 09:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B09B2C433B5;
	Mon, 24 Oct 2022 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602097;
	bh=g6UD0qYqIr8RCrOv0xEU22lm63plP68e+mK5h1Jr0Ss=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EEQJiv8EDidsXDfSI/YpKBHoeIGHyq9VuUZOkzJoKDIIOEi3COs2YLXLLailrja26
	 KMTd9OFbQY4idO9IvCoo93rW4gXymvDbMH8zxbuIQUtryh5RPjghkrqamZr724P7S1
	 /NEmYUraEdhYN6Tv7pnVbqLWx2g33mIPv5m2daBVWiySyib5RI5QlapN/lagSjNoei
	 zXqYcopUeyndZh+k6x8MXBMI8CTrHeVeJfFuGEUakJk0XEkKtEVhO8rJLEXHrtnKdA
	 BAjKORnNo5LimuVQYcsKUTg477gJxfL0fO9tmRd+WAuoWAeL10/gUiL5+DqgmepJsE
	 6rekbNURYYF6w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056Z-GX; Mon, 24 Oct 2022 11:01:21 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 06/10] phy: qcom-qmp-ufs: clean up PHY init
Date: Mon, 24 Oct 2022 11:00:37 +0200
Message-Id: <20221024090041.19574-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020142_070469_C7AD5A7D 
X-CRM114-Status: GOOD (  11.31  )
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

Clean up the PHY initialisation somewhat programming both tx and rx for
the second lane after the first lane.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 90583b87efd1..fa703e856eb7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -859,14 +859,12 @@ static int qmp_ufs_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_ufs_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2)
-		qmp_ufs_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-
 	qmp_ufs_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2)
+	if (cfg->lanes >= 2) {
+		qmp_ufs_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 		qmp_ufs_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	}
 
 	qmp_ufs_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
