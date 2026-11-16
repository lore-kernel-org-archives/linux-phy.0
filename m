Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C61606A323
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EeUuj7TC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mFNAONIg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=77+rHHHF+07WlZB6m+lTZGaRrwszq2dkNzaRaGe9sOE=; b=EeUuj7TCVa0s3nwVhRwJ3Qm6sr
	egIPdFpQt292HUqJWconVV6Gtdxm9CaKRe7yn7NItpDshfiCIyVEfL1bVnBprp/asy6EQZpnXJh2t
	3c/fM+RWHjVt6jTVrvao9UfPWQu7OR3J2wl8dlD+a5iohqfPvwXmjbj3XU9pLFWHumUIVWKEIapl0
	s8WTK9Z7Q1kzHZ9eCR66DBG5RrMjHMH+V+JvMsW1Qw78wwpkzovRSA7JMrWj54GaqXi9UaLw1JBcx
	7+FHkQp80BUF+ZBL45pAbxqKappaPrAbHhLMB1LaIM8HCAoNKmR2w6xlxzst7WBlRtrBoeWc4yWSD
	1vlgBqzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Ds-00000003x8b-268F;
	Mon, 16 Nov 2026 21:26:44 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4Dp-00000003x65-0OWe
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:26:42 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4bb61185057so16924915e9.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864399; x=1795469199; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=drwleRdoQE3pkKiq8NvL3TA0ZreOLUUT7TR68lPFDhc=;
        b=mFNAONIgMwRcEVOVak7DbC1638FeuH8k2mRB7HLaqwPWAFy88kAXy8Vp+FQ5FplKmj
         ezWLXDYuovdtgZvqBZ4KaUNkb5pjw4/LFmMODfY2bPhoq2EA6UfSMytg+F3IEt0uG9vb
         rcKjomhrsqNQuGXRIjQWOr22uh1Nv8ZgNH0Hq1LOPfMXyiZMGLBO2nL7oe9JbWx2g/xv
         Pw7Bleaa8Wn8Ei3mGFB3jenZh3SRlJngorBMs2UcJsiC7z7d7GNJIi9qcJ3yfpauHf9E
         iI3OzTRSrOTIMtFt8r3e8soolqwCt0nhDWc3biDfUWzv7Aud/s01Z69BcwwaAwHdcSa4
         f/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864399; x=1795469199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=drwleRdoQE3pkKiq8NvL3TA0ZreOLUUT7TR68lPFDhc=;
        b=27URasIl4lHyd+D4wRCQNGhxFGWh3a1Aq3GowMKkTUt/+Sl+TB0G09QnKksPgwFSBo
         RMIsmcgyyqCTZMhFlu0Nee8kvailzHboLulMwpusBhAVXRW/XsCq1npXsjvEZiLX4nTY
         PwWX+uHDHD+ahPCORCjrZjip4SbtA1O16Hvez8sb4DHObPazZ7E4iNx622EXHgqBevSA
         G9ADXGMkj+L5SCPu46yd1igefkncO988Rmx4p7mioH6p8Nj0XkByz66+iMOFnWNExB4x
         dNbVw7hbuHwATFIVE9FljgF/9u5d40edLNinZgZnEbETeZ6bZt2ufaYv10bytczvwo8x
         10JA==
X-Forwarded-Encrypted: i=1; AL+hErExB0S7D7elVwFFCftn8tG4T+/XWG3ziIDzwG+9VXheDGpeuLjZvYxRVfCjWO/M8bsk1dlK0TKHiyM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Jsd19cIB9uJLc6UDq0zIjexlriH2srDrrAxxuTOq7PHLbACb2
	73stgvmupBafbaENxyMySOds7awcVDtNVtJXHjWZSKaDZ9b04t82bfFs
X-Gm-Gg: AYBFou2/J9ziWV0DA6y4mxYqJT6dMLqeODLw/B7TntZ+Ugc2UeB/2ip4yFgDRwSxW86
	Z78YwMIObcnNNcK5pil5EmXOAVSzxFK5DDCtyIJXgbllHE70kNR1dVRmIR91HZbfUXe0u+i2YMC
	q96PrE5lWL9wikCkfjWkrSlxR8nAiVKvPdLARjLiGXoTJs6l9fghh0ZfTbrf6Y8CQf/vQxbmF0o
	AiMRw4e/Fbw4MYxDJuvVdGBsdNF8fmF0sfUyKGs2OxPD6J3f3RZys67147yAZnK4tVMl5JZzm3h
	bXeKOUr/gzL4kY/PRADllwNxdcpr6LLZPYOmZWhukDyy8YYAwmpoauNd1lMbEznKDGWF5hSKreQ
	sdCrBdI8BLyC7wBbE0ES7qGjPtUPaqGyykEVIrGZjHpPJRBvKBNi0OyifZheTIaufCX4EpLE0ut
	5t5u3poI8z1rb+eK13+ouflq50INEYtX5pDliBCXpN5GCzz1r77ELuivlfoQsT1Q/p4eTL1e+1E
	lGwzfFhlPTf5N+dxJDVUokOS1pBa4k7cpb0Bg4LgLFxcKoJ6+4SbZcb1AKswkBd5GHctquMQM32
	UvtMmWiH3aqyygLBv663HxfyXZLdjIIDv7RYaHhE
X-Received: by 2002:a05:600c:3509:b0:4b4:262b:88a2 with SMTP id 5b1f17b1804b1-4bb559f3633mr229913355e9.1.1794864399079;
        Mon, 16 Nov 2026 13:26:39 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:26:38 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:17 +0000
Subject: [PATCH v2 01/16] dt-bindings: interrupt-controller: qcom,pdc:
 Document Halliday PDC
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-1-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=910;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=TIEe9N/cyAzKgpuoZBtDZhrBfZnBIMsVZBId/jMf7sU=;
 b=dpF7p0w+OJpIxiGvX34+YlsXwN/di/jZgfYFaXfY2LGvx7anrS9naa9DX6XaW0R3KAm0CLz0p
 0yoxibSkrgQC5/lkQjgDmvTXyvnDrKaMbIZimtpZ/81OcVIj7o3EQjp
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132641_158563_31CFA590 
X-CRM114-Status: UNSURE (   8.50  )
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
