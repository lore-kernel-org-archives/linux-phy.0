Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9120DC46CCD
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2i2En3vWziP0l42oitKQvFZ6KGmnil2kRV5RIh2b1s=; b=xQaRJqBJ0Oxhd+
	cKeF3b1fZYTuH9yARnUxHBPI+6Rh4WdN1CY/18Hv7II0uYOVKoCTR1fbwShLe+W5JbdDCHWLEbhGM
	aNRB9CbpSepbIsf5WiQxPCprI+f9vAc3DqQyuovSLZHEDeMsVcvFiMs+o9P6THoirzZ738BWYBa49
	JyBm2BawJkVf5ze3RLU/hgMYdRIdU9zLFX3v4HByHz3ouvK247HaLg2KbviIuBMcDpy9Fcc0c02LE
	EZA3JVRiJwsSLE0yYUPQizXRXKALV+VVdl6jEtW6ampXqHszOyCpIZlwVGu5cDvClv3SxcOiDeJij
	VmjuGFX90UUVu2M+FdfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQL-00AYcn-12;
	Mon, 18 Dec 2023 12:08:41 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQI-00AYab-2X
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:40 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d3ce28ace2so1721055ad.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901317; x=1703506117; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gvNQvdCy0O2wlOymvN0iIUEpRjoZ42RcAo4vagPpclg=;
        b=G4vjTcnfgRNQomSxzX36GJe/qK7An+MuJdl4fxduQc95310yRf3qtIF4cTBOd6hW+W
         BteZGs+F2F7AGGGuA21ZGYmBp4AqqRfcnRieiYesAH7z5ETsMKYKJcgyInlS2+BboOWt
         YG6PHLqGzyEXx/ry9YL6VrZzDv5CQoNQrpP+UCvCcF6P8Ar50HvUXk2YzbaLn181vEIW
         hRLC6J8AarIzYhqcfip+05Da1PdvqnMjGowflttP8Wo0bVXPlLkfzg/syOfAzdcI4+eg
         RZYGM2XFswNnjky2d1CfHa4B+7ryXlXxiW2Xw+JxAwKYWIwH9y8PUsM6imWbnmH6mbV3
         IO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901317; x=1703506117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvNQvdCy0O2wlOymvN0iIUEpRjoZ42RcAo4vagPpclg=;
        b=X2Pn97WUH3nfMjD4cmClxjlrk5tyXE0uS8EKEmNyAQGVjUWCGvU2g2T4nwz7aOWE7z
         Z6J6G31z/NBy0iQ60L9sWis8XAs56WKgMe3fwmpM4qw6C2Nt4wuOAKxdMwTdoXOuXdOj
         tNv68Twg5pr9pNmz5Ov4QPg6PyLRS46rstHLilcz2b09GeEpetq0XaEaTAaIpdUmiUTj
         xLQ66lVAcf0rRlGWpJKV9QtUglcep9Jkua6LNn/Eb9wJRRH0WDO6JpGYHk5/xpauyQdA
         1LFAZZ91jwrmesDK/uNaeRaWtXGYQxq2CqFCd+KrYv1si3vEUuBXsAdX//1bIKxgYWdP
         uQzw==
X-Gm-Message-State: AOJu0Yz5Td+kCrvSybgvsIsAeBBJESQfXUSfet+G1tXtyB0Wcg/s+NeX
	TcPXBDEeSJfi5T+6q6brYoZt
X-Google-Smtp-Source: AGHT+IEmFgwhty4eOC1HWIN6R/wmWkUmpHUAMlQfWfME+fkRcMzo7kKJtBRaeLQkaRQozYVIufi4aw==
X-Received: by 2002:a17:903:24c:b0:1d0:6ffd:9e1e with SMTP id j12-20020a170903024c00b001d06ffd9e1emr18461127plh.112.1702901316940;
        Mon, 18 Dec 2023 04:08:36 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:36 -0800 (PST)
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
Subject: [PATCH v2 12/16] arm64: dts: qcom: sm8250: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:08 +0530
Message-Id: <20231218120712.16438-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040838_830269_9751F49E 
X-CRM114-Status: UNSURE (   8.96  )
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

QMP PHY used in SM8250 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: b7e2fba06622 ("arm64: dts: qcom: sm8250: Add UFS controller and PHY")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index c1b7f9620ec6..e47c515af6cf 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2486,10 +2486,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1X_CLKREF_EN>;
+			clock-names = "ref",
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
