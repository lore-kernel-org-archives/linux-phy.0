Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1350C54E67
	for <linux-phy@archiver.kernel.org>; Wed, 27 Mar 2024 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DNCXa6/5jUtAAWmnB5kQK9fKtdvwAYSyW5SQW2cVxc=; b=B48zCP+aDE2dwn
	iJysCjf68N1aVo2T31o0Efm6d7/iV/Q+Z1vj169f6qD9ph2PRm5Serm2oyKTrvy2N0xywqHKhC7mT
	8m9AGPuTOow8H85HK0UpJCwFzKe4nI4IwhkArnTwHQrz7rk7Q3+fZfl17RRifkJ9WXsQ7GbgHeT0l
	W40RaTlJ8EDfC4N++ORjrtWvNDPHUNcfhiiXkhcKYFWOyvuIPFqlsoEnh327MyUk56zPLKeEpNPZc
	iecxMmnTqeMJGRLf7KdbaLCbUf0yAIzZ2rZiMQJvLXFq9H4g0mm29LLfJ9MF3jtw2sSPFA8Vc5iAT
	DRD9/7LJFPjAkcEmftBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXfw-0000000AT7k-16LG;
	Wed, 27 Mar 2024 18:07:00 +0000
Received: from smtp51.i.mail.ru ([95.163.41.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXft-0000000AT2K-00jj
	for linux-phy@lists.infradead.org;
	Wed, 27 Mar 2024 18:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=wAzGoYWZyEefzk/CfNs+kioGra/NotAzdFZgUGZt4QI=; t=1711562811; x=1711652811; 
	b=XF+E1ExD1cYQlnTezzaWWbSNXnGekUV6yXBYJPmFWhQI8I6u1EsYjc2n4QPfsb6bH45vp7nTTiH
	Loirwf84YtumCpfNwxq9/jXjNbPPpxxcPo1ECo5izG8dlXbiO3qruCQN8Gnu2BK8F3kA+Cgbdeouv
	S0bXUN6eP/MkLYsPVm4=;
Received: by smtp51.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rpXfk-0000000E2q5-3KhN; Wed, 27 Mar 2024 21:06:49 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM8475 support
Date: Wed, 27 Mar 2024 21:06:42 +0300
Message-ID: <20240327180642.20146-3-danila@jiaxyga.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327180642.20146-1-danila@jiaxyga.com>
References: <20240327180642.20146-1-danila@jiaxyga.com>
MIME-Version: 1.0
Authentication-Results: smtp51.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD9D135BF24EC7C3B8467D85483E9EA2C72D4DE81C4A4EEAA95182A05F5380850407E018E00233D19F103ED270C30F246C56F6699296FBB1D8BFEB17DC202E68E3061CD1C36FF7CC69F
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE792C68BF9CD4C0E9EEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637FC59FE045852DCED8638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8FCC1F24D3E27711287CFF8390119370736FCECA83F9E0E7CCC7F00164DA146DAFE8445B8C89999728AA50765F79006370277CA7F994D7EF5389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC8C2B5EEE3591E0D35F6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947C67F1C1C3ABB44F3ABA3038C0950A5D36C8A9BA7A39EFB766D91E3A1F190DE8FDBA3038C0950A5D36D5E8D9A59859A8B605968FE12AFC105A3AA81AA40904B5D99C9F4D5AE37F343AD1F44FA8B9022EA23BBE47FD9DD3FB595F5C1EE8F4F765FC2EE5AD8F952D28FBE2021AF6380DFAD18AA50765F790063735872C767BF85DA227C277FBC8AE2E8B5D9D64F11F3A190A75ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C1DE0DAB: 0D63561A33F958A5052FD897965A51085002B1117B3ED696B026D4B528DAFB9A69995D676B7B4CBE823CB91A9FED034534781492E4B8EEAD21D4E6D365FE45D1C79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CFB2A1E6D698E158005EB6F90307662FAB6170503ED00B04057DD4EA3502D7286F9FECE8BBF8D52592F212F37558E72466CB2A1A86CAF0EB7DE5E1C781D7312E8B6BCF8D82D5D595E042BF32D1DA1046D202C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojRawEQSF5Utsl2ZsQV5oBAA==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C7394981DE6AB1E6944A41F4CC811723C208B417DAA0BAA3F9E9587B971FBB9D065B44AB2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_110657_305550_F0AAE5CA 
X-CRM114-Status: UNSURE (   8.18  )
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

Add the tables and constants for init sequences for UFS QMP phy found in
SM8475 SoC.

Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 71 +++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 590432d581f9..ddc0def0ae61 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -722,6 +722,38 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_g4_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
 };
 
+static const struct qmp_phy_init_tbl sm8475_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl sm8475_ufsphy_g4_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x0f),
+};
+
+static const struct qmp_phy_init_tbl sm8475_ufsphy_g4_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
+};
+
 static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
@@ -1346,6 +1378,42 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.regs			= ufsphy_v5_regs_layout,
 };
 
+static const struct qmp_phy_cfg sm8475_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+	.max_supported_gear	= UFS_HS_G4,
+
+	.tbls = {
+		.serdes		= sm8475_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8475_ufsphy_serdes),
+		.tx		= sm8550_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8550_ufsphy_tx),
+		.rx		= sm8550_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8550_ufsphy_rx),
+		.pcs		= sm8550_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_pcs),
+	},
+	.tbls_hs_b = {
+		.serdes		= sm8550_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
+	},
+	.tbls_hs_overlay[0] = {
+		.serdes		= sm8475_ufsphy_g4_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8475_ufsphy_g4_serdes),
+		.tx		= sm8550_ufsphy_g4_tx,
+		.tx_num		= ARRAY_SIZE(sm8550_ufsphy_g4_tx),
+		.rx		= sm8550_ufsphy_g4_rx,
+		.rx_num		= ARRAY_SIZE(sm8550_ufsphy_g4_rx),
+		.pcs		= sm8475_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8475_ufsphy_g4_pcs),
+		.max_gear	= UFS_HS_G4,
+	},
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -1941,6 +2009,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8450-qmp-ufs-phy",
 		.data = &sm8450_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8475-qmp-ufs-phy",
+		.data = &sm8475_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sm8550-qmp-ufs-phy",
 		.data = &sm8550_ufsphy_cfg,
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
