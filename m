Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39A5DC4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tP/nZqfnCMhBDjckqV7U6VlnELeZN8+Fhv6BujXXj0=; b=tP1PvvM0YRDB3m
	j0DCF9YXpHsh3MQbAQck1llmou2QZxeHZ8BrioI0gr2x0KQwxKzK7Cayw6orMULeV9CDpQu0Dl/9S
	O7QAsTsb/2YC2mHYXOmWZ5cAUH9cLI2gy8VdFv4MHlEdsFWEMM2WrSNe+wl3Heovpo3KcQCsTpN2I
	DBqlakAvPmOxtN2fwE7M+r3ym62k5AIhGFCa/LaAXUvSWyqqfCnksgIjtJkED4pvzCJ35cQA2Sll1
	7upa/pPan2RgACJAQdR7XcRASZe+xkjgGjNFR7sUoMC6A8sOnXER1NeHnFm5UOkdorZjL01qgvUeN
	PyL9M/iOW2MsNBapn+7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhm4-00HJr0-35;
	Thu, 14 Dec 2023 09:12:56 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhm2-00HJph-1K
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:55 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77f408d123bso297187185a.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545172; x=1703149972; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=90h9raFSlwYqtZtEwRi3utD1Y8btrpvvb6rt2ijbFWY=;
        b=UXH3/zCoiQzHLItc9n7BIMUuyinuwU3yVHf4xbULT/Zr/54DH3FEACkzU/D5iVPaeW
         uB7xAKN3Da4fWRt4Rmi0URVZWWexUKrgMogrvo02fjgBuFHaJvScX3Iraqs0Jis8mEt1
         7TgzL9NFUd85RwYY7IbrpDzN0qCpaVmKKwROkBOOQ3UGc/3xb3udzOPbHSxi1XHty/wW
         ChNF+oX4Y9l1CEYuawpmGHTnKPpxW1Cd21uhSAeH61aeH1gSUUxVISsMDc8WtSvKhd7T
         wLPhG8IeM303t8ovoKERwITUoRTDh6qVI/sE5dWCD4mOroyJPzAGrQuc76mGbf4rzNY9
         e2bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545172; x=1703149972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90h9raFSlwYqtZtEwRi3utD1Y8btrpvvb6rt2ijbFWY=;
        b=sFP4F1QNNFtYVvEufCreGwMsg7Q3OQo9U/qYO4SE46GHLte58M6qzn79RFY/6d09mh
         FFWeyLVOaHT9ia0iSd2dCUcFkFojE7HaM4osUZ0L1JxlbfloI4fcnJraxTJRVU6J2nGq
         equcAKMYH0I8ZJD9FE7kkL/rylwmyHganbnDvajJebISaXoS1TcI503sZLKTVjDLFsb8
         msevPOAJRVd0c2bXvrw/kpAXgdkPtFeRzKB93a/w+FP0BQftmdMT4vhW2iYZQRO3XyDX
         cht2tCxxooXYwIyI8CCZIEcVH8nWagVoUPjk2tzoedX4TKdAouC4E2q+i7dOfBjnWHd6
         UL8Q==
X-Gm-Message-State: AOJu0Ywb5Q3ZJ64QbAI0sVlh/4i45lCvQuteqUzMcN2sTnUoeetxAcdE
	ej/9b883cvYPIqfpr9Fc8gIJZ/D7mcPkOvaClg==
X-Google-Smtp-Source: AGHT+IEGFG/+5WBdW+QF3Y2B4MEmKQm1lHv2/KY/sKl8G6B/VvdbDTPntO5+kmWw7bf4yF46kQC8FA==
X-Received: by 2002:a05:620a:956:b0:77e:fba3:a7af with SMTP id w22-20020a05620a095600b0077efba3a7afmr6304092qkw.141.1702545171754;
        Thu, 14 Dec 2023 01:12:51 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:51 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 16/16] arm64: dts: qcom: sm8550: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:41:01 +0530
Message-Id: <20231214091101.45713-17-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011254_446223_12E59033 
X-CRM114-Status: UNSURE (   8.56  )
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

QMP PHY used in SM8550 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 35cf1aaab169 ("arm64: dts: qcom: sm8550: Add UFS host controller and phy nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index baa8540868a4..386ffd0d72c4 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1891,9 +1891,12 @@ crypto: crypto@1dfa000 {
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8550-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
