Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57933C00A5A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uLtdBiERX5KxCUZoL4QD4xS9qpNDWsPwVVt8P/GV3k=; b=zk/nDs57YukTfA
	QpPPdi9O2Z0fXIGunpU74Dt4sQszbI9qNH4hKVh0Ja3Tv42YfDYDTAp9Onuv4xQHvVbGYYj9KTECR
	j4VorWQ0D0f2q1n7DRXEUL60wvuhD+KxPAjoL/3ViBlghtyegeMhBEORLbpl5uDXCLclw7NvuDiXC
	EPGpxiDXtBpgmLefQdMmmGpzuuiyoMnfMfvPWssaqVJFNnADq0QGZzhCrNGT630obBHnRNBE7QErB
	El3DebutAy7Hqs67MSjc3Qsd3DJcOdErkiM3pd2FPXwdp7eOumgfMtK4ZtWlobCdvsD3/GVttg58P
	O/H5CwORLMcDb/PA/8hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXs-005EMb-8m; Thu, 19 Jan 2023 14:05:36 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXn-005EHR-7o
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:33 +0000
Received: by mail-wm1-x331.google.com with SMTP id k16so1628195wms.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KyPmIKhrj5llOSZUdUq5Kr/KaLcp/C/7nBe8Tyy5vk4=;
        b=Ro0EqqAi9yh4lpsziLAifpMMIiVgu35zQr/kylSTf6VsCoedWvgRvRk+1jDdX0XIYi
         dLMOCFDVto+0Kg78ScF0l2ebFvoRj1Fq09X7dT2NMIBhnhnUUbSOO8iMSQKKE0m/Rd95
         6v30MpHu2PuwT04eAsBLxoauENCr9MMqdxoRqzVWREkv48G7fx2K8Gk28aZi8dGlOZJX
         Rcfx3+F72UebuTmN1B/iHf/H2Kk0V5B2BosmozETT+F3XdDCRRfEmvt2gAxkGNHhclCR
         5DXbqljI/MNaaKxdDxGspyYOdiLr4jmb/fjq76EF6kvi0q1TG6XfKwKZqrp1y/jFwdEC
         bdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KyPmIKhrj5llOSZUdUq5Kr/KaLcp/C/7nBe8Tyy5vk4=;
        b=srhdTumxtRDj5tAp3R3XlSfAAOifu9HwSg++sAep6/3iQYNzlDjYWwL8S507T53+c0
         NuAq0lba/nBXcvYoQb+TFxwhuJ3Cyu0I2lgk5KnOZ+oPK6IEYjTd2E0lr5tXM/wbjbLe
         4TrIK6OHFmMCIrbpUzDsji1Egi3Xvjtp9xCodoh6zk0MkFbEInAWj1Mf+Q30VmeCGGzD
         RB5WpMqoLv1HQhiEYRLcwv0jceT4EeYqzzTW1n9qAKVUEvO1AyOzZVyiZHCwy99WU1sL
         oY7UgYC2CZlSGpWPBchUWPfFBOokc+NR15TY/zobW4BTA7MhRwg6UlglPmQZ0+q0Umoa
         FI4A==
X-Gm-Message-State: AFqh2kqTk8tfzKRnVkstUV53eqWGzVxCJL1xfIYtuj+djq6f4AqjfnK8
	V/7IU4wVMIFfCHku+MbXj+Ne4A==
X-Google-Smtp-Source: AMrXdXtz9rqfygqM2faXYVw6dTuktiFobisglXW40wIIAv8MVziyyjsOF8Jgn/ATvMoD1cN4YsQYHg==
X-Received: by 2002:a05:600c:3d19:b0:3db:1810:8c9e with SMTP id bh25-20020a05600c3d1900b003db18108c9emr5298390wmb.38.1674137126642;
        Thu, 19 Jan 2023 06:05:26 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:26 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 12/12] arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes
Date: Thu, 19 Jan 2023 16:04:53 +0200
Message-Id: <20230119140453.3942340-13-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119140453.3942340-1-abel.vesa@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060531_450387_F3F183F9 
X-CRM114-Status: GOOD (  10.94  )
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

Enable PCIe controllers and PHYs nodes on SM8550 MTP board.

Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

This patch does not have a v3, but since it is now part of the same
patchset with the controller and the phy drivers patches, I had to
bump the version to 4.

Latest version was here (v2):
https://lore.kernel.org/all/20230118230526.1499328-3-abel.vesa@linaro.org/

Changes since latest version (v2):
 * none

Changes since v1:
 * ordered pcie related nodes alphabetically in MTP dts
 * dropped the pipe_mux, phy_pipe and ref clocks from the pcie nodes
 * dropped the child node from the phy nodes, like Johan suggested,
   and updated to use the sc8280xp binding scheme
 * changed "pcie_1_nocsr_com_phy_reset" 2nd reset name of pcie1_phy
   to "nocsr"
 * reordered all pcie nodes properties to look similar to the ones
   from sc8280xp



 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 81fcbdc6bdc4..b69ded9c4b57 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -359,6 +359,35 @@ vreg_l3g_1p2: ldo3 {
 	};
 };
 
+&pcie_1_phy_aux_clk {
+	clock-frequency = <1000>;
+};
+
+&pcie0 {
+	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
+	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l1e_0p88>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+	status = "okay";
+};
+
+&pcie1 {
+	wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
+	perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l3c_0p91>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+	vdda-qref-supply = <&vreg_l1e_0p88>;
+	status = "okay";
+};
+
 &pm8550_gpios {
 	sdc2_card_det_n: sdc2-card-det-state {
 		pins = "gpio12";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
