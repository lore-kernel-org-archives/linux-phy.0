Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF7A606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Cl6Ki+zr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ZZZ5wkF7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=E+aBScpCd8CyafgIuZCFpMRPm2vssvaQBHZ4YGqJEnA=; b=Cl6Ki+zroRSnpHOHoE8n13gwaU
	gUns1JvfknjSG8dE5rpTx5M9m5abrUqE2MrJs0F18YIZzEvTITcQQ7CxXhFK0taa75kkVOEmx3+ka
	4HV61aBbwWCfRfwlvXu58Yz3DJ2r97AgDe0CCTmi2q5MV3r3GreFw4BnrvqPBqNXFeMOXGNzxCyOk
	9pcWkRU1lhf+VIsFS864MkpnM5R3s0Tg8GZ+/E3ZvGv4BKrzpeA+nKRGzrto5LhBTCNMo0wdXmNB1
	FjoDwh7HdVm/FXqyVxPTZ9VwT3WrcyxYqUo6Pr/tfx1vRz26BzXdT9uIagVxDR/7CbXiptWBhI+1K
	ukCFX5dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVoFY-00000006HcJ-1vEE;
	Tue, 24 Nov 2026 10:59:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVoFX-00000006HcC-0mdM
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 10:59:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4AFDB605F9;
	Tue, 24 Nov 2026 10:59:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 679511F000D0;
	Tue, 24 Nov 2026 10:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795517985;
	bh=N6uRvXXdbzOgrjlg7A6t0V38H3wfSpwMq99VV1NJOwo=;
	h=From:To:Cc:Subject:Date;
	b=ZZZ5wkF7Y+r0J83uaENM5lJ6oQAKF/X3KqHuNs4rPvT5Q8nH7EOvpL4uEZVjANp+4
	 onF9cQvlzDs/E7W88ZzLd/B1HP9p5+5AxuhkRrYHweJ0u1mTN5l+PRAwyB4RnrJiiH
	 Wb59aCcHoj4ycg6ssLOX8r5+GOd3J3fXIdlVLC+lbQLIKfqRfHSpbA2xp5fOb4pssd
	 H16eFyWkrMDKaXvgTZxLy7mhn88Ao65ItIIKnawtTUiw4NyG8A8rbJm/aiqZYBscpk
	 n6mIgPQ6Tn6w2c27o+MphiQ2ocyppS180BXxpHFWmyMXUm8fUtJhQ/nKHnIH791s06
	 6dPrf92RpGVdQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kees Cook <kees+treewide@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qcom-uniphy: avoid build failure from duplicate PHY_TYPE_PCIE
Date: Tue, 24 Nov 2026 11:59:17 +0100
Message-ID: <20261124105939.1440586-1-arnd@kernel.org>
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

From: Arnd Bergmann <arnd@arndb.de>

Both the DT-binding and the driver define a PHY_TYPE_PCIE constant,
which clashes at compile time:

In file included from include/linux/phy/phy.h:25,
                 from drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:15:
include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
   15 | #define PHY_TYPE_PCIE           2
      |                                 ^
drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: note: in expansion of macro 'PHY_TYPE_PCIE'
   47 |         PHY_TYPE_PCIE = 1,
      |         ^~~~~~~~~~~~~
drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:127:27: error: 'PHY_TYPE_PCIE_GEN2' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
  127 |         .phy_type       = PHY_TYPE_PCIE_GEN2,
      |                           ^~~~~~~~~~~~~~~~~~
      |                           PHY_TYPE_PCIE
drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:135:27: error: 'PHY_TYPE_PCIE_GEN3' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
  135 |         .phy_type       = PHY_TYPE_PCIE_GEN3,
      |                           ^~~~~~~~~~~~~~~~~~
      |                           PHY_TYPE_PCIE

Nothing uses the definition in the driver, so just remove it.

Fixes: b28eecc89399 ("include: linux: phy: Add phy attribute "type" and associated helpers")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
index ef8709ff0e16..499ff3ce3b28 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
@@ -43,12 +43,6 @@
 #define PHY_CFG_EIOS_DTCT_REG			0x3e4
 #define PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME		0x3e8
 
-enum qcom_uniphy_pcie_type {
-	PHY_TYPE_PCIE = 1,
-	PHY_TYPE_PCIE_GEN2,
-	PHY_TYPE_PCIE_GEN3,
-};
-
 struct qcom_uniphy_pcie_regs {
 	u32 offset;
 	u32 val;
@@ -56,7 +50,6 @@ struct qcom_uniphy_pcie_regs {
 
 struct qcom_uniphy_pcie_data {
 	int lane_offset; /* offset between the lane register bases */
-	u32 phy_type;
 	const struct qcom_uniphy_pcie_regs *init_seq;
 	u32 init_seq_num;
 	u32 pipe_clk_rate;
@@ -124,7 +117,6 @@ static const struct qcom_uniphy_pcie_regs ipq5332_regs[] = {
 
 static const struct qcom_uniphy_pcie_data ipq5018_data = {
 	.lane_offset	= 0x800,
-	.phy_type	= PHY_TYPE_PCIE_GEN2,
 	.init_seq	= ipq5018_regs,
 	.init_seq_num	= ARRAY_SIZE(ipq5018_regs),
 	.pipe_clk_rate	= 125 * MEGA,
@@ -132,7 +124,6 @@ static const struct qcom_uniphy_pcie_data ipq5018_data = {
 
 static const struct qcom_uniphy_pcie_data ipq5332_data = {
 	.lane_offset	= 0x800,
-	.phy_type	= PHY_TYPE_PCIE_GEN3,
 	.init_seq	= ipq5332_regs,
 	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
 	.pipe_clk_rate	= 250 * MEGA,
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
