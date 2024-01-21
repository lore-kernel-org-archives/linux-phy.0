Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 709FEC47DB7
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t80uwRX5Eype/CZsFB18NwL7q6VfkzzAzREF/C6da88=; b=FIeYUQr8WcAZQ3
	VOnrgecfrRm/2vWT8mKFWoWR7RxHGsie6FIceX/FHKDrZfJNIbHOCAH9qWE+I0GIkSqHcz+ql3y44
	2fRDC2/9j2jTttu2krQAkp+J639EYStmBh2b+HX56inOSa9SRHUAe/jla5LeGd0zLkqmSYburYGLG
	NrnO5bS8g0L+M9s5bGZHeBNpoK/AiFyCrIIxz3gKf5e+JnNlCWI5hGbO533o5ybpABaA0gEtQgB2R
	T9hmnexlyKhKeakhvDzPSUyYz7oLfkc2soZVCNF8iucVe2A+9PXKShsopkZ9ggWnM0q7Ttt3+ZUoO
	y6025OufUd14HOnkJUog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAO-009lzg-33;
	Sun, 21 Jan 2024 16:59:28 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAL-009lwe-1X
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:26 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40e87d07c07so31262395e9.1
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856363; x=1706461163; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FWXdYhdeM492EXe3mdG5BAPOk6bpMY/Q05UvJ8a8hgU=;
        b=VIMPxpwfaChR1qFb7bQ2R4cYBr+uUFuCmFw4z8oYAPYA8viSOPUVfAQALfcDc8o3EY
         cxUWpQBJEzHmU8+zvcRzt+dIDU/x4+lyz7OiuKFU5uwm1ZgW96MH8OT+JoJzT9vpnz+2
         uqEBVH6szIx4bMVVXqOJfBmUyE2KYOwv3bki/GRmO1hwO115X825npVBI2mSvsMltlar
         NkgbaSZyECqVBr/a1qECW1YPPPRUgIZYlNPnYXMdoWNnwiwKYQzQ4iLSGod2+1h/qw/t
         vh+vp0f+HSVNEoMLX7oxaukBRmC6/hKLVEZQnZszkIP9KBjVglZTo3u8mrxMEbc1UPMs
         Lb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856363; x=1706461163;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWXdYhdeM492EXe3mdG5BAPOk6bpMY/Q05UvJ8a8hgU=;
        b=VrIDLXNNZPfQ0JouNSW22QwQtYEgpYjJuMM/yKVlkPrUzA1vXoAIQTHHtm41pikhNC
         eidJVlf+L6DidzpCulETW//dgJ/J9LLePUMGIWGk6ewPhbOghYxeIYlal1mlDgGAY6ry
         1dApjNK4VqHtamEhZ4vVtMh8S/j0xw9YLWr2tQ7TX3hq1Ao6XBk1Z/Gfus/yyuVCXZf4
         teeWdHhxSo+exQxfO3RMoXx4zWpUoJl0wkiHyELMCzr2WHa8jwMrNOgUj9AS6C9VjAdH
         qTQvzTbXA3dSputg4evi1cLXnyH6muaMY7GIstg/H2YcPShZ/l7a6KGf/kUmtWNXseOf
         Hv6w==
X-Gm-Message-State: AOJu0Ywoo6uWnhf567MJY95nHuvxWw3M+7YfbYeghvhQY5hqGQU7m3EH
	tX7NJRblFRuDOP7pd2y1dJ5vshpghnqRcWRf0nnTStF0aOoIJTzH
X-Google-Smtp-Source: AGHT+IHxblpBc5ydNxrV8gNG0jMJ56WKb64d6KgnFvJyMgC1NT1hN0GhKgpeiOtFdvC1wyC9HJqJBg==
X-Received: by 2002:a1c:7502:0:b0:40e:640c:3b67 with SMTP id o2-20020a1c7502000000b0040e640c3b67mr1741516wmc.138.1705856362906;
        Sun, 21 Jan 2024 08:59:22 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:22 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:47 +0100
Subject: [PATCH v4 7/8] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS
 nodes
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-7-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=2422;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=xv5DuB+dFYXgw1+FADV5/OpZCBDgeiH0Y6c1qxss8As=;
 b=8R85c/gQGHlKCMx88LuJo6ZhaKx+azi6UuwSBfVZlz1HDcR8Na+GCx16PdZigtCCgmXDrL7Bu
 b0COK7AHLphB+mtTm3TrrzJXUdEab6W/DbNmz3BO4KjsfPq4+YvyIpl
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085925_514452_ED933501 
X-CRM114-Status: UNSURE (   9.62  )
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

Enable the UFS found on the SM7125 Xiaomi smartphones.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
index e55cd83c19b8..0dfd1e3730e9 100644
--- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
@@ -152,6 +152,9 @@ vreg_l4a_0p88: ldo4 {
 			regulator-min-microvolt = <824000>;
 			regulator-max-microvolt = <928000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l5a_2p7: ldo5 {
@@ -188,6 +191,9 @@ vreg_l12a_1p8: ldo12 {
 			regulator-min-microvolt = <1696000>;
 			regulator-max-microvolt = <1952000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l13a_1p8: ldo13 {
@@ -230,6 +236,9 @@ vreg_l19a_3p0: ldo19 {
 			regulator-min-microvolt = <2696000>;
 			regulator-max-microvolt = <3304000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
 
@@ -258,6 +267,9 @@ vreg_l3c_1p23: ldo3 {
 			regulator-min-microvolt = <1144000>;
 			regulator-max-microvolt = <1304000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l4c_1p8: ldo4 {
@@ -398,6 +410,22 @@ sd-cd-pins {
 	};
 };
 
+&ufs_mem_hc {
+	vcc-supply = <&vreg_l19a_3p0>;
+	vcc-max-microamp = <600000>;
+	vccq2-supply = <&vreg_l12a_1p8>;
+	vccq2-max-microamp = <600000>;
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a_0p88>;
+	vdda-pll-supply = <&vreg_l3c_1p23>;
+	vdda-phy-max-microamp = <62900>;
+	vdda-pll-max-microamp = <18300>;
+	status = "okay";
+};
+
 &usb_1 {
 	qcom,select-utmi-as-pipe-clk;
 	status = "okay";

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
