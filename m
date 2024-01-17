Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E454C47DAF
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzQuXl3VSK4NB/s8oivGy5J9lT8YQhxjd/mOIoeNlXI=; b=0nrp/wZ9R7gGTD
	0LRsOXLyaLho8M7fMAG9XuQJQXYKe2cbjGWjCb6oxttmhPwSjqgkynw+nkDGteYR/DU4zPTvd6Ngl
	A9bDwKIJFPuow7i1x/5BLyb/AJ0oORX757y/3Qt+HKNXggQAzBgbUJqvPjYLC0zcFcx0Q+gU6jHl5
	9WdZEtbt5vJaBAt5hd42hI3ggXOzALAcWm/28GzFiI+Nls3mtRidkgmQnrf47pgZeG4jzjNEEUjHS
	7LORypXbUrS+koedRCjvURVjHfdCEhARfdh8l3++AQTiIwUoZ5ZIVyPy3N1o2DsvDJkOl93LuMFP3
	FzHxXNhoLe2DAB/m8+Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wx-00Gr9j-00;
	Wed, 17 Jan 2024 14:04:35 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wr-00Gr2G-1E
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:32 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50eabd1c701so13656419e87.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500268; x=1706105068; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MDBhbGYpjTtYfLENzNTw+65o/Tc1yQuvKthYRLJB+4M=;
        b=imrGyyEDxHSye2i2p/xnXtiN2MtktdpLp3Yi4zFDuuwzKVu/5kG5aDPQ2wMT3rczor
         Z3SxfJ65hehBHuI+gqt4TySGt3SHPeiYBq7xLlI+i5glrjhirISNsvtpZgQ67VWC3sAb
         wPB1ZDzzvNFpS+bzIiE6gkL46JVK6spW5/EIpMrebf4rqYIVSgvwo09rfH4ccvPR/7qE
         3PVYiJ5EjFYBIhXWiU66vjwPYIoDnC2Cz/i3/R3xfOgcZ2AA2Uh6PccuI8USSbo9DhMG
         PEoqPCvmRHbtAC03I5qI3vSH+lzxoZDfhwGNkivrbPsFm8AIiN+AoH01rpnH0lCMFnw5
         UAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500268; x=1706105068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDBhbGYpjTtYfLENzNTw+65o/Tc1yQuvKthYRLJB+4M=;
        b=Dbdz1F3WMd78gBtiJ4T2R8bWoC7929gBu9+VzQGC3AxZiNcHNvRIhe73lvOgdRp5o/
         pbp5by8KRQD/M+dK5lcQuVXAqpXpjOj6bNE7ZXrM+riaclQ5GVSIyP9MIWdSB0hEN/S7
         Kr3XEtuRJtLdOiX6pvRU1kf2x4Cvn8CKpJJrPeB9dl7yzAVupPNssGAJA0d6eM5DvNLJ
         ErGQBun6bU0kl3PnBQ85DSRdzOSjj38wk3OOi3y+ScIKxJiMu9RvE5yqsF+vDF2MFQtd
         BjTKQikFyF8L2DA2yw3qMbu85aYlg8UtQy916ea8yE2/be6AQlmszp9O8Zh04/Bu7oEB
         aXCg==
X-Gm-Message-State: AOJu0Ywm2LQM/tnogsiNVpoHr8gG0Dqnq8dlCXUWGrd7FbRjQMTKohxi
	5GkysvLTltfEEZzy0oXRsHUq2CcgqKJzpA==
X-Google-Smtp-Source: AGHT+IH1vHCYDSOtvo5keq6KG+y5uUXHlp8a1UnMO5nKy5PkIM9jbKTRki6B6acZ5XtiWN6qDyqAXA==
X-Received: by 2002:a05:6512:b19:b0:50e:246d:7566 with SMTP id w25-20020a0565120b1900b0050e246d7566mr6081947lfu.7.1705500267900;
        Wed, 17 Jan 2024 06:04:27 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:26 +0200
Subject: [PATCH v2 5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP
 register for USB3 PHY
MIME-Version: 1.0
Message-Id: <20240117-usbc-phy-vls-clamp-v2-5-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1144;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=MdoBSrycZYklvpg3wMrnQWxk/afUuXbu3ZRk4SLziVo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nKvHWn6Ym3qkYZUxeHE2QKkiDl6lZquXZL
 Q4IpSopRwmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1UgeB/9dhgwttDM/QiCLtTkfn7SYobAr+0HKa13nNimPrtMxJzAPF83QdCgwXEAoANDZ4S8zQFC
 vBh3/p9yWK+2M2HqLSI+fSBAqH/8hv15KnaazNugWT8xgUwQ7rBJBl2ELZvTqXsjsDD+zdVxdlT
 TB9nvCbCpm+vmT8zO7gF1iOnQWNvToc9sDVCSIBZCh6roYhsAfkqEC7Z9CM6E1zW2mYqclT6vjl
 QJZr7uM5ET/dAkIRy5Ohz+P1zOOywiEeu5o8K2aA1VqnV46zkj2pp7td3zCmmuNcqAfMrxAlObQ
 o2ohpwcqiNCnalg5oG+OBPUGl7u5oubMJloF+9tMLskENNyb
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060429_459187_506BFB6B 
X-CRM114-Status: UNSURE (   7.87  )
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

The USB3 PHY on the QCM2290 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 0c55f6229bc3 ("arm64: dts: qcom: qcm2290: Add USB3 PHY")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 0911fb08ed63..89beac833d43 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -442,6 +442,11 @@ tcsr_mutex: hwlock@340000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr_regs: syscon@3c0000 {
+			compatible = "qcom,qcm2290-tcsr", "syscon";
+			reg = <0x0 0x003c0000 0x0 0x40000>;
+		};
+
 		tlmm: pinctrl@500000 {
 			compatible = "qcom,qcm2290-tlmm";
 			reg = <0x0 0x00500000 0x0 0x300000>;
@@ -690,6 +695,8 @@ usb_qmpphy: phy@1615000 {
 
 			#phy-cells = <0>;
 
+			qcom,tcsr-reg = <&tcsr_regs 0xb244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
