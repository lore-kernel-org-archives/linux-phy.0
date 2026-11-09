Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFCD606A331
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B4P3/LUw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=kPrbeW/8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d567KjR+F9vfecWElh7F4OUfN3oBkjpgvNy4XTec7xk=; b=B4P3/LUwY8yYPLszED8vmo7tIf
	rMIElQ6bOFyvKmxAm77XxPWToIgj+szYg7gxXr1UoPj3ShBnohvRNZBMtC91bSANUg2R9wFo3B8q0
	r/2lJ6Mp44WEHSxCJwJnQf+q7lkJr7jYGwreYB3B2Rl2OyoBrlMDvb1rye2WSd79c7On86MhKj9Dv
	f0QX9vhJ26qDnlf96zEy/wytCgPw0nm+ZdGheuNJDaTaZ+5ej52GN17lx4LGkvZtqAuy4QFUn2L5d
	EB9H/NCL4hXrLpgkrMfMiiVmCFtZDKiDN/wKFuaPtmruXQoOHgzVnhJjn7E8bmfPA2rWLfq+ZyW+x
	k1zF3UAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKT-0000000Gy8X-3jJS;
	Mon, 09 Nov 2026 00:33:45 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKP-0000000Gy5R-3zoJ
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:33:44 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a214c5c4c0so3157665e9.3
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184420; x=1794789220; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=r6Z+1pNGTBfmPrEnFxF8VVutZ1rF2maRRdQm8+3OOLA=;
        b=kPrbeW/8o7t0BxXJZI9a+UHpsTDnHGtws9m8iFLDj9PluwwXpUYzZeb/s3fJxZ535z
         u49qHtf7ty1ygsUwg0ybkwhiYmnLnzRcG4tp87VeyX32nj2R1FErS4zht5GkGU2ZWGhh
         FZSW+xK80uanV4LJf6y6/+U7LNSTNU7L3NmwTe9LzqsSi73Ygj7Sd0USVj9zjcNKngjk
         S8eK+RWIGOJQhK0g1ZY0X3uBtAp9+hknAmfOSV5Ki7La+koVAVNyIDvN7HTieQ+UVG3c
         R7uzE2T5e8G5XFHOvzWq7ISMoPSsDC7yQaYiAOskXhlK0wf+t5bizkkcl8syf+bcCT+q
         dHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184420; x=1794789220;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=r6Z+1pNGTBfmPrEnFxF8VVutZ1rF2maRRdQm8+3OOLA=;
        b=yBrX18RtpRbL+lCPzUm8ykAymDLoOdfCtPfc/Glzfc3o6JkYy/J1CG0RS+OUB5tGwt
         bO3Yav2jdnTdaz0ZH1K2Kh3pUXRif2qCitJU2MqXHW/xm0xQSG25zI5n37JlKPMwPJLf
         4bIuPZRKUAHRXVWd6oAGwGPqLI+Xqlbv/NODAQHzo9rTuoeCMljQoZ4shJZeusTtR1uo
         bk9fVKBvcLrgXARlJqzm8BaSY2iK5x9+esx8Wg/xLQE6361u7OzhDwwlo6lwlZrBLcdZ
         2p0/q5olwdNJseWYlZfsqetFIghGMAaZDcqCraW0pDyc8S+eKQAbFQeOsmaM+GBxUmQu
         5vYA==
X-Forwarded-Encrypted: i=1; AL+hErH/L6eAWDFpwH5vVKOQTN4oKGSnaV91iE6TWFJdhrT1s8rb9zsEsLG/lw305ld35IMX0QYoPIRpHNU=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Jh3ryO1H9xpR85SGsoaoYtvFUKBcX6f6X7VrPAO4Xe6l0r4pW
	1+rE1+yeLz49CeKqzLhWrm66HExkOOSP0D38bW8/6nt75VwsQ4c3hs1i
X-Gm-Gg: AYBFou3BjbqW5psA5G9jH0ctutSeE3qvNav/RUGlCjZHsSOUbhtUrECgDZEXV7z4Phl
	u/zOGvripNbtlR9laXsCbPfjC6y785Tolja+mR4d3QIIl2UGdqmUbxnCTHi7z/WVtWHQsaZrMXx
	AyRRuB5wrNUMAkZnrTLhXndyXDtIQ0nzjHrH/HoMePOjLWhb4JyHm4bqG+CGt87Oqw/EyEqblfw
	fCtr3dLx9i6UsJ12K8lQKtsbBiJUYv5QfPnntMeLzZL8akDczoR8gs/aELyVXbgktvDRJcvze6/
	m8kCKwPQw9JQ43ly2DTRgWPFw7O2q8j9ylxQkZ/EJYGq/GVQzB1TnLElSCiJqTHVb00KvEheers
	EPpb2/wGT0kNJXDyjwg83Fg47P5vW0U0J4sYqKlk/je4W3SOb0fJClRq4PojCI+VtqdYpPZlhqv
	e3WkHFu0G5U4qsoDESZT113gumPX7dEGhGRiYLhT4lru3RXzxVddHrk4MSrAdWcE3waYN1dbDXJ
	2kgI1OTHsmYzxbsH4R3xHI7jX784+07EDIG5i2y4MgrqptK+HRDuODAhb84Q01oV9cePslh1ncM
	Bj86UUFbQ4u2oIBy/+TVwueO0xdX8NTKDjjBo1KPxTvjn8ok5JutKBO4mNyjlg==
X-Received: by 2002:a05:600c:5253:b0:4a2:a3b:7aa8 with SMTP id 5b1f17b1804b1-4b94d762eb6mr47593435e9.3.1794184420329;
        Sun, 08 Nov 2026 16:33:40 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:33:38 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:15 +0000
Subject: [PATCH 03/17] dt-bindings: interrupt-controller: qcom,pdc:
 Document Halliday PDC
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-3-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=840;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=4hUtXzlXhIrBYYJFfDKQPQ3vEIzggE85cdjdS9WjQ78=;
 b=/Hr74fQlfTdpftwl6fj+vsUmb0ZD+laYeVxlhFK0akfSM/Zr+bIuUmQJNpniQW71Vw0S+OnBe
 X7HjWxQRJOhA4SO/MxeQgQ2JNwAjEDgqTYH/3IGyH4DzNXVVHXtyQib
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163342_030080_ACCC0DD8 
X-CRM114-Status: UNSURE (   8.80  )
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

Document the Power Domain Controller on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index 8401d3b48e0f..cf20041e86c8 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -28,6 +28,7 @@ properties:
       - enum:
           - qcom,eliza-pdc
           - qcom,glymur-pdc
+          - qcom,halliday-pdc
           - qcom,hawi-pdc
           - qcom,kaanapali-pdc
           - qcom,kuno-pdc

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
