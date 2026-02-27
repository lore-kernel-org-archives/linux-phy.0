Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65E1EFEFB45
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 12:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9gjRT73TmFROqp3+es4fdkHneMvVRZyCLQbDoqyv5jo=; b=YCaupEBBC0jDND
	9a6LR00J6AK40o4YH9fupOeIrdKjoiAJUyXWzF9PDLxQctgpBN2+gRHsa3SUiR0Lucn0UV2ptYD9r
	rdTfK2gCDy2Iv7mvEGOxvSIiAFpO4b1nZ4NdRy42C1AXZPEX7RmSncPDRu4Sf7qQRAWhxxPNWXt7m
	4zK90EYaIR1quiR1Oc6IfO4FVwtvu8m0TYiu3/UEtfyI4OjyknJVMCvYKvJ7UGhM2RH/Jy1pZryC8
	ufkBeZYOwyX3sHTqRvHwcuu82Qn+KOCk6NCWq8uBaDqIJEo27L0wJyclI55lySXNoL3XfqJ7aWpkm
	ndC6oYXVhsN1Bchnf9Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvwkf-00000008K3T-4647;
	Fri, 27 Feb 2026 12:15:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvwkf-00000008K3M-0woU
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 12:15:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4CFC160008;
	Fri, 27 Feb 2026 12:15:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F08B1C19423;
	Fri, 27 Feb 2026 12:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772194524;
	bh=Kp/6lkWbg3O04fl0koFZL8KFMxktWU6gMmkhxXzux6U=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=YzRcRPEmYbgc0xEA0PyVUlSvKcSzylZ2Q/A7O/CGzctO2axQYsDpcWJsVd9FZMWOJ
	 BpiwMehlBHjBB420Xnchs8/LbxxcCwoYwy+ZMauxNVZdofc7d6aBupaLgAy439Nboq
	 vbHuT99niIyN/bTgeC5qx8Ms1TjmJOwzOQfYFuEaLNRmbrH3i2uQPHXbDaUqs+ZHDa
	 mbCeRX3f1erj/8KXutwtMbpDIqopJSErbzebJM4DPuPoE/QPFeNffQt9jLfb/p7Sv9
	 kJfsUxMWdaL8zdfmC6DjlnXqVA0UubyE055hI5jkwj6Q/ai8aPISpd8XvcJOPyKawe
	 CLnOelGd1t5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26E1FEFB45;
	Fri, 27 Feb 2026 12:15:23 +0000 (UTC)
From: Xiangxu Yin via B4 Relay <devnull+xiangxu.yin.oss.qualcomm.com@kernel.org>
Date: Fri, 27 Feb 2026 20:15:01 +0800
Subject: [PATCH] phy: qcom: qmp-usbc: Fix out-of-bounds array access in dp
 swing config
MIME-Version: 1.0
Message-Id: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMWKoWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyNz3dzE4pLUIl2LJEsTi2RTM2Pj1EQloOKCotS0zAqwQdGxtbUAVve
 n8lgAAAA=
X-Change-ID: 20260227-master-8b948c5633ea
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com, 
 yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com, 
 tingwei.zhang@oss.qualcomm.com, Konrad Dybcio <konradybcio@kernel.org>, 
 Dan Carpenter <dan.carpenter@linaro.org>, 
 Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772194522; l=1203;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=pdrpH5cTTs+ijKgI12OITbrW3X2fkvMKZRJEqz9UHyo=;
 b=MCp8ELqBe4xNj0zEqPVDUDfiJUGcLcxa4ZPNWTAC7dcq0ZgPqU1gJXVl+HmIE/g0m5C0W/gzt
 r50BRSiilyaCI5SXfWmUohtIIHvcugL/WhmjrgXKfLe54Ft6bn1VKJH
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Endpoint-Received: by B4 Relay for xiangxu.yin@oss.qualcomm.com/20241125
 with auth_id=542
X-Original-From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
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
Reply-To: xiangxu.yin@oss.qualcomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>

swing_tbl and pre_emphasis_tbl are 4x4 arrays (valid indices 0-3), but
the boundary check uses "> 4" instead of ">= 4", allowing index 4 to
cause an out-of-bounds access.

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Fixes: 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config and DP mode support")
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 14feb77789b3..0dd7000614f4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -794,7 +794,7 @@ static int qmp_v2_configure_dp_swing(struct qmp_usbc *qmp)
 		p_level = max(p_level, dp_opts->pre[i]);
 	}
 
-	if (v_level > 4 || p_level > 4) {
+	if (v_level >= 4 || p_level >= 4) {
 		dev_err(qmp->dev, "Invalid v(%d) | p(%d) level)\n",
 			v_level, p_level);
 		return -EINVAL;

---
base-commit: 7d6661873f6b54c75195780a40d66bad3d482d8f
change-id: 20260227-master-8b948c5633ea

Best regards,
-- 
Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
