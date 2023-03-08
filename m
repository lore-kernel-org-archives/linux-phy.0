Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5773BC6FD1E
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ul4iytKF7ErnzQzU4ylsbV/pFmJZhvWAVyhf7BeuCOs=; b=nLyuyAnEpGMV7l
	R9BGsUtQueEEqlPkXL+hIQNyeh+DJVcXAepHBFv/2naRcZjmLQpkOkl2cloTHFugjiOV1p4NeOIMY
	/h4iIhcTqx41se0oaTBfjzplZ5VCCnd5xMjqc59JA5YsNPfOqymsXDZ8vzBtta2ZGdNyO0P9Q9xhx
	38ExZAf311CeunvE3EZLzuOVPqOAtixdFdC3Bw3sWB0phmZqN4iDh5QSd4FAHGfsuedqWP2pU5X/K
	xQBK8R5KEY1fIZ/fB/vMXqhwdPYpAeuN4JPvE/Ib2aSqheNB0u3c12U7vxfg1MD9jFka4nti8btZq
	3GTwyC7jKCCpmJQV4kEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6u-003xlP-Q3; Wed, 08 Mar 2023 08:25:20 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6r-003xjW-88
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:25:18 +0000
Received: by mail-pj1-x1033.google.com with SMTP id x20-20020a17090a8a9400b00233ba727724so3058346pjn.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQJpuyMO7No6L3do6sf/Hyh8x/cG+HXQS31simvwRLQ=;
        b=dZxg1CAelNmm3jMmmG/QhR2zOCkilkJgVekkRZC2c821qOXoNOX8isPquaa2KibZIP
         FPlFQyiwOLdOsF/f4duejnpaQFSkrORqcxLjb9ckCHIx8TnrrKraEl+HqdO76fNVE/va
         dEuSlnbwF2oXWYj/Yx/Gqe7WkODhRBcBQgftfts1w8NS0uvK+Mn1m0Y+Hw5Vmoggwmm2
         glUnEfZY4IqgfiSQ6Pecv7UOARPnbXEH8XoeFKnHruLkbweH6nRCk5tx3xy/CcygveYb
         j5aBIGg+HTc9+FIPzgasDoOZarDhMoG6kQbIBtT+XJPkKXcS5VzFDyVcMLl7JeArlncd
         Eq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eQJpuyMO7No6L3do6sf/Hyh8x/cG+HXQS31simvwRLQ=;
        b=LVOSca3F/Z1h3jUW2NheBjRTIncRS5VkNTD1ArkGDfIcDAwOVZw/tN3sJgyAl69st+
         Y0nmP6ztDI7zv38yXYqmq0w5QyGqsH8ZYZFQ1KrHi1hjmcEH4bB4m2TMGcnvs8zRDggu
         1qmnGi1OpcTkHvhNLYyw01KHZwD6ttjVfJKgZuiV534G3aZrrFz6CyvUtFSdkMhESDLY
         b6qEKbB8nIMEC/YD/4bDrRgNTE16AKDM1dMNbkMTPUfD6lO+danGk+jtIe6zDzsJuRW+
         nJ3oEll8IPvszSMDvNkuXTdi9YeYdzZ+7nNleSLKNGeq/ao37vNSB2OFYVwKDLLPmseD
         hRtg==
X-Gm-Message-State: AO0yUKXo6warURFbr8uU1CiihkEwQF77JxkuvN+WfdPajKtq5NscmcX5
	Dd1rZXG7whE8gGdgionbnnpm
X-Google-Smtp-Source: AK7set/MGu+yLUTnUKn3Isz//Xdy2WvlQQjBxO+mqV0OTaRRoJ+vXI6X/oZgqiccnjZACZAkSO4/9g==
X-Received: by 2002:a17:902:e549:b0:19e:76c4:2d30 with SMTP id n9-20020a170902e54900b0019e76c42d30mr22750201plf.61.1678263916357;
        Wed, 08 Mar 2023 00:25:16 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:25:16 -0800 (PST)
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
Subject: [PATCH v3 10/13] ARM: dts: qcom: sdx55-t55: Move "status" property down
Date: Wed,  8 Mar 2023 13:54:21 +0530
Message-Id: <20230308082424.140224-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002517_306357_94BA7DE9 
X-CRM114-Status: UNSURE (   9.08  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-t55.dts | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
index 5edc09af8e0d..51058b065279 100644
--- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
@@ -278,8 +278,8 @@ nand@0 {
 };
 
 &remoteproc_mpss {
-	status = "okay";
 	memory-region = <&mpss_adsp_mem>;
+	status = "okay";
 };
 
 &tlmm {
@@ -308,16 +308,18 @@ wake-pins {
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
