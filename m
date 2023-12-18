Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AD24C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLJyx+owKN5vbaAXEip/ncSGXT2I07AxymFXBQSAaS8=; b=GKtx0fNYiywJZl
	rCOFL91BH2c/Xn2nA7UciUcfpZUJTyj1N5T+2XULFkaFbD1w79XYgeervTDRON+FxyVqLO5eIEtnZ
	dRrS8eLWm2b2tbV6YcHQ+Fc8FMHyOK7FCswBV2ewl/qb8+Bogu2mO/bPe6kETorGkge5eywCCva9U
	QwqBhlQtyGsXwZ068Ym8X0J6m4FgdeF9MZp8jA+R8ApcDp18eCds+tVVZjMd3CE6BjjvaiwCBnFR1
	4eSHEnzuJiP3B6gtBaMwwHNPbFvBJ5fy/Uhxqq9ftP9cK9ByV9m0bKwl/j39D4hH7bt6jE/G4YJBj
	LjjOUevY5KC3Q0kWMsoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPm-00AYPk-2m;
	Mon, 18 Dec 2023 12:08:06 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPl-00AYOE-02
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:06 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d3c1a0d91eso2368275ad.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901281; x=1703506081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=V2duq+esGJ16tcOxrJMFqLnaUE5SESeFp9bpjkSyD7I2BqXqiiOGhhRsxvUtbvd7AL
         VJM+ik9WT61gQqzai9llMoXxKjqg+mfFDEQpijV6KMOpW2jt5Hi3xQp4q1NrPC0AmpP0
         zg0pyC8sz3f46jSD+zy7yDgIiIwHZIL+0IxdfKSe2PgpvV21PttRi4fvwlJkHn1Y7FGJ
         au2BTU10S8vBAePtPlNLv+n1fmTdsjwdg3osIccitY9kC2FeqDb9phtm77aJECQ0VMjQ
         J6xgahFlHexSQlVuIItKhHYP8jhfNXZnKSy7dJrwJgSIuVXEfc+jnAZyPapoLRMJUK/5
         JFTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901281; x=1703506081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=TdYBAs1097kJymUuUAn/OB55ry9e+otqsi6vghKXbEWPzQ+JFMQWnPbaLa1BLqqEEq
         QnvquqCXvH6NaTH21iH4F1qUxTDyCMHevx87+X2CWBhob+jwzF0x9/aBFk7iiJWHkweu
         SU0AYg8kfnbFb3bQpLAyAY5HVFdCTeXy1QhThq7XSWBzsewhZ55qCAFrrJ/UGp+mJGSd
         3sNTF0INRS9cOYVYl4rR07r9aHNAJtbRoIotGh5QrzU5/kWxii0WdZnrx6mD/TfaIQ4B
         wQV4axVViAm1oAIREJsbHE+/TDOTzS0j3QMwy4d/NxWLxQOVhK927r/ZfZDcGz4vUI4M
         Go6Q==
X-Gm-Message-State: AOJu0YyU9wkW7pZlf4iFl53i2aYmbVhuG1dkHcaon/fKrvenROGPPGBm
	YHRVVxwloC346ARNQPHD2pKV
X-Google-Smtp-Source: AGHT+IFpmFbwrX35pR8JXljDwh59BiNAQY5Eow8L0IqGWR6FSSBRUPbJHpRKtOzNMeLuiWR9vuMXoQ==
X-Received: by 2002:a17:902:ced2:b0:1d3:6408:211a with SMTP id d18-20020a170902ced200b001d36408211amr4518454plg.129.1702901281187;
        Mon, 18 Dec 2023 04:08:01 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:00 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 06/16] arm64: dts: qcom: msm8998: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:02 +0530
Message-Id: <20231218120712.16438-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040805_046482_91B9B6ED 
X-CRM114-Status: UNSURE (   8.34  )
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

QMP PHY used in MSM8998 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: cd3dbe2a4e6c ("arm64: dts: qcom: msm8998: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index b6a3e6afaefd..d4c55e2b0043 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1051,12 +1051,12 @@ ufsphy: phy@1da7000 {
 			status = "disabled";
 			ranges;
 
-			clock-names =
-				"ref",
-				"ref_aux";
-			clocks =
-				<&gcc GCC_UFS_CLKREF_CLK>,
-				<&gcc GCC_UFS_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK1>,
+				 <&gcc GCC_UFS_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
