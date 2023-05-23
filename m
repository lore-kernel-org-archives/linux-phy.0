Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F07A5C7EE37
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyH40lmWd387pRI4bt4qqN3+jpvz+gyazKXRksGGWmk=; b=paKVkOTDUfQaq8
	PRHK+ldDXh29KWSmsK+KZVUg1ioWgSotxsz/09nmGk5NAcnCRDyIZI8NUbFhw6k29y6TItRWBa2Mb
	nWeW8jQ+yS8SZba+jpMBoU/jwmKJHdlRtdFtP4Fbi+v3RTylJt5Yf0Dykfa/sKhTMdizOxZiGEiij
	Q49Ot7ZiMClvXL8+BZ2FjtXWbBYSjJ57KYXDiKAq1aIgE2en1vMG727ytCBqrSEKFlLJolUOouKIR
	QOMIvUgYyZM92SY/72e+NpaX/+QiAG29Xyu4gW6Qlq+5RQC6Rm03stOe/OVTdoPpM/Uwrhg7sjbfE
	YVzWiZOwyXFY0oqxvfAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfj-00ASaf-1t;
	Tue, 23 May 2023 14:07:31 +0000
Received: from mail-lj1-f169.google.com ([209.85.208.169])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfg-00ASW9-0l
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:29 +0000
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2af177f12a5so67536461fa.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850786; x=1687442786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veEEIYZ2tnU8dynywIj4SXYMM+OoUP4JXNgjsxIbn3Q=;
        b=XjUvEjtnI4sX9K3uIvE5szYxsknxYZo/E/5fICgE371p63OG8OmP9tuDSt7WDhNc2P
         VUyT1x8QsRNZGu/BWjy9iSqAHO+a6p+crTifs+vvB8l9OyBaktHLNGTftA94B1ljbUQK
         uV3qCb/+jBpMhacXGQ3VqM6eydZnTiuFawDelT5TencczNuTi0bRLiFhtV3v3hzkv6Z2
         L0WKhrR2m01phInOQQAvmSxvRC5Ix0uEuUYiMvFO9IkYmhUFJ8sgA0HKeOQvJeZOPROO
         Kn5SGox+Sn4pSn+D/NEuCvqysVNyzDY5RosTVPoc2OgR4wztOOrFj1KpX5LtNFJNEyUn
         hsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850786; x=1687442786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=veEEIYZ2tnU8dynywIj4SXYMM+OoUP4JXNgjsxIbn3Q=;
        b=A/kib1pCbKuefnWWEZ07FN6IAs6VYVy2eVzTPRBQj9QeC9cVwSIZDUDnqvhHIVYRvF
         yhivy9yyr/EBEewKU02AIhSTgHOwEPCr5F3Vub3ClEMmL0bZsin9qNNweEqKFvlPVHuw
         gsUyVCK6WzAVN3ThNTyXaTZXdAmACU7H0ffTpTZYaOfXv6NHTHGh2XQ8n5xMHXd5hmhy
         F2B0auvkK1zdKoXhqHMYGoTs8nJgIetQunIHY/53TTvKbXXURjLZSHZ5hlclzzO7kdAv
         e0u3qfxhQYLwSr9m8vF9KjkDciNs41hScmNZ0lc+ZfZdExHx5aeua+kvHMMR2HS9hrXe
         8BGA==
X-Gm-Message-State: AC+VfDxu3t7IG/94Pr45xrYjVcvJbGOK5XSnVo/ob9T7PKlR/3TzQFXj
	7tlYchUCyO15zIanu9pB7iEwfv02JyAfXD1Kr7A=
X-Google-Smtp-Source: ACHHUZ7CNdiFHrq8T3qmYAn0vt57lgf7SAwN2+lsoqpjxKV1/nC4Vr3EJf2bwcv1xeYvJWaS2gEEGg==
X-Received: by 2002:a05:651c:113:b0:2af:a696:3699 with SMTP id a19-20020a05651c011300b002afa6963699mr2600356ljb.52.1684850786703;
        Tue, 23 May 2023 07:06:26 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:26 -0700 (PDT)
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
Subject: [PATCH v3 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:15 +0300
Message-Id: <20230523140622.265692-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070728_281297_2905DDAC 
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index b150437a8355..58c7a52ea8d6 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -980,7 +980,7 @@ ufshc: ufshc@1da4000 {
 			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x01da4000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufsphy_lanes>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_GDSC>;
@@ -1021,11 +1021,7 @@ ufshc: ufshc@1da4000 {
 
 		ufsphy: phy@1da7000 {
 			compatible = "qcom,msm8998-qmp-ufs-phy";
-			reg = <0x01da7000 0x18c>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			status = "disabled";
-			ranges;
+			reg = <0x01da7000 0x1000>;
 
 			clock-names =
 				"ref",
@@ -1037,14 +1033,8 @@ ufsphy: phy@1da7000 {
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;
 
-			ufsphy_lanes: phy@1da7400 {
-				reg = <0x01da7400 0x128>,
-				      <0x01da7600 0x1fc>,
-				      <0x01da7c00 0x1dc>,
-				      <0x01da7800 0x128>,
-				      <0x01da7a00 0x1fc>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+			status = "disabled";
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
