Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D318606A333
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 12:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sGlgQS7U;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=UW6WrAMJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uw7lhAnefu+QSYoplxmaeAvSmylGhGVwNO9fIJUBcRY=; b=sGlgQS7UyX3gD4G7fh5erNuMah
	a4hIz2NxMLrSdfj2Xa0MNuuKgVu3keoWi5OuxPHDi9HfwTKl+/arNJeg9tJTl55A43ZRDAUA4qWsf
	eiO278esjP1bkXYdU12UrPHWPGmdABC6XaoctQoZlR39yeODcGaSOcSHwnIUkoXPZDJJCOHZmapjj
	9Ikc7tJCDuSsf8Yl9GTJoq64DtH7V0zQ60tEONkgIp+WJ+ops6xzduqGlX9bkZwYsTGP8OMkPsQtc
	4Eh8r/8HR16Ee1ASaI3+Ruiuz7s0SkiU15t4GsEqyzPlfrKi0vnuokp2GUCvzWNwmGnMNSrLvIOY5
	PjCEJ5PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1Wq-0000000Bukq-4BAb;
	Thu, 19 Nov 2026 12:46:17 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1Wo-0000000Bujf-3jKR
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 12:46:16 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-1a8cc11ac42so2996986c88.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 04:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795092374; x=1795697174; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0iPXnLBRgsFjg+wYw1PG5Daqt3HMqIDO6IZ/AU/9sqI=;
        b=UW6WrAMJ36uKZbCEvs2iCAxjves0t/zbX/cQHTEC3V1hpqtutwtkMx8gfjrl6bnQtQ
         kOlsrdyXnDfcGf2DtWmSXEEDmACD5BckrfUEXSwCHRPEVFYFqvgmW15JYPPLEsoc9UzC
         qEE8qW+LYN9AeFyowsdvSpuEDBCXbp808DqAe2GurSKx1Bmxad2uxOlvys0FK9CZKMjT
         jkWNNLyhsBQLTiY4xuQZq/eYaH0FefQ0reM3FcB/NDWYmDtru5LbQF7Xt/0GnJCC7frw
         sAuImnsBf/hmmI4I3lllWAoMxqR7Wf23G63O8xizIOS3djTxrW7AxCn5V861qnJrpStF
         mmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795092374; x=1795697174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0iPXnLBRgsFjg+wYw1PG5Daqt3HMqIDO6IZ/AU/9sqI=;
        b=aOM7WKjwtDV1r1Yxk/pyjIGNOKRHMJ+UIZHs/YzrEvtOhAawlF9QrMJEwsRQK6ezVG
         kjZ3+OWd+TDy+zhDBFItWOlWheJa23rX1ikyD8Bk0ii9hr6zSWY3pj8/Uey7tes36vu9
         8nL0hpVMVRbyD3Szi3wWbCOqNEqWwnOP5vGXoY67vw5AxlsceuRitPfkTelPxEZcMwoc
         GbHpaVLkihCnq5ApXe0WeKPinZNbb4/37Oeb1BgQg0uQdd6AlNjPimYqNHBs8Y/ZkqaX
         ds9m1H7P/fMdHOC80U0CF2UVSmbPUUDn3g9z2cz4fJqalckcRnCdOj5LxGvp8vwtE6pv
         XEsw==
X-Forwarded-Encrypted: i=1; AL+hErGGTHev3UTQm0AEgcClCVH3AKRIqpz40/hB8CWX1uT8z3E1GlRTLvlV198VCTp1+XmpZjhM7eYL6rA=@lists.infradead.org
X-Gm-Message-State: APuU4Z+Mptsou337hv4d0O0OnY6L5U8lrTpP712SXnSoxeryGh0M1EvX
	Hw7btK2kCZqYKoxWaPYvFRHoCpFrEw9l5ZTrD9aS/17V71WvLJkd1VAO
X-Gm-Gg: AYBFou2rV+IWPh4DCyOBBDykTDqSAjhynm3La3u2MaYaL0Od7bAFEFii6ncxMQKC9bC
	MLPq1kXB0Ab5G8jvFjfJ8EhSuNNCXLQUE6K0ZMtSn/znb28yMNbO+CaKHNmw+livwmVyrA5E5ls
	r4Mm5DIp1qdN79XJABM/MdP4CYkyb35du3PB2mkvWOR8Y8dDNrjwsUF1ovPmCZrfZP/cfPkLutT
	9NJjCtt7V4Sc/8JrwljJmzmbCRzeolgz4pqT5zUb5fy9sDOI7w8lnQi8v6MyZPKT4xuxgfm1Uwl
	MlO1PHgFdmfWZxZKr7umxxETvxcUX4cMEEk1YlZHDEZ+1Be8qf/5h6WkAp5Eh6JV94X/8vzjjNi
	vcNiPdoUfkk2DHHAARorO5WH/u7G5H6RD1QuWJHqzTdAZ2wuBh2WPYjokY+MeMGg9nHmlaEnZb+
	hKxtvvDJm2ILCvW4kWSidcnzxxg/Dk/09TGi+iNLpL9xPIkAyMAHraChM7073ZwidXKHASfdJ9f
	1RhlTpbvaAUY65QDdlxgoP8gmO675foh8Mm8zOlaX3iR0Dsai1V9pL0uvLt6JNWu7Tud83sGFkQ
	mb6z3QBeJXAj6uULf/e9fLoenwf8fi9kLmw=
X-Received: by 2002:a05:701a:844e:10b0:1b0:430d:d81c with SMTP id a92af1059eb24-1b543cebc8emr5200498c88.25.1795092373748;
        Thu, 19 Nov 2026 04:46:13 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([2001:e60:8509:ba6c:11e:f696:8454:757])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5447da7e0sm22350329c88.9.2026.11.19.04.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 04:46:13 -0800 (PST)
From: Joonhoe Kim <26rote@gmail.com>
To: gregkh@linuxfoundation.org,
	Thinh.Nguyen@synopsys.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	heikki.krogerus@linux.intel.com,
	abel.vesa@oss.qualcomm.com,
	abelvesa@kernel.org,
	wesley.cheng@oss.qualcomm.com,
	krishna.kurapati@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org,
	val@packett.cool,
	balaji.kalkonda@oss.qualcomm.com,
	tvlad744@gmail.com,
	effeffe99@gmail.com,
	prashanth.k@oss.qualcomm.com,
	yongxing.mou@oss.qualcomm.com,
	peter.chen@oss.qualcomm.com,
	tapas.rana@oss.qualcomm.com,
	vkoul@kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] usb: dwc3: qcom: Use the UTMI clock as PIPE clock in DisplayPort-only modes
Date: Thu, 19 Nov 2026 21:45:58 +0900
Message-ID: <20261119124558.1548-3-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <20261119124558.1548-1-26rote@gmail.com>
References: <20261119124558.1548-1-26rote@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_044615_021081_7AACDBC9 
X-CRM114-Status: GOOD (  31.81  )
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

With DisplayPort pin assignment C or E the QMP USB3-DP combo PHY gives
all four lanes to DisplayPort and powers its USB PCS down. The
controller can still run USB 2.0, e.g. for the hub of a USB-C monitor.
Keeping the pipe clock branch enabled, as commit f546912bcac6 ("phy:
qcom: qmp-combo: Move pipe_clk on/off to common") does, is not enough on
Kaanapali. The next xHCI reset in this mode times out ("Host halt
failed, -110"), and USB stops working until the cable is replugged.

Register the glue as a Type-C mode switch when the node has the
"mode-switch" property. Select the UTMI clock as PIPE clock in DP-only
modes, as "qcom,select-utmi-as-pipe-clk" does statically.
typec_mux_set() calls the switches in the order of the connector's
ports. Port 0 (HS, the controller) comes before port 1 (SS, the PHY).
So the controller switches before the PHY powers its USB side down.

The safe and USB states can come with the DisplayPort altmode, so only
the modal states with the DisplayPort SVID count as DisplayPort. Pin
assignment C or E always selects the UTMI clock. Go back to the PIPE
clock when a USB state follows the safe state. A change from C/E to
D/F while DisplayPort is active keeps the UTMI clock: the PHY may keep
DP-only mode then, and the UTMI clock still runs USB 2.0 if it does
not.

Read the selected clock back from QSCRATCH, as on some SoCs it loses
its contents in system suspend.

The mux callback does not resume the glue. From the start of a
runtime or system suspend until the core has resumed, the callback only
records the state. The resume paths apply it before the core resumes,
and again once the core has resumed or when the suspend fails.

The mux needs the Type-C class, so depend on TYPEC || TYPEC=n as
PHY_QCOM_QMP_COMBO does, and do not register the mux without it. With
the arm64 defconfig (TYPEC=m) this builds the glue, including
dwc3-qcom-legacy, as a module.

Signed-off-by: Joonhoe Kim <26rote@gmail.com>
---
v4:
- mutex_lock()/mutex_unlock() where nothing returns early (Krzysztof)
- Leave the probe code as it was apart from the new argument (Krzysztof)
v3:
- Rebase on Filippo Falezza's "usb: dwc3: qcom: Restore UTMI PIPE clock
  on resume" and use its utmi_as_pipe_clk
- Compare with the clock selected in QSCRATCH, not a cached value
- Check the safe state before the altmode: the safe and USB states can
  come with the DisplayPort altmode (Sashiko)
- Always select the UTMI clock for pin assignment C or E (Sashiko)
- Do not resume the glue from the mux callback. From the start of a
  runtime or system suspend until the core has resumed, only record the
  state; apply it before and after the core resumes, and when the
  suspend fails (Sashiko)
- Leave the clock select alone on nodes without a mux
- Only record the state once remove has started
v2:
- Switch back to the PIPE clock from the mux callback, not on a role
  change (Sashiko)
- Keep dp_only while DisplayPort is active, as the PHY keeps its mode
- Defer the clock switch to resume while suspended for system sleep
- Depend on TYPEC || TYPEC=n, skip the mux without CONFIG_TYPEC (Sashiko)

 drivers/usb/dwc3/Kconfig     |   1 +
 drivers/usb/dwc3/dwc3-qcom.c | 150 ++++++++++++++++++++++++++++++++---
 2 files changed, 138 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index 18169727a..282f366de 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -132,6 +132,7 @@ config USB_DWC3_QCOM
 	depends on ARCH_QCOM || COMPILE_TEST
 	depends on EXTCON || !EXTCON
 	depends on OF
+	depends on TYPEC || TYPEC=n
 	default USB_DWC3
 	help
 	  Some Qualcomm SoCs use DesignWare Core IP for USB2/3
diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index f4ce035d4..d80c7ee39 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -19,6 +19,9 @@
 #include <linux/iopoll.h>
 #include <linux/usb/hcd.h>
 #include <linux/usb.h>
+#include <linux/usb/typec_altmode.h>
+#include <linux/usb/typec_dp.h>
+#include <linux/usb/typec_mux.h>
 #include "core.h"
 #include "glue.h"
 
@@ -82,6 +85,13 @@ struct dwc3_qcom {
 	bool			is_suspended;
 	bool			pm_suspended;
 	bool			utmi_as_pipe_clk;
+	bool			dp_active;
+	bool			dp_only;
+	bool			mux_deferred;
+	bool			mode_switch;
+	/* protects dp_active, dp_only and mux_deferred */
+	struct mutex		pipe_clk_lock;
+	struct typec_mux_dev	*mux;
 	struct icc_path		*icc_path_ddr;
 	struct icc_path		*icc_path_apps;
 
@@ -336,16 +346,19 @@ static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
 		dwc3_qcom_enable_port_interrupts(&qcom->ports[i]);
 }
 
-static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
+static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom, bool utmi)
 {
-	/* Configure dwc3 to use UTMI clock as PIPE clock not present */
 	dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
 			  PIPE_UTMI_CLK_DIS);
 
 	usleep_range(100, 1000);
 
-	dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
-			  PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);
+	if (utmi)
+		dwc3_qcom_setbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
+				  PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);
+	else
+		dwc3_qcom_clrbits(qcom->qscratch_base, QSCRATCH_GENERAL_CFG,
+				  PIPE_UTMI_CLK_SEL | PIPE3_PHYSTATUS_SW);
 
 	usleep_range(100, 1000);
 
@@ -353,6 +366,39 @@ static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
 			  PIPE_UTMI_CLK_DIS);
 }
 
+static bool dwc3_qcom_utmi_clk_selected(struct dwc3_qcom *qcom)
+{
+	return readl(qcom->qscratch_base + QSCRATCH_GENERAL_CFG) &
+	       PIPE_UTMI_CLK_SEL;
+}
+
+static void dwc3_qcom_update_pipe_clk(struct dwc3_qcom *qcom)
+{
+	lockdep_assert_held(&qcom->pipe_clk_lock);
+
+	if (qcom->mode_switch && !qcom->utmi_as_pipe_clk &&
+	    qcom->dp_only != dwc3_qcom_utmi_clk_selected(qcom))
+		dwc3_qcom_select_utmi_clk(qcom, qcom->dp_only);
+}
+
+static void dwc3_qcom_defer_mux(struct dwc3_qcom *qcom)
+{
+	mutex_lock(&qcom->pipe_clk_lock);
+	qcom->mux_deferred = true;
+	mutex_unlock(&qcom->pipe_clk_lock);
+}
+
+static void dwc3_qcom_undefer_mux(struct dwc3_qcom *qcom)
+{
+	guard(mutex)(&qcom->pipe_clk_lock);
+
+	if (qcom->is_suspended)
+		return;
+
+	qcom->mux_deferred = false;
+	dwc3_qcom_update_pipe_clk(qcom);
+}
+
 static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
 {
 	u32 val;
@@ -413,7 +459,11 @@ static int dwc3_qcom_resume(struct dwc3_qcom *qcom, bool wakeup)
 	 * clock ("failed to enable ep0out").
 	 */
 	if (qcom->utmi_as_pipe_clk)
-		dwc3_qcom_select_utmi_clk(qcom);
+		dwc3_qcom_select_utmi_clk(qcom, true);
+
+	mutex_lock(&qcom->pipe_clk_lock);
+	dwc3_qcom_update_pipe_clk(qcom);
+	mutex_unlock(&qcom->pipe_clk_lock);
 
 	/* Clear existing events from PHY related to L2 in/out */
 	for (i = 0; i < qcom->num_ports; i++) {
@@ -446,6 +496,54 @@ static irqreturn_t qcom_dwc3_resume_irq(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int dwc3_qcom_mux_set(struct typec_mux_dev *mux,
+			     struct typec_mux_state *state)
+{
+	struct dwc3_qcom *qcom = typec_mux_get_drvdata(mux);
+	bool dp = state->mode >= TYPEC_STATE_MODAL && state->alt &&
+		  state->alt->svid == USB_TYPEC_DP_SID;
+
+	mutex_lock(&qcom->pipe_clk_lock);
+
+	if (state->mode == TYPEC_STATE_SAFE) {
+		qcom->dp_active = false;
+	} else if (dp) {
+		if (state->mode == TYPEC_DP_STATE_C ||
+		    state->mode == TYPEC_DP_STATE_E)
+			qcom->dp_only = true;
+		else if (!qcom->dp_active)
+			qcom->dp_only = false;
+		qcom->dp_active = true;
+	} else if (!qcom->dp_active) {
+		qcom->dp_only = false;
+	}
+
+	if (!qcom->mux_deferred)
+		dwc3_qcom_update_pipe_clk(qcom);
+
+	mutex_unlock(&qcom->pipe_clk_lock);
+
+	return 0;
+}
+
+static int dwc3_qcom_mux_register(struct dwc3_qcom *qcom)
+{
+	struct typec_mux_desc desc = {};
+
+	if (!IS_ENABLED(CONFIG_TYPEC) ||
+	    !device_property_present(qcom->dev, "mode-switch"))
+		return 0;
+
+	desc.drvdata = qcom;
+	desc.fwnode = dev_fwnode(qcom->dev);
+	desc.set = dwc3_qcom_mux_set;
+
+	qcom->mode_switch = true;
+	qcom->mux = typec_mux_register(qcom->dev, &desc);
+
+	return PTR_ERR_OR_ZERO(qcom->mux);
+}
+
 static int dwc3_qcom_request_irq(struct dwc3_qcom *qcom, int irq,
 				 const char *name)
 {
@@ -692,7 +790,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 				"qcom,select-utmi-as-pipe-clk");
 	qcom->utmi_as_pipe_clk = ignore_pipe_clk;
 	if (ignore_pipe_clk)
-		dwc3_qcom_select_utmi_clk(qcom);
+		dwc3_qcom_select_utmi_clk(qcom, true);
 
 	qcom->mode = usb_get_dr_mode(dev);
 
@@ -709,6 +807,10 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 			qcom->current_role = USB_ROLE_DEVICE;
 	}
 
+	ret = devm_mutex_init(dev, &qcom->pipe_clk_lock);
+	if (ret)
+		goto clk_disable;
+
 	qcom->dwc.glue_ops = &dwc3_qcom_glue_ops;
 
 	qcom->dwc.dev = dev;
@@ -726,6 +828,10 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	if (ret)
 		goto remove_core;
 
+	ret = dwc3_qcom_mux_register(qcom);
+	if (ret)
+		goto interconnect_exit;
+
 	wakeup_source = of_property_read_bool(dev->of_node, "wakeup-source");
 	device_init_wakeup(&pdev->dev, wakeup_source);
 
@@ -733,6 +839,8 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 
 	return 0;
 
+interconnect_exit:
+	dwc3_qcom_interconnect_exit(qcom);
 remove_core:
 	dwc3_core_remove(&qcom->dwc);
 clk_disable:
@@ -749,6 +857,10 @@ static void dwc3_qcom_remove(struct platform_device *pdev)
 	if (pm_runtime_resume_and_get(qcom->dev) < 0)
 		return;
 
+	if (qcom->mux) {
+		dwc3_qcom_defer_mux(qcom);
+		typec_mux_unregister(qcom->mux);
+	}
 	dwc3_core_remove(&qcom->dwc);
 	clk_bulk_disable_unprepare(qcom->num_clocks, qcom->clks);
 	dwc3_qcom_interconnect_exit(qcom);
@@ -763,17 +875,23 @@ static int dwc3_qcom_pm_suspend(struct device *dev)
 	bool wakeup = device_may_wakeup(dev);
 	int ret;
 
+	dwc3_qcom_defer_mux(qcom);
+
 	ret = dwc3_pm_suspend(&qcom->dwc);
 	if (ret)
-		return ret;
+		goto undefer;
 
 	ret = dwc3_qcom_suspend(qcom, wakeup);
 	if (ret)
-		return ret;
+		goto undefer;
 
 	qcom->pm_suspended = true;
 
 	return 0;
+
+undefer:
+	dwc3_qcom_undefer_mux(qcom);
+	return ret;
 }
 
 static int dwc3_qcom_pm_resume(struct device *dev)
@@ -790,10 +908,9 @@ static int dwc3_qcom_pm_resume(struct device *dev)
 	qcom->pm_suspended = false;
 
 	ret = dwc3_pm_resume(&qcom->dwc);
-	if (ret)
-		return ret;
+	dwc3_qcom_undefer_mux(qcom);
 
-	return 0;
+	return ret;
 }
 
 static void dwc3_qcom_complete(struct device *dev)
@@ -816,9 +933,13 @@ static int dwc3_qcom_runtime_suspend(struct device *dev)
 	struct dwc3_qcom *qcom = to_dwc3_qcom(dwc);
 	int ret;
 
+	dwc3_qcom_defer_mux(qcom);
+
 	ret = dwc3_runtime_suspend(&qcom->dwc);
-	if (ret)
+	if (ret) {
+		dwc3_qcom_undefer_mux(qcom);
 		return ret;
+	}
 
 	return dwc3_qcom_suspend(qcom, true);
 }
@@ -833,7 +954,10 @@ static int dwc3_qcom_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	return dwc3_runtime_resume(&qcom->dwc);
+	ret = dwc3_runtime_resume(&qcom->dwc);
+	dwc3_qcom_undefer_mux(qcom);
+
+	return ret;
 }
 
 static int dwc3_qcom_runtime_idle(struct device *dev)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
