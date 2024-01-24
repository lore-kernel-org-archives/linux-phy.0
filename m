Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA88C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+pqLqUvhCkT4thpZhgXfd1CPfyQ8W1zuJIAXuxLtfI=; b=hbqemkuMFVOdvE
	TihSD6dOhIUDJpd8Mmk2YjO6QIccyjmovCZjaHbCHrCp7FynAzeiZ23HjJ/qbyIQO/KZT8R64DNa+
	xM5OdNdiLqKRhpUWmza41kJ+X2zc3Fdl7nvtDw/3JjPC8MQuz/XWcN05jkttLEXUhDkYjEWI0+KuF
	VgSKWilCC0YYANe4yZPVvuMMFAVWxn+c7m0pl8QbgrmlT5Hgqg+h99ZqzN5K2sb3bt9mlaDK+x04a
	Pw/qr/CKP7aoD7mJMXL2NOXTqCtT1CRi8dIayl9SalN/BUJkEQuYtINjcWQs/pBgUoLk7UJitw47j
	NcOzX7UWmYWuosN+Usgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXok-001sMh-34;
	Wed, 24 Jan 2024 07:37:02 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoi-001sLg-2c
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:02 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d711d7a940so44977865ad.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081819; x=1706686619; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fBFfSaJckS21En/NRtO5B8XnRhjsR2n6FJYjapBTDSs=;
        b=AWXT7Khg+vFCYWa2YmHSK+JBekSBgo+cCg4WfLQxvDQ3z9qlIj9c5+7BWGcihD4REQ
         ClXNk9JQi1j0misH5OTjCHBJGZkBtLks7AIP1w+0UOcgyFaZ8HnQkHQZsU9iyw5PhqBt
         cj/YYFFZrRa+KNn06LLaYtBZRajoYyxxR4un0mcZh9MZ1ogCXk5LDzS/hRzGG73lc5G0
         IAJOFl4g8KAIvwWR8f47ecjJTuoRqlIaPbA6y8WtI8wU3bW/YQxnL7VT6E8PNkg3+ZQP
         92n6ZZudnAzJSH/3DgXfIr+UwZ8/P5RaCbukFO3tkuRPM6Wtf3XQFUNFDcVXiFqJQIpf
         jc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081819; x=1706686619;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBFfSaJckS21En/NRtO5B8XnRhjsR2n6FJYjapBTDSs=;
        b=u3oW27w50eXzyfJprULg1emDt3Cy6bdw1Oc7Yt8nEMfJVBzT2NBle363PEPT021iCs
         QEc0MFIxU4XZ4s/ksh47Px3D1FwpTMKvZEjC2pTCbUnlQmtwiqXD+P3WxRdhLvr7RySG
         xcLVVm6I259/ZtUR4AJ7pdyKhQ0V6+Xu/ASGWWImfWmhswkcV1UPwJYfIuU/dqafoXt9
         ud5U7pc5jenA42T9P/IdlkrajQCzzKO0lpostGXp4AZ1X/FaRFhRevEr8vtq9AgwpsAS
         VzGfgPh9G1uXYxEN7ga4TFQ4u14xXv81srBoImdOuV8StBMgDulwrjLDl3dcPvNiq+ny
         a5iA==
X-Gm-Message-State: AOJu0Yx8DorqUz1O5+XYv45e8dz8EwWj7VzfvY+hWK0O+I1JzrVc7lWe
	edAQiMYuX6oeH+q8rEMXb7iJ7xdKEPm45e+uDoF2/QzY81TZZKQU6Bv8Ifn62g==
X-Google-Smtp-Source: AGHT+IE/wIYSrBooEZbLDcaYsE02CGekV66QkvsrVyx5eIErSHKRtYDq10wSgZoYRynCa5FasB0XrA==
X-Received: by 2002:a17:902:b086:b0:1d7:450c:be68 with SMTP id p6-20020a170902b08600b001d7450cbe68mr420926plr.66.1706081819311;
        Tue, 23 Jan 2024 23:36:59 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:36:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:31 +0530
Subject: [PATCH 03/14] arm64: dts: qcom: ipq8074: Drop PCIE_AUX_CLK from
 pcie_phy nodes
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-3-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1432;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=tYw91gWuWNXo6BYZKlOtQvxOlV3OGyDBw5hpVkCGZg4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4D9c6rL/7BFeef/cHzRgNKqQG03Iu+2lSju
 AQE1U2qnCKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AwAKCRBVnxHm/pHO
 9VhrB/wP2eETp8NYOX5qto7ovhKQ2P4/3bYol1vt6g4fztAd3bHWpS9MUKd8KRh3dClCjYyXF9a
 apf4vWrS7pBAcxfIuzNWKyMkGJXN2o9LaIUgxayNJh5NpKHQx6ayHxd5fPlfOc/LMgLV8Fxodys
 m4oB3HB5yJZGlIlI3gNFKGVej//Rl1/QlkmKIiTQgQGgQwBLOGPrOssNn5QQ77PKahrqwMmr48C
 iBeoWdT/2cIhJwLBlknzbJzv+SL6LoPOIATBDo8PXmens/WyDVPzR+djCAU2FMsRcwN9sCgo4lR
 jx1HO0hJ4jMe+fAcjZ/XabH6wlUWpH1A37pQNWQpLqZgkDX7
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233700_850452_42C0F502 
X-CRM114-Status: UNSURE (   9.03  )
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy nodes.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index cf295bed3299..6ae6833e8969 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -201,11 +201,9 @@ pcie_qmp0: phy@84000 {
 			compatible = "qcom,ipq8074-qmp-gen3-pcie-phy";
 			reg = <0x00084000 0x1000>;
 
-			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				 <&gcc GCC_PCIE0_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE0_AHB_CLK>,
 				 <&gcc GCC_PCIE0_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "pipe";
 
 			clock-output-names = "pcie20_phy0_pipe_clk";
@@ -224,11 +222,9 @@ pcie_qmp1: phy@8e000 {
 			compatible = "qcom,ipq8074-qmp-pcie-phy";
 			reg = <0x0008e000 0x1000>;
 
-			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
-				 <&gcc GCC_PCIE1_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE1_AHB_CLK>,
 				 <&gcc GCC_PCIE1_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "pipe";
 
 			clock-output-names = "pcie20_phy1_pipe_clk";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
