Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F163606A33F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cM/3hHPV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XuK8oXkW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jivG0vAKariZF03AKs8/AhfyMjzoH7yh2ZKtOZL9F8I=; b=cM/3hHPVjGY3GMw85reXKw/dak
	uq9w6xZ+q+xtAwamsLctyr7wZXdSfR5GFsm8xyuy6fbJ5+A77JepzAhFm4xnYvJnirHWOnEVe35jX
	b2ZdmjxV46li6Xw8x1hD36E76R2u3uScVUGmbeoLKIcIWw7xq3WdX1q+TtbZl2IW/PK8D9nX1ggMu
	eUzmZ6j3/TuFiM9NaDVZNNPzyV9WhHR3vUNHGTFG9sfwrTVVZ5/ZawnJKDfnoMAj8dWf3akWfRET5
	l3EG/pSLlm4+bDeCpjom0use12qkCoiLJQ9Q8sP/yh6jTBrsAsWjfyV4gA6pzxRSiHukYLXUhnnst
	R8R2CiAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EB-00000003xLV-0Jhs;
	Mon, 16 Nov 2026 21:27:03 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4E8-00000003xJO-48nz
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:02 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a140e7405dso41038985e9.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864419; x=1795469219; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LnAQsJm0J9tjLLptwYNMgJxavVvbhamVp2XrX/3IRso=;
        b=XuK8oXkWnFhRzaaqPsjhMIkuztFvfd5v1D9yMFm0QBnNxtUZtgbzJ3eVaAD+eW+H4x
         D/HsZ0DG1jNe7KRcIzKyscMjvFOIJ8Kq5hHoG6bDmMGJKa2DE1N4w7fA5H60atSM1v4O
         h3x6W7djIGO8R8iD6dcqdoe9tAgI9j+RQxJdViqIVK15wdNO5u1Zbw4I4gZmYuAOjwK1
         CAF0pFS+bp9crw2YxNpXzZR72lV+L3jUmG9jpudDmKUUmE7uRYj5uOBkKau0eZfckER9
         nwvow+JnNjSCT1UAPnT19dv9w1CoZb11BRYJHfVJjdnS3ojLMFUAwfV/2uo1HZT8+qdw
         qwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864419; x=1795469219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LnAQsJm0J9tjLLptwYNMgJxavVvbhamVp2XrX/3IRso=;
        b=seCO/jpzCNd8bbOXIHk+abNkXVqoGpC9u+qxRxvV899878FTC3waqRU7Fr+fJQXXOI
         Y10z2FPB3lKAwPc/MU1eTc1UiEXzrnf80K0Jm3QmdEGLRPO/+a4h8kkxNqoj11cu6zpd
         W/aWT2tvvgBdJJhYP+Tcc3RheL1K7jLcjoqLOp54RYHuERm2GbV8r/ZepU1i5uJZ6KDR
         cc74u7EjlVOGxH8RVWNoFR+XZmtmrqfJCRrKXMQQzR4p3O/f9V7pJrC4Aw6RdgJBTfaN
         VBwDJ0+xd42mE/WbkknOLit+JpgzvfuQhLj3SoFeQBoiRS27ocJYK/3SA3wjz4s9zpYl
         o63g==
X-Forwarded-Encrypted: i=1; AL+hErH9gWMSG8Jop60z6IKyiWAmNpeDBSeUF69I9EPnIp5zICtaMVb+43FWvLnrygqHxTrLWH6C1UWh0Jg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+HpJ43KCS7gc3NHjPxDvBYKH+y/O/iAu6ufipymkGiRoY1iNTv
	wvu6lFrPPkAJC4Rlr/Kp03u5KpozIwRi8Nwrlos45SjAGFGN5yh4sBAq
X-Gm-Gg: AYBFou2uybJC/4BALuiKecwCim1N+K8CYaFznWMWuIBoImnUSktWEOJt4QY+TDKmz9s
	YbZyh9UQklIQnkUuXBo60IDJWF0ObdPukPUNnmUyzn2QyndAu6wIgiHNfHYQCLHH2toJQy+P3RW
	bHWP0V8d0RSiPxuYxKoWKrvSJbighuDCM7u+KVCvQlAOxnEc7cSyPY/CqEwlbljQ3ezCRn7gdT9
	1sGWSXMnJieYisWbScnd6i2vPu4h1B0VsTa86dTyVIrJ6l3FDNDlFD4jFfM201HNwEm7dBWeu1u
	ldlr2mBMbLbApySFkxC8dBXhsbyXZv6AnP3h8om6mSB4/bS8wRd0EAejrpdVNGNrbjp8lFv4/SZ
	WlINm3gdtlZxdWG/22dItygZBCfg33ph+PpmInNsed53Mw+vhYMmCvWP2yrLuKxtEeSlre5VIrA
	sQOFFSHUHuBvoyi6PMmQAxBITi/YUobASf0NAbQAvOCXJR+NcxGKKRO5nuHMYVz//xip1fqhDLb
	OzEKgo5uwTFth9bIEd8YE7gv4MtIMqtuzeVPRaNNcFJ1z4ta55+/4DxzVKrM678UO8b1xLVUxGL
	T81SegpYG19ipdrn3/5tQZsp7/t7MCXWsuPnJhr2
X-Received: by 2002:a05:600c:482:b0:4a5:75d2:c104 with SMTP id 5b1f17b1804b1-4bb55a59c9dmr184592375e9.22.1794864419406;
        Mon, 16 Nov 2026 13:26:59 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:26:57 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:20 +0000
Subject: [PATCH v2 04/16] dt-bindings: arm-smmu: Add Halliday SMMU
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-4-2c92438c6c46@gmail.com>
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
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=1185;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=48k8tRM2Ds8B2KdX/k6MNHyKgJdAqOSEc8lLmnEqak0=;
 b=jdhSJvOgnkWCr3N/XewHYvU/DMh7fs9E9l4PMB3CyD3bi1r+fHKz+jcOeuCkYmmgxW1wl/a9T
 LhE9PjP/kP5CRKJpxWsTiZqjVGzsx7uCz1lP4rAnXmBZayBQqDt+vzF
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132701_064386_9BF9D36D 
X-CRM114-Status: UNSURE (   8.96  )
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

Document the SMMU-500 on the Qualcomm Halliday SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 6748351c7812..925afa8cca8d 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -37,6 +37,7 @@ properties:
           - enum:
               - qcom,eliza-smmu-500
               - qcom,glymur-smmu-500
+              - qcom,halliday-smmu-500
               - qcom,hawi-smmu-500
               - qcom,ipq9650-smmu-500
               - qcom,kaanapali-smmu-500
@@ -629,6 +630,7 @@ allOf:
             - enum:
                 - qcom,eliza-smmu-500
                 - qcom,glymur-smmu-500
+                - qcom,halliday-smmu-500
                 - qcom,hawi-smmu-500
                 - qcom,ipq9650-smmu-500
                 - qcom,kaanapali-smmu-500

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
