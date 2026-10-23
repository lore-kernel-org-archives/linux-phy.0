Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA95606A31B
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 12:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZRs+0c2+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=ontKUZ8z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=nONI/cEozSV5jasT0EBdvcoJQWOvrcMkmeYQgjECcj4=; b=ZRs+0c2+o15SwU3Yktok/k5SmQ
	EYi7zXfqhHU61iavOyWzSarutW7X5LzWFwFMh5CXgQmj4Vyb5cxj9XZV4lbM2UaZJ9mzHRLcU3dY7
	C+lZY+Q6yNFZHsRmea3IKelNochhFTKrYMbpLSy6OLEDN3Ba/OIDq64vvnOvKAXo3v4RxxTunX46U
	Uqhz7q+hAN5fZC+7DqpntKjpTqIBK1/PhMEERklRfyMeshks4/PE2FRVnR+VS7QfdZCHV0RM0WEHt
	++x7/eYJaG6l0sIOBxked/n6528nExwNBPea8Hfw4jOpC7QEH6dkgRpqRVwEjseb/wSA8owzn0BvC
	f+Tk8y3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKEUT-0000000GIg5-09mq;
	Fri, 23 Oct 2026 12:35:21 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKEUQ-0000000GIfi-2kmR
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 12:35:20 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-cc4c02ddd62so493816a12.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 05:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792758917; x=1793363717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MqyQtE1h9yD+Uynuj0QWyaJV566vcpdQv5oWHCYlWoE=;
        b=ontKUZ8zSRTnQw/qLE0ySdEpenAbABPwNfkp9LvoIrXnfutOBdZowwEbba3U8XDURy
         bvWY1ALJ58eAwXRR04xNIh1WtR6BVRbsT+7MrrYu4oXKXa9KL0SPHoBMnAfwFEjwyaSz
         3Q8bcdUWGHp8iC/RDi04Tp8wxyS+u922raJKDMT8vYcIWIhNmgQDj8NxX67CJq9B2XYB
         IVeWvL3eLT4klJ6B9ntE5CFBVjfphXMFNuD87ZxL2W/7Mg7pKgicB864E2BApVocbt+9
         CFDB5HIinTFlxWup/7IOPNkYO/Fufm9GfdM/SXWca8C2PniFG7zvWUBeETZXufIGNW8H
         aaDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792758917; x=1793363717;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MqyQtE1h9yD+Uynuj0QWyaJV566vcpdQv5oWHCYlWoE=;
        b=15RsNlsiH9RnPz8tIZ8saIVk5zSrvWcJ0ueIzWaCNrROEC+IOV7zAKhfRWIqu8GeaN
         37Er9Nz42ubI0RjBOLwbgxM7gEPvncaVa/WqbWOZ5byiZL5Z6EDXwK8DVYVJR4OhmX4i
         R2vr8pxFZUJWgF+uGI0jG8JDb4ivjAfX2fuoi2VS5gi0dd2vAsARK0P9EnCVgr4P+9JO
         R5W0fzel9oxXSHaXRmhjJZG4NiJ8fwP9QFO9WB3VhvimBII4P6vJAkfqBwtfzDcBQ1o8
         Jmqvdif19+l/kbfOm8+Nz/VmSQgYCn7x5edVTkdbOOXCYNnMyNSH4wTrUOWAQfODZ6lU
         DR9A==
X-Forwarded-Encrypted: i=1; AKwUvBy/FwW9ZyZHqwHHeSaJ1DzXjmFs9+7Y1QrLQnwVNjE6HlIV0i/gUCYpdnBWOd/6L64x0ExGJJEC84Q=@lists.infradead.org
X-Gm-Message-State: AFq9FYLLfxpVcI59+IqsA17ktE+omyByc7np1EZ373o/PCcwitj+xrNq
	KBla9x588gsi4bOvzrBEweQPllJnvsxZVffJ+NWnD6QtGYvypDqp8gTG
X-Gm-Gg: AYBFou3B6k4DNJRj3LyPjTs4JurP6Rh0EV9yKluW23WNVP2QvCF+njkt+mTF2FGXZ3t
	TeZxNpZ02kg/lHtpXlNB5qfvF6IV4rDGSmOWYa7GXZQMSVcQ4Um8FKjdj/Z13o7W9O0aKsmpbn7
	glwE9noVRFT6jc3iIAfl10FjsOJcGbT83r/he+v9Hujq0hE+FcilVQ5ERmWzBeytpox3KJ9x7Zm
	IToC1Y1jHJAyftj9AllidEm5Fbf4SK9FHzCD2NN2KEIEbs7Aw1jdavr77jcn1E8NofLI8i08pqK
	NXT09C6AwkusmTIqWZCBlhnAYaUi2A/YhCQWNUVAFEmi9BZCscpsprUfvxkwPOEv6GvpicsyISL
	nBPu05FfLCfNwNx0Jmg6pl8mEirNnlYn/3caP0Baaqi4lbwQ4R5uwFwGpTlQB/12LZ8E/484HUO
	1LKW31/loRdvFAhEdyyH+CmSvWTOeRF7p+sO5lYX9AkC1Cocykh6lckfWPRDZW0ntlBwYF35SfF
	RSfQ6SfHBmbkhddGOSd93A9ACMtSBrdONUthC9ZUIWlHMPvKfupFdFW0ATaVdVD9D34mHI=
X-Received: by 2002:a17:90b:3810:b0:3ac:80dc:f40a with SMTP id 98e67ed59e1d1-3adce5ebc38mr1652472a91.16.1792758917389;
        Fri, 23 Oct 2026 05:35:17 -0700 (PDT)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3addd7fb873sm129139a91.7.2026.10.23.05.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 05:35:16 -0700 (PDT)
From: Joonhoe Kim <26rote@gmail.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	val@packett.cool,
	wesley.cheng@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only mode
Date: Fri, 23 Oct 2026 21:35:12 +0900
Message-ID: <20261023123512.1912-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_053518_705635_516BF0A3 
X-CRM114-Status: GOOD (  16.97  )
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

On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
in pin assignment C, resume from s2idle fails with "phy initialization
timed-out", the dwc3 resume returns -110 and the following xHCI resume
hangs the system.

Fixes: 896277138c13 ("phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE")
Fixes: 89563a152973 ("phy: qualcomm: qmp-combo: Add preliminary USB4 support")
Signed-off-by: Joonhoe Kim <26rote@gmail.com>
---
Changes in v2:
- Also skip the USB PCS in qmp_combo_typec_switch_set() and in the
  power-off of qmp_combo_reconfigure_phy() in DP-only mode, as the
  Sashiko review of v1 pointed out [1]. Since 89563a152973 the mux keeps
  usb_init_count when it enters DP-only mode, so these paths see a
  non-zero count there.
- v1: https://lore.kernel.org/all/20261022165219.1368-1-26rote@gmail.com/

Tested on v7.3 with the qmp-combo mux changed to keep usb_init_count in
DP-only mode as in phy-next, on a Lenovo Y700 Gen 5 (out-of-tree board
support) with a USB-C monitor in pin assignment C: s2idle resume, a
replug in the other orientation while the mux was still in DP-only
mode (qmp_combo_typec_switch_set() then left the USB PCS alone), and a
USB 3 stick afterwards, which enumerated at SuperSpeed. Kernels without
89563a152973, where the mux drops usb_init_count in DP-only mode, need a
variant that does not count the USB user there either.

[1] https://lore.kernel.org/all/sashiko-outbox-181846@kernel.org/

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

base-commit: 2efb7a11f1aa4d2dc285fe2680cca22cb9f72f64
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
