Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 801CCC636CC
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAT6Fx1ewz+l4RuGq1AEcWMALJ/naEwVcGGrZbFevfA=; b=jAHgA21ZWS6Km+
	EwB1w1IXeyHjtFsTSk/nAEw6VkUM/MJQ0TCdlZeWq7/BeJOC3/41swvJpErFtt1y3Dy7JLp0oxa/m
	E7wafnCAAm4ZJwF1v9Q5Fyl6c9Po5jFkzaRYUHtWu00QBOxa91qNzZC93m4aIj/TWnJOXiq7uVHoP
	y1B+lacrrW4gc7gGgFEOrXfzMA0iolNgDvs4qxbHILocOVQWUmpM7zZ/YXwPsa7BkRSC/ApcGXwrN
	YuPYyF4eQ5ut7fCxgtvaCH9cCSyOKEE+7aw2ioliCxzSN6OIJOIeWiB9rliiJwUOYDc7vVTBJU3Pb
	xUdArYxUGWm0baTb9kfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrHI-000z6g-UB; Fri, 03 Feb 2023 08:18:36 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrHG-000z40-Al
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:35 +0000
Received: by mail-wm1-x336.google.com with SMTP id k16so3246278wms.2
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVGVV9qGjZMfe1gxAo5nZfKax+1XIxmkt82fjMeK7iM=;
        b=P5XaQfQBAwl14ujPzil4GdTDK6ey401OHEEOGYffQJraDbJKABSVD7g1VFeQvCAqVe
         MkQAbn9azYKRwkO6mJLuz2hKI7fooL2j08rjSdn+/BQByFiDR+ZUeoCHj4mqnYTHlp2g
         n9TAF3xrUPgeFehRYnQiSCMI+hjvMxi/Q2/SJV5ye6X7rusrC2oUlHcKRBpPI0ayWov+
         xgbiShkaGXrc2EMhTWSmLBaodDSsiKkrIDqic/DRrzVwTB/dE1ao3Kz/LeZ6k9PKsjwb
         NlQfZtqhHibupfyDILF7Wt+KpfziP7amnUdQW/nTea66Pyq6AtQbEvPO0AfyRpklg1hl
         wOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gVGVV9qGjZMfe1gxAo5nZfKax+1XIxmkt82fjMeK7iM=;
        b=3YwH1g+6vTPuJyFwT0f2BkYfx/BR2dwiP73S2a+qO15q6geaQAq4/4mWiax0UXIAhE
         kqYcT4MkWDflhhHUkAhZjgs4EetvitoWZodRAc7xn4cGJkrnddRPpPzqoNLqx1t7LpRz
         Qy8af/E0FGpaKFyRPsnaJ9F7dxf/pajKaFLeuwG/NFHT2ubsNwekywgvIEWcA76RSqCC
         QAljQLnTSRxEL5GPZ4G2Pq9/qxpE9dJuTH611g9aTQ8Ovejt/O+ffWbLkSeE/LxaviKG
         8+JLW5AHOwK9jQY0mILuG5iYoGujrjJZQdbWwzvMjZKEZq1r1JBkNk+wfbyPjeKB2VYX
         r0uw==
X-Gm-Message-State: AO0yUKUuFvpwM+VISfpPggmbv2VC+B+VRNcASwbIJErsehpvF7aHYt23
	T8lL4E3mLR83LReU+lzEbHTAkw==
X-Google-Smtp-Source: AK7set8R0udVddjd/ojCWJvkTZuTIqZHPA5y5Ms5shuNv31qjwhpw/qkjuC7DWzERcBGeXX2k/OHWA==
X-Received: by 2002:a05:600c:3553:b0:3df:578c:50d4 with SMTP id i19-20020a05600c355300b003df578c50d4mr6945705wmq.21.1675412310660;
        Fri, 03 Feb 2023 00:18:30 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v7 12/12] arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes
Date: Fri,  3 Feb 2023 10:18:07 +0200
Message-Id: <20230203081807.2248625-13-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203081807.2248625-1-abel.vesa@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001834_389369_FD142ABF 
X-CRM114-Status: GOOD (  11.27  )
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

The v6 was here:
https://lore.kernel.org/all/20230202123902.3831491-13-abel.vesa@linaro.org/

Changes since v6:
 * none

Changes since v5:
 * none

Changes since v4:
 * moved here the pinctrl properties and out of dtsi file

Changes since v2:
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

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 38 +++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index e756f83a941c..265862d0e44f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -407,6 +407,44 @@ &mdss_mdp {
 	status = "okay";
 };
 
+&pcie_1_phy_aux_clk {
+	clock-frequency = <1000>;
+};
+
+&pcie0 {
+	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
+	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_default_state>;
+
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
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_default_state>;
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l3c_0p91>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+	vdda-qref-supply = <&vreg_l1e_0p88>;
+
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
