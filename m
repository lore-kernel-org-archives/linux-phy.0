Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B31C79FB1
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=el8wiArfUFx5ynCPFpBEfnQ6wszkF8w8cufLGRaUon8=; b=r/8kCSZibHSwwk
	ztXCj8I1wEDwAwAITGYbDLhG4w+NOCXY28PZUm/FLGKEvCnl8ZDnSuydi2iOFiVPid7fVIR7gshQi
	A75uAi3t3j9noXYTGG4MK7ggEuz9hRrx3Z2S9cBkwSZhThhicY5e92FYC15bQYM+qu7YxDuvOZ0bT
	k2Xve+SMPrYOT5XnyHQzwtDJz7GQNiinEwWCzQyAaiNPJ6oSoVvEPd+LY+qbvJB1z7t0wwA66Hp/X
	0DLfg/Zf2SqUTVwOFHSByfXa5YkKMGd2EhFiydVPXmu+l+MYoemCLlxSCNB/vthC0PhQDgL1J14cc
	Fgm156FKDtJD6OHzABcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKz-00000008dt6-3KFG;
	Tue, 08 Sep 2026 09:41:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drE-2d1k
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3F3C343D07;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 166B4C32781;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=+r5joPgRFCFYWXgPKNZ7DFEUDDAg9qDqy9jlkzCRojk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=KCELvOj8GCAMREoziPERLvMYVqKNKgTZFtX6n1tss91uMPDueR+/CMj9PoRWepqdj
	 ND+I13nAXygkV9cEzcl/05Md1wd5Pu2Y7OQvMHZInxu7aSfL372y+ndq7ttuO0tusx
	 YicAGdpFoNCwK17vek2KLjF6gIOq6YJlrf8jKr5TTqarlRNG97IX6YS00oiSJZvLV4
	 3Gyf1Z4jPMCiSTn7NoYg54CgwmvRfBhlFfrZKhTqV003SVR7Kq+fSaxzHrJ/yp1U0g
	 roOYxVmunMw2KjRGeZ/xGGAjHZlEaCvVTpGy6NKp89KbLsyb577sAjsZ9RREOA4ExZ
	 IdLotAimpY61A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01467C79F99;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:40:58 +0400
Subject: [PATCH v4 05/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Refactor init regs table definitions
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-5-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=2508;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=j5eDBU1/M/VWuaZnnm/rYsHj5E3f2ArUUkz0LzF/aZY=;
 b=EsNjOdFWxRh2tznRzAS6gw4JLaSQrKdA36/aIXLc4K5DTg5/I8/PQbYw+TZY4zp84nmNiE1sl
 xzsDXRNyIw8AZ+dls5TglpJU8c+Ge4pwXmush/Jznv/uNBAMCNWSuDJ
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Moussalem <george.moussalem@outlook.com>

Refactor the IPQ5018/IPQ5332 UNIPHY PCIe init data by introducing a
helper macro for register/value entries and converting open-coded struct
initializers to the compact form.

No functional change intended.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 .../phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c  | 60 +++++++---------------
 1 file changed, 19 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index 0256183fbcbd..c12de5549652 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -72,51 +72,29 @@ struct qcom_uniphy {
 	int lanes;
 };
 
+#define PHY_INIT_CFG(o, v)		\
+	{				\
+		.offset = o,		\
+		.val = v,		\
+	}
+
 static const struct qcom_uniphy_regs ipq5018_pcie_regs[] = {
-	{
-		.offset = SSCG_CTRL_REG_4,
-		.val = 0x1cb9,
-	}, {
-		.offset = SSCG_CTRL_REG_5,
-		.val = 0x023a,
-	}, {
-		.offset = SSCG_CTRL_REG_3,
-		.val = 0xd360,
-	}, {
-		.offset = SSCG_CTRL_REG_1,
-		.val = 0x1,
-	}, {
-		.offset = SSCG_CTRL_REG_2,
-		.val = 0xeb,
-	}, {
-		.offset = CDR_CTRL_REG_4,
-		.val = 0x3f9,
-	}, {
-		.offset = CDR_CTRL_REG_5,
-		.val = 0x1c9,
-	}, {
-		.offset = CDR_CTRL_REG_2,
-		.val = 0x419,
-	}, {
-		.offset = CDR_CTRL_REG_1,
-		.val = 0x200,
-	}, {
-		.offset = PCS_INTERNAL_CONTROL_2,
-		.val = 0xf101,
-	},
+	PHY_INIT_CFG(SSCG_CTRL_REG_4, 0x1cb9),
+	PHY_INIT_CFG(SSCG_CTRL_REG_5, 0x023a),
+	PHY_INIT_CFG(SSCG_CTRL_REG_3, 0xd360),
+	PHY_INIT_CFG(SSCG_CTRL_REG_1, 0x1),
+	PHY_INIT_CFG(SSCG_CTRL_REG_2, 0xeb),
+	PHY_INIT_CFG(CDR_CTRL_REG_4, 0x3f9),
+	PHY_INIT_CFG(CDR_CTRL_REG_5, 0x1c9),
+	PHY_INIT_CFG(CDR_CTRL_REG_2, 0x419),
+	PHY_INIT_CFG(CDR_CTRL_REG_1, 0x200),
+	PHY_INIT_CFG(PCS_INTERNAL_CONTROL_2, 0xf101),
 };
 
 static const struct qcom_uniphy_regs ipq5332_pcie_regs[] = {
-	{
-		.offset = PHY_CFG_PLLCFG,
-		.val = 0x30,
-	}, {
-		.offset = PHY_CFG_EIOS_DTCT_REG,
-		.val = 0x53ef,
-	}, {
-		.offset = PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME,
-		.val = 0xcf,
-	},
+	PHY_INIT_CFG(PHY_CFG_PLLCFG, 0x30),
+	PHY_INIT_CFG(PHY_CFG_EIOS_DTCT_REG, 0x53ef),
+	PHY_INIT_CFG(PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME, 0xcf),
 };
 
 static const struct qcom_uniphy_data ipq5018_pcie_data = {

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
