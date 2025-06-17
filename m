Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75111C7115B
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwdkLXebCWMKXVIcTSa+01Gv9eckTzADpAxhe7Z2f+o=; b=cNgFm4RPfQhl2K
	tW4hrXl3IaQ2yJXxlKhZ6UHVaZ3od2P4TO1HCc+/ShQJMecaZ45IfxfslvZfKsxyd6jg9QY2NHcdJ
	CLFbJUX/k8zbTtmZ5I1BGoSsE0rpHA0AhAXU4KywL8vGPWeXSsk0JBz7bc9n/CY/ZMN7xzxR6Spyn
	iLReqPnGN3uOjIP/yzyGbnbdJZTyNqHjbi4C/ydffaOo2/sOrSSuhLDkbTcshEAzzHhHj8FmFsyAu
	4JB0xFjTHuACtp8aYtbMXGgDnj5vlsGW14iqhRA0ZANjU/d9urNSTqWEgVc6vDuEGrJgaQ8jaC3Dd
	DTCLSbTB80VslO5kEM0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRsq-00000006ctu-0p0Q;
	Tue, 17 Jun 2025 08:41:32 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRed-00000006b6V-1Tgc
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:26:52 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-605b9488c28so10490132a12.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 01:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750148810; x=1750753610; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=3LT1U7K5uLigKN87Q7JOIATe7f5THZGlb5N+xHVtnyVXH+r95499E+7H27fVW6qRAQ
         +a1NaGsTnIMMSVdZ1GuZdu7IEdTjfJU5W2ayNQr+Eqdtvdbz5z53FWKPyH1Ac3cfaPFk
         c3yzXz8E1IL6Bcd3+2SzwI50Wlxx3/HsAeW97aIHOJMuR08giuEWS/FV1lCayZlmc518
         lr/hw4JbJwJGAuRDOK3SwAKr/jASeDK9VYCI+CP9KvOaK4aeeW5Ka9QxCBs7khBbLPJL
         qnG1eWbIVug2NywnmZUAfd6NV+aLNz9l41wq8o5+CdmjY6zqGwdclYsr5P+0DDmvAKnc
         1ueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148810; x=1750753610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=COjz44SQqJFiLKbkPSqzBtZKvJ+T5jfNTosr9U+GUweF9/hhqTNdrZdIBm9W7UeZtu
         Q3R938aodQQcbzbSxBi3mwJJjDVqdTbLhQeEnIwVIPmbJbi4rNPZ8VhX0sjuI6MESBlL
         GM1Jnv+6g+16UF2ERv0ap5eyf1xf8MnHuAJiSIIWOwFavrN7/062Vn/UDVjIIK8fWliw
         1xN4+vT1YEoFvyPYSFDfJqtHgJ0SNolVshZVw5XE7UAmeE6/bhGtLV2tr2DUlnYVhQzD
         fpacpUfx5RELTupDOo1Klg+Rui9oDn4APrXxh8n0r/MG2Y36d9y1DtySKDzqbDNwXPks
         RZfw==
X-Forwarded-Encrypted: i=1; AJvYcCVfkow/psNyTQeugTH5E5m6ygpnt947K+IGgqi7M7/DHwGdFDmu/vsEly0AZXYXL+nzBhO39JOAQc4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBD5qV4Ra9/en2WPdYEkrnHYxXSs8vIaMRhPaFWjATJT7WqN9d
	GlrriVNJPnl4JJqUlfBTIVMiezZxqiavKfqJ3WS9OEqt/e4CoyOtCpyZ8lJOPcmWvLNM9Y6Hses
	DruusDu8=
X-Gm-Gg: ASbGnctU/pe9V/DWbTZ6U5nPNE0k31ahsCEX7jO76EV0bnuoZ16C2B2sluNWugC2bP1
	JwtaM64YbkrBIXhRQL5KyPh8+1TTfqmCcE5ylAacQbpusG2tfwFJvfkf/rz5WLhG02QiGYNPJDu
	7MUHcLhBfZNCzkqgsuBwsWAha8D6/qn5fR3hzllJScZJzQAEpAYSMc8DU3S0F7dqed0yMbmFlWz
	AEO7IDFPutB+luRjMpHHOaH0cxioZ4bi482hxERLxRTbAjYhk8vsceogwnE0N3mzbH9bduaqDJC
	LuRHKHP9c6ciZNuywPgFG4JotFMpz1dGrBCm2qjOW9vtNoaOg5icgwe0Kg6CSUxVlCMc0tBhqCC
	1Yp9Z94hp9T8KCVmJWDghNqk8CKRepi1y
X-Google-Smtp-Source: AGHT+IGBvTpgEQKuySRgZVEiRHZ2+eHm/TawSN1WIXCTKv0QJZ0mFrD/xYMqMzEBC005W5SZjLK1TA==
X-Received: by 2002:a17:907:db15:b0:ad2:28be:9a16 with SMTP id a640c23a62f3a-adfad4829eamr1145395366b.51.1750148809831;
        Tue, 17 Jun 2025 01:26:49 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fd993sm840343166b.94.2025.06.17.01.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:26:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 17 Jun 2025 10:26:35 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Remove
 default tuning values
MIME-Version: 1.0
Message-Id: <20250617-eusb2-repeater-tuning-v2-1-ed6c484f18ee@fairphone.com>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750148807; l=1248;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OuFHBPiSDnHElYnOnjmGAqSP02DaggUPcI3IBLQcgxo=;
 b=UCQ80CGhJn/9FqQFeZwlp30F3hVlXhrqM3yVHy6N6PzQRXNd5o3I3x9xZBw7MwlAHFwnNd4d6
 GwTHiLUsOF9Bq/0tBC90+tbE7BOOReriWMhCM7iRdLHn+l8kQzBkcpo
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_012651_384096_24300529 
X-CRM114-Status: UNSURE (   6.88  )
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

The reset default tuning value depends on the PMIC, so remove them from
the doc since they're not accurate for all PMICs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index d16a543a784887eabc69faae2233057c4554be31..27f064a71c9fb8cb60e8333fb285f0510a4af94f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -39,21 +39,18 @@ properties:
     description: High-Speed disconnect threshold
     minimum: 0
     maximum: 7
-    default: 0
 
   qcom,tune-usb2-amplitude:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed transmit amplitude
     minimum: 0
     maximum: 15
-    default: 8
 
   qcom,tune-usb2-preem:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed TX pre-emphasis tuning
     minimum: 0
     maximum: 7
-    default: 5
 
 required:
   - compatible

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
