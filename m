Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C13DD2502E
	for <linux-phy@archiver.kernel.org>; Sun, 11 Jan 2026 08:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OgMV/s45AKUH7Hxh9wwmMunQhchdunDcqvCQCEi268M=; b=Zi2ffD+cPkplEh
	JaDG7sTcoZRpt4qvkennVdWHSyBsYgw/pl0u2S4CVJoeeaDWgvIkwYpd9xMsZaDBHqKbBpko7UX1P
	ROXNvji/JuEXVRwpV74qG/Bh98iTjgSPnvZTa6N4j+x5Y8BKdzj8ZiNcqRQSobkdA22twOAPrU04M
	mvgMieV/4zrGBi6FEe195T5bjsVvzKnnCrI5A/x2a+qr2djQzXS++aymK5vivmxlyqV/FJqa9PBnl
	Hse2v9eZ4ZAU4h93RopzVaj10XIuapGGOW8s88x6vZvjptQE8Z9h9tLHEZ3VZI3eowj9iSlG+Cb1E
	4gwLWPJRpdWubbQxDqEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veqtd-000000042IB-2h57;
	Sun, 11 Jan 2026 08:34:01 +0000
Received: from out-189.mta0.migadu.com ([2001:41d0:1004:224b::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veqta-000000042HH-088z
	for linux-phy@lists.infradead.org;
	Sun, 11 Jan 2026 08:34:00 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768120418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ux7+L8GdWa+BGmZjE13E9fDY0FV4tnAQh5DK+4QXmOI=;
	b=qoGoe48TTGICHppYaaIy9R8DzUEq+cadvlhdJQ3Fna6nOBAsyouOTIHTPIz4nAEupqOe8A
	ZxCyefoGq1D/gA089uX21uJcL2qkWGSRiT1+4iYD9w9yw7Zi2udPJ/8bCSe8FPtjzWOeGG
	Jb5pZO1DkMcufNkbvEu4g2NfAo9GcAsmRKL94ob/gkwOZzRbW0E4sLETldWvIjviYiiEe4
	f0qBjzgiOeGMEHDaXyNsC403+n0ocwxupUQun6gzX9Q6aOIVdT3y26LluRI3JSF/QMQ0Xl
	xfK8HQ/FSC+NfHZy6d19JFawgZL3UdiDzM75kFvwyMEGzNHcZxJlIamlQ+8+wA==
From: Val Packett <val@packett.cool>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Val Packett <val@packett.cool>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: qcom: edp: Fix NULL pointer dereference for phy v6 (x1e80100)
Date: Sun, 11 Jan 2026 05:25:59 -0300
Message-ID: <20260111083317.604754-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_003358_509687_88EED477 
X-CRM114-Status: UNSURE (   6.75  )
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

For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
stub implementation was added for the v4 of the hardware. However it
was omitted for the v6, causing a NULL pointer dereference oops on
Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.

Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Val Packett <val@packett.cool>
---
v2: pull R-b, reuse v4 function as suggested by Konrad
v1: https://lore.kernel.org/all/20260109045214.5983-1-val@packett.cool/

 drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 13feab99feec..7372de05a0b8 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -758,6 +758,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
 };
-- 
2.51.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
