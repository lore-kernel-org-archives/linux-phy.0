Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB64BC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFGulEWCP3G3ab11hBGMn2cHa2OhlpkwAQHIgrD2Mv4=; b=M50L/iaEP/Arar
	sHyrB8QiEygOvPjfjabjmaSdeQ/HtXFhc1Ir2nZGXj7o2Yfu7iZWY6kvPVQnwEWUEMFKUWdAPJAMO
	x1Ik8VWzapsoXGSug7RXTfYRQnp5dSU3TUUsxacrRlokatdaDlvK5mRmNAGVTzvrAgxABYb03MPGl
	i3I0CxDRVcYtkEM0dgAbyYk61/etz6F4lUzsHVWmixKrKQMaWVJ7mf4Qq3ksjUZqD1KYpm+omVb7S
	SnwQZgqro10zoqXBFUkNJYWOuA3aMbfYEpiIsyKhBfpyVQVKwoE9h3/v/GcubbKuJI5kymtJ1iQ8M
	1qdqfav4ZC3n4XIxVDgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhwz-009vk8-4A; Tue, 07 Jun 2022 22:45:25 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoL-009m4P-VX
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:28 +0000
Received: by mail-lj1-x236.google.com with SMTP id m25so17341390lji.11
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eUFnr/e9HU+EYrYRX5aQDFNxgvmzpynRJnt25tx+IV4=;
        b=uHvRe3HXubQYucI9ZdHllk18XkLYa+OT6nD6WBhVAwyKV/E2tXximnifXlIYg67Nvy
         NTN5zOFOF1cjlpSHuuAiifJbBLN62gHlxe3l6wZiNudVEGpW0Luvyf5Ww8/JI4irhuxr
         fEhK+QcnGAkCC3qMkOsb1HmsB/p49NePXYwIP+GN8Svssb4ZXwe3j0AxtqxAuYWIQo2P
         hfB4o0lSLG7tH+QADksJmbXsCc1H3PIQhs/UUVhj/BLwtUJ4bGJf1Ud0RvLpe4StP8HR
         Lw8qBBgxfFRy50x9lydkOukUaHM0ZPLH5g1mz2bIMOuBzIpqeFcXQaVHiGPhchETk3nt
         w9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eUFnr/e9HU+EYrYRX5aQDFNxgvmzpynRJnt25tx+IV4=;
        b=iawBOv86Pm4hWMUMtha/EuYrGKgVZ+I9za+8fgcpsmXrcpTbxSruGMGAn0ErUvvmux
         3pAA/EE5skaYNUkUlUP7GMO701hHGnhOKBwTk14yw8ZznkNoasoM0MLOv2W/7S8KFlXf
         rhK5fuhL6s7r2Z2hAw/NWPqBzXcxjleSC/QnlgVe2hPcqSlyNpJsAgJD5vY6ujnWwxwx
         C0kftmj1dJ2ku3qO70HPmmgt9jtlwy2dsY1yQ7U/+6p8OQKvK3dW5lgi6CLsvpXAzZYj
         QPIM/ej1dtQF83W774b/I7gtdTIBPhtWm54k7DYqzH55q8fuvZ9uRBsGOvdtAkiIlISf
         G25Q==
X-Gm-Message-State: AOAM5338aCZJahmV0I1E40mSLUkInz0ZAHNNpM6DyS78C2rPFJHNUMm1
	Lx2NEY+j4y/y9N9N7lS67tUjbA==
X-Google-Smtp-Source: ABdhPJyFhIuZ9RTN2H1gLHw/S4avoOtjBs0EZ28MEQSbJV+MbF4aV8APA6APEjSKVmTwyUVRDxxkrA==
X-Received: by 2002:a2e:9345:0:b0:24b:451:7ce1 with SMTP id m5-20020a2e9345000000b0024b04517ce1mr55151425ljh.258.1654637543932;
        Tue, 07 Jun 2022 14:32:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 12/30] phy: qcom-qmp: switch to new split QMP PHY driver
Date: Wed,  8 Jun 2022 00:31:45 +0300
Message-Id: <20220607213203.2819885-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143226_084315_BE46A9D3 
X-CRM114-Status: UNSURE (   8.61  )
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

Use new split QMP PHY driver and remove all monolith phy-qcom-qmp
driver.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index e9e3b1a4dbb0..65f6c30a3e93 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -5,7 +5,13 @@ obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
 obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
-obj-$(CONFIG_PHY_QCOM_QMP)		+= phy-qcom-qmp.o
+obj-$(CONFIG_PHY_QCOM_QMP)		+= \
+	phy-qcom-qmp-combo.o \
+	phy-qcom-qmp-pcie.o \
+	phy-qcom-qmp-pcie-msm8996.o \
+	phy-qcom-qmp-ufs.o \
+	phy-qcom-qmp-usb.o
+
 obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
 obj-$(CONFIG_PHY_QCOM_USB_HS) 		+= phy-qcom-usb-hs.o
 obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
