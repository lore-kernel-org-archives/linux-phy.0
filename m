Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECD1C7EE26
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lYaX9LmU8x77+1J1k9ZAlOo1KPn2PQUshvoFI3BNyY=; b=0J4jaBe11CF234
	8rEfQtaJtHLaV6MBs23of0mnTij41x4mzOcdYr4nFD8ha2kySprXasRZd96r7tlzgco67zT2XeBR3
	9sdt5/CuDZops5e0rvbi5iWq2XMWQ/Cic6x20icNeJ11RRz7I342hEcEDou6Q87/CRUPCqBn54a8d
	tPKfelpalSh2f77CBb3tQxySoe/60qYCJIUS33MiqLB85JuqVJtVXKncMh70a9KKil6TBSqvCl6ec
	LvbY8VrUfY8HzbzcKBwJAVrAHItZ+XnGrR/nAQfWpk8Pfg0nnrMTn3SS83IPHePPiJwz96xijixp7
	ZEyfE+lm5SUS67gWXVQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qn9-004iVM-3B;
	Sun, 21 May 2023 21:40:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qn8-004iUk-0z
	for linux-phy@bombadil.infradead.org;
	Sun, 21 May 2023 21:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tvQv73DcEHQsVe/JKPU5MHMTOCvtg71K1/S9y9H33HI=; b=Q+fC5Tr6TTzbNNcmhA5eSJzAsh
	2l3h4CISfx2q466XmQbLR5AJBwg11L76aKGip+TrOonWqOITVvTDQ1KhrPj+eIGnYSIZswVCgBrXP
	H4orcdqQoZwq4a+zI8LW6FFiGBKhd1Wi3KWRSdW7b+r4K5RW69x1mOG3W5E10M5SmNziypvCd79mr
	J80bEoPlD9JKpEbXtXzC1yF6mv8EQPcx1UFeZT2sP9b8f483nJw9addZtIJLkFEBTB283sU5vmGTw
	tPzEKPwJRnxtMNfanWHppZg8BaH6sS7yC3ehT11OcVeZcuD45KE69E92QixFaQmRowzNubKZsQZaY
	BLeSoKNw==;
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppK-000c0R-0H
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:57 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f3a99b9177so3914216e87.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701520; x=1687293520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvQv73DcEHQsVe/JKPU5MHMTOCvtg71K1/S9y9H33HI=;
        b=B4crKEIqd8MJzJpXDxa1RdHFRIUO+iHDURLVdTC65oQGKgc23PqAjkXEy3ZAJpp+5U
         hAHY5orpDDbVAaCO4FCe6y85jPHPqOEcH9Bs5GuHvIpFxoDTQj4tLSBk0OtvBKx88BCI
         TR1d6SRP4RK3InsB0v07TACJ8svTxHDbkXD35cwcMvXOv9nqDwhDX9QXRl8PirA/NXQM
         f+wKrRtMiDZ4wU+VwwMRXcrJJ6gyYr1nW68+HJpQ2yv2iMps6T112Snco43qoPr+4HXh
         9IjzDhXVB7AhIXjkx+yYEP8OGoqSiEj0aDFIRv4/2tqM/gLwVQ9J5wl3j++oxKJqcvb6
         WdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701520; x=1687293520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tvQv73DcEHQsVe/JKPU5MHMTOCvtg71K1/S9y9H33HI=;
        b=KeHZ4ZNPmdg4xBZhxos/oOVRghgzAphPpYU85ZQDzBXR9oM3dFJoFKYTHvJxNi2XJQ
         L0UoVEnc3GweondXxOLkuBIExXrCZcpvU6eGKgIilhKlWtC2/lAaP8z2n+q9qWuISaqU
         Ox3BxTHSjCbdau0cfQna6cm37t4lp7AqMU3AT8FH/P9bzyb9cTJher0d/03SX+m+sxba
         Jg18WL5X+r5V4GgiJaxAg4pcG1AhIfyM82OINvrvnFOMt++Rjfy6mrvRiKC24HM+dCFz
         LWoU0ZNpfneW/JekZanu5LdnC92dsK+yhRkfda98bmM6Ed7yt6U/v++muvuHujVFy2VV
         JqjQ==
X-Gm-Message-State: AC+VfDwyBTlvrloDYkdDjjkXltZpAeC83AW/Wc/K6G6bTcXYPSE7aGmW
	kP2koLQiTryMcUU72gogpE/dng==
X-Google-Smtp-Source: ACHHUZ71rPdWZsrjpDgzdEiF9Q9akw+D4F3lQ/tnaRQECKLy/Get1xRaf4SZ51w1WKu1MLX1VCZ4YA==
X-Received: by 2002:ac2:5603:0:b0:4f4:4cd4:6df4 with SMTP id v3-20020ac25603000000b004f44cd46df4mr535311lfd.25.1684701520702;
        Sun, 21 May 2023 13:38:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:40 -0700 (PDT)
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
Subject: [PATCH v2 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:30 +0300
Message-Id: <20230521203834.22566-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_213856_193375_F99CED90 
X-CRM114-Status: UNSURE (   8.44  )
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
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 18c4616848ce..a816bb212174 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -943,7 +943,7 @@ ufs_mem_hc: ufs@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -988,10 +988,7 @@ ufs_mem_hc: ufs@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
 
 			clock-names = "ref",
 				      "ref_aux";
@@ -1001,16 +998,9 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
-			status = "disabled";
+			#phy-cells = <0>;
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x128>,
-				      <0 0x01d87600 0 0x1fc>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x128>,
-				      <0 0x01d87a00 0 0x1fc>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
