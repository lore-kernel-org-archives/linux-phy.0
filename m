Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6245DC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7uZemmVpZ/1cL2KOwGwCDwHdGMKjtT4PVyIxLqlpIM=; b=Xk5pzr21UpG28R
	MAqEo1mz93SulS/97yeSEDNLonsd7S8+0n8ZTOEXvX29EKTPUxU3qmC1yVnYjB+Q/7aWAWPZ4pxxv
	/MUpq/0NXPjO1xsT3w7AuHIc5kTeIlVXy18EwDKL/8ev2jtCsyKJgZcWo1rjeEMFOZFheIzYnRM63
	9eMSnEaInORvmIP/Ae/g0jM+wbrCz1AzJOJ+yqfMDDjh3zq3JTmH7Kp63KiWUPiXJF8X30lTZTrKN
	mLY5lwwjo3b+xv9sPZ8VLLpm+Y6Yecf3PEVpsqyQsDF3A1xvUkL4UFU1xaVVFhladGb61t/H+AoBo
	61DPUNQ0L2lyLrxSexXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlN-00G0Wh-RF; Tue, 14 Dec 2021 22:59:13 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGlL-00G0Uv-It
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:59:12 +0000
Received: by mail-lj1-x22e.google.com with SMTP id l7so30614775lja.2
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jMeSXoL9O+nVWzUxuXzuxlRG686vo4uKJcR2hEXNT20=;
 b=xCy40oaHFPu4nv+TNnypJURLDeyiwZenKWG8F2ruWURxIufTVFkMVSiS4clVFJt1Dc
 gbLXCVafRCq0ZPUbZqfJOla/zuJMs4EGO1yqJwyX8Ryvg+fEhLLYsyeFrgVuUcWaGhgw
 kSK5oZ6mudoVKuD0Np8uvfohZxCXoBPdQFvEDEE2CUM3yyKbhgvmXoKJ6APC6xSgKP91
 pz6efRgNvQU5x2l3gzDAr/wraCvIQT/PSeerXRFUh2vjC+Ae7CMp+FsJMQZMVjON7emx
 jg1XN6jvCNKKFggwXJw0avLb4WAq++kbK8Ah7a/3eSLMEA0MDR0MWmFY7X2Lmx45DSqi
 3RIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jMeSXoL9O+nVWzUxuXzuxlRG686vo4uKJcR2hEXNT20=;
 b=7866tqcF9Dvbe1UdpDY7qZFXNmaYjX5dzwAqaQLkDXfA/k33XQJZ0D3t0XGMu0fmP/
 78nggCU90aIbJHibTUc08mCdvMHULj5ZEXCgaydOYdKOzYdkFoWUs9m/17XZ+YRjpUZ0
 3p+4nqCyBgJua1+Mi1cSN5XfDS4XgnVyzITfQIGLMLPyL/ayj3zFSBdVUlTn92xMl6m3
 NJsAlSSePRY+cafxCdYh/I75xZcYdmJHP8iEJmW5O6LNIX7UbHUUfO4OXYUMVoU1tA3S
 WzfAIiwuJHtnuld/Am3ym1mN6GZik6rKWnXSdyBdyYXXo2IBJa7gzYkBjPc4fA0aXi+d
 boLA==
X-Gm-Message-State: AOAM533jL/yVAlV88iU4OMYd6IlyMboFoYKAcEiBG1V3rnms3FUuesMU
 HrA/qZ6o99ZS3wUjr2Kzpr1QSA==
X-Google-Smtp-Source: ABdhPJxnq5xbEmSid44VxVLbBL1VtJTpV/poTZmb71b6bIzMtOc/J28LTbj8HK0yDbk5i925aX45Wg==
X-Received: by 2002:a05:651c:1204:: with SMTP id
 i4mr7614321lja.437.1639522749853; 
 Tue, 14 Dec 2021 14:59:09 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.59.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:59:09 -0800 (PST)
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
Subject: [PATCH v4 10/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 host
Date: Wed, 15 Dec 2021 01:58:46 +0300
Message-Id: <20211214225846.2043361-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145911_644044_6D5DF8EC 
X-CRM114-Status: UNSURE (   7.56  )
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
index e02d3c86e365..f6577ca7d2df 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,6 +346,10 @@ vreg_l6e_1p2: ldo6 {
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
