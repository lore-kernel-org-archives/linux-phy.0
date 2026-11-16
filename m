Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C93B606A337
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=R+fsIuqX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yYHRPUxC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ma+w/qUtedZ4oCLLsHXn+ywdR/q8fPZmGrCRuq8dQNI=; b=R+fsIuqXJjmFGeNt278ycqucHd
	K3+kpu2mzr5km0RGyVwjzzYg2exGJLT2DVcwszKtuYYGtmmdgooyyKGwbpW5S4VRqz58kTB2Bn7qm
	yf94uM6BgU3J+AMcIjxTE9kcuHP/2b4i3mkRzsJHw+wQXnzBi1cepodVz4gIm8nElu/Rzobxg8Phf
	Ey2tp9a/3hc9Fdves2WF5jfuy25tvfG0kzM/V97dch9WSR6kznezDpizrZuNKqeVxXy/X/9ncQ0sX
	lD3Z4doeDyO9fsDMz7J93L26XtFnjDqrjp94w5YMXONjFLqP4dM4gzCCUAnYBTnLlr4gHCJzQx64Y
	sjVxdSOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4E3-00000003xGi-3sF2;
	Mon, 16 Nov 2026 21:26:55 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4E2-00000003xET-0oFx
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:26:55 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a140e7405dso41038235e9.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864412; x=1795469212; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vT2VNwBxc63eyIezByShTBVkpV/95J6JPEp1UHJT0Ow=;
        b=yYHRPUxCS8mXglWqkDuQLPxDw5S1D8EJHyJofI/Y8+91vq7tAB1T8UEGH62xCgQX0C
         2e56GzbogOg6i/iQ3hsCOrgrY5jaLj5i70Iw+vICwLE2hXoJ2KshrD7KNG5uQGCISeJO
         CL2vaLRrX36U45vt9Fo/Rt+zM8YbD6xhk831wuPDZArAQw/VwS4HLQ1p5H/j3fGpE22D
         ZAb+X7H50az7dbi6zFh9ct5jF/mabzvjzLSxzRfNcvMwEFKtSLNrT+3WQT9JZ+vpj4dO
         HAEi/e/N4oloBCvTowd0Crit4kebZyOFHl7o41gB7biMdheTM8Yvp8XWdaeJcoEaBbR/
         rL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864412; x=1795469212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vT2VNwBxc63eyIezByShTBVkpV/95J6JPEp1UHJT0Ow=;
        b=nsGDrwQO+zvhmgWVMTN5FMZV4i4wj5i18dcyVOCPe8VBnGoI8eqoPRyOlU+9UyYInE
         W5E7BF647oAEsCvhlaZpeJ2W3OCEx7O8Q3bVSLaI6wK9gWQT2HyFEyTqITBYBvhgfMcj
         vZJCgP8oGE4pVgwCACdEhdcKnCTUGL5Y8IqLR5vc3VqaIcqlJgmW8sgXc71kVG6rQhFh
         Wm8IGW0u6df1mzvK2dWcyXkssmA179yhakiBMhrCxik9q0s9gezUAPidQbkPMVh69hSf
         DSxhsDqug1MxHdCoxLmh1PWV+cBppNcxd23XJAEclLj2P86kVkk/nahhlP1Q2W38QSQE
         jUEA==
X-Forwarded-Encrypted: i=1; AL+hErF02zYF88SrSqdyXh9yOy7nxOPiBV9Sbk2zOUWZh+4dv+zf2h86wHSNZArUqyOmx7jhIZlnszf3o9w=@lists.infradead.org
X-Gm-Message-State: APuU4Z/L4Fvz4Yi6jpnE3kaue6ykH4mTTo1fKdzub8AqixjD0WbZw616
	+f5mG1o3qYIhsaLJEvJdrY1WQ6KCQ+pebFyghM5IoB+obfxKaM5fLkx7
X-Gm-Gg: AYBFou0FkaxnvxdArUmoZPRTjSvIBuF2AqPkoSWUprSRWd5Bh9eTwikgWx5PemAQYLt
	4t++OFUJ9AsMN4LtLNTlkEVjExGHJOZNpGY0qCPU0OF6SIgFIMy0SANEB7hvUBiQb81k42SUmfJ
	aGNd9C0gSkAcWDNnvhR0PtvC80PAcPxXvEtCjXhCCA+n7GY3/2ar0cICAqplzO1sH+DpS7E+RV/
	Ev3PI8snMZ1Xqhlwervf//8OdzUMVxLY7hzpIbfYDPUnawqcLKj1rQX/LGXZa6PTW+YyY1aR+Tx
	FuRj3JInWfddOQAxeEMADdviE0E3W28ves+ZF1cXpRMq+x/ZN9SmsljCQ3jU6hcEzoN3HOVqY9W
	b9aIy8CiWe6Kq6O7N8qiFj+LdV1/KmUF8+J/RVgY/Py71E6t9VYF8Qvb97WKtVc2ksIy/uppToZ
	AXTghHalKgtyyne/gHnqX2yzfbQTJN8OfDKuICNK58BIlG2IhvzVlSbUVEh4rNdha3/xvlltaHY
	BkjE66ySTKd2POaKnwMsyatDUJePWKl5aRea4zCp/PRoTAwoRjtbXt8TuXUg1aK9D5VjV0WuirO
	tQgjviNhAA8QUUuR/Qhkak53uYjnurEDza+m+Cj7
X-Received: by 2002:a05:600c:3d92:b0:4ba:e7:ef3d with SMTP id 5b1f17b1804b1-4bb559f7044mr243891145e9.1.1794864412296;
        Mon, 16 Nov 2026 13:26:52 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:26:51 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:19 +0000
Subject: [PATCH v2 03/16] dt-bindings: mfd: qcom,tcsr: Add Halliday TCSR
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-3-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=720;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=sz0jgm6yJ2qfmdfMMgsqR7Wg9ExS4UZymLewfvVCvH0=;
 b=FqcgSljUbrxAce/Wb8/tWQg7D8BxyY05VfRoM3lIlKWOtWcZxkvJ+EYJdvTvvxol8FPPRApKu
 mw5+dUw4O8RDXBA5aD2L3Fg9fYj7OF5FtJNOsGNYBuFx4Z8h2/2ns31
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132654_262321_0C1D5247 
X-CRM114-Status: UNSURE (   8.59  )
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

Document the TCSR block on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index a021e4dea486..e8a681b5e6ad 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,halliday-tcsr
           - qcom,hawi-tcsr
           - qcom,maili-tcsr
           - qcom,msm8976-tcsr

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
