Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD8DC6FD20
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brwtM4GXn8UihrCIy2ra9bHpSwm3z/UgKCEEyuVZow4=; b=fchMrmEDTHGWvH
	RdCX7QZ1orHpwho6b976hHFimPwQds0r/FaR7uUcu3/llGHIT3VfgQdYQAGvN4lRCo9qTPTDKUZk0
	7IpjBRXboKiGmwhTYZ85RZXVK6By489uy5l1sBX1HWERQhlmR6ut3mDvpTGebDQlJVhLIFDZ9L6YF
	euJ8tMutPrhTH6HqNOSxgGVRq+XK/y2QR+Nd/z19bOJPyFKfgVrvRyeYgRdchPFROi8wZunq8g5J0
	LKKzaLxc3P7PiD9F8fxxPW5/UOjqmZE0yj4n4WfhXfC21da/DIrX4sGsyMBohXcKVQ/nQfF7FayY9
	ZPCulhNew4ZTm4XW44iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9R-003SlZ-3B;
	Fri, 24 Mar 2023 03:31:37 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7f-003OBG-1F
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:44 +0000
Received: by mail-lf1-x12e.google.com with SMTP id y20so424048lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v+Yq+h+KrhBwR3/QtnF42L41z1VHs8gUsEyQMQJWXII=;
        b=ZgDdjaaOxZ9IcoMJNB1Tt89FZLJ7Zp3hads9IRrMT55CLnBb0LyAT9X7pOx2i9gFB/
         SCpfo/LhVK3TWiFSEdL1NFUJOYEIBODBsQqYZwhLypcwRCvPXs3dpDQvPqdjqooTGYY2
         AtOv4l7jyHIw+TrH5SrLgFvlLr69vaMNDogEmOuiqJoWNXp8SW7KqSMoViHRmrxr4KTK
         LR4unSCQG/1nJuujZm96uHZmkHZnDmWzpClA4oaQ54jaIato3DR0vfNFxHQgjXpagcbZ
         iwOLrYHhbnpxLUqlSMnxpcojha9ANvAaRHTOA3yGsMMiBky04voIfw0cUvYvdzc51+KE
         Z8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v+Yq+h+KrhBwR3/QtnF42L41z1VHs8gUsEyQMQJWXII=;
        b=RPQUPPQnLh2badHAJRxDhNmbZ/L1gFJlrRuZR1TzX/+dULIygicDKmghF5HSV1acrI
         /e+A4U5ayE77lJjr4eFAriqe1ShVK5gAlvsEyA4PH0DhfCncIGu0EdFfT0SSY9sAQ0uI
         Vnfm8m6OEx1vQ4Kx7LlKPrDH2svI3iJG/qZxBY0AdnxAFK2/FdNwO0Oz/AX1lTJmIeNA
         ipD8HX9YVbGU8Mv/9jEBdhADJBEIpOE6EAKBfA0gZVhztrJUV5+zG8IzL3jOeMSaJ1SP
         qc0jyVi90IusRy/TGMHiGvsxT5bO/3yIDGXkuuR7pTIKYmpR9aikCLYqwt5XHVxBBnoJ
         YLEg==
X-Gm-Message-State: AAQBX9fmZA11iF7UxcnRO6kiRN3ncU9tw+sRL4zux8KY1oHLP63Y4zJT
	ANhhorS91IfzxX4gWhyrcIWgEg==
X-Google-Smtp-Source: AKy350anCEwRXulylP7ysl4vAJBFomNd9M0aNvPNEaFXp9YPHjzCxJ/RR7TrWD8M17P+qdQq8yby9Q==
X-Received: by 2002:a19:f50d:0:b0:4e9:a853:4e8c with SMTP id j13-20020a19f50d000000b004e9a8534e8cmr170476lfb.66.1679624742965;
        Thu, 23 Mar 2023 19:25:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 25/41] arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:58 +0300
Message-Id: <20230324022514.1800382-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192543_432633_4069539F 
X-CRM114-Status: UNSURE (   8.42  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 2a51c938bbcb..eb30e5cb7b4b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -773,7 +773,7 @@ ufs_mem_hc: ufs@4804000 {
 			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <1>;
 			#reset-cells = <1>;
@@ -814,24 +814,17 @@ ufs_mem_hc: ufs@4804000 {
 
 		ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6115-qmp-ufs-phy";
-			reg = <0x0 0x04807000 0x0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0x0 0x04807000 0x0 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 			clock-names = "ref", "ref_aux";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@4807400 {
-				reg = <0x0 0x04807400 0x0 0x098>,
-				      <0x0 0x04807600 0x0 0x130>,
-				      <0x0 0x04807c00 0x0 0x16c>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		gpi_dma0: dma-controller@4a00000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
