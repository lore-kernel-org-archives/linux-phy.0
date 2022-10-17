Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CD11C43219
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhZCqYjTmKNjEJmkDVzbUOho3RpZiqUHq+hKbsFjSbg=; b=CEL7SRqxGP4YLi
	x2qnRc4ibB4XThsexFFout4MZZeNd08ii7eQk2RzH3a4S4FFpN6lLGc+61LghE/QpQEGuzUwK093F
	Tigs9jS3ZfHfxvsWVz1t0V1/6siEhAkZ7xosq+Tfzd5q8LktNMLELa9uv3oL04ob1VjpjLmAORDgG
	9WYjMJpqun8f7raX9/VA0Tr9U2hFkoUzRQx2kJY1Ju7zNIZT/h6fDVyzQmwVfpJeanP5W6UqT+L2J
	cTQbaWAUqKjC4gLOLdaRTd1R+RLEsWSYcB+X8GNcX9sftr26Us1bjpxTAtXwXPOSprTPMjA3vp9D9
	3jue2eTcDuDX5YV7Jynw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxa-00899v-DW; Mon, 17 Oct 2022 06:50:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxU-00890r-Pa
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:50:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E3E3060F68;
	Mon, 17 Oct 2022 06:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39FBCC4315F;
	Mon, 17 Oct 2022 06:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989441;
	bh=7LiW5IgqW3n+57I2wMozVoRVMIRb4PGmwDMVU0MIa2o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Aj9eHr5LP5XG1yfpEpD47AM0Y0l1ZAlA6GQY5e+lfA5eJDfrOATAcCBzs6vQqyBJl
	 AiVr+r1rGQLOCsEvL+etVPcjNjLFcC+fMMbBEE1u47MEyi6cosGzLHgykNbDzB9ie9
	 CMZ8ipq8knQvw5ezFz5hPxboAk6Y9JT9uk3EKhzaj9JFt+zTOit6RTH/C8eVRwM29l
	 t+uaIQDpufZhMvYVR2BLWBzFoyqmORve5bCMuWQbVTgYqEcmYWW2Gh81JmcJl/1i5z
	 5gXZ1fjMxcm892/kguunKB77s8OGeu7ZsSM6SgRMK3V8BIuoctIe7icKwZeryenqJa
	 VKgQLaoGY4iUw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okJxH-00057v-1b; Mon, 17 Oct 2022 08:50:31 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 10/11] phy: qcom-qmp-pcie: clean up clock lists
Date: Mon, 17 Oct 2022 08:50:12 +0200
Message-Id: <20221017065013.19647-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017065013.19647-1-johan+linaro@kernel.org>
References: <20221017065013.19647-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_235044_908555_42B54818 
X-CRM114-Status: GOOD (  10.19  )
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

Keep the clock lists together and sorted by symbol name.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b42c5e185228..cb2128e5a78d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1462,6 +1462,10 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
+static const char * const ipq8074_pciephy_clk_l[] = {
+	"aux", "cfg_ahb",
+};
+
 static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
 };
@@ -1476,10 +1480,6 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
-static const char * const ipq8074_pciephy_clk_l[] = {
-	"aux", "cfg_ahb",
-};
-
 /* list of resets */
 static const char * const ipq8074_pciephy_reset_l[] = {
 	"phy", "common",
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
