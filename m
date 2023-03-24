Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39009C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr/YdwjO8eUP5tZveSIEP4od7CGYil7jNZGcwrZhtW8=; b=d/5UMFWwkF6l/+
	Hlv1cMFBXtQ5NQil34W1TKgWWWIjFupacAFMJ79x+kZ4MSEk7D2q2yZtYHf8cDyJES8u6wr0/sw8U
	tAkV5uu70EiF7/GdT1tmdHqxBf+dE2mUt2zjzSXTBKHIU6q3qZCY802uK138JsNP0WF5kjD/5lqe1
	gJDmgmdva3m44XyFMLq4JPwhkAaU1vKH78QUdjHpX/MT8ctNk+SJatxgXmlkSDsEEoBNGD+b2VcbX
	B8xNJuc6Mhf0qQfd7eh8plHteuYLTQvPxddjtKvt9Wt9/83R6TIZNcCpEHaUD2/a1irJQcq/k7/EX
	yxUdpj1eI81HsLUcO6/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9R-003SlR-2M;
	Fri, 24 Mar 2023 03:31:37 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7f-003OJJ-13
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:44 +0000
Received: by mail-lf1-x12d.google.com with SMTP id i13so392689lfe.9
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaUGpAfwHHLuJ4cZEN8S8oeefubKLZIdqhiP6z3takA=;
        b=JdA/5z0y+gwwYc7DME+UvIPPdcOivs2Oh617/4YEIGSTNXffITV8Ekic0jwt6z5QTj
         znk0j8WQpP2HuTIJzZkvj+U+E/7YiGJp6zBS3SXFnRDgYh0y05VGILyA1TwHyUjOuq34
         WV9kwiroNCVXyxQk4OV8K7ACb8nabhwWPqpHynRvQZO3X5Id6V4a4jHpKsrSJ4UYMzTL
         x8gH3XARAutri3CXEQL0cPmWBU0lztdQhRpFq9ur9OhLv820/sIXcD8wA5+HQ2r0vJt5
         ZZVvJaQa2NtRDYDrTAP/+TQv9zsXhDnmO6yD4/amUMZfbQMMbjP7w8qUXEuUFEmG2MNO
         VDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EaUGpAfwHHLuJ4cZEN8S8oeefubKLZIdqhiP6z3takA=;
        b=KyvgZ3xeVjKYF0Rl1q667wcazxqPctme5JLpegelYVrS0AXlTDu7GONWkBasOJooJh
         7YAhl/32QFx4UvGKTPrk0XQrv9Swdo1KLgP24lKOOpn9jbRkvwRBjpo5aF3gnCjCjNR6
         9THes/KaIYOQN6ET79G9bVTNADXBrptipwdZzq+Bj4dMbuRBrurY34pKES52Eeb51DHb
         9sVJiEsxb2g0RwhW0RppAlnkgdAF10ZcTNXqAUl0ynd+z3dVpVif8ahK0DU27C/4H4dd
         7IVpclTqLxXQJsikyFBnrLVUD47oSRaHhTLCEme9sx/mcqSTN1r6vl6sp5asiUPxgUNs
         FSrw==
X-Gm-Message-State: AAQBX9c4gDvSQv5+6IWbeA0R8fsRiDVKQRYCRkrKY3NYtCKwzTVy0C5f
	2YN0LtlSpDux2GFe0Xs9R8lm4Q==
X-Google-Smtp-Source: AKy350YhPs586yx66kOSmXbx9XzEnUifSBWO54ENp173ylvtyHyy8jF9sxGYWjaVJzdzbmwbSxPijw==
X-Received: by 2002:ac2:5301:0:b0:4a4:68b8:c2e4 with SMTP id c1-20020ac25301000000b004a468b8c2e4mr205188lfh.59.1679624741972;
        Thu, 23 Mar 2023 19:25:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 24/41] arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:57 +0300
Message-Id: <20230324022514.1800382-25-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192543_363654_8C529BF0 
X-CRM114-Status: UNSURE (   8.10  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 062790ef7bc9..6eb82c5641cd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2559,7 +2559,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_PHY_GDSC>;
@@ -2605,10 +2605,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2618,14 +2616,7 @@ ufs_mem_phy: phy@1d87000 {
 			reset-names = "ufsphy";
 			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x108>,
-				      <0 0x01d87600 0 0x1e0>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x108>,
-				      <0 0x01d87a00 0 0x1e0>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
