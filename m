Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A192C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQQryOJQho5Ojm0WPBWWYpCf4faQ1reLf12wm6FPDsA=; b=Z21vpozyw0P9dn
	nkMbYqBF22m2FjhwXWCCoLESlvzM2BrA/9CumaBBM3P3uiWm30PEbdpaswZQVyJ1JEvAPitBcLd1W
	xOKkDJfSUvbX7fH55M3LfaJCaK1WGdYC45Sb1POdLhKMwOxv+5w9ucNSupsUWGBpYSVm8TObYrUjG
	JBHarVobUjy+1mmjDQ7vwyHI4hFhZTqQSWhPtRyXzuEPFT7xhVTrcQ2a1IliXieFKGUPEAoyrIdsm
	0nZDE6VWocPt/foJX31NDsI1SshfUP5wcL/6LZTS8hQBGLEvnVShD/QC8Dpq/spkCy59q8eLDh1Ax
	dmJRQK+Ck6+hHNsoD4ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6s-003xkc-Kk; Wed, 08 Mar 2023 08:25:18 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6q-003xhl-IC
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:25:17 +0000
Received: by mail-pj1-x1031.google.com with SMTP id q31-20020a17090a17a200b0023750b69614so1194982pja.5
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AfPfJbuBCr/z6UPf30LbgTiprhegyjugmOR3U4nPOZw=;
        b=JzrgFsMkZEbo/x9XSaSLYAe3Xh0Ys+qsISvV8tYJb1YGAkQL1+CAgyekEEDsUIsPI6
         iaegsZRji2odfHxrMAnzaRtslPruxPs/i3tMqJoMrKFfL6ADGXfB5UvR80s6BXm8tK7U
         CjNyNJdShcE0omGpLz+KWJPgCaGD1Rvn5fmd3PEYED9ZSrr7sGaLvpl/D/hB5HHEDNvz
         Kxtu6WNVa0GjT3O4TtJP59xFfzguORhj2CzPWkLxhYmHTph8qGeH+uPRMsKF58SyHDbC
         yG7tpeWMzXzcT3Tx7GKIFC0kSL4FfmMbnXJG71GP6oQIZ+8sffc9ykpKGql0zCiBN0NR
         a9fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AfPfJbuBCr/z6UPf30LbgTiprhegyjugmOR3U4nPOZw=;
        b=GuF63/N0nJUHDOdIdJX6arvUADe3D/Bek+bUHNPLTqZPodT8GY2iulVrYmyKehQ1DR
         XFLCq74zOvxgFyeo/Cc8z+9XGAVSx1RwtQ1nM0EtV/8jiHhSQ94akEBCStAHPGlDgR45
         lqGCJMchYSac65tnD2Q8eyh5hwDiPTcJaPykE5SWBykA/ZsYfC0ACD4oiu1JCPkEvlvy
         XVBa80m8Yxf14OH6lnVey62HtAWuGl2t8Fjn9O6GbmWmbyZZufYdnyHVHLNhEuTlh+6Q
         ZETNk6ntiKQXnnqgD8/aL7m+gcpp/2bffKF3H8t0nAaF4G+4M758mjMRhzNHWbHg7EPr
         HCGg==
X-Gm-Message-State: AO0yUKUgAzsVcJuObEvYWmrW87nan/haCym63OGUGMUDvQvEl/eYjV6G
	gSEVXkAppeqStRDJcwFfpKER
X-Google-Smtp-Source: AK7set/L1dsF97m39ajoh8yMTStHAFCR7t7AZ4VJpnF8cskdN97rs2QONWSB8stY+iDUtg3E0onT5w==
X-Received: by 2002:a17:903:441:b0:19a:b5cd:6e73 with SMTP id iw1-20020a170903044100b0019ab5cd6e73mr13939201plb.3.1678263911955;
        Wed, 08 Mar 2023 00:25:11 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:25:11 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 09/13] ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
Date: Wed,  8 Mar 2023 13:54:20 +0530
Message-Id: <20230308082424.140224-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002516_620256_80CC4761 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
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

Enable PCIe RC support on Thundercomm T55 board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-t55.dts | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
index d5343bb0daee..5edc09af8e0d 100644
--- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
@@ -242,6 +242,23 @@ &ipa {
 	status = "okay";
 };
 
+&pcie_phy {
+	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
+	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
+
+	status = "okay";
+};
+
+&pcie_rc {
+	perst-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 53 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
 &qpic_bam {
 	status = "okay";
 };
@@ -265,6 +282,31 @@ &remoteproc_mpss {
 	memory-region = <&mpss_adsp_mem>;
 };
 
+&tlmm {
+	pcie_default: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio56";
+			function = "pcie_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio57";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+		       pins = "gpio53";
+		       function = "gpio";
+		       drive-strength = <2>;
+		       bias-pull-up;
+	       };
+	};
+};
+
 &usb_hsphy {
 	status = "okay";
 	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
