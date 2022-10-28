Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E96FA3748
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NT16b+Q2uTmNcuOwvcwhaDVO3+c++HQ4wESaWAs6Ot8=; b=E1mTC1SrGzU+Zk
	sUr3wgTPA4zJhA+fTm7gZ7BJAnmeKHV6Q3mfx6w8dDeuii7KFTE/yI8Mh6ItkLsoYjgbT3EouVNKi
	EKUlw3YRDw192RHt/4rg69ep9RxlaPGGBqUDsUUoQevXDsWDyfmWziS4pTC9Ydi1excEgTGXT/y01
	B0TqatttBY4JNqYFppN3JTXKcxh6ybNiFeql4Yl2OMA0l6vhJRguMjxv3JeyV0i6elsB4UPD8jD3I
	KP7DbCNywNSdnXg+EN0Ly/IqCYajPIZuUKlEDTmI3PHB44ibngjC35uG0+/89Cs8HfBg8OdUD9t+0
	4smf/rkuqwXiETnBVIVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfF-00HQaQ-Mv; Fri, 28 Oct 2022 13:44:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfB-00HQX2-IT
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4B922628A4;
	Fri, 28 Oct 2022 13:44:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4041DC4FEBF;
	Fri, 28 Oct 2022 13:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964681;
	bh=pa4qRgP2TlnZgyliaD9iQA0RXiwo8Z4IYATkxJPpjoE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KbPamdSC7FSFA6KJDpgIAc93hR65jOa/vuiRpQGUpVMeRypqS0Ov0dPsBMkG0zEqa
	 HbNei4Bi1hqyKiMCJnCb7JA3z519yZQmAh1pRm7UqxMNFtseosrgpLNqalNt1xH8l/
	 vJEksxtfxuWxLPrVudS8oucczPWtNABghOx84RCnjfpUrj5mRsND7XbtEb1ybVkA7Q
	 gPFHtPFXShfq/vpOvKlh4CSZ4nTOAX1N+iq0mr9AM8/DqKd67IRkzBcDQkjnQVgSc+
	 2F+JlOctUkuj33nQmKdJZPpnuHns+drG6Td22bLk3S0AxX3GqraG8mvfUHGgntDIgG
	 LQmZ1lhOCumBw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPet-00052P-Jc; Fri, 28 Oct 2022 15:44:27 +0200
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
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 09/13] phy: qcom-qmp-usb: clean up PHY init
Date: Fri, 28 Oct 2022 15:44:03 +0200
Message-Id: <20221028134407.19300-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028134407.19300-1-johan+linaro@kernel.org>
References: <20221028134407.19300-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064445_696953_40273C36 
X-CRM114-Status: GOOD (  11.33  )
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

Clean up the PHY initialisation somewhat by programming both tx and rx
for the second lane after the first lane.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4a7b961d2965..d5e62cfd93f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2058,14 +2058,12 @@ static int qmp_usb_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_usb_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2)
-		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-
 	qmp_usb_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2)
+	if (cfg->lanes >= 2) {
+		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 		qmp_usb_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	}
 
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
