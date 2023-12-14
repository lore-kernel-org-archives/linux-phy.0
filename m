Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43115C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9KC+OzREHkw5GV/sCPU3tQJKB2+Asqtxfgj2y238/M=; b=R76QVg18xehv19
	wTq3HrwBDMRLpOrRczKgruV/2oZr/WNqL9vClKtus17VsPB4cfQh0hxtaLvctKJyW8JEyPA6SYt82
	99+VFoSVbkf+8ECxaaP+xgDo0IBtih+QgajuKVOlcbJWLC2mSE0ByH9bsORvU/86DGwr8H+qnli59
	/6jbXKLqPrkQPjr/QKJt8lhNZBhR6+EE2H3fzOEtDSXDuKcAKQ4USQiQCGxv2xGIWFcv77qt9m9AI
	BsqG5dqKLGMd2jQxsElfd1A2qmWb659SYQu4A97GpqiUTGz3OOL6j8/n2xjeBYFRNsRFmHSqLQ/VH
	cCTOBmkB1JjSiBov7zDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhl3-00HJcZ-3D;
	Thu, 14 Dec 2023 09:11:54 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhl1-00HJbR-0h
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:52 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-77f320ca2d5so33907785a.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545107; x=1703149907; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=ffpb9hqFxlXCVhIC3QGXqSf4B9aqvMDqEHL1H4RGq+BpsWJBJjCHrFFOC+WlkHDVRI
         +8SIdZ2nzYUqsAR4FePTDKPvvNNJdlVXIjkN8v99BbISOhSJ0vWGRUYrbGK5/j1mXZXW
         8rhIg9yYBIQtz8QzTKjKXQ36LIAWU6GUQe0SOYNw++x+XDen/3VnbgvjfddjZoyZeMXg
         ID5QBoNbAWgP2DmR5hvKJ0atB4bNQ3/ObfUGMB2bkUQhRdX0IZmJHRUm8f7n31cXdD+0
         PPRktBAnYpufc6ZHiU4MX6zvsQOsfDJFmW/lU7YkuREzaITz889GBProZKIoyNC5pPno
         fimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545107; x=1703149907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=r14mPAWRUqY2A0g25riC6r8WxV8L9VVJN9O1XZsIDcHHYvUUFEmlTOtENqRyP0uE81
         lID/78bqyp9MttPNFUgM6YXTaSPd0eCNkTnBA14GiI32Qcms4UXB5PPIp6wfQsJ16so6
         YULy+M1KFXAxgMpEb/rc+YCz/LsH3uu8OQh4tHXB5jERQI28XRLgYIVEC8y53zbtOwuZ
         xTTbLtGyPeopdng60phPd6K5L80qLInLChc9zUWpywGDcpxRpziLHcREg1NHLwf/CM0T
         Yv4OIH4KYv2e1KctoOm+2YZhzBt1HLdveDXus3LCV4ATVpnfScUbgc7n4DHpR3uaP8zD
         f4Bg==
X-Gm-Message-State: AOJu0Yxk1vw+Hq1Iv8bMfqzfSLNYd6g/HyOJSwSZSJHBPOhW3bamoQv6
	yinsWNymIfKFnzIPkNtKKO64
X-Google-Smtp-Source: AGHT+IHt2uvwSeovh51fDULXRLbHd6A/TplrDLayAqqLdOB2HDbSO4NgNckuHMbr0eqUuRBeW5jSOg==
X-Received: by 2002:a05:620a:6007:b0:77f:2f54:f990 with SMTP id dw7-20020a05620a600700b0077f2f54f990mr14664887qkb.67.1702545107292;
        Thu, 14 Dec 2023 01:11:47 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:46 -0800 (PST)
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
Subject: [PATCH 05/16] arm64: dts: qcom: msm8996: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:50 +0530
Message-Id: <20231214091101.45713-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011151_256357_86EBFE62 
X-CRM114-Status: UNSURE (   9.55  )
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

QMP PHY used in MSM8996 requires 2 clocks:

* ref - 19.2MHz reference clock from RPM
* qref - QREF clock from GCC

Fixes: 27520210e881 ("arm64: dts: qcom: msm8996: Use generic QMP driver for UFS")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 6ba9da9e6a8b..b235f1d651aa 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2105,8 +2105,8 @@ ufsphy: phy@627000 {
 			#size-cells = <1>;
 			ranges;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
-			clock-names = "ref";
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK>, <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref", "qref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
