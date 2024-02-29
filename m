Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9415CC54E49
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6I8NhMK7UAooWJ3FDM46mod/GT/qQw6D4M9XiyiER5Y=; b=G+9pKlg7Bt9eyn
	KfvYp+MbXb0+NrAUikTP4hZnwn2+Tf0gTjZdDyNjGWfXmwwuL0cb0hpa7Lk6Wrwxta+2kt9HUdh1K
	I5o3aCQteFMm17T6aSsyx+80/D9yLvXhlb0CAkZmOHAAI7DCPx2rF8gaqQIVqgKp+rXFKxKGmOC2F
	3tSCfXlDMHEv8uvjU6N80aehDxTjv2r2Dcxq6KNs6SyfjluswoxZdDI2j1VLEYiDUSBY8gk6ldbBk
	m02xEu2+SyRBn+Q/TkS2THSIoG5dPk0CO19qMo7Uvcyv2DP1OjvGU+DEDH05o11uupvUccVxrMUV+
	ZFF+VQq7Qa7pviWVTjFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg8D-0000000DbLQ-034g;
	Thu, 29 Feb 2024 13:07:25 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg86-0000000DbHc-1lIR
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:20 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2d311081954so4409611fa.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212036; x=1709816836; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xt1W5faP85PAWQumOAeVXjmBkQB+qfkabp5eD5nJ+aI=;
        b=Lrn4eFmeBcgG6R8b30rnZhtqCVYOyjGbGdgAIvTzA/FKFjKAzK6qJ0p6/D65CYJsDF
         H8UULtiQZVEgXkHlwuFYa53fdu6A1MrmkpfhfWb9zyRFWFVylj5I1Y3jEPttf2xANTPG
         1ybRoyK10d7P/EKlZhSPdnICuM+BtV1GRqEnMcnqtKlfNP97w8kLO1SXe+zx/+BzaDPH
         ZMF+hbPUlMD/41lGewh12R1evOnYizUNm3ZW5HZnyshr3sNp59lbJCUIp/a2K1l2EEMF
         KTGYDjVg9hsMRPr0DxV/iCs2n7P+m1W4hc8gqOQ8cQgq2ZNjX5D5HDnoHbIU1680WRR9
         UxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212036; x=1709816836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xt1W5faP85PAWQumOAeVXjmBkQB+qfkabp5eD5nJ+aI=;
        b=UF44cjYR2JppdrGT0+JIw4GwB7QTkHoyS3ncO6VI9x1Z3motcM7drSUhACmUMPtx0u
         rc1UEwu5LluwvYh8FSz4am4vUmXGrooA9ZUV7trKoerFeFAk+PupE+7xLT7iUhIb4OnI
         j3d44rFrRiu2FXA0LrSxqyupMjSDcPbTLAVz6//mqDukMeMpql2iBiyCBVK4WcvQ5cn3
         0W+q4cqUXCg7Ddvh+Vdy3sr4Z73vI3YyeXfCAdiLKrpArWr1Gv044/AyMOomm63PE43e
         Gx69psoi+xmK7tTNLuYcA2pOEt0SZPFDoFLIbJszAxPDbimC+L2/VNiqyDQwbESADtwZ
         6Ehw==
X-Forwarded-Encrypted: i=1; AJvYcCXXiXNsccc5O4U6H6JtYrZLGOyMeIVK6UHiAak/+xXtXW72p91MaqNYqWzmVf8cH5/1P+XU5ys2yl1ux3/HARzZ5OmwbBVheirm4OSQsA==
X-Gm-Message-State: AOJu0Yz/A3KlCmH/k+uSgeEmIwRPjuQmaQEsUK+XZMuBjZ/A1cUWJNKs
	aJ/IiNVYJqo8hqsoy318B8SGaq53AJcL1BCeXgIS0NLCqBFqe8Z0g+2aO17U8Oc=
X-Google-Smtp-Source: AGHT+IEC7e7Knw0M0ILVJfYrukKdzBj70uBdk2cN9FZc2XJm4ZtvVGGvMvO0ORqpmrytaQdJgTB8Uw==
X-Received: by 2002:a2e:925a:0:b0:2d3:1f1:d408 with SMTP id v26-20020a2e925a000000b002d301f1d408mr1330088ljg.0.1709212036293;
        Thu, 29 Feb 2024 05:07:16 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:15 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:06 +0100
Subject: [PATCH RFT 6/7] arm64: dts: qcom-sm8650: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
MIME-Version: 1.0
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-6-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=886;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=AX7XuHTDoRahKMAp+cH7GEaNZR5Qd0pBmGI8tAPbhQ8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF90QBAS6ajIUqSeE3L+wyYvQnNnniQUAW+vzOK
 eUT0lRyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBfQAKCRB33NvayMhJ0QSKD/
 wLsTQUePv4/u6Ehr2mKU2piyxeS9kM3cXKqGejQlkzPnv3M7ZpQ1aBv7bEybprYefYzmXUYhUsZu3W
 si2yvhUGPAzp3Sp8LlwlewM2vSXzc8/dHPlbsKwv4fBGIu6wkmSmMPh/Hzq6Qegr15ZiRoIwqcYcEF
 dKgPUOOx+LnCqhDJSBBTXRg/O8bSk8BvbKlrHBDZg0p9tnCNCelDCX0LnmGkx63qAShDfeo7p1zaUa
 7BLK0L7awpxrpl3lQS6oFuwASHNvitTmtd7Frdj4/jeLwpFUKtsgshPB9Sq9q4aww1I9bbPV7TuUZb
 IpldH0pK/KF/i26xmmnpEkb6O2xZ9cF9YqnO/NHs50dFxSr4ib8ERzmxoaIADSg7iMDqg7U+zn+t5r
 eAfx5xY93P8F5XhOfNlP2VUy/XEedGbsk1kkKUqk6yTTRhRLb6bygCTJ+gA/JUXfUhJ5VDkNKeQcIa
 DNohs2UT28UVehlsWXNVXi70MhrhPf9dfA8OP5hRoeDyAcaZAb6tnFqFLQm+Fgc8bw1uV7VDjZPGuW
 VF9yUabDeOmONuSFiF4bRDvPHbsPS6Vh8mgp8jnV/mR/BHMQGvDwpKjx3k0rYMAj9Hv1DV5mEViwKh
 P5oazDg0p9ax/nYsywImDJ0ACTkhQEJGsapxg10X3IwPZw4enUXIf2fWTOEw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050718_700118_A532A8E2 
X-CRM114-Status: UNSURE (   9.27  )
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

Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
and allow mode-switch events to the QMP Combo PHY.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index b07cac2e5bc8..35259ebd07ce 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -823,7 +823,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
@@ -1224,6 +1224,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3i_1p2>;
 	vdda-pll-supply = <&vreg_l3g_0p91>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
