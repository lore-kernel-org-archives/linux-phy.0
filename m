Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9CC3C83F0A
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sClnXR+8mc/gNk3vfUNnSiSM9LD6ea85dNw373a2mcU=; b=oHgImxU0DyG6TB
	24W1yL3uVXtDbDsLRIEFvZcTKJMAF62XF+YxmZAIHh0erLLM1EOcKF4fdKK13hOD8HN9e5m3qO0KJ
	p+fQB0+WehTjtBaaqeu8jWQqML1OpXlLH6pyPt9OI6ds748gf2hLAlLwB9BFvImiuraW4bdwfsChJ
	z4DeZRIerbXWNNydMAHL5zhRASP7+MVqlRmERadUcLkv+gL/HHgFYqNkDJJSuiXI1f42Tk/K8AiPA
	hinbOvLNPMhfpdeqAOFRwEnan9rOvgQMO71VFYDajMPUd9z5YIRmOewf8JtjdLSA/amPK5ZB/Yzts
	vRvArh2iCmU5VpLKsMmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSKQ-00000008MQQ-29G1;
	Wed, 09 Jul 2025 10:47:06 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQwt-000000086P6-46nQ
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:18:45 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-ade5b8aab41so1112535866b.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052722; x=1752657522; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+YzGffSdl0SelALHaNtnKuFhO/J9qLrb0FjuAIV2ya4=;
        b=VuT0KRycWLFqe5hcKXDIErXkZpJfs/rCRq8FOZ0AK76dWnTcBt9SjdBU7nRXguHoS7
         QOW+orEUDSfyAt53G9a4IjVzMu8KCoY1KtwXz9E3WtuPB5zWwGC5Il3sN4uTPgkp6TPo
         4/qv4IaoFc0aZ8H8t5WwnFHvPTsPM37a/SI9XdM3Bkp/EVA4OAmLlt3V9qvE9tUMyZqJ
         7mxwN+22jyEMchr81Uo/S/25DowsBpzAxdzKSEGXi+ZVOaJSeD7qH3P1Org/nTD/4kR5
         40Pk5yDAnONv29l1QXDjVbpkf4pSSloAFVXJh/NLfyTMC4MM6Ulkx0dz1WH0hs0X7c4x
         YzKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052722; x=1752657522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YzGffSdl0SelALHaNtnKuFhO/J9qLrb0FjuAIV2ya4=;
        b=H1bkPIbY62/8FjuLuYqowXFaDMvAlyHF2w8ty9xEvOQIqQSePXb/yUsAQQ2SD/Hgam
         DztCSa4zhvFqKHrAyeChlNXZB/XnL2EYHyzEQ113luz/MejUuZBUiLjb0iw1TnutyBfT
         SzhSo4dSlUhsz+2ox5wj7YxlDlTdb7glNEUk/OeUe4gQSMht0CdZn4XtdGjl+Y/MBjaQ
         RldPA5tkIBKRk7p4DCSM1auP/YMa8kjPZUKqiwcBF+QyTV5oqUJrnsegeQ3cohZGaQGc
         68bb1ZGw3Psq02hDetWE3wvZUAEsOMaTdjWz3M7L8ugNbmQ6GpsBQ/HkCMHy//LpJUCb
         4vfQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/50xeMSk7W0iDIPkr5lVNJRXc2Km28wMsW4fqTm6dl7MYIuSAn8uaV3C87hm6pMXjREEnzlVTw8Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZ0eTi6bRifvy6yg4DS8rc1ZCPQZWQuHWetUbYCGIxlA9Rtk3S
	dwO9xPYj8CRdsBbmD+ugOpvtsjdaZgIPtaUTM/H0lpvAHINgTx+0GYcfbsQHBgmjWGE=
X-Gm-Gg: ASbGncuCTw4y2XZNG4VoJoZrYdrFxK/Vy9ke8LDupIiSv1EOkMsre08qjuWYpVMmHc0
	jrGmedjarpSSqB12mGtIOiWjMwom+VmYPuDAD9ehkFw6yWs+P4wNdEOUCqj5nmrXlqTZ4jaheO5
	DvWtKam9a5M8y3Shz14qddPLBa3bElDVNkMsiDsGakCAQdlCKQSqX0Dmd0F5DDmzVPASoZ/TaI5
	rSQXMaerYqpJ3SPZZmGbvfBVid/n/bJRzoU3iBN+vtZhhoY/oUcYt4guR7Ocptf9t1wwDqjPMYo
	s8s4ttAxIvFXjXGSCAglwIx2fOtiBdRw7+SmI3UOXQ22pe5CghPp3vNpRT4OFuAdGxS1WdhUqCs
	A5kWxcTXkiwyUyx5HMcYA6rJlZW6p0K0B
X-Google-Smtp-Source: AGHT+IHxUaM+C2R6jkXjJD6rCqMOZdTnVavMM1pgYMFVzDnu9HtXv6fIbTrykY0qZGIVD/WAolgKPw==
X-Received: by 2002:a17:907:3f17:b0:ae0:bb16:1cb3 with SMTP id a640c23a62f3a-ae6cfc3e135mr185121566b.51.1752052722372;
        Wed, 09 Jul 2025 02:18:42 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:42 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:15 +0200
Subject: [PATCH v2 1/4] dt-bindings: usb: qcom,snps-dwc3: Add Milos
 compatible
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-phy-v2-1-4790eeee7ae0@fairphone.com>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1258;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=N1DuyPNcj5JKCc1IHvUuzahkrwJboCfhgqDrPUo+Zic=;
 b=rb96OCei+nJnNOyzP4b1MNdnFGw98NO2wwz7mhvHHcJLFGHhCzGptxQ88EaQxQvSSui0OygF3
 0BbqX2XwpQhAMBbPnBeOAM30ehgBH0np3JfuopEX/Zk0s7vD8pLqeUn
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_021844_067722_5F02B469 
X-CRM114-Status: UNSURE (   7.94  )
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
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
