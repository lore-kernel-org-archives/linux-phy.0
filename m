Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F338C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skbh9IwQxql/Pf3v1EDX2s9yyK00IwaVZmE8Ga7I36s=; b=eBF9FBVHJnZFTm
	SW5lPelvbrGXgy5k9tvOekLrjbuVN5epEa5wL1RyjewI2tAgHkeDtvJvvO9UxdsCVXYNYk8F9gPuZ
	Y6BvWYMfxt7Hwm5sdSWFQ4SZI6e4Jfdpiy2uQ/qvy1VIUtf4bcgBV4r/pnWuQFXvhNgN5zE7x53dq
	LPLBCJqK+iWgh/yL4mESlT3WSTOJicy291gPH4sG1o/Wy6kjva/KjnHW9tc+od0hSKAOyrsKPGU5r
	S4gcLMh4SpfhfAvorBJmnZEMKOyEEkTnVBYPtbQahO/ypKBnAhrxCVxVFTt928W9h2GVAHOkIO6fO
	RP8Hz9ivs/CzIwTNQJxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhls-00HJoB-0A;
	Thu, 14 Dec 2023 09:12:44 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlo-00HJnk-33
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:42 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-77f59fcb204so331347785a.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545160; x=1703149960; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTvHTb3eBsG5jFvbdhGh0zasO09G1PrRZVvH3m7yDqQ=;
        b=nQeY6Q8t56sm042z4oUo7MjcF7MSdtVxjHczDNiRzMCPISlZP+26o8eTHtFxMsAvpt
         9Rm692GBTRHbOXrnecNip5AR+qXPcjq1IOUqxW63TDIo/39kRoQ9VEei1YZhbIq3CRjB
         r+AY74Vx7z/IgvZ/fdEM3Q3036+WudO92fJ79K/cbZgmlNhh1oa01TsbYs0c3sC5zQpU
         G+Xu3BXs0AQFdPGZbaQAATQv+BhLVWyio+bQpgJNj7LmayPAdn4HigRF74Wlw3w9UJl5
         1UPKFB1wi0AR7roPEKwK2Jv4GT/NEWs37P3xe92jRwAW1wupaRGae4MKRU1IRIszYTFS
         mwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545160; x=1703149960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RTvHTb3eBsG5jFvbdhGh0zasO09G1PrRZVvH3m7yDqQ=;
        b=Gi5eYHZRdrzjVQlHkmZy9YiLFj+t02msyD1y+fN28BqFvihXURCwHQN39V8LhSPVam
         k6oe4QR3jD10OF6Qr/i+7G74yaB/4V+3Tb0aQi/bCw5LP3Zdj+1MnsiLKbhoHLAirOAh
         cNFMM5XnXYn5asLxpGDKwRs/tvBpZa5pe+hwWCIeNmTGlKLFfNfHPf+qgMj34CagjjsK
         U6WlcEh8gqtVgaunXr7WTem6v+YP4wISlAPt0uXtGyT7aN0MVAO5TPF+2GHHlH+dzIXs
         f+suSncQQqQIMh5WyoXy1vkd4JYGw58Ih5Cs5BonHeCWTQU558ICFuEeXFkarqyDClE+
         roqw==
X-Gm-Message-State: AOJu0YwhcANVeuXCMvopBYUlnrIGdQP/rrhJeZn8bC/ie4W9RhsJ1yPB
	WOHZ9i6r6kHHlCK/fwfsiv5e
X-Google-Smtp-Source: AGHT+IEpmVaZuTwzbu1BWhivPFP3wp0kwntHWmdosjIBL5bKy/r96k37U4HBpjYRfuW3aZIMXlXqmA==
X-Received: by 2002:a05:620a:20d7:b0:77e:fba3:757d with SMTP id f23-20020a05620a20d700b0077efba3757dmr9763694qka.117.1702545160156;
        Thu, 14 Dec 2023 01:12:40 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:39 -0800 (PST)
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
Subject: [PATCH 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:59 +0530
Message-Id: <20231214091101.45713-15-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011240_980190_FCAD13CE 
X-CRM114-Status: UNSURE (   8.02  )
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

QMP PHY used in SC8280XP requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..37344abbe8bf 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -2256,9 +2256,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sc8280xp-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_CARD_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CARD_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
@@ -2318,9 +2321,12 @@ ufs_card_phy: phy@1da7000 {
 			compatible = "qcom,sc8280xp-qmp-ufs-phy";
 			reg = <0 0x01da7000 0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_1_CARD_CLKREF_CLK>,
-				 <&gcc GCC_UFS_CARD_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_CARD_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CARD_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_CARD_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
