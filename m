Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3921BC88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 12:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo3H6/18dtUmRLwpguB1eNcAKR+pKhYSo7CjDDWBvq0=; b=oo2JeZNp4zGAFi
	z1wfFGB2+SrU4sDWvb7/uCeie+72+da/vqD6rR2sTRsaoAECBDa3csSnO0Yd5ryMy7q1h12VVYQhJ
	mZ5QC4yqa0Z+YZFmw6GDo1J8hSIEGsnWd76dn88VqoymHoiN8PB98Dt+8l2m2h7BcLHo8GONtyGA9
	HVxLU9sD+u0Vdy8NkTr/QZmPz7clbWHp9PvTt4bU2phUw04YDYVVmpG80XcwL4O94cO2xFQ1GoEZ2
	16WjwwcSawNCnw1VGmBdOiZdhiG04n9jEHz3Nbz8pnnhXv+n6Lq11cH5kv1A0OtdkFBQP0FYwyQRH
	9GgQ6z3R5kNu0RkaGREw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pBj-00000009DcP-3j7s;
	Wed, 16 Sep 2026 12:56:35 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pBf-00000009DbN-2090
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 12:56:34 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-485984ebf5cso598815f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 05:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789563390; x=1790168190; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6Or2QBqTu0XO5TqiywS1dagQ1+7oN0y+saD1nDD1L5c=;
        b=UxaG5uI/KSDxyvC2qY87lHTI33t6tb0PFvF6HIfbzzkvukVZZdEkT36jJUGFOwMwIp
         iVqo4kzZJMAlrMd2qUHscu7jh6LXaj7b8CUsPUdV3sB5KcvscQttHXa6XfDKEU+cJVJb
         nlA/1aLUnSUCJ+KgYBIK8p6FVZtsagl7UqbIjOF+L+OMsORZR8KC17a6KXL5WEcSBCdu
         w6tA3vMjiHnzQr2b6hjXlP39vRR4m72XrU11b6QonzQYH0sLLvUtdgSwQe4qpRAvABSm
         YdCOb3Dvh7SdTQ/D1WFGmBqpN8j/W8vlLyWL3pBl3zg3eLhR4d5Nl1zBwXaCvW4AMMxz
         gqgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789563390; x=1790168190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6Or2QBqTu0XO5TqiywS1dagQ1+7oN0y+saD1nDD1L5c=;
        b=h7q97tKrzHNb+Vb1XTSWYxLkgfVzndOfmjYvJFAKMlOt0s14L3IlO9OKanQqM4SCht
         12pJp6G30RPi3XLWh6i28KO5P6mqw2WB/gnZ1esTjSnCcQaAUBtPrNNMYPvYUaY9EWAx
         vPXsTwAqtPuh3L3fIPMpXhqpCqt9tgy/dTBuPcCAYiJUcitMXpbVxAxAPW2IvGXizSk9
         yg0FsLcRYCvwTN14p4XmvTCkXLUoZHxgBF00cAnwc3T5wiA4Tjlg6xu3HifixBbQBXwe
         oE9ZeUPfCdWy92GIVUG69KZk2ONnk5tbcemr3rxSIWdvKt1gMIyenjGZ6pJ3KiIRGLmk
         S31Q==
X-Forwarded-Encrypted: i=1; AKwUvBzm2HTJqejfj2nHmLgRenN8wCJPhfNkRDUvQFGzzehe3ArMfk3LrGIAD5RGnRvF5ZDAcUjxd0JkNIA=@lists.infradead.org
X-Gm-Message-State: AFuF++mkwtrcW7Ozp2Lx133djAsVH6OF2H/eFAL/ZN4HswI5kTA8oEmY
	isN1Xouf6ev+kjUVXa/58ccBh9isg+eJGtgRM3QI6gHr56Em4BKCtNx3
X-Gm-Gg: AYBFou0OjYeLlYDLUC4I0yrivCGyNKz2mBJIk9huaRsU3bfsI68iYXmeu5DLUkRawdj
	eP7yLivHOohWSYRwQI5zrUFr4oXMEEmNx0mRXCBN6hLT4Jg5ufwS6C40G93dPEyYY8r8Fg8OZdg
	HuD/oU8aYf6GbwhoNeMIbVoBTRc7zgihxHvnb8pFhqGviGyLIMaRqldHKBIAA1nO4pX+Ch35Hd6
	25sui3q8kc1xe91vtqC8MxuJnQN1Abwo0vYL3lTm/OtlUB9F65kcT1XUR4hauZfq/x3HvcA0wah
	lzI9fm9sg6VA6QfBuM/oOjl9JBTxI3kf3IZbvpFrrbNfwDaYOgKUCyHQWRnI9P5O5V1H0nxyCoF
	pGOrwniQ81vz5cZHOeaDt/IdYeplwvWqvTFsbeJrqfmj5CMCqnNdtmCXzcWMIWeFNc2v9BG0lby
	aZOfb2BRR3opNiyr+8Okak1PlatuKfBTeibyH2lne2yYrnp+ePaIV5ONyUMtkA/xk/X1Dm2yK23
	54ENm1VfYY=
X-Received: by 2002:a05:6000:460c:b0:487:8ef:5303 with SMTP id ffacd0b85a97d-4870cf44007mr3126887f8f.34.1789563389559;
        Wed, 16 Sep 2026 05:56:29 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4870bf342a0sm6750729f8f.24.2026.09.16.05.56.28
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
Subject: [PATCH v2 1/2] phy: qcom: qmp-combo: hold a runtime PM reference in the typec callbacks
Date: Wed, 16 Sep 2026 14:56:18 +0200
Message-ID: <20260916125619.4587-2-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260916125619.4587-1-okerixx@gmail.com>
References: <20260916125619.4587-1-okerixx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055633_618726_AD297344 
X-CRM114-Status: GOOD (  14.35  )
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
block down and bring it straight back up, calling qmp_combo_com_exit() and
qmp_combo_com_init() with force=true.  Both release and re-acquire the PHY
clocks.

Unlike the PHY operations, which the PHY core always invokes with a
runtime PM reference held - phy_pm_runtime_get_sync() in phy_init(),
phy_exit() and phy_power_on() - these two are typec_switch and typec_mux
callbacks and hold no such reference.  Releasing the clocks is then enough
to drop the device's last reference, so clk_core_unprepare() runs
pm_runtime_idle() and re-enters the driver through
qmp_combo_runtime_suspend(), which disables the very clocks that are being
torn down:

  gcc_usb3_prim_phy_pipe_clk already disabled
  WARNING: drivers/clk/clk.c:1259 at clk_core_disable+0x298/0x300
  Workqueue: events_freezable pmic_glink_altmode_worker
   clk_disable
   qmp_combo_runtime_suspend
   pm_generic_runtime_suspend
   genpd_runtime_suspend
   rpm_suspend
   rpm_idle
   __pm_runtime_idle
   clk_core_unprepare
   clk_core_unprepare
   clk_core_unprepare

qmp_combo_runtime_suspend() only checks init_count, which is still
non-zero at that point, so it proceeds and the clock enable and prepare
counts underflow.

Runtime PM is forbidden at probe, so this only becomes reachable once
userspace opts in through power/control - which is exactly what the
comment above pm_runtime_forbid() invites it to do.

Hold a runtime PM reference across the teardown and bringup so releasing
the clocks cannot re-enter the driver's own suspend callback.

Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
Signed-off-by: Oleg Keri <okerixx@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index fa1a91e67549..f6d3320a59d9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -16,6 +16,7 @@
 #include <linux/of_graph.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -5179,6 +5180,8 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->init_count) {
+		guard(pm_runtime_active)(qmp->dev);
+
 		if (qmp->usb_init_count || qmp->usb4_init_count)
 			qmp_combo_usb_power_off(qmp->usb_phy);
 		qmp_combo_com_exit(qmp, true);
@@ -5265,6 +5268,8 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 	if (!qmp->init_count)
 		return 0;
 
+	guard(pm_runtime_active)(qmp->dev);
+
 	return qmp_combo_reconfigure_phy(qmp, new_mode);
 }
 
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
