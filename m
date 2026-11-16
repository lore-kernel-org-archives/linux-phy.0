Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D2E606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kCHJvn0d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FfHaTsio
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=B86GU7qYA50y1gLLUGpye3gaWi0gtvWdvr19eFIZGAQ=; b=kCHJvn0d0MJWmG0qmgUNujXRr5
	x/fUa6C/sdnvGUBhj6QaKiOHB8FvA8HdN0N6Ljty82F/apRjkNKhjP6O0Hpu5dKeMkOMg8wRWQlPu
	ediJorsZb39IJ9pTBaWU0Kle8uw9xEUKTMtdnE475U9IN3PxeWPbcFZV3q+yDvq8aZUEtLaXgM65P
	AE8b6OCJLGdKmCop1TcJH5FPwgSNf1NX5mrJH++L9jxSzjdeo7GnjLhFDI3jN86KJe7RoWr22vFaM
	zd01uZKLjBUb6x58/L3lE/hLRwQFeZ0pIC2y9rkcE9rMXR8fqFQESollgSX4Z4ymTLZweCpBQX0mw
	+z69sCJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EK-00000003xS2-0sB5;
	Mon, 16 Nov 2026 21:27:12 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EG-00000003xO5-3Veb
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:10 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-490f38e9688so230637f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864427; x=1795469227; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ro51FgAwM27DOCsfxJX1DqcXySD2o72+3qO5nSN9dQg=;
        b=FfHaTsio/nnm1EAfSqm0IDvDnp3hMkYxPmJuV6EHfqLuNN1GMTtwzfs63mc4mGXhjX
         /wKV13qRsdHmh4x5TICq65Ao126SkdL9bLNvlq/7pGyL1DSBqjuLYSdN2PC+wFkCX9il
         qv5zJ5v21kQKndbMm+tKsAYzwrqKRF0YFi7mbGD031JJS4mz1Z+Vk9e9Q9Ur2dw74ud5
         969R0cbEi8eeEvHFSC4Db/Jzyf38lGfC1a+gYId3yFXc46O1rWguv/qvgKFQ4sowUaBs
         oCTmvrirSbhLTGH86rYVMSMj6Obfw5buQ++aLwx/KJpvP5bs4lOuwXy2Jfnct/7fERh/
         Ve0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864427; x=1795469227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ro51FgAwM27DOCsfxJX1DqcXySD2o72+3qO5nSN9dQg=;
        b=fSqxzzGiZ5nrG8otH7eYP5BHczaDaRWEsl4TmmbX1dQLZw4+/zifsKLlCnJ2aBSKOW
         mdfV/4n4d/kmTIH2V4h6lpakWPMX+G2Iu/hFZbxbr0E96yJNb4BPR0MJnUGR/FPpFjh4
         YfoouKM7K5EbFWUhahzyJBkTePjWF10DW7Z6KeJJ0U/n7vFsvmIzK5/PRB6w1GzZeliB
         RhvF+JRnnQznWgKapd8WHRxCezTUO7CW1C5dywMhcXEImvZeE8QhUg2CKl4O9e7it27H
         x9IhQMkzM0BjQsX1FCUG7RehaRkguykY9Sxs5ZUayd794sypo2EHbteGs+1L4/rbO/68
         EQCQ==
X-Forwarded-Encrypted: i=1; AL+hErFkC5RcdpHuCJagmX+WmqHJOpPwtoznsmcOZHePAc4zT5BmFA1F5ipA/mfqlleN0ZLu/tJPbeYB66o=@lists.infradead.org
X-Gm-Message-State: APuU4Z9xu9pzUPJ+cZxZGIROGMoRL1KzAf258JoZLIbnaolaRE5v286f
	YCNU9Wf0PjNlkpNNKyOPMilBtjFo3iqhlYP1qNUF6sVECWdJXNOHPcdW6BN0N2DFLedZNA==
X-Gm-Gg: AZFdTZdBXRX62YidB91bu+JgNv+U+OLJeh54uujaYCOtFZM0gx23A5NKb0yFCwNSUH8
	ZZjszrNu8Br8ilHDTFycYzI6WRDqBBwOmh7BRgtMCYr06hib1N753gRw8RdsE8EZYyA3VqRnlyO
	EimTNRaiCj3P4JvlXoJPEj8HcMrz25rrH9367aqlr1yT1u/LFgoD6xf5kahd2VIStlVeBoiT/b3
	04cKN/PlXbUOIQJ6wJWFXvc15Nr9Kcj7dPli0qFd1Zc6hYoFBINL2VGIreAPt0lGuSW0dpwNABn
	4NDAOHB+5ca5juVXreizs906BT2jYjA4BKiKmCkZs/o6GZFK4YVF+nAwDK+t5wAO8/Bk8ub93wB
	2O+PIQuv8QawdMLPj4EJ6xkIrzI21SSgluuzCR0Q+O4rCO5v4o1mzmltvk7W1oajE1QRZAiqvbx
	qVS/0ToA2iP4ZdHfw4jWMyEgVgXJ4ymthJSMkMfgtLlN7oCW6QLPFahy+AGql/fPDzdF87pPXaa
	4c9LYKqAZYth/lszuanHKTASXplUioWZYiha7cGjecHBsLpNJe8WhEuodK4CGYWKGHdRXcU0d5O
	fsz1C3XSJ7JGGyKp4wm+wfpC3Fe2fgyYtXEAjjOjMw==
X-Received: by 2002:a05:6000:4a01:b0:48e:7833:2e7b with SMTP id ffacd0b85a97d-4a36c30c79bmr1458441f8f.1.1794864426917;
        Mon, 16 Nov 2026 13:27:06 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:05 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:21 +0000
Subject: [PATCH v2 05/16] dt-bindings: usb: qcom,snps-dwc3: Add Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-5-2c92438c6c46@gmail.com>
References: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
In-Reply-To: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
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
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=1289;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=cCyX7eu7E67i1+mb+zFb+/V3MZ2Z8Bvs+BbDvfy8HQI=;
 b=jodb8KTCYJuS0IWgZE7KB4t4x5w4vx+XqSva6vd9XaFcHbRLapvwh0kujvjIVh3aEijgselYV
 FDfNsOtrAj3APDDTnmVV1I35ZxWejVLlN13Q6QOSjvxv3VTGu5EUwMp
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132708_905192_497E041A 
X-CRM114-Status: UNSURE (   8.48  )
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

Document the DWC3 USB controller on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index b77c02c64d45..7a8b72d2929d 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,eliza-dwc3
           - qcom,glymur-dwc3
           - qcom,glymur-dwc3-mp
+          - qcom,halliday-dwc3
           - qcom,hawi-dwc3
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
@@ -209,6 +210,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,halliday-dwc3
               - qcom,hawi-dwc3
               - qcom,ipq5210-dwc3
               - qcom,ipq5424-dwc3
@@ -570,6 +572,7 @@ allOf:
           contains:
             enum:
               - qcom,eliza-dwc3
+              - qcom,halliday-dwc3
               - qcom,hawi-dwc3
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
