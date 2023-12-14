Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5685C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3F8LjyplphwMB2+b0Tp8KT0j9oRP3wErNem1bV0hhaI=; b=eEUEDxh5wwD8AC
	1am6824CJNAffQgR7oZa8koMNyRKuiWAncciMSOHiVKcleRPIl2RL8DPwGoe/IKaz0LiCxKW2xcwV
	E8QGR0NyE6ioQ0TFRjJpXiXyqWKXH9knrW2/2VzmTRkaK8PGGO3S4mpmMdG9XAABhd3fEd66570+3
	71OOcmdyYfILMHjD6jNI8G8T9HpC6/nG65eclYT1eGZVTUwc4TZqan77wtT/vfofk9a75vJHAt6Nz
	WRfyxVoFgwXnfL6BbrvMTVP/Fc9HewLpdEJECgBrtx/qdHc9X0aQ7NSwweAHxoRzG70gzRMckAX7T
	KHA4lPoPTrYeVqJJJnBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhll-00HJmX-1v;
	Thu, 14 Dec 2023 09:12:37 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlj-00HJll-0E
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:36 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-77f320ca2d5so33947385a.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545154; x=1703149954; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=pNHgnYBearsCiUFjgxzLoHcDpUqN4UDRi3MDvPjuSNQ3K//H8wErhfyfihWUcnE5pE
         Oi8Zc3GpWVHLabQPtDgZrzWHmgx/Jjb65Kt/yaZrbJnEC5xsDntBkV4bGFd98yGo3Xkp
         kbGHL1n4TWgu9bLd3xkDSK4JvHQWD0JQVFqv8x0hesGHIKGOZ6bQJQE3vVsyZ4jJMcE/
         EL2Q8xVCT7Vj2ukpww9lh9O7zFlQggafKzI+xXVjWqWOjVmm6Z6B9K5AED+A+EK2pPYx
         JfZh7EfjeYeJVXsTcxQ2qQTvBnXZG8IfjIl9ItOITKK5/d8wlWrlRksTGdtunGaebxDt
         915Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545154; x=1703149954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=CM679+lDvG3y1ijk1cMuBk9W4va/NwJJOdxoQaFhnal+sPDv/Ee6hD2JPuCuNgrnTp
         4ZaRTP/ehzz7tldsth7R4Y1F/O0nd6xGgJtRoLgSdcZ6RUqvWRs+cvFgrdh725x3A2au
         dR0a26sjo7copuEo43ZvBQ+1+OIYcpdouVqBpFLyzD9qFD4N68NmvXrkhMmDBdv4EiQL
         UconcxfNz9ExqOCHl9oW/wSwtmuGLoh1To14+Rct9WDSB3IAUm7mRpMSYVx8eLPIBAOi
         3O/VOFAUKIpsJHzD374E4oZf2o7nRiDVGLvIzhh51KHQTrxu8RePtz4/nIQuo0I5PGR4
         mCSQ==
X-Gm-Message-State: AOJu0YyLHDmw8oc6wM0FcK70md0QlK8bRWAPLTuSNT7hOgEYN/fNCd7M
	A3uvbfGFG+T0FteZJi8ufqU+
X-Google-Smtp-Source: AGHT+IHEtm7mEgCIyDmSr/wXhkhEOgi12WL0DLU2N7twPYVrahWhPEqWyDCKPCHrKSIdtshq633qyw==
X-Received: by 2002:a05:620a:14af:b0:77e:fba3:3e61 with SMTP id x15-20020a05620a14af00b0077efba33e61mr12750317qkj.42.1702545154261;
        Thu, 14 Dec 2023 01:12:34 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:34 -0800 (PST)
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
Subject: [PATCH 13/16] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:58 +0530
Message-Id: <20231214091101.45713-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011235_106111_D9CECC45 
X-CRM114-Status: UNSURE (   8.39  )
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

QMP PHY used in SC8180X requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 8bcc8c0bb0d0..5591e147bde1 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2122,9 +2122,11 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 			reg = <0 0x01d87000 0 0x1000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_EN>;
 			clock-names = "ref",
-				      "ref_aux";
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
