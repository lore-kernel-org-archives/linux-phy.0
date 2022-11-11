Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9083FC4167B
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0O1xS+udzS07EMU6MBUtfHSPwdkGHrqyiwPZXNk7rPs=; b=ft3o4Kj4PX7FHl
	2PiXH9lNQ8Tpr7dhyWd/XcaoJDeqOcqJZZFpWv8bNxEH2mlI6zBNUzVfcjGq72hr7a9YGguw4WNXL
	dAH4hVaoTlr1D20D5kFncEfyURNtajUI/ef1WSHq6m1gbQf/GSOdIUNJPeqRlmFHgzrezg19Yulmd
	Kgf072cp8iXW8XfolH9BBVqdc6EpnpV5OIwhexBABjP1iQlIoINc6z1XXGE41n5Hh1Kkh8vc0wQoP
	zbgbNCv2tzUxwu8gaVj0lAmCK7hrIZonGmYj8yBp8x2nvrlu8AhQMyo7glblobW0f+tJkh4R3o780
	RH17H7VCcVB/fFvIgNJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPrA-00EPv2-QV; Fri, 11 Nov 2022 08:57:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqp-00EPZg-Fi
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C23D361EFD;
	Fri, 11 Nov 2022 08:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC652C4FF0D;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=2e1sFaescafNae6TCenVsXtXuc6P0oDVvqweiOwbJuc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AJF31Wlts6vDFKHbmP8+/NrGyWGC1rKSlhmvQUsixCS/uRKYFBu8jL4h6v1R3XqG3
	 JHAj3Dc+avslOLqKyqKr8DED6FKmSQa0fsN/03KLaXK4kKoHCoOsxIUc2rF9nRCOBz
	 b0V0yyBepzAjkh0fCEOiTtrvb3LuWxiH7totaznXzdYu7Sy+kj6THycudS5m7J9rZq
	 BRG65UWIdt1IPYqE9FfLmHlKNvDhzkV0uki7Wvhngn+PScmF6SwXBuyoWyXopMMIFQ
	 OI5sK9KZagFrFyio9XER/dUT10gp0jB0bnLvmvhJc97oahjzsZEdukoX9b0A5rngKP
	 UXHSFtzKE9UYw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqK-0002UU-3W; Fri, 11 Nov 2022 09:56:56 +0100
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
Subject: [PATCH 15/22] phy: qcom-qmp-combo: rename sc8280xp config
Date: Fri, 11 Nov 2022 09:56:36 +0100
Message-Id: <20221111085643.9478-16-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005727_679233_30D5EA4E 
X-CRM114-Status: GOOD (  11.91  )
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

In preparation for merging the USB and DP configurations, drop the
"combo" infix from the SC8280XP combined configuration for consistency
with the other platforms.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c01cedda221c..499368e19e00 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1228,7 +1228,7 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
 };
 
-static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_combo_cfg = {
+static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_cfg = {
 	.usb_cfg		= &sc8280xp_usb43dp_usb_cfg,
 	.dp_cfg			= &sc8280xp_usb43dp_dp_cfg,
 };
@@ -2858,7 +2858,7 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 	},
 	{
 		.compatible = "qcom,sc8280xp-qmp-usb43dp-phy",
-		.data = &sc8280xp_usb43dpphy_combo_cfg,
+		.data = &sc8280xp_usb43dpphy_cfg,
 	},
 	{
 		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
