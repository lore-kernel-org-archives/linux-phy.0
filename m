Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA69FC7EE2E
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INBxI1KLrKaZh0TXNyvI/aPPJT+3k0Ee745yLKoFOjY=; b=DKgPC+HGsKE1zE
	wJ+7CvQ+lkz0M887OkluX8RldHW63l6FyOavXaL8P7k/EhV6hAZWNFXLsTIdFK6n1Z+YNadsQbLMW
	7+wsHNfZ1EBkGlcOlu9DzT8OERrleiN60gZdcSmpcRJB8wsX4dRJRgBeZN9TPu+p+r7GQoXogNW4b
	vvsr3nP8mwy+dH9pnN3Wn0pXwli72CtnD37ObguMcKJUMtwLu7nl7N+sCgioNtRKddejGo+HKLRyw
	xKngSI/sMqAiDOdIpSHnLhqJE4NvW/2i6upXpOeTuRK3HUjG3vHOCpGd/q4tmpEuUfsfk+1dzZL4r
	LBqlk3SoE7kVtt5Z1N6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qnB-004iWF-1w;
	Sun, 21 May 2023 21:40:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qn9-004iUk-08
	for linux-phy@bombadil.infradead.org;
	Sun, 21 May 2023 21:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/UZaHZEJviemE81XyTdp/8utctQbN84VrZL5H97wJ0Y=; b=gUxb8AM4m39yXqgJvBGayGQTMu
	e2ynMNBFELPjtQm7Ro+01aXICAkS/cGpzExJc5KU++zHRO2FL43AUjmNQpp2MKNMA13Fu5suRMoIj
	mWAF22FuyPhtqGuygnaoS1CSJ8N8tOIQKizqEwCjuD1tL9CUR8xghtrZXZNf8oLV12W02/DFo0vyX
	7KPN8iDEazSj4ZNt27wVfdc3udcB3HFHBnSxvq3YehQWEovJ0Svc+W636jyb3RGYUKMnRFBF8Xc2/
	aC6VjMVuLUzcJIBfw0dAVKm2tC2ag505+apBuBmcqrC0DkEqDCvST+B6lrkvVUfCpTT7GW7rT1eAs
	f4Cl7Q+g==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppK-000c0U-0H
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:52 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f3b9c88af8so1312483e87.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701523; x=1687293523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/UZaHZEJviemE81XyTdp/8utctQbN84VrZL5H97wJ0Y=;
        b=x5SaxrdZ8QS4LHChbsiW5FpNhdo+M4eY2zabzjP9EpZ9Zcf5Tj3cYNPbWRJRxYAHpG
         O1JxJgwXp6Iea5a8/jF+tMrzao0NlgWeuazqGWR2q9tIVlCY/myrMfXa5153Ub13znNJ
         356l7r8m6Ml9Xoco0X7ngTeHrSe6FgaQ7UpNPkZOolN9Gk8SD3zl2iA/viW/+5EUMdjR
         3JGfethlq7yjvo0LWaenltg2Vj6uprheFgrDNQ2KVbF59lY1BbcHOQTLeENOd3V0lN2p
         7TxCgGOpljvqmKrkKUflVgEkQXXnK7N60WhiCugw0gH9/3T35b+ALS6jkDRjKRQ48Utd
         2Kag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701523; x=1687293523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/UZaHZEJviemE81XyTdp/8utctQbN84VrZL5H97wJ0Y=;
        b=Hc5iECxU7yio1TrPTLZytSFZpU7QSEJUi8SgKKnWNRQmZhWIND6+FRixcgQiI04xDR
         3OHmYC8EkiJnqL7E19DVlZmXMKG0P+UYadD5yQhibR8SRu5X9C2uP6PoeqjFkwtVakdv
         Kqo7ZIgEb2nRBxaPzYIGTFOpfLSWKtwRTyJIotRkiGs37uIowhtCVE37I43X+Axcbljz
         p56PgvhcM9n0MG/qd80YTz/aomJqQDevzMOQLH5YDes5h95CxXyLzfLF64VbmWFCxsjY
         i214Jz0PQuFJ+Ump7/oUC95MUhTmQzndtMXeFXEWXvjPrzkhM9xRwU34o/YP1nhpFvGV
         yuBw==
X-Gm-Message-State: AC+VfDxBw6rbaz7yqW7p1/QRWikBwJCK6xMtsZTYFDeTZejckiGds8Kv
	bqA+rZbZPbX2Yw1LQL7WGfpqWQ==
X-Google-Smtp-Source: ACHHUZ6DvZ1icO55sjIe+oBUTsVCOGiA5PicZ0WwFJRwF2wPjABNddnCOBGHg9s9Lv+FF+wJsMuCmw==
X-Received: by 2002:ac2:4430:0:b0:4f3:a99c:fbbe with SMTP id w16-20020ac24430000000b004f3a99cfbbemr2780753lfl.14.1684701522982;
        Sun, 21 May 2023 13:38:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:42 -0700 (PDT)
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
Subject: [PATCH v2 10/11] arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:33 +0300
Message-Id: <20230521203834.22566-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_213850_606848_F503421D 
X-CRM114-Status: UNSURE (   8.50  )
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index ebcb481571c2..6173521ff544 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -656,9 +656,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>;
 		};
@@ -1658,7 +1658,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1702,10 +1702,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -1713,17 +1711,11 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x188>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x188>,
-				      <0 0x01d87a00 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
