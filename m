Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA1A606A68D
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lACVK7xg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dxQg2ADR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aYYF8UkqK6THC41O4Z2LlQJinpjOmrMuVbLxwz2PaWE=; b=lACVK7xgzUS6ECf6i4u9pVoWZC
	YhGMoYdToXxlH7dHJ+i9IKNFcvjhQkCmFzD8/XJZ4a3v0O3xPr3wI5f9eeDdCNynlLBor0fWYaVjN
	P2I42xxv0gYGACt2NZa4GXuDlz7GLb0PPvmNPLJbpGLuOmoRnBGyzuUkiaGU/id3M52H3+YJ0ondd
	/J0PSGsdqLFRNj6xogE8iUQabNtPt+O7C0i8IX743Buhb3cX/x7ay8Gvh/BOkpBtcY9GnWHz9RBbd
	UJopghjlbourV9OrZiJf0u6UKbbEzKrgVmunihbvpIImyxqS/93nv28bvVrk+Lh4qUbHzBBt/X+8N
	GndmvfMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vg-00000008K4l-3qvE;
	Wed, 25 Nov 2026 03:44:20 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vP-00000008Jpp-0sMo
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:44:07 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4a9a8d6cea8so67625675e9.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578241; x=1796183041; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Qj41oco+fV9s3p+rSbInvqyHiLCYdw0nt/lz84zuf3M=;
        b=dxQg2ADRJfolaLw0GMTd1Z6XUl9oDAG7ueLcUg4HrHsTPyg8DdSImqmpTGCk6BnJvy
         bHaha3etGECUxuTFft+PUFI0ear/yNT0E4wbLfRChg2VxcLlUuBFF4TbCARmNeiTMME2
         7L3yMEjdZ+947LGv9U3OS+CtcYBcJHNFH9KUz3M0QVOX19lWLFvSlcf2pubofLPAtUXK
         sgRCBoZ8lJCPhoI6GxAQUM8e0ccz3jGrkKd6b882PzxlgmPv9vi0bmHsvxJkzCWFTk/0
         oOBkdKFhEUu+jOm8VuxDJzBEvAJaMY8N3kctsWNcSnZfkBhRd5Utj604qaAF6X6wtKg+
         l6LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578241; x=1796183041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Qj41oco+fV9s3p+rSbInvqyHiLCYdw0nt/lz84zuf3M=;
        b=m2wxHMLjwYAWs7AtM1NIfzECh9y40nW8wHlYohcmnnWekEmlgV9QCsVygtpqx4Ewtt
         8AE0wTx/jsJtUC7BwsvwdhlTEwsG1bPVBtP8pTu4yiPxTyy/5nDG5vOtxPTDwQK6xfCJ
         8Z9+R+PcGjXjjZ2eYk5C3FWajcAMJF1TPtFsGfqpz9IlVclSpDSJDmH5MRaovgff/X4l
         D6mhd1JvOtdgrTBXRhcdHjzJbOpCOW03PAyl+Gh7gxIAL4kqc0MqbVtMpvs+rhH/U3l5
         w8IH3sXsmNUPEBcHS4bYXQBgE3/L1S854alPBlJjiwb1AJCb1pA1rmSqL9zSBFvLudwg
         nqxA==
X-Forwarded-Encrypted: i=1; AL+hErGC5f6a56QdFJDowEwkYt21ITiZF5+J0skQwk6XlM+tGIIZHSB/b7lc29gNn6wWIm0qyb3WUNsWqsc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8f9qlJJsdvEp97SkCJ/H55j6dtUQLJJymsej7o0Ois0XuRSwuv
	cFgghQq0xKUsBkFUI2+kFjj04R3ZbbpcQ8577oItTtyIZJu+fFZv+YkF
X-Gm-Gg: AZFdTZcyJ28P/ELdLXXzyIZ28eM6xexVjX+Yb4IE6ll5J+ZWfBSiaFLnTBkMAdAcXAv
	/RlULMv+4IqvKIN+uB3h5EeBPxC3fyUxWHzUCzR4u/oajfJQ6scI/ug1p1AdcpWA/hCRbSI05CB
	D9hm2ppmJu8HCS9o1fALSgBGiPLZwhqtO65mqwwBxFI3HYWwjdZVqVh/3rfM2sz0JnCCKqS2tQn
	0ccLlCSW2wepGhMwbtptg4AJ86dWlOj2dwVUbzql24CNZHK+GhprlWO1uBSVAKTFt1XymcrLzBD
	yjLpqXLiVNkcjp7yHDZla6puQ89Y3Fq6iSJIvcu9jcZi0yBuSQvNZz+kROvHNJw8l9JGUGMWRcS
	Be/Ulff0vBE2vjDcuQJ6/BRIZUEU/mvx181nkvWL8ZDHh0VfMwGLcpgbBrwI9KkSO91PowDFvaW
	FDfDhnjlxVhuEpdbpSnyF8CbhZS4Q2AYxdzYFf592pxZg4WJuOUau8JTlNTsrVJb315625o7rXW
	QnVZlBdaTCy0RA4PyDkMZdcHOhG+L7vQj69hCwgj/LTkJBkAA69ItVfTbKHn9sNlIiU+BrwOaJ8
	JWQ/yd9AG3YmiuuDda36q6ECQp6gTnOhAlpxm4LvlwLc2HmaCv+IdEhlDRtQ
X-Received: by 2002:a05:600c:6749:b0:4bb:5d38:259f with SMTP id 5b1f17b1804b1-4bb8881099cmr321134335e9.12.1795578241263;
        Tue, 24 Nov 2026 19:44:01 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:44:00 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:43:02 +0000
Subject: [PATCH v3 06/14] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-6-5c8311c0b70b@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=1066;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=LnBBJKb9fDjzFgKcPxLWG+G1ECrWNheGC13yLk2PP7U=;
 b=AK3HsTIHMWrfVz7oshpUweVMA1RMXUBxsZdz2vUtNRXnyYZuhyvlqRD0igQTo19XNPCP3yBIj
 lrBLDzvfhh3Dy0LccQPBEZwfCNYpwtXoUv7VnuZeXacHd0nFK00aqKC
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194405_994833_0BB43BFB 
X-CRM114-Status: UNSURE (   9.11  )
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

Document the QMP UFS PHY on the Qualcomm Halliday SoC, which is
compatible with the SM8450 one.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 10435a0b5230..a42bba9b550d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -28,6 +28,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,halliday-qmp-ufs-phy
+          - const: qcom,sm8450-qmp-ufs-phy
       - items:
           - enum:
               - qcom,x1e80100-qmp-ufs-phy

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
