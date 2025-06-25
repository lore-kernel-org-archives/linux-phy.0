Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F41E3C7EE39
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zqg9y3l0TZsU/akxfUpI/DSQvkWOc27rQfB3EElTu0U=; b=RU1kKfh8pco/eF
	a57qsEBNszGSL+chl9tX9Dg2oQlklxllq2XvWRgyCtEMZnSgyD4W8xCHS0VxGUkw4Z/zGLCU+wRjm
	xLBulQrMq8ALkWDSphv8Sqmkg/1ssfFu/GUYzvkHSZfuOr/wAPNG1ZvmXAS+G+h9jf0PaATQDWYvh
	WTUoF68h5ghV6ZpzgfJfIuKndjjK/mB6ApItYEatuhdukQbBGXolMkxvziJM30WAH4epkStj3x5dZ
	1hkKSyCYzausCLCKOvcrBVtZzRIvZWu4F4oQl7tti6zGiNfe3I3BbsFhtG5h2vBf9yxT124yW4I6W
	PVeyGwzmQ2epYKyFW68A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOEJ-00000008SSI-38i6;
	Wed, 25 Jun 2025 11:23:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDN-000000085hB-25Lb
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FtEbaqMHRXIEvNFaPPE5wU/cQa+kH4fJ7i9D/u9rEcQ=; b=S1WQ3tyZ4b9PQTOMInEAst363b
	/jPX9t6WlTLsjpTn/bPhNCSWN1KFfAFuu6qLri3p7B+qC2rtri/5EWa93tF6/+uCmkzXnzKHi9hs3
	V3ARhke0/Zebdf34pZzmflZeshtXo/OXBnn25mK54jyjYznWEQeIBR+hZA6FvI/WT7iZzdiUUETxy
	VO/IAnIhaIbNq8Z7QObsUVE8OLb1L3S+VHx4hhSsv50O0WrFj+aVQL9LnT+XjFZfHIgdAohSYlMOU
	tYyRgIhZdqSP50duEEU9FeNmIsHuMnqfhSS1zFIm1L9oBaPpfMhevRy6pT6zTNb/8/yuU+8xtNAlB
	YXNnwZPw==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDK-00000005isy-3Xws
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:14:44 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-606fdbd20afso2682015a12.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842880; x=1751447680; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FtEbaqMHRXIEvNFaPPE5wU/cQa+kH4fJ7i9D/u9rEcQ=;
        b=cOBRCQnYTMkHyewFwIXbMtlcT/sBxb+UxB9YFy69MijGRSUuP3Yx0pGoUWXHBkvWD7
         WoJ7iF9023cLXinQHwzC4H3hsILHSCM1X7sBfQOPa0UKnZ4qmXE3FlUNNytNIKAHk0Pe
         OsLJgs0etE2Z0dVSi/RYBsI9sE/cPop6H/eZ/QTWocLNZ3U/9F1Bx36zlshRu4IK3sGI
         2i/iVV7WS3ERL254b39UkO+2VtJB60NPwbeRIFqpo0ShBJpUa8BLqRSKW4KVTRZ5pOOX
         U/B5yOwlDRn2ELuAZ5lN/+OkPt3a/8HsMlIjBRGV9VQFtho10zw8hI4fO6gBnQiSTu4r
         Q/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842880; x=1751447680;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FtEbaqMHRXIEvNFaPPE5wU/cQa+kH4fJ7i9D/u9rEcQ=;
        b=sUILI7QEYYmJZ+CfhR6QHAfCi9dI/nAkO1YRV/RNtpzUaDkA+6fycapkXAtYceEk4K
         ZoWO8RUQjOVivc3bAqoawSH+3DzxrJhXkGvNtHBtGlO0ZztdLlvcj814+z+XIShsmXOd
         C6gyY+gDGUvHYkZ37lpErvkxE/yi05tpS6zdXESjlLsA4hvkeIXUmwoh6B8W6kLO5mLH
         LQSK9wuq2EwvYiKbRDwDkFRqoMbJ+2r3rwwq2kSfDCVpQg0joknzJddwXCvjjv4cPhi4
         R9ZsPhbUjbgk91Q8sIMIlG8zJqCU8WAhkrB1mk5KJdQY4esSNQg9d3c5ffYfwpv8fQMM
         uwLQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0YEmP63rkr0wj4i905SXhn6VxRDOwnZft/IXUl+iKiZdAtCz5OI61sBbt5fqEOB66JSuSgxEOTk0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzZPWoq3QgfGYa3jR6NINMFJsikGkVMdT4ExEsMIsRzTIowlkM
	5vQV2rxUshTp9UbxFjLsgOH0BDOpkFM9fYlxJI1W0j0wGjmonT8vOd9JmDOuoGKzK8nqK5kMEEh
	KpOAw
X-Gm-Gg: ASbGncvyNxfDH+ciYAi4vqmX8GPuZ3VAGRhsCeWDKlrQ5R64xwGqcR9Xlr2SQz/MA3e
	ApS7nXTrK1LDxKFNj0G9m6JtgwyorCiu6Qt2/Fk3ianj6kjvxYog060MosCpzaugS1nrTNqL+uY
	jbKwGY1MDIRmhvsWdbMnMJTUOMfadS3cgz2PPn9MAlZMBmUR+uQmCKW8Wfvq0B4fAE8iOBmbC99
	wiZlzUra42Fyk4+QyF9YQPIi6/w9BB9JN809LLjzI9Vn4gEqGsApxJvl+HrhhoQzJk5EeUla8ZA
	em5/Z5SNhlMPEL1Z0WM/QYaqw5fTtj+ipIoLzn5U9Yd/8SjbdHOW8+ubcCeU/tEWBnZ85R9WHNj
	tmlr4ibNaTkLnSKqt5sGvN7TSUdH66Gg9
X-Google-Smtp-Source: AGHT+IF1iuoBJ5/IWRuTBr2H+764qhYUfliJ6K8sCXaPslobIM/iwfyF3QHm7EtNXEH7KW3eJUZwvg==
X-Received: by 2002:a17:907:1ca7:b0:ae0:c215:5be2 with SMTP id a640c23a62f3a-ae0c2157b5bmr180401866b.30.1750842879941;
        Wed, 25 Jun 2025 02:14:39 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:39 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:29 +0200
Subject: [PATCH 1/4] dt-bindings: usb: qcom,snps-dwc3: Add SM7635
 compatible
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-phy-v1-1-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=1298;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=eRKXKF6mMaUPaJ+UjU/8hav2GlgqkxDfF+0UOVp5P9E=;
 b=wpxdiMwdD1qjIVMibt8wuPqXRsBEHwnN9wfoc1mcjsqkiHBTcfoYMO2yrsvY9XvCAP+0AjcCW
 idXpk282ffCBG6St4/1bJgt6brzsRTr2oSi/pUFKtu8GSwHflZVg6P3
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_101443_030134_D88A02C4 
X-CRM114-Status: UNSURE (   7.97  )
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

Document the SM7635 dwc3 compatible.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8dac5eba61b45bc2ea78b23ff38678f909e21317..07ed7c68470d7c951e3a4259942dfe1eb257b939 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -60,6 +60,7 @@ properties:
           - qcom,sm6125-dwc3
           - qcom,sm6350-dwc3
           - qcom,sm6375-dwc3
+          - qcom,sm7635-dwc3
           - qcom,sm8150-dwc3
           - qcom,sm8250-dwc3
           - qcom,sm8350-dwc3
@@ -345,6 +346,7 @@ allOf:
               - qcom,sc8180x-dwc3-mp
               - qcom,sm6115-dwc3
               - qcom,sm6125-dwc3
+              - qcom,sm7635-dwc3
               - qcom,sm8150-dwc3
               - qcom,sm8250-dwc3
               - qcom,sm8450-dwc3
@@ -453,6 +455,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sm7635-dwc3
               - qcom,x1e80100-dwc3
     then:
       properties:

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
