Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B8BC00528
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEQ7RNT9RIwHwAAjYlVOHKvTAwWlspSyt6FHi0tVIeo=; b=oJdWX/t0GAaA2K
	wzAQc7lMQ2HD42OAV+W51i9FHIOeH3TrDEzoE2nNEedUU3D0E8uAUrf2e0V+QsaMhxueKEjAozEye
	6aDSCNEY2apZZm805MpWwSMDPxgFGS45p9POLnPUx26o4OrzBxehsI+5YG1Vs5r6lcJWq7mdlXfLO
	nh3jTmSrXRgt0FWPD/dz009HvjQ/wvhA2aHjLpsvvXkiwg2uPCE94hJBfFhEiLGsvEn4AgeC06SIn
	4nSn8V6ilZbEpzogLYa3aKht6EWvoKWXop6wivfx/mbA//vPMhifak/RGTtcfAfeR9CSD50AB0q3F
	XkdOvt7ZulElMnXu4IRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBL-00EprU-35;
	Tue, 11 Jul 2023 12:09:27 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBJ-00Epmv-23
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:26 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f954d7309fso6977077e87.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Cck4XETjwSxqYBSp799LRzvkKqEbdU7ORZEtnCC1/c=;
        b=A99KZOZdmI4iCTlcQZ3uh2cAHanZrl4ypaBB565nQSSw7wopCx4almq665/PcEYXDA
         ZSVsRRBSsiWgrx48ayn5qAgfalZwvZ65lyUYvydiwsZGrGTmnCu+l9gaqb2hLs35Mcu+
         wvOYwb+wbsxNVCc09isGmSWx+W6OtR80pcNULHQlnyZGSbgerRqZHNpLg9r7ugr/Xp4o
         d2wZewJwxcqYgDQSurnefLP02/O4oEFVX1dpDNPjw/Q7lyAS2UWWwqMuB42ZYNIm0Gkc
         BGenKsFJB0hnwdsqo4ugZx7lqPsbo2zyYpqu9fBz8BIXsAZoDXV1DfL61PlNKwysyBz4
         U0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Cck4XETjwSxqYBSp799LRzvkKqEbdU7ORZEtnCC1/c=;
        b=h/tpybuBh1obFLb7DTL0fwwS2uWPL4K/J6Yg8BIjgGBqe/2yv9hSm38gmOABfgnfpw
         PtYlBffXoSls2eJ9kz6bjRxkurMdDo/jS6CFbq9klsiD6IOJR+N7tLgki10Ve0fmJLVa
         ZlR03Yq28ritxm7H4mLRN1UIFPivenAQdnzXr4CajbXSx7VmQx5xH+rQTKim0zkLn6lw
         IReisDwDWADCRO1mxhg9R9QtNeBbBoK1/3OoNPyES1X2ebiIk20wPnsmsu6SWWPqEMNr
         hEo2l4odaEztRXXsoxvmR6e2xcDbLJ850k/IZOGdGarvLAW7/MDNhZ9U46KUWKtFsaYP
         NXnw==
X-Gm-Message-State: ABy/qLaxwKk0kHEbSjgJlAN4FzDoMPA+144o40sY6TiFqwJmeqPfvDNa
	7mwp/mz/E5w56zpSN4IcLFvFFA==
X-Google-Smtp-Source: APBJJlHRwsQpJW8ZArxZXtLHquj+dXAS/+yUOI6zk6KCe46Db9/H4PA6ZMsylPMV2TyPcORICGopYA==
X-Received: by 2002:ac2:4f0a:0:b0:4fb:c9e1:5286 with SMTP id k10-20020ac24f0a000000b004fbc9e15286mr6945443lfr.7.1689077361885;
        Tue, 11 Jul 2023 05:09:21 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 06/10] arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
Date: Tue, 11 Jul 2023 15:09:12 +0300
Message-Id: <20230711120916.4165894-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050925_680234_43C976D5 
X-CRM114-Status: UNSURE (   8.37  )
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

Use usb_1_ssphy's clock as gcc's usb3_phy_wrapper_gcc_usb30_pipe_clk
clock source.

Suggested-by: Neil Armstrong <neil.armstrong@linaro.org>
Fixes: 1c39e6f9b534 ("arm64: dts: qcom: sc7280: Add USB related nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 925428a5f6ae..2870fe8fd526 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -869,7 +869,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
 				 <0>, <&pcie1_lane>,
-				 <0>, <0>, <0>, <0>;
+				 <0>, <0>, <0>,
+				 <&usb_1_ssphy>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
 				      "ufs_phy_rx_symbol_0_clk", "ufs_phy_rx_symbol_1_clk",
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
