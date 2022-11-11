Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E022C43217
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgtZYJGfPEGA1eeFzDVGeozNjq6ePGrLNgeHiv1ZmK4=; b=1nAS8JzprJOru3
	wHQP+SKSb/4NJGdjZ/D006nPwky6zu96AGB5H3yp3JWwsytCXayZKja8nsdKBckV1/6ZKPmymnXYY
	q1gzbS/1FmKNnGwTXOXeCmnl1z1n3HGYAgMCF4dvVOi9hRXaMwz9Gr2GzhOxlISLlQ51Vbo8M7XJo
	W6KaY4/F/nLTaEF/4k/+bYsTJJQGfJYwLVmqz/MaaYCUPDIiW+aluwODL9jIw2GDCID/z3cO75WyJ
	U5R1OmY7T3M0Y89tGVQ/JNWccnMFCLXZ+b20Xv3Tpoj4NE0UG5HJ2IAn0KRkJavj1/Nk6Y94L/7L8
	Gx8RoUZc/ITupjwBD9/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr6-00EPp5-AN; Fri, 11 Nov 2022 08:57:44 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqo-00EPWp-IE
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 27DDAB82480;
	Fri, 11 Nov 2022 08:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E053C4314E;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=i+5rmFasy+HGgD2rie4c9TgbQa/4v2XZWs6Frs5NDiI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bRtsd4n+QyCas2kMMqxpJoyNk8OATXZQVT6PZJQKixJX+627i3conExRA9/Kh+9Py
	 gxpvPDdz5XXy368p3ZzkwI5tJ2kuagtne2wThvBboFGV7P93aAfwzHpb9LC4+nSrHo
	 2raRnE1QUXSfMnrQnVjwmMK8UXWv3mk23HwhVC6LBkr44zykaPR1qmHmqfZ9268D5A
	 Jn6IizBfnuMOzA+G9hU5RAeFXKEDH+FDzGCisAv2Tee95x4k47vUm8eMdkoF6y4jHL
	 pJ7TiIe1CGRbBZAWCkOUqxWqh+7r3vdshWVgmJs+EdjSM8Zdf9enPO8mMtioUtb2HF
	 tpBbJrzb4ic/w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002U2-9i; Fri, 11 Nov 2022 09:56:55 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 06/22] phy: qcom-qmp-combo: rename USB PHY ops
Date: Fri, 11 Nov 2022 09:56:27 +0100
Message-Id: <20221111085643.9478-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005726_878477_0F240172 
X-CRM114-Status: GOOD (  11.43  )
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

Add a "usb" infix to the USB PHY operation functions and name them
after the corresponding operations (e.g. "init" rather than "enable").

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cec487560fd7..bf0874d22d91 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2084,7 +2084,7 @@ static int qmp_combo_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_combo_enable(struct phy *phy)
+static int qmp_combo_usb_init(struct phy *phy)
 {
 	int ret;
 
@@ -2099,7 +2099,7 @@ static int qmp_combo_enable(struct phy *phy)
 	return ret;
 }
 
-static int qmp_combo_disable(struct phy *phy)
+static int qmp_combo_usb_exit(struct phy *phy)
 {
 	int ret;
 
@@ -2109,7 +2109,7 @@ static int qmp_combo_disable(struct phy *phy)
 	return qmp_combo_exit(phy);
 }
 
-static int qmp_combo_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
@@ -2119,9 +2119,9 @@ static int qmp_combo_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 }
 
 static const struct phy_ops qmp_combo_usb_phy_ops = {
-	.init		= qmp_combo_enable,
-	.exit		= qmp_combo_disable,
-	.set_mode	= qmp_combo_set_mode,
+	.init		= qmp_combo_usb_init,
+	.exit		= qmp_combo_usb_exit,
+	.set_mode	= qmp_combo_usb_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
