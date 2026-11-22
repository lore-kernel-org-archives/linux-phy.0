Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96366606A682
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 15:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o6b/pp6p;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kvffzmlB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Xrsjll+MkVoDY84LxUyip56EPtbnhb/DdQ2Vm0dDO9Y=; b=o6b/pp6pRfjIGYgpO0TlajMlhP
	BzULPeUoZbv/aN18/QLGC8+JScHxr6V4FbAxUDKmUIri4dNIvimPvhg5hH6nH5MxgVvE6tVR9PUyK
	6NZgp4UmOjc0DIJjLNplkc2PmhsIZ/USHWqnGQ1PSim1+A5neggRz1bsuMMqcHyXT/hX8syAaIL1q
	ARSpR8lqw2tzC67lX4mTiNl0cR9ROIgJp+MIrtWbzO2lQuDNH5g1UlG7T8D23oUulnwuktBjKRv2o
	4CTnBy+nwkpPve3bzRwtJ+yO9v9e76sOuItQcyyJmmbxHql67a0sZAznfnML2aUI8hOMqRX+eyRh+
	9IunkAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9Uz-00000001GWg-1X0g;
	Sun, 22 Nov 2026 15:29:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9Uy-00000001GWC-2M7h
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 15:29:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F1CAD40426;
	Sun, 22 Nov 2026 15:28:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B27011F000E1;
	Sun, 22 Nov 2026 15:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795361339;
	bh=ZF89tkqws706RTsLm88jnbpkVWFxEn2BIz922AiAkF4=;
	h=From:To:Cc:Subject:Date;
	b=kvffzmlBM3UnFqMdU+V0YvxsvAAcjV+vNtBt4DlEb0BbLC0XXLOAyXXQhB6Nbg6Zm
	 52pwZ1PDRBHrjb665HPFeLgEqMfaBtaxnuwVvHY24+5y9oTLyYFT+uqkHsn7qihcxF
	 ndrYF59gcd+lSJhIQiR+7kIpDIl9rtFhBnRCrKOSE3t4wHFjB81vd/gG8QyTVkXvGj
	 KOpyq+C4nvObZtbmUW8SNPJHLBxdGsoKirb34zuZGPxbKGVvFo2chkq0/+WYO7MGjp
	 VjuXWZjHUscnT+2s4g0YlAz+x/dvyKEI5/JH4TCiv6G2KjqDZhE+5h/TIsWpkCFwBQ
	 KatUbQfk+c+5Q==
From: Sasha Levin <sashal@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qcom: uniphy-pcie-28lp: Rename the PHY type enum values
Date: Sun, 22 Nov 2026 10:28:57 -0500
Message-ID: <20261122152857.1113943-1-sashal@kernel.org>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Commit b28eecc89399 ("include: linux: phy: Add phy attribute "type" and
associated helpers") makes <linux/phy/phy.h> include <dt-bindings/phy/phy.h>,
which defines PHY_TYPE_PCIE. That clashes with the driver's own enum, and the
build fails:

  include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
  drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:127:27: error: 'PHY_TYPE_PCIE_GEN2' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
  drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:135:27: error: 'PHY_TYPE_PCIE_GEN3' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?

Give the enum values a QCOM_UNIPHY_ prefix.

Fixes: b28eecc89399 ("include: linux: phy: Add phy attribute "type" and associated helpers")
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

Against usb-next. The driver needs ARCH_QCOM and is not in arm64
defconfig.

 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
index ef8709ff0e16b..4243de46a1e07 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
@@ -44,9 +44,9 @@
 #define PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME		0x3e8
 
 enum qcom_uniphy_pcie_type {
-	PHY_TYPE_PCIE = 1,
-	PHY_TYPE_PCIE_GEN2,
-	PHY_TYPE_PCIE_GEN3,
+	QCOM_UNIPHY_PCIE = 1,
+	QCOM_UNIPHY_PCIE_GEN2,
+	QCOM_UNIPHY_PCIE_GEN3,
 };
 
 struct qcom_uniphy_pcie_regs {
@@ -124,7 +124,7 @@ static const struct qcom_uniphy_pcie_regs ipq5332_regs[] = {
 
 static const struct qcom_uniphy_pcie_data ipq5018_data = {
 	.lane_offset	= 0x800,
-	.phy_type	= PHY_TYPE_PCIE_GEN2,
+	.phy_type	= QCOM_UNIPHY_PCIE_GEN2,
 	.init_seq	= ipq5018_regs,
 	.init_seq_num	= ARRAY_SIZE(ipq5018_regs),
 	.pipe_clk_rate	= 125 * MEGA,
@@ -132,7 +132,7 @@ static const struct qcom_uniphy_pcie_data ipq5018_data = {
 
 static const struct qcom_uniphy_pcie_data ipq5332_data = {
 	.lane_offset	= 0x800,
-	.phy_type	= PHY_TYPE_PCIE_GEN3,
+	.phy_type	= QCOM_UNIPHY_PCIE_GEN3,
 	.init_seq	= ipq5332_regs,
 	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
 	.pipe_clk_rate	= 250 * MEGA,

base-commit: 8e31dedb9ad496ea7dd7064d77d6f7d459c1c90f
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
