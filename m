Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817C1C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 15:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4jZS264YL+BTq2Chyd5FLU2h9TczHN+TZQVMWt0huM=; b=doErkbnvRXXDOO
	4NYJ9/M1FGi8r8QtnFZDUTXLEdvmVJw9ctGxlv1A8GujwymPZFviGmap9y9FEfPC6OqkVs6PIlPGk
	RMbKb1ONW11r4qetBztps7Clmk2nGYPwnSN1+Sz9ySYq5Do4L90I5cX0ZWX6soGZG74PXMB/lJu4R
	za0csznQ77PclnuyKMIekl/t2LPHI3gnEgJCcIa2ja93VTgdmq4B9KLkLlZOIDqFbM3K0J5nyJVLJ
	0vgjwScaTXYIN/tNAdX0/Y6iSp7dIep6Ejub5hbA7zayPJs3SDJMhGWR9eFMixc84LN1SDLMM1/4O
	reydQaXUGHjVptoMWqsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywFE-006Bqk-0U;
	Tue, 16 May 2023 15:05:44 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywFB-006BqH-20
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 15:05:42 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-24df6bbf765so12122458a91.0
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 08:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249540; x=1686841540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P5pQrJTTCZJZZKPmjIiq+X+xkUImdFCCiZ3e7a6lOiY=;
        b=oxlwFFM7VIT+474vSuBUObLQisjQgPiVCBd3d1Lc8P7hsUaQufiN6YBpCF59zh1OPC
         eXm21kGgGlB6gDcfen1BgHo4X6ZRXPdRicMufbqPvp+/aR4uNB95YWVLj8jDGN3NmHE4
         FVQgQF7bt2BjVTHy+SFlTR58SXkA5iSb+eGXPfw5ADeQoDTHL9wms1BpebNMRi5tyRAK
         cvLdaf5rYYEjOKEOoC5snAdDCmLpF1/1H+iEJdV/QoxBD2F3vpoJzS+1BGK4b36zzfxO
         yEHquA3Ii5AtonZKrBpP9Wvi2qEsGKO8Tg1nWMFlLT0hy34Xv77+3s5md4vnbejWic7d
         P6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249540; x=1686841540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P5pQrJTTCZJZZKPmjIiq+X+xkUImdFCCiZ3e7a6lOiY=;
        b=VU5ItQGw1Dp7/nY50gT6oFYcm8i2x6ru/sjWCMhu6+uQbysPkyGy1yGOxRwhpw4vM+
         h7/XFbQ2PM2q7tmcjhrh/5DbJ2A/ZJvKHkxkgH9dzrWeSh8Q0CqKiv2BOFW109ecerQu
         IPgJ8Vnfh46p4qqH91S4lvIhtzcbF/U1vLgr2h2w7FuFd6bhz0YCqwRSt2vpDbxcb0Xg
         wtCCRv26lm/RiGlL/R8iNUG1H7Tk4KuKKQBfaRo3F53kGuv4Q4+zcG50D66LYPwOlM8g
         OWiFtTX1uUIWqD8uHdzx9G0jH37yqA1kCJkEDJjcLqRCdIiN4QBkoePtq7KYam7TEAc5
         FJoQ==
X-Gm-Message-State: AC+VfDwD4OnXsqHm0r8TOjwVoxXYJMJZaIR9dLNxOhGaGhfwCmMGq04R
	smfkRbCNYNeKy3/oggm4ICB2mA==
X-Google-Smtp-Source: ACHHUZ5sKmRFAHk2jFlMiCRrqV1LTt9359wEdaXN6/H3PTTMT3eTGunY7ExJe3vYW5BPMebYidx0fw==
X-Received: by 2002:a17:90a:9307:b0:24d:ef6a:dd0a with SMTP id p7-20020a17090a930700b0024def6add0amr35974432pjo.5.1684249540547;
        Tue, 16 May 2023 08:05:40 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:72cf:f5c9:ba94:6b85])
        by smtp.gmail.com with ESMTPSA id h1-20020a654801000000b005302682a668sm12817164pgs.17.2023.05.16.08.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 08:05:40 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v11 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Date: Tue, 16 May 2023 20:35:11 +0530
Message-Id: <20230516150511.2346357-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_080541_749976_4ADC164F 
X-CRM114-Status: UNSURE (   8.60  )
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

Enable the USB controller and HS/SS PHYs on qrb4210-rb2 board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index dc80f0bca767..eae3024ce003 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -222,6 +222,30 @@ &uart4 {
 	status = "okay";
 };
 
+&usb {
+	status = "okay";
+};
+
+&usb_dwc3 {
+	maximum-speed = "super-speed";
+	dr_mode = "peripheral";
+};
+
+&usb_hsphy {
+	vdd-supply = <&vreg_l4a_0p9>;
+	vdda-pll-supply = <&vreg_l12a_1p8>;
+	vdda-phy-dpdm-supply = <&vreg_l15a_3p128>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&vreg_l4a_0p9>;
+	vdda-pll-supply = <&vreg_l12a_1p8>;
+
+	status = "okay";
+};
+
 &xo_board {
 	clock-frequency = <19200000>;
 };
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
