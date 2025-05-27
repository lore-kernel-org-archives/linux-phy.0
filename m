Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E029C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOsujCN8kgEvmPwnb2N9lY1z0Wq6BAW4XsUBen69lAA=; b=Fl5c94vzc5joBY
	AgKgVpXeYz1k88f1J+sXaQODgquKVrH5mPDI38WJXQeeXKlBW061ynAyWElCouxF+qDtZ89+WmqVu
	LLiI27pqvke81BPhBsN8er/MF4tMATFXRO+j65K9z+LoURHPqPjHvPLVozbIBrYvqg+YeETvCxAtL
	q2q9rm9Oz6t66Yrw6WE613PYLG5ljYoDeSGn7DcI+C7dMXWfAS0Xs9r0HZmM4PJW68fMEIrb0uri/
	lZjsRIRz5y/V/vEgTs7cKh3YjQsZxlk/OFGCVpA1hbYv63YuP+JCl1Pfy620g0LXGjcZP7rwf6wOn
	I8mL2fmF1o64o6piETJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16E-0000000BWZU-0EnE;
	Tue, 27 May 2025 20:40:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16B-0000000BWYY-2wqg
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1DDDF445E6;
	Tue, 27 May 2025 20:40:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 506F8C4CEED;
	Tue, 27 May 2025 20:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378435;
	bh=+kMfvsj3qW5GkjvnoS0rVhOW7WWz5446Zayh8ytLTzg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RKH0eO/y4HrwIxyEiXf8eQhkeWcCs+ieIb95F8xts5B+UpCqwTHK3kL6yn+5UkHVN
	 WPF5eeUq2mYEYj5veoD2vCxajJ+Eu+HxeaaWEjWSKwMiiwWkTQfJFfEJe/gTQuxGDD
	 SmBlqWbI+J/9vlCN+TR7SWgTUoEO/BzWTaXOWa2DXShv3K4n5UwxHYtg7lwZuLfEcK
	 UN8RJ3OHZkx0AtAm41mhFAKlInyNcv4pT8l0gGf+vDi+Los2iIjuf1zQbFZyf3p2Vq
	 uST5dQOrA/puHKb1FO3mJ2VQT20tsjhXfCv2C/Cpn4YpwDUmuE+PBiIm1DU41yFNJI
	 3UiUPuivJcp2Q==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 27 May 2025 22:40:05 +0200
Subject: [PATCH v3 3/6] phy: qcom: qmp-combo: store DP phy power state
MIME-Version: 1.0
Message-Id: <20250527-topic-4ln_dp_respin-v3-3-f9a0763ec289@oss.qualcomm.com>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=1388;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=NQKO8n4zzlkDvZmTHNCLJMlvFM/BrHDE0uxXDvRG8kM=;
 b=wjVee6C4Ago1ttdhY6xOAPs8jrJKNfslmSBZ6p1gRGU3WO3OyMhyP/Amrkx5Texh8TS/5cdug
 HjXLt8cbem9D9b52FLBjXYXs8BbysFE/kkAqby6irVdFAk2Trbgqptp
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_134035_774631_6B0B14A6 
X-CRM114-Status: UNSURE (   8.41  )
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

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d0396817f3a05c7e4baeef0de1332c3a83942a51..26480d63322b22eca9637392f888bfbe440c2a13 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1694,6 +1694,7 @@ struct qmp_combo {
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
 	unsigned int dp_init_count;
+	bool dp_powered_on;
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_hw dp_link_hw;
@@ -2913,6 +2914,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	/* Configure link rate, swing, etc. */
 	cfg->configure_dp_phy(qmp);
 
+	qmp->dp_powered_on = true;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;
@@ -2927,6 +2930,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
 	/* Assert DP PHY power down */
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
+	qmp->dp_powered_on = false;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
