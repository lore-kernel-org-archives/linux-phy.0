Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF1CC7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVgi1OQj3sQshsa3oreHYD3/onMqMZFiyaTVTSxxVYE=; b=HrGy+cp5PvU3Dt
	7zE84/ZFanZRpdIbUninc7QjsPp3pXMTCN3n7acipniOU+kv45AcT8TL1ep4ZlawWFVD51BHAzN4Z
	AjE/xkJ9/A+QuW8xCAxJLVdr540+N3ZzAbpZBKMwfPhz1kIlONJ+A4ac7FxoG7Og5faqNnHxhHsjO
	ubI9nLXbkprbWb7yZ74p5VijHQgcUBd6po0+5J4Hr0GoD9O+GP81nzlpqR5hUPC3/HMNTBe2q9Jgr
	nIUmLdE3UxNlTrESgiIRjbnRVSAc/j0FD0jF9hps2Ir0QiYv+0sFJb2LkmPyfDFvCO0j8egdtAsRq
	Bqa+ngRdLxO3ZuvAaVzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dno-003HZJ-0z;
	Mon, 12 Jun 2023 09:25:32 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnL-003H3i-2R
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:25:05 +0000
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3f61530506aso42501145e9.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561903; x=1689153903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5Kztbbt+Lx+Q6hVK4LvKEHOry/qYQ8OvL9Z8ei/Rso=;
        b=P/Jhfjzh0ruh8aQrw/lvBEWcmDeyZDzd+KU0wuDZSn9r92Pbi5G0y48qPXJTHn5RC4
         kIzNj52wkDwMA68v/kq9zzP3zPaQKZim/cG9i+vNjAzcAMo1M4AcuVkSgWsHGt2DU2LU
         PFrSXKzl06uMIUf7pVrJo4DjNQp8LvcL0gIpifSO0LwHiJsrWKXsQGTWDhllY4QeBTNF
         CNaL9VHRXacLDGSae9qdh7Z++fN1rP4KZe9SPL0P3QQeakYkXnojA+fEt/yIZB3h/PPT
         QNUg7068ipJqt+O5/0maFA8OJzwE+Ya05qCeGA7lNrXRD1vNSDOG0Hl6TSakoutgdRgf
         VzLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561903; x=1689153903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R5Kztbbt+Lx+Q6hVK4LvKEHOry/qYQ8OvL9Z8ei/Rso=;
        b=b28Z8CkRrwG2zlHgibdDab++IeRJDFhuHtKgmtasfBw78Q8GSEMoqJ+mZLexYOuSgq
         HvzNX6+IePufibPHXtuYCVZYsfugvk83m9Lj5oC5gFWzP6QpL3oRotPi/MM7si0PH35H
         7uDMbo0JgBLgpUW+5sCAPlIVA47O/Z5O79YnrqWLu6V7BHNrA4+z2h5lajTuo09H4U7O
         FML6XqdeAYtXauguJ9/a+U7nPxQjJxcyMLDAOoajqeVT1AMrPI4WwJgq4JiKZz/+z0v9
         esU86k0CDIomjqCayHM5/HhRAJZ6Ys84CDH8YW9btR+OjfCmx5UFHKKed6OCuTBblU0y
         j/mQ==
X-Gm-Message-State: AC+VfDwmeezRRkvhbmR46ZfUG+tjx2xJwxIf5N0FP4JziAojlDHlJRJD
	FE9UA9BB8pB8dF4KvbxUVmbOGA==
X-Google-Smtp-Source: ACHHUZ6kJTKSQMRxQnmZHKgDHv+8GM+Ey+dfH5KXUQrQ58aTzmadnxCcaM+NOxPdk4JKh+HKGp5Seg==
X-Received: by 2002:a5d:6403:0:b0:307:7e64:4b52 with SMTP id z3-20020a5d6403000000b003077e644b52mr4735283wru.36.1686561903258;
        Mon, 12 Jun 2023 02:25:03 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:25:02 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 26/26] arm64: dts: qcom: sa8775p-ride: enable ethernet0
Date: Mon, 12 Jun 2023 11:23:55 +0200
Message-Id: <20230612092355.87937-27-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022503_805857_98B5BE4F 
X-CRM114-Status: UNSURE (   8.40  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the first 1Gb ethernet port on sa8775p-ride development board.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 89 +++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index dbd9553aa5c7..13508271bca8 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -261,6 +261,95 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&ethernet0 {
+	phy-mode = "sgmii";
+	phy-handle = <&sgmii_phy>;
+	phy-supply = <&vreg_l5a>;
+
+	pinctrl-0 = <&ethernet0_default>;
+	pinctrl-names = "default";
+
+	snps,mtl-rx-config = <&mtl_rx_setup>;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,ps-speed = <1000>;
+
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
+		reset-delay-us = <11000>;
+		reset-post-delay-us = <70000>;
+
+		sgmii_phy: phy@8 {
+			reg = <0x8>;
+			device_type = "ethernet-phy";
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <4>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x0>;
+			snps,route-up;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x1>;
+			snps,route-ptp;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x2>;
+			snps,route-avcp;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x3>;
+			snps,priority = <0xc>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <4>;
+		snps,tx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+	};
+};
+
 &i2c11 {
 	clock-frequency = <400000>;
 	pinctrl-0 = <&qup_i2c11_default>;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
