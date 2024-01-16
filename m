Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371F8C47422
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IboyaeMaaEyBU5bqXDR1NnN08q2da2OJt9SydmYEkTk=; b=HsDZLJHnUOJRVJ
	tWYt29lqf6MD1904ryE9l+68MBamB7XDSUCWAE76ja6TNbbI5e+TLpOUvwM/zcT7QPfQr8fB+irB/
	HO8wvT1CdYxVHF8KMeAaDQ9CxChvH660+oRHc6LNzUKE/f+Mg1kJpwKFpaeslSD2+OAOqyetEvf0O
	RZWwngNWLZxFOw1Nayd3SqfkiXQDIFP1KB4rsPXXmdZxquaRbS5cOn5AZlgiXkDl6nSwo4hikrqne
	ewugz7051ulr/TMwpOOS1bySllQ1Zo5b2O4hGaw+LQLpRqJwuLetPflSVl/5udMxGRmf6D7uKIJOY
	W/mUkYXqWXZ457aiAMPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwe-00AddF-2p;
	Tue, 16 Jan 2024 01:08:48 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwa-00AdY0-1Y
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:45 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50ea8fbf261so10924661e87.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367321; x=1705972121; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEpBpePk2Fe+evg+9+5KRmYVDZRaE7AM1j+je/ds5Vw=;
        b=LrHdmmdQlDFj2V+U8cRtyQF3Bv0XL6qzRqCDTJNLz1jsBooxjWbqiUimbVwKFdlL1F
         4eWbQr7QeEhEJ4PGVnhn9isCHe3UJf4aL/SAy+fg7giijTlP2Z4FA8nnlpMfxTfJZiTz
         QO03I1qoiyYA49GPlLR7dy9k/T0zWYupXZRD/AfUZh9MvCOZQJlBJIGGGcBGWefjsUQ5
         MD4GFcFa7VHMniQ/6gUnxkgs97gBWIsJfSOr/JxuAFAPtdUMx+9I7Nwl8sio8yFtmwRX
         vE42LXArkazpYWgXJL1nDNzIRTEcQLugwXUKm0xbdfo8RM+JqoD4AW9yoUGjQQbwwgs6
         ta4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367321; x=1705972121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEpBpePk2Fe+evg+9+5KRmYVDZRaE7AM1j+je/ds5Vw=;
        b=HCVF2oE8Ss9diAPUO+azn7nXuly4IF5pta42LpI9apMSBi+aakwDYxrOoPCrJgR8W1
         YwUj4GFVRnFyrWQk+EPCZhRSer8I9+//Dnj2xPNx+3FXZKw04o+e3/wg0qIqDwIRU28H
         CDQtr+P5y/ohp4uuGd8Fwc1HqIPSTx03jS6tXeYIfl5xtP51ypXElOG5gojodNLADE2P
         P9qoIV39HuxfD/gfQ/tvxmHVgv6chxdRKbwX3JgSKyb6dajXofchO3laIUpA1dP4Ywrq
         rWv6M61yGuZN4vA32PuCKfnHTK3YIPCIhBsz9liHt+uRjpIPEKsFXZ9oyVvxBhVZNMjj
         rNpg==
X-Gm-Message-State: AOJu0Yz2mgHnIhFfr9Oogj4ii8kpeYndEJ7g/5Gw/H7RystSFB2TM2J7
	W/4etq+s8hdHLJusRnRt6ZCGbZfM+AK3lQ==
X-Google-Smtp-Source: AGHT+IF8x9G3m2kXw9P+9jtMN2XrPxmmiI8kKsSeCWAJ6wKGAJ04aH5sve/NkhfTih4N6yLfs6VctQ==
X-Received: by 2002:a05:6512:401b:b0:50e:d202:601d with SMTP id br27-20020a056512401b00b0050ed202601dmr3235141lfb.73.1705367320990;
        Mon, 15 Jan 2024 17:08:40 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:31 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP register
 for USB3 PHY
MIME-Version: 1.0
Message-Id: <20240116-usbc-phy-vls-clamp-v1-5-73b2da7691c5@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5s+C8l9HjeR5C9PMCkzn2M15yrFw6QVI1uh1HoQRbAw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcUB5Y++cfi+p9OvDh9xSmKvHvrn1QVKX8p7
 Oh2qsjYNoSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXFAAKCRCLPIo+Aiko
 1cPCB/4nTVJB8iCrE0+m/U4GPT2jleb1BIy0WpsHcERz38NcTplPem5Xekmt8JzdIbRytU2hLq4
 NY0qaS4PBhsBUo2hMLH4LCfc4o1QIKMSB01pLj3B7wl0H4wnlx46MX8NZ3MY46kxhIBLNa1NOjL
 g6QAhwM2aToZWXcOgvIB4OJgfMrxc6BUhMv1gYMmwj/UkattbENA/hjTDSNQb1rwrpUVgkbOlpM
 5nMruXaSA0z592WhsqGrlMWsBmnRN7sj2I9ArQT48kWeUGq+a0Ywt/wXrwRUtZCaV+H4nG6Va2M
 eNtEWrnBU+bGM/OkCp3aaW0iV33PLptzgBAhhmQzjmQ9OGLs
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170844_544633_B40D9DA7 
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

The USB3 PHY on the QCM2290 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 0c55f6229bc3 ("arm64: dts: qcom: qcm2290: Add USB3 PHY")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 0911fb08ed63..68b52e8faba5 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -442,6 +442,11 @@ tcsr_mutex: hwlock@340000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr_regs_1: syscon@360000 {
+			compatible = "qcom,qcm2290-tcsr", "syscon";
+			reg = <0x0 0x00360000 0x0 0x20000>;
+		};
+
 		tlmm: pinctrl@500000 {
 			compatible = "qcom,qcm2290-tlmm";
 			reg = <0x0 0x00500000 0x0 0x300000>;
@@ -690,6 +695,8 @@ usb_qmpphy: phy@1615000 {
 
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
