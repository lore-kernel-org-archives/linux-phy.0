Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFDDC07C79
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 16:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/4xnYjzFs3CMTMKoZiNfh2VkK4Ke5UCRa2+wLLF2Bg=; b=XMnzqP9AGzXuv3
	FV12h9XxZfAdHN0wZorBlKhc2Hb+Ei/HY2cSMmgAXGIzodanTgo1fk0sBtzIiBpbzvG7Xih7YkbNO
	9/agYPNRgAPtwlVjMFGbPc39r4R+tdbCMsHM9I2Qx2yHLInJc0sQnkLjU9BZh26c4sBEzIoqau0fC
	MIx4V720F7JPIrOU07N8dozDH4RIfySm217aP29AHGtPo0sPyDSLC83Enm/vQNChSxnofZ8SaKQ6i
	77vV/ufAWta4bhPocBig9cnbo1alw6IEaU1/nCxXrTh529w7jwKpx3ltY/bdOQuNGn8OWRpy7T72G
	BJj8W1m1mgZ3d9XPLfEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLH-0000000EFng-2CPX;
	Mon, 22 Apr 2024 16:16:31 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLD-0000000EFli-3T3e
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 16:16:29 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-41a72f3a1edso7128655e9.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 09:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713802586; x=1714407386; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLRaymjKldV5Ae25ez2pVEwmOtAjv9LTg0zkuha6uuU=;
        b=FezMzaLKs3czGJRzuUsvRQHQmyq/5cyCrJ/z1NN/QLyaRVL0rwxS2UcJhP3yIn3Cta
         MMRSGqICDbdwZTEVb3UwdZbHGD3b1h+7H3584n2nLcqdM5VA7808R1MwDMujoXpBgtHc
         NaeJloZjR+EPBYgche7Kwx78o1dMN8Tb0E/Ias72hEVLJDYH83K5ZpILGEnFSzS4Ny2i
         KRLUXmhJ/G/uWWHn1IdLVDiejwTaul37CNn0HMdgXnRIpsVsRdg3dGrVKwJkzCmqqVZG
         BrJ7P2Yz9Rs9vDvHo1VgueJetHe1YPpAMSv2LkMvYPkkyOgNrYM9fAQZCtB2bGylvzoS
         KGGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802586; x=1714407386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cLRaymjKldV5Ae25ez2pVEwmOtAjv9LTg0zkuha6uuU=;
        b=uSFrecRwDBX01DtNr3mVDZICxDTFnqcmgtnxDU5tH+9/iZxITpbTmUsny1XDAj46mj
         wln5XhMX2svx0qeYzixaahBssXabYkfUGxSZNB0PfD7kkdICTHgDrGcGkJMUZc67nu7o
         6dQ8mdQOSlyH1UP1bPvzh3P8+IZPStfqpFmroNnHOczY3RGg2muwbPFsDK5yqN1HsiiI
         2j4opp79KhAT8Ase4nVQ8dv2YSk426I7IYlEkRxWIVFnK0JOMHeWWngg8GqwlkEIkJNF
         kxyw2GmmpHXNcvC0oPCKWsBqAxfONMj4FbaUGeeTzBgSvoqyEh0iJPslQl5SxdrFZOL4
         Kl4g==
X-Forwarded-Encrypted: i=1; AJvYcCXLa6dE9nF9q+VPITw5DMwUckNv7eRN8whtKHX0gXbgqEZ/ozPPyFJBHLdZnZdb+vx+efMlwrl/yh8mfQRsYnD7yq4F8eYcD+1R6BiSfA==
X-Gm-Message-State: AOJu0YybzqPNbV6vCPZ0sypjpTnl+wkJTGj9LQwa+BKbAtdDq7EkOw6Z
	owL94Y6j5jskrDPSqEPTO6lK6GptT98lSED97eLEW/v19rMkK5n1ySJoSISmtOPpNFdWmSaMTvH
	4aHwjww==
X-Google-Smtp-Source: AGHT+IEdkYcVtwh40osd4Oka6JYMUbTOhMjD4X/PZ8vmFTtoSEQvJrYa2uPdOkANHBd0NVvOkkru2Q==
X-Received: by 2002:a05:600c:4f49:b0:418:7401:b15f with SMTP id m9-20020a05600c4f4900b004187401b15fmr7685138wmq.38.1713802585704;
        Mon, 22 Apr 2024 09:16:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a12-20020a056000100c00b00349ceadededsm12463710wrx.16.2024.04.22.09.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 09:16:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 18:16:20 +0200
Subject: [PATCH v4 3/3] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-3-868b15a17a45@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2488;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zQpxV0djrOiwPxhRvSgIUZn7ViHWbqTnSNjH4kOd7u8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJo1VSLSi38VwUGg9SkrFCuwR25JxE8KGd2ordZb/
 iMfwOeaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiaNVQAKCRB33NvayMhJ0VRtD/
 9P+KWUA0JixCC1oGR2+YHAxDG+fQHXgdzp2az5ClOduO3N7RRavgAW9eXu/RCG+etSnXlXV9Cb8bwJ
 zQRFJgon3i3erE3aMlmgjEUM/E3/dfLpfvP73rON4BrIWVQ3uTEbNb1W38U7ww+CYA+8pMiU/1OjRk
 W8vQzfPZM8xiG58kVagNo6z7XJvpMAO0S9uHCZRZV3b9N/FuZPlGu9bphEOTTiMmtb/nuJze0x1bV7
 6bBPC1xeCwoZpq2isz0ePgFEcZQbuBJMlw2Kre0Nf7WF1QqZTjXTnq3zIId/N2jGkNp3yev9LDlRaj
 zgHEX/LqARu1nlSBczDoy56J92Q8nP7VliMaUoVmkfUN7WOoppwGC05sWlhfX409GoUmxwBu7e5RGj
 Zh+/pzsafSWO/jOarfo8SsAsLkJeH8a75Bf0U1aCdp78KsTwHekC1EFTwALCPyO/FbbpNsdImpe3Wn
 O+6Xjy4gwZe/Wumfy3rLZ9UOxvkRinFIOYXXHot6LOTbLTUc5ZxywUaTbWWSi7QUn2qCrDTlnmqnaT
 xmm/DNeOMSB6QT06HlJXTNHFuR+9XttavsSSwuuCbxhhbJGsSXrw3muKD5GR3eLFRgINOjmspvwDI+
 KZ/tU64jVUJceM8veKRafjYnK5T+NaHkh4BXADXoWLJW+OwXa8SjyIG3o6Xg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_091627_891712_11D4AA5D 
X-CRM114-Status: UNSURE (   9.82  )
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index d04ceaa73c2b..ea092f532e5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -641,10 +641,6 @@ &mdss_dsi0_phy {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 4e94f7fe4d2d..bd87aa3aa548 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -835,10 +835,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 8e0c1841f748..658ad2b41c5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -60,11 +60,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -758,8 +753,8 @@ gcc: clock-controller@100000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2467,8 +2462,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
