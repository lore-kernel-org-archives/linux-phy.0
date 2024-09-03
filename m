Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39446CD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 11:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lwJT8cPBLFEz+EINfpRHO0X1qN17wOX7LKppdwrZRbs=; b=j5H1MVsoWyZn7d
	iszAT+tASiUF0+0XQ5fV0otDdedAwY4pLYJhSuKWPhoMbdEY7Js8Cku6Obf/o5TrJvpjmkfwmMyAX
	ZAFRU2YV9O5rl6hnDha5yVehCNYkVqi2Mc5+7SSKCDfVtc9e48R5gkRo3MjFQ5o83qxX87IyCQW+H
	+VCfa4glqHUU595TKKD/E6Ws9bCtnQQYqfqpPTEys+2X1eXe136LqiDxbGzNwwSBNPwx2/eznXhgk
	kxKuN4ybO5WOapHRO6BD3+bu2vSiAmHagxsRa/0tUoVf9u1PWBusqYcEkA/UX5pqsBj4JtEwzr3BZ
	nWHl5xiSngeLWgu05zFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRTY-0000000HUfI-3mZN;
	Tue, 03 Sep 2024 11:13:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRTT-0000000HUei-0z63
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 11:13:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DF57F5C589C;
	Tue,  3 Sep 2024 11:13:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E9B8C4CEC4;
	Tue,  3 Sep 2024 11:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725362006;
	bh=WqwrgkcudK+NHfSOLwKLX2dxo3L9ye7UU5DyxeNFtS8=;
	h=From:Date:Subject:To:Cc:From;
	b=nS5GZBUTc9kBzi80C36kzvHHMK7KVDu6MQKGxiRkS+nt70S95Y0REDRaRgouTMV+P
	 fGjV3LpcxS/wz6Ato35EMexDpW3M/fwXrwvoZN7oL+l6rucGbhrQvpaEghTC7WRyyG
	 AY64Kmin5DpVXLp/vu+J7jloIxly6LjJuug2yzjyTD8yM7fKlU5LMTwi2ZyeifR2bB
	 0Vw5kBMU5K4Yg9yGJBCxfcmOC3dAcbOxxayY8V46HX6iG1T0oRVZK2OBYSbw7eGlGh
	 bHDYiSP9DSswg1TwSF7ARZ31riZdBv6zRhSi2O4+8ctpiODyXL+Yd4EgFn4TXhUBt7
	 +nddKTXfK9+9Q==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 03 Sep 2024 13:13:10 +0200
Subject: [PATCH] phy: qcom: qmp: Fix lecacy-legacy typo
MIME-Version: 1.0
Message-Id: <20240903-topic-qmp_typo-v1-1-781e81799992@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAEXv1mYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSwNj3ZL8gsxk3cLcgviSyoJ8XfPExBSDNCNLsxTzRCWgpoKi1LTMCrC
 B0bG1tQCUJwRBYAAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1725362003; l=1854;
 i=quic_kdybcio@quicinc.com; s=20230215; h=from:subject:message-id;
 bh=6TZhkcNKUTD0+ua4KuZh0omxzbKAoA2ah9XtSRXRVLU=;
 b=x6IsldEJU5jGunA50BTxps/QGCy4BX+zCxKquJtz4aRdJeCCmJ1RRYfFp3OzYcfLywlvsJ4Ty
 jIsVKtLuOlnAauKH2zcmRkscsidb3CXUxOIVEo3WXZuQFAYEkEGSu5T
X-Developer-Key: i=quic_kdybcio@quicinc.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_041327_352193_45C52D57 
X-CRM114-Status: UNSURE (   9.38  )
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

From: Konrad Dybcio <quic_kdybcio@quicinc.com>

Introduced in Commit b3982f2144e1 ("phy: qcom-qmp-combo: restructure
PHY creation"). No functional changes.

Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a8adc3214bfe..0198dc21ae56 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3483,7 +3483,7 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
 }
 #endif
 
-static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
+static int qmp_combo_parse_dt_legacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct device *dev = qmp->dev;
 
@@ -3510,7 +3510,7 @@ static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_nod
 	return 0;
 }
 
-static int qmp_combo_parse_dt_lecacy_usb(struct qmp_combo *qmp, struct device_node *np)
+static int qmp_combo_parse_dt_legacy_usb(struct qmp_combo *qmp, struct device_node *np)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
@@ -3576,11 +3576,11 @@ static int qmp_combo_parse_dt_legacy(struct qmp_combo *qmp, struct device_node *
 	if (IS_ERR(qmp->dp_serdes))
 		return PTR_ERR(qmp->dp_serdes);
 
-	ret = qmp_combo_parse_dt_lecacy_usb(qmp, usb_np);
+	ret = qmp_combo_parse_dt_legacy_usb(qmp, usb_np);
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_parse_dt_lecacy_dp(qmp, dp_np);
+	ret = qmp_combo_parse_dt_legacy_dp(qmp, dp_np);
 	if (ret)
 		return ret;
 

---
base-commit: ecc768a84f0b8e631986f9ade3118fa37852fef0
change-id: 20240903-topic-qmp_typo-7aad0f296d7a

Best regards,
-- 
Konrad Dybcio <quic_kdybcio@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
