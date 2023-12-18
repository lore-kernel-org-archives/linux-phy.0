Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC68C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ik+7u2/eCVG+k1Jujzb5qXo+FdrwJcjOBLUTgxjiSJc=; b=Z4JxkjwStvhgdk
	MMCqaGtki6klnOjZJNSNrGsGcDKwcMPsF+RL2iE+A/V8WVLBStj0xPQVbW9ei4ekQSbAYlvFGW6D5
	M+BlzmSQEBvRflEgcNfa4iA7sVNMTLNX1uCKLe10uZrZ8EyWu/tT74w62eU1wPf4L4lddWkmgvoFr
	K953XiqkaAL0q5fclRr9AHFE5yo3zYOPEEnp7l+t/pZXcJqrrjpWmOkBCWryUnC1d57tDajj5YwiQ
	riyRKxKQUrTuYltiocigkZ2slRLhv/NxeSa9A6iae7MjNdv5P4ls7z0Rn64x+pf8CuF2Kob34UoH5
	oIe4nzbr2Xfm4svA+oDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPr-00AYQn-0p;
	Mon, 18 Dec 2023 12:08:11 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPp-00AYPw-0j
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:10 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1d39afa1eecso15672185ad.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901287; x=1703506087; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQdElwhJNkunjNkKmQMPCEqC6kOTfOJsifUeDg9TJE0=;
        b=T6xVHRyEpj3m8TTXIUkafow2O8jEuHlHsQp5i53br08PO8BaypYN4307HEVFYNkx3+
         wRA3o3oOkOeNfGk/uIWMgE1dwc9AC3ffxb1HBfaggSpIH7WjT1xMZhA7SY2YZv4BKaGr
         ScD2MZ/BtuWfcVpPyzyaxrh6bFh4nf5FVev9jTTkMYl9a5+gTxcITkhanox405XfRxmZ
         kXhUpbX0UbRi+HbFR+y6ZETkM51EVnx1jj5PXshJ2ylojBOHJCc8U3MVawADgHDf0gh3
         OyimB4TL7r0yYzTWW9K28b+pCrgi83aPDVVpnQ9Se2o2O/H3IM5LU36/0SKO4ThUKEq5
         UmvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901287; x=1703506087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQdElwhJNkunjNkKmQMPCEqC6kOTfOJsifUeDg9TJE0=;
        b=JeMlv2fnRF+97eUEByPpcAb0lVywMJrDHo1A418MsYaRHBLR1f2Af0EQzgQVOBDNRP
         KHs/40In4pay4J89YNS1MorQVXZkEnXPE8ACcPBqzvHGmA9YBMteGhXBU/i9rZw4ed2u
         laffR/jsual84pnFdAwp0oxmSO1xFLEd1voGQZ509snDLYbbex8+fDqpHhK2YdWzgnVc
         XRm1nu0blGTKZBI48ejWF2booVJJEnNw6kidbczFvxCnAa4tk3S9gxsS/6wWbpRTsEXn
         T2ojU/yQyJWBkebWg32jkAfU6LAEi77UWMrTSHEQI2AoIajhOLIlq8SfNl2I8OI/kQfk
         Ufuw==
X-Gm-Message-State: AOJu0YwFdDJf6Ujroqq3hp4cdkdnP7C2B2YRZJKA91xjchLdIRokw+Kz
	YH9bUOIHDGDNGink7mPqmIGL
X-Google-Smtp-Source: AGHT+IFNgLs5EPRIQlG8vNg7cDLPbZb3pQzoiuB8DApHzGVX2h2mUfRn7BSJx96zPNyECoKW+QnqKA==
X-Received: by 2002:a17:902:f68b:b0:1d0:6ffe:9f7 with SMTP id l11-20020a170902f68b00b001d06ffe09f7mr20769460plg.85.1702901287157;
        Mon, 18 Dec 2023 04:08:07 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:06 -0800 (PST)
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
Subject: [PATCH v2 07/16] arm64: dts: qcom: sdm845: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:03 +0530
Message-Id: <20231218120712.16438-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040809_263036_0F7F8585 
X-CRM114-Status: UNSURE (   8.67  )
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

QMP PHY used in SDM845 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: cc16687fbd74 ("arm64: dts: qcom: sdm845: add UFS controller")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index cb3bfd262851..a7529af5bc6d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2619,10 +2619,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
