Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9624C43334
	for <linux-phy@archiver.kernel.org>; Mon,  4 Jul 2022 16:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VzjLS9inD/cv3gzsWEH59YkogryAwAdIMxv7swK8ww=; b=SryPXy1LMZviY5
	UiAnRDrb0JyhUpTZIJ3v9WNwzPJnsXOl69x2Z74WwI+JvrEZMjy97PmYr/kwcfX4sOoGBu6Smz0xQ
	KHzyxwFOmioDC17b6OL9BsgUF+KG0/9AmPaQrwfOZ77eQYrX8/36GmA1SsxZmnHeyxFyssVEayb3t
	vFokpJhEpUyPkJcD+5kQ+ulbtgw9eCL4q0oJRt9GOCCw9v99qB7mpJfzwW1AtslltRcKHyIq3Ombw
	Z/z1/TJSetVfZeORoNi8y+Zx3F82PNqgokyAcX9j7Eq87A6Yz6GqGjp/U0zcuccwu+USsgVh9EI+V
	QaCirEvKucvf/t105a3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og7-009uQ5-01; Mon, 04 Jul 2022 16:12:03 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og3-009uMD-DT
	for linux-phy@lists.infradead.org; Mon, 04 Jul 2022 16:12:01 +0000
Received: by mail-lj1-x233.google.com with SMTP id n15so11595302ljg.8
        for <linux-phy@lists.infradead.org>; Mon, 04 Jul 2022 09:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YIUu3Mrd87z3G3m4XzJVsFhhK3Sg+085T4JDYUEl/jk=;
        b=ZSTExc85IrAGJ/rW+vr8WpE2t9QKV6hD6GSEM0kBXEmwHxB78S3NezadIBajKSTIUN
         yU4noebePlvhDLMOeymiPHlc5SSefcYxMfHum3pVnK4UhtElhJsUiQ/FDlT0hW1pQYtK
         WTfSCOft25zdS2u+cy/K9Kah3DaIGYlJmdz4urHGeZeG0pC1DKCrdRXDPCzUd9skV9RO
         O9RPaDiABZtnZ7l7r2uyMqPZQ6bvmWdykudEaU7BUVEO6BWcYBRzu1fIzSrJJ1OY2RDj
         j81p4T7Qgzs4m/E7vtC57W1PgZAKKG+TRlUQhf+f2x/RT+cSfP4Oz35nAEeteI2VT+64
         tnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YIUu3Mrd87z3G3m4XzJVsFhhK3Sg+085T4JDYUEl/jk=;
        b=ScW64TccR0lEGMaixoWw37E7r42XlCb+aFk0HnkfV7niTDktL1vC2ITuYOhUxbRYzE
         13AZjJ2fZjiZKh8Ya/1kvBkSnSLoA2qpkndvJn2kULkm7piMG2nIf/AuZp4KrISsycts
         4DmzTtBFwC4uxGh1BnxcLFHwumDPKj8eb/m3QGFXI37RSWtoXmR46i+fDpbJEbnFmITY
         jKbEXJvbYjYGBaXBCYiMwXiYS0Xvq1gquyGrIs+IYrsXTz/rF3lkJ2oDPSYy6yOHzlus
         6Ei3eHs3w3G9slkg7yYW9f6NT88scoIWg7mvlsnadPLNcqsgzidVNv/FIbDvWsoS4ICJ
         v7yA==
X-Gm-Message-State: AJIora8h7uWIdXWUBY3+kL5Jnb9hJ+DDm3VxSgTbTKAOplvpfcadQkz9
	/5uVS12FNWObv4sCiU01IoCguA==
X-Google-Smtp-Source: AGRyM1tvtojLhxu1Ji7ca6nmQ7FH7hsqjwPTL0DGC0s3+tnnbpoth/ZJkxivFg5Gi56gOzZKOVlvcw==
X-Received: by 2002:a05:651c:1989:b0:25b:e6ac:4055 with SMTP id bx9-20020a05651c198900b0025be6ac4055mr17272197ljb.3.1656951112885;
        Mon, 04 Jul 2022 09:11:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj16-20020a2eaa90000000b0025d254180d7sm381273ljb.113.2022.07.04.09.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 09:11:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/3] arm64: dts: qcom: msm8996: add #clock-cells and XO clock to the HDMI PHY node
Date: Mon,  4 Jul 2022 19:11:48 +0300
Message-Id: <20220704161148.814510-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_091159_498525_1300DBA9 
X-CRM114-Status: GOOD (  10.88  )
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

Add #clock-cells property to the HDMI PHY device node to let other nodes
resolve the hdmipll clock. While we are at it, also add the XO clock to
the device node.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 25d6b26fab60..b72385ffecc6 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1049,9 +1049,13 @@ hdmi_phy: hdmi-phy@9a0600 {
 					    "hdmi_phy";
 
 				clocks = <&mmcc MDSS_AHB_CLK>,
-					 <&gcc GCC_HDMI_CLKREF_CLK>;
+					 <&gcc GCC_HDMI_CLKREF_CLK>,
+					 <&xo_board>;
 				clock-names = "iface",
-					      "ref";
+					      "ref",
+					      "xo";
+
+				#clock-cells = <0>;
 
 				status = "disabled";
 			};
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
