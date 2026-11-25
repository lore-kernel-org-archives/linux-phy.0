Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F3D606A331
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D3hjXi7m;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=fft8BuG8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=77+rHHHF+07WlZB6m+lTZGaRrwszq2dkNzaRaGe9sOE=; b=D3hjXi7mxPelwQquIaQ9gYg+Oy
	0ZbLbJAccXErSU+wk2/bOLAdLnktUpBFVTVoaVnRSM/j/rIvXUXv/UeTblkW/KCm+S17WOH3C7gls
	ZVBE7W1GyxVJZnwyfBxABkGRDEiKVc24Y7zfFHNAvCrrGkYkPae3h1PbJMenlNmkED2zOT47AnsiZ
	ZTlyc2ebMrqW/Pf1QFztUfbKwlZ+w1hhgziv/jLYThdj87YfUsZhTbxM8PUqQnmWXRWmansyaFcQ4
	BVB2bN9ejxF7gxG7T62h/Q8dTpAm3qEOkY1/F+104KYaM3bSlTm1Pi332naFqXqKtk+lf3stXVUXj
	QcX0trtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3v4-00000008Jac-0cwg;
	Wed, 25 Nov 2026 03:43:42 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3uz-00000008JWs-0wrH
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:43:38 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4a35ac4475dso38780345e9.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578216; x=1796183016; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=drwleRdoQE3pkKiq8NvL3TA0ZreOLUUT7TR68lPFDhc=;
        b=fft8BuG8dauen0huWFLFmS9YyRMtO0X186RKdP9SPU9JZsciC5nJ1UMFtj3/l50/m6
         YD+8l9fe0YVlHnf9Xp4uEe+yB+eWc80tOSD53pXYpKWPyJPXlktn0BbW+6PuZ0Qn49u8
         pCjdNbIeIp+sNEpmN/jOQ0fLaRPvYajtaV8ezlY6rNfg6vg/LgxRGbZfNM3iOJedUJYJ
         dQSTbBpEt006G5Hq3vwVUueiDMrTzRVq+F9rVzh1oFNuhx3zW/UcwAmJIpvh/b0OiHPu
         gPhLIP+tEDs7CVjIZcMjnlQpIebE1R7ASDwqVZcvOP1dLDg9gDv8ptTRxHD72efOXhOX
         b2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578216; x=1796183016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=drwleRdoQE3pkKiq8NvL3TA0ZreOLUUT7TR68lPFDhc=;
        b=hCHoeq6tnxSOsnwGmNp6RdlT32wPXFy+vNCibQUh/4cODKhOGZI1D0P1PMlTbwwVSL
         PGaRkSMZaM3Iwww317jzd/GH9nQh0lyl6XgScix9HuUvndM7bcQo9b1l1nD7LUCWtQTp
         gdAnRgjdmWuM2ZKTFoWG5nw7h67+MPFlbrbutUGPk2bjDIADFvFu3pbmZ62UsqetbWlE
         hZz5isxUhWCJ9sSVoWW8IShaM7NmOiy2h35De0nnGWBJ34BTVR06CjBsMZws44UPwQmO
         0gAiNqhYTHpXQMFe7ED00DKPobRZ1fZ6WxrgxKAUPhNVT16W+kfw9rEidaolwOcGe/po
         gKvA==
X-Forwarded-Encrypted: i=1; AL+hErHg5btkfwP1BWJC6yjOFGP4XP1oBI6nXaDgqpbcTU/scj1IeAMTZ5kT2xLXueOZTfHuPYQIhhjELrU=@lists.infradead.org
X-Gm-Message-State: APuU4Z/iMhY2sOrntpr9OZPkrkFrMEtuhGIvmrCytUrPZZCvmf14Locb
	dG+SQ2XQrlM7WMWcSNs3g22XchgmhbNBHOOxf/p1QzYjsQmXLQ4lHO9R
X-Gm-Gg: AZFdTZdqE1yWd/8LXXLYRGyTg4CvudZddjWtvxpl+1qkL/vnosD9KcMbvPdH86bE7ct
	do2G8ewWn0EFvwnszgEXeWQf8RyTT2nLdj2Lns1nSuuQQfeOxLf8VsZYH0w4kZy9ciUW77+GS3v
	cGKpGLzhI0rvab5JabgR/rpCK9R+z/UmFJdYa88a5NbjwVPXRm+qNIAtKkhWeD1Jo6LYgacVlNG
	pIl6d9jelAUfxYCRMFk3F3WFnWAvnQEBJ590OcpyJEnroFVhysq+hLtH2KPVWhBpQbEP9xF+SsB
	/+yi5syxVR7i93N03DPtD0tIQtL1wzVOFRATaSMW+GYP9YE2Ax93Zic4PDEIXduKvBxb4XRhlk3
	AI8UHS2vbpM8WzEy27bNRJwZZWNkJGHVo37VRLsPDxRXes+6EL5KJ9PY5jVBYAfhZ2XU9hG4OUK
	8E/v8PqJnyoOcG4t88esLPYjtZxl8dQOPpXsEc0AcfYlrNwCBQR5t7Rg8Z0nW2CKVqPAvxhm+/M
	7RiZRqVy7m/8BMl4qC8eohomLIbTrVitmJsRRC7srTt98v07KZX2gzoe5CTTcAzFClaHxy5VOIA
	i9cwew4P46OWb+hPggZqfM99e7Q3SkmnjkiR8g==
X-Received: by 2002:a05:600c:1d86:b0:4a1:fa27:df7c with SMTP id 5b1f17b1804b1-4bb88922972mr346329005e9.34.1795578215688;
        Tue, 24 Nov 2026 19:43:35 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:43:35 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:42:57 +0000
Subject: [PATCH v3 01/14] dt-bindings: interrupt-controller: qcom,pdc:
 Document Halliday PDC
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-1-5c8311c0b70b@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=910;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=TIEe9N/cyAzKgpuoZBtDZhrBfZnBIMsVZBId/jMf7sU=;
 b=h6Yv22yIDPhl899/gQR/dzgzFCiAwokqygzx53AniCMssmz68nf3bAUZ4boIxRmClQQzRo206
 0Yy7j0zKrrDAxm4EozqJW8b/LA63zgVJosiVzUEWd1tTWYtwAKtrSzc
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194337_287007_DBA41DEA 
X-CRM114-Status: UNSURE (   9.20  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
