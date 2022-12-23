Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B1B3C4708E
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVr9Vzszn5Voca1J/Oa/tAYi8NWg9NCaISMiWP1+bNY=; b=MFwjsyG9EuAlCE
	Xr80nl+lolVAXTLOBRAF7Mh8eWmKn7WtAQ6Kg0pSc4fMUbYmKp7/c6PEPttwPcZuBMaO8m6Mumugm
	WMAyB2RHpennr0/Cb404viWq5EYr2UCzq7f/l0RIhTYB5Sm5jBnamxSYV9/9j/WnRVZMmSktdVfse
	RxtSlAoCeVWicHUlhSlsJ7cFcAtKMbe6zYZIhJbgiIdXlZkCg97uV4sFa2TiloTXsTQj+sW207CDp
	/pVv4tLNoevv0/18M6XU9lym/OwqQYES6Ri6s5ejXeoXuOsf1g/8611PBH/xOvw3qO9/H7XDFoX++
	Ao7BwJyqxbigWyZd5p8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kl0-009tzb-Eb; Fri, 23 Dec 2022 16:18:50 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kkx-009tuZ-6U
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:18:48 +0000
Received: by mail-lf1-x129.google.com with SMTP id bf43so7636062lfb.6
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BwrKrqGTLRy1JAzULXAgefih55u4tM0/VdC3aQtyB9E=;
        b=XV2F+VqvBRILuf+Sbv0pDg7V5bHcp8CV7VKHmAyzXwt5ahPnvZ2okP7+G4tqXs3fWK
         kY3rk4L34CqJrHFj7C2s2qyifzb2/NS2MLQOtPBxOIRIMYpAVValm6tky1H6832v+vbx
         0UbK7+W8Av0n4141SGyjg1PZn6NEWaoa76OdXWQUSNc3Koj+pPFO4+3terKHC/8lfM3j
         DVYmHuWkcf8DBMjtkHqnR/Mx1cRsF7dZxl5TZByRb9LZWYI8c4A+UHfbc9ppxdn5t6+a
         8nuUK6piZqjfiJdSpmprankLzM6iWgesw289OdQlb/P5OPHO0LUuVZmrhFAm1GOVDbB2
         S9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BwrKrqGTLRy1JAzULXAgefih55u4tM0/VdC3aQtyB9E=;
        b=L0Z20lqdpnJtUzN7r0whProgO6sHxUmUvISq4SzUylhW0nt9NXJ9TvfZnyivmfUqTK
         53mVHlpXIyh0Fy4eFLQv29exxYkHuAQWGLaPtJIU/qfr1sNYu3VPaMgKtNcuJESSNMc7
         yDWayItosoGhf6qBU2o2W318Td8GkzVyOLLo4gOzcK3WBKHOrkw0v84NdkWhPwHwsCWE
         RZ0EpjnQNRvN6oB6sQWUV0NEMuVGcEJuk7/1MtFn48nI0qA6Lt+PxcVcrnU6Oh1mHcwn
         n8W3FaooJt3IU8X2YgLWTGxGKKTbbLmOX95/GEJIOxz7M39+kjY8/v0m8o03djouHzcy
         +F7g==
X-Gm-Message-State: AFqh2krf2hy6CX9wk6pnRJdrRaYA48F8uVY/YzAjb+Wm9v5zG+Ni7dki
	w7yZvxvVCLst4IxiVyedp3wfOA==
X-Google-Smtp-Source: AMrXdXvwlFabJMcseKE0yS93G7KKhPCBbBrPLJ6TgV4pPa5MPdvkvNA3u5kYWLqvrowGCDJunk4Pyw==
X-Received: by 2002:a05:6512:2804:b0:4c0:91d0:e7ad with SMTP id cf4-20020a056512280400b004c091d0e7admr3763341lfb.26.1671812322211;
        Fri, 23 Dec 2022 08:18:42 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n18-20020a05651203f200b004b4f2a30e6csm581360lfq.0.2022.12.23.08.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 08:18:41 -0800 (PST)
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
Subject: [PATCH 2/4] ARM: dts: qcom: sdx55: add specific compatible for USB HS PHY
Date: Fri, 23 Dec 2022 17:18:33 +0100
Message-Id: <20221223161835.112079-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_081847_310557_F234B031 
X-CRM114-Status: UNSURE (   9.66  )
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
 arch/arm/boot/dts/qcom-sdx55.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index f1c0dab40992..5408ff715fbf 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -214,7 +214,8 @@ blsp1_uart3: serial@831000 {
 		};
 
 		usb_hsphy: phy@ff4000 {
-			compatible = "qcom,usb-snps-hs-7nm-phy";
+			compatible = "qcom,sdx55-usb-hs-phy",
+				     "qcom,usb-snps-hs-7nm-phy";
 			reg = <0x00ff4000 0x114>;
 			status = "disabled";
 			#phy-cells = <0>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
