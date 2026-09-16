Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B713C982C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 12:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jce+1WP9SvlIW82pPrebCm0GCdDqzkc+hw2xJXQrqUY=; b=u5j+Vv6i52UoOF
	+WJZWtjUSYRLbYrgdJU1ykcyO76UvVnwqSF8w6Ad7O/6d6omiYJbBRWmFQ9mBOeaNTkByaF2itiBI
	1+KmbyNxa5fnEjeWYk0gcPeepXX/dHQ1qH0wMaOBz5GAqJJEwIpSzxuGlg3dfIkP8PjeqXUa18v1h
	vBBELJqvhQ5TcGgPMtFtqHksO82jxGREvVaHwfj6yCxvSASqGEhlQbjrZAB/FBGuxUttBu9+AUccf
	nj2ppthb1mhBZRe0m7Js2R9kxLLSGu+5PpgBeQXKlJA10vMGdP5al8ZUlP3QILKKtzMHeTN/U6Iq3
	udcD/GvvnlZhWZzyDtTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pBm-00000009DdD-0MXa;
	Wed, 16 Sep 2026 12:56:38 +0000
Received: from mail-wr2-x11.google.com ([2a00:1450:4864:30::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pBg-00000009DbP-24Cf
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 12:56:35 +0000
Received: by mail-wr2-x11.google.com with SMTP id ffacd0b85a97d-4843c3ee4cfso404972f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 05:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789563390; x=1790168190; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ka5zpxp/jCsYjEbSlG1itlHgACxSBnD5svSTVFgMxoQ=;
        b=X81m91zks0DqZzpMaH47u0rEKkQr2BETevx1y/tOJVV5dvNKqjtsb+KWvBZZ9KY+gM
         8RsUrLrAkj0Ux4Ke9ZrdnBnUCs1HmBn+a/wIkCZLKAbU+XzSyAfbOVv1nI2/vI3nbUDg
         GUhLH0i02L/KcS9pqm0Z+cBVZcDWU4iEn43jT2ra4sumyNNO27tn3gTObwf6D3a9ZAfw
         qHFUEKt6FbwGo9h2cr0SrDWVZ4eS6ZJj0514qnHLu9iDAn9NbtEjykYyBXLZRybhZbDu
         AkLYuL4XWRf6s1Lwl8saP5Nys+dcEtOFQ8JE0jV7Z3XVvq6FnWt16KZ3i9ksxo7MHn4Q
         7TIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789563390; x=1790168190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ka5zpxp/jCsYjEbSlG1itlHgACxSBnD5svSTVFgMxoQ=;
        b=hNnYo9FBER7KjVOuxVL97sVkZcCO+xSdZ5O4qe0iYFmBw8mDlL3BX7mrcH8+oX0cxL
         wwe1fzjnbFsc4w7a7bXA/NMETQCD3BzAT64rvwFBbDR9Sq4UGhcjeDx7PvH/73bDVN8f
         Nn4JD9sPrhxOuQKa5QVEkj7Hc6Ydp02c0Y0b/gtbxAMgVvbHG1u2xPzE0d02ueJb7Fn2
         gdTEvi4phFLXiZL2Spv3zw6E37sNMIdsRljAlaNm9otsMEwXZ7OmqR5hzUOWmBCm7BBK
         xBfp77vgAKVZeLfYJjTACREpQx8agMjGN9nCqIjFXwaJzc0bLmuuzB0njbzgTvoBLGTx
         CdMg==
X-Forwarded-Encrypted: i=1; AKwUvBxbCaNcIxUmk7hDaMcmj6qTmPgrAoLaXJM/eg/7Psxg94gWrjgqfpHJ6sWca7mkJmetdfi5rA6uA7s=@lists.infradead.org
X-Gm-Message-State: AFuF++meL+X1EmIw3uoZkqnwnmGiLyndeXEuOxzhrfXP4Yxovz0s7ywz
	j+WQWkufbRHj+fVhFBGHYeZHI/x560mKIs/FxhtCCIreEanq4fpat30K
X-Gm-Gg: AYBFou2JItlHveGK583vJy3yq3xY+H54fIPGUV1DoE9EwMwysFxEUrjx6KhBdZW/epi
	jHSlMpc+NwKLJrM8oXci/XH1AP5AeguSbY/NbIdKWLroophZ6sSfph1iJkdapINUszcbKlr9CsM
	dUFE3gcoJTZoUx496gUqXpxDZ73HOxcdtcyEm86k5ZxzEImOCtU5UsRgc+m19pr66eeNh+HyonQ
	xytEN1nuI3iBGh9s5m2Ar2HhFooGjKRZ3w0E5Zldnb9lnUiuTaHI9d1EQG3JEl7VMBqZJagAFPr
	vCKd5WkKdDKR2FdjbzWfyGaKOAoePkFFXyOyzlVgYYJcsqtgh41ENnmDeaFAgw59P7XRvzqHxRm
	5NDbeOBQtjwtKfA0LPP5jc6zyvjiSHKhtQn67Hot0YMdPAsBCC/iFtEyZfYNWJgVbGLAqnG/NuW
	kqw3LGoL9mehpjBYHCMd7kd6pnY6SU5gxuYciT3T4KkJ+vz0JLJFfvXJ+WoMUQwWI8E3HPJXK2+
	40jz+WMla0=
X-Received: by 2002:a05:6000:460c:b0:487:767:b301 with SMTP id ffacd0b85a97d-4870d2921d6mr2931012f8f.57.1789563390295;
        Wed, 16 Sep 2026 05:56:30 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4870bf342a0sm6750729f8f.24.2026.09.16.05.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 05:56:29 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init() in the typec callbacks
Date: Wed, 16 Sep 2026 14:56:19 +0200
Message-ID: <20260916125619.4587-3-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260916125619.4587-1-okerixx@gmail.com>
References: <20260916125619.4587-1-okerixx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055633_618127_FB43DD75 
X-CRM114-Status: GOOD (  15.18  )
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

qmp_combo_typec_switch_set() and qmp_combo_reconfigure_phy(), which the
typec mux callback and the USB4 init path use, tear the common block down
and bring it straight back up on an orientation or altmode change, but
they discard the result of the bringup:

	qmp_combo_com_exit(qmp, true);

	qmp->qmpphy_mode = new_mode;

	/* Now everything's powered down, power up the right PHYs */
	qmp_combo_com_init(qmp, true);

	if ((qmp->usb_init_count || qmp->usb4_init_count) &&
	    new_mode != QMPPHY_MODE_DP_ONLY)
		qmp_combo_usb_power_on(qmp->usb_phy);

If qmp_combo_com_init() fails - a regulator, a reset or
clk_bulk_prepare_enable() - it unwinds what it had brought up and returns
an error, leaving the clocks disabled.  Both paths then carry on and
qmp_combo_usb_power_on(), and dp_aux_init() after it, write PHY registers
with no clock running.  qmp_combo_usb4_init() already checks the return
value of qmp_combo_reconfigure_phy(), but never sees a failure from it.

Propagate the failure instead.  The PHY is then left logically
initialised with its clocks off, which is the state any forced bringup
failure already produces and which these callbacks have no way to report
to the PHY consumers; what changes is that the register writes that
would fault no longer happen.

Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
Signed-off-by: Oleg Keri <okerixx@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f6d3320a59d9..ae70ebba36c4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4601,6 +4601,8 @@ static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submo
 
 static int qmp_combo_reconfigure_phy(struct qmp_combo *qmp, enum qmpphy_mode new_mode)
 {
+	int ret;
+
 	dev_dbg(qmp->dev, "qmp_combo_reconfigure_phy: switching from qmpphy mode %d to %d\n",
 		qmp->qmpphy_mode, new_mode);
 
@@ -4615,7 +4617,9 @@ static int qmp_combo_reconfigure_phy(struct qmp_combo *qmp, enum qmpphy_mode new
 	qmp->qmpphy_mode = new_mode;
 
 	/* Now everything's powered down, power up the right PHYs */
-	qmp_combo_com_init(qmp, true);
+	ret = qmp_combo_com_init(qmp, true);
+	if (ret)
+		return ret;
 
 	if ((qmp->usb_init_count || qmp->usb4_init_count) &&
 	    new_mode != QMPPHY_MODE_DP_ONLY)
@@ -5166,6 +5170,7 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 {
 	struct qmp_combo *qmp = typec_switch_get_drvdata(sw);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
 
 	if (qmp->qmpphy_mode == QMPPHY_MODE_USB4) {
 		/* QMPPHY has no orientation handling in USB4 mode, don't cache the setting */
@@ -5186,7 +5191,10 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 			qmp_combo_usb_power_off(qmp->usb_phy);
 		qmp_combo_com_exit(qmp, true);
 
-		qmp_combo_com_init(qmp, true);
+		ret = qmp_combo_com_init(qmp, true);
+		if (ret)
+			return ret;
+
 		if (qmp->usb_init_count || qmp->usb4_init_count)
 			qmp_combo_usb_power_on(qmp->usb_phy);
 		if (qmp->dp_init_count)
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
