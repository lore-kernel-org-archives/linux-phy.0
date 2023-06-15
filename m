Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E68B8EB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbkvVBZOM4B/QBi7fIqanEuenXzJe8ds1TKAIodd9l0=; b=1YBYiOEZN5xuzV
	0cO4FouBmOj11fs7K7m67uV2VRFcmsdzfgkekYvqEFS3qpNjX5d21uLwxRJ5pkIVew3JBrdsa1vWR
	vjeRVWt3NlE75ZKoGg09pPvnsG6fK1eH+Ity9DvAUgbIdxJ2z+l8wdKQ2VFNTyxROiPNdqVGi5XH/
	hk7zPxS2GxmN2YdqCtrHqVUOQLgSZzcgxITB5quMVyLSkz6yAWZdth5NnZW+n9L9JWZxIHkyWOo/r
	D1AzKmd47xEbFNmfIBFt2J9VWBMjgcofIVokQy+APeeOlr95iD5FYn2U0jifwa03y+mr5rAwu0ySx
	qJ/E+JBqxZLFN3Ze3K2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ltH-00Epyi-1A;
	Thu, 15 Jun 2023 12:15:51 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsX-00EpJe-0Q
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:07 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f619c2ba18so9896807e87.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831303; x=1689423303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehfVzvQExF8A0HC8WC/ILIhv/WTmHbal1y8W4TeN1es=;
        b=Wu7sz9no4+E8WobBYLCTxrRQ/ms5cwOJWlPzNtXwqHQMxzmBf5xhIkwHh6m0zZ747E
         Xd8rdNa2gg+7ZwyKASQElj9GxfdetYldiyx+OqRdXH02wPTOy8aPbQW4+Uk80h2jUH4O
         1+qye4b806eH5haBuO/GcTONTvg/RUyUfVowUuLIqaRUA4+z4YouDS4U4UAn8WrBlqxT
         UhKIyOyvnt2b3hS2nx8L1ASe+qeIQGGv25SN/2Qstdr5ZNnoiRgaPs87RWveDl591nAT
         PjCryBJlEXlDJmLud0L8AWDCywY0Mo3IsceqcK4BzuFY9zkl+TXGnaQFVggc4Gw+QotL
         +vbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831303; x=1689423303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehfVzvQExF8A0HC8WC/ILIhv/WTmHbal1y8W4TeN1es=;
        b=bbk6dvtDNj7UNE6+KhNRzaakBP3TqD+CTmJLluSvniaUEkdAh5567VYxmy2bKpqXwe
         zJejeRG2oLqA5bXd1JtKbyzX/4sGHaU+9shynSvo9DcQpkuZM83y+g5hNfCCB554nvMk
         322I1G+KHUIJeYXuBvsqoZohJRnWQ/L8ftZJmMAcfXpWORp0tupoEWgax1nH7Zvlmtzb
         p5YbFksPgorqFzw0bqkxbLRkxLHaQIt3AIuP24KX4Fxda/Wgf8uO4lZgmi5XEpmTedob
         EUKzlHeIQGIiJR/FdVcO4OFcNxsKUkg20CarNbSQZaZamAfPpZCRDYDdvhErdaJ3ZKyn
         XyaQ==
X-Gm-Message-State: AC+VfDwRRvmWdSZYZyhCe9hu0fHlAqqjQZICHkpCbXAB9joZvE5pSzdx
	0oXuANI0DBPPNXK0wheSuB0yfQ==
X-Google-Smtp-Source: ACHHUZ501jOXOdbI2vCoh9Z+8k50wxBJblPlQxddMcmLJtJFW3AHRsWBrNj0ZJXAqwZBC0Y5jwcrWQ==
X-Received: by 2002:a05:6512:44b:b0:4f2:6817:2379 with SMTP id y11-20020a056512044b00b004f268172379mr9064077lfk.23.1686831303698;
        Thu, 15 Jun 2023 05:15:03 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:15:03 -0700 (PDT)
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
Subject: [PATCH v2 23/23] arm64: dts: qcom: sa8775p-ride: enable ethernet0
Date: Thu, 15 Jun 2023 14:14:19 +0200
Message-Id: <20230615121419.175862-24-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051505_201996_7B6E2FFD 
X-CRM114-Status: UNSURE (   8.29  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 88 +++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index bf90f825ff67..b2aa16037707 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -261,6 +261,94 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&ethernet0 {
+	phy-mode = "sgmii";
+	phy-handle = <&sgmii_phy>;
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
