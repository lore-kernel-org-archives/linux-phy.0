Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46CC4C04FDF
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LI83MP+8NPkQ+1sVNghO/UPXh5862z+jSOkuof+ELzs=; b=E2o0BrphiX7/xR
	LZwSvG0nqe5guwy/QpmTaCUbvmF8ImHOI/Rhp+nNRIfqLHhBfdm6hEfuxOtrH5JPfj+60HyONkdCV
	MhLBEJdZUUNxA29+lQLo5wsKLcgWKMkSXv0kcpgsGsaA+BOZ4zJ9gwDXATL5g3sCFH4Qr8C2PXRMg
	9z1c4lIa/WguvLXhfyRbBMY4yxOZakzlVpMzE5Ev8Kps3piVhRecwg+DiDeVwFQxrtDJGaf3OZg7J
	LKPKaicLYhH3E/iD9xKYg+MIoWjJZWtA5n/65hZIVaYm4pnLMsYtIhRfpFnlEXmntW2e4UZJ6ZKd2
	h/8xcg6+EiZrfDH1pj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEig-00FBsU-37;
	Tue, 11 Jul 2023 14:52:02 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEid-00FBpE-0N
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:01 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b6f0508f54so90473111fa.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087117; x=1691679117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZaFM0odHOwyVXlZ7BTzsvnZZXeV4qqjvcQiUQV7DUJQ=;
        b=S5xBfK6yK2/9LXpPSuY18Z7Z0vCW3sMNNOxGj03+AMML2ZrOm8DFWJQWrNCiuwmqpo
         0i+r4R2IsLpqaeUwD4Me+Ar742magH6VyiNZ6gZLvWhpdgpFz5s8dnqmmv308HSD/koC
         +mkCtmx4g8kCATtWGvKiahfaMJsGbhKFeBhNrNs1JrTtyeDczsJ/TCumnZdVsfKH5uEm
         c882G/PoxdlPglT6V9L9MXJVdFeAw6g3NCILnPA9wPbs+2E8tskg3X3jtHq2ZAkO/yjE
         Yl4NLbbO7oOq0DshQPwdMDJr6XnunFjwWazyuqe0DO6ZojD85c8qw4bHpALyolnqLcLt
         n7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087117; x=1691679117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZaFM0odHOwyVXlZ7BTzsvnZZXeV4qqjvcQiUQV7DUJQ=;
        b=hnbYTcxui3WTmYy864pq2X/EfPyaiMuEo8l8gWxKfXbppYyFkuIVxk7dgEZyALSvh3
         sm3oyjbIY0fKaVk44HTie15BMaKSNXMZIGmvfi9+BfEyXfQTpEXljjyBObouKgn5CdHd
         uds8HgNvo5MFMz/K6Gb514MWyWhLNni2QrrVFIL06weRQ7wkTp0bASnc75fH7ILWdyVy
         6nDbHO6WbluCkpq7ZFs9GKauGrIahw4WJo9G9Rt9yuNPMYynj5XYmu76UxIm8Q3rNpRj
         Vyd1QbQyI74R+caoIHUJTV+u4LGjtm7X6knkM0C2V3G+7NjuAwPFw4jcjhF8y0wne3lW
         g1lg==
X-Gm-Message-State: ABy/qLY2SxUSqfuBuDlbi3e8kuCccx/04O0WVOvzeW4+kXekCL5My8Rq
	vprgdguI8JHPPP+6UgKoUr0GkA==
X-Google-Smtp-Source: APBJJlEIft5+HD6PwdrQ7zbOHbuisJ01W9TvVIPaV+UpZWMIzgZ9GHiwbpqbBe5e5+P7PaxyGHYIOA==
X-Received: by 2002:a05:651c:1034:b0:2b7:a64:6c3d with SMTP id w20-20020a05651c103400b002b70a646c3dmr11813767ljm.44.1689087117535;
        Tue, 11 Jul 2023 07:51:57 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:46 +0300
Message-Id: <20230711145153.4167820-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075159_160786_069A29C7 
X-CRM114-Status: UNSURE (   9.01  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 78867cb00875..31ea64abe4d1 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -984,7 +984,7 @@ ufshc: ufshc@1da4000 {
 			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x01da4000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufsphy_lanes>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_GDSC>;
@@ -1025,11 +1025,7 @@ ufshc: ufshc@1da4000 {
 
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
@@ -1041,14 +1037,8 @@ ufsphy: phy@1da7000 {
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
