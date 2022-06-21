Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EED5C43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 11:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=25RFxUTyDpkqaaewM/I3XkxivszyBMcOX6xxdxcpWDY=; b=3tOvyROb/i/B1A
	bqg7hzC65M+UGgzHgwge/j1QT0bI0acPkZyfNLcB1uqoBsvshBbmKr/IpSyYSuSfe0IEoZD2BDYIS
	aU1BeBb3zDLZS6deyEXgGw6WhBPTK2rqadmdNzTwZUxDDFGcbTvYr3FjnueN1BKZD3vV7expeWSEs
	W8l9sQK+5fmYBjZHQCeilypATK8+VqqwQrPGsJ5pRsQFWUNXIuvHZbYpIRgDDkm08eyfnloXVpLSw
	nsG9J6mNOVcEw8GF4LWp4IeEfMW7Ma6Po/VZX8Y9kAQ51CXvoAiOCrWAYM+whfj8wwWb0mtrC5HOK
	c0s/rbpDbS2tgwTgGNrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3btt-0052Dp-Kc; Tue, 21 Jun 2022 11:18:29 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3btq-0052Cr-N8
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 11:18:27 +0000
Received: by mail-ed1-x52c.google.com with SMTP id z19so2048322edb.11
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 04:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v7nxHvlawisf1+yiWy1FwkyOpuVc183YG++a4GngDmg=;
        b=k8kgSfSqpz4vdo2wbxKrJU85FLNZ8v/bI9PXo+y9KI/dhCGuPwYzTeZiDdJnsCD0Jh
         RzMqbKjDufSesLdcXfredMI5zxB43WU8LRGAjgFvDRZ+05doGEtkKZpj5VjDjLVZBqG0
         +egaSeByeYTobiRwEjMM1YfUyOti+MmspmEik+rjsb0DUYOuSIzaUcRgK6hm5+JDV+TT
         fejvmPtoQyag964WuObuXh3Rxgh4Iz14l59oMVxHZId7KBPuoKpsWevd00/CsJpoEAfZ
         +dzb1JHB63C8vXAQ/w6BRq7q62cDiQzKBlyGXNPfpNwsBjx+VPckrP5FSQ/CWG2UjxKR
         bmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v7nxHvlawisf1+yiWy1FwkyOpuVc183YG++a4GngDmg=;
        b=GwYBG81mx69Vv+0ZL5EF9WLUKimsEqg6moBOIPMyMUNYNCdLJCdYHIAkoSQyda8PH0
         JJ7oQD4bZrBvM/4o3KOtpu4rNfschbT0FlcflXxJaZBIDgHUftpMQwFOtABZ+CJS8K3q
         NIevZw2iIvrVVAG//gz4cuWDd3bhwurk0PxzFRzfwGP/C+vpELvwEcGCjANOQ9q6bySo
         kIPec50qFuva5XU+O/4eCcE4tDczYIY8PR6tJ9AjQskHu05yu2Bsm5X2LsvGNbJPCbBp
         h2ornOkKwGplIWWy6XzV1sCBNRBL5wcYBJNXdENt5EdSXyZ0coBShHs/Y3pHeed02Ng9
         HyKw==
X-Gm-Message-State: AJIora8IVCT1p397gvOfx37ScyCIYBY75vWOSduG382gCi5lYL7fTuIR
	/QYQiaLAbtRdwC/iJERzaf0=
X-Google-Smtp-Source: AGRyM1uOXGc3Fg4VuwVFdAiuaxJzSz066rV0cx1EG856h7qraoEOp+CrttjskSMpN0foOQElXk7dnw==
X-Received: by 2002:a05:6402:51c7:b0:42d:f4ea:c09 with SMTP id r7-20020a05640251c700b0042df4ea0c09mr34199959edd.319.1655810302306;
        Tue, 21 Jun 2022 04:18:22 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-140.xnet.hr. [88.207.98.140])
        by smtp.googlemail.com with ESMTPSA id 15-20020a170906300f00b006f3ef214dd9sm7513063ejz.63.2022.06.21.04.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 04:18:21 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3 PHY binding
Date: Tue, 21 Jun 2022 13:18:17 +0200
Message-Id: <20220621111818.447452-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_041826_809523_A9552989 
X-CRM114-Status: UNSURE (   7.59  )
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

IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
Gen2 one is already supported, document the bindings for the Gen3 one.

Signed-off-by: Robert Marko <robimarko@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..220788ce215f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq6018-qmp-usb3-phy
+      - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-pcie-phy
@@ -312,6 +313,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
               - qcom,ipq8074-qmp-pcie-phy
     then:
       properties:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
