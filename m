Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF5ADC76196
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BcZIN5DeVlZZ4eHIPU8hgH7JOCNJyRtF684j1voxxo=; b=MUxXoLdO5OXBjL
	Ft9cl6V8LbS/4gL9UcR2XmmZxYdrgqJw9z+xHzguKTSMBjbNChKNT1rmPd25B//QKcuEt8npnFS4v
	1F9Z+kSYjpZAp35edjPx4wnCA1pVcXigavJ0sXo0jMQI6SSdsCsMRkzZIq/P2LrJ3UzFgOdKOM9f8
	bDMxVS2qrWyTl35T3TrMg4nX9xKqNIdK2e0ulME3e6tptQpjfwmlCIuFwg5NMnEBRRB+4u5maE7Xp
	2m2FesCoAXjew2nCELJ3S1cGKpSwvV11g6DtKWJcOdJn9U4MgPHqFyzff0WWSROTTbMH9zaD3vB0Z
	QWwgiC5vVu0tfZKb0hBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9S-003Slr-1b;
	Fri, 24 Mar 2023 03:31:38 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7i-003O6E-0p
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:47 +0000
Received: by mail-lf1-x132.google.com with SMTP id s8so396071lfr.8
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKQAL4iax+jVCDzXN2tBv7jtLm8ckLZ48UB/bWbPt7Q=;
        b=aZsm1vv4P5WmKNWWEzC+gHSlcl3wltZ21f8tAAvo63ZztQt1UMct+LFahXwEK9XkTd
         Ajel5HsXUYQ+zsawEqqcSp/qZksCrg6Mc6eLIeeUXKgnmGoalKErXkHAQgIdYN8I2Ygz
         OhbR90QLeojsxX3PT0M22WPyblZl59PcHOtJkvPoKt4xjCRPfug/xV4XPnnHhZlQH+Kw
         WpnanqZe8QYmkHejxhvz+Y1ep6JCcW0VL0jcQdIEVGwU0fPjWb9BAySP+aNQKh8/rp/2
         ObKsZzT16GJOOBVkIX7RGAOxaKgJSle6CgW83yeZt9libSJmkSY1L0HUNM+UNzm663WY
         Fb3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xKQAL4iax+jVCDzXN2tBv7jtLm8ckLZ48UB/bWbPt7Q=;
        b=h/aZ3tuXteXweipdV9fdddWValonpv2GzOe5zx333/mVZvueeRbg+J6BSz/chyeiAp
         uUSNvIEEQ4J7CA+zRb4jNd1NP7EbNy0m8oysDV5ptu4lm1o5rUO+ULLgwWYKglJeIrLy
         0/cl/GZDpJfjJmkGIvkC1ulBIrgsI5bIVo8ok8YELmSOhA3Jmkaxj8FsmsKk6VnIpH1W
         eVo6HNYCoXcHCXS5amkEncSonyvAzKj5ekEvEXtD8Iv/aQzA/tdJ9eci3nYDf2I2E53b
         erNGcGUaymhMf2DVfa7154HM1MddYyV9Fa+uoR3JYSXKrULnsKDn9Uort7PW6hfyReQJ
         9HDQ==
X-Gm-Message-State: AAQBX9eyBAEOukEfO7Z9+F8fAxgQTPM4QX9EQzU3E7v3dpHo+wtvxl2a
	1xQ3lWrsTnhDkv58+llahudkig==
X-Google-Smtp-Source: AKy350aD3AIl53GTd7p+9glt7NCL2UNGDb+r8fHRQfhIyc+15pylEtNWumjuJnGOqz9+ADHPCR57Ig==
X-Received: by 2002:ac2:43c9:0:b0:4dd:dd28:31c7 with SMTP id u9-20020ac243c9000000b004dddd2831c7mr173879lfl.38.1679624745731;
        Thu, 23 Mar 2023 19:25:45 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 28/41] arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:01 +0300
Message-Id: <20230324022514.1800382-29-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192546_292646_1EDD7626 
X-CRM114-Status: UNSURE (   8.41  )
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index e7b1c9fc13c5..1d13864e978a 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2156,7 +2156,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2200,10 +2200,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -2211,16 +2209,10 @@ ufs_mem_phy: phy@1d87000 {
 
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
