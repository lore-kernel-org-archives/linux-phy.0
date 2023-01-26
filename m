Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7917C05027
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFHRNg15pts50r8vNDwvjK7QwTUv23Afi+iOAg7mqSo=; b=tjP6dgZGlbUmNy
	pXJ5YLXfvaiLmxpzhl1TTccAPzVU8yLjjA7KNzzUyDMIXsroKr8B0xGq3S7ohe+LCkoYKEV7+qEsI
	63U+vKLOOBE2J5Rex6scTna2y84cqK8tr0BGxepJonubB1NhX+h7oWNYROo6rmu6uKKRk4L4DkBlo
	kPAKL95zu3ClxQX+5JH0TmwHdpfjSUqUY04rRqpXIej8k8XU/NyW578nsrx3gsxzv5YntTiFwgIAy
	KLtGO9DgYIFX4cobSyDHcXp0FkFuKtruimwFlKl5/NW3qBzSNDIWMnm7+zRLeXD5dsGpZFykSQCk6
	Vc6G4/gCX626kdTZCcVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25L-00AulK-5W; Thu, 26 Jan 2023 13:14:35 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25G-00Aufx-6c
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:14:32 +0000
Received: by mail-wm1-x333.google.com with SMTP id fl24so1100771wmb.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLiIzuhLPj2W8HRLu1RLddTMjBu2HLYaLu88JyklILs=;
        b=f4SkERW1RtNf5h/pePShnuCAaC/+L+ggulKbVjRVcKvjaKAz8ktOCH4I1JsRHP4ccG
         0G/esHNAzMByXZz0ihwO2e0THIFZsG5Dr2p5ohi20RtAW0c+BGc7MirXpOwWShacxFtR
         /3gJQ937eIPpFdNAU9UVHwWnIq1KwnOGh1Mb8Tnr67CxruNqXabVsSr/HX4qWACTgVj4
         urj3wCGmlv76QtW/yWu7lsTnhSeg36W2cU8tb3nQHAgKgQ/Y4Zk4x1NBL+8cG5iIttJV
         Gt126Wa82Xv1u5tg9sL3wrsl7yFFWJM0Pb0yUTbJs5B4arXCD5zKOovkf2qgDIo1O24L
         3nQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KLiIzuhLPj2W8HRLu1RLddTMjBu2HLYaLu88JyklILs=;
        b=fJ/a0KA3Cl5DAjUX+CE0yINLl+9YqTNmeFA6q5vcwQfvI+TwYAQ69U7Krz0YlF54B4
         Ui8Y5knnj0dCzpcY/eUASJbcDqYC2mH3qa9TwbMyb8dqx6eNbZYTblnbMAS5gz+udSZF
         1xdMXVbNz4LP8XUR7dL7K+NfY8AZEy56fAEe8ifdCsc/sxsWBy0Hemj8gACiKfMMJCnI
         FpjBbLXmA/qbm1nCHxJbwZqNtHXbQgJLThhXNcgJ4GCnNfJosnKFwSRoLZejvGzNxfPZ
         20agC6N0u8U4wQ37XsXxAbdLF9YOPLg6evWjFMIvUwov9PL7LXjzYZp81ni3UwOEluUZ
         h3XA==
X-Gm-Message-State: AO0yUKXU4RQpY94cO4hZR5Lyg1aOoDmje2usZkIumCJKybD8i7YGmk3I
	8xkcByeWMJZ8mQXcsn8WyeUd0w==
X-Google-Smtp-Source: AK7set97mUdUoUStPMzspZ1HBJa/ogA3H8+v0Skr3C4OKz7dz2a1AIG2oDCQ2nZPfoElAUoUg76n1w==
X-Received: by 2002:a05:600c:3ca3:b0:3dc:1687:9ba2 with SMTP id bg35-20020a05600c3ca300b003dc16879ba2mr9293190wmb.35.1674738869713;
        Thu, 26 Jan 2023 05:14:29 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 8/8] arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes
Date: Thu, 26 Jan 2023 15:14:15 +0200
Message-Id: <20230126131415.1453741-9-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126131415.1453741-1-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_051430_293605_E5B0F11C 
X-CRM114-Status: UNSURE (   9.96  )
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

Enable USB HC and PHYs nodes on SM8550 MTP board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

Changes since v2:
 * none

NOTE: This patch has been already merged. It is here only to provide
context for the rest of the patchset. There is a change with respect to the
clocks, but that will be sent as a separate/individual fix patch.

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 31e039f10a1b..cea1f12ce294 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -455,6 +455,28 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l1e_0p88>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3f_0p91>;
+
+	status = "okay";
+};
+
 &xo_board {
 	clock-frequency = <76800000>;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
