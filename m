Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13224C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 13:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2TgNWdad2TI7PPoG+h/YCTWCgQ/Yuaid/LcswcKVX5Q=; b=zjfh1Lmr7Jh2rz
	OUwddLoFjPRquAey5xSTz9aDtWDNSaZEUSwhvnnWA/I2IR4ontu7L54W0eCGsKkMxFACFUJHabZSe
	HqbjlsXVsRXhtKbmGReaprUDFaKjSB0Mfsc85oWLKACYOLW4kR9a3o02Y1tMv36LfcMDAiL9cL9IR
	4XzAhVTJec0k1QULibJ2UZ2lIuNE5oS14AV9IewqFEA1vKE32aL03akQX2zrdObiGRuxE+v1hoU2e
	ZpR3zh+4ymmyRaQfS6HVWdS7pzmhIP/29NwPtWDUE2BkxZ0zFyBbxiLjnbhg1EU7fxHO1R3Qdjf/I
	EjRhNb2Ee+OxNXtI1ZHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt6Ed-0000000AMfZ-1Bky;
	Sat, 06 Apr 2024 13:37:31 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt6EZ-0000000AMes-2UjX
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 13:37:29 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-415523d9824so30840275e9.3
        for <linux-phy@lists.infradead.org>; Sat, 06 Apr 2024 06:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712410644; x=1713015444; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+WLAnNCRu6P4N5RNkCdLMJV4Al/A3hve5ECn2W2mAK8=;
        b=QdAoQQBlbYjDG00Rusy36+Ulx8745mNgju4xtucFTFVXqBzozH3PGcf8gwo+w3JeQ2
         TpTSDDVW/fNNOZDcgaD9JQDiTd3Bq0zfe1/9gqEChHDuhgE2NwnW02l11+8/tEhQqkGi
         pjf+xENUTuXWRLpRxerOM9LTQOZbT8dfVNmm2FfbwXA40fBIJIEPldoDfFuTGiBYBo/f
         CezVme5nBv4BnzwvF8JitVosXCvG0LxqYGl1JIt7BuZboOxv+EvwqLikr+GYl9jn3tdQ
         QNaGUuWIxt6bAh6ZEHU5znJM48q9ytjWTBvpQLqLZ5RkEhVHw/Od6+8BD4xmrMFYataF
         KLKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712410644; x=1713015444;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+WLAnNCRu6P4N5RNkCdLMJV4Al/A3hve5ECn2W2mAK8=;
        b=RcpZYP2aHiHUn3JI6aT+Z6RtSCMA8EvxTiMwPSZLgWR3v0OD2NvLC1YSbMDNcWMktV
         OWZ4r0QjRJ6hvEY/PQQ9tgi1rR1lcfPtnkfinGOi+1P64BPtWwBODyT4BrNlAHoSs5Cc
         TTSDPij8VN/quyjXnZCDwBlSQWJ8uL9BR8DCYpyfCW24XWhZyPJeFSZB2iP/pKaonToY
         iPGXZnRsJANZizBA1cH/hcWht6X4CYnv1V4wXeTwTUxMsLN5y82K4FO4btXZaaBDxKCA
         UqwHjfRg8yXdIXKG2Wo3OKu35v851OCw77HdjyNMXEP8hYdDpi/bscGprK0oxgjsYyLF
         +IYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZgycNnKBAQlp7Peuq04s9MOU6+drcC0JZ4/y84xANIeu8nZAWw3BUFenmvayCUMxg1e3xggRkDDT5/uaNwd3guDc8dHTJDVDD7HD/0Q==
X-Gm-Message-State: AOJu0YxD8EwADfx2zdBi1pPRCvnO+nA3Hz6/bDbMrnRyk7lPQmhFmTug
	I4BDUYe92MXMrdWqnodMRm4nZtt3IGLoXwP4C1eEsCZRX9wHlWRi
X-Google-Smtp-Source: AGHT+IGJuEOafaI7+tCV7vsTYfc7mKh6m8d0wpe81NoSi6m5Vkv9sw2ORNDcFFTz+9IabAg6YVanUA==
X-Received: by 2002:a05:600c:3c88:b0:416:2f05:41d with SMTP id bg8-20020a05600c3c8800b004162f05041dmr4456038wmb.18.1712410644031;
        Sat, 06 Apr 2024 06:37:24 -0700 (PDT)
Received: from [192.168.20.102] (57657817.catv.pool.telekom.hu. [87.101.120.23])
        by smtp.googlemail.com with ESMTPSA id z22-20020a7bc7d6000000b004162bd5ba59sm6510510wmk.39.2024.04.06.06.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Apr 2024 06:37:23 -0700 (PDT)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Sat, 06 Apr 2024 15:37:09 +0200
Subject: [PATCH v2] phy: qcom: m31: match requested regulator name with dt
 schema
MIME-Version: 1.0
Message-Id: <20240406-phy-qcom-m31-regulator-fix-v2-1-c8e9795bc071@gmail.com>
X-B4-Tracking: v=1; b=H4sIAARQEWYC/42NTQ6CMBBGr0Jm7Zi20BJceQ/DomBtJ+HPVhsJ4
 e6OnMDle/nyvg2Si+QSXIoNosuUaJ4Y1KmAPtjJO6Q7MyihKqGUwCWs+OznEcdSYnT+PdjXHPF
 BH2xqrbWtjBadBA4s0bE+4reWOVDi6Xp8Zfmzf2WzRIm1qXVX2Uaarrz60dJw5jW0+75/ASJjI
 m/EAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_063727_713213_D915E3E7 
X-CRM114-Status: GOOD (  14.84  )
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

According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
supply regulator must be defined via the 'vdd-supply' property.
The driver however requests for the 'vdda-phy' regulator which
results in the following message when the driver is probed on
a IPQ5018 based board with a device tree matching to the schema:

  qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
  qcom-m31usb-phy 5b000.phy: Registered M31 USB phy

This means that the regulator specified in the device tree never
gets enabled.

Change the driver to use the 'vdd' name for the regulator as per
defined in the schema in order to ensure that the corresponding
regulator gets enabled.

Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
Reviewed-by: Varadarajan Narayanan <quic_varada@quicinc.com>
Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
Changes in v2:
- rebase on top of phy/fixes; ee13e1f3c72b ("phy: qcom: qmp-combo: Fix
  register base for QSERDES_DP_PHY_MODE")
- add Reviewed-by tag from Varadarajan Narayanan
- Link to v1: https://lore.kernel.org/r/20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 03fb0d4b75d7..20d4c020a83c 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -297,7 +297,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(qphy->phy),
 				     "failed to create phy\n");
 
-	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
+	qphy->vreg = devm_regulator_get(dev, "vdd");
 	if (IS_ERR(qphy->vreg))
 		return dev_err_probe(dev, PTR_ERR(qphy->vreg),
 				     "failed to get vreg\n");

---
base-commit: ee13e1f3c72b9464a4d73017c060ab503eed653a
change-id: 20240220-phy-qcom-m31-regulator-fix-97555a4650b1

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
