Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 978C6C76195
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUpeqPmUNDFLKBy1nwIAV/O8WvUPkCM9EQHzYW7opvg=; b=PULferMR/FPpxs
	Zf6mJPT+WVlfITxNxyWJtCWpod0PmCjCJJ8c8DVOiR6XfKQx2vRMS4E2LpwJMaoCkmBOo9TLKJNUV
	Kkt1ossElp94CL3G7T/FwfQF1kFZ0WkixIrGmKy3nQjIvRJN3z29PixY/wxcdTX32CGeOubSfz1IY
	I2rWpchw7rx4NlUSGz26ARCkiq9wIz7IOyi5/RMDNUxZX3mcjF6KSvwgePSJfH0hu2tyHfBFBoP7O
	0cDUqvQZ0t0rYhpOf6KpCQsOGba6s0DeJRZ0j6FbxxZPkqOHyfC4ZhbAjCkxMG6vzBs7WUdma4AD+
	HGSI8DYEO9hUz+Z1fwFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9S-003Slh-0m;
	Fri, 24 Mar 2023 03:31:38 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7h-003O6I-16
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id c29so417444lfv.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztyVvHePc2g0fgfWPHlP7Fkc4koigeoY8jwnoi9HE3s=;
        b=xbkmYlZOE167rM1f/K8gU7inlBIooaIZIv7GjJ/3N1wJnEVF31QsXzVDhFJUyOm5WM
         8EXr+gvs2KNBr8lfJF5PRAxnRGU0a1GrpLCnjci3HOBv6vb/ayJP3p/DjWfV1AC/tzEN
         +XtCjZwZDw0XiaIgAUAtKlVF4OsMzBQhJWwmVHD5ZHOm27Q9+YO1U5UI7zoM+qwfaQY2
         qisEuFUIDpdDdCJtSKB3vrKJdYXCFOAflmxFh8pCtOYMzaYKxBlIejoODvlAsZMwtYyG
         uR9nPiJsZ3f+E/c3SBI2Lj7loxOR24/Lvsu1iWo2WVUauIn+NwwVxMeLEXPxJef1SMkV
         WTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztyVvHePc2g0fgfWPHlP7Fkc4koigeoY8jwnoi9HE3s=;
        b=Tm46zWMocoZqP0WzefoVX2Suchf5xLriNtscl08l9VbFy41KP+2Z2SRZ/fZmfmua+Q
         JRqMRVCQmA0C8JSnn1dgZLaFtCEvv5kmdTORL/+liMbKx1+RQDkRaHO7c9CznEsj7mgL
         Xg2axrCwHcjkfWaA3T1Ij+PRuRx5ZVoEUMInLRPndbeoC8xJ89+3x+1BMlgH3CkCtOj8
         0XsYEYmdT37LcQBzz/7S8U7rUb2xr0tQlhWy/BokQSdqlOOs17ucykfjivH2LgxM8Omr
         B2g9ircHoP/HLmLfzqIWXhdNCAII708fOVuGFoZ6VimWCRTmESbZHvIuZOPOYMngm8qf
         ITAA==
X-Gm-Message-State: AAQBX9d4odbHL+RWVYpz5e/PaFZkyPgO54IB4tznQu+QPYtzzBM0Pi9A
	C9eT8Zm2KzpEjdBlWfC1y/MaJg==
X-Google-Smtp-Source: AKy350bDSH1hnFn//QrzuFUAFg7C/7e4jB7mKj8gv29RKqqJhCVerYG087mxoTsJon8TUpMxQPYZoA==
X-Received: by 2002:ac2:44d9:0:b0:4cc:96f8:f9c6 with SMTP id d25-20020ac244d9000000b004cc96f8f9c6mr267800lfm.5.1679624744821;
        Thu, 23 Mar 2023 19:25:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 27/41] arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:00 +0300
Message-Id: <20230324022514.1800382-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192545_375153_204CC443 
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
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index c29bbd5c6fd5..be10b68893e8 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2011,7 +2011,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2056,10 +2056,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8150-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2069,16 +2067,10 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x16c>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x16c>,
-				      <0 0x01d87a00 0 0x200>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
