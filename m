Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB9A5C48285
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8TCvzwdNNa6tqbY1dqsvugf1V9Iq2cFD5aotW/xJec=; b=gD3VsSpTnIWflS
	j/3LIdEwbkTMRrciof+nX6uOSGlKIEI3R33+iAV52aMecuyhtBlppqog/DRdlhcgfCdEe3qWMCIDi
	HJwJtkfT7mMdBW6byC3YV6FR5LtjX7FQ2Zg9C40B+yhQA2K/zB7WBM8C3BdRUBHw0HDzmj5ApxNYk
	6gArNIQIl5+BvnGoy1tPCx6Gwk2DrzzsBzOSJl9ovBQoce+pu2Cs7Yzi3EsRrnx6zmeaKFoEi6ifC
	p/5EL/wsQzi/sB9S0r4vcIJARNdn82TucqBwOXLvgg2BbCg+fCuaUU7APpVYWuqhelthV83REKsos
	1ZfJ1C75FOb4hFfoZlvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iJ-00000001jJd-1k8n;
	Wed, 31 Jan 2024 07:08:51 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iH-00000001jJ3-0uwL
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:50 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6e141ee9c14so558536a34.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684928; x=1707289728; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7oNmgtgCElW74VgkhCqruhhIpDueOdHK2RkVOvuNPn0=;
        b=A6PvAj/L7xDSBUCipF7seql+021CujQ/l/nPCG651oye8NqbCW2IKb3FVp3ChYbEO8
         huPaNkWXQA2KX0wWf7vkc9Fbzlh2cZJbbetLzbQcM/lb6NRJQ2rkWB79BGU1ONcBGd/u
         EvoeJLt26+sH/BC4I32SgP6HBsfFf9cCTbMvqrXmFmLlPU1ieOLjlGo9A0VNSBIpY1qY
         TyBmp9FX1OpwHuHKlBFIJ0EhGz4CTJWCTrfBLmJKy/f7p52ZJbrUs+jTUOt9qGq/xqpQ
         53Vs4BAu+1EpQ9MPCmNLSHZvmuUzx8ezgcJhK0LfFZXazM51HMJjBoKXqFuGBXdVx1uZ
         e/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684928; x=1707289728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7oNmgtgCElW74VgkhCqruhhIpDueOdHK2RkVOvuNPn0=;
        b=upnxsmq6NouKArpgLE+vA6KCDiDAlWa+Qy1q+cfVSeZM+VW+JaJ5Nl0oI5jEhwRJ2h
         z4DmfnBmjwHIz2AcEsUwsQNMz7tRj+RgdyNDIZS7CghN8E6MbEDKelYCa4w456BfJn/H
         FNU4DYXqei/zae/4At73gUlD0RGeBS8t9/LOYuSuwMNXnqZds8nOhqbdkasVmGliRRHz
         j3W00CrKwHohX5xvPwkFOQL42cvlRCcbAizHGXFLmnsE4kT/iWSfJuQuUbYPu1PdQVmA
         BkUfQ/ltJi4Mn4kLDXLyDRBJZ0LzDwzCMakgdKU1/7icKgx0yfTNuD7aA1JpCZByaLPM
         kDhQ==
X-Gm-Message-State: AOJu0YywysnZBx8xT9RUInc6KM48B5F9ZGJ5R06fRDQGfPEg/MWz9jw6
	rb0silPZ8mOX/wXeG8HSISF+dMHMV6iyFfwtiUmWfVAYasFwO+xsdjkW2wO9Pg==
X-Google-Smtp-Source: AGHT+IEJpAeTczd0tUQq+sU2xCwLdqKOnFAWNye3Ir3ULRnmoSV+/aku6ccP/Y0extXBkhaha6umzA==
X-Received: by 2002:a05:6830:1bd7:b0:6dc:224:21ca with SMTP id v23-20020a0568301bd700b006dc022421camr522371ota.73.1706684928074;
        Tue, 30 Jan 2024 23:08:48 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:47 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:31 +0530
Subject: [PATCH v3 08/17] arm64: dts: qcom: sm6115: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-8-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1205;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=ntzdDmf4FOP4JYl7D86W3Hb9BDqaLc8AljqlYstG++U=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG8NNFnEdD6AWOhi0T1MZrEuBjXyTANfkvyf
 kU/dOw3owuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvAAKCRBVnxHm/pHO
 9bPQB/wK5qsLJdCyrzYKQmXRamB47fq/4jsJAe5EM2dfZoEhQTbOugH9qvJtG1AEQ6HwxgqrZkk
 5Oef+iz0pbpqFOKFp0Hv66+Ek5yk4CxydWFb8yWvhknXbsk9rNHfD+y8JBilNL+DTSmY1EVkJiA
 N7loSSlaC0/48acL5ye9kbUHREf4CGCFyARKOd1CF+itad/9VIYyUvtgVHHO3Nw8k8YqhqfC6qx
 Xe6RTo0ZaDYhbVWZj8PvOLgE9Kx/TxQ4RXau9OujMCEcHB31nylKtCo3FP2jaFiPBCtzCyerAHI
 aYFG+eJNxWDLG6lnoHRKCkWHpQzjHiX0MrX0xEEHNkf+1C9g
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230849_294359_17831AEB 
X-CRM114-Status: UNSURE (   9.14  )
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

QMP PHY used in SM6115 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index e71cbdef7784..261349c148b6 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1195,8 +1195,12 @@ ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6115-qmp-ufs-phy";
 			reg = <0x0 0x04807000 0x0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
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
