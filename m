Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B01C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByPimNhF9HFzn/60GyvdXkG7/0AVfEKsVv2cioe1x8E=; b=lP9cUMfCicZPcv
	gLvzXGu5KZekaQ31ihVGAIallq6CZ3cxALU4s37KU12c1YN0M2AV+Yv43Ny21B+0ZNuJ2ujulF9ny
	WYVGeXyLPBuTfBCBcs15DZfd52d3buHbxRBfhCaORqZX0gKkm/PPx8lWioPtP+tqnd3OdyGdiBlWy
	krUqggFcVZoSTg7+EcUuwd7jUD6qXUrGrVUxSrRUT6Qnb1UZ/dWbIqCqq7I+OP+nZCm3eY9A+Jfdm
	OCFg/6qzJOhCSyHjvjO2/RyNF2MuRBzDrCDOoRhyTyimjzJJAsArHmFkIwaChV9FGKp2QcYLcs1QC
	ESXpbGbIXvzNG669WLmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4im-00000001jVt-3ZSV;
	Wed, 31 Jan 2024 07:09:20 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ij-00000001jU6-3nVl
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:19 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6d9f94b9186so3625033b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684957; x=1707289757; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QXvWYDciMOY4RFBmZYkXJRb47tc6Feb9pDaNaINQNA4=;
        b=FoEzsU/jBkidJCeg4bH9p7blB2s711eDaLz58iFszK7qUPFEAE12q3CkE6aDaza5Sd
         Ptu0GWLHUanJJwrCSlbdM2MRZ/6LpCERAIAyGQuPKOYOdGFc/A0L3VKnFfUW0Ol/OXYf
         jW7RvrqeerQRAYmHIatgY1kUDB2WAvIG96WB9wJh0UUoovRoYii9q9RPVgkzOlzencCQ
         pfIpnzPgH1lZa+lsm39i7YRA+RSagguEMkB79B3eqsv4rmM2MmDuLoHaeWKYzZo8mrko
         +d1HyZEBfdCr6ZvOgsxcbB4dRgvWoI/B01OMdbuE9fRaUJQOP9wzRB9pFiYx+czBDyZq
         w8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684957; x=1707289757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QXvWYDciMOY4RFBmZYkXJRb47tc6Feb9pDaNaINQNA4=;
        b=Y1Ox3VT+BxWtYEiW3Yd9v8ZapIt+FmAsryeNaHiNxIFrjsdGc3uYnXiCsqfoqbLNe9
         3bQRzfG8jcZheBdYiYB4rhof7pLdgB8a2+Kef4rjri6Kui2iri5Qrx3dNiv4FpI5KNtd
         dUSHexQ8Z3wR2GIG+r2baQXtI4fc+kYfVTit2/iUB5tD3Dq9nai7Xr3uE2Lo+E37tI8e
         sgRDJ7vsFYIxgH5KsvPgN100Ru1z1NulSEobjQrgGzv4fCIqFfPoZkqkZKJ53NC50kRY
         xDdJZWoRP1OnAI5KlVEIp4phgsBdLMqDDWDm1L+FXje2TFWG+Aj4/vmXZtl/g92koFHB
         axcg==
X-Gm-Message-State: AOJu0YwY6MhxsjoXHM1ZxQch1kAvj1eDsHaE0xBIsz1GrJGEVqn56UIu
	hc+b/uR2Qk+rK17JymLrCTUCVhUxojmP7egYg8U6Vkd1tEqZA+4ZzLIe4XRj5A==
X-Google-Smtp-Source: AGHT+IEVPzCNoMnveqltP3ZttWQXYdAYe+FPNnANo+hdr8IASxt60PmKsM2hrunKdFuBv1b1C86esg==
X-Received: by 2002:a05:6a20:89a7:b0:19c:aaee:bb1b with SMTP id h39-20020a056a2089a700b0019caaeebb1bmr704131pzg.7.1706684957453;
        Tue, 30 Jan 2024 23:09:17 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:17 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:37 +0530
Subject: [PATCH v3 14/17] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-14-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1665;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=+uA0ICclxyNQoMTIPw/NYV/AOQhPA9mP9Yay/uAxdvs=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG+JtXbb/oLcjGyEGlV5zggvhfd2orCgOPT2
 E4gwiw28ISJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvgAKCRBVnxHm/pHO
 9RxcCACnrAXKT3pWO9VQgwGHhAPqzYAjib68/qm2Xb/iurYhjDTbqix3qINBxErabXUIi9A6rSW
 mEDUQeQAd0PZbm+o614zzrwx1I9cJKlNWZbFrJvXefuM/2R2ARZNk+m4chfdiIGStcqM5/EaFXv
 pzJEdDZYBv1xIlLzzcJmFREBIu7DRd3WXxuYztnNjlxTjh/59VJKVZKQAUGkj9IPPc+pONXh9jt
 7LDkYKyRUkum6LIdoUXkSo1W+qVDwiqF8okewnnourjHvSM0vaD1kC1NSRhMfZQGQdiox7pgsJm
 lJNgxU/Bf23AKqzpS4X+EzXJVLmTeGnv/Lzo0a7grTTl2116
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230918_072954_78544FC9 
X-CRM114-Status: UNSURE (   8.82  )
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

QMP PHY used in SC8280XP requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index febf28356ff8..bb0786ab2864 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -2257,9 +2257,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sc8280xp-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_CARD_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CARD_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
@@ -2319,9 +2322,12 @@ ufs_card_phy: phy@1da7000 {
 			compatible = "qcom,sc8280xp-qmp-ufs-phy";
 			reg = <0 0x01da7000 0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_1_CARD_CLKREF_CLK>,
-				 <&gcc GCC_UFS_CARD_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_CARD_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CARD_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_CARD_GDSC>;
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
