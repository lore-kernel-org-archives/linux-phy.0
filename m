Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B93C4707B
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WS6jEE0VTi1dt0yMfG9uiHcj5JmORBjmHPS86UYvx/s=; b=ASpHd7dxs8ksJa
	kSWQT2Nqw0OT7QM0zArSn+gEsYjjODmOQt5dL8IvMtZNo+nOngnF8k09dxZhGSYgNEEooIbp0jsCn
	eLyGeKOMMRT9C2QbwmCVxMjLB+6bwBalizMHu+mDSLnEGcc+RH7A7dkTu1DVy1gm1iyHOVVCd2Vg8
	b48BMpYNN6XK+aZ+0a/ohUWT9lZFnNYOyOlh0BEmtr9ey02C8ZCSnzC36oeXGqbZx9KvoWv6MN9PI
	rl3ji/zxdAYifQVGsYKXg39rCqBdPvaJuCAIFmdppByyVDic6+iX/ps0z6esO5u1EIFumMaP+u0Sw
	gi8XRL4bqRQIh8D74T2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwe-00Adct-1t;
	Tue, 16 Jan 2024 01:08:48 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwY-00AdY9-2f
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50ea8fbf261so10924670e87.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367321; x=1705972121; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gTqssOQMoHivsRaKvhgiYcDI6NU9y9UNmBG4hDTXAVU=;
        b=f51GqIHA5fRZ/4uyWCNNr4c2SblWsN5UayCVyOfkT98VpxX+YNJPS/S4TKYNsEA1oC
         2VlvFHRnrZy/HTxSOpjcTVy67bXTrwh5ziyJJ0MdnljNwHt56/igo7oyAbVgso1XTLv4
         xlLEtEKO956YfMagYx/z1lpxOBsiFW1/bC7IY5dKxtwb198R/L7yC5TBIa/Bl47y4wkt
         77JxYQNuL8ns+TszoARgSU8aZVRTQJElhZfUeSyQAG7tlUOl5eS4gFrcj0UyqZDOX75i
         +LLYbDIVEIJxpBTg6ZhRT/NHYLG/iB+HRldzczjX3OrPi8i6/XelLbzMFwb7PDAI5hYL
         YdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367321; x=1705972121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gTqssOQMoHivsRaKvhgiYcDI6NU9y9UNmBG4hDTXAVU=;
        b=DSkQ97uokPuRI9msNsvUiW+Wi747Rsl/5HvbwWrltA6uMdHhS0jFJoN35W8JOIGWco
         4mGwgnYr0XGlGArR7vITLFUKiiawD8hrKzHLuPhdy7tN8j6n8LQEuz+1tpI4+ACXnVjA
         8kiAAtsdjETXnROUOOV3JXzecGVQ4Nwv17ivEt+4FUu6WaH6q7hfq19veOxPKpgdKJhx
         GyoPoQxtzdxoL1WWnwbLLi0CiiTUBTXr8gps/3oryITLA0qc5WsK2lEBv0+gZVCXfezi
         huXLDbRmWCL5Vwqxpr01y/POwxiIY9ImDWZsjgVCwNNTRAeHHp+EBJujR4uVxf90DiBn
         WmlQ==
X-Gm-Message-State: AOJu0Ywg10JoITiHU+9dZvsTe5852EfPu1riQO19k5p86Y5hfg1yf4dR
	uwUmcApu6FXii/rrqarZHAybB3v4DhjrrA==
X-Google-Smtp-Source: AGHT+IGiIIUNsxe/40WvVDtiw0MLeD8d7ivL955vOr/+WjrQ65YZiXNtcJA+zr0rlxUZ7tRkHVBx3g==
X-Received: by 2002:ac2:5608:0:b0:50e:76df:e41 with SMTP id v8-20020ac25608000000b0050e76df0e41mr2644981lfd.133.1705367321562;
        Mon, 15 Jan 2024 17:08:41 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:41 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:32 +0200
Subject: [PATCH 6/6] arm64: dts: qcom: sm6115: declare VLS CLAMP register
 for USB3 PHY
MIME-Version: 1.0
Message-Id: <20240116-usbc-phy-vls-clamp-v1-6-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1151;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=AdXDhIsnd+iXSWZKTFcLsyqUk+oKkuaRSto6EvCY8cg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcUlM9KRQMg6qbyevu03KD/zZr72wNib4qD1
 uB4dUptrKeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXFAAKCRCLPIo+Aiko
 1R/XB/9FpNoeUmcKdOQ6BmmvI4G2XZzEF+ILr7Y0cQdQPcopIXTcMcJUqYEM6eAhwIQLOhsxE0o
 ZmyurDD5Mvv6hMZqdudsoMoVgOz3YhVTiUyMg5wEAMdSYgtwigWEsA9C4JasUen3m4zfclT+WeL
 2Ed2c5799TBbn56oGjrXcolU0RUOd9fIl9EibLT7ZK1Lj8U58reZ4urgkjxzpkT5wzIWWU4s7+K
 A0FDXtbK+To573tmlnFj/5aLxphxn1Di8D0rT453WxunZF/eTp5lpQQs5shEZOX9IY+HnFjnGAz
 6Zf9pwsf9cU1C7rzCh/rmEnCRNQ/8s3DKWindT753QqFnAJr
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170842_871681_E0A40BA5 
X-CRM114-Status: UNSURE (   7.76  )
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

The USB3 PHY on the SM6115 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 160e098f1075..8cee943fb24e 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -614,6 +614,11 @@ tcsr_mutex: hwlock@340000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr_regs_1: syscon@360000 {
+			compatible = "qcom,sm6115-tcsr", "syscon";
+			reg = <0x0 0x00360000 0x0 0x20000>;
+		};
+
 		tlmm: pinctrl@500000 {
 			compatible = "qcom,sm6115-tlmm";
 			reg = <0x0 0x00500000 0x0 0x400000>,
@@ -879,6 +884,8 @@ usb_qmpphy: phy@1615000 {
 
 			#phy-cells = <0>;
 
+			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
