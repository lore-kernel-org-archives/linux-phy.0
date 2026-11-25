Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8612A606A331
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cmKz3gNA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QbyKzcw1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CxZVRcKLzRlB0qb8llRNytOt/oLuL8ZSbsij/MyLSew=; b=cmKz3gNAveB7dSPMWVHLXqljLW
	CvLgLGThOjIrK02prZXx5PI2/6I1hxJfKd8jWdOd/chsbHxQcw9y63QPEWzsEvA0rl232ZlikNWbX
	ndQTlgb2cVfpcCqzRn1JDXbGuRZPU1zTA01V/YtoBctNIIcIVgSYLC6/c1DMAiQY6eDoRnwBGCHD+
	tubpMNCu2zg/RygpW6L6p1npqgPrQ2QBblTZhXofRVJfWm4Wzlo5RE8d4odJR2mWhH5JxyofyImX0
	qA03jl0kRxev1QkMBCgeMR1QCEj3LCmGGRcVH9CAxYhaz5eZLyrfVzlLR5OOZmR8AAGqtNcEHWRyU
	WMGZSXiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vA-00000008Je2-1Ckd;
	Wed, 25 Nov 2026 03:43:48 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3v4-00000008JaX-1M4N
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:43:43 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4ba013938d7so48470015e9.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578221; x=1796183021; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dpKnhnsaRxCp3BhNS6dMqX7R85atmEMYETrpv/6MbAE=;
        b=QbyKzcw1jFZskRLA/A5y5xz3gnDO1ZDruyVqk5fWaJVVY7kQ3vCQducvCiwgQrVLF/
         ye9A2WG8x2I8ch8ZC3EdBHYbfGNfhZyivX8X7xzM9iohwWfFXt7l1El+XREq2NAUZdaN
         bbxNCjtnDRMvldP/fExMG7dYuPrtGupnSUPCetOYf8dTRgh1dfZWK9CIri/vQkpA4vai
         3GAj+tYwAPwoJFP+m6Bxtar1I/ieG4AJf4z4Ugo3D21mKJoShL/ImYktJujGBqF7wypm
         ZDo7MI3ruDqijWwSMNl2Vce7sadQqSJ0iWi9fk8AhZBRij5L8MCy1E1S2nj++Ha02o4G
         B6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578221; x=1796183021;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dpKnhnsaRxCp3BhNS6dMqX7R85atmEMYETrpv/6MbAE=;
        b=ePMveW2FWjnh+a4bzcQle4si/tJpt810efCH4/L8J1vV85eyb+r3Q/3I5CSoN8HF9K
         aEO1PiFiJwxY8hEkSI8vFCH1yCzVFfM0PSVXpvKz4PQkwxY/cBWcRy06v1tjmFQhtV5H
         tPhorZAPKjzwpLRmH3/gXMz6KY1OiH5BnKC4gnkcs0cYhXGMdUYLl9VqVmitFHVlpVf8
         XmUstncptPaIeDYe8tVDnxzB3I6Lne7jy8XPOIEyDoDkVmsH++wtL5Q8oHcj6wNw69Br
         G6zkX19vgW0YhlVo8AGX1CuOGj/RLJpOlECm+nkLazSmsB+ZwWypNpAUReBYn9AF5yIx
         rI6A==
X-Forwarded-Encrypted: i=1; AL+hErHSmqo29JOIXLKe4d8m3JWHv3mmzwaP9C7SXdsng8lU/2smnlDKtL52FUSkll3e95PfVbBWpBGZN+8=@lists.infradead.org
X-Gm-Message-State: APuU4Z/O9HkU6iCD1wcBpmrm3angWF1tvtIU2CCpw101V1+UezptBH/L
	y2yRSQZvaQrUf6fhLim6+ztwXVilBqN6cu3QnHHwcOsGUV7+pRAJNMrZ
X-Gm-Gg: AZFdTZeJDQqxvsIT7RdJ+A9D1QsUiSVV8EasPuHukFifqi5MJLzmusZQRr/snPT7jTk
	o3NPpXsyG9Xcapbhmzpd5aM8JMcBJDKDpPxIUPg/S48hOv8jWqbq8CqtJEs1+yYVFhhGrtCKKUY
	lTn6tXyOkKZ8IyKf5YIsZcOhcwvkjmgaelE/NJaWjSIurMP7XiqvNHymj+vSKRLpNS8AMgxvGDR
	/dXJY7rEA4EShk0eQE3Bv8XPxv8Qv1y5LT1QELFaDSkdrP+de4+nkU2jCRlvIPNrgcRaBLajc9P
	QllkmKn8kzSi1gRMyIuLZOGBRNUbi9Tus4tBpp58RHtwlYGQ/x/2Nu5yt+zu4cbx/5BParQG1+p
	r6acNVfvwONm+IrYSSh6wuxuPid4ZVvYJgAo1kzUBEUNAW4HSgj7u5VI3Kzim20ntHqeb9v9qx6
	rPu09NA98pAnE+dVpXiWw7uUuk2IPaDL9FMl4LMcOB1o/cHr+uDWufZ5FJcfe6HQ4U4EqyOI3b2
	erg5nmjUVRszZlU4Ob85a2IvfoeYNvKDsc2akSLE46aUO5ywahCmEnnmHFbACx8HHlgp5qYPdCJ
	j3U9qNR6CXBHJ0erIqAlvLbthckX6fRqfdFfTQ==
X-Received: by 2002:a05:600c:34d0:b0:4bb:6a5a:7839 with SMTP id 5b1f17b1804b1-4bb889428eamr328092505e9.34.1795578220699;
        Tue, 24 Nov 2026 19:43:40 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:43:40 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:42:58 +0000
Subject: [PATCH v3 02/14] dt-bindings: power: qcom,rpmpd: document the
 Halliday RPMh Power Domains
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-2-5c8311c0b70b@gmail.com>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
In-Reply-To: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>, 
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-pm@vger.kernel.org, 
 Stanislav Aleksandrov <lightofmysoul@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=1076;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=2tteAd38AfHrvk8Awl3RAniXNSdGBzL0LwEwE8e7LoI=;
 b=5C7/JmmmJaij3ZDCjC7taKHJ7ftfQrXNJKeux4QbuaH+Zgcx8qkDlh+sISv0oWyhLHGJ/5oZb
 fvQPpset2HKAWFH7uV37/GtdVaAFBb3EKxSiKjnd+R0Yi73lf00uJQF
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194342_388219_9F913F16 
X-CRM114-Status: UNSURE (   9.46  )
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

Document the RPMh Power Domains on the Qualcomm Halliday SoC
(SXR2250P). Its command DB has the same power domains as SM8450
(CX, EBI, GFX, LCX, LMX, MMCX, MSS, MX and MXC), so use
qcom,sm8450-rpmhpd as the fallback compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 8ee1c25a7c9d..663baae9cc64 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -82,6 +82,10 @@ properties:
           - enum:
               - qcom,maili-rpmhpd
           - const: qcom,hawi-rpmhpd
+      - items:
+          - enum:
+              - qcom,halliday-rpmhpd
+          - const: qcom,sm8450-rpmhpd
 
   '#power-domain-cells':
     const: 1

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
