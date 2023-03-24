Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D3ECC77B60
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHdchdDMooG+6FYTDYe658pVihR6UOKEw+o1HcUd9fo=; b=a4/st0igOUQRhI
	RRrIrdp5A/Fmu/zuD0MkXvBW5COEt3MXAzw2MH2nK0RvwfiVkngyAre6Aeusbklqh0ZhVhPfyd8Yz
	t8pyEMgLr0ByuOBOzh+lc1Wi0/UhB0n8mL0YpE/vKHSW8MFRmLAtpWXvZOzGEaxdRZ/YUaZE+xki1
	pkoSQdqdnmn7ttNlICnXoTr2s1GOoXez1JG1EAlbrQJmAHypUWvOOzlVlVscZYsFZx4U5TRDRORYl
	xW8xLQ/Gx7AQrF+Ins/kqegRbOSQoITLLLIZXGdc9ZBZm5uzLc9158gJ26bpggY7JQwvvT71FOhWV
	DxsuvluRpdnOZGeTurSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9S-003Sm3-2Q;
	Fri, 24 Mar 2023 03:31:38 +0000
Received: from mail-lf1-f52.google.com ([209.85.167.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7i-003OKw-0y
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:47 +0000
Received: by mail-lf1-f52.google.com with SMTP id h25so403170lfv.6
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBoHAuOBmNq4AyckPRTEYDjwgqhLeJ/y1ejmubgicVY=;
        b=llP8qR0dcKLSqr9Vn3VqzBWYoQL5G8Vx4Qimod8rzYgCRFeebV+zdq9aF4QENbfU4f
         682M7zXscBWxb0gTHYv91qpgS+9JBYWvksBQ9IiKI8gcs5Naqp/oiiedGqGc8v9zus4+
         6XxT5xWD/s1wdcAPOw4f/PeHSoYZNZ06+6JygtqbNW1NDf166kMeR99N9Bea1/6yl68a
         NOSanzaiUnbeT94t1ME52+aRH9OI3gDr/UNv0Pmdqrr1NCb6y87JVHS+8QWV7czNJISI
         ccgqmjPqG0yMtziSulMDBxEIxZT33b7SHA+QrI/gpKb+iGZ0QpbzYWABqyHBhr7kH4QX
         +viw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RBoHAuOBmNq4AyckPRTEYDjwgqhLeJ/y1ejmubgicVY=;
        b=zcaOpzC3gZ6Aj5z/BfA8Zr4ozxegSx1Ikw9QGuwE06W6OT+6y5YYpPtch2IpHW9/QE
         8jkWQtRCUNlJHh/oNCzcGFmXS0YblsQxqai2KiaYE0JVMSZJvyEGO2FEhSOkRFjJ/901
         FFEEFLiyGpW+KttzmbRivBRCZso9QpxqrxBefSdVMilNUkcqpIarAj6TIimE77Wcgfty
         r3vtheeDZtkCSusd9V7yXD93y4N8hdf1Dv/Qk1++EuPG1eRNlCrV6IElItW2qhOnEilN
         LqPUz5GUcQ846RT0srorz6PXQxouboFo7viAYoEC6IM7e7IayLQmlnOyBaKydcwlxHbW
         ydTw==
X-Gm-Message-State: AAQBX9fm4AOmbgtx2toS42N+FhrDIa2pgM/xR6Fp3vljacPLZs/lHz8J
	o+DaZfl/I6W9LNrc7tE/IITNpw==
X-Google-Smtp-Source: AKy350bTk7treQsqgQwXtAUPdD9PXu0HU7Wy2A/4z+HUrTs4P33AFxkx1YN6RVqe59fbrf+M7qbJug==
X-Received: by 2002:a05:6512:3cc:b0:4e9:aeaa:ddb5 with SMTP id w12-20020a05651203cc00b004e9aeaaddb5mr201187lfp.14.1679624744088;
        Thu, 23 Mar 2023 19:25:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 26/41] arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:59 +0300
Message-Id: <20230324022514.1800382-27-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192546_341278_5CDBD92F 
X-CRM114-Status: UNSURE (   8.22  )
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
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 18c4616848ce..a816bb212174 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -943,7 +943,7 @@ ufs_mem_hc: ufs@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -988,10 +988,7 @@ ufs_mem_hc: ufs@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
 
 			clock-names = "ref",
 				      "ref_aux";
@@ -1001,16 +998,9 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
-			status = "disabled";
+			#phy-cells = <0>;
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x128>,
-				      <0 0x01d87600 0 0x1fc>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x128>,
-				      <0 0x01d87a00 0 0x1fc>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
