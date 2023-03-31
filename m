Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77F38C761A6
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBdKow060TKloI7jCdun4K2wxUHUdkyu5XdlmFNLs2E=; b=qfjLtoZHc+UtNd
	iLlrBgHvWBdpxosVwjAlFvCspP89cqr7Hbr+DkS9y4bXhaNnTC3PhCM6j2uCRc1fqUZ8B1MSxmo4b
	wxTUa+EPInq9cUZYnkT2zzTUYLDfXSXvBK0S9cHwL4MyemGZrDCC25JNMwNk4nWRd5aaepyyvqsYh
	Adm5dmUzkxQ06f9usN5AMwo86PSohYQ/7v8b4oQv58/MbjoIitvUa3ofuILzK11N+M1LGdh/L/Tuz
	K8nsskiSMq4jwa8VoKy4dk9CopIhpgwzdOnhYtbGQ3HSR8sG+AVIXuiNx5ufxakpLSihj+y+T221j
	Q+vDKQ+8uEfJDYAeA57Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuS-008h7o-2n;
	Fri, 31 Mar 2023 19:59:41 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuP-008h4Z-0u
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:59:38 +0000
Received: by mail-wr1-x432.google.com with SMTP id h17so23565606wrt.8
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680292776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T51w85qNGZ/wH1d68t5C4IE+YzS6I1k1IrcXjbzYMqE=;
        b=z59upxBH9VlBuY/hlmuYlAIN3ukfPRl0X+jMR2BPQpQBHGAsW5XK2K7cZBSo/eJUvx
         2vGjfZIYqN2LSuH/EbBbldGuJwdS4xX62ZKcEY8MNEJ57AP79h3LohWWRJuANyzxFmFf
         Dkgz3ew+pKfAQSda32nF1Qw0hgM6L6Iwoo1fEODS0e+BRMEw5eRr8/XWFbQXD2OsO5B5
         p05iCaavhDNJrqbMv/vPl0FXniYxI/pXMEqyhX0B6VqQseipt8Hgy9pBqiYzjb0sHGvv
         1mYIz7m1/2nUBiyEgQw5I+Q/WDw0D1AnxXMxrJ5QEYpxfpyKywcmMqGGP8MLZkXNtS8O
         tkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T51w85qNGZ/wH1d68t5C4IE+YzS6I1k1IrcXjbzYMqE=;
        b=X06yAwIUdLJFTRbRJJfwdAUz5NRQwdw+GyQW8nCOoZ2gofJE04Ny96NTNtt6p4/3Ar
         1yCkYuoMCXqXx9bSuq0+mf5N+uP2hsVglN3PRjeULokPTWSEsS7yXG7qzye57ctE6dgU
         YDqR+tCvFgecc5VphYwWMqHyiOHWXaBjjsj1eXW9oeJu+EsGyVBlCS2yuH6/YcAPQLEr
         LzeEIPCmSJ3CwZ+ptGXvXrYKQzoF4pc6+Qx1Jl6v7En2eXvMAH3VIfrOkL44gYoeIWGA
         3k/5m+/ODK0IFln6AIZtxyiWFr4zmh5Viv23OAJhA9ppBnLTerAKWw0FatVN/0g4kDfC
         Xg4Q==
X-Gm-Message-State: AAQBX9fMfpt4Z7ruWafJH5OF21uAf15i+sOKvDVWhMFHh5y03d0Ylmem
	sXU9C/uIM2mta/6DyYrvf0AQtA==
X-Google-Smtp-Source: AKy350Zhy7Qpe3qgnCTosWHd18eYouna/DwThhMA1L/29rY6f8iHBVUSHTCA4Krfzcgilg01o61tBQ==
X-Received: by 2002:a5d:4a51:0:b0:2d3:33d4:1cfb with SMTP id v17-20020a5d4a51000000b002d333d41cfbmr21995080wrs.36.1680292776104;
        Fri, 31 Mar 2023 12:59:36 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1dc:d1f:e44f:2a1d])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4ccd000000b002cff0e213ddsm2990286wrt.14.2023.03.31.12.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:59:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
Date: Fri, 31 Mar 2023 21:59:20 +0200
Message-Id: <20230331195920.582620-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230331195920.582620-1-brgl@bgdev.pl>
References: <20230331195920.582620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_125937_347239_724B2B0D 
X-CRM114-Status: UNSURE (   8.37  )
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

Enable the UFS and its PHY on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index fdd229d232d1..e921093a9f08 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sa8775p.dtsi"
@@ -20,6 +21,7 @@ aliases {
 		serial2 = &uart17;
 		i2c18 = &i2c18;
 		spi16 = &spi16;
+		ufshc1 = &ufs_mem_hc;
 	};
 
 	chosen {
@@ -426,6 +428,23 @@ &uart17 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l8a>;
+	vcc-max-microamp = <1100000>;
+	vccq-supply = <&vreg_l4c>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
