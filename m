Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6140AC64EC4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 17:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z79t43FULFbTGZOe51spVXfQryr9H3WfTGMkMfW5o0I=; b=NheunohIah8Htf
	66qG6ucoup4pcnC1H7Tt/kuxh3d7AHwWYFZqba5ozaEi+AFLICI5qjHoeBhBoc368Wo33qHZzMD+3
	x6lu6j7XpnQrrl8bG3Lp7pySEsvXH0rE3wjEKU2rDDgFG53/MLkaLIbVf81DyPZj+nB+si3caCNeW
	QECFMIRpq+Ik74tW+iep43kQm9giP7mHHWW0uaDhu/0O/Tct83flHcoWcfGIauhSiL7uII+CSVjsB
	nTQUJcORKOopJlAoO0oNnNd/r41WnXdZNbt4BHmhhTxHXzmq8zSTSFajhhrscqGK00O+abn2ifk5A
	VVVeNzv6yfOM5v13umcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEKg-00E3qe-Po; Mon, 06 Mar 2023 17:09:06 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEKa-00E3pW-7q
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 17:09:06 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVlRG5Vhkz1S5KC
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 12:08:58 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1678122537;
	 x=1678986538; bh=XBMOf7rDZmk1/gq6Hnv29VSjIdHlkH5Ie/sn9RbtUDE=; b=
	SBLHlIZHp18TF8XEMfqxRVYUtBJ8qLg3S1zwWYUHk3/1VlWgP5VBKUhx2FOcNObe
	NKPSq0pEBnqPVpEu5hfCaNZskZ9huTSWKm2nE6PbIkK5H9r6GoTV8nttG5Z1k/W8
	vU2/KUzNaTASQ48/WQMRavNv6QfFgC5ytJt2hLqG+Msx1kpjDOcAY8AXTnPFoa/E
	I81JWFq9fu7PjXv+TugiI5IBF27GhPX1w6VIBdK8dp0gDZjDclyF1P5nfeyVcaA1
	i2XNs34AUdH0JpxREVX5t+j1+FEvws+YP93uj4NdXoz5QREYVqIpJ45Z6mQalNnQ
	AL4udljajE26cFNUKTS85w==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id SrQ6Vbepuzrx for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 12:08:57 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVlR46j1Tz1S5Jl;
	Mon,  6 Mar 2023 12:08:48 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	keescook@chromium.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org,
	Lux Aliaga <they@mint.lgbt>
Subject: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Date: Mon,  6 Mar 2023 14:08:13 -0300
Message-Id: <20230306170817.3806-4-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306170817.3806-1-they@mint.lgbt>
References: <20230306170817.3806-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_090903_821924_66A8585A 
X-CRM114-Status: UNSURE (   9.09  )
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

The SM6125 UFS PHY is compatible with the one from SM6115. Add a
compatible for it and modify the config from SM6115 to make them
compatible with the SC8280XP binding

Signed-off-by: Lux Aliaga <they@mint.lgbt>
Reviewed-by: Martin Botka <martin.botka@somainline.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 318eea35b972..44c29fdfc551 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -620,6 +620,13 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_ufs_offsets qmp_ufs_offsets_v3_660 = {
+	.serdes		= 0,
+	.pcs		= 0xc00,
+	.tx		= 0x400,
+	.rx		= 0x600,
+};
+
 static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0xc00,
@@ -693,6 +700,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_ufs_offsets_v3_660,
+
 	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
 	.tx_tbl			= sm6115_ufsphy_tx_tbl,
@@ -1172,6 +1181,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm6115-qmp-ufs-phy",
 		.data = &sm6115_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm6125-qmp-ufs-phy",
+		.data = &sm6115_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sm6350-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
