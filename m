Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD77E606A326
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DffqdMCE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=a4Ao0u4N
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jivG0vAKariZF03AKs8/AhfyMjzoH7yh2ZKtOZL9F8I=; b=DffqdMCEzHJ4b/JrK+JRrV8/al
	KS1946CnfTAVTIsa4h7maLHJfneyTqfRYA0JUsOAvSlE55htdpfs59cNqeShBk0Lys297WOjITGx5
	WLWZ5usxOGXTv5/V9E5uDiUIHXf9vSocLoPgyNTRLUKGmRb1Czw8keCapckHi3ibaTXlbXHP8ukDP
	up54/7tvP46Ry4dQ+yYFFHHJ1Q1QEwIkZqWfPUP264nGm7hh4bsYh27kAFdC5dQbJNtphEyilnHZU
	JJJHAyI0wTmjP8qOynLOwzn3NzuyG6lyiprqB/oCZPrMipJersUCN8yY7wGf3IkAdb5jxFhfxNwRr
	bLCESfUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vB-00000008Jey-1rBw;
	Wed, 25 Nov 2026 03:43:49 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3v9-00000008Jd1-16sU
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:43:48 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4bb64c99d2fso50159505e9.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578225; x=1796183025; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LnAQsJm0J9tjLLptwYNMgJxavVvbhamVp2XrX/3IRso=;
        b=a4Ao0u4NW4XsAg5iMGn16+ijoktkHWRQxydvxNdpyxKHmcGmqrEOz2+4t7A26PCPTF
         /nCsW2uBvsa0rJltaeog2bHzC90eNSQOOjcLByjNfnne0MROLp0suntu/g/yX1Y+ouXv
         MuGxrc3E/QpMp+d6VX0sSGg+IWSJMITtOE0ibYs9iX+ceM+YTRK2m3YC2dWREiUlNBgZ
         CWi5SiIjJ5O8dRS4cewE9wskNFZUpVSvTk1kSmgslAMHmPwLwcZ2IK+9hMEHvVSRqgyI
         1U9CVyVyoGfzmcB1dXeWTlUdJdw7w2lk3MEybrGwSWUy9RA7X3R5sdubRlswbWhFM3Ym
         bxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578225; x=1796183025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LnAQsJm0J9tjLLptwYNMgJxavVvbhamVp2XrX/3IRso=;
        b=GrmHULrxs5/XyWF9P0q7Yka9Z5WW6rMuo4YRbZC/GPcKQ/RSFxEui3ZgpR+Fw8o37n
         HEUEYUxdRSvORaSIAmndPaTY5usRfBcFAXcZW1KaBS3DqoFsw0BE5qmCUvBXQ94P957h
         NxVdEBscgCjPNCJ+NDnaAsPaNYnErkWbI/rM1fnIuelFCaK57KYAQvY3YVGVQLEJ1jlm
         fh5/J5ama3UxX3tlR//HoRMHQ8/KqOulpnypFE5PcaYkm7EMLOoXRCgNMNfXaJusSBnQ
         fwXLt+90XHNus7bOpQHa63uq8HmoGhC7o1l3SUhEhzYNKSmLRPwsJJqmOvIFp3QSD6Vf
         29Iw==
X-Forwarded-Encrypted: i=1; AL+hErFm533e9SatkC7GvLMHvx7WXLDPHB30+pqYYT6i9NAJJWKEch+TnmOMVUGG51nC72AAxYh2wGin5iw=@lists.infradead.org
X-Gm-Message-State: APuU4Z+CSJHvxAjfczovN7E5uRLmCkGQ3gxYQQyKYsKgmzx2zcsREjIk
	IT/lKKlUTKFdUGkmYPNI7uuP6N5LJwpjWcTO0RhmcWM8M+ZqqO3OCZQp
X-Gm-Gg: AZFdTZcH6AQDS0v+LEkgYHZj1NQaJda0EcNss1eMt66MTD9SqEF6ugJGlTkhcl7ppy6
	Iz7BRWvJ+im53e8qZgg2/iQN1DOu2wDK6sOClVmk5qEnQmcZGZbXmK+zp3KdnhTRQX4rsy3X9gY
	n5KGTf7kLqfQ40Ra4pIK/GmZG4XcsJU4fkhwfd7CaKXzU5K0csLQMV+D1PvVWpf6y8YCw5gwhC2
	DYzN4iSw9uOWCzMJ6Le9VedoL1ikAk8XMFdD2xj1mWAO9uYcj24l3XZindizkUfVtH+hvz0ouLy
	Fvc+f3QWFRodcoG6YK4/Tx/FzgFv7lZi4pVrL4O/jq7Hu+HrT4hboVySqC50I/9O4yjC9KW+eOY
	RUuBigZWVvCP+mCCv+jHIWU1eVTHU/OSlZCUbciacGTv+KVW3aOtwivCbL5EQyelLUqMxCYiBXR
	wbmVGlHb9zHLoJTD+ak74F4R+Y0Fkq3naHI1oSv30yUBaMlHtsDod/w4bbtqtBYOmYrwAldXbco
	nlKJMTkKcp5UCC94X60EQFzDfi+P2F/y6s9YlQ7PkLU5DWjZNp3ye3YWybYkKYvMVYJcfw5zdqH
	OFpeTinzDyot67Vg1DqwtLuQvBkEM76yc3F4og==
X-Received: by 2002:a05:600c:a087:b0:4a2:5267:3cd4 with SMTP id 5b1f17b1804b1-4bb887c9fbamr346060575e9.3.1795578225601;
        Tue, 24 Nov 2026 19:43:45 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:43:45 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:42:59 +0000
Subject: [PATCH v3 03/14] dt-bindings: arm-smmu: Add Halliday SMMU
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-3-5c8311c0b70b@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=1185;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=48k8tRM2Ds8B2KdX/k6MNHyKgJdAqOSEc8lLmnEqak0=;
 b=xCVPapQpg3IOzKVtAOHGmXsvfGx4fLaMkQfgRrvbjtK325rtMzpV4avhI4qPqmiTdlTgkoLxC
 dBxQBhGhobHDwrnWCUlsJvGEoN9HKps7J2KipZyJFkE2yjFIhJECBv7
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194347_465837_D34CF71B 
X-CRM114-Status: UNSURE (   9.48  )
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
