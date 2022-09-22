Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3F1FC32771
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 02:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM4A0K5U72jzzMdTIUWb4IQ8LA0elkHtYBAAODcnRac=; b=Cxd7/4u7CbaKH/
	jJOFQiLcZntc2jzk6C2VnQGkl0niv2SNwur5HDMZY5ay2ew7QKZ0/T/mzIY+muTQiGNz5HSwULSH9
	OtfEf674czMMmyqLxJvsvtAf/XMSJKWj1b/CVzPpx9F8k1Z0Q5vpZ9KwT/+cPNMRuCu83s90vrWbG
	MkS8xiW4dceg3/xKixgcLvbDGYKm1h7tMbCPfBEf+M0U4KXlKYfvgvVWTRQW2r0g+KGMJ0pu61GZc
	2LBL6+mKvzUvivyWC7cFngpC0aRIaMpsQAxYKaa17q2M1pThCyWHSCbppZ8gzUrBQTYFNl7C0XnfP
	BjjfW97yBA/xezJJGniQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCF5-00DBFA-Cl; Thu, 22 Sep 2022 02:47:11 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCF2-00DBDG-NH
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 02:47:09 +0000
Received: by mail-il1-x134.google.com with SMTP id x13so4221772ilp.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 19:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7NNBB64006/DpYpkl2kFn/TR6nlhz9oGsFnrTcwseMk=;
        b=FEPfNIrm5C6FxYP9xjZ2PqHLruMUJwTaAwDHQ2sykFfthW05e+Wrw9BN04ZGOYfPqq
         1UyDND0z+setlK1DDZ4BULnZTlaFWD1N1AvKXKQdGhPE/zepjQEQoY/3hXDGzztmFvaa
         XgDvj/vat3HHGbF3FIJ/OjPcE8PSz1KgufYnD0DyTLm/ogxX56KV0yiNvRM9EVBoZHs+
         d8E+RpB2y4jFLHycy20ms+OEMXrt0aXA8z3fKeMK1di4wDvGg59kzFPDTeEcOm2KH18J
         Pg1s1X+QgMfRWJHRnz6b9fQfe8ada0orOTGplnQ9mKTrcjgnqTmV0mrei0qBFTOAqISe
         fZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7NNBB64006/DpYpkl2kFn/TR6nlhz9oGsFnrTcwseMk=;
        b=SPIh/cwyjnvE5+Dux23EpLZbvI3geiGmevnwSPcCs1Y2hQs9HSMT5L+RlU9dGyQrRa
         bcKhQzpnMSgSJmOK2yfqKX1y4vDjW9J+vxANMCJiKpszRYxaPHRnXZH9/5ed5xo4KGfL
         A5MYAemgQahQAXXaZuN1mrsRaxtyeZcM8RABkM+7sR2zOj1fT7OQ5d/zkhOjlE9LhgIE
         PxX2jDzwBjuh88ZL3VcYZ+lWucS4FhzO+izKcy+S1W5vyKyKZsPlmRY37tnvmY8BK9fz
         t0TkXFWFiLAjcv3M0wMswAH7kAuAIb/iCSmqmCaYGJt3zHyOIvoQ2F69jKnUSfYsYgvf
         +hYQ==
X-Gm-Message-State: ACrzQf0arTBvcZ/ZmanyGBM3ukUUn/MeFu8rz6U+F1Eo4O9sH228F9vq
	fPBu/uWxymqO1rA5+L85Vec=
X-Google-Smtp-Source: AMsMyM4dMk9hysziB1zvJLQuLhOCDGHS5HcEFabPrDzXL6e/zXbezppn8WnuCCt1kjK7FCMVsRKHsg==
X-Received: by 2002:a05:6e02:180f:b0:2f3:4a2f:7907 with SMTP id a15-20020a056e02180f00b002f34a2f7907mr622775ilv.141.1663814827120;
        Wed, 21 Sep 2022 19:47:07 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::61a4])
        by smtp.gmail.com with UTF8SMTPSA id h3-20020a05660208c300b0067b75781af9sm1847316ioz.37.2022.09.21.19.47.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 19:47:06 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: usb: dwc3: add sdm670 compatible
Date: Wed, 21 Sep 2022 22:46:56 -0400
Message-Id: <20220922024656.178529-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220922024656.178529-1-mailingradian@gmail.com>
References: <20220922024656.178529-1-mailingradian@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_194708_774223_D6E8AE40 
X-CRM114-Status: UNSURE (   8.65  )
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

The Snapdragon 670 has DWC3 USB support. Add a compatible to reflect
that.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index cd2f7cb6745a..94b05e32792c 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,sc7280-dwc3
           - qcom,sc8280xp-dwc3
           - qcom,sdm660-dwc3
+          - qcom,sdm670-dwc3
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
           - qcom,sdx65-dwc3
@@ -175,6 +176,7 @@ allOf:
               - qcom,msm8998-dwc3
               - qcom,sc7180-dwc3
               - qcom,sc7280-dwc3
+              - qcom,sdm670-dwc3
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
               - qcom,sm6350-dwc3
@@ -344,6 +346,7 @@ allOf:
               - qcom,msm8994-dwc3
               - qcom,qcs404-dwc3
               - qcom,sc7180-dwc3
+              - qcom,sdm670-dwc3
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
               - qcom,sdx65-dwc3
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
