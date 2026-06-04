Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CA1CD6E79
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtUkVc3JhVsv3VIn67ZCJDOyjW5fCx+nTe8m7sfKSSw=; b=MnAzcSX5UWlQp/
	NVB9gjpgOwZxlacXrOcOSfG2BSobXWn/iet4+d5snQd0YE2B/oHnRHUksoNBvzzWl056vWIKXJNhK
	kIf9aVZz3RvQjxAkB688HBJ+KjIBuNu300cbtv879Xlf7XB9tn7uUhjZpbtxc2S7S3KNrFAh3fTbb
	lwo1Kf+zwrkRi+yG2Ah4Yof2IB+FHWszunaoOtK8Jl2uFuQSKKhXK81Ep70bNlFhvA0ahYCQrFMz0
	l14fBIBwtl3nL6NTsJ2zKPKvtXWLqaOqEgjPNndDBvY8JgPU25dl5zVJGcmSu5Pp4R9f4PAzxzO5w
	AlxXaEfOCWKMx/QA9htw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVArY-0000000H3tc-2w0e;
	Thu, 04 Jun 2026 16:24:08 +0000
Received: from outbound8.mail.transip.nl ([2a01:7c8:7c9:ca11:136:144:136:8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVArW-0000000H3sB-0IC7
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 16:24:07 +0000
Received: from submission5.mail.transip.nl (unknown [10.103.8.156])
	by outbound8.mail.transip.nl (Postfix) with ESMTP id 4gWVHs6wjGzY75P3;
	Thu,  4 Jun 2026 18:23:53 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 4gWVHs2qcDz2pRDjv;
	Thu,  4 Jun 2026 18:23:53 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	andersson@kernel.org,
	lumag@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	p.zabel@pengutronix.de,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH v2 1/1] phy: qcom: usb-hs: program MSM8x60 vendor ULPI registers on power-on
Date: Thu,  4 Jun 2026 18:23:52 +0200
Message-ID: <20260604162352.569269-2-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604162352.569269-1-github.com@herrie.org>
References: <20260604162352.569269-1-github.com@herrie.org>
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780590233; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=Y7wjYK4HK7OtMQzsSYJSaSoZLF/ROvJ75O2qVQ+vuQ0=;
 b=LqJck30XQs85yXynRbQD5/Y7hMXahNVbGVT/dV9Y7wDQ40cHcWysaVx6t/Z1cGvGvWst2z
 TxlY4V5kzQquXYyMLpKA9YlIkgdfrj6buE9LpHs578+P8X8gBMR+l1+qANX6dcRAD9F5fQ
 ldCsm0gviwSy2eD2AuhhjQsRcS9vfSO8uFXune2+L+Cg5w0uTSkaU6sm7NDomq4PFpxjmE
 vR/KUurnFcEmLJQBDXMeOpTHIJo/r8iPDLCTfFqVYsuIpeacC1RzixJ0J9Zanszd4tQon5
 v/lC0GfdyPk90nToWNy09lwbdfOyqafX5fmmOKxIeHpkHqs4gPFuoFvGcnCQQw==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_092406_376887_64B177D7 
X-CRM114-Status: GOOD (  17.93  )
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

The MSM8x60-class PHY needs three vendor-register tweaks for stable
USB operation, which the legacy msm_otg driver used to drive from
board platform data:

  - reg 0x32 bits [5:4] = 11b: pre-emphasis level set to 20%
    (Qualcomm reference setting, identical across every MSM8x60
    reference board, HP TouchPad and the HTC MSM8660 ports).
  - reg 0x36 bits 1, 2 set: CDR auto-reset and SE1 gating disabled
    (also identical across every MSM8x60 board surveyed).
  - reg 0x32 bits [3:0] = 5: HS driver slope.  This is the only
    board-specific value; the HP TouchPad uses 5 (matches the
    .hsdrvslope = 0x05 from the legacy mach-msm board file), while
    HTC MSM8660 ports use 1.  Since the TouchPad is the only in-tree
    consumer, the value is hardcoded here with a note; a
    per-compatible override can be introduced when a second
    MSM8x60 board lands.

The writes live behind a runtime flag that only matches
"qcom,usb-hs-phy-msm8660" so the existing MSM8226/8916/8960/8974
consumers are untouched.  They are issued *after* reset_control_reset()
so the values survive the register restore the reset performs.

Note: HTC's MSM8660 vendor kernels additionally write 0x0C to reg
0x31.  The HP TouchPad webOS kernel does not touch that register
and USB is stable without it, so those bits are omitted here until
documentation is available to explain what they control.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 drivers/phy/qualcomm/phy-qcom-usb-hs.c | 79 ++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs.c b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
index 98a18987f1be..80508885a5b0 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs.c
@@ -20,6 +20,28 @@
 # define ULPI_MISC_A_VBUSVLDEXTSEL	BIT(1)
 # define ULPI_MISC_A_VBUSVLDEXT		BIT(0)
 
+/*
+ * Raw ULPI vendor-register addresses programmed at probe time for the
+ * MSM8x60 / APQ8060 PHY variant.  These are NOT under
+ * ULPI_EXT_VENDOR_SPECIFIC; they live in the standard ULPI vendor
+ * range (0x30-0x3f) and are addressed directly.
+ */
+#define ULPI_MSM_CONFIG_REG3		0x32
+# define ULPI_MSM_HSDRVSLOPE_MASK	GENMASK(3, 0)
+# define ULPI_MSM_PRE_EMPHASIS_MASK	GENMASK(5, 4)
+# define ULPI_MSM_PRE_EMPHASIS_20PCT	(3 << 4)
+#define ULPI_MSM_DIGOUT_CTRL		0x36
+# define ULPI_MSM_CDR_AUTORESET		BIT(1)
+# define ULPI_MSM_SE1_GATE		BIT(2)
+
+/*
+ * Per-board HS driver slope.  Currently only the HP TouchPad (the only
+ * MSM8x60-class consumer that depends on this PHY initialisation) is in
+ * tree; HTC MSM8660 ports historically used a value of 1 here, so when
+ * those boards are added a per-compatible override will be needed.
+ */
+#define ULPI_MSM_HSDRVSLOPE_TENDERLOIN	0x05
+
 
 struct ulpi_seq {
 	u8 addr;
@@ -37,6 +59,7 @@ struct qcom_usb_hs_phy {
 	struct ulpi_seq *init_seq;
 	struct extcon_dev *vbus_edev;
 	struct notifier_block vbus_notify;
+	bool msm8x60_init;
 };
 
 static int qcom_usb_hs_phy_set_mode(struct phy *phy,
@@ -105,6 +128,54 @@ qcom_usb_hs_phy_vbus_notifier(struct notifier_block *nb, unsigned long event,
 	return ulpi_write(uphy->ulpi, addr, ULPI_MISC_A_VBUSVLDEXT);
 }
 
+/*
+ * Apply the fixed MSM8x60-class vendor-register initialisation that the
+ * legacy msm_otg driver used to drive from board platform data.  The PHY
+ * has just been reset by reset_control_reset() in qcom_usb_hs_phy_power_on(),
+ * so the registers are at their POR defaults and an RMW preserves any
+ * reserved bits the silicon expects.
+ *
+ *   - reg 0x32 [5:4] pre-emphasis = 20% (Qualcomm reference setting,
+ *     identical across MSM8x60 reference boards, HP TouchPad and HTC).
+ *   - reg 0x32 [3:0] HS driver slope = 5 (HP TouchPad value; HTC's
+ *     MSM8660 boards used 1.  This is the only board-specific bit and
+ *     is hardcoded for now since the TouchPad is the only in-tree
+ *     consumer; a per-compatible override can be added when a second
+ *     board lands.)
+ *   - reg 0x36 [2:1] CDR auto-reset and SE1 gating disabled (matches
+ *     every MSM8x60 reference board and HP/HTC vendor kernels).
+ *
+ * Note: HTC MSM8660 vendor kernels additionally write 0x0C to reg 0x31.
+ * The HP TouchPad webOS kernel does not touch that register and USB is
+ * stable without it, so we omit those bits until documentation is
+ * available to explain what they control.
+ */
+static int qcom_usb_hs_phy_msm8x60_init(struct qcom_usb_hs_phy *uphy)
+{
+	struct ulpi *ulpi = uphy->ulpi;
+	int reg32, reg36, ret;
+
+	reg32 = ulpi_read(ulpi, ULPI_MSM_CONFIG_REG3);
+	if (reg32 < 0)
+		return reg32;
+
+	reg32 &= ~(ULPI_MSM_PRE_EMPHASIS_MASK | ULPI_MSM_HSDRVSLOPE_MASK);
+	reg32 |= ULPI_MSM_PRE_EMPHASIS_20PCT;
+	reg32 |= ULPI_MSM_HSDRVSLOPE_TENDERLOIN & ULPI_MSM_HSDRVSLOPE_MASK;
+
+	ret = ulpi_write(ulpi, ULPI_MSM_CONFIG_REG3, reg32);
+	if (ret)
+		return ret;
+
+	reg36 = ulpi_read(ulpi, ULPI_MSM_DIGOUT_CTRL);
+	if (reg36 < 0)
+		return reg36;
+
+	reg36 |= ULPI_MSM_CDR_AUTORESET | ULPI_MSM_SE1_GATE;
+
+	return ulpi_write(ulpi, ULPI_MSM_DIGOUT_CTRL, reg36);
+}
+
 static int qcom_usb_hs_phy_power_on(struct phy *phy)
 {
 	struct qcom_usb_hs_phy *uphy = phy_get_drvdata(phy);
@@ -154,6 +225,12 @@ static int qcom_usb_hs_phy_power_on(struct phy *phy)
 			goto err_ulpi;
 	}
 
+	if (uphy->msm8x60_init) {
+		ret = qcom_usb_hs_phy_msm8x60_init(uphy);
+		if (ret)
+			goto err_ulpi;
+	}
+
 	if (uphy->vbus_edev) {
 		state = extcon_get_state(uphy->vbus_edev, EXTCON_USB);
 		/* setup initial state */
@@ -214,6 +291,8 @@ static int qcom_usb_hs_phy_probe(struct ulpi *ulpi)
 		return -ENOMEM;
 	ulpi_set_drvdata(ulpi, uphy);
 	uphy->ulpi = ulpi;
+	uphy->msm8x60_init = of_device_is_compatible(ulpi->dev.of_node,
+						     "qcom,usb-hs-phy-msm8660");
 
 	size = of_property_count_u8_elems(ulpi->dev.of_node, "qcom,init-seq");
 	if (size < 0)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
