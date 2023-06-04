Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB4CC77B73
	for <linux-phy@archiver.kernel.org>; Sun,  4 Jun 2023 06:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wscqu7v59IgtSQGhmKO1nLO57oGObn4ghtrUQ37+pdE=; b=LLlxRWG8q37Yu8
	M/6JvMI2cIQ8M8prddC9nLqDbHe6AawzVUFEvPAp38tih0Ojum1u5lXLQJsSHhc7pvLs8nW5yXbEd
	0wFgqAWnvUJ2r/9bS17A0JLlY2kvBUjuQVSOtkamOVmJMFe1Hcui5VtNAdne944pDGMqW6zM0k2Aw
	luhCzqyD+RKhRsjzLLgFWBL4BROYms6JrqqOR0mfst6Pi68fStYanAfLSPuMdt0ronXrMJjRf6qlG
	Md/fI2+h5sH3f+ESvUIdmdJ9QRWOJJOH7h6zHYQRXQKTbQyD+jF9wcdqhKIydA+bV5tXVhCjiIRf8
	lbpHt8qwd9vZ+y5GekXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGd-00BSCU-2j;
	Sun, 04 Jun 2023 06:31:07 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGb-00BSBl-1C;
	Sun, 04 Jun 2023 06:31:06 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-75d4dd6f012so94032085a.2;
        Sat, 03 Jun 2023 23:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685860263; x=1688452263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxOPjAsaZ9AVOYNeDf20wz37OzM0ix4j2H0BVngyGV4=;
        b=dGai88tpFQCWZH9NL/nX18vad8F+5nyE967geRtVAerQHgbGJ/f4XWn5ITBdwjMPle
         AX1Ix8ZB99kfBhkeYbioSWtNIs7pwW4/uEN10K+Hs4RRCq1VLVV0y4+7PhYad+F+W57L
         XITPUjBIAZbIpvKO2+Y4+YanoLV9017GtMWsgA4Epm9WEAK8oO0twy2V0K77ms5Y6gYH
         J7T1cUAEn9dbCE9MdTBaYYZva0L2zH/4R+FuIg0L/a1j9fcbaYatFlObQfwYRvDSIb2v
         DFoCFF+0OSXImFykY/sSnnGMCV3VkUyibYclbwd3RD8i5kQcZ1YiGGyvYmVPNYjSA81z
         KmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685860263; x=1688452263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxOPjAsaZ9AVOYNeDf20wz37OzM0ix4j2H0BVngyGV4=;
        b=Ro9M0HL9CKRycT3iHtlB0qvvEPAcKN12mE8mUJDeOCH17BSkzGfN/CjJ/yWLJjAwJA
         RF9FbVGBY4ndHaZfM6YZf3nSktO3ab9cerDA9Ea2YAt2wvRC4lr+n6nM/exVRfVfbIaG
         ukwTl4R7QL2IAWHHUmGqPqsYQLBomPrt/lDeWHnAhsHV4mEKI8dokxGkdEuI8Uzh9mPR
         f4TVxKu6smqnfXPzp0Uwb79YkFHRol2V8k5dgZzHsVc4TfMd2BK7B4tLX2rP6dSPjKxB
         OWetiVFCl4GTR6I4Y/t9stlf1s6TodD3q5ZefHLxyKy+4tlA21clYcBNQeY5SJR4q/K0
         C9ig==
X-Gm-Message-State: AC+VfDxbcxh/jQ2KAa7a+n4yUQi3Wp21QIlcZ/YUMbviArxxEbBxRSxt
	Vr53OUNyNM0zf7qy4hDezvo=
X-Google-Smtp-Source: ACHHUZ4dL3Kz5HI5I6+ui9aifYxduaqhbMhmWcsOwaUA1rvniBFUb6e0+QHmq2UCq8Dtvsc4Mx8Jzg==
X-Received: by 2002:a05:622a:1801:b0:3f6:c52e:21b7 with SMTP id t1-20020a05622a180100b003f6c52e21b7mr4214480qtc.17.1685860263240;
        Sat, 03 Jun 2023 23:31:03 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:ab78:dd77:aea4:8d1a])
        by smtp.gmail.com with ESMTPSA id e10-20020ac85dca000000b003f018e18c35sm3044163qtx.27.2023.06.03.23.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 23:31:02 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Sun,  4 Jun 2023 02:30:19 -0400
Message-Id: <20230604063032.365775-3-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230604063032.365775-1-guptarud@gmail.com>
References: <20230604063032.365775-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_233105_414849_C4112A0A 
X-CRM114-Status: UNSURE (   9.74  )
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

Adds qcom,usb-hs-phy-msm8960 compatible

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index aa97478dd016..63b6914993fe 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -13,7 +13,9 @@ if:
   properties:
     compatible:
       contains:
-        const: qcom,usb-hs-phy-apq8064
+        items:
+          - const: qcom,usb-hs-phy-apq8064
+          - const: qcom,usb-hs-phy-msm8960
 then:
   properties:
     resets:
@@ -40,6 +42,7 @@ properties:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
           - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974
       - const: qcom,usb-hs-phy
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
