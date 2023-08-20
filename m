Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9736DEE49A6
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nh63POqfJpZzAjKwQ1K66IcHP/ySrIYZmXo1/MuvK1w=; b=2Thfb2MqiZ7Lt2
	GANo4DIOzczP2xlaYxO4mVbeMJZ+WPeA5cf39gOpbOEChiY12OWsG1IKrtto5wYacihVd5Rp4ANqN
	1FoMijCNs0clcRgyIR7TH2hlHeHzNXW+B+sp5aWh68xabA+fkZXbsGMTBrHShm6/b+Ab2Iath4SQk
	yurvS5WjZ4+LNKteN70kicOt5v4DTWd9GXgWfBe3dWO8Uywub5c/2EmKQ/UdbzVwqeB11W8HX1V4+
	Lj63HwpWh2uaUW6zx5GXw9+nQW4ocqrWt4eBV3DM3itTAMrTAR8oxNLJD6moDrpCOcbsOfUS4nX0u
	ZCpfQIicXRbSMTitK58g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIW-00C1Dq-0e;
	Sun, 20 Aug 2023 14:20:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIU-00C1DC-1y
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FnQpUHm72bf2pwjircvnsQiAqVSRuA64WEwWaYysxJc=; b=XZt3X3AzGjSPF4OjfBE+SbVXwD
	d0dwOBalPhbcuN63jzeJYpv9c3qXzfrUTGYEBlC1i6LkmROL83ai7LMQZ5qFyRBCN+sMi6kwY7N8N
	kD59ZFWq9Gj8R04c6A8X85MgM330M7X6nqYMsEM7bevaDQFsWVhb+QR4sUiSyzdIcHbKmKQIJgs+i
	KRX6shlCkEw3kYnrwRl9rdpNJNfXAAiT8f6cytQktKDH0ddcBzP+mnTOmwr6Z3x4sMztV0+QWI2Io
	327YOlDmOHJ2zsykNsQCbMcf2iHf+Kzf3Ffc3KV8iTDIXy4MEeBl4rznXlPnX8MRLDp6kPZeZxDfk
	hLhJhhoQ==;
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIQ-000Xsz-0Y
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:53 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2bba74ddf1bso37140081fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541249; x=1693146049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FnQpUHm72bf2pwjircvnsQiAqVSRuA64WEwWaYysxJc=;
        b=N4nuebBpHn0NL8sQcUbIhl0tavA6uUZe1PINn0F9Q1OZWrq14hu5BEaS/XemB6UweD
         N0HradT5R5/uFGZnaIVAWJR0KryxmrQ9hPAbZ7R+Dks4oXG2qi84G4TA0gIlKFatB1TQ
         n2+4Az99yGu5xjRGNc0yakImAHupXYaOD50Up3DOUUQwZ/sSoZdWRT8yojRs5Oh5liJZ
         WEpW4koGvPQqyNHEO9AdaZxeTRxoFvmmHQHkfHhnvVt4PpSQEwOMlrqRjptOhn0RFx7I
         u+R8pJ2bVJVRs0t5ujGKSY7aZOXl9zfwm/I/yfXStdWz8IZcr5KCur8DJJGUt2q7UNMk
         vb5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541249; x=1693146049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FnQpUHm72bf2pwjircvnsQiAqVSRuA64WEwWaYysxJc=;
        b=dagNSEkzrqblodAexHXfYSoFoE8w9olDGVYs+P4vsEe99F5b0o1i6GS5mHHAKPmJuc
         ILr8wlQJFwEeZmX4lVBt/Efh2Ok54fXmuCYJvbbfhKs/oTTlfbTfi41KnBhXi594dkIU
         StD1gn8uUBMBLCpberKnU8HuGL/nGZAqRXn2r6gMHl23lBSP8Fllo7VFAilyLCPKIHXH
         2bZWJ5G/wnNZk6fK0YQyp1f9K7DdPpJWq8i3T2LKvWqeEqwbL7Tb6f5O8q8Sn0lxb2bV
         3dl+hynSiZvlfhR0ciLFWyAztGp4XjhKs9zal0iv6UYc4AuZtQjRM/SPyZBoG/SjjL9E
         075Q==
X-Gm-Message-State: AOJu0YwEam9jcuo7QySkEfXWg5Unhxh/Zgu3SVrI9sdLXIn9ipsnyvQ9
	xk0j+a/hvVH7C10KNVXMMQkfPA==
X-Google-Smtp-Source: AGHT+IHUNYavnKAN+XbvoV5FAUXvGU9sEI3mr6dUTaSx/ZkzJTYXdbSf9ejzt6pDSat3cUYPPeq2+Q==
X-Received: by 2002:a2e:984e:0:b0:2b9:53bd:47a7 with SMTP id e14-20020a2e984e000000b002b953bd47a7mr2971272ljj.30.1692541248930;
        Sun, 20 Aug 2023 07:20:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 14/18] arm64: dts: qcom: sm8150: add ref clock to PCIe PHYs
Date: Sun, 20 Aug 2023 17:20:31 +0300
Message-Id: <20230820142035.89903-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152050_255636_897B7A9A 
X-CRM114-Status: UNSURE (   9.37  )
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

Follow the rest of the platforms and add "ref" clocks to both PCIe PHYs
found on the Qualcomm SM8150 platform.

Fixes: a1c86c680533 ("arm64: dts: qcom: sm8150: Add PCIe nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 1428a70b09c9..f58808aad587 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1894,8 +1894,12 @@ pcie0_phy: phy@1c06000 {
 			ranges;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
 				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "refgen";
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen";
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -1992,8 +1996,12 @@ pcie1_phy: phy@1c0e000 {
 			ranges;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_CLKREF_CLK>,
 				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "refgen";
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen";
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
