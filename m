Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43936C38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bhmevTyj23X+uR8MmI9JcSvqXUdP3xdHAi64V+7Txs=; b=uPghjf/6wLC1Rh
	s/7kDo8/fDjWuv5H92LzfknhE+EiDtRKZZOpMymdcHK1sIXWqWBGBohAS93yLh++z+Xy2gu1QP8G1
	WEL3EBOYkDQ6uwAly6tJksmkXuMYxiE8U9MfYlJ7vYAxxphAOzdZsIkuPHTUN/vguATn8oCwQyZKP
	CUVS4ze2jteGlfWgeDn25x4SXbZNqwyGgTSp7QxEgtJc+Y978wa18rCBN1qkn99MiwaALwdJBE3b1
	5u+P2Kad3Skkl3aeUCI9/iTU4CDZKp4tUMe7dMVciuLz/7Da/zDYT53T7cqroPub7FJn/7bOMT3sg
	9LMyT+SN99PfaokTsSoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIiH-003nBz-OA; Tue, 24 Jan 2023 12:47:45 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIiF-003n96-Mc
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:45 +0000
Received: by mail-wm1-x329.google.com with SMTP id g10so11361561wmo.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bmxwKRwgMkvDoX/KnOxwn8Oad6lb6c+WQifHQxcxOEc=;
        b=FYiBwKa35DWkzQ7j81Fy1fx9TUTExvKgXy2CCwctwSdzBVeheK+IttrEAC/ETe1EeK
         W6pTqY6vdQIu5OeMoBi5ykV0bNXQEQcNlYLhEYl/c/hrjXANIeZJBSVq53+wCX20yCoX
         yyBHuad2Xj6DD7X6AVd0P370eE5eOtgxau8Q+6ib8pXb8Ky3+mPDj63Ek5P6dieIhWy2
         +rQ65PjSPosaZRvZRLx8jp6HXLm6WdvchQifiY0vM22iny8Ak4zyhJw3y8OsiJ9xXJ2+
         PeFG3pWzrbd3Blz/YIqBS1GCtPU/bpGc6SYAS/5ZXC1L9Fhnzv89cxz59co5dW1obqnN
         PiIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bmxwKRwgMkvDoX/KnOxwn8Oad6lb6c+WQifHQxcxOEc=;
        b=KWNjruyw+5qEw3acpY/SEtjGPxQwDuqLe4ZJ2liqXnd68IoFtbsO1HLWKEpNV82xKW
         HNunlkNNOEqOU+ElMOd+XKRaKCgTcBfHd6dMZTQTY39w0E+28q3G5UZTh4aapLMF/K4/
         USfx3HwTCsXM3y5gOjwD1BL422luuoTiJg1xwZcysAc8MeosnfGp1da6dAvXhj7qztaK
         LAyOomn4Y+w8661p7XQ+NDQGaugILo3+4f8KxL6nHSpXJODzEP4o0IQjGiOwcX85LK4Z
         5jwTOVVpw+0N4vCGk9xDTaFVho6YyPdNj8HguT/eCGnhr45uS0EHGQSbcjrR9EAj5ZUU
         7WPw==
X-Gm-Message-State: AFqh2kp8WaNjTcuC7STE17bCJO95gDF7jqwXBd1Vkv956IuFlHPrF+/0
	Ge2D4WoWXDn9qb9OiY+hn8750A==
X-Google-Smtp-Source: AMrXdXvAgpKt63Oz3NCXx6cY0Sb1j3ZgYXfQIwSjkUsBwo/uBUEf/kEPiUkYZk/vC91kl4DwXQ+Dog==
X-Received: by 2002:a05:600c:6001:b0:3da:f80a:5e85 with SMTP id az1-20020a05600c600100b003daf80a5e85mr27274855wmb.26.1674564460550;
        Tue, 24 Jan 2023 04:47:40 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 12/12] arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes
Date: Tue, 24 Jan 2023 14:47:14 +0200
Message-Id: <20230124124714.3087948-13-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044743_754870_21F3BB02 
X-CRM114-Status: GOOD (  11.40  )
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

The v4 was here:
https://lore.kernel.org/all/20230118230526.1499328-3-abel.vesa@linaro.org/

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


 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 37 +++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 81fcbdc6bdc4..31e039f10a1b 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -359,6 +359,43 @@ vreg_l3g_1p2: ldo3 {
 	};
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
