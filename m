Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C94C0C7EE29
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03Nu2/7hcGtv+Ibmb1fjUw5btXah0A2UMvqZg8teNAc=; b=pTNppFwN9kRDh0
	zpgxikgfDsCmno+o1cR/sPqbwchSp4I5gEo1uSMnwvszfoyUDhF1z36S+HQnV74tqwaH64Xc6SL3c
	zljsUZdnU4Ygu5bLNlfFawvp+yp9a0f3hEdJp9hUucDWB01L9AjHSB/5VmLUThXJ7BjL19iquqm2E
	snshHHT1jqfF+dNlcZWc3OmUCvDESSdmGh1nMDnjpIdn0mBi6BTHfEMeyUh3vz2YixRbv5DqyICb1
	QNAVh3LX/Qwo2vrkP7NPzy4biX56lMP2Uvb3RbQXtVh50gnEVy0JNZSdNip3fmq6iIDEYWunuHD+Q
	viyDvIp19qkqmrCvsTbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfl-00AScF-14;
	Tue, 23 May 2023 14:07:33 +0000
Received: from mail-lj1-f180.google.com ([209.85.208.180])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfi-00ASXH-0Y
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:31 +0000
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2af29b37bd7so51144351fa.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850788; x=1687442788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01Vg0JlFhIBK9VCY79xD919ZIBHvFfJNH1ZK6oy6Dl0=;
        b=FUBWz7BpzpnnC9xYaqTrKP0L3hW7W3YcyRJzZ56aALva/3xFQzusQ1TJh40bcWzbU7
         gzyFLBDjFigf3G6qWFWWGaP6oQcRVrmoHc96mQFhLOGs8PzKZE3QAaPe9FaE0mqNHnvj
         /DlE1uBfct0SVH+8H4TfxC524mr6YgF4BU3Io4L4IiHuL4UBCO9KGkKmt09EPWgZkiW4
         CkbI5e6k4mvmEhTu1cgjIOJYMVZnS2Jaq+aWoi5kFlCM9w+CgXbrLaABypq8Vuul2VVf
         y8AEUwjA+mUS+opz9L2ey5FaOSPJpPt6LHnXPfxGyVLkb7cK6bbU46DPmS8srCLA2Z0O
         4KtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850788; x=1687442788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=01Vg0JlFhIBK9VCY79xD919ZIBHvFfJNH1ZK6oy6Dl0=;
        b=Pgq0wbRaeLpYeILDqvas6ZrgTXcjplysQUHUOm+7mLzzBMJKa3Zhg0iWg1933iceSP
         YWdSOSUkEVJaAKMmlNkTlzv4n0zWx9/ZHUfwaU8mcIpboTia6ks3kdFPemK1XKevEzo4
         wBvNrcsdQqZB/qBUZFUVYLoSXQaxtYXeCTGF5LaIupOM9fx/Xx4Xdr/zjfvSQNa93RKx
         zw/7EegoXrpx0dhwMmK+LKJ5iIytu+62KsCPeKo6A3t2JszRF0Sf24TGHQAmcv+jhNR6
         DXe1BkFN1JbVLjV645k1xr34lNieueuADJxgj8uQF/kpdffqdbtGD2at1bT0LO8qc1Zf
         QTUw==
X-Gm-Message-State: AC+VfDygVr7U1/3qGEWwxqxD7Q+1FjFTxQC3NCbix0pmb6hEPwDU4jeb
	eHg1ZbmXZJyDic5FMhj6w2gJHA==
X-Google-Smtp-Source: ACHHUZ5KVDqjEQ+Sq7Uzx0iYxPei7ms2WeubpzzVQaDDfePP8GFsSsxvh65c5IIxzEzbfOI56piyIQ==
X-Received: by 2002:a2e:7e02:0:b0:2af:a696:3691 with SMTP id z2-20020a2e7e02000000b002afa6963691mr2999576ljc.40.1684850788199;
        Tue, 23 May 2023 07:06:28 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:27 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v3 06/11] arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:17 +0300
Message-Id: <20230523140622.265692-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070730_206276_66497BE4 
X-CRM114-Status: UNSURE (   9.43  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 631ca327e064..289b96d31414 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -784,7 +784,7 @@ ufs_mem_hc: ufs@4804000 {
 			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <1>;
 			#reset-cells = <1>;
@@ -825,24 +825,17 @@ ufs_mem_hc: ufs@4804000 {
 
 		ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6115-qmp-ufs-phy";
-			reg = <0x0 0x04807000 0x0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0x0 0x04807000 0x0 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 			clock-names = "ref", "ref_aux";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@4807400 {
-				reg = <0x0 0x04807400 0x0 0x098>,
-				      <0x0 0x04807600 0x0 0x130>,
-				      <0x0 0x04807c00 0x0 0x16c>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		gpi_dma0: dma-controller@4a00000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
