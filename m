Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383C3606A331
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 16:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rtx3rMgv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=E+s4EfTQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=pbvaVyx8LmYZmra2IDqRtyHnGCzR+4X8mWsPi0lVLes=; b=rtx3rMgvlgrrpi0m0XGAVxBOXU
	IG0dXiBKcv5MTHwQCJkXbNow/tD8wjrgzps15nnn7PCfwDonCGYgKMaPe4fVNPifM2H/DfvBbJEc4
	pqMtn8MW/9WJXMYLsRoCVONi+gQOWIYNHgsr75SsIPBGzw61v7kL7skNacddZ+F3kgJ8KRExP4Ary
	MvuneBCJyOOE6H0zFeKkBdY6MQzGqaUa14pLPd6NRs4rTzXbx0XHg/c6E680E5wuEgqKF6U7kn7IY
	IYrNiw42OW++iRkXDeLshqdk1FWRo7f4w32sDSax48nIXeyhU/whpWqFpbx7Y6WhQtyA40OnZN8kh
	o33BCwlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJw1i-0000000EXom-3l3s;
	Thu, 22 Oct 2026 16:52:26 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJw1g-0000000EXoF-22Fd
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 16:52:25 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-1438d9363fbso943257c88.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 09:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792687943; x=1793292743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jMHX9wN/BHCrbGnqRhP4+R8W0f/fc00EEaOQLsHpHDs=;
        b=E+s4EfTQIRUbhS7lWrIATm0gOwEAu4nQ/sQTGo6NVfe2uP4TnJpK4VhVrOltVjhQ+t
         Bvk/9OWXdi3Y89F+hq4IGNToF4uN8Ou2NYep088nTDGr9tnCq3uUtOSx+RLsvDX+b3WG
         qs+BYoNgnZFZPWYV80YD0yOS4i5UvcEddf+43fC0OixZ2jg/sJro2rFWf6sBBoAR34Au
         VSPCTAPJVwIqaDHADcncNSlJp61OGQOLEG9/fHV5mj9K78oCU6dD7WHmKYzhgDr9Ah0J
         5smKoSP3JMHqIHV3NYAXe/eUA0TlvoxNj6Gyp24hITDzQlDUUufSARwXF+NJMCr+iaFR
         RUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792687943; x=1793292743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jMHX9wN/BHCrbGnqRhP4+R8W0f/fc00EEaOQLsHpHDs=;
        b=dlCASBFFjyplwCmAug/oQdsocrRkaesAC5maER+N9z7bKYlgkpIyTLAD9DCLdq5/jZ
         phfxacbjWvCRU4isJ8sLye2vn6+DptPKtarfyccBS8E/SmY6tJbOW+qDPO/gyeI15GEu
         OzFXWnjbO/IZmHlmGQmeKWu9nQybHeEy0mMzZtlqXq1nf5FQPweHCPAj2enpc/wMD1ee
         ZKjdrNKxG8tNqaPcNJJ7AdT+Ku0VOP7M4dQg2Pq0OdheIWrblRb5G3KVrNt5pgBaTBHt
         TFSMA44lLpQ/qZ1LiUNwk9QQR9BCBZ3HaLhz+9+KQEgTnn/FVhHOIue8JiN3NiVafQAU
         Wu9g==
X-Forwarded-Encrypted: i=1; AKwUvBwLtQJ/c9nvg0JtYTRDS7i0TLUI91YXhXteG7iX8lBfy8BxeXtM6ifMTrUKoGXhPgljxwXLvAcRLwo=@lists.infradead.org
X-Gm-Message-State: AFq9FYL6FF/D9dKsZvyu+V3UCn+5Ca1n1ClHlqZfepKiiBeYNLWW7ISN
	84kr6iQZZCVV//BlyQo8jfDmQ1Lp2DKFovYVjeYC1Q84Ryli1wj+t4Ev
X-Gm-Gg: AYBFou1kBMRVXg9uI8oGO6ACQjTfJ/nCLDyltIwe1CNE3WA0ojobCrjoaUrKh01rgUU
	oeAvZzE1c5IUVvZiN4FpDpqgpzhFhaD8Z2+3QDIoeWE5/7HPNZx0s+oOEtwKXp15CC26ZvXcGsF
	7ofJ+9wf5rXDvzRTnMBDDAlda/vlL3S+ViZ0YXVFBf08WyWOFs400lZZyu6BTVUM4SB1++pdSUv
	BYGmVexK/AqCev85beWiD16ONnPJYf20xiiuiJLIrbTfxWHJKOQSa6XQd5JhZZqUFwScsw1db89
	MhPldVUiLokeByDJWtmrC3aBSZflZ5IkLenKcp/ptDl6wwNZOoMQikyBK9lWRd008XmSI22tB3n
	NGplSvuq0z0DHrFLWtfkGZmMqoYWrNUZIhajJ6GxP9lO/Ntu2cjBf3x233dLWre7ykeSVP2HYCo
	M3DCjB19N3fgoR6eKU1niUyA6YT53BkCx1z7KqYOCCT+CzoykEkee8aVcDOiNhoZop2Ptb24S4j
	PFQ2VJWE6+vg4U9KtKV/Ozt6ERGrSXgBJrnVyiOH/3Ss7KrqL1i/MH+ZhhWqkoBrvhchac=
X-Received: by 2002:a05:701b:4250:10b0:184:40db:6bb9 with SMTP id a92af1059eb24-192f2d2204cmr3620614c88.8.1792687942800;
        Thu, 22 Oct 2026 09:52:22 -0700 (PDT)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1903bb7f098sm25263741c88.12.2026.10.22.09.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 09:52:21 -0700 (PDT)
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
Subject: [PATCH] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only mode
Date: Fri, 23 Oct 2026 01:52:19 +0900
Message-ID: <20261022165219.1368-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_095224_528600_FE961C2D 
X-CRM114-Status: GOOD (  12.49  )
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
belong to the DisplayPort PHY and the USB PCS stays powered down. The
USB controller can still exit and re-init its PHY in this state, e.g.
across a system suspend that loses power. qmp_combo_usb_init() then
programs the USB serdes, lane and PCS tables over the DisplayPort
configuration and times out waiting for PHYSTATUS, and
qmp_combo_usb_exit() resets and powers down a PCS that is not in use.

In DP-only mode only take and drop the common reference, but keep
counting the USB user, so that qmp_combo_reconfigure_phy() powers the
USB PCS up when the port leaves DP-only mode.

On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
in pin assignment C, resume from s2idle failed with "phy initialization
timed-out", the dwc3 resume returned -110 and the following xHCI resume
hung the system.

Fixes: 896277138c13 ("phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE")
Signed-off-by: Joonhoe Kim <26rote@gmail.com>
---
Tested on a 7.3-rc4 based tree, where the mux switch itself still drops
usb_init_count when it enters DP-only mode, so the tested change skipped
the count as well. This version follows the reworked mux path in
phy-next and is build-tested only.

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..6e3406d519d2 100644
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

base-commit: 2efb7a11f1aa4d2dc285fe2680cca22cb9f72f64
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
