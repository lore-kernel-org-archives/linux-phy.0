Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 568B9EB64DB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PywwAqL2qp/7Ox+Hxek+rBtOLMHz5YFsFLj3p+5mZdo=; b=L5nM+gJewbvNHk
	1AqVsfwX47fNFYLWLDFTU7NETwZAd4C3NKOHkAprS0Bq42L/32DmZ1leHEXBcYtLiMdNtm6FNCZ4+
	C21lmmpwviUI4N9OQ2UL3iHxWnPexdisnGDCbPJM7+7Ld6YcqI8RW/Pkd8cvcmhrgL6qnl00ZKx3/
	7DB0FWyTfSGcNR742qq5Q58OpDu7PDOC00M+JWwIHghMH62/CD7ZXeuQ6ECCI22Y7HU9rCnBJ6mWK
	2tkVsVJCN8ybropJfkJGlK8+NePYNBotqoi1sKDatUKNRl5MNW9OveW5ccIZzZciX7dGkH3AbqQyh
	rlnVi1obkmzB8ZV81nbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsE-00Ep4M-2M;
	Thu, 15 Jun 2023 12:14:46 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ls6-00EovP-2M
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:41 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f764e92931so3064902e87.2
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831274; x=1689423274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1C82NuiRAia/YhjujkCgLkELLEPYOAaW/5fpk8oBGP4=;
        b=nbSrgGPYHGrb5NKSb9GhBpiLuoYPO81y9AWPuhIYDmhylQDSCIhhZVpYdlJpFrO7ZG
         KNEpsDyztKGig5WxaeaoevmrrZktAQtH1FhP4gPPHfMBnJRIyRJOnKl7QsjJAwVwAPdq
         6TfRqOj8XSwylj8ghIN/npIEZG6VrCugss/69cHUCCuwoN3UDpTw84Svasp/8x1Czzby
         OHF7oHwmouARvjVcTzERFZh60OL6MIlm8/ZcM6Qzabi7GWGyLSm6FslEj/usCpjxPPmO
         gohhbaJvKsGtkGqpCb3HbwryUqSmh058EtuWN+/HXJpiLzF1C7x3DTfo7q3y2KjZqlg/
         O8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831274; x=1689423274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1C82NuiRAia/YhjujkCgLkELLEPYOAaW/5fpk8oBGP4=;
        b=HqeKV3gM7v/+MWYwsoTRV5Rlf3HWb/uL+BVMWt2aZX/l65zwGApvKeIEh9F4LCwtmf
         ABe6R+mgv8vzWKHnmoBQ1xxWGikH9FVq27Ejc/WCh3wV0tZTszcdB8B1A7c3gV2WP6cX
         96GkVGFQqgFI/zL+4+22qNEuEry3kzeSbjQFzbOXplwdl0E+663LsOLvDNT5n7Z8fRm1
         3CG6fPf4VjFz2AcwHQzn09wddcmxkHT0O5+TNLWF8n1Wv8d4fS+7MUxJxCiDHKomADgC
         ksIhFu6LVpNvMTPXJtUMScA4ZkUJQKscMRgQ7Mg2zDY+NOj+xkOEpVKrYcxIyCSOVZmT
         Ngjg==
X-Gm-Message-State: AC+VfDwWqenNQf1tYklFDyc/55YvKfuFAecPdHYnzwGyvb4ZW0sX97fc
	X6GHFD8kQBilQSt1lgP8QRPP3g==
X-Google-Smtp-Source: ACHHUZ5t5bTBAwDNCCYhGugAix3n0kHObs1gW6QysxD7oyK5sYxgSrgds18lC0BPxZXC4yE+EbTEPg==
X-Received: by 2002:ac2:5b5d:0:b0:4f4:c6ab:f119 with SMTP id i29-20020ac25b5d000000b004f4c6abf119mr10024535lfp.64.1686831273902;
        Thu, 15 Jun 2023 05:14:33 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:33 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 01/23] phy: qualcomm: fix indentation in Makefile
Date: Thu, 15 Jun 2023 14:13:57 +0200
Message-Id: <20230615121419.175862-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051438_775900_399BD5CC 
X-CRM114-Status: UNSURE (   9.62  )
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
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
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
