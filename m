Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DC8C77B73
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8rtjfILAXQvn3J4FKvk/KwdnobJI3/CoNYWMc9p7DA=; b=1z/4h52/bG6Dz0
	180d5zXUttAE9tvxiuQ98KuZz02BeRtLFbohEsGD+qK3B7IAQmqpTbrsXTpU6LwTsgljbE7wLFXl3
	qLzEIjHfYSOhYrULnXau3wVfCij/6TS5cifem5Twxhma5vTvEsqFdbFT+aPLx8FiimtPTRJne2VVS
	4dVpvFVHe7lxnZc7g3/u0dFyNI0gXCamVvwJQf33alhhlTc3eLyWVevpSIfQifbGEPe6Ip/qzfmrI
	e1oAi2CBy2xxwfZ3AVpzXAzd6uuQoKkeEpl/X5c8+7wWeoB3aXmpw4cvdem5/hEERZBPJy+xNpzC2
	r24JafZr2pls+6x1dfxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qn9-004iVC-2K;
	Sun, 21 May 2023 21:40:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qn7-004iUk-2p
	for linux-phy@bombadil.infradead.org;
	Sun, 21 May 2023 21:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TRJBo2K4JrjwLhHiK/ZocJWB2xdutU+lTQFD8QMjoGA=; b=QfvsRNrV8n3hZhThTCd3v1CBIN
	S/RZCNoRSqBUulnhpCDEZ4nAYPgtlQl70juPrbC+TCpjMKtcHvBtBt+WjJWyBr/mzicQUd1y+l08t
	JHYa02m0EvD0CT6sDK0AktkOefxAnaBLu1i8+GcOW6SXr35z7r2fnLvYFc7zDxTAkX6dW1WLnMZP8
	lkpWK1RDeViofqftBi1c5KQIatvxpkvlCsYvFa0y5KoCpcFPB/NGmDQVzblgAhCl7h+WTZZQBvhXK
	jYQ4wGb5MM/RBDsdVtktU4+rLY/9ntjylkJiKRvbkpE1zweREbOz2MPQ5g67P9JKrtVHrHHWZ3dQo
	SGVmNDRQ==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppK-000c0S-0H
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:58 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3b9755961so1263154e87.0
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701522; x=1687293522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TRJBo2K4JrjwLhHiK/ZocJWB2xdutU+lTQFD8QMjoGA=;
        b=KaypcyySOVmVu9LX0Ib3kZDV1gj2Zlz/g1TvDO1Af01uo0XwfurMgfRPpHdigfhcHp
         USTtQ2zgyTfDIJGN6P7NSn2n2SD4ZVsOfTbM0Nk2OMq9UfXgoMHaHM9EEIcGnDY80dlW
         dcHeCXJ/pKXGZjHzXBg+YxxpDlUWwY35SsJ/MbnSbbbOdahKmsgWKYtbwpdeRdx5Lp10
         Zs/lqJXlTO2YZBmhP5AYtoaLvDVj6C9WeXUfLvN40LGfzA0NQnYNXhXCC1TgrPsluZPH
         JPEcs03R4XPb1kei1ihUlKYGopLDGUdWDhysMIjJAFd8Y4jN4BzDPZ1Eeb/2g4fB/tFg
         GDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701522; x=1687293522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TRJBo2K4JrjwLhHiK/ZocJWB2xdutU+lTQFD8QMjoGA=;
        b=VH01AfN78B3HI/2QSnVEqEJkblWeoK65T83ZPN0s+TDBA0JgC5SYrzALVbvPNnOU1i
         T7dGJ2uHP9SqPaltdpIQHNLuAVu1Zn60+1nk+oP9WR95uKIiMNW2OEofdLLGqxo+Io33
         h7e/eOKKii3t/MwUGTyICauiNliras7KIenBgrdHdoR1uxJ7BBZtBC+anRYEziiL7OdK
         wzGFJDEkYQuqDcXJoN39xXN+McArA0mL281anTo6PCcI/acTComwK0e3fFA2dT4+dcE3
         +5AjLc4vPsEwNOmhYAjvL7cXV0v20epF7yJTxP7RoTd9jWFTP9JB2rIDCb1dt+Hhm1Vf
         jeUA==
X-Gm-Message-State: AC+VfDxyqHcE7PFFwEGxDj96LEB6PFUzug65sK6oGJzz70i9BDEFgMdl
	Oa/ufGizfWM1J1K1WO2y485oPA==
X-Google-Smtp-Source: ACHHUZ7a5bgCFlOpWk96ZeN+JJFoBpRjZPh/JTzfwA1mKlRn9YhFDlaVw2EpcKcbcvFScudkOlE7aA==
X-Received: by 2002:a05:6512:3c9:b0:4ee:dafa:cb00 with SMTP id w9-20020a05651203c900b004eedafacb00mr2919192lfp.60.1684701522242;
        Sun, 21 May 2023 13:38:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 09/11] arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:32 +0300
Message-Id: <20230521203834.22566-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_213856_759170_C0514856 
X-CRM114-Status: UNSURE (   8.52  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index a260e4a7305b..4e94fb3bd0bc 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2166,7 +2166,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2210,10 +2210,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -2221,16 +2219,10 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x16c>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x16c>,
-				      <0 0x01d87a00 0 0x200>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
