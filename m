Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5EFC61DA3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 11:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ot6GEcswbhq3/DmaVHqDi+S04YSzBoTbhdfKwmkWkqs=; b=HLuTiQcw03RBM8
	AkUNabKwz6Be5WqhBqO0hYANdEr/dNuG9tTsiJ3XYKhTaQCWYOTHiR7/H5Zk9ZvCU6JbARQ5+s/j9
	gN/Vr+JdzYkHyyprIVPvbCuoGhuzgdmBPtcR2SmSN3rZDc2jK+4Cs0GspEPYEVxpSnUAqMtOrFTwH
	Q4EYnDFLvnAE4eHgIHwtpSNokF8FGMD4/2kupcWQv9iAo+AFALkHH6vTy+ApO2iqyhOFsUHwKYixg
	jpSX/Ubm8FoPr3ul7nAQ809+ry88Bbh4nFJPSviMc3qTACc6OvG720m0oQluWqQKPfPnRbYDpR6ZL
	CTTuLczWFozITxU0f6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVo4-0029Zj-Uf; Fri, 24 Feb 2023 11:00:04 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVo2-0029YX-9E
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 11:00:03 +0000
Received: by mail-pl1-x633.google.com with SMTP id e5so17419692plg.8
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 03:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iy/081Gnr6V+cD2T3z4UyrGlDr2ZO96fWTmGEselzPk=;
        b=omzwojmBfXLBwxx4m/2TDvoMwMKtFdapI6Cq/+qHa+SFyKZbOknaqo92wLMxB7CSB1
         6EpzY0PP6Cf8SrNlU+kNAVv+huuFoTRF6xgxnT6Ac4NgsqaKsVyWpov8o2cJjw0CJKy1
         LVXXDY2QcSTlOjhmRx+TBomTcxcw+DNlCn2krY1ACefjvd7dtY7QJC06IR+hGu94glFD
         SlckOCApaR6D6BBYs6A4jAvYylEiBRnig3pxU4JbKdEyWg2Dr5EUjBfS3V4ULT0NSQIG
         kcnvoyHNrCoQymPVst8Pb68g7r4y1szcLGmPf2ovZ0BXaOXSww2QGeZtMlHMtRDEjjUQ
         9/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iy/081Gnr6V+cD2T3z4UyrGlDr2ZO96fWTmGEselzPk=;
        b=UJozO+YI9oRk0xy5J7QShFWsEMPXZiS+yBSuMOhu78HSkK8KMGb4p+ltDoGKIPpSvk
         fXNM0LSruE4D24qYdnbBzYrGab6ALvuMKDZmW4F7GKHnaeS2Zqu+tNZANlccXEXXtjiu
         O/58K+JtKnIlQW7vCeHS/snrWtqrHqDWXcNJsigHLqwJ7dYZlFk6yZ9W1tb1+63+UgvD
         ovk6ztZ0iWpbRkImTGfvFCp2jw98sDMRiN9OdXhHSSq++7XLR2vK84AlxpiBjZZNL9Pl
         mGHaq8Cm/yGUOzqRaR09HPFCKk93CMz9QeDPjVgen4zIphbObayNOrtTTEqrISeA3u5L
         iT+A==
X-Gm-Message-State: AO0yUKWXNMHWU8vMJP2S3Q0DGhGI8qktt95ep+s0fNfsQcMDE2RTGNDC
	bbGF3DwqTdtrhAwAPT48Nv0D
X-Google-Smtp-Source: AK7set8CvCsU4TU+GLe0XMihMpYoLb9sQ6/0LE28lYdVX7+x0QvO0XegHlZ+ZofKIi5yIiueZMEh4Q==
X-Received: by 2002:a17:90b:1bc3:b0:237:8338:ef4c with SMTP id oa3-20020a17090b1bc300b002378338ef4cmr3152906pjb.9.1677236401754;
        Fri, 24 Feb 2023 03:00:01 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 03:00:01 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 10/13] ARM: dts: qcom: sdx55-t55: Move "status" property down
Date: Fri, 24 Feb 2023 16:29:03 +0530
Message-Id: <20230224105906.16540-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_030002_348345_88356BDE 
X-CRM114-Status: UNSURE (   9.12  )
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

To align with rest of the devicetree files, let's move the "status"
property down

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-t55.dts | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
index 6339af791b0b..67e366700105 100644
--- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
@@ -237,9 +237,9 @@ &blsp1_uart3 {
 };
 
 &ipa {
-	status = "okay";
-
 	memory-region = <&ipa_fw_mem>;
+
+	status = "okay";
 };
 
 &pcie_phy {
@@ -278,8 +278,9 @@ nand@0 {
 };
 
 &remoteproc_mpss {
-	status = "okay";
 	memory-region = <&mpss_adsp_mem>;
+
+	status = "okay";
 };
 
 &tlmm {
@@ -308,16 +309,18 @@ wake-pins {
 };
 
 &usb_hsphy {
-	status = "okay";
 	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
 	vdda33-supply = <&vreg_l10e_3p1>;
 	vdda18-supply = <&vreg_l5e_bb_1p7>;
+
+	status = "okay";
 };
 
 &usb_qmpphy {
-	status = "okay";
 	vdda-phy-supply = <&vreg_l4e_bb_0p875>;
 	vdda-pll-supply = <&vreg_l1e_bb_1p2>;
+
+	status = "okay";
 };
 
 &usb {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
