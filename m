Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CB6C982C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 13:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHr4IhXgpabNhvonnr12aM1b59gUtmvp1Jld6Hu3gA4=; b=qXepwFnSL9oFST
	Zni2FRI7GzfdhUmaK5YZD2CBjh7j8cdrn2M90a47f+iuqqTIx5rgVvG9GAk4Bkihk3TaJYnqARHG/
	OMYHXZX1M5EwZvNPQR6Mqqd64MaLJOTvNNK4da03YnkahUdFtWEiaYJGEt4+rQuTr9vlAAuJVRDA6
	aMB8F0vdyAe+ZitYa632ZdcurSG+RVAQP30b26OAUIKBwWcql9uu/VnyHAxdPi3JDY1RyOcUtg3P/
	GHIfXO2DDpS2ImFxu8J9fyxGCPC2w5KExMs+gu5CBSx10QlFYjcPWzdEkBa/5zlV8gcVA6+9u9/Oc
	zROYdCwKEdnH7XJz4trA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pqJ-00000009HaM-0fsC;
	Wed, 16 Sep 2026 13:38:31 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pqF-00000009HYU-1zUH
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 13:38:28 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49ccfd61ecaso8577485e9.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789565905; x=1790170705; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xz3HK6DDtKRl1abjqqVH54CfvADyJSGzyjE+gIk1aBg=;
        b=LAbGjMbGiz16BwbWEhCIyjOv6z4INEGJIq1Dq4wu4aPT+hAXwM7VR0KQEBlJ7amxbe
         xP0UsiFu0qo4BY7FHT3KdIwuyJuDbRsOvf8hD5TjpJBd8vbW59DkIDWcdAar/FJEHEFx
         tjfax8TQ9r1suyX4eV4EW1Yt6jN145VpO4C0dKRNcYeuv0UODJM8DHh5qdPB4aY7qYKE
         UC3a+f/FN/reExQg4hPhd2kusGGNKP16qPzBFObgovnGHoaDppXC3Z0KDq3atLuK9pVT
         p3b9rfpEGLTa/UwkhCBwuSvxX5S91/5Wuv4mnlmGltp9bm/aNhyAZeQfASvLLnE4YDJt
         BUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789565905; x=1790170705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=xz3HK6DDtKRl1abjqqVH54CfvADyJSGzyjE+gIk1aBg=;
        b=GZRBxNTdgiPQsQ4cOdv7dnCFf/JmcyFdAkUU+nrOkZ6CPR2gxdexuxqy5kpWC4I0xG
         aBzXyN5QsW+UUCEYpFIJq552TvUpRGgQE1Q8ka8Sa3KBitVm8Rf+pCvODbdVh3tAISMw
         R3zF0X9vyAvS9VIKqp1rPyFEq4N3HExqDTEFiFAlDrTtafqWNVL/4H26xOetx3g78Dfn
         ijDwg95xuZxos8h+OmTNIUhpq4gWPWgrd8gGrDATkWB7QOIeaUkhaFMoIcC5aaTzWRCE
         wsgoWlhuseiZWfh0EQ/OzNf92M2pTma9WvQDdHmMwXN2SaAzUd2phGs+QFG+KadN0VqD
         t+pg==
X-Forwarded-Encrypted: i=1; AKwUvBxxpc4Zl1POFidl211bM/OnkepcsUw/BzV0nm8NZxcG9vvxFepaQfqnwUVHoVkVEcRfv9ufO0oEZYc=@lists.infradead.org
X-Gm-Message-State: AFuF++loaWKbZ2Y74pYBpw5drC5Sx1JUeS7QXBdJT3ToS5Y4gzzCcLqY
	4t2+0Vv+rIIQ0dEJ4M3cMO41sEm7H1upAqpsYnDzEPRIr1iwTOdGgqml
X-Gm-Gg: AYBFou3hC2qLBW8njO6QjcoE5bV3Mb+UUkMdTsPXWa9GoR1QYnwQQkXXiKyGwv85nVI
	2fICoDpjBJAJZ4M3N3CwrMg92k8Rx+KL+w11KEBIhoOzaHLb+3xD3oX1F4yCetGaL7TchO91DEC
	0W4IXSV+/xT+Fkb0eZn4A40FQYSFKcb8YWuYjXOm33AAQoCbBjgU5BIbcz3HbDTruBoRKr/S2ag
	JE/Ci79GqhV5zsqC0Z0P8lHvaexGAmKw6jrHdEjixMvkR/hb/NMf9m8r96rCvQ4QXCUJRFDVSR7
	UxlOZUd4+ZzkRFr71U0Atkdwl/nck/f6LggLFW83l49xpWSiRc7mks/6FIBN2K+dPfgp9D3vjza
	5ZKduUHeJqVreTY6I7IRatdaOniVBbJt3nl5j4O77sgHXDnGOU77u7wFaSwykwjyzWrH+ZimDBN
	OMafsTgSPPvBPKBwF2ucsJRHC3T4qroNtnwk78Rs3g66iT0oCJjEgU6tiMq2E/JSGh4D9+YLwav
	6j/YBpnPeGRtWbYc7TJ3w==
X-Received: by 2002:a05:600c:8b61:b0:49e:6891:27a8 with SMTP id 5b1f17b1804b1-49eb732e411mr28499095e9.25.1789565905075;
        Wed, 16 Sep 2026 06:38:25 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49e83da9a7csm77085295e9.11.2026.09.16.06.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 06:38:24 -0700 (PDT)
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
Subject: [PATCH v3 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init() in the typec callbacks
Date: Wed, 16 Sep 2026 15:38:14 +0200
Message-ID: <20260916133814.3977-3-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260916133814.3977-1-okerixx@gmail.com>
References: <20260916133814.3977-1-okerixx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_063827_648205_7EAC1804 
X-CRM114-Status: GOOD (  17.29  )
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

Propagate the failure instead.  Both callbacks record the requested mode
or orientation before the bringup, and skip the hardware entirely when
the next event asks for what is already recorded, so on failure put the
previous mode back and forget the orientation: the next Type-C event for
the same setting then runs the bringup again instead of being treated as
done.

The PHY is still left logically initialised with its clocks off until
that retry, which is the state any forced bringup failure already
produces and which these callbacks have no way to report to the PHY
consumers; what changes is that the register writes that would fault no
longer happen here.

Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
Signed-off-by: Oleg Keri <okerixx@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f6d3320a59d9..ccdf71730dc7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4601,6 +4601,9 @@ static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submo
 
 static int qmp_combo_reconfigure_phy(struct qmp_combo *qmp, enum qmpphy_mode new_mode)
 {
+	enum qmpphy_mode old_mode = qmp->qmpphy_mode;
+	int ret;
+
 	dev_dbg(qmp->dev, "qmp_combo_reconfigure_phy: switching from qmpphy mode %d to %d\n",
 		qmp->qmpphy_mode, new_mode);
 
@@ -4615,7 +4618,11 @@ static int qmp_combo_reconfigure_phy(struct qmp_combo *qmp, enum qmpphy_mode new
 	qmp->qmpphy_mode = new_mode;
 
 	/* Now everything's powered down, power up the right PHYs */
-	qmp_combo_com_init(qmp, true);
+	ret = qmp_combo_com_init(qmp, true);
+	if (ret) {
+		qmp->qmpphy_mode = old_mode;
+		return ret;
+	}
 
 	if ((qmp->usb_init_count || qmp->usb4_init_count) &&
 	    new_mode != QMPPHY_MODE_DP_ONLY)
@@ -5166,6 +5173,7 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 {
 	struct qmp_combo *qmp = typec_switch_get_drvdata(sw);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
 
 	if (qmp->qmpphy_mode == QMPPHY_MODE_USB4) {
 		/* QMPPHY has no orientation handling in USB4 mode, don't cache the setting */
@@ -5186,7 +5194,12 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 			qmp_combo_usb_power_off(qmp->usb_phy);
 		qmp_combo_com_exit(qmp, true);
 
-		qmp_combo_com_init(qmp, true);
+		ret = qmp_combo_com_init(qmp, true);
+		if (ret) {
+			qmp->orientation = TYPEC_ORIENTATION_NONE;
+			return ret;
+		}
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
