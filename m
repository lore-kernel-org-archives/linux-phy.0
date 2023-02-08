Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90C78C64ED9
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 19:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGeqVx3EYiLWYnwvWYl3vXDflY/8mD5bIDvsWN82IX0=; b=PG3xH32NC5MGpS
	Q3/HWNfuc0duM7EIbHligtLJzddUZJTh104pRoLKk6b5UWz5mpPkvrDUjG724ryafwgG93ysVj1dk
	6cKqmTAJ/tfBxhbSA91OyK6xrbNI6odjsFwqbMgv6L8yOxp6k4VUrjQnv3/XKTUQrvtT3mUfGEZ+P
	6zH38zwVo19XWlKm8TZHyXgmkt1hh9OsX4Scsc5NLGtGUIIksK0cYhOl2hnNhwDFuxWa+lBAOIZG8
	nhXDWQHt24mj21tw9OtSdyHuG8V/+xQ15ZaGFeSmUVptQMOuOWmd3wjRIFb9nUtHdBVJEagoW8BRp
	nW9HATN0if0/Hm+E7MNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphz-00GhQi-W2; Wed, 08 Feb 2023 19:02:19 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphw-00GhNK-RC
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 19:02:18 +0000
Received: by mail-wm1-x32d.google.com with SMTP id u10so10987510wmj.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 11:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4G/wlddfo49w1qoYsyEWEkm1Kvgf7xvemEjWX1SlQp4=;
        b=ACAKkzGBnY952eyIVyaPlAUvJ1XgfUrZpEhl+2k0nJWb80MZwHanxGGi9JhsoxAPX2
         hEtKJXxjKHYLoX5vtcpvLqk3IM3RaGykZWL5d3yClxPT+swxwA1l6mtvukld20zpWDBX
         GaL3HaIA7zY1YHwVukmQxpMzz3xaabDj5QaNmedqN7DWBBrVYU9BdUOtmWSws9TGvC5L
         C9shoCMaGSdEjizKCBQU8R0TIddCBSDgBogsam4RRcxv8z97FrX7xG/r+rTmyMMKvPpq
         mEiT0TCbQfrNGGdvilSw0onXPzdujXTk9Zdbh25eE3+52ywMN+NgAi9jec9Jt/x5wLxD
         6Vuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4G/wlddfo49w1qoYsyEWEkm1Kvgf7xvemEjWX1SlQp4=;
        b=Va1ATEHnqg2MpdUKQhp2WMHM0VgW9fP6i8LKTXXD32Kte8SmbT5qhMy88l5S1FBJWg
         keaXZ2vytbtkiDgAvs8GYqVCEImpguJpkujNz8FeemOV1HABkQuLwPUFEVH7RIgeN7vZ
         rvfAmU3S79I2vp3AM8m2guRU6hCIj+QR6BvDa91lfB0ogArYw0c0NqAAGtWJoAgqJFeV
         8uCpZ/kwXQRTkQDgGlwl89ipXJlippR64coSfMcNEMIkfj0FeQv8Zo1SU2mVQsO8KHDa
         p6wPrtj8E0JvjfkyA1Lz7xNbvRi2Ar0dwvD52MpUKPqqm0bmIq3QrvXZ0DWAOwlZOd1i
         IAdA==
X-Gm-Message-State: AO0yUKWobRF0CI9Kd7B5vU1BMsmd8NhEaG+5gGag7HcNHMWyb+ue2UOj
	4WxvFuXk1SUjK9S8Vc7gHjzzLA==
X-Google-Smtp-Source: AK7set9CAfTQ/iAY0GW2hBmL9YVhav9IXoT39Ym9IacqPIIbGDz5X4E9ygIFCQBOcJLLRl2mNUncwA==
X-Received: by 2002:a05:600c:3d94:b0:3df:e1e9:201d with SMTP id bi20-20020a05600c3d9400b003dfe1e9201dmr7663529wmb.40.1675882933184;
        Wed, 08 Feb 2023 11:02:13 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
Date: Wed,  8 Feb 2023 21:01:59 +0200
Message-Id: <20230208190200.2966723-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_110216_899444_07AC2BCD 
X-CRM114-Status: UNSURE (   9.10  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Add nodes for the eUSB2 repeater found on the pm8550b SPMI PMIC.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v4 is here:
https://lore.kernel.org/all/20230207135551.1418637-7-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * none

 arch/arm64/boot/dts/qcom/pm8550b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8550b.dtsi b/arch/arm64/boot/dts/qcom/pm8550b.dtsi
index 16bcfb64d735..72609f31c890 100644
--- a/arch/arm64/boot/dts/qcom/pm8550b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550b.dtsi
@@ -55,5 +55,11 @@ pm8550b_gpios: gpio@8800 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pm8550b_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,pm8550b-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
