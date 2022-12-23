Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393EFC3DA7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVBj+icoIAQX/8jFOIPni/BCUWBFUFybb/yKb7rlKs0=; b=VbaigwALaOhDhe
	FsrdFD9tUUnFWlFLRVQpXf2dBAJn2LV6YDgovqAAs6BwhUZAZARR0zwuMw0dsefKWQfO5T7hXgLkI
	uEI5nBBh/0tDzmVy++Y2bpyb4DOgOUcAwbqbUEizXNChowCab1f/dl1c8ObG/cduMQmIMpn3phh2N
	KLilQt897zefyNESg4jWDn7e0sZnyvaMW5ewJT2lnJ/vNF7fdxsh2sJtwIElnlbVzb8sDQtmwSixS
	76j3Vu1TyN3GwIy+vTFeg6K4AACz8mVKK8Hvyqgbdhocqx66WFkopY7h7r7B3p9EmFICUuBd/9IMf
	hSB5VAF1EJGmlwmBu+EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kkz-009tye-9w; Fri, 23 Dec 2022 16:18:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kkv-009tvK-B9
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:18:46 +0000
Received: by mail-lf1-x12c.google.com with SMTP id f34so7608913lfv.10
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GdfFWcY+yQYlh0eS7hJEt/L6xzUJsk3MolFNlo9O/TE=;
        b=RSAiBTBKcepcbgnlkhqoFng1MUZlwTUzS6PLXgohGapWJ4tLZZZAC1xOaYDBspIOCs
         enJLBRP1A+Pr1zGpIgC48D3JU+FbaNh+P8k9gH29JtWfiOnisbIJmy5yOuNwzDDHDp7h
         Ln1oIhyBw4T4tmoWIZkgbI+Av5Zu4zWjZu2tBf0avbyQocFXS+L8EQCBJOMGJUxuecq0
         zbboOWyvU8MvInUo5wDbJDCxbApucVCyrQb0hqiZ2ofPCDdNerBRoOI8TU9OYV+FRS56
         p0RJy+UQro/pScUvlaOQBAXHj3r2EmuFKrIVS0mm7B3JBpRdnYikEolAVdYD1QPnVbLl
         s6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GdfFWcY+yQYlh0eS7hJEt/L6xzUJsk3MolFNlo9O/TE=;
        b=o4+q69vkUG1jwxavjyeHTu/xJiuxu8Tmf+yyxI0rpcwA8upyBt0zaWIXA/kF2kBWkE
         4+ZyzlhzAMD7zCeIlsu5gKI14BXOJ9OMuaGQ6OpEAlKRRCUlyeWyBxYRADT7o2nXyIAp
         oZpyHwDbIXnS1wgPDKoSZyEgX8SFdYsiZEqCmPtY5H/QB4Pf2Q+BKcRtRwwn1sh99hlk
         uPA5qPt9uo/58FS+J2U5gCqZXmkz4YihHzQXR5qN0O+Cf5C6OsBfUIFb0DoyuRcMPwcn
         YzHYTTIQZkykJH9teGogrMDBFb4XTy08WO9ivtXeWsobTNLZILF9e5HapNWIwAQordIF
         65OQ==
X-Gm-Message-State: AFqh2krC6j5uppuVCsQgduSkXxvJbmncPCJIVFK2MU7OgwwjzisYfoEY
	KPjyaOW2aQUvgu7JhXMNVCW4Hg==
X-Google-Smtp-Source: AMrXdXtBfXtxh246hKlPoh31B/GUNxN1je2pQ+6h33637hdWUCDLRTiWPmRwsILupKeWsZqoQzYA5w==
X-Received: by 2002:ac2:5e2f:0:b0:4b5:5a15:8050 with SMTP id o15-20020ac25e2f000000b004b55a158050mr2441393lfg.32.1671812323443;
        Fri, 23 Dec 2022 08:18:43 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n18-20020a05651203f200b004b4f2a30e6csm581360lfq.0.2022.12.23.08.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 08:18:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ARM: dts: qcom: sdx65: add specific compatible for USB HS PHY
Date: Fri, 23 Dec 2022 17:18:34 +0100
Message-Id: <20221223161835.112079-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_081845_454038_5C1D3A77 
X-CRM114-Status: UNSURE (   9.77  )
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

Add SoC-specific compatible to the USB HS PHY to match other devices and
bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx65.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
index b073e0c63df4..d3c661d7650d 100644
--- a/arch/arm/boot/dts/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
@@ -219,7 +219,8 @@ blsp1_uart3: serial@831000 {
 		};
 
 		usb_hsphy: phy@ff4000 {
-			compatible = "qcom,usb-snps-hs-7nm-phy";
+			compatible = "qcom,sdx65-usb-hs-phy",
+				     "qcom,usb-snps-hs-7nm-phy";
 			reg = <0xff4000 0x120>;
 			#phy-cells = <0>;
 			status = "disabled";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
