Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB87C636D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYuli1htlE2ACq/v0/N2AnZo4C30DikjrSXg0KHEQns=; b=LCv65vCaY/86Pn
	R+Pxo2dCptfjfcsj+6tPCsqIYDZOlv77d/hUgF0f3ASWhfcGMyPaG5Gpxjbu08XfCJ5LxQ3Ef6V4J
	i1vKQAPjMu+pd8eRRoXFaDtCyYLUuYVqJdyR1CkFE/C0mwzjCZbRlqPeuL0jUYQv0dH/1WGnkLO9T
	zkeNERVe7R6a7ZNi808/GB8pZNx651+NVXkbKhLo95+O6gN7ACtEiRpwVLn1HQlnk1Maw3At0q3qJ
	WmbhMDc5uzFJ+a7EW8CcHEbq07aHIZs3tp5bs/CXwfIW0dGEpMIwbPW3UsL1CHMWXTsKzaLnOM9FI
	ZN+RIq1MEwOcD0PPuGAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnT-00G2aU-Jq; Thu, 02 Feb 2023 13:38:39 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnQ-00G2YB-TX
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:38 +0000
Received: by mail-wm1-x32e.google.com with SMTP id q8so1403431wmo.5
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KwClGhcR7TdVaebtx7GjNjFtUcNjguDWac1KgeKIdY=;
        b=sirCRHdUNdmk19NjuwIv+KzZf/T/MflaVX5bG7x8jouHLbSLJM/uG+QxsjCo4xZ3hY
         1mC/m9W5hCJDtPt2LxHwuuRe4YF2GY/af9llJZU8/EbD60AXQChgZKZ+6eVQIp5Qi2lt
         iZmmIQmiA3/EDKFUZjMOBtnHzs4LfJnj5EoFQBgYD7Y9GZU7CPQfPPgvvD0PCrvqZICN
         Y8fQ0nWn8ZdU9HPlheAEQYvNetcKY5YssqYayjS2VTsm3fP1ADHNDYF8BL2orq7hLym1
         6ddVOX5BIrKwaw9No1kxBC50VOl9YG5HivL/LsIeOuJ/BfEtxGO/pYyff+c0ctfJOuuw
         34qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KwClGhcR7TdVaebtx7GjNjFtUcNjguDWac1KgeKIdY=;
        b=5WckYkowjZyUMuws6oY4WZPGXVY4J5j9fEmICqeqlNRhW1HJGSgAe9y3tyrwG4zlRT
         q2l+JcOHCF76sZPuIhM+9OWF6hWxvOO4pw0LP2qenDPnofJdhC+jGlUSMzkM1oMvmYsL
         HltTqo+SbZo7SpCpki5ddnpMPPe71D/VqRb6Rd3WwdljnyWuIsqxr8Bp/WYnQWrXq0B3
         2scjdxKaCmEbYzhnpzVhoHrV7BNJYBWfAVZkzvUC6e1NdvdXhhUgSDOD8gd7kop2l3AJ
         qHiE9jYSaUy2h1/azTJIATjQP5DyusY82ztrJpeyx6xAhd3igRR32aDxv7i3zANs96I+
         9lfA==
X-Gm-Message-State: AO0yUKWzexRJ7+k0l6UFqJKwWboEFMvr020jbQ/LD38U8wH9H90MFQFp
	PuMvF/LEjxsMf/2VJX93xPY74w==
X-Google-Smtp-Source: AK7set+PfKRoh/N122x8wKuwZjQQWzOVhywZf4QE6geVIDyMtQDdYSvmqsewNAcIn2OovgUXp9arlA==
X-Received: by 2002:a05:600c:3b26:b0:3de:3ee3:4f6f with SMTP id m38-20020a05600c3b2600b003de3ee34f6fmr6056336wms.8.1675345115442;
        Thu, 02 Feb 2023 05:38:35 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:35 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v3 7/7] arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node
Date: Thu,  2 Feb 2023 15:38:16 +0200
Message-Id: <20230202133816.4026990-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202133816.4026990-1-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053836_967253_90F39EC6 
X-CRM114-Status: UNSURE (   9.51  )
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

Add the PMIC eUSB2 repeater node and add the usb-repeater
property to the eUSB2 PHY to allow it to be controlled by the
PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 03862132fe41..9aaddafa0088 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -456,6 +456,11 @@ sdc2_card_det_n: sdc2-card-det-state {
 	};
 };
 
+&pm8550b_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_1p8>;
+	vdd3-supply = <&vreg_l5b_3p1>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -562,6 +567,9 @@ &usb_1_hsphy {
 	vdd-supply = <&vreg_l1e_0p88>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&pm8550b_eusb2_repeater>;
+	phy-names = "eusb2-repeater";
+
 	status = "okay";
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
