Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0CC8C7EE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eouZfxXBJdba4R+PrrhxjGYNU3iIEbBcZQ+lLk6QXqM=; b=36S4XQXn9pVqg4
	pOx3BQP+x3YNH8DfXBYX/vK0JfaoGPueSQyaq6Sq+EOSoB+qg1fuj8j9zaMGl7iNCTOpXKO5SK/js
	BYVUlfZShl02NJhDhAn2MamiTv6cJFOPqIGaXddN2xz3tKm0Y68OUyhnw9fkUATmym65SHyHGpapE
	uonHiE7EJWnELKcOW0yXr4od8B+U4rIT+mBYnIXMsjQk5Q2aibvnKTWK3QbsrsRV3IUw47s+JBHxz
	Holarau4y3qY+V9ZWqtwWkMHgB4sz/YbAew64uuLnnVYFumdGzKBL/LndwT5/wILwyBot9t0vaSZm
	jxCbwPKhHNQ8NHaD3/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfn-00ASdq-14;
	Tue, 23 May 2023 14:07:35 +0000
Received: from mail-lf1-f48.google.com ([209.85.167.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfj-00ASZ2-2e
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:33 +0000
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4f13d8f74abso8158424e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850790; x=1687442790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZbhUdnSFaWMvybH+cNQBC0oxk1+YlDY8cdWgqgMPCAU=;
        b=wvK3DxHcXZII1gHRR1sjKY8Nwqg4X5VZIDbYMQvKjTxsOIQ6pU0kYN2Te/UkzQN3tz
         QpfuwfnuGHZhqL2HG1SXRBzO4bYmEy0QW9m48JJlfng+AUkLJgVOJ/JL0/WSiMnhz3v7
         eYUl4Utk7mxlAvKgvUWCJrxMR9f3g3ow9tbSbFPJNOcx2hQLW71ch0PQ3+pj5iF92zcB
         eESncaNx9SRBI+mBNDC6XQnCyhf1x2wmSbjIOimKGl97/x6FOfieACcDxKUyOk6VzZyB
         1SnIMIn/UQhHs4MF7qEcJsuI96Mp9lS7A4IPzB9SNaS+1bayqufTqZiqK+j+e1tjB6rl
         5UFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850790; x=1687442790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZbhUdnSFaWMvybH+cNQBC0oxk1+YlDY8cdWgqgMPCAU=;
        b=Qvke/wrXvQtQaiAJgagWA75InQL2J+BgmqofVKqjVbkdxZ1Msxv+j7FTdPpUMrVnzo
         spv5E3k3Gt2HlYbhWDCbErnrhydLf3MpsgID3zAS1QgyDBkzrOw9GjiNUfRjHOoxFZMX
         cT7CQ2a8nv7bhfz0QYu0Hy3ytUFIFuRX9CYFwftfqu198J3kb53cfu5bOBUncCdkAI0D
         N7K8mk+9AABhOT9IMvu2nvF6WIKjvX7SL+1wxdWYGJYGtTac/eKix3ChktfUCDN7MaVR
         qBuklXiqKuRi2VU+8OZOq1rZHTY5oog7F6otLswpWpX8V5Onkz8pLuEmCVH+Qf5n0VeD
         7T/g==
X-Gm-Message-State: AC+VfDwSXkIW8pftsMAeyra7j0QxI6TLFfqjMI5THd34ZTaEhJvN/ycO
	0v6cxueFSU4TrF32UtqmzgWXdw==
X-Google-Smtp-Source: ACHHUZ4t9zbq1AowdI1VJlQJfVLmnxGhvv6Kg9WaqN5wCiP7a/BG0wMq04FbbIdNtMMPfT+jku8Svg==
X-Received: by 2002:a2e:a318:0:b0:2a8:a6a9:4303 with SMTP id l24-20020a2ea318000000b002a8a6a94303mr5053654lje.8.1684850789906;
        Tue, 23 May 2023 07:06:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 08/11] arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:19 +0300
Message-Id: <20230523140622.265692-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070731_871160_F537C345 
X-CRM114-Status: UNSURE (   9.42  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 2273fa571988..628f3cead829 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2018,7 +2018,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2063,10 +2063,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
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
@@ -2076,16 +2074,10 @@ ufs_mem_phy: phy@1d87000 {
 
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
