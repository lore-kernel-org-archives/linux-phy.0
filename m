Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A5AC77B62
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPECfoktrFrULyKz3MN6hn6EICv7Q08JYZEPXBxnoIQ=; b=tqzScrCh6eBIds
	NshqsdWw/haG4FSZB2ZhV44hGMc03bz7g+QnKlmhdF0yKcninq7DelOIPTzKXTVU5YBTJACX+x1zm
	EHzqNNX3Ml0on3dOg1J7dWGNGmkmcaioZztKqtQey2cW6eaOqoX9bla26FQHxTxtDVKBAGnc2GOQS
	yGYeRSP0MLX7TH9lyNPQCstGwAIqCIcnKq1R0jIHBZuBs1l25fwyVpr/YF8zOq0lFyOLsa5HzBcMX
	4g8hXF7ykg5/uQ6tNr0dFQo8aRnObFOs9GjG/qvUIsxKRVRR9NzXqdhmdpokChhc4ARmFUzJKFE0f
	OJImb6ZqxXAEuPsDp1vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7Z-003OHA-1D;
	Fri, 24 Mar 2023 02:25:37 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7W-003OAT-0q
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:35 +0000
Received: by mail-lf1-x12c.google.com with SMTP id y20so423709lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wA9AQ+nWHNjK6KtfMTvCgN8/qi0qBN7EegezNZNg5hs=;
        b=hID1HrRg6E899TA9x0zkyKEDqR0WwU3JyZ4G+MgmZIZh676SF8V2fzxP3gOBh6ErjX
         BJHG0csV58CZOvnG8E4gAN8ojABAjMis51EYdnS/hMISnLdA+C5aUaB8tnbAWVbNqPUV
         xfOcpdq1iwQqj2L5Yw8/ssz+Ta2GCQjGXwxBv5TP6gH3EAMt6t9Qn16zGPqBD4/eXi0i
         JV0iUt6RcbOtJFCvAvIdqlS357lCh7nno8sQXwHJGZJ/64WLPwh2CjVOSczql0NdkzQS
         U0jswYv0z691vJWzdzolOzKqaoCsXVcZJ5Ftx69OZH3vy4dwGTay99xJGP7hcFCS5p1E
         Cpqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wA9AQ+nWHNjK6KtfMTvCgN8/qi0qBN7EegezNZNg5hs=;
        b=LDHgDm3EwVQDGOHadmTVm8TRXTjK5f/rclQIiBY1Rp6/WBMBCkKkpZP306ITjBteZb
         WQRvkDng6HRF5TS2ZMGn+lzHXwjiqZV1PWoQyoESJZ9TwEJhIU4co9TsvEh6Wq78M79B
         EQplhoob6+cvb6Nkfdyyuqk8ZwR/oIr2vLuJBh2n2xI3yyH83fu3Qq2ATdiqMDWjUi/j
         amIP4eE2TGpsB6Uq4Q+jCE77eXdkNzZ0A0dmUIly4yDhrHebygLVGROMKfhYXSssAT+A
         QDV3crDBVP4x8/k9gDhvESIYypMfXeY0qYkEwtkeLlB7V+Yr3YHdlTpiI9wV06v5dgG0
         jHeA==
X-Gm-Message-State: AAQBX9fsu4UT5UQNDxZQ2AqZ5pPefP7G8Io7lxVmZmww+O23c4ofw4gR
	DGiPNXkbuaw5OhFXKJ44dGOdMinl0gSmp42y528iCA==
X-Google-Smtp-Source: AKy350bnW+OIDOutoiEi+uQeFC4+2ygLb0gojeMbeOKd78pZgtFgXt6ErGXzwf2TH8zz0DSrSpZ4mw==
X-Received: by 2002:ac2:50c3:0:b0:4b4:8f01:f8b1 with SMTP id h3-20020ac250c3000000b004b48f01f8b1mr208641lfm.31.1679624733810;
        Thu, 23 Mar 2023 19:25:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 17/41] arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:50 +0300
Message-Id: <20230324022514.1800382-18-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192534_310588_2389FB3E 
X-CRM114-Status: UNSURE (   8.43  )
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 32 +++++++++++-----------------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 0dc50170db7b..da764ca42129 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2155,34 +2155,28 @@ usb_1_qmpphy: phy@88e9000 {
 			status = "disabled";
 		};
 
-		usb_2_qmpphy: phy-wrapper@88eb000 {
+		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8350-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
+			reg = <0 0x088eb000 0 0x2000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref_clk_src",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
 				 <&gcc GCC_USB3_PHY_SEC_BCR>;
 			reset-names = "phy", "common";
-
-			usb_2_ssphy: phy@88ebe00 {
-				reg = <0 0x088ebe00 0 0x200>,
-				      <0 0x088ec000 0 0x200>,
-				      <0 0x088eb200 0 0x1100>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		dc_noc: interconnect@90c0000 {
@@ -2327,7 +2321,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
