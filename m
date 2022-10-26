Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20BD0C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 16:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0diIGS6i291MVPZQ+OwD+TPFnZp6hK9Sn+p4WtG3ekA=; b=wKNmuDDg3unu88
	XxOxfRO5zFLOnCGdRcoLnEuPtzP0aHvzBV5iyl+fet0tmwScj/hGVJEM9Rvf3DlgGZP2OF14rBy4g
	HM2eHulGNGkiZZ7Lg6dHYSo+nUaW9XybGRUmSbzmuOGYvTAKhdemhTZs/8LE325XabBrZkWpgghxg
	RS21LSGQAlFVDo6Y88E/WgrHjGM50I/J9IKEZEK5uXjUsbl5RNxDJqVSbilknkyaGTVzl1Dm2GLu6
	XcohSEGrfu3t9mePpSjbh9gMkPBXhyavigN/G3On9emokZYRCfYU3ioI1I1zxJdfTXBRIpZQVB1p7
	DPM+Zw8WcgwdXcJNUfEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onjBM-00AACX-IQ; Wed, 26 Oct 2022 16:23:08 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onjBK-00AAB4-5o
	for linux-phy@lists.infradead.org; Wed, 26 Oct 2022 16:23:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1DC1AB8236B;
	Wed, 26 Oct 2022 16:23:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F73C433D7;
	Wed, 26 Oct 2022 16:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666801381;
	bh=NoVmt4lw5dBehEnWuBhKo9Ma1EMADExTiZUi93ce3vQ=;
	h=From:To:Cc:Subject:Date:From;
	b=SRvZW8S3ytnUt5NLSB1BE547CW9CDCQyuLxToUfMqYCN5q09KoXQn48p6awu7QmoL
	 NsRZU9+Epy1tIRPtOIBinq4F440RQ5KxYMR+WFj4U5QRkjp2w6YuAWlgzW9M0nF+h7
	 62eYv3oTWUtbRyHcft24m7SILOPH1P+Q3iNxIpLoXIIPPcgJvXgZoK0onnWE776W1z
	 4KL/ACSIxynSLN2Ky8+yFPMjQk4myP8qVtwtrjFDPfccdAlZG5u8sleSQTJh33ysWP
	 OIJCZUJmPzWkynXZOAuvbVhUAB4MAmpguX0I9nmfvM0FSt6eAsjMlkcnJDnTJgJsoB
	 8LOEaZ00+smOg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1onjAz-0006uI-DF; Wed, 26 Oct 2022 18:22:45 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH] phy: qcom-qmp-combo: fix NULL-deref on runtime resume
Date: Wed, 26 Oct 2022 18:21:16 +0200
Message-Id: <20221026162116.26462-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_092306_370841_830F40B5 
X-CRM114-Status: GOOD (  13.61  )
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

Commit fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate
PCS_USB region") started treating the PCS_USB registers as potentially
separate from the PCS registers but used the wrong base when no PCS_USB
offset has been provided.

Fix the PCS_USB base used at runtime resume to prevent dereferencing a
NULL pointer on platforms that do not provide a PCS_USB offset (e.g.
SC7180).

Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
Cc: stable@vger.kernel.org	# 5.20
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f6328434c61e..ad6a0fd7ba8e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2144,7 +2144,7 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_phy *qphy)
 static void qmp_combo_disable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs_usb;
+	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
 	void __iomem *pcs_misc = qphy->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
