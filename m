Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B75B4CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 09:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTigevf7Cw3ENxqaamkAFnhvNvo1XRaxulWdMXoR1IQ=; b=DCH/cUqr8dHMM8
	F1/r89ubIwxsOldHyc6wC2fO5q1cuDgW+m9GSVGD2Kmmr6wVaewbpykC586089aBd/2edZ3Y8u4kD
	p48HiXlZP8St3DhWQEfmxsZPgCfryKTXBCxy9IaUtgdsFr3kPYYT+unUPJdbt4Fz10WUQUJ9303fQ
	0u7jqc35FgpKZxkmCgOCTC8xt9RhGpS2tEq8dCcapSpyvNQMPHVAFbsBCFbx7P+ytvSM2Rh3VHPWP
	AhongDs6YjOgONr3C5UywiYDj/Ekpj6KNmPo5yoFW8wgxbG9r8Lrd2u3/CMlnCiP8rKcpc8jTxvH2
	akPawJXw9E+eMVuCQtTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bcB-0000000FoJm-0y5e;
	Tue, 14 Oct 2025 09:46:43 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bc8-0000000FoIR-1ChP
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 09:46:41 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-46e2e363118so43447695e9.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 02:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760435198; x=1761039998; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xUaeped6AYTKx4zcDVin/2JtzA4/FqNOiGDU51UI8HM=;
        b=Ct4pF4RJb7O2UkyRjCXd6KdhZM4dpBRNWX8xPJlqAYy21Lv7+H//nsKFzot53Jqqol
         pPjbisyvmXWRm1SNEeu5rO0GnlTlvahx/Qazg+fB8mq+wg8/9GAA//JHfOg3EyeqU895
         cQ5lWJG3eioj5Zp+l1muAzk1hBefNjwsP/EJUJsA+08uAdRpsK0Dx5XLYjhviCaHfL5N
         XQmZYkd75f/MWjNi1/K9//axWLKi8QfUA3IaESYzYkiqQsPPtWea0YbpIUBffmcHr4TP
         Ai2HxXsOBwwQ3bFpcsyvcHvdlu1l+j5ky1WIvNq2B7NKEot23cOwzzAt34kn/WgY8rCA
         RzgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435198; x=1761039998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xUaeped6AYTKx4zcDVin/2JtzA4/FqNOiGDU51UI8HM=;
        b=ULaS+98rqXV6vA4q98eTSjT40NHrYnBnsU6v/N1alnmA7YeqmcgP8/mgpbiIr6bSw2
         BunSAJy1XMf477CnSq5j3Zs7/z4O0ychbDwQi/V1Yc1vNwAU96hmy6H4mRuzCjRyz4b7
         5NNJUQVDdzlWQKCzwcPaPHExk2I9MhsmHWb0daGkP/uHbCwzmu63ae/uUD0Jr5616AmY
         7r4B+xa16XcXpjAw1Wv66ONowSPzMYie3ivnxtHgaS+gL1jyVS5y6MRly12ybFZh6kMM
         WmtUGiOrivh3Z8PHp02ny9nUz6DFR3N5vKTJTV1q/hVlja1Z3f4zfdagPgmbkyptPYZV
         P9VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXE4TRZuRdkT09lC4TPgH5pnKpyOvs/ruL7rwuFohQXxU/tYB/ucXCjZFR8whr/4/61R9Fk7IbmhM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzO9Wyb58PaijUHaOP4FwHkAPhPfAtmgGiRLA4IU0HHiD8qN6Cg
	0l/O7BX9qf8t+pcR88UD0+bmrLsVAn8Q+blY2tqGVhVYm5bfRevGkU/gdMv5R8ToMrQ=
X-Gm-Gg: ASbGncuHRJmy8qY6uBK32DDQHpQ2LtlXBGVw18rnr/7bB03Lr5BGPXwLMecfuwpVcAS
	UwugBR71bBWNMLtgNrZhH88GT7pmKg7oJYCGoG/VaUNy14uS6PSkuDRpn1AqyS350GGAoYc5sYJ
	xRV/7Zu6IPiQHScUgkBZoLKZPMn1mQ0p5lD1/t34E57r7ZmeovsSNiRhNPB5PE9lYwNrQKApW8a
	58kXg6dsyp1VU2Xf3X2uNsYrTRJ3TkCVqovhKBWvljR+3izT5zw5IHdVL/erJu+BA3lMuuKmSA2
	G+2C1/neylzgGu9EpKI4hOtb8utkw2lN2hfeHMwpP8IQ82yG5Td+P0FBJFVARf3bkRZQb9Lz44+
	/g1tHZXOLehaCxOmVan6upoIKafLcfmWEPS6GbVx6dnzUIKGa1PY2jng/AKXPi9V5
X-Google-Smtp-Source: AGHT+IHF94BpDjyQHISB3YpTos3ClDnO2QEk9OvNMWaiACfwfHscIkvvEEFe8GflJANQQTK/kZpUVA==
X-Received: by 2002:a05:600c:c096:b0:46e:2cfe:971c with SMTP id 5b1f17b1804b1-46fa9b937e1mr113989105e9.0.1760435198283;
        Tue, 14 Oct 2025 02:46:38 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8b31sm22866442f8f.54.2025.10.14.02.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:46:36 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 12:46:05 +0300
Subject: [PATCH RESEND v3 3/3] arm64: dts: qcom: Add missing TCSR ref clock
 to the DP PHYs
MIME-Version: 1.0
Message-Id: <20251014-phy-qcom-edp-add-missing-refclk-v3-3-078be041d06f@linaro.org>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1849; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=lMgoKm6fFriFGTk58UsXdD/s6UE1JLiRxIhK+/XA3EQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7hvpvtZYMOOjNeP/WxoC05ERCeQIn31ePA6ou
 KHQQL1n7NiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4b6QAKCRAbX0TJAJUV
 VjkFEACACdNyGShHB0VCbqgl3wmaUbLAiFR1/ZnEk/ntbJYOWJBHthyNxhu6Kwq2S+xgChEcJ3C
 QZEC4bm0PJK353jPGQV+PvNWHLv5P4m2njVLdNctNau9asqqoyyjwwhOlGn4xS6Oi/p33yl87II
 +8CtFUZ7Lx4XirqFhNykxJ7QjgbsgZnMJmrRC906I9ps+TaOe1DtxTXP3sozR+NA6Q6nbz1YT1R
 4mhAmHzCiMGo+89DwZsUhkKIoVSrq9kV4D4p8Gi4tRwhTuGIpBl7bT5HLNOzWzaJwEc6B8HikTX
 rkpx2ZneYmmtu+UkRp6ZhJ5B0M7zuZC4TPxm5UGJUGtWYwv1MklakNYZLq5nfo/mi4Xa/zYwXbd
 nqM2eynJEMLpctZoXnC37DG4V8GMhsWIapXT4aXBRoY0gAZQbSGfS7nJYez4GewE531xVEB8ZpN
 B194MntxyQ2ezz9uk76VlkMua8dQkKf1IerZX1NIn/0COX0MfC0oxpQhWO8V5cjrg1lANTgKWP4
 h0zCHgiS76+ux8b/syakZ6yz609Ka34j1+l0QNMZHtTwOCoBecT8/AtUpzSi9w/9slJ1/q/Vx8e
 Mc6fUI0oevA6qCEEiUnZmqkabLH7VpJT17idYRfFGCazycy+HrDbGL7lQ/GHo1miGw1dPT9BU24
 j0PBwMhOV6uhIMA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_024640_412231_51C3E28C 
X-CRM114-Status: GOOD (  10.88  )
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

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 51576d9c935decbc61a8e4200de83e739f7da814..0db5183cb4c4ea984d6a47987a1a165cacb3c4e7 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5817,9 +5817,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5837,9 +5839,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
