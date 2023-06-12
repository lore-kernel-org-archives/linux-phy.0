Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A1EC7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHufiRwL2bGwadjSZdPMwGaAzfo6RiOJGTvodR/v8Es=; b=19TqGLWALzP4AC
	blvRWk7Qpp0lQjfgjaCy66r9miK04oj67Rzahq50Nm8mbyFUcB96RZzUxz7D5CbB+JZLNGa+f8VNJ
	0rpdxlVAzlI5Wk+MwT09bLUVJj7WC98QBNG4410IB5R/NBtjTylVV8yJfk12a3qMZJ7b4rlu9L3QW
	xb2F7OAY5D7RRUgxLs5CO96ydOyxnXB81ynJQBSeMWA70UPqUZmESWIaF4n9q8XYVPkSrun+p9dai
	GpAIaHmRfqeWtQj9OxUg8TIIdEE1kuXTMJ3/LyUQsbUvp5up3JZFmxBJ4z+qtoh+dzm9Nc7f20JkH
	lzII+Z1hrCjAMZgpMOLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmu-003GuJ-0y;
	Mon, 12 Jun 2023 09:24:36 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmo-003GqB-1m
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:31 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f6e68cc738so29745685e9.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561867; x=1689153867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F1RtgufzwN5zkIc6lOIXx9j+jgAzsHOFWAyMRveQqLo=;
        b=jxFUBvkZ4Lg20XupS3NzkHFqhu8SEtVVfcnXOO+b6K6/t0uzorkTHwYRDrMhd2dJIU
         tdhzK6iKF6+sYaQwrNwnE3nbalQyEeuelBYndZA4Zlh1ic3fnVO7sRut7VoIEBGZqyTT
         j7X7mK1z0w+BQ2GjWcZZVMaxzDmSNJFStDd6l63u1LsPuVC+IR1W1QtTzlOsR9JLI+Vp
         /C2z7U/al+XLw+5ktMrKm6sW96aoMXXs83R5MH7rwPztSggbFtGmzEURIWOz4sSzPa4R
         7fu5lNM2p2uS5s2x+WETMW9u7Bl5Y9cMoLBsyEonGg0j/q1FpAfYpaSsN/KMSudrABVj
         RkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561867; x=1689153867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F1RtgufzwN5zkIc6lOIXx9j+jgAzsHOFWAyMRveQqLo=;
        b=bqfnX2354STixjXqBFfxJJcOWccITMdskLUEq14jZ5lZWTxPCIfiruNeUXSmsunFv1
         YlDkmONbek80CvXMLF3ovt5LiaLo7QgU55Ab0DFYvFK5+eOTzzHAfIj1ebjwJ9fwkkMu
         EN2Ncfoud9eBwdqsEUnnT8awl3ejeSuziBpeMO8B1guRnmvvl0E5d3fUDeEcsUIqLay+
         GSRbb3KihIGzJJho3tsb2PMMl+BSg1xFzNnduNXFSy4egssoGuwAkcUFwuT+OENHihoW
         F7puUnY4bPgxnjG2XlJVSBXETh0oCQLp5JPGFaBJxhapCFx0MF8RPtIRhV3sH/CQSm6F
         u4vg==
X-Gm-Message-State: AC+VfDzzt2gV8anCiUz5u/9KWy/uG7pEix6lmwENhXwV+7bzna5pMKBB
	FDnjb8k+gYboduk5W/Ykr0kHYg==
X-Google-Smtp-Source: ACHHUZ4X9DW5v3nm9ETabAEnO/zHuXwpBxjwwwHIiRMD9OibOaCyO+b+AitZRY7pXVt/6xW+wsS/3g==
X-Received: by 2002:a1c:4b13:0:b0:3f7:f264:3edc with SMTP id y19-20020a1c4b13000000b003f7f2643edcmr5877256wma.14.1686561866564;
        Mon, 12 Jun 2023 02:24:26 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:25 -0700 (PDT)
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
Subject: [PATCH 01/26] phy: qualcomm: fix indentation in Makefile
Date: Mon, 12 Jun 2023 11:23:30 +0200
Message-Id: <20230612092355.87937-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022430_592488_3DCF6B62 
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Align all entries in Makefile.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/phy/qualcomm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index de3dc9ccf067..5fb33628566b 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -20,4 +20,4 @@ obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
 obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)	+= phy-qcom-usb-hs-28nm.o
 obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
-obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)		+= phy-qcom-ipq806x-usb.o
+obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
