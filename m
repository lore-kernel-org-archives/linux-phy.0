Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A757C3DA79
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BEs/R6hVb4s2vvFLT1lGvHby/IbFry5EWnZ3z7Q37s=; b=h1pQ9OxrXZi3QD
	dovjn4ttDCyMoxKvWzewkFWO0tv3KA7F/HvlDWaYfbyukR16gC/9UForTaPu5ry/MqheNVnuIb4I3
	qoXHWRtUkA2VdkUj+8b5oFFZq2M3ePCkhKvGpV65c8bH77Vuu93uxAJUSlHWp1ZBTl72VoDha1+bZ
	fqIoKRmhXpWLlFh8hoUEr23VwHuLjgWVkGtAXCCL/QI3IeYKXkK6WE5yNJ1tWJzBYwKl+6t2cW6SO
	LWtXGEpC83YKccHM4TfTa6kiGuuJAdR0feDk2rlCRXHZQi4/DYp+J1P/BfPojmxklgfvItTlMgM8X
	TxRIwtkHwB1IeaV0YMTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAyEt-0014Wv-Je; Thu, 29 Dec 2022 19:06:51 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAxjN-000pgK-9S
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 18:34:18 +0000
Received: by mail-ej1-x635.google.com with SMTP id x22so46800308ejs.11
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 10:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXKNJ1J6Lsp8k0SIwGKGS7Q0ipF67IrwBVbQHNzAoBU=;
        b=M8Pk7N/H2os6BSaRPHa/SnYYrwf5fCOP2GVc/7uz1AbklBGyEeT8f9DAV6tvTzDxAE
         75e+BDfLdkLCFCdRcPoaiPaqC2E0maYIV3sczUgSWJkB+HJf0AJsq9yll2uF1QxseR7m
         MJFxYgMLJpbDkEsCGdv5DbADCu8+FapDvVpiaEnQaAKOj80MHTnLmN6aZS8QBLLCrYpU
         7Nab3O4U++tj4XWSBANo6s1X17KFWk50+khhKmw9AuF8NubcgMsYyYgPQO+fhXecK/fZ
         XmzWDnH0Wd2MzijMXsRZbHz64BgdGtR8Ft+AcfxXv0Ch9Ypnqq/w6hlgIdBIxd4QQQ/A
         wGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IXKNJ1J6Lsp8k0SIwGKGS7Q0ipF67IrwBVbQHNzAoBU=;
        b=bgKynj2KhGqFHdZW5kTkLrJ+F7FcIbz2Z4tsLjT4OAW78EZY2oqxHFEOSavi+kFh+t
         PA9h/qWjvvZnZyn+/ELs8xpWviIPBHjsCpkjM6CETH+cpJcbd5AdChm5mfOVzHhBaFAu
         tuToejuDyIAdA71QJr5xMpPHejIANqU6j/FscqGbBWtUMUTiPrNiVNvfa+S528MxF9uo
         onjn5VO6fhXAJ8ZqJigX0HHFE3j9Y+kzYI1wJelfQFh6G1S95PldLGdRFD6zFKz8S8cl
         SooHu48BWVWkBNkq2RvHzFGlPCtQXjAXC7ylM2DSZU9GZt0c+KFvjZ/jzlO0bC2Tvoa8
         4gOw==
X-Gm-Message-State: AFqh2kphuAX+u6DT8ac3l0FoDrZTWh7yDWGzVYanCvN0jx6Vbvl2Sd6z
	BURvS7a/b5PLBCJMLnQUbCjSmg==
X-Google-Smtp-Source: AMrXdXtPbNLhLa24gVerdkNtAMJWqBLZdt11LDIbsHOmT54yzYbO2XvTuSa6HT8CKAZmDMOqFhLmNQ==
X-Received: by 2002:a17:907:a08d:b0:7c0:dac7:36d8 with SMTP id hu13-20020a170907a08d00b007c0dac736d8mr25614107ejc.10.1672338853657;
        Thu, 29 Dec 2022 10:34:13 -0800 (PST)
Received: from planet9.chello.ie (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id g22-20020a1709064e5600b007c0688a68cbsm9013936ejw.176.2022.12.29.10.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 10:34:13 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v2 1/2] dt-bindings: phy: Add qcom,dp-manual-pullup description
Date: Thu, 29 Dec 2022 18:34:09 +0000
Message-Id: <20221229183410.683584-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_103417_371968_DF110D92 
X-CRM114-Status: GOOD (  10.70  )
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

The original Qualcomm driver for the HighSpeed USB PHY contains a flag
which tells the driver that the controller and PHY do not connect to VBUS.

In this case an external IC such as a Type-C port manager supplies VBUS and
the VBUS signal is not routed to the SoC. This means we cannot detect the
presence or absence of VBUS and cannot take action based on it.

Document the downstream boolean qcom,dp-manual-pullup to allow the HS PHY
implement the necessary logic.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index aa97478dd0161..c55a59df71ad0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -80,6 +80,13 @@ properties:
             the address is offset from the ULPI_EXT_VENDOR_SPECIFIC address
         - description: value
 
+  qcom,dp-manual-pullup:
+    type: boolean
+    description: This flag indicates to the HS USB PHY driver that it should
+                 enable or disable an internal pullup when powering on or
+                 powering off the HS PHY instead of toggling the value when VBUS
+                 is absent or present.
+
 required:
   - clocks
   - clock-names
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
