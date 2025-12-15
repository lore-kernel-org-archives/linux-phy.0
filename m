Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F763D5B174
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 12:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98FbuuhWOD8M+vCuc3YyO0sRbZSLz0geFoBZNNkslr4=; b=sPhTBI/nS9bL7g
	BsiyonsLwGU+VLBIjtCo2kTFy3uxXVhCQTillsRLRsyP1kQQq5xKCQ4ep0O8nAIwqmH4PbfFXR5Lt
	xCbaAg3gh3EkOaqSxMp/RSLcwcDgVP9WpJAPgoCRf7gmWyA1Z8t44+ZdyWJP7GxoRceIZuRLuNmC3
	25RP7qFcFEXq3o8zdy8YMPX7B93PLu0GolOPJkB9PJtdlAfjByW+MWMgVn9bi45Y7e57upTf/wuhQ
	GZAQPkVwfRWaXpZAEoVCDVWsMxydOYnUsvulo5UmkZHwJzwDb2EN5nP7uGNfz/M0dhtDBZjuyp7HH
	RSSqMHSmcLZ2+BY5XhOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7uN-00000003eAh-2uFb;
	Mon, 15 Dec 2025 12:42:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7uI-00000003e5J-0QmH
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 12:42:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B4904436E;
	Mon, 15 Dec 2025 12:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFEFDC2BCAF;
	Mon, 15 Dec 2025 12:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765802546;
	bh=BBaV8K9U69qN2pzZCsFg+t1R7xRb1OE/Oi4kBFaNjfA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=GA0kuhTgQDnhDzAm7mcyp1Pwr7o0eHiFVHaSSD+7A8Of+oFcO/EdqlS4wDtX3C8jE
	 92dFA89qtHNbuSlXtIfp7E1TDTcrsp7tecHMOEYlvIWHwmJnR2stLDeuOSakCVzPnj
	 tluJI1Fy2CMlUCG/tEyMYR+1j8+VUAMK7Y5F1T9LCQozpwDLIqkD7QfeBW59IRZh6B
	 Uy1MhhZsykCgHvfirOfoCg184tHcfWJsuR9uFTrStQg5Pz2flU1oMCxzInsircZ3mo
	 1kPhm0/PklL2a9Dvob8slK71KxiJ4KXNPU7U0EzEyb02stT+HEJnf/Ljp5fv2lkpoW
	 9fE9BY6f3WQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A4DD5B175;
	Mon, 15 Dec 2025 12:42:25 +0000 (UTC)
From: Xiangxu Yin via B4 Relay <devnull+xiangxu.yin.oss.qualcomm.com@kernel.org>
Date: Mon, 15 Dec 2025 20:42:06 +0800
Subject: [PATCH v8 10/12] phy: qcom: qmp-usbc: Add USB/DP exclude handling
MIME-Version: 1.0
Message-Id: <20251215-add-displayport-support-for-qcs615-platform-v8-10-cbc72c88a44e@oss.qualcomm.com>
References: <20251215-add-displayport-support-for-qcs615-platform-v8-0-cbc72c88a44e@oss.qualcomm.com>
In-Reply-To: <20251215-add-displayport-support-for-qcs615-platform-v8-0-cbc72c88a44e@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com, 
 li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765802542; l=1938;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=vkJc9kXChJt0By/A7A0HyHi00ttn3nAxHdu61pob0VI=;
 b=9pDI+2wVUGUZbnAk/9O4DE2TcYeQpQNWyUeR+8avOcBuMis3QjVzoThufr9PagHwlLOGzE2Ou
 JCjUq9S6WyDDgp/xrLC0hAmW0oqnn95TSVWb8J/B6GS9h0bNXXZixTb
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Endpoint-Received: by B4 Relay for xiangxu.yin@oss.qualcomm.com/20241125
 with auth_id=542
X-Original-From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_044230_216983_19D92518 
X-CRM114-Status: GOOD (  10.80  )
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

When both USB and DP PHY modes are enabled simultaneously on the same
QMP USBC PHY, it can lead to hardware misconfiguration and undefined
behavior. This happens because the PHY resources are not designed to
operate in both modes at the same time.

To prevent this, introduce a mutual exclusion check between USB and DP
PHY modes.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 1ac755825313..b1a2380401ff 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -666,6 +666,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qmp_usbc_check_phy_status(struct qmp_usbc *qmp, bool is_dp)
+{
+	if ((is_dp && qmp->usb_init_count) ||
+	    (!is_dp && qmp->dp_init_count)) {
+		dev_err(qmp->dev,
+			"PHY is configured for %s, can not enable %s\n",
+			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
 static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -673,6 +686,10 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, false);
+	if (ret)
+		goto out_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
@@ -726,6 +743,10 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, true);
+	if (ret)
+		goto dp_init_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto dp_init_unlock;

-- 
2.34.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
