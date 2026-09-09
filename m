Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 563E2C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 14:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJPjzUFwTyRkH5AwBq2jSndj9L+DkbgUNS29kvhhuts=; b=K5q/2VyfpzsO30
	I23vFJz9Z8aD5QSKw5wbJAACW8Rb3GZ8rElmH0kZWm1CX+5g1cpYvJkOU5YsCrNLvwtaRLjoqZEhk
	Ca7yM67cHWslH1auv3infC5uI+hUKT9uNhpVB+1R5x4nkSt2hcDis37j8NubBUP/kqXGR0T7J8aXn
	S3tBahjyYjA9u0n7SSE/Sb48vvv2IY76lNf+I0oWYbP/URuNrhjUNJ06V6Z5Qsr5smCVIPdUQugvK
	en3OPgbl6Qrn5keagCg5EQtSc92gqgy9r8bctuWNt8COr2fQXqQUhX4Xtu6uM5POjVQLb3xklo5F3
	YKTqBz+RR4gnvmLkxmJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4IuB-0000000BsMA-0ica;
	Wed, 09 Sep 2026 14:04:04 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Iu7-0000000BsKA-2OwB
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 14:04:01 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-48436216a98so4121757f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 07:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788962637; x=1789567437; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=C81wLIgV9CTs/F+PgQEY8c1J5nQbz2h4oO8nmOwUCUA=;
        b=XkmmDdxGkHdvdfMduiZQkEJY8HoqDEgFTM/hZkO0N6lufk0whvnjAYRtHPbdB5a0W8
         MrT8Cu1jAdL2/sdAHHpmlDeSFmldwxhc3hLE8eBHk6LONehIHVmo85PlrPPNg/Cp/Th5
         Y5luq7RH9vzkgABf028A6KMPvw30FEDGJqurrLe14jXFlkDbv4Hbt0LqEPQmVavnuM3D
         rfxqDaWvpCbEK3tTI9G/X2AjIl6dSpSbeoL7hG9KC070b/8hKs+qQXZH/CGr7mVMJBVj
         fvybLIfRAUJrmHAbnDtMcobioRmhFy0d1ixd2i7n0qHUR+Lj/jpMd4eWq+uygKMFhtTP
         09ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788962637; x=1789567437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C81wLIgV9CTs/F+PgQEY8c1J5nQbz2h4oO8nmOwUCUA=;
        b=czykXI91QN19u4KVyaQxNSi/lrJVTipDhgCkt4mhvWcydXDFoN81ffa7oGdtWLaa7/
         uGcco9u/ax+r/WREHmOcqW4iccvFMWPFKYdBkA/lTlZS7n0nn048F03hPLFRiofGAWN5
         Kqe6LW9TGE193SXr6qod9ruUmILCen3dBy61q6DYmpWYjrmgzqJy5SKEgFrGyt5Z7Mf/
         HSh2AQ3EJVblXsp5CGo2AKxA0a30wWZylFv2UUsbnJnw/cgTxbWmRr8JvubqM6kQQ1wa
         cxMibmbeeqTWB7qo66C2NLr81+xz+15l1xwNQMSbhWIhyjRPdiu2SYlcQ2V475mbYhPs
         MOdw==
X-Forwarded-Encrypted: i=1; AKwUvBz655wj0qgRsh+WWslZH1hOeUPORcCI/kMrndrGsXOnFH5UUQu2wqlcQ0u6IULeILsa5KpY3GfmEAE=@lists.infradead.org
X-Gm-Message-State: AFuF++ldlmyv0nwdXyR+v8XK5raq9KLeKXZtAJjp5e9A8+BSW/1VypkM
	S2bJLeoj2yk63k7KlWKth4waxj0j87y9nJHLgEL71Qy9kS5uxm0jbTUs
X-Gm-Gg: AYBFou2pD/Mo4Sx7GVVcNFOXSyP1RK+j9HLGkgLygoRL+n+QEXnbMgorkHXWCX58b9d
	7140PKTTmH9iziastt5hwPqRhMjofR8pD82VC8OsMTV/zuu4po70sW0JPvcpCIcuWlYbLv/NVg8
	Jfl5XFuKXT8hGcdTABZcCPhxCws2LTnPjASfU3+usyZPIq4Nz9yqVLjfsQcPFsuXOYUUdm1gyOC
	ppEuFaYL92hTiouNtI6bjGy1tXqmdN06JEEyGTNqB6R7Eboiq/8QXntQxcdVXPYf3fYtTj0TP64
	dZbu3/8R17GejLYMCJkSQSLZeKWBFBjjQFhTh29EI8n65UDLbeLYmZEPTvX1kTszEobdj7h2rwt
	2tzqn7PKz6RXeORGjCSQbMBK2rcy4gwtM2+LyHrYmWYNwb98QK08ZR5uDcNPTea+40z0UJOkhWx
	67tZf9n17+F8bWw9+Gv/71QAKwvSjNl/E7a1rv8NSqSbg3veJSLloD+5LDyCBkU1NRCt1u5aIsZ
	71Ril34u9PC0+YSp+22+Ep0YdmKkGEMmiNPN/QIQsOmL8khSL/MPog=
X-Received: by 2002:a05:600c:c1d7:20b0:49c:ffe3:2b3f with SMTP id 5b1f17b1804b1-49cffe32f58mr232275715e9.3.1788962636654;
        Wed, 09 Sep 2026 07:03:56 -0700 (PDT)
Received: from localhost.localdomain (mob-31-26-103-238.net.vodafone.it. [31.26.103.238])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-485885bfdf6sm44956952f8f.34.2026.09.09.07.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 07:03:56 -0700 (PDT)
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
Subject: [PATCH] phy: qcom: qmp-combo: hold a runtime PM reference in the typec callbacks
Date: Wed,  9 Sep 2026 16:03:45 +0200
Message-ID: <20260909140345.4239-1-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_070359_671539_C7EC0E1B 
X-CRM114-Status: GOOD (  13.04  )
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
index d77fe94b312c..bf4d29fe1719 100644
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
@@ -4930,6 +4931,8 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
 	qmp->orientation = orientation;
 
 	if (qmp->init_count) {
+		guard(pm_runtime_active)(qmp->dev);
+
 		if (qmp->usb_init_count)
 			qmp_combo_usb_power_off(qmp->usb_phy);
 		qmp_combo_com_exit(qmp, true);
@@ -4997,6 +5000,8 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 	qmp->qmpphy_mode = new_mode;
 
 	if (qmp->init_count) {
+		guard(pm_runtime_active)(qmp->dev);
+
 		if (qmp->usb_init_count)
 			qmp_combo_usb_power_off(qmp->usb_phy);
 
-- 
2.55.0


base-commit: df2908090cda368b01ff43709f51890076c56157

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
