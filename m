Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 585F1C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 13:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo3H6/18dtUmRLwpguB1eNcAKR+pKhYSo7CjDDWBvq0=; b=pz+H0Ks0ULfmSl
	QbsrRXDazEH7j29MB9jiz61W9VoA0CTHaEB3Ris8WuAnT3OeH0Rj9sorvLr5c73nT2P8LKilD167V
	WDKuRO9H1NjEFYmaN7GtvFA6HbsvaYNEbXhqxlbV9rEttsWw99BU0wkbqkU/nMvSWZ4bmNhnVXhm1
	7K9jneCkjL0CRjdrLGkAaE/IgHndfXDEe0zrb1El34iV/aiza4caJAq1mUcIumUcccKc9qZLe/zg1
	1/lx4nuPZRGQtSJKPli0EuCJKCyDXtSNPAwCR921l/mEJVtMTU7Cfg7KKEOrps6Ez0aeX9atC/3vd
	tdMnAzDhCp0LgbYrpJAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pqI-00000009Ha6-2dci;
	Wed, 16 Sep 2026 13:38:30 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pqE-00000009HYB-32E4
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 13:38:28 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843f22dc83so641743f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789565905; x=1790170705; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6Or2QBqTu0XO5TqiywS1dagQ1+7oN0y+saD1nDD1L5c=;
        b=G4oRZaeMesFQVygI5I8l3vwlPut5jlMlHDcOMFUftDWuqUfNrQRZltJIvhfEJNwlEf
         B16yF/CsVEfmlEdQswWwKyM/ufe1ehfPKr8MX7zSqISx8rmjxYmEf5cQ1szH+Mr/B0im
         Ec4a1P6umGzraCcc0ZRS/zThdMrI/mG/hhRj4vNCPmkjniO6gN0vhOpG2/qZs80e97SU
         jiK7L2pNJXwQYDAWl6ROBP8/DDywDMIm8jTOnHvq0ipp7E9F1EUKcDoKRYw1XqNQ3DwM
         lBAJiYYeQHOleF8w0u+h4EDZKuQUlbXntM1eAGUZVK/fmLqlbldLpVfOfzDjBqrQrEQH
         1iQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789565905; x=1790170705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6Or2QBqTu0XO5TqiywS1dagQ1+7oN0y+saD1nDD1L5c=;
        b=YnQPIEV4hURg50pLl2s43c3uDIuoSkke3WtKjhg14x1Yh/fTxKDH8nVBaNcndd90k1
         Oq0sSbTZ9+212xYZgW9v77O14DMFjc8DYl/E3X5QfmnPU6dA6N+KpNGnOiIWVSkLDQ4I
         1Jc4WNDhKToAo+M7YIIhK1Rox38yU3zbDxlJHyw0CcReX8gI9w0qpSKrj91sThPy7+3z
         pn/9Pw9C6CXeQankgu1+lFNXb66z6jtWO8lxymbDzw/AAqwmHaf9DsM2EyycfaWYbWm6
         SNdqL63xEwPPULGzPOJ+y/h0YIdmszqyew5u5jWrV9edj6PsaZQfxGoPhE9GMWG+u6k1
         YLkg==
X-Forwarded-Encrypted: i=1; AKwUvBymPo0GlczpgxCh1D6Qw8PDoy4vs7umoaDfGXtzpCpnfMxnjgbpBRmoLPGoOf6h29mU1/dHEhn55hc=@lists.infradead.org
X-Gm-Message-State: AFuF++lZDxryvhPDNdmB1YRJOas8rg503BFBOx8Q3LLPIw9gQC9Trmsd
	qSs+0AJg9Ec8t//52LkBi+SlMomxhPMhOBP010UvTCiq6nzpRt2gS4C1
X-Gm-Gg: AYBFou06S2wNGk2+rAYHMjZ2W+KWIpeJbEa1xZFf+BhIokhTbrtWPAoBRHJjfKG0e7u
	Y58oi1udkK6nGTplUC0UvRgtStSgpys1VXLmRnd5HNG7l0crmnzLNjq/m9opPKE7Y+G/8/n9cKI
	nwUnDYP/RVtxgqKJdnxU6k/tXdo51xjxjsO1LmN5d1n5gEOvUj+wjtfbOXNQCLrVnmWKpqHKTVG
	EkXywRXgWrxRNlriAbU3LhA7XEZSqM17dj4xj8SUbzhchdhGb8txYWNTZiQMDcT6VdlKr6PuDBb
	OLYCCQrRlE69Lqqu9X3rl/Jr75e/BtbfUMpLdAYKR5hjsjEzjvSZ2QwFCxKRH0S/ouPnLrwc4pU
	TAeVgOX22jKvGl4CjNu4yhYjx5BsaI+02iFyr2NcS3flIgfy1w2BtEFVGaMYjQ0BtSFII+IvBX6
	MOYtLkCbqnPOPyTUp8d1PpU9xE1tvJq8XhU3XD6le/ddsyXMeLdFDpd5Romjnyrv6w3IiJ+WIvk
	6zyjlnWGkw=
X-Received: by 2002:a05:600c:8819:b0:49d:1fa8:b266 with SMTP id 5b1f17b1804b1-49eb732b40emr29254665e9.26.1789565904385;
        Wed, 16 Sep 2026 06:38:24 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49e83da9a7csm77085295e9.11.2026.09.16.06.38.23
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
Subject: [PATCH v3 1/2] phy: qcom: qmp-combo: hold a runtime PM reference in the typec callbacks
Date: Wed, 16 Sep 2026 15:38:13 +0200
Message-ID: <20260916133814.3977-2-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260916133814.3977-1-okerixx@gmail.com>
References: <20260916133814.3977-1-okerixx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_063826_848298_F4350586 
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
