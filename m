Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF23C25B7D
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oijZNy/S7FzNygYEwTtK1aOMJ37DaeYWBCCHzYcGf7k=; b=YyaYUfMtJ+B+PR
	NJElYXh9irmJbFTOI7+fVUZWeK1i2AeAcTg9UC4MNF+UPc6YFkFrYl0SXwGCzLD/NkTCIsRNv+lM2
	4lBUfQf5S7BnP7CmNlZZOsB1mxeRu4PgB5vmrBPV41bEqSYUYek26Mv7xWuTYe2eflRqQcFiyixmm
	fW1VA2Tm3XYLhgMbD8R32iMnq2vwcCIcv6DgncbxkOKwiibAaI2ML2QHkTanp0ibp4SCRoLgXuT00
	YLOOKtogG6JoeCY566/I12VCSq0G056glBjfdk3+SI8JBuSuEE6sDDZosJ58w4vWhRi1PimS09rvg
	OArDcR9IRQbDdx7inkVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwY-0000000EHO0-0a2c;
	Mon, 27 May 2024 08:42:58 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwT-0000000EHJd-0HmD
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:54 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-354e0cc9c5cso4571936f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799371; x=1717404171; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gv4XcgrE+Sm06cvS3N6RCuploOyylX22ILl1HxMDPcw=;
        b=b3GWwN+OHlNsUSHETMGx1ED3OHFQGGZCb1VnX3iL1n2ikoJIOz9nPJgEvD+v625cVT
         /fpUNSHH2g6a7SYjs0Wm4/FJ3Yg6dpRD/+DTHrODitYu6FsgCi7lM1ASHPWlUSkM74Zu
         K11L/ua4h4CxYwbM3C7SKmBqYuiwRwBuKDBJQLm1hHTUxBZV561HNmeF52EEhCA0oWtQ
         mVOQoYJAC3IXmcrKyoXDsxjXhwXkTZ6i3WqgtzhIrQsBuHKo4E1okW7ImQYzYVg/QG/M
         DU7J3dxEar+iyBz56uEMhG2uq/RTFkTKzHi6K8bc8CNCDIp36onrAyb1iS9kswtBiQJe
         gx+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799371; x=1717404171;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gv4XcgrE+Sm06cvS3N6RCuploOyylX22ILl1HxMDPcw=;
        b=cPVTFKmaCuIkJ62efy90je+4Qq5NhZd9PRY0jEcpDab6ZCxo7GAnR2PS+2pIUaF67J
         bnQNVPYGcoyxfQMCb/hJUBpWlPDf3gL9d540e6lHYuAEfos+pVH/6K922C30dXdpw/rC
         cOPomYxXwmMNWkIHJvrYZ5oO3FqBAhRPieLmY85JpzWiTX1bd1YZYJl68kS30PbdwhkF
         UgFpTLqQAdtjGPA2ICBsDwpFzoikuN2G8S0hiNtTJ7IAxxM5USEnDc4WP6JTkJa5yVn8
         H6ZLOteOIHKihmYxAliROa5+dhBx9OM1og86duD55pGvs084HBHA5rekoQZuqz2qaVNW
         4VbQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1oWQbn0JZqD9HiPzwD0/CwtjIYV9sMdTuRIF+BW21zFC5rV4JfzPWXiVM7JBx5GpyYlk6/jPNiIuxltKHNYfnDshwqGrfZDKh/YbB0Q==
X-Gm-Message-State: AOJu0Yy31kTIRYtXKz0uRGyiH00bBa6ymwu7Ee3W0HKZYX5Hn6JxII/O
	gs93D2P19+TmY7/7bGEEgUPnvh+QNMmLJFeW8FUrhkx5/ntlGhtHmPwyLFMUnKo=
X-Google-Smtp-Source: AGHT+IHF22FK1+Ks6DxIuwzLPxEi57/bXJbpsEkYmUSNcM8jUjUfiNgSqFkwncWDon6TfTyIOBiLnA==
X-Received: by 2002:adf:f48c:0:b0:354:f90c:63dd with SMTP id ffacd0b85a97d-3552210f11fmr6175693f8f.0.1716799370947;
        Mon, 27 May 2024 01:42:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:39 +0200
Subject: [PATCH v2 7/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13:
 allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-7-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1314;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EQYEM+nXLwVomhzLq6K3CGSxN/j1/41Ke38UOW9m/Bo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEeAHBZsJopuIKCfsXkjV2XRXahXRubswN6LvOMY
 WusZGAeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHgAAKCRB33NvayMhJ0f+hEA
 CdjaqatyiAaFU3k1VieZt3QmCuHnjKxT4lgrTMmAKQxCydsv6Z82g1Vi5hugt8ZZ73C5iXvHSAn8kK
 lOHQ2h7F/uFFFnfyIPl9wWPLnwo4f80hjcjDdcQ4qWKIMqdKyu8EKroW76xvNKQTZ7JFxpVQLy3B35
 qAzYO4DuzIMFQN8hfCloPuH53SGceSqzMoluoYoVudwwXG/+WD1guBLIP/QWjPY61P+6dfoLv0Znkh
 oUCaigX/PO/BOUc7XAmzvy47Zrn29i+SO1M5NgV5C6Tcftv5z0vy+l1regR5jowBpxEpIYedIrKhk6
 XbBJnWvF05Fqkw7hPajqX8QsiCEA59lo++GQJ5q79K4IFY1dU0Qo5IMY/Vnb2ucN9GLyTvjM+nO5O1
 3Ch6HkJy9Jouan6hTwNzE3FOv0+r8T545yu3hy/SJiN7ZrOlN1+By0WcuTiKIV6IaV0nMGhK42nJkk
 1bzatzIoi7XCux49BBqxN/5nFIwiQxgoKh1t7xV2cQHnMve74czLScmjmccl0+nYMqz402l76+Mln9
 meH2oWuuCRHt31GiMgVauvFgnucIXdjXjcwo8cXaO9kv2bRwpjX6pG+K0fnrpIr28ykj2Gc9NID/vi
 txRALFfvbNwq4GIYFlYHLRDZFKQeT7evtqN04nYxv/iNQEiK24MBgHfDrRMg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014253_266122_52B59F64 
X-CRM114-Status: UNSURE (   9.40  )
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

Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
and allow mode-switch events to the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index e937732abede..bcd38831f9d3 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -593,7 +593,7 @@ &mdss0_dp0 {
 };
 
 &mdss0_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_0_qmpphy_dp_in>;
 };
 
@@ -602,7 +602,7 @@ &mdss0_dp1 {
 };
 
 &mdss0_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
@@ -1143,6 +1143,7 @@ &usb_0_qmpphy {
 	vdda-phy-supply = <&vreg_l9d>;
 	vdda-pll-supply = <&vreg_l4d>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
@@ -1180,6 +1181,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l4b>;
 	vdda-pll-supply = <&vreg_l3b>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
