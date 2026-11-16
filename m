Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6F2606A335
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jQUAFi5E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=JsB3Etoz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BPLakR68wxOCPgrzxYJV0VirfJ4WiGpIxIzL0dLRQxA=; b=jQUAFi5E8Rv2crDtqZPbPXUSGD
	/dsab0zrKdF8GInVQLcmqtkqLtu4dbgPJl05ZQj/v2RIOI+Jo/331NW5YZwpWoX/s+PVhiasq0mjT
	vT/+9aORmqVSATaLrCQKHKt2hYo/uc77Fn8HBjirgF9ICGE3yfC2pAkTW78WVAHRsMEhVbg6OK88s
	wsav+oBE2Nu9uW35Y00ouAAgf/wGhO6E3HL1Ff88uooHs+SFgr372weEAg9e/OlAj/m+Vp9PLNHVH
	I/L+Q1ImwXbQaWQkrUUu3rJDenzXGccXqrTJXTznstQiYMmeVpxX3sMXUJd8DvkmjRtb6cHZMwdRc
	DIv/O99w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Eb-00000003xjP-3uux;
	Mon, 16 Nov 2026 21:27:29 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EY-00000003xea-2KN4
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a3517554f7so43365105e9.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864445; x=1795469245; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/ljkdQydKv0eJnuPEQK47y3qmQ4duXo8otCxl59TOE=;
        b=JsB3EtozTYZdGSr8TN/ckdhghJoyyNP3Sv9B2Y1ecOSn2FpqhxOhjtXy3ARf/oB0k5
         4Q5TGnSUjYKMvOby/IeGVcwUD7p+9DAmpGdv/s/z0fxfwm4SoTyz/PElcMwD+VrPe/C0
         D8xUHXxAmNIH3aI1luw7Weda38JWbuqypYnkhnfJUV36mW9nxgzWMftqVNZz++HIleOC
         Hg0KinHqElFOtQP7L6jSvhnZGuG4WWKKYEZb+Ludj6velKR0Y+q2x4QDUDZlEaIrK5o6
         RkEgujxkwaeIRGBInUx38T2FIeNj1+yisii2GTRGYNhe+yLZSezVB9XW5wCjxJzB6MIf
         kqSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864445; x=1795469245;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s/ljkdQydKv0eJnuPEQK47y3qmQ4duXo8otCxl59TOE=;
        b=R722N/vR2XD9+iF1K0CqsnsTzSmQLVQ1FyCsoevmav97/5P9UZr6li8mXVq5qmzy1j
         4u8ZMGeEihPp4utPnLne8oYjCtxwa/ax4ErJwzIhxlEjqi02ShM6pzmK+tppIK7U9YF3
         q1HnBm3Son3l8aJqKsZMNIvl2nRc9xLNlS8wz76LGYb5sF9gvuENiuMhFz7l0YjT/L+H
         vad5QT49VU+Ry80AIKGK2/X4GUjR6D819WdFQTMUbFAxLXtmpoo/rrD35edz7Pb+eE5J
         er2Z4eMP1xao61kvJZaiFsGt104DZmb2LGdB7G58+olHPSKMVuWQL4IQ8PBF76LDarAf
         fI2Q==
X-Forwarded-Encrypted: i=1; AL+hErHVrd7vVg7SEQYzENMl6zsPfmkPycNsGs5QzqXxWuQ1mpzsrk+zcFwPdBJ3+b1OD++4hcj4naaMDbk=@lists.infradead.org
X-Gm-Message-State: APuU4Z9mv0SOfKszzDoIhrAC0cGgfKJmmJA5jCu7NtcqIo/PX89pjPqP
	y93xN+MFJfVr4eaOVQz4DBW5vGB0ukZlHVB8zVDEjcgH1qwK46koVtNo
X-Gm-Gg: AYBFou2pdpH4s3j70M4cAEAny2DUPQurp6VtC48A5NuNupwTXwPpjZZcrGQGxy7sFZH
	8CsXBSY1wFxo6glt8PKnUhcEFpAZIspmmYhY3aP97YiH8oITxs3nImYhqpoQ0FGdHgoY/qQqbdq
	VD/djC52pMZkhCke3q78jWbXRjnQcihzbySQblIfFoCc0rd+cEbVrldAhxmb1vlZAZ+866vVLo8
	4nC/m7gQwPmMNfcTE5grBy1qO7YoqbXfitu3dgvVVSCFvt6mXeRMNUKmUd+LrpdzsuFm3w0RJBy
	dYPJnwwTxd03tN4w+WswfUDKMxzpiPFgElMOli9V0BLuAc2Wp5fbcz2sGiMHbyHju73/DV0SpA6
	6aPYPjYZnMBRxjvLqN1LrvbRemvmjPXekp5RifXF3wDYsa3Ri3J+BpGQF616KKNTvH+jxkmHpwe
	jlupbDmmPSrSuVYJV0SbfAiDGPamHn5acOv+uJsZhKFYszItcxfEg8ZS7rik0LwxqMvf8E54Vij
	KpGhz3qK2nw1yY537TcVAq/AoXJrrMWzyt31toGgs6FCQz2vZJ9AgEc1hYMEAxrti/Xwwrwni1W
	dUePHud2rki62B9CyVoDQZauq5L/5gLXp2DR3Fq6
X-Received: by 2002:a05:600c:6548:b0:4b0:c1ae:829 with SMTP id 5b1f17b1804b1-4bb55a8d621mr184234605e9.30.1794864444941;
        Mon, 16 Nov 2026 13:27:24 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:24 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:24 +0000
Subject: [PATCH v2 08/16] dt-bindings: ufs: qcom,sc7180-ufshc: Add Halliday
 UFS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-8-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=1028;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=e5+pG0dDXEqC2bp77Ez+oDydvwUzWtL2BPwcLeGQJvE=;
 b=gD8xOm5xZ9FtfmXv7b9AItlwRATNEZobnHQBfav0fJLpw18USQbXaJrBNVYJ8htSmcNjmMoiY
 oIwuZK62UjeA39gKapnqrq7NNerfrM+Hz5ecpQBWUPf7UaNqv3Q7sGR
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132726_631913_6FCA43E3 
X-CRM114-Status: UNSURE (   8.66  )
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

Document the UFS host controller on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index 3c407426d697..5d1784baddd7 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,halliday-ufshc
           - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
@@ -40,6 +41,7 @@ properties:
           - const: qcom,ufshc
       - items:
           - enum:
+              - qcom,halliday-ufshc
               - qcom,milos-ufshc
               - qcom,msm8998-ufshc
               - qcom,qcs8300-ufshc

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
