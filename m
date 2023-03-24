Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B3C7C77B61
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LNrpEuTn8W2Z99KRmbi8B/4QTLzv0qx3IrJE0v0OQY=; b=Rkl+/Y8djVh9cS
	l2PouyBRFmyuwlzRP19pIXBnVKyTp09lG9wjMed65eRQ9zTytNJEnZnx/bbRxnx1D49ozao25dQbb
	vekvwgD+d93Tim3oqJFozQUqsyis0rNNw3dRJufsW30mlzxBhDhVNtxPjel2F1pO/ODO13IDEm5r3
	C2xlhQQi3mxFXMoDQeiiC+2p6gadcPu9dEz/tFnq9Y3cmPjFv/YdT/3ZCBi3odlyNjH9zcMfDHXgx
	ppdkL1IMlQl9K7csq63Fd3ylmgdyaLugXaj2lt/Wemn0XyGpPEZysb76cDK4BlWXD5/2OH29D01BE
	3DF3BcaX9pp9eXHwWiHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9T-003SmQ-03;
	Fri, 24 Mar 2023 03:31:39 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7j-003O8B-0P
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:48 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y15so399632lfa.7
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HDchSKop1Xxq66SPpXZxrs89UqPWv/lOnX16IUJPMi0=;
        b=NSom5vke0xjqGrWtst8MZeMpXOjO4NPIEENRyJHs0ucrbkFnlvL5UZ+EyT7wSdB3iV
         gyfZ0ZOhCdCHcbcqJtidKp229gF/vWzUA2bGt2TvHrDZ6IHHy3/glj4GNFlSs8c9Gd7a
         I5b2jacWCPqgqUratrYdhPUTm5xMnJR25BWddAT2McOdA982R0NCjvcDnms3rioi2p48
         tqVoqvkmi+op6QVnjR1AqgrYps4hCc2sjPpDkS4mf8Fgz+mDmTXvxvqA0VvVgQuAxrAq
         9Cc9y0MBAvGMWotYXMtzoQJV/837Ea6IKA9dYuvUj9To0Ru5pB8bzufpnSXzQNCciju7
         ih/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HDchSKop1Xxq66SPpXZxrs89UqPWv/lOnX16IUJPMi0=;
        b=hLHpcrUZsH4lOJVAM9V6hqvR3KXzVt3cPF2njIRjxbh7arjZfTtp9yTJTf7GyTcOBZ
         cmCGnJ8vfyw6+1on1GtkxRz7xOBctnwGPAiMxuN+AjQb+xlK+44G4IOCizXvt4uNpkDF
         7ael5tktx8KyQ5OBBFmsHxm4AKpNfbnv6I9eTbOIp5pPb6aKdfmIFjHXo4OGjWXIcp0I
         4vfHZX7tflsetsd8+itJZBOFWNigGWJPlqdduG1of1hsrfRcHZXePF4y6h5WtXKfGmiu
         9jeaFv4PWPwJJWu2OGVZHQo6tJP6Qtxdx2yT3nIphXPTU1c0e44dxdaFis3Ro0nkJTM9
         WI4w==
X-Gm-Message-State: AAQBX9fNFR/mtR/NzVPo3lMojY+QXcOj8G4ORpTkncjN4xi8FmyTB6+e
	mzJ9D2yh3UKk8dVl6/EP9CM9Nw==
X-Google-Smtp-Source: AKy350aZJxyraI5wGu1P7LI0ODnp2xG8grMQkrrBWRa34TQ96fi0CfpLbm2ZknPx/fqLrpM30j4qzw==
X-Received: by 2002:a19:520b:0:b0:4dd:9aec:e468 with SMTP id m11-20020a19520b000000b004dd9aece468mr219626lfb.58.1679624746597;
        Thu, 23 Mar 2023 19:25:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 29/41] arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:02 +0300
Message-Id: <20230324022514.1800382-30-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192547_163740_FE1F32B5 
X-CRM114-Status: UNSURE (   8.20  )
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index da764ca42129..9f6f11479777 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -658,9 +658,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>;
 		};
@@ -1662,7 +1662,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1706,10 +1706,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -1717,17 +1715,11 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x188>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x188>,
-				      <0 0x01d87a00 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
