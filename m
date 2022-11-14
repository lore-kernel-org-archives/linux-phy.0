Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 935BBC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUN4F6ZtfcQOP3yb40DnykBG32OAR8vEIrDyCYPG5y0=; b=s+wsz67HpdmGuo
	Rh9l+nRjADC7MtSI4hilIQCbyNGLJDB5E1HFA8I10AAUeJiorcVGtXKvUoUDH7E/Y7o264KYwzSih
	08tx5/E+6fjYt+AIWQD5Ygi0ZizWDi12QzQemr2dogbz6iHJoIdI+jD4pG0pNvPDfrPjow542Qo+x
	vxhzXZqICbPzKI32BU6VS5Ldrm1KrIf+0C9SN3+q3DSuFEgSGwWQLB9E86v0yZlNVoD3m4/KVD+wS
	LL6WrilJa30+mpiB46DKrZGyfFv+1UvCfA2gzTOXYRCsjJxpVlyxyTB8kbrPqeHy6Y079j8aCtXxs
	TQnyKPQqrHD2S/0e2C8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJR-000D5V-Pi; Mon, 14 Nov 2022 11:07:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ8-000Co0-7T
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 39009B80DE9;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7137C433D7;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424033;
	bh=O+BuwvcIR1ujubiKjZ/hxdoHFbephL6Vp4d7nMoXnMs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fsxDH8/WBWMXgYvDtlaGRmWS0oUfSyaZ25aI6Rb8PJLSqlGYnomEyiS5IczRsoucY
	 G7dQYA03WEbJ8q8FlmFBtod/QoomYnopNUY+IOuQCz7LHHX4MoEtJRMAbzyo/Zu+ZC
	 R1za8qhAurayOJFfE1zf4i2Dp34Qj52B5j7NV0kzOvUePRhNRtborEYW8Xiiwqf+zH
	 Zad7n5XvweHBrD/Rfp5/MQQ2qQgy6fvdGJaAZe83Rai3sOR3UGt6n+5yi0aGTs8rNV
	 vkt/vlTKVWexmlknaUJZIgbotEaFkhaSVF7a/R7YhTmPqHyeKu8P9kZb+HRkaC+wsL
	 Cb5CPwUQy6ljQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Eb-5l; Mon, 14 Nov 2022 12:06:42 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 05/22] phy: qcom-qmp-combo: drop unused DP PHY mode op
Date: Mon, 14 Nov 2022 12:06:04 +0100
Message-Id: <20221114110621.4639-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030718_511055_5C661391 
X-CRM114-Status: GOOD (  11.01  )
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

The set-mode operation is currently only used by the USB part of the
PHY so drop the corresponding callback from the DP PHY ops.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 13800c2243e1..cec487560fd7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2132,7 +2132,6 @@ static const struct phy_ops qmp_combo_dp_phy_ops = {
 	.calibrate	= qcom_qmp_dp_phy_calibrate,
 	.power_off	= qmp_combo_power_off,
 	.exit		= qmp_combo_exit,
-	.set_mode	= qmp_combo_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
