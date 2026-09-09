Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19195C79FBF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrwaBrI21noQ5k6UYAOYx4ip4dC+onDoKI4SOITS4PE=; b=Q+tv2xMDujK5Lg
	17JJgaGBhnJrCFALu0SFUjDt4PJBGasty4sM2OHwhQ3OyW1m5o7eFHCn0NKPkZyXeE5iuvfOpyFwb
	oCi/nMBYF58Zq7MohMpf0Lk1Xg2wyfrAsjUlikWc6qpBDL3p41XguZ0frnPIFfq9ntqcKCr4936CB
	USbTnwiB6F0P8DtKw8azoeZmwG2skpqO6O4QCVRt3a7MLRDPWANYGYVDzcKaqvNqgTjIIba5GjucB
	ymM/py3VLgLxfrnpjPieHGIaSNjToqPVllrJpaq0lxs2XTMbMinWRR/utd1vgMNbSSiHa3ajuob0U
	oZ2dJnaW921wL129thtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K0s-0000000C6qW-3Okr;
	Wed, 09 Sep 2026 15:15:02 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K0q-0000000C6oN-1g8s
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:15:01 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-49d0b98d6d0so39591915e9.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 08:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788966898; x=1789571698; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5Hgb+fNNqz3kjuFAqgV/JYmpECXZZxwWjRWGYVFo2S8=;
        b=TPLqMP3MFTvktKyaEfq1nGJMnOafTQEQMu6wYncN2lp8duhICERgCpG/F2G3Y5GeLa
         x5/wnE0ITuVOexZYUnx8X6SrNwdMct0SwM18aypDUysjbvwMMy0mTA11x50FO4YqnTJA
         nHFDN5c6FL1SNf84ylLit+xCWALm0JpJD7IDouqVFys5a3C4wnG/yyfrNKc8Ze1B2ckS
         Iq+/sQovYvhIS47Ov5N+3Kx2IMxfJhF6+oOWhMBqZfnT26JhYgREWD79rgoOjC7CBZIb
         vpq6r/y9DSkhWN5tJ+ZDwzkq7TRAyYB76/DFcAMFfrY13ZZStdsgAXokY+PTQxgN+lWn
         kEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788966898; x=1789571698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5Hgb+fNNqz3kjuFAqgV/JYmpECXZZxwWjRWGYVFo2S8=;
        b=iOHFBnUJ9r6qtzEwIo//Xv5/6moIvo9jKLrmgJztjYyn2F+mfc6txsd0B6+FuFzYTm
         oMvEYGAVdU5FTSEhn7Jjjl0lEDB1uRGCscmR6MQh3daU1NSsr5uuW5ckOSJhmP4Fr9dz
         jOtmhBVzxz7kTenLX7MeH0tvKoucHawH3a7TpiWJeJkYACXzZR6VK85pxAuDht3YlY0v
         Vm4EqHhNEtinSJsajRiQVVXZ1vgJtJzXxse1kq1BGAr1+Ng0hoGgAT5UGDH9EyTo0b/K
         kSrqMsCGL8VpnmVmokCy2iVVeCnNDIxS3DLCDdJt07OzZwNNnd10W9RjVAdzVqgcJjhw
         ZQ6A==
X-Forwarded-Encrypted: i=1; AKwUvBwzZ4PNrCht33IyahxB7jnd0lQ38BqQxeXQH5i2w98JSBA5zMXep1QFttkKGG/zHQC5BUrms95h5ms=@lists.infradead.org
X-Gm-Message-State: AFuF++l2lBe58u38HwciVC/h4c9Ulg0c+/Qgmmc1XdHKK1oyDDGZrr/x
	fejhIC9FC/hYE8VwjpmQJrWwCwCdZXWgdPd0ZDqY3ntXCdSDazYGdH/v9iRlEvtmjKcxNA==
X-Gm-Gg: AYBFou31AbF62idlDYdhR39K8d6infTD2n+pGhBJVZSf3aIvmmdh15a149Ns0n3xHOh
	Xop/2+HaURZIAFbYzNI+maVtIAERS9/OvrHrTs6zQsWf72cocsW69SFegNX2OTRBwbYjJUJ0t4e
	ekUjoPO6MamYgYwQVTYR4U742R8jCjLmr6GQmy5+jiTBw+T2vG3iOgQXbJzQYDHtSAwuzIBsMMk
	w6x4YuKyM9m4w07pm8ZIjPVNUszFSUjHjJcXpVc+28C4C6fRb03jX2peGWIjgeJ9raqtZLsf4bq
	Lvf+BfNhLRnrVikE6CizCddDz2IOzq0aJ9olDybbwvxs4Mvx0/PJWi3YG4ppcnP6wvt2kWlZxr4
	D2R4MJ4Z8tBom3rveo1rGe9CAK1wU3mNfq5b6vtLHRp+Lbf8UQh4qLvy/wyPYLYPqaK6Sa6XEjx
	O5CZyCuYR9T2cam4p0wj4MAWmu3g0Ul6IP4fFld7KJHkS/3YUEhPOoOSBA4UanDJnjr07UokN7i
	WW1T992f+o/JzTzDU3IMdfhDhTcI3TXnO6C8EDEvlU=
X-Received: by 2002:a05:600c:198d:b0:49c:fa21:1c7c with SMTP id 5b1f17b1804b1-49d1ed0b452mr66471895e9.17.1788966898403;
        Wed, 09 Sep 2026 08:14:58 -0700 (PDT)
Received: from localhost.localdomain (mob-31-26-103-238.net.vodafone.it. [31.26.103.238])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49cf755c22esm483644155e9.0.2026.09.09.08.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 08:14:57 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Scott <mike.scott@oss.qualcomm.com>
Subject: [PATCH 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init() in the typec callbacks
Date: Wed,  9 Sep 2026 17:14:43 +0200
Message-ID: <20260909151443.10276-3-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260909151443.10276-1-okerixx@gmail.com>
References: <20260909151443.10276-1-okerixx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_081500_495768_CD7BA626 
X-CRM114-Status: GOOD (  14.39  )
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

qmp_combo_typec_switch_set() and qmp_combo_typec_mux_set() tear the common
block down and bring it straight back up on an orientation or altmode
change, but they discard the result of the bringup:

	qmp_combo_com_exit(qmp, true);

	qmp_combo_com_init(qmp, true);
	if (qmp->usb_init_count)
		qmp_combo_usb_power_on(qmp->usb_phy);

If qmp_combo_com_init() fails - a regulator, a reset or
clk_bulk_prepare_enable() - it unwinds what it had brought up and returns
an error, leaving the clocks disabled.  Both callbacks then carry on and
qmp_combo_usb_power_on(), and dp_aux_init() after it, write PHY registers
with no clock running.

Propagate the failure instead.

Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
Signed-off-by: Oleg Keri <okerixx@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7d740ed0ce16..44b6f29926dc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4924,6 +4924,7 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 {
 	struct qmp_combo *qmp = typec_switch_get_drvdata(sw);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret = 0;
 
 	if (orientation == qmp->orientation || orientation == TYPEC_ORIENTATION_NONE)
 		return 0;
@@ -4938,15 +4939,19 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 			qmp_combo_usb_power_off(qmp->usb_phy);
 		qmp_combo_com_exit(qmp, true);
 
-		qmp_combo_com_init(qmp, true);
+		ret = qmp_combo_com_init(qmp, true);
+		if (ret)
+			goto out;
+
 		if (qmp->usb_init_count)
 			qmp_combo_usb_power_on(qmp->usb_phy);
 		if (qmp->dp_init_count)
 			cfg->dp_aux_init(qmp);
 	}
+out:
 	mutex_unlock(&qmp->phy_mutex);
 
-	return 0;
+	return ret;
 }
 
 static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
@@ -4955,6 +4960,7 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	enum qmpphy_mode new_mode;
 	unsigned int svid;
+	int ret;
 
 	guard(mutex)(&qmp->phy_mutex);
 
@@ -5012,7 +5018,9 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 		qmp_combo_com_exit(qmp, true);
 
 		/* Now everything's powered down, power up the right PHYs */
-		qmp_combo_com_init(qmp, true);
+		ret = qmp_combo_com_init(qmp, true);
+		if (ret)
+			return ret;
 
 		if (new_mode == QMPPHY_MODE_DP_ONLY) {
 			if (qmp->usb_init_count)
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
