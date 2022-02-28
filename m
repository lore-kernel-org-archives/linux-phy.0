Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95619C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFB2MltNzSEOkZJaXtlH9bHW2HPGGLNymN6omFlcae0=; b=FCWx7DuhfiWqeL
	qRpVIF7K+KFr4exEaDP2m9atg4DT9Urj6qZI7LqJ4bIl3EDLBu+9fpnhEmIFwxv0nb7cLnxwvKesa
	ZVDpL/z6hROz/ZeLbgTg9qdUEnFtV9l63QsvCo6ye6dVGf8W9TVyPFiaDiLeY9fdULXdC7qplbBHa
	b6Eioj21T6t/CufoBmYBydSr8dNnHXrIlmxBVeVfWRTcKxYKHWbFcUoITGgAc+YoQWZXjLiY5FlSC
	fHCrK2xw1QLEFvI7XoDId7m09GeoOcPO42qPisNVABeMUZh5KWSt2aS5+owk1JnjNN+hkUPkIRrMh
	pmgOydYa9tpc3LwJwfrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSV-00CKW2-EI; Mon, 28 Feb 2022 12:48:59 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfB6-00CDgj-Nk
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:31:02 +0000
Received: by mail-pf1-x429.google.com with SMTP id a5so10173293pfv.9
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a/XNuiNwtu02wRy/TRgkyFviYDIYxqmuWsetEjULcyA=;
 b=UQNYW2DOhP2WdiWZJWQx2ANfdBvGIp1SDU1WVliAYBh528aOBZFG7XtI+3d7+pWVFL
 JfzUAJesEKOi+QYCPLoXHM7iStlS+JgLcrif0UZlgK9qfbD6m3H9wvz51VIbBpXGrHPn
 P0ubW216hkIT0rtVPHMavwdWCRi2j8W6O8Ei3ojdEtQnWV/oTfXigkHd65oONNykU91I
 /vkzz/a1ejmF4P7zYOBNTrh++xznalszt/kEJmrTN0/PS+Jdy1f6TB71Qhst7gaOkpzk
 Ld935w5Suo/Gz1Q3Qeg5NcZL2NEWoWAXTc2a2b33wQH8HCOQPlTrQvBzD4hPcWHoee9B
 VoRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a/XNuiNwtu02wRy/TRgkyFviYDIYxqmuWsetEjULcyA=;
 b=kFaUj5BA6la5vGS59HuJk7z7amSzwb62MBVTlMQJxbMOsyENilmHMB//+7aOa95zgS
 8XPq8foOokk+v9z4myXA8Mg+EQM3WAKtN0jo7qNdKNQuy9BbwUPg0a9+LSwwV++CFPJu
 Ri6Lfq/XKGzvN05FGlA3+nxUQERkx8nltKrxl4dpJlH238glwfth6juGxKcVi17HpNAp
 YRfNLLAvym+44DTmQ/1/p8/r632kEUslLWEq2sJSjCtClM2jrHKIGkt5kisyyTteHjQq
 PxC3qSgz8xll1RvCQfJkSpzRLTS7aSLAcQt+TZZAnEYRDYlHvXFnv7wgB5LVpgd7+Iw6
 SWkw==
X-Gm-Message-State: AOAM531cjUkcTGPZ80xKY0JSsmuzqXcrDhD5dMEAjI8gYutlCs63GJvR
 vc1UapV2FUS3BSJIf5pmPkEpjA==
X-Google-Smtp-Source: ABdhPJw4ud5qguWt5MFUYQI9Ef4BnXs5p1195d0g+KmVLDjkH8eapfKBg2CmtI+UYIARcs9MLqHvfQ==
X-Received: by 2002:a05:6a00:d4c:b0:4e0:27dd:37c1 with SMTP id
 n12-20020a056a000d4c00b004e027dd37c1mr21536386pfv.86.1646051459367; 
 Mon, 28 Feb 2022 04:30:59 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:59 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 6/8] arm64: dts: qcom: ipq6018: Fix qmp usb3 phy node
Date: Mon, 28 Feb 2022 18:00:17 +0530
Message-Id: <20220228123019.382037-7-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043100_813955_96AF4136 
X-CRM114-Status: GOOD (  10.85  )
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

Fix the following 'make dtbs_check' warning(s) by
using phy@ instead of lanes@ and by moving '#clock-names' to
sub-node:

arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml: ssphy@78000:
 'lane@78200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 66ec5615651d..ad7914e49532 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -674,7 +674,6 @@ ssphy_0: ssphy@78000 {
 			reg = <0x0 0x78000 0x0 0x1C4>;
 			#address-cells = <2>;
 			#size-cells = <2>;
-			#clock-cells = <1>;
 			ranges;
 
 			clocks = <&gcc GCC_USB0_AUX_CLK>,
@@ -686,12 +685,13 @@ ssphy_0: ssphy@78000 {
 			reset-names = "phy","common";
 			status = "disabled";
 
-			usb0_ssphy: lane@78200 {
+			usb0_ssphy: phy@78200 {
 				reg = <0x0 0x00078200 0x0 0x130>, /* Tx */
 				      <0x0 0x00078400 0x0 0x200>, /* Rx */
 				      <0x0 0x00078800 0x0 0x1F8>, /* PCS */
 				      <0x0 0x00078600 0x0 0x044>; /* PCS misc */
 				#phy-cells = <0>;
+				#clock-cells = <1>;
 				clocks = <&gcc GCC_USB0_PIPE_CLK>;
 				clock-names = "pipe0";
 				clock-output-names = "gcc_usb0_pipe_clk_src";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
