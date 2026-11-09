Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BEB606A333
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aFIuUQjn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LFMxcB8I
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cBk/g5C19r3A4imOkLrKEupv8YvhDZiNBY9F3m1+evg=; b=aFIuUQjneNqArwhfo8NmywANlK
	yBw5dJtFKmQDh9pub44BDW+PFDhF7YlMj4UxitWo1FZhB+smueSVpMurj6g4gbSxdgBSoMfARutkZ
	8avH6Tgtk0yvhqYyt9qC6Pct9MNKYv+oRnpdscHqnMDhMOk1+xe1z7JAoUl79XACokXeaEnSWvJz+
	lv38dvcRYwWrTdPreuM3AMQFPwGmrtIhaZbeMU3y/bxraeJ/04OixqKz4JVpBTUxAmt+LPKttZhhG
	8oyYqXbOh94I05SXVNdFDRD2b8No2+c/NA1L34Y2VQidE/UBXm6jxmOeYt/ZLbeOO+NyUogKCKNcj
	IFzIee8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLG-0000000Gyxx-25RH;
	Mon, 09 Nov 2026 00:34:34 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDL8-0000000GyoL-1qhe
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:29 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4919a880834so165046f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184464; x=1794789264; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UNI0IawohcjDnjoicCHviRRe2GFEz6OyLASUQR+3Ovw=;
        b=LFMxcB8IWW60IBIt4rqy9emTxTJmTDwtjMfFwTd0FHHg4mb19aOH7vOaeBII/DIUNr
         dtV1AZNU53TzBtVNn9BQ0fMx5lSQvXg4QbevfbsEnI+GXzVocreG/m0FBMcK1SyTNsv0
         qF8fwsF7mYOWCBoRXoHb1zC8tu5OfW3ojB4/0crxElDGkmnb/LmwFQTpXjuyvtEwGj/E
         2n2LNQcbs3znyIN6vSqTE2hb2OJSn1escOhuwXzuqrNyyKQRw5NCmD+EyC7QKLEBdu+i
         pZX418K12JLTAct8edT2tSP/rc5hKBCUUqqOm1e+uRkBfWdKMsa+ngQ3BH+Q4xqIJQ4Z
         0mig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184464; x=1794789264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UNI0IawohcjDnjoicCHviRRe2GFEz6OyLASUQR+3Ovw=;
        b=QhOQy5yjSW6kP+lEtKnU2rOk5XHJ4JU1WaZUkqEhoXDYcMmaGwGzy8lHc55i1wqKwW
         nKMXBWE3BDzAknslBvFLJKp2F0it6P6u1194Lqxb1QOGnameXdUm0URo4PhEJk0ohruK
         vqQ5CwA479BkWFnHCaOT0zK1stsN1Llm8zgvTU0q5YE5JaHwZa+tZmnucl22KczVIw6m
         eP3dtuBJKt8Ms6AJHxHvNZG3WNoguDC+PXccumVwfHlhT1D6Lop/TjslEBfKMBa/+HF1
         sPcBIoYdLozA7dQwAGrIvhfhBndh7078eSHTCw1/S+JTvNBqjdmSvfkKltYRUifExtFb
         4Xnw==
X-Forwarded-Encrypted: i=1; AL+hErFgqy8dU7I7UFrnLerzJjD4VLHXdwy2KFvpyDSBT7E4epi0LxaY0GViujPVHoO/1BoL89dX5fv8qZY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+ytE62VtVDj9X0xHz5IGBUkF2fsCpGiLGeYf2GPPIjN0uCEL50
	QmWTsQVszjA/07/zyzbTR9EOCjFBtDsZABF92gtxSXVmEO7Bjr6lIUXo
X-Gm-Gg: AYBFou2WNAQ783tw8SQvakttrmQLQAWaKxt+WnHnsfXt/2UyB8WJIk5VOb7u4noJBi0
	76u62YrPHqzttBSoBZYtym70/IxBjFh1allYpa9MfMFD5XRXhAYSMKb1APYYTuGMOkSWhrE5Goz
	VgmKSRo1rEGj6Kwf6HrimkMHCbALtpqozdGCQvbovKArwhwvU6JTSXQJbjTylAdxe7CGD0YQNdA
	Qqqx1M8hZgQjxR1ALSwvJxKfvAv5BYngPoGC3VLIcT5fck350Pxbg9+cdwOwnduNVFERfmTz2u6
	YIHmxDQcV0T5qZPYDdvvx8ipDZPpRopqmsT2DxnrJsHOxDy8CwrqM0GCF0ETooIMORewX1xBBGe
	bpXkWoqOlIpyY07XwE05e1OLLVBKFnmg8HKrciomlIGOA1yuwj5JhXYM0okHlknLOZnjowKFlas
	E+3owab2oMbgRq2Xmfc+L+FtrGA4bb6msMsrnevwXX2hsROVhg1a7ygBhz1lAXfCP0gyMkKQyVh
	VrFRO5x0OjAJqOb2pPBvXCTu3LfrsYYbET+IOGM30sPqS07PYFL4zs6F9Y1nlEq1LtkXkOWJVZY
	YkAfssw1FNPQW81wIvEKKUxrMC0+TEuUNm8szDH/
X-Received: by 2002:adf:e19e:0:b0:48e:44c7:bf0f with SMTP id ffacd0b85a97d-49588ce1818mr4774036f8f.25.1794184464442;
        Sun, 08 Nov 2026 16:34:24 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:23 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:23 +0000
Subject: [PATCH 11/17] dt-bindings: crypto: qcom,inline-crypto-engine: Add
 Halliday
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-11-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=921;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=LNBr+b73CKCaJq+Lcoy2dBwwEKE3EuPIoRzvD97HKJ8=;
 b=/dOrZ5kbZXiJ0bcfGwkBHl7a+YAKGn1bUTdYux1Y38RVDKws5L13g0SU1+8SFR4l0gLQgTvYS
 wprUB1wAKuOCKc4gs9aCLEB0eoMZXLaWUvR2Qma/3ofWIp9EDkckTFe
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163426_536780_04185574 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.1 (-)
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
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the Inline Crypto Engine on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index 23bf98c2b9fa..1512fd1d7471 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-inline-crypto-engine
+          - qcom,halliday-inline-crypto-engine
           - qcom,hawi-inline-crypto-engine
           - qcom,kaanapali-inline-crypto-engine
           - qcom,maili-inline-crypto-engine

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
