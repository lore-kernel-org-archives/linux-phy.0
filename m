Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CDC4C64EC3
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHExDXXFHQPmV9wlfxqQiLe3adN3NubYEQRWzEpJ/eE=; b=kHoNuB0mz7CpTB
	IDfKAssGMpnrcTfXyd5K1gjRmSkK5PfMZUWztjBQwrNKoTtpzR53I02CC3Uou/w8re3PjJ+0bJF5S
	wjfwokmVH75SSfXpyjnbaPT5pTg9hZ9biZ2KAgvekrNWl80PAloyQDon9b7DnfwZKwR31cgWe1A8b
	WliTYMtEMC9S++pfl9IXhYDnMDZOWQMffiDl9x+ys399R3GbQS+sF73WTbTFIcOJf6J+awwnNSJvN
	WwouYFTX6dUngB08UQ8AUcx/dlWDCl6iMQjh/QpaOFJ6rN5JZ8Y9nkgDuOTJcac1fQiLUG59vlTxk
	/Cf/QV3RLN12nuOhD7ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYsG-00FpNo-J0; Thu, 02 Feb 2023 12:39:32 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYsD-00FpE8-9c
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:30 +0000
Received: by mail-wr1-x430.google.com with SMTP id y1so1593181wru.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8ipbXkSPL37n3A8t/Jal5T88LelKqVf60eLRmlYx4I=;
        b=yPFYZBDkdeU1SfbbI4WBoLvzuVyDqyurZo7Iv4WA07ahS9AlT7H9JooRpXEhWc8iQ2
         d+/CKarwMrNaR52YnitdStMFvQVwRSC6Dww18dePwk/wNDuN+mypBJEGp2Zt0BzqPPbd
         Hryycf0C1QKErW2aZIyaUfKXhMjV8C+AxC4PNNdwRjNwFEqo1auMQViIVZ54kemprZRR
         hEVR+C2/IbTzd5bx+ARz+QinkZyFYtQplkTnuhGCtJPnas493f41jjazI3+yPbRq2/Ar
         Ur6GcgFbpJT2Xd11PnEzeoW0Iz8XNOqHZ8kIKjd5AqtxocpWB0eR6I5CHwkUgjCSBX8R
         qoiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W8ipbXkSPL37n3A8t/Jal5T88LelKqVf60eLRmlYx4I=;
        b=hj0y5mT9Jj7kwQX/7ggYFNttbJXBmZkTRpa0bu3yXG3L8GEAzt0peuSvronTFdUaWg
         Sq6vEcP+HqJ/D9u2YjqxoQeIT7+sv6Lit70K7C7E+l3wL1E4KDQqFaOfd1YNvs/7S0Kt
         CVZyliYABf6XWNwR1hCLVOOxLvyzaktJGblmMPgyJbLFScUPXCV94KzFjANgGX/trLB1
         f/SAvr771jr3PHuO75smkbkhiYMojHyXgUvAHEdfhTDb/YyWNWfZ1ctCJr5n6L8xWxXZ
         8tnQ5xZgT7A7ULvVnNc68AHAcLhAIyxzJlcXm2JexCSeq66zmQWfnmnImAYATqRZ6w51
         Ea/A==
X-Gm-Message-State: AO0yUKXu4fM8w/JwZf8/NW/moCo3ZSqyBNw641svsk9vQgn+I9Bk50xO
	xbLIFcZkMj7QKLhMvtJdlGDReA==
X-Google-Smtp-Source: AK7set+P0OqTh2slEdaZnFO4/olYoP/mCwp659pG1hQHxj/yEKy3FeBSAa0OML5p7Jj1lizYHmPQ5w==
X-Received: by 2002:adf:ec0e:0:b0:2bf:b839:c486 with SMTP id x14-20020adfec0e000000b002bfb839c486mr5549655wrn.55.1675341568837;
        Thu, 02 Feb 2023 04:39:28 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:28 -0800 (PST)
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
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v6 12/12] arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes
Date: Thu,  2 Feb 2023 14:39:02 +0200
Message-Id: <20230202123902.3831491-13-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202123902.3831491-1-abel.vesa@linaro.org>
References: <20230202123902.3831491-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043929_366249_32321DDB 
X-CRM114-Status: GOOD (  11.59  )
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

The v5 was here:
https://lore.kernel.org/all/20230124124714.3087948-13-abel.vesa@linaro.org/

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
