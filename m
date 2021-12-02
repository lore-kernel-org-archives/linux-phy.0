Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E6ABC35264
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCs/dcARJQJSrDfk2OBWvExeXYqFp53ytxjWwWiJt6Q=; b=jXwMkDQifC+SC6
	a+WAnbPvnTSuhTy1NvuhY/piOOFcSLz+kQSxokLNjiSFYA8AcNpkbLJg3L+wcutGlz7n4D3EVLM4r
	3hzkjbzYQ0KNH1gbccjHutq7QQ1ySpLkN7DBrExgYZiev4Ez2OUS2of3M7k4ZQdjxxst8vlMZUrcu
	RrTiigc3Qi83OAQNf5nZ0kr2HmmU/NAVt9HuNrPXN93utjnQIjMge8KNef3WxhFIgfoWHdPJcOUUd
	jm+86fCm5i+v9sBAKImcEXJF/spRqhH2nExCbiDQ4QHBYwserWd/4G08oKnMzF7rodVwyPQpESoPI
	LtsjrKz3ldHb0Dl9kmqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuW-00CWy9-4w; Thu, 02 Dec 2021 14:18:08 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu8-00CWkH-0h
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:46 +0000
Received: by mail-lf1-x12f.google.com with SMTP id r26so71856471lfn.8
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xL4c95uqByU7J08CZiX/XHP0HZvf8gLdVWZxGCtbXXU=;
 b=sNtnipCEgRSiLyzcUP8nFO9lRdlmoymw3vEn4BMyNF2Qlb3qCHcsbrNRTDtIotwsbk
 dgKrbHfLwx7xyqYusZx6jqNhnL4bSHgI39IUNpwZ7PO5C8I2gon15ouXdd26seWkKq+i
 qHSfftUIF7oqv2lldD/ceoB7lC4es7JZ+hr38SPSjHCbxpo6HbXswfzISrZf4MM4dLea
 GcjvXp4rsJB29zomsNlJk49ubLNW+IC+HXLOiQyNWp5UcCBf1O2AhwU2dkt073LEk0mN
 V4Jst+VJYdvQ3k6tLkRh9Y2EXFWTRWV4a6AzFGAbYeOLwT3zikEdBnS8G5ZY3/IiEyu2
 S/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xL4c95uqByU7J08CZiX/XHP0HZvf8gLdVWZxGCtbXXU=;
 b=nA1XtrVSBApUOM0GeoYOXvFjeTT09VvDjVoWpZWB+MHvNacb0FDheQsiH83o2jfHwP
 jjKviVCTPyw3PJhq8j9zKDLyrAKtPcKwifPSFHMEbdp+B/uzQ8T19dIYBV+LSLzjealT
 /9VIyo8QOtGCPK3y30XPWH4RZaMOEQpAS27CycO4vUdmoesb/Zbj5pvmuHN5Lns6lF2I
 1ay0i0o/ZKU9yxqnWceCTiuWJ8mToqhFAv6N1LXfHEpGPzhbLcPsilZedVnwmUow+nW7
 PtNP4B/k4VYtX0t/GeWyqtcuFObAEflKusHuYyUZzLCCDoe5IyeW4x6JaEOVCLuW/4Ty
 JKqA==
X-Gm-Message-State: AOAM5313IErCjLYzFuAsilRgw9dQdnvMm//vH3whYa2ZosX18U7Y3oUx
 irRaSiS9rp1OJG9+lhxMTnPMAQ==
X-Google-Smtp-Source: ABdhPJxwS1ZJE+rFkAabfyXdoekK/hRmTaui1SVyA6I2RXczyk8lcIdqlWOM+2va9OgJViM5c4GlPQ==
X-Received: by 2002:a05:6512:3213:: with SMTP id
 d19mr12392700lfe.519.1638454661909; 
 Thu, 02 Dec 2021 06:17:41 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:41 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 10/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 host
Date: Thu,  2 Dec 2021 17:17:26 +0300
Message-Id: <20211202141726.1796793-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061744_096897_6502C2C5 
X-CRM114-Status: UNSURE (   7.75  )
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

Enable PCIe0 host on SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 30ebafe9c6d2..017b0120c5d9 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,6 +346,10 @@ vreg_l3h_0p91: ldo3 {
 	};
 };
 
+&pcie0 {
+	status = "okay";
+};
+
 &pcie0_phy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
