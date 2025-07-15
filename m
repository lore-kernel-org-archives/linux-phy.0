Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45ECEC83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 07:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPPHDtHPXbUtBeCxzwqnH+beBFLEwIB+SURf2eSoiWw=; b=gv0pjO8l0KW95V
	Lg602XrGqc3UzkVp+6EBV5ZXz4ED2I8EPjz6ZcDVJm5GEvJSLiMyvDmZAoQKyd/3p8NAZckIKBcME
	nXDevSdD+u5H3mPUO4C5XeI55evSYmTzP52LMPSxa9XcvRUO7TFph0DiKOhXvhAS568VUxaL8FMu9
	ULkEoE5jso8QF/6uwR1gxG98zEWCQXKXpRmG1JJi1PZBjItRi8uVRNS6JxatagDdYpABrvVTOjMo9
	zfW7mZcwZ38j3i7pC9pXPLvuVRWmP0A6oT1eqgCjtdSjpZ6c1XHZCEgohTgfvf3Piz6/u1eL4En4D
	eR6Fby1FuaO010+nhH+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaBS-00000004MhZ-47Ku;
	Tue, 15 Jul 2025 07:34:39 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uba6o-00000004Lie-2hNR
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 07:29:51 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3b45edf2303so4380440f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 00:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564589; x=1753169389; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gMdbbj4BEowCYzs/Z3M6B78NShV/42oHTUmjX6X1bd0=;
        b=w8GeJ6TYpEj6U7epTcw1UXeXdq5RqsRSHfU++Sg+s3ekHeiNsoXZJEFrnyY0cgR+hv
         JJHEKSfvrc2QAyjXFyBiL+ETwPxbG784HPt5JAVQ4Z/yhQLkQ0+AScy/BSxyaTNuyihS
         6MUFdXgYD0s5VaNbaSdlWF713ZPopllC896KS9gEGY33bpYSv23e3jjgmltspgkIC6EF
         GidDmjhB8PGFE1wP/YUeRinD3UmMIlhaRruAE5/np/W5RMfeVFjeMWLFVdK3W1RYEsqE
         WviTn+lfFe1yy8n+/hvzhvilzCacRf1uba68eeS2mNPL0YLpf9lACAkbJyzJYF9qG1c+
         Fmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564589; x=1753169389;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gMdbbj4BEowCYzs/Z3M6B78NShV/42oHTUmjX6X1bd0=;
        b=QyBEYtPxJCwYY5Rlu6pJUowP+J713r+SstnTYmSLqjgiR+5LasofSq7rTmXAd6Qf4M
         taMze0EV2iXPCGR5Pt3e5nRPSvtfga7qXu86xvcUJn8ORVlsJcBRJ1032UYqiihoPFCO
         5DmEj7NjlaB0BbmlC+G918Yd+UERV+7x3wAOYdj3YU6a2bNvM5b0QZFnUgiwgBnfuidZ
         OhR4oZEV4pxa/tKSirInMTt6yLb9Zb+ExrSlQktV/z/A2qrWdmlsPTog6+NhvF8ESepW
         TuwrJ6plQ9HQhKtNAyOPI6Xa/UfFqfmJEZ3Vxx7s0xHQ75n+aVLFT0BswoAM4uAKpHi6
         jwoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvF6B6SlaP9sxFrLz418mxyCwBLV/f1WQ1RBt8S2sdifOUBYz/fC+fsJasT4hjKDe8nTorVdNopVY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUmofKAF0MEaD/d5KXEa1AY/hJEfI50fQQRKu7cYl3X6BCB7p9
	sqJf38KLio7COk434lseMoAJR5ATHaxFnGEPfyQNbRK+ZmQKmwkA6I58PmWsLUVkRvs=
X-Gm-Gg: ASbGncsUNtSUPyEMihCnBLXmv2sICwbFbta+oSgxfyNZStgjBf+uw+9l2vuuenvd3yz
	NhzvWwAv9dIaZRvOK1c4iLdn4nlfP4eHge6U7HjHuseitvzoWiRdDOt2v9I1RvhywV1ockvHDz3
	72ydR5ATsUQ+tVStIK240gxSwpKTnt1JT9mk5J4Rdpl6KZxAjhe8OmYJyHWfzhNSFf5BcsaV4QU
	/0wEoTcmVvbcKA3ALP8aqo/yo10XNGI4Ejy4q40z1pyxMmksliT+wWsldn7bZOJjwGV8miLuGoF
	PEZ1nMpWn9kkrchBKoH3kWvnpPEIguVeGWmSPvXa+wMuiBfvwpv/4AjQIYd7Qn7tmsAYAXkuv2P
	5sVSHeJixwsAPW3XmmNRkjn6ekVAu//ETrx89P4E8TCTGt3/wCDVRBzzX
X-Google-Smtp-Source: AGHT+IH7xZihVzIA5RnWD6NyU0bUqw560Kv27vVv2rhTAzSisPpc8YG7ahtot4M4YwZjZtNx8Gr9kQ==
X-Received: by 2002:a05:6000:985:b0:3a5:2949:6c38 with SMTP id ffacd0b85a97d-3b60a1bad1emr1118577f8f.52.1752564588929;
        Tue, 15 Jul 2025 00:29:48 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:48 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:34 +0200
Subject: [PATCH v3 1/4] dt-bindings: usb: qcom,snps-dwc3: Add Milos
 compatible
MIME-Version: 1.0
Message-Id: <20250715-sm7635-eusb-phy-v3-1-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1322;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=sF0BBqSfmmjGnkvMWcmZuM22C376Bznvzv1cD7u8WVI=;
 b=kWHGuSS6cgAT+8EY14LUc3Wr8wswBjOovjk3j3OcaOlQzDYtixwgSAbOWluwm+7/DADGH77OD
 /ATYlXH1wgcD7S06O+brsLKzuyArP0bc9RfmMxcb0S24PBta83t8Lqx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_002950_688009_81C865D4 
X-CRM114-Status: UNSURE (   8.16  )
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

Document the Milos dwc3 compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8dac5eba61b45bc2ea78b23ff38678f909e21317..dfd084ed90242f0e77cb2cde16023c3421c5dfab 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
           - qcom,ipq9574-dwc3
+          - qcom,milos-dwc3
           - qcom,msm8953-dwc3
           - qcom,msm8994-dwc3
           - qcom,msm8996-dwc3
@@ -338,6 +339,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-dwc3
               - qcom,qcm2290-dwc3
               - qcom,qcs615-dwc3
               - qcom,sar2130p-dwc3
@@ -453,6 +455,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
       properties:

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
