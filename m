Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F03BAD232DB
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 04:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q4KCqzr2taySAkXlGaAOI8ZqzyvkrRMhD81scxM9JBI=; b=ByR0/Vj5frJQ4n
	UbnodJSs51lKttCDqsxaZyC6Vz5x7t/WrH4VCnVz8T+tWabkwmnDySmdNuLQvYQmP+dEOmgReWIWr
	XoNTMllcrIXmI9/JY1uyuch475JPRE01WGvzJmEhHdDYyXCGS7aSEi1jDbh0gUogfykpXUUa7cIBb
	iQ0x477qIptsBpeNj3aDyXlIXhfZYqC4krzoBOjX2lofXgFJndxwo8kKARxKVQAZR0rv78xzXeH+H
	DusmEsGoy2Wvb4HUJwAhfWF5BD7Bv10PlXXjkO6m1B0M3FBl4ftCsICx4wowj+KumcU2QNTeOlIVG
	eTsd0LuaiNQviX/dIyBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve4Uc-00000001M3k-24Lg;
	Fri, 09 Jan 2026 04:52:58 +0000
Received: from out-179.mta0.migadu.com ([2001:41d0:1004:224b::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve4UY-00000001M1k-45GX
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 04:52:56 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1767934369;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0sT/VZ1CSwla233JrqBYhiBuZRpeUu4pgJTS5UY//NI=;
	b=QsQyL8jzlaFe6wLdYzHyHRY39UomvJmyvsHYEWLwjdra/NwAJqUiO/UC0z3PGy0vjwVOR3
	oq7Q3AmJQ78j4uDAR1uESizPzWtmhwW3fZuvLAxApF/kSnERyHbye8y5//r6cvlWbZbJgZ
	4fSwjcNKTtVHMmQRIz8LLYMxpfRYGQtpGiEFn2WKqW8Z7tl5CFEVj8o4tgkcERCupFj9s5
	3mHS+XoXrgApF2oECi6pVJPbNGNB1ANGsv3tThCo/6ppu/brV3zqRPQCXNXjUudjzK1SBg
	43UOv5wt418MBZJm/IUT/Q+ThG/H2QeRPVcYVO247/ZA17zI4hDZyPenaKRqCA==
From: Val Packett <val@packett.cool>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qcom: edp: Fix NULL pointer dereference for phy v6 (x1e80100)
Date: Fri,  9 Jan 2026 01:50:28 -0300
Message-ID: <20260109045214.5983-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_205255_399489_AB1C5405 
X-CRM114-Status: UNSURE (   7.55  )
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
Signed-off-by: Val Packett <val@packett.cool>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 13feab99feec..a17492db21d8 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -613,6 +613,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v6(const struct qcom_edp *edp)
 				     val, val & BIT(0), 500, 10000);
 }
 
+static int qcom_edp_com_clk_fwd_cfg_v6(const struct qcom_edp *edp)
+{
+	return 0;
+}
+
 static int qcom_edp_com_bias_en_clkbuflr_v6(const struct qcom_edp *edp)
 {
 	/* Turn on BIAS current for PHY/PLL */
@@ -758,6 +763,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v6,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
 };
-- 
2.51.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
