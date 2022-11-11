Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85BFFC4321E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3+p0ykuHEM6nOKbSRHcbupIJpno9358/qslN+NmAfM=; b=Owylm4pqscdOkW
	/Ih/cXirpxh9hBGAihVC8ETf1/Avf2J4TWyWtYiPgA+HqUDyKaOu1LalWyAcydmF+BRklxb0CZgTM
	HuPLCQS/9IMbuTzyvkLgZYzacyBY1pvb2KafZlv7s7BS8IsoPPLEHDUm/iZnJStYKvEPtc+sdJPaq
	oztUlbTFWYUiUvsnnG3Z2BTGWWJrXck/xUdKU+bTmfI8nETnm/8cGfr5e52bJRYLvmuWtb/hCwmLe
	goygIPGvRdCB+ZF7anGEM2BsvqQx8BMKyzMfxhGyJ6mlkHpPG+62Gb0hkuFTZoKib0CzoAD63Beli
	sKt1h/7OLnsWGPnkbPnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWI-00EeSA-TO; Fri, 11 Nov 2022 09:40:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWE-00EeOw-Uh
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:40:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 254B0B824A7;
	Fri, 11 Nov 2022 09:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DA4CC43470;
	Fri, 11 Nov 2022 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159611;
	bh=fzA0ymuZns87NaioE1ixSH2KZM29mzl1IX77mtV6cDs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sitkBlKVGgtIsJNR1lyHOGvIiRMCRneIiBjq71QH/svgEk9wzwfJX49pFi3ONegHF
	 9cLBb04tqhtFpOVEiaFdTOWGDChiHi5UtG1hC6sigLi/p/MS0aE4BwPTejibCoQss4
	 dJRLoZQJ46A1jnBhJepK3e808i0WDXj1WvgpHd9BJV3jfeSe2KZ6iqDOOQ9erv1M33
	 dAJ/YRet+GZHf6DzkxA298YqlzUfRaVBvraodJwfNgym3ng9uaCLEab58s6KGjsdld
	 KitCxZbUFXQ2ITVRvLjfWUSXQH6uDhPxj9U4q4cnLpxwAXfRn2UOhiEnOVd9F62e28
	 e82mYSSJ2897g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQVj-0002xj-A5; Fri, 11 Nov 2022 10:39:43 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock source
Date: Fri, 11 Nov 2022 10:38:56 +0100
Message-Id: <20221111093857.11360-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111093857.11360-1-johan+linaro@kernel.org>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014015_306827_6FE1B991 
X-CRM114-Status: GOOD (  13.26  )
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

The source clock for the reference clock is not used by the PHY directly
and should not be described by the devicetree (instead this relationship
should be modelled in the clock driver).

Drop the driver management of the reference-clock source for SC8280XP.

Once the other clock drivers have been updated, the corresponding change
can be done also for the other QMP v4 platforms.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 372f9853c749..9b1f8c9d0eb8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1523,6 +1523,10 @@ static const char * const qmp_v3_phy_clk_l[] = {
 };
 
 static const char * const qmp_v4_phy_clk_l[] = {
+	"aux", "ref", "com_aux",
+};
+
+static const char * const qmp_v4_ref_phy_clk_l[] = {
 	"aux", "ref_clk_src", "ref", "com_aux",
 };
 
@@ -1729,8 +1733,8 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_pcs_tbl),
 	.pcs_usb_tbl		= sm8150_usb3_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.clk_list		= qmp_v4_ref_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1755,8 +1759,8 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8150_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.clk_list		= qmp_v4_ref_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1806,8 +1810,8 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8250_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.clk_list		= qmp_v4_ref_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1907,8 +1911,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8350_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.clk_list		= qmp_v4_ref_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
