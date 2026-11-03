Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F783606EE87
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 13:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GHZ0R+PI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VWSRzjSz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=zAkA5kh+q9Q90ZRjJox2LiTVfs2Nn8ioxHsEGGNBKdQ=; b=GHZ0R+PIbHIjGY6ZsbGzqfg2a1
	MlNZrNK3Nj7rmJSsNcIcQ87XTgEzP9rDglzWx/LO+rUwH9v7kFPQHlmb6qlmx+t/6wUAHksynAB+0
	FisAtq7jsCOhWEzS+neMlSDSKLZ4lUmEcIwMPlc+NQuehZoTi7D6yQmsLT/b+tK1aqWNCqRcHXrUn
	MqXW8n+O5Fpl3ewPXjr27l8l19CZDLyzhA6/YOKas25p6fBGvCvR++Scl2xHYuQuCxnwIGWi+PyvK
	pd+OkkC+UMNomk5kmW/JsNQON+GrBtqJElZ8iPWlEoQ8+rSSYji3rB2nBwYpOGban4Q75OQ5a6WV3
	LnAqaT9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEud-00000002dnh-0nFM;
	Tue, 03 Nov 2026 13:50:55 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEub-00000002dn3-1dvA
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 13:50:54 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-1a2761c69fbso7120120c88.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 05:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793713852; x=1794318652; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3ocX26OOcgyW/a7Ke5hFuvKM7A1eBK7k3voEhoZoCQs=;
        b=VWSRzjSzjrZIpAZUJD8fGih/TxyJXfqYOJMPhI60N/5tD7Ls/Prrzd73aFw09PvWi/
         mk65AtboHx7ld4yesO7hgfFiZfDpYkINqC/ZlGrMzLkYPXScUg4o1F+MvBfsTHeLQCDT
         Ij1v8HtK+tD4i9RlZbNNwIxIcD/E3CFc+Snvs/1wjrdMzdpdOUdHWyzJDaj7Mibp5NTg
         kWlZdd00/rMCwltz+HwlvZSsRZ1t821A8oAuYO61ot9/kAco69L84tl5M4u96Sq+S/M3
         eJ2AHcgEqsN2/tHPOXhQR8gO2awb5ig/celg7XZspqkozXJ+Gk8LkBLl+iVpqUGFucZK
         Ennw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793713852; x=1794318652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3ocX26OOcgyW/a7Ke5hFuvKM7A1eBK7k3voEhoZoCQs=;
        b=aoAHeS6ID1pYJwDwhDeP9gNe6t1eRDNNLcmp8ed+YkdQpBuUgYi30F9z266ZSR5Shq
         RksyY29KTc+xxtKlD007Fp4NYxKqTm7hN5euUCZY0gxjhslBcdt7bAM59vFe0kDo/vuo
         BS5RIdOs/jVcuoRvwaUhc3hc145dcrnKCeiHavlo4UDnukWFpySGaNX/WfBWCMg/pEsj
         /FVB/JERYNmoyX5xHgzKIpWXz7NvVKP/H1ac/UyapdV+aRPTcjBV4WT8vMBcUDs5UeNW
         KkGMRNvOi0WU43sjMWdZvb23bDZlukarkigk6/zm52VMH6oTRADsUneCcQ6jfrmVK1Io
         n6zA==
X-Forwarded-Encrypted: i=1; AKwUvBzQoHYUElfa4eO1feEJVCzX4yGq/0idlXfFIA/5RAQCcmERNPjyqVysdK7SHvOq8mWWS4q4bFbZcOw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8v07Ln5z9o2IZ1Aq02VHSB9ieyT3SIGJQki7RAdZ41UvllfAqe
	JiMlA+hEQKqt/xCIYXL+GW6d2AuyAenVQSS6vmcbq0esjZXdoRNa7gvs
X-Gm-Gg: AYBFou37s8a8Mkupsh5uneCrJfeMLnSZuDC9WKuVTbRmaNG/jEB9o/zxy4LVyg/696k
	ZoEDFq8D1reaB3FmU9hJL4O9CCxFGFO65UCGKf6Vg2pdxNgFTrz2UZJlSzGcgBPVmgLmR1F92Vq
	CIA+GIiOPI1aZ1SKX1oQwlMwRMEqQ41YQu5o1tJKvwoKYEr+VljL34u0Jf7rOyDRhWn4eHIZsg8
	BNnN4MVlQKNUr93GQCZKQh8bPRpNMsD5Xva4LC4Zz6OpsF5KGv3Q23w/Oi03HQsUb8mmBQknlhM
	a53OGkeyuul7yMU8BevujuGkwxWNWFOKpwOzKAQintVdtcwz+dOBIQV0zkAZZriZU0n98mzGtja
	TXvVy+iSKnal25jVodZtzfJ5FqH67WXqSYKirBiYZrKANeYCptLES789WWCgpov/gyjI6dgVti4
	ffkqSkHfOsQhqRT2qa9U9zjQVhIChzcubXC/JbG9KfirZES1424v7iKPIZYP70BKCzQaPanjBBS
	4IPIROSrZ9q9/+07qSiC+RCTZoOwJWDYIpWzr3XetzBCMTP2/st74tbA6lXrtwdt/2PnHL8nJqp
	MGhPC2GFXp+N+Z826s+bPXq5RwVpQ2ERsUgTNhr2WIkeXg==
X-Received: by 2002:a05:7022:1113:b0:1ac:9da7:e86e with SMTP id a92af1059eb24-1ac9dc67128mr17912610c88.30.1793713852224;
        Tue, 03 Nov 2026 05:50:52 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac1abcd6f1sm42222184c88.20.2026.11.03.05.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 05:50:51 -0800 (PST)
From: Joonhoe Kim <26rote@gmail.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	val@packett.cool,
	wesley.cheng@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only mode
Date: Tue,  3 Nov 2026 22:50:51 +0900
Message-ID: <20261103135051.1668-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_055053_433405_E9E2A3DB 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

In DP-only mode (DisplayPort pin assignments C and E) all four lanes
belong to the DisplayPort PHY and the USB PCS stays powered down.
Three paths still touch the USB PCS in this state:

- The USB controller can exit and re-init its PHY in DP-only mode, e.g.
  across a system suspend that loses power. qmp_combo_usb_init() then
  programs the USB serdes, lane and PCS tables over the DisplayPort
  configuration and times out waiting for PHYSTATUS, and
  qmp_combo_usb_exit() resets and powers down a PCS that is not in use.
- qmp_combo_typec_switch_set() powers the USB PCS off and on when the
  orientation changes in DP-only mode, e.g. when a DP-only sink is
  plugged in the other way round while the mux is still in DP-only
  mode.
- qmp_combo_reconfigure_phy() powers the USB PCS off again when the
  port leaves DP-only mode.

Skip the USB PCS in these paths in DP-only mode. Keep the
qmp_combo_com_init()/qmp_combo_com_exit() reference and usb_init_count,
so that qmp_combo_reconfigure_phy() powers the USB PCS up when the port
leaves DP-only mode.

The USB PIPE clock is not available in DP-only mode with or without
this change. For USB, the only visible effect is that phy_init() no
longer times out.

On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
in pin assignment C, resume from s2idle fails with "phy initialization
timed-out", the dwc3 resume returns -110 and USB stops working.

Fixes: 896277138c13 ("phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE")
Fixes: 89563a152973 ("phy: qualcomm: qmp-combo: Add preliminary USB4 support")
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Joonhoe Kim <26rote@gmail.com>
---
Changes in v3:
- Correct the last paragraph of the commit message. Drop the system
  hang: it needed an out-of-tree dwc3 change [1].
- Say that the PIPE clock is missing in DP-only mode either way [2].
- Rebase on next-20261030. No code changes. Tested on v7.3 as in v2.
- Pick up Reviewed-by from Abel and Acked-by from Mani.
- Kernels without 89563a152973 need a variant that does not count the
  USB user in DP-only mode.
- v2: https://lore.kernel.org/all/20261023123512.1912-1-26rote@gmail.com/

[1] https://lore.kernel.org/all/20261102220456.1687-1-26rote@gmail.com/
[2] https://lore.kernel.org/all/20261102220450.1670-1-26rote@gmail.com/

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 28 +++++++++++++++--------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..f1b565852caf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4459,10 +4459,12 @@ static int qmp_combo_usb_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_usb_power_on(phy);
-	if (ret) {
-		qmp_combo_com_exit(qmp, false);
-		return ret;
+	if (qmp->qmpphy_mode != QMPPHY_MODE_DP_ONLY) {
+		ret = qmp_combo_usb_power_on(phy);
+		if (ret) {
+			qmp_combo_com_exit(qmp, false);
+			return ret;
+		}
 	}
 
 	qmp->usb_init_count++;
@@ -4484,9 +4486,11 @@ static int qmp_combo_usb_exit(struct phy *phy)
 		return 0;
 	}
 
-	ret = qmp_combo_usb_power_off(phy);
-	if (ret)
-		return ret;
+	if (qmp->qmpphy_mode != QMPPHY_MODE_DP_ONLY) {
+		ret = qmp_combo_usb_power_off(phy);
+		if (ret)
+			return ret;
+	}
 
 	ret = qmp_combo_com_exit(qmp, false);
 	if (ret)
@@ -4511,7 +4515,8 @@ static int qmp_combo_reconfigure_phy(struct qmp_combo *qmp, enum qmpphy_mode new
 	dev_dbg(qmp->dev, "qmp_combo_reconfigure_phy: switching from qmpphy mode %d to %d\n",
 		qmp->qmpphy_mode, new_mode);
 
-	if (qmp->usb_init_count || qmp->usb4_init_count)
+	if ((qmp->usb_init_count || qmp->usb4_init_count) &&
+	    qmp->qmpphy_mode != QMPPHY_MODE_DP_ONLY)
 		qmp_combo_usb_power_off(qmp->usb_phy);
 
 	if (qmp->dp_init_count)
@@ -5087,12 +5092,15 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->init_count) {
-		if (qmp->usb_init_count || qmp->usb4_init_count)
+		bool usb = (qmp->usb_init_count || qmp->usb4_init_count) &&
+			   qmp->qmpphy_mode != QMPPHY_MODE_DP_ONLY;
+
+		if (usb)
 			qmp_combo_usb_power_off(qmp->usb_phy);
 		qmp_combo_com_exit(qmp, true);
 
 		qmp_combo_com_init(qmp, true);
-		if (qmp->usb_init_count || qmp->usb4_init_count)
+		if (usb)
 			qmp_combo_usb_power_on(qmp->usb_phy);
 		if (qmp->dp_init_count)
 			cfg->dp_aux_init(qmp);

base-commit: 7649ba73f9e7e1e04d0b46213e39c79ae09dd55c
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
