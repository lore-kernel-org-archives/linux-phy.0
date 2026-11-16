Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9418606A323
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uu3HF9/q;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=gZOiXLS4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CxZVRcKLzRlB0qb8llRNytOt/oLuL8ZSbsij/MyLSew=; b=uu3HF9/q4u40VGTqdW0guCpAcr
	E3NKyOxdlxDJH8MdojNUZEezXIGIhOuQWsJQ/4XMol5sibdVq3u5PzQC75UlUNE1DSLsAmltqka2P
	6955Xaw8pzqwuYos8XE2PV7Bojnnq9eFfQB4bCUZMrUHzOhO0EagZoCw5P6bAefWSnt215W5GBHCL
	ilEi1EBchp6u8qMlj5DbCaIOTLt7WBYldpUUB6InclnVnPvgJkUmWWpr5M+iWhP3OPf+HxAGvglhB
	ZNQwPGwnRvzcWjqcEhzqBmMS8rCXwJE/jKNHimlOqIgu1nNdAC6RGwobOaiGW+NKzsN1+nlnftHUC
	4W4dRmxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Dx-00000003xBg-2KF3;
	Mon, 16 Nov 2026 21:26:49 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Du-00000003x9c-1lk7
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:26:47 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a35a60499eso27633175e9.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864404; x=1795469204; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dpKnhnsaRxCp3BhNS6dMqX7R85atmEMYETrpv/6MbAE=;
        b=gZOiXLS4RBfKdNKsH/kEaDQyDx9+DSnmAQ2hXjLf+0O9lEpXWx7qxuv8k5AXAmmk5Q
         ELeP3jnYdthXJIJtDmAUquF1xX/h5fmTYBE8ak5reGDpG33m7AiwaopapQTI9hPuVm0e
         +gjT2ByNB1ZivabEjPud2Um7EMSVXojCBAKNIok0gv8y6UDt/uFeJgVKnqrGILVtCsxA
         CjGfDvu3Uzz+ol/I+pRzBasQUmaTUlAPgLB0vTBYNmejCZmUNw/4ZSxbellQ7t/ItKj8
         3BlxdaAwgFpwbX0AzXBUOOYuK4ldJhFYDujrRFZew/NahVmHYSuaclUzEXEqAx6Zf3a5
         ypyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864404; x=1795469204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dpKnhnsaRxCp3BhNS6dMqX7R85atmEMYETrpv/6MbAE=;
        b=KgX7Yc3TO57a8AL5QTJ0dL/PyZbUKDctnE+XvxW7KOJER/z2wJuvFARdlt/+uFr6Oh
         hFjsCD2poTb1wbjOF2bOOW5jPlFGxnXOOV7zeg/SK+rq6/f3zqJnFkfNB/VeUYBswQ2H
         AgV3/1RgtoMSd374rNQkgCIzJe7C34YydD4ckkSzLf+SZ5ugWkmd1lc9knypDsgd40Ck
         Y42V6osWPVmMpetUIBzZGKEG7O2LZD9tPqQhBay7OlBUWnoeoyiQgRESEMukvboCVXfX
         yMKDebbwk9m9vAWzR9Rdi1hpARsY52o5Hr2T6dmAgER5fk7CFvxusFOkTnHMKbnbuuBT
         7UGg==
X-Forwarded-Encrypted: i=1; AL+hErHhRxdLvsF6KmNwFIufhC0gpURhCW5CqJSnZYrRBWyo1nbTXx6mF7Ofwoa5lckR7iRaDUBw6HluB8A=@lists.infradead.org
X-Gm-Message-State: APuU4Z/tPRLYJIsXQ7GLo0HM/64Tg5wuHtC4M9wp6Ye/K8fSgU4ZyZJD
	xiKC7XPkgMG/90SMK6T0tZA8mVNeVRC0hu5Xpg8of3hyzpqzmeXt922Q
X-Gm-Gg: AYBFou0DrG/vPNn8tVTHrYZYBQ9jlg+jMoo/OJc3b79r9mt5kUlTlv7Z1SKiUpMtbl4
	Te2+uLkmkcjkY5cjItPSztvYBFMjYCuGqZ4oAJ7dajLiojkMj7kx1UeWN66F2D3NE5dPB3vBV0s
	ISt1l7D3u93PkYm73gzMsYAiExTdbFZRRik38U/SMtEZI/8qf8+527H4Q3TfhHNDIIOp7yFXI2E
	wMF2vqViHRbBbEn15bp5Lx5V3V2ut0kcVYh1yrsBgHDu/zO+O0/NfGteCnrpDgnRINCtPYpNzLr
	fVrGxYISL8BzFZof59MInegRxKBvyoKU4sI7KPGNlhcWtjNjgVhaEqTkQc5s1IncFTD+6T7RknL
	J2y9PsGpuyUgJY3bynmqmoh4NspNxj8O0yhYyrwnRkrlzxgyf/qXay6aQ7JtHSbi+PbiNVSQCVs
	FdwjN3sc4LN+YTw/OJ+sQe9tCcRlDAMsZyP3wS2Hmy3tp+UnNRsikoves1qsBDZaX5QbsbWOiSM
	AriCsuMiPLb13wo/be+sYbsvT7rC9WrHS7xrDOpJtzHeQfonCViEims5BrMjhVUYY1K8VOfdgx1
	osZl7gzVxt3ExV3dvBqCG0unUPZXVHM1ZEbzQUEW
X-Received: by 2002:a05:600c:6994:b0:4bb:647d:dabe with SMTP id 5b1f17b1804b1-4bb647ddc1bmr178719475e9.3.1794864404416;
        Mon, 16 Nov 2026 13:26:44 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:26:43 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:18 +0000
Subject: [PATCH v2 02/16] dt-bindings: power: qcom,rpmpd: document the
 Halliday RPMh Power Domains
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-2-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=1076;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=2tteAd38AfHrvk8Awl3RAniXNSdGBzL0LwEwE8e7LoI=;
 b=zXzEFbpmrw7cpK4pILHkAa2JAONx4e/NBSRGU4M7PF0mG2S7il3dQ8oQ1GaRjzlC45Rh8Rzj2
 +R95I7vK6fnC+0EXJojPOiNt/4zRdqb4EXf75+xmDMH2zxxqkWubFgC
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132646_487220_E1C94E4C 
X-CRM114-Status: UNSURE (   8.76  )
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
