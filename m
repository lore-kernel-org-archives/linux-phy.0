Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E20360A6F62
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XntV8Tba;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=H1bDDCTB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UW3huYMEshvfSokQeWLZjJfuZwjA8ZuSZDgr1PZET6w=; b=XntV8Tbahe9Da/zPvl6w+h5ufL
	wvo9csljG6TBV1gJKgFYEPXtjnT2mOw7gENyzouNPqGuV+Y9+ZYsZW2rNgZD9hybBGKhGO9JAzJdB
	6zBqrfPZdhftm1IieombrFK5QmPCPCPxlae7UpUUqruR3i4UopyoQMTRG/c1LpTPB2bsvB5Dqbene
	wqafBpWstxceMGshTBGnnGaDonie6h3srsUysLo5uv6y3aJhZBHBXfGreRz26OzEx31J1FDdk69tX
	nyHgEX31bHsLyJ5XlkNtw1O4eDF6Bk2FE4yA0/aby2NgMypkaOminQ78+ETqZYzKdkvkgr9kgEmY7
	DtMaztNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZc-0000000GhQ8-0FMC;
	Mon, 02 Nov 2026 13:59:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZa-0000000GhPj-2nmR
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:59:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 221EE600DC;
	Mon,  2 Nov 2026 13:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4794E1F00A18;
	Mon,  2 Nov 2026 13:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793627981;
	bh=s2SEqKfMwj/eJrBfK5943BFoWBT1hjDKhKlE5YtTfLU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=H1bDDCTBSaagvEKieiyLl0ycCd0zotTLAIm1n4Y3o4yQYdPeIkZqHXN5ob9mX1RgM
	 rs+JgfVxiAR/9ew+t+ztTDzPBg9Y4jLY7x4sw94Ez8CHaFH1WmAJSrT2pQD7beACEJ
	 eqNlj6XdyRro3JShpdL/yQyTsopo8NGob4vJui6WSoFVmRnWZjywHVftuPb/L+fWIB
	 KAHrmIsef7zZDnROu1D8v7Ez0Z2VVKoeDgQVWJuF/m0x39/OFh8EoMg1ZmshxQZ5Pn
	 knFNPR69aMf05SY9fAY3uEo3MU+QmM8a2FI7Qyj7PFyqwQwnE9hNBN4FbwmD7i7ZVa
	 rnuHV5LCJBsNg==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 02 Nov 2026 14:59:34 +0100
Subject: [PATCH 3/3] phy: qcom: qmp-combo: Use V6 offsets for PCS-AON
 clamps
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-topic-qmp_aon_clamp-v1-3-141c2cb6cdf6@oss.qualcomm.com>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793627973; l=2026;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=mDJHSwdTtjjsej/30s7NiBPFSWOzYIFb8f7eLcF6NWo=;
 b=dm/CydIW7rCy9Md1dOuy/b6Nqbly8kGBr1qFcAfYfZW5JFFK+jk3tFM6hf4oLvxO9GkRu459i
 s06GkcGpwe8CkUUqX+TP1iFofYYo9GOA5Y0jFaTYYrLuYyPV9MbGIo8
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

These V6 combo PHYs were configured with the V3 resource-offset table,
which omits their PCS-AON window. Autonomous-mode suspend therefore
cannot reach the HPG-required clamp register.

Select the existing V6 offsets for SAR2130P, SM8475, SM8550, and
SM8650.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 84b9d6f3969c..f9ab503c81ac 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2793,7 +2793,7 @@ static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v8 = {
 };
 
 static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v3,
+	.offsets		= &qmp_combo_offsets_v6,
 
 	.serdes_tbl		= sar2130p_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sar2130p_usb3_serdes_tbl),
@@ -3224,7 +3224,7 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8475_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v3,
+	.offsets		= &qmp_combo_offsets_v6,
 
 	.serdes_tbl		= sar2130p_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sar2130p_usb3_serdes_tbl),
@@ -3269,7 +3269,7 @@ static const struct qmp_phy_cfg sm8475_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v3,
+	.offsets		= &qmp_combo_offsets_v6,
 
 	.serdes_tbl		= sm8550_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
@@ -3314,7 +3314,7 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8650_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v3,
+	.offsets		= &qmp_combo_offsets_v6,
 
 	.serdes_tbl		= sm8550_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
