Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C2FC87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 16:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3kFLsRHzc+FnUDI4hvEEuGnb+dXQT88q1+bla1aJ5o=; b=eLGTL+ff8rpLhQ
	Y0kREbeiBo9EE0e2KVvptKo6wQz+IBwdyag6dHgJMErqFjX9HzD2nxqslB4KYoARSFHUDd2WaAnhL
	GoXloQ9mktfZwO+/arOvYbQECykLn/4n+isZyQ99Tm11Nm6o0uVyruNFHlDwF1Tq9UINfniUMIrVR
	SW8jDgGipPLRjw1p/0VZIIMcjb2gFBfLr2nV0Hx724aan1kTF3EwEkbhKub0q4xGH5GwjbhiiYKvX
	7AS8UiIjd4sMWTyYCGXLyD7L1Vejqg0ljd8dx+EmFS+wedrLzwVGbneszHeQelb8tTTI/jn70I6n9
	o+iKskgb3UWL/TEeLwpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yk-000000019z5-1mRF;
	Thu, 07 Aug 2025 16:33:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yi-000000019xr-2Hhd
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 16:33:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EF0A35C57CA;
	Thu,  7 Aug 2025 16:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ED5FC4CEF7;
	Thu,  7 Aug 2025 16:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584419;
	bh=jvWzq/jhwmzxUOYWJiEWx1AbYjz8lwwJJyycnQyUSE0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dBHrxj0NsrkSB4c4DT9Im33s/MGvLORvJm5GYeSnSSeAJYY7HRr8T6pWdiFRJm5Kb
	 An16m++E8vMn6FIvlfJYZaYyWnWTTBieNOVAmcUOJsDjwG+SxaXjWRT8c6lt+7efZY
	 zZ26F8DSDmcEHjohE3RZT+1dIboO6a56AL8Gw2WSdVR/TBuuao9vufBaJtXJ8CswMX
	 FxfRNINjshIqR3dapAvT8lJCHMU3EXzdfc+glY0NgLS5TPFupbnm+EwjPHtvjtOdy+
	 o76EYd1VnOD7+qRRxfIve/RwRATI20ru6+wShwwghF1QGwUe193chpf0nxIKSb2BC2
	 TvyPP6KduFImQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 07 Aug 2025 18:33:21 +0200
Subject: [PATCH v4 3/6] phy: qcom: qmp-combo: store DP phy power state
MIME-Version: 1.0
Message-Id: <20250807-topic-4ln_dp_respin-v4-3-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754584403; l=1451;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=+D+J82kl0yf0XLZMz4TAWGQQKkf7pfXxbzQ3gQGkHyA=;
 b=AU+OQLFF8A1GAcGZDKFR80JBuuir7Yo8Y7YbSR24jYhoa5Ct/EOHXPKl7tZ4tZnN7PcI4lNWe
 /2aPdOIO1LoCzcbu6SFfvnLDJcWMeL31lBdEPxhQKhKeBMZ/lEeWZO8
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_093340_629978_280B3E39 
X-CRM114-Status: UNSURE (   8.68  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Switching the PHY Mode requires the DisplayPort PHY to be powered off,
keep track of the DisplayPort phy power state.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 30749943f66280c3aa9e9673466f6f736d1adbc8..8395035754975808ee1b5b9c48d046a719e79e60 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1853,6 +1853,7 @@ struct qmp_combo {
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
 	unsigned int dp_init_count;
+	bool dp_powered_on;
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_hw dp_link_hw;
@@ -3133,6 +3134,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	/* Configure link rate, swing, etc. */
 	cfg->configure_dp_phy(qmp);
 
+	qmp->dp_powered_on = true;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;
@@ -3147,6 +3150,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
 	/* Assert DP PHY power down */
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
+	qmp->dp_powered_on = false;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
