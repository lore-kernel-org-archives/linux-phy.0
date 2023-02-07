Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D6EC636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZS92pNrqm8wgoAfwv/6twval9AJ42tD+MbE9TzeNsg=; b=zxxMccYrHnspWa
	ZMqfK+Xit1XhzOrCGovzRyF2rdQuwJo//dGGWyCrfA7rcy8uRTPEhoEm1ufwMP4gNCVRyfaR16DQl
	82g9d/LQ78nlfmsho3xZETtu67ijq1jisqeToaKMi8VlaBAwwK55xkvMUSPJSrVj2KOExYH7KwT24
	FwFgJYnskjGbxhjNMnRbCYkr3GPP5pWfuNAC9A/kmJXPkQYMNaE9YPZfhEc4MBI3h8mu8xTFQtRv7
	Iy5Mq7gZA5pMlD+gsXODSYR+zY8OdbyjloFY0HQJ9o6dJ9L5wEaYtpsm7KOn3vUvzpryQv1eArsqJ
	VX5R7HPvsevyr61Z0OXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS7-00CMrD-C9; Tue, 07 Feb 2023 13:56:07 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS4-00CMpk-ET
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:56:05 +0000
Received: by mail-wm1-x332.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so13246492wma.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kE+AxQUwOxA1DoNBo9L3Bq1W/VtJeoaV/fW1FjliOjc=;
        b=AXNPNIpXWGRFXmVvnNyBaX3EUaHtz5imfr2Kc2AD4XzXrTayE70iIYQFWo7gi7/vaB
         ZuplajGB2GW4JSSMA8hYQJbJBf7pUSzb5+ilXMwY1WYl+jqm4LFvl6CZiiAdFXVnXXZ2
         A+GCL3cp9W2GviQruhIqWMioQ2m1ATFWr3lVbhHBxoFDY4FJyAcmiDapk/5xyzOGsvOK
         xIX16EfERwN9r/GBHDjTum7EHzk5vbYPi/SaOPlTRSFlxmHkLhYU6dJMYN2z9UTicq30
         Vr1zsArjd0KRjatg1r9i9WKhNoAYpPlnmLoMOHr4wZT+UfigRJsrDGC6II8wGPWDIAHf
         QihA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kE+AxQUwOxA1DoNBo9L3Bq1W/VtJeoaV/fW1FjliOjc=;
        b=ZghCYR9KmgQBpM2Os0H94TH+15tPH6Q1tj2KIwTZQlJHzs3qo87mwPzPZ/MEEAlflO
         juC5bWz1OsY59tqhIpuFVHFM3dscDj0B4CiYdiNm/VwK4ordfSnHxUlHriSoHqA/KKJ3
         spyFFmdQEy6/FULS59ZR4ImVOS/lQAFTDBG5rmzsmaHtjS2QUxull6SJ3bUG9boeyA0+
         nh52y2RlcUpXdeHcuM0OqBzphgJJTRkl2CvlPCcQZVWbL7UsRvYcTRq49Ii2gbuM+3pS
         7X4aqbWyV2nl+YxgmyDX3ruOA6K/+VmAlvIODI+4acxuKVTLppEJMYZFZ2Js0lg6l72a
         NTkg==
X-Gm-Message-State: AO0yUKWnloJZqqVqAmDF6dmmkZUFuH8mjSv1lNmgoe5vZWXkb+pX+286
	xQbTiMte3mQ8IF6c5t2D9Y88Iw==
X-Google-Smtp-Source: AK7set/0VFvjfWv6VFXsQD+RR8iooJZ7MrlzClaN0ljfreU4ICsHnB9bcDH781X3XLtXeWSkncAZnA==
X-Received: by 2002:a05:600c:4b1b:b0:3d9:f836:3728 with SMTP id i27-20020a05600c4b1b00b003d9f8363728mr3209658wmp.11.1675778163004;
        Tue, 07 Feb 2023 05:56:03 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d59aa000000b002be5401ef5fsm11611312wrr.39.2023.02.07.05.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:56:02 -0800 (PST)
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
Subject: [PATCH v4 6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
Date: Tue,  7 Feb 2023 15:55:50 +0200
Message-Id: <20230207135551.1418637-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135551.1418637-1-abel.vesa@linaro.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_055604_504172_794945A4 
X-CRM114-Status: UNSURE (   9.07  )
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

The v3 (rfc) is here:
https://lore.kernel.org/all/20230202133816.4026990-7-abel.vesa@linaro.org/

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
