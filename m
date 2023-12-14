Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 074AAC4167D
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhznTXFwkV095RjZ5a3P78PKdHTDR5FKMdBXVw5aCnw=; b=CUgOMvTXwvMyyo
	OxSGo0HBwKyuyVNQmrZnp7z2GvqaiT/krEnxbxBrN244W3ia3nxLQ/VakaJtvRfj+S74Itk6Jy6PI
	Ad/48jT2xUGO7wLF2vWoE7cc1OCtE69UPe5pIcqI5efFxmvjK4JJ6i9of6ctAVTxSs77L94HlkSFT
	MmBvjlD4wiNSkvViBMXz3F4CTedpmKW2Tq5NJ25V66ijffXGeuaxV8o6v24ZFV3eU89vYi36Td1Jy
	mUn/R3JftdhWPMETACpLfOQv/pIUHBat1Q4LCC9YAmMEZLF1cBmI+TUd+eKXUj1Tv+pvyg1eHNiqO
	3103SQxBxu0+unsQwg2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhla-00HJkd-2P;
	Thu, 14 Dec 2023 09:12:26 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlY-00HJjv-1a
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:25 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-77f347b0299so490748385a.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545142; x=1703149942; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+NpBpw87ancReoayxiYNLEpdh+qbLyvkQJUBfcAOaoQ=;
        b=lEFRHa3eo6i99JPP0Dne1JM+OQZO3bvtf/DQ2haPglpEgGIILBZZuEKt2GCisHsAx6
         CeS+ki4w5I3cDKyW1gCsVkXIe0w5YQdzEqJrLPJIsGZKwOxFfl3ffM/D+9hfpy9D66Sp
         QGOWwpN9LcjN/fCbLpU1jT7VSs+Fp1ZqTq9aN9PX93HWcqMbVJxBntzvjC4CswN9LM7o
         tDdsNHf0xfXP1nx/Zrmkj0duybZ/OagKhfTXsGkPUfGIKr6YM/wlGXmOQnF7s08xMmHY
         rsAJDpb1NsSIbnBEn1d/uLSc6hBTDPw2veaEMt5YVZ+hOJmgCHWrscXNIhFnJUyb1bMg
         bUTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545142; x=1703149942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+NpBpw87ancReoayxiYNLEpdh+qbLyvkQJUBfcAOaoQ=;
        b=gql2A08/mgFxDgptk7E5OqhttgHB9xS3O7HKPl0GWGP4gwvNl6+SaUpr3a6Rgvwqyk
         aIeJmsD3AwD06f2xPaR+TB9wtPR/Rmil+uZWllzcDZeeXuN2fXwatKOk8WVVLmNG03ka
         wtxuln2VqCtDUKeWT3pkNnzvHBVosnJM8Pht7Inao/FqKVlY7gs9U2gn9k4wuOdyuoWi
         VzTeYXApflkuKpw2iqsM4isMPnF6SXwM1hhZYz0Orh+vG2osmDb99pKM6F0prv9CDZ3j
         K3teHU3Go+DOKddWQvBXtZOdhlBF13kPbSSXCljOdfxaq22hbhqA8v9l3qgrwhTEK8VM
         dRiQ==
X-Gm-Message-State: AOJu0YwqjrFz6iCbEj1eWMNkKBRA89dMBOuRfhF0lm6GdX1RecbgqO1A
	VxB0BhfBAXb5WAuEiXqi4gKG
X-Google-Smtp-Source: AGHT+IHkKGZjjk5nJUoZ+N0uLM2h0SgrsFVpX/16fIAjacSPXopzF1OgPVpV/nLmed6E8PzbjRaw7w==
X-Received: by 2002:a05:620a:260e:b0:77e:fba3:81e5 with SMTP id z14-20020a05620a260e00b0077efba381e5mr10587915qko.123.1702545142533;
        Thu, 14 Dec 2023 01:12:22 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:22 -0800 (PST)
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
Subject: [PATCH 11/16] arm64: dts: qcom: sm8150: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:56 +0530
Message-Id: <20231214091101.45713-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011224_525736_5895B492 
X-CRM114-Status: UNSURE (   8.81  )
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

QMP PHY used in SM8150 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 3834a2e92229 ("arm64: dts: qcom: sm8150: Add ufs nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 43d56968a382..18af94852974 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2065,10 +2065,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
