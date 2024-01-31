Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8756DC47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCEMPWah+pGJ3a7QE5Z/785UxreKwU3rBl+2zeL60oM=; b=E2YkqJQ5izZ7j5
	A1nGv+PApuDEvvinBNPdUe8IRKk04dMHnbtmXm9drGVqNd6leGLZPZTeCkXdCrqI60Kjl5G8Rr26U
	i+TCsJDwq4QONPXO2imz8v/JmKA3/6HCpLjzZ4022eqI9RbGamswQFU5T4qlpjJ97PPYhqPkoc5zV
	atyO0WUWVyKX1bztVdIwrdLyrmGHF6RWdVuxRedz7zgKD+d7Ab7Zb5WIiG9bo63tsF18cbN9ni8k+
	ojdgyB18NVXsV6Xf4g6cjHpPJLD/DnNuGc8YCapa+F8PTKA1qMA9mmC+t57LeLujEB45hJ4spsCoU
	oXf8tkzeWVG8jTFdJ9Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iU-00000001jO4-0ZS6;
	Wed, 31 Jan 2024 07:09:02 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iR-00000001jMZ-1aV1
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:00 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5d8b519e438so2556401a12.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684939; x=1707289739; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a+f1KbYOE8uwAMslptBk3PljatnhFo4ZiOznmj3zAzw=;
        b=MR50yYCFb8wS2jZuLSffeX0cRYYYauEmQr/2/XgZ0KfNLbXtEuyNyNnQHv41jcp5YP
         6ugftxBDCX9aejTa2NpVzZZlW2T7pxoxyieUanWlznV6VskHzmYK3NNHzKlaWBDk0cXh
         Ax5xkRAfd/wTSBNmM2xeuwstWt2wvgpe2vUeUTh4UkVktuzlq9HRVznW1hCcutw8FJAI
         ina+7DoUh4pyDy7J1aSBPFwY2YHYCb0mh8pPUM9Cd8bZWyVk/sV4XR0d8VM9y7j/JCiL
         tIKuz5CTGEqvEFgsiyqLtL0Or7MnXPKy+bGOjGS/8MO0s6EOAX6SnEEQjcar+pyTstCO
         XpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684939; x=1707289739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+f1KbYOE8uwAMslptBk3PljatnhFo4ZiOznmj3zAzw=;
        b=OEeQ9HuppXA4JaVQ3l1PSBHbJkwrHIWM66UkE5sKiRvViBa8zQmcSYxN7diJDvGfWm
         CHl49L1U23sQKPTta6rXQR6AG8xsB6vyqSRCimAdVjW10aDCbyhFD4/Sd5ulDNezwaXc
         6bI9CBPr+uRhULwE86tmc/+/zUFYk2PDeXUapt6eFCuedBUjKZIM8OQAOM1PLbNDNHiH
         crJtjVkH9uz4hCimqdFRHP2SkernStwJRQtPJ60Mp/cgZs4R3zeHpXcAd0dZf0Is9aE5
         bT18b3LJ4CvySITBg2zJlJi+9jyxd1rk9abB50dkSRwtbaqldjpzt26jo/YspdwNZOOi
         3alw==
X-Gm-Message-State: AOJu0YzsaptLYo0DQFWoJ5YOHGufXrsNmLQW3SNNeI4MG6nAIFVkjqsb
	/Is2zBD6tIULXGPDxCLsyj2cTVu0jBpYA39rfNpBp2vJ4lGoYZMD/9u2/tDf8iFjJwTKDqZdxew
	=
X-Google-Smtp-Source: AGHT+IHrx7RXyom9N35srInD1Gmj8XfPv4lfYvTP2iZplvyzkBSLmKnfF5QQ2o1tJIpNorzQOWJarQ==
X-Received: by 2002:a05:6a21:9208:b0:19e:3096:ea24 with SMTP id tl8-20020a056a21920800b0019e3096ea24mr796815pzb.37.1706684938810;
        Tue, 30 Jan 2024 23:08:58 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:33 +0530
Subject: [PATCH v3 10/17] arm64: dts: qcom: sm6350: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-10-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1295;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=oHo9/Iv14iEYhCE+ZaJXIeO4pW3mEpTmh/ZTf4/ZBSU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG9QqK47jNzzRNotnSEbEEAFk+SwBHVzDKUd
 ZHt30BHclWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvQAKCRBVnxHm/pHO
 9R6OB/wMSfXE9mu08okpRkRqnZUZMmFoWUEwlG7quLwe3L+5xnSPWLu/SJ4o1XMRA+HGeM0118U
 Jf6XZghejsBxnhxHn+qkz+mrNocVRbcTPlQ+7+3jtXhRrRBzSmMNdMROZzSgAhEEfWC5SnD68m+
 1UcARLlmFie6CiUfpxVB/xR2ZWYvHcdcxTABL/WuMLht3K/o13XEM2FDtbaCb2uNJJbP3ikiT+7
 dgAPe5c7kLMD6RKXAXCar7Q02gwv5HKkabrWv4GX6AZ36RCZeOh8MihT6w84A1Klf8yNOoWJ9Nu
 YQkIB3mfRFzfKUFkRXk5GbDH20rSCofr2yUxx/nW0HmwPNVl
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230859_457562_184C4F83 
X-CRM114-Status: UNSURE (   9.59  )
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

QMP PHY used in SM6350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 2fd363953bdc..49fc4cbe1294 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1189,10 +1189,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
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
