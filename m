Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B63C28B2B
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 14:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvpaadNdFks0hOCncNdzGWLQuHBn13hZoIDHKpLYCSM=; b=UKz6bYkxskhA+s
	WeaIPsW/nRlv0hurmoY1TjZWvTgGFVt30tvsGxDUSalbNbHU3t1uWGjAxcZ7Pp7dd9tSVjX6/vJ3z
	a5sgOmTwYa3WoxATAjTX7CPyP7NOWSejsSl/Vf3e8XOgk9VdqkPG6WKSgRWuJvb8Agjc92l7z6ncJ
	tUNfu8kl6L9v6EaZWD8ZSpyWjGkOLFZ1GRKUQ7pJCdMvK7L9/f20K4CeLllo00cia/ZhdssyF/K3K
	z6IeZogR96h/VF2hTvOJnTiMelmoql1j1m/vVe+Qb3XZYnhz2vLOpKwO9oR/5HnEpsnGHOyY0GIpB
	CldMj2rmKVcw1zmL31jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwl-002ncx-Sa; Wed, 17 Aug 2022 14:23:03 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwi-002nWH-Th
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 14:23:02 +0000
Received: by mail-lf1-x12c.google.com with SMTP id c28so15156767lfh.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Aug 2022 07:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=VObf1U/N8UHUESYSVlFmc9b7qCeolOROsEojZwgQxXU=;
        b=gVYndhUj31KN6r5OGRirSYpbDRRhAzMsEQzf9mMnWgzmNuzNcli4K+E1Xc4KsS1oR6
         hwsEy+wxkgcFZXcUT6AnDAK2C2LVRwZNKkRp4H4ElXUXRSZUhLdykBiZ858usfzjH6Go
         NrtIgW7CdarA78voMkYhI6P3hDicr8CtfQ6kQAztgLXAb74ooy7mqpaQiy7mClKVA5Om
         MBd/Ofq48h0KxS5Sa0GP9Mh1YJTXUy1+2Ie5j/Ytov0+A057ulaYiYu+3du9Qn0tmUuI
         yvY+ovsOM1vDhUc9mNrnVCuBgdEHa3x5ZIBqWd8RUvRU1UyvNpsbnc1AbaNKT1kTKDzL
         6I0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=VObf1U/N8UHUESYSVlFmc9b7qCeolOROsEojZwgQxXU=;
        b=bw+vEt28t9RmTIz6g1zuzQevwQDPTXA1kYDEllgs2/3/k6SZfDtz3URLUzF6Wy1dPT
         X4ere9p+pqfgzoLQEpeotehO843gi2Q5AW1QGt8jHU68h0nJXJ7rLkGWVp9G3TZWVmjn
         n4SAqShKh9enCXzuD249mNPZJE05CIYNBmmgs6DTfkZZtKsiITDbmrdFSUuUBV7tQSuk
         SeM2U+PVutnPeif+Xm1EO+hTCKi0I/EY/h8EyrkAORX1zFSUjvsdQt1djrjqFHYqok3U
         Tik4StisrMZPrNl14Q7eqTpM2dT9obZ/eIIDsDfFeqZVy25w7rjUmn74rU6utOFgQerJ
         X/VQ==
X-Gm-Message-State: ACgBeo1+9SPi2WTLZ1sG/RFolUNTFLrA7OhH/Adi4C6sPLciXPezwz49
	WYMKTDnXN8zHlj2bWH7t8Q7Hwg==
X-Google-Smtp-Source: AA6agR5kuEiHgb92CIQVal7Vbgb0X96KkKeqdicRbNROnlHSGkaMem5bDkh4iEDOZ9FGxCYJe8GORA==
X-Received: by 2002:ac2:55a7:0:b0:48a:ec71:1e4e with SMTP id y7-20020ac255a7000000b0048aec711e4emr8046413lfg.262.1660746177155;
        Wed, 17 Aug 2022 07:22:57 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u1-20020ac258c1000000b0047f7722b73csm1704647lfo.142.2022.08.17.07.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:22:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] dt-bindings: mfd: syscon: require specific compatible also for simple-mfd
Date: Wed, 17 Aug 2022 17:22:46 +0300
Message-Id: <20220817142246.828762-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_072301_003545_A3652BCB 
X-CRM114-Status: UNSURE (   7.84  )
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

The syscon bindings require a device specific compatible, beside the
"syscon".  However schema counts "simple-mfd" as such, which allows
simple-mfd+syscon to sneak in.

Adjust the match to be sure simple-mfd also comes with a device specific
compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c958086a5fc3..a64c7a71e6fe 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -72,7 +72,7 @@ properties:
       - contains:
           const: syscon
         minItems: 2
-        maxItems: 4  # Should be enough
+        maxItems: 5  # Should be enough
 
   reg:
     maxItems: 1
@@ -93,6 +93,18 @@ required:
   - compatible
   - reg
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: simple-mfd
+    then:
+      properties:
+        compatible:
+          minItems: 3
+          maxItems: 5
+
 additionalProperties: true
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
