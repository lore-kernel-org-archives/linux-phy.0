Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEBA60A6F43
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VWYEgeDt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=j5nYnaiB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2CGUgbfQ/ypaN2bymcD1jXTaaPLkd0q/0bSnBVtWzuU=; b=VWYEgeDtayCoP5AsW+Vo0K0V7u
	GQkqeMx1aDa7qH/gEmA9ZBNEz1WwCx++HCXwW6tSrb2sujYgrlg6EnFjBCu7WS75ECFuxo4dRkmJP
	4GQjG+6VdJzUvG0op6eFOIpCojyFEZtaXLbKme4nrb+nV+cuEC5rbt2mIgZmatQd1dcjNTszk/hp1
	3CRaxsaUw3BsIJdrp8M6vkyz7J50FFO0hI61FyvqNfF2uQt/I9nA69IbG8EiqzMEPDlBEYhu6DcTO
	xv9CjeZBNJrBOpUOlTbY12QRMKwdVdLEO7F93AEWT7WXRq7oFHT4utA9twbIZChc9HdfXtN5AvIzf
	pjCZqNGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLe-0000000GzIj-3znT;
	Mon, 09 Nov 2026 00:34:58 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLX-0000000GzBp-3eZr
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a2072b9832so1969985e9.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184490; x=1794789290; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bqalaJtZ5/g9y9/6SBPqjpN1E4M1h8fqL8PuTjv/KSk=;
        b=j5nYnaiBIgy7UVFszLMMS/qGW+EyaJtX/c2nQ5dGZERHc+hZ5ix3Xzb6jR3HSKmCha
         ATNn0eHYuAaTSvkTBT/LR/fClq1k+uJHpyXXXLvqCeg2CqULDMVXYJzG+mMTDC0dJ48Y
         4VONloY0eu2pldrJ343FPLys25uDndzxhUq2KiowDL2o1svor7ffYPFRO4QPrQDeoiAt
         tjJwW/RFdbRd2VSqTNA9I2S+HuPHTQx9anKhnf36hwKcFodVoGfmytaK+4LvufNCDhVi
         2jNCuqwLnQB8+PFTFNuQW/99HP9/X5wNF1CSV8/cPH9DvViXpwAv7Czq51pFVupoq8vc
         7v+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184490; x=1794789290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bqalaJtZ5/g9y9/6SBPqjpN1E4M1h8fqL8PuTjv/KSk=;
        b=m1ieqJamOSVwN1tDre/osaaPuGK5wFQoc3854zsMQsGvlcC3S9+hku19UIRc8LdW4k
         I/ill5tWxuOR3oQJ/w9KJR7zenY9uxjPHCDoZAWl+Mt9zdsgC6mUVW3gv8y3g/Ys/mgL
         hPSyjTBf91c9zvJFyHJhhKNZtTp3fj5oYD7YS3jlWxj7CZpAa6nHdVnUqmIHIPIU70jR
         u1sqNhM1ISnLO3sbx42JmLWYlrR1CClxE+gZhymuz2cZyX/wTZyIJ8oA/Kev9WSgERVt
         bjB8Qt6Xj2jGNvqAHboXM3My/6yMgPk/M1a1ddP0irXr6PfYiIiNAWmnLpt12nfJvqtg
         wHww==
X-Forwarded-Encrypted: i=1; AL+hErFBeLtZvtT/2167bsEwDKDvrFTD1SWgyU8UGiPGhzhnH0UjKl0oLgQClfhDm61WiJnJtQ22mAXK80A=@lists.infradead.org
X-Gm-Message-State: APuU4Z82E7k6B8DIBnGUJ8rgJE4CJKKN7ofdAovWxImHl4J13HCFt/QX
	JajnX1tNGVzX0Gp5A482bMSbkLo8KsP4qGpyvI5ohL0lhb2lrRZ0ZM0I
X-Gm-Gg: AYBFou1HL1rFGac4AZFlCIv6XAV6GAhCjcD4d4ZBiKTh3BWBs7xVsI17hjjMxePVncg
	q1EFF29sp8xS2DlQJzEGYZbUawyGS3Ze10IeAFe/3PlFWBTtXXQR4XPnCLpvAXn7Fo0OWQJKtYT
	wVb/DSl1e1bSWgsEn3t7euIudELcia5O/N8Tf9rlbycEBy3E8I5sJxkKuEVJ0vO+Q3GheGPJlQ7
	GyWie3kEIN+Bh7d31stQh627Y+ksFIblDdcIr4F7cP+bUkE43lK8L0Etu9P1jbU3krG7AmiWBvA
	SmcZUN7/qfyky72vOwpjBSH7qJjnacmTSHz/a108uJt1Yod6kaPvGXC4/54lWS5YwBUTTwly9bK
	v9wSEsaJC/ivUYnXWln/7lhCsOnkvDix082goVdVjnJlcxelcTH7pHTo/isWTfIYe7tCorJrjfb
	eNyROvmwl/XZY4XYF98bneEiU2Ce/nan32t0MVXgNBaR2Xp6lzouEOTTSlhnsArLnfasPkSyu3a
	XvuOMy0EL1RrywN2waZXw7JVl4qy8z5XxgCwfxzp/Yva0ZoCmPalGuWJn00HfmZz08+jEjqjBuG
	+U0SUBvtavFr5DG/fOkVFk4A3QknTd1cAzvLyedB
X-Received: by 2002:a05:600c:6218:b0:4a2:1002:223e with SMTP id 5b1f17b1804b1-4b8205955e1mr111833455e9.7.1794184490117;
        Sun, 08 Nov 2026 16:34:50 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:49 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:27 +0000
Subject: [PATCH 15/17] dt-bindings: arm: qcom: Add Samsung Galaxy XR
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-15-289114ab8197@gmail.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
In-Reply-To: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=822;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=GR/L35KkjRTQHIwoej6N0ZVQiPJDeokJdA0dH1/xcVk=;
 b=+pMC0hU92qIlScFgbvyLG0yeciXJR70jYMcQsgbMkAruvtq441EcqoAR24w8+H8PddfDvxdW7
 NeEMu0FiaHdAmbbpArcsFtCmr29OynUnIXhIC1Struq0XQSLzW/yMcu
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163451_936973_A15BCFC7 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the Samsung Galaxy XR headset, which is based on the Qualcomm
Halliday SoC (SXR2250P).

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 121ca557ce1e..b96ee339956d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -94,6 +94,11 @@ properties:
               - qcom,glymur-qcb
           - const: qcom,glymur
 
+      - items:
+          - enum:
+              - samsung,xrvst2
+          - const: qcom,halliday
+
       - items:
           - enum:
               - 8dev,jalapeno

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
