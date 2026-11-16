Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485C0606A89F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ImCit+yJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=O5lb+44a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nLcXUO8tsE+40ItXxYJycTp42BLliHAW43CJGWRB80k=; b=ImCit+yJefEEIPQw7Lq+GnuWjl
	TW4LSHomUSWWcghJ8zfbArtoYZYN0dOcg5jx2oQiEbwKMuxwCBpiTe7vGkBDi5sUo9MisYqzkE1C1
	7xys6EzhCKBzgG6xR1EKf5bMRRPFt0NYRT7kfCMzGoZwWZBYWS+G5fWnYOzdCVvUmv4LTIJf6g0O3
	VjF+0XmIt5XzmaegToXfX0Fba8OviKfCOmHUH5Eq67tfDtPY+nb6il+JN2kw1NDam/2jUa6KDdbhg
	jRx1YIARK7ofOTWIaPgTpzuZsmuD4nSkncDzn8VyFG5j8bUq2kaJ5l12O6pK9NYs56ZU4xR9AVO98
	2Onpohxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4F3-00000003yGZ-48Zg;
	Mon, 16 Nov 2026 21:27:57 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Eq-00000003xyP-1uMQ
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:48 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4bb70074ab2so15081695e9.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864463; x=1795469263; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+ZKraDRr1i3pFiLzoYIEWaHhHBRYyhj/gKsvyx4GUpo=;
        b=O5lb+44aKWOleTmclpncML1Le0njgeGdkwuYIqIxBRiMoolpqr+PF5fLCIlXWWAsWt
         3T5kG2OMuIkdUBxrgsJGPBb2zP2kBaA6ndFYb89rDCbSt+cXmtK1OrgddTpr2NH8vsTB
         HXhF1/k/yc1i3hUuZGJQUGvfolziKXOEY96i2SjtnkruTUj4cHgYZ2o+IP0LrGbZMqWO
         JkXVVH5AYB83OqRodiEzqH/qkgiHFsHNTKbmdC0LTGRHt2qccsjiC5lvl5zKsoeuF4JO
         2BxoRWY76eqaKDX09Cb7U2a9vOxGIU6KD+qkO8KJoR8oR6wVJi4EE+cPHZ6SuRKEIyjr
         TL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864463; x=1795469263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+ZKraDRr1i3pFiLzoYIEWaHhHBRYyhj/gKsvyx4GUpo=;
        b=nFCJtIjIBDOIxcx/JCeT/Z7eITLfVg36+IlZTUEFyGhSe0eyYzS5xpmfMxyPUVrW7h
         WD+5NLrj6HBRA6Z06kgFhaWydkGYGYVvqJMOBE1kggTGubzTuAwhCqgfx+SBsX+4e8Ch
         hIIWsZPHogoMzZ2j9eWSfBi++WvsFgKLNN5ZEhaRjPYD7NGooBj2MxT1YYwSAXLhGCoK
         lTDcKUvL42L+7zIs6pbi5tH4EUxh0vsSEKkNWw5qUWuh7/bAnZ9c4+4kxhKC66AG548+
         ZNnN1tcy0iZgrknOZGE9tsX1Hl7FU/h76p2/p/kaPrGDy+7S+/pDqfJt43azbk2ytqxk
         SIBA==
X-Forwarded-Encrypted: i=1; AL+hErHPFPA86snoAn2oxkELTlw66NCw68PpGETCIAC5dNLBqGfS2kjMrsdyWFJRhRTEuOBMXm1dAx5yFhA=@lists.infradead.org
X-Gm-Message-State: APuU4Z8IYaYMSgSAJoyMjLm4zrQdFc8lYOPPLA0U2+brF1H2lleC8LNE
	NKDKuv/X17e6nHmdcEM11fXzvAlCpcDENY4Rq2K3bNLAqe2bG9lLg3dQ
X-Gm-Gg: AZFdTZcOrcOiHoKF5D+FkyefDFrIdQViaYKfXk8eoJG2z4M8JlOB1HEe03YJiCI2GMo
	VYFD31ElzKgIIsQnGESMaICXinVwEBot3m0phQYGv3tFTbgrRFmFpvDyC1eMpw0u5Qv+UfmqUvG
	CibGFYU2FTuxOEkk9dklH19/Dlk0FBW6Fm2GelWcvqdiqagWJOXian2r34FT6LF/Q6ombTW1eT7
	XUTyFMv3hRKn8NcoFWTmFmWjdphz5GibyTyNp9Im3Dy3vsXSN0xK4FdwJmbBXL3RzKeAdHiLMtP
	MUEu+wnJvfj6vUAb8DBmpaVehJMz/L0c92WLmpAPIfN170EZJo3t7uWyvYYOTjPubgfcWhgtE/K
	Pov+wnVcee/WUjj1Ad1YGjpWVxl97CZpxvIsGIYHCQ9cnGTlqSioTtHqSvDmuSLWmvUvgrytoLC
	x/rCvokG+brw4NXJYuV9OyMuJrfeUlowWTSc9Ag3gxtxeh7KAtscZmEcXYDq35Z9lTKnWmtwTPt
	HP4Fj9H5tEuV3IeXlTqMp8gcVv9uZjNPf3fR+Yw1nWNgo3zNLHuKOgrtuKARbNhtAr95vjEZvqH
	LIVIww2iJWyJvYAlp9fDgUW7IyGgRHr6hfJ7KDqu
X-Received: by 2002:a05:6000:438a:b0:491:36b3:22c with SMTP id ffacd0b85a97d-49c6e68dc41mr30686056f8f.1.1794864462819;
        Mon, 16 Nov 2026 13:27:42 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:41 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:27 +0000
Subject: [PATCH v2 11/16] dt-bindings: firmware: qcom,scm: Document
 Halliday SCM
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-11-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=1106;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=OQO+LwEeY64jVYcmV4r5bBUUpcSQt6/n4JPVT4Z/sxw=;
 b=lNijzEKQlyljkWzaxIS9zrys8uC5qiwJ2YpuyG3Kr+5tC+QMb+R4Db6kOwLBwj0GYnOv/QX+7
 5U/HlbRtrBQBhLGehnhSLzxDVWEhcpke2OLw7yIeYTlC6a6mrQFU5kI
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132744_585087_79E7670C 
X-CRM114-Status: UNSURE (   8.68  )
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

Document the SCM on the Qualcomm Halliday SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 40a267c54b00..fb3da66443ed 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -25,6 +25,7 @@ properties:
           - qcom,scm-apq8084
           - qcom,scm-eliza
           - qcom,scm-glymur
+          - qcom,scm-halliday
           - qcom,scm-hawi
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018
@@ -225,6 +226,7 @@ allOf:
             contains:
               enum:
                 - qcom,scm-eliza
+                - qcom,scm-halliday
                 - qcom,scm-hawi
                 - qcom,scm-kaanapali
                 - qcom,scm-maili

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
