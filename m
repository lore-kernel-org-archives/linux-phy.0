Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78813C47258
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2jLTemVFM60pTMK6OaVJB5aVzxpB7Flj8ArISfARqo=; b=viicn3vAT/mrcE
	Kz4Y2z2VODY0/MLN9PQKK5dTaC4vuGri5ZySSOBHhcRoiYCtScwgL7/OBN15cGOHiNowUjjX+rZfM
	Y6bS4BucgeBxfE/gIdwASXRYiV0aBjPQi92Y0wHa9l9u9UHK82ntRYjpof+W6zwI84WaY7jms3AKq
	t5ECtCMj5B697S2iEs34W9LvnUxGWomuoHyETFVYCmkTL5btYhyYQ7SvZfMxUZ+s8AdNjuRdV42Km
	RHYHNgjU1W6lNSNUIWU+rn+z12yFaSAwjCy3LHttn6fXlN+i92cC5vvuala1oo7ZENWT8qdqNLsye
	TmJGQ35vcjSaJ9OfS3OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnJ-004Zjj-0O;
	Sat, 13 Jan 2024 05:42:57 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnG-004Zh3-21
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:55 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2cd1ca52f31so82956491fa.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124572; x=1705729372; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=maqz8OOCJx2/2Q8p+D0KjTHVWD1DBWuVM7oX4CTcnm0=;
        b=RS4/gz5uyLiyO7vi2f8+ayRPA1DOeLuCTrHLJJLIiPvibFDhGD0UrK3RIc2Z+9Z9fw
         Evg0qkdGHR8og2dRmJcYHcXtkvd5Moe3NHWZhRXxdn83jRp9BHBRueZzZQkEmC/gkchc
         bW0V03UU6L2ie1EAoOUhbcsH+69UFmPyvn7Zg5FP4xeknkVXo89u3/yGD2AbsAuoFKyI
         Q+YuHRT9PzKkpRjSmOCqYv85pbq8+ujrIytLPP5wZZDvMTnGmYEj1EjFq2iQ+2pEILbM
         epl0pHjWkcFS2503s3iQ2JiCa/BtIFur3ZgSIHNugPep+wK/vJJAXI9Lv+U0V+Sjc2dH
         lf5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124572; x=1705729372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=maqz8OOCJx2/2Q8p+D0KjTHVWD1DBWuVM7oX4CTcnm0=;
        b=Em5dCAj3E96XNfRW8R9zFyUveMvPpDsyAQHAbvZf9DuCBfdIsGxsETJ4+iSIwOVUsw
         ghtjIiNpDeuU0GKhU103H9BPbvv0ZGtX40SZYDEZupfYtKsYoRO/245r7RAqm8eNJ4/J
         W8BEO69bV8cpXdGHhd7ofGfFYaeADU+N3KBq1mz0lLmI8LtaxpnC994u11wNaKK0Rt3b
         aMa/+lp6VTtC2od0ZWKO4IlNBlEjzzYzb3zJCQojJoGVLzfZUuNECRizgVQndLZC29wV
         +7eb+u/LsBlqAZ1+wZ4IQ6jPH2CaSrKfOILzM1SAe9v+cE/LEfskdInG3IIOnp/HEVrl
         KUKw==
X-Gm-Message-State: AOJu0YyK14Vdmri9qLSYuL5bH+rp+mMdtoEQ203hpXNAiA3gWxFDazNZ
	XRcHdmTMgMRKbf95t7SMfwXVNKvOkWhkvA==
X-Google-Smtp-Source: AGHT+IFDeHpIKX8sZLltlk2rJ0XufBJkRveFWRaqQvNdBAgjYsprqO7l/OKZS3jBNPfBHCIS0NgyYw==
X-Received: by 2002:a2e:9ed3:0:b0:2cd:1d93:115 with SMTP id h19-20020a2e9ed3000000b002cd1d930115mr1131444ljk.77.1705124572236;
        Fri, 12 Jan 2024 21:42:52 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:51 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:49 +0200
Subject: [PATCH 12/13] arm64: dts: qcom: sm6115: drop pipe clock selection
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-12-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1422;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=PoyicLEdV7BNvd9Kbg7da0oOR4R7+Utnj7Siv8A91PQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLSvDsuwwJnb055Vspk3eCehqaZ6iqJZUpWE
 /oa9J0doPyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0gAKCRCLPIo+Aiko
 1TT3B/4j9uDIml/uby302RFGIim5onN4fZITAgJi5BzYRNYrhVivYJZGckwa7lgZq+KhqAW9UJj
 in/pp+YCuRiluRiqqqKoj/UsGtCg7Vt1gKTuoOT9SHWZnOKG85aE0bNfb6GInCQP35IDjH9U8dq
 VNRE04ypv3ropnSofTmigJoSe4Nwl9qYtSUq1pSUwOnnM2rMxrXdLj2mfo/DD6zzjCDYospTS12
 bJSs3ep4LybvkMHu9JrXLn+DDmmzwYWS6JyMuS6Ye/OVNltGYRiEDOqgfvCvb61fAVoV++E3Vxo
 7yaz3QEovk27fdg3tGIpgogeITCjS2UBgFHDT9GZE54V2dqu
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214254_686704_583392F8 
X-CRM114-Status: UNSURE (   9.18  )
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

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Stop selecting UTMI clock as the USB3 PIPE clock. This setting is
incompatible with the USB host working in USB3 (SuperSpeed) mode.

Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
[DB: fixed commit message, dropped dr_mode setting]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 4 ----
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 1 -
 2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 7c19f874fa71..52f31f3166c2 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -607,10 +607,6 @@ &usb {
 	status = "okay";
 };
 
-&usb_dwc3 {
-	maximum-speed = "super-speed";
-};
-
 &usb_hsphy {
 	vdd-supply = <&vreg_l4a_0p9>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 160e098f1075..76c429e8ebab 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1600,7 +1600,6 @@ &bimc SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
 			interconnect-names = "usb-ddr",
 					     "apps-usb";
 
-			qcom,select-utmi-as-pipe-clk;
 			status = "disabled";
 
 			usb_dwc3: usb@4e00000 {

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
