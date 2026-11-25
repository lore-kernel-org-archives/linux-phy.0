Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EAA606A335
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Jhumw5KQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Mj0c8t5d
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SBHyLLLGCh0CsMGcSYtbWIEBV39Jmg7rLTeY/aUSlxA=; b=Jhumw5KQsIjziGvJxu1kw7Mrl5
	mZZ5MWfo6lOs4QDhrVY3TP4mvjUIe2Wuh+I9+jTnYcnXdhBucYduOv7b2L/zUVH7UByNQBXX9lXHJ
	BJA6J4JQhhKwGx9CEXLw18VUNM7KZV9Y7QVyOndo/fzK1WTvbGRVAZ/I9WYmEEtBdYcYAgfpJNTqu
	f9J/WlC+xSn8RSEJA6+mjeuw+sVZatfWXrybxt6ZkSSTSqbnpH52yPtuK5Yk6er2D7QOthe2naHNi
	ZzjROFm5hzhXh0FpjrHex8K0iPKx8j3WeeFLrL9JroQV9fE4ER1Ciny/ZHYxodJuYJF32j0XC92VK
	QSqtym6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3w4-00000008KQO-3TKP;
	Wed, 25 Nov 2026 03:44:45 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vg-00000008K2V-2OBt
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:44:22 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4ba013938d7so48473755e9.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578259; x=1796183059; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=W2b0VXMdCxwEqSCTP3OlO/X4AxL36r2Zoj510JVt9mk=;
        b=Mj0c8t5dnO10rGv4EI7PTYGsqyBtrkS2ccXT1QltAbTl28wOwPd4CiwPwJnT3lBYJi
         s1pKOB7Ym2EcTXFAlo7hb02BBiRZZGhY8znmOFNeIZCRd4Ngo+dCnVWh4KmZLMNm1Vii
         6tpwmf/TRPxlH1PRzYJ4LlojgCdmMZ8qdeDYakUi6dHsclSwPVU97TxTH19w5pU2OnNI
         PPuSbLgkwWU8am6pxfpV8Z9vOCSk+c1JYxPhKazHh2oN7sY3gRxOcu8d2Zu4kmPN5C78
         ND444dSP2Xf4dbpL6fPtmSy6WdrF6QuimSKoUsrjYFLuqIe97y+zm/EUP5canTR5WQiw
         IU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578259; x=1796183059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W2b0VXMdCxwEqSCTP3OlO/X4AxL36r2Zoj510JVt9mk=;
        b=Br8cays6e34Mixlz8xOrfLUbujQmiZ2vhRGFne1WVASDQYfNAHTM1jqgeXKi4ZNN0c
         lcnwwfgGSmMosexEVpBUIzY8g17T2fo8T8u91yxCWUecgNEJQbRqeL/mqJvbScynvQqV
         hp1kkMA2/zYN65p0ROPOmO/ztVhnsMy4yG0pQmC4q38XftFz5YfpY3VydpEpMkEuq0S9
         dFwJN9KVY2y5qwqqBwq+MS+EjtOskPwB0U8YJwIFiQStoGOrzccyHlU+yCI+fItUn9tr
         M9Ejxvy1//fQ34ses3RFwOHM4OTCny8eWDJaMXkLdw8CHbWDX28ziW7ZXh7WT9xRMf7O
         ZX9g==
X-Forwarded-Encrypted: i=1; AL+hErELxTSH5EZy5cV0LNfbRK2dKZVXjLWb0aG9m2iC25vVa25IoMmNef2w6LHB1qkmaOMh3HcrBrh3XN4=@lists.infradead.org
X-Gm-Message-State: APuU4Z8bZXmvbpJOTG8RUbxaZtmFRlUX14caJwg2xzVZwCFsmkM2AbFt
	OQ1v5BWgZyV2bWxzvRT8wb87tDVdSef+Aj9Aa0p3Qaru9BbzCWQUTRT/
X-Gm-Gg: AZFdTZdS8+71XnC3PqxG+uQ0a58UntouOp01ewP5/NtSgwlQYFF7aVMAZinfTDYShIN
	o0fMAvramgFlU+G29BJUOJgzEfa5ginlrGlEVRcHyB8kUPrKS5Rgs/3i/RY+AB+MELPZ636EeQd
	iWqZJZ+4aTQHBFclZP2WpF2udMpuDW7lAkYqhp6aXtIz13VG3tYFNOoar9W5WVMJXKJKJBz6gyA
	l2VAYm94xDB3PQJ7xrLVsBJOOnHWl5GJdM8TJhsFuPH7yWFwyJVPmR1vgf5Icmi+hfRyG4i4o3Y
	y8VxVXSHTtFxNdVF4e4Lgf4ZbsVXv/Q6+893phgc1zAyVszzt6JiW/iZpaEjF12PyI1yYAsdJY6
	F4ELzdExIaLxEyoj0Jk4K0cSkTiCMgw3g0MjaV5jsWvt+SSbWsw9Dx5GXWl1JpUBbOnYGcIJjJL
	/7aMPTsiTVzMR/4soRwxBobTIynulBZ3L5VCXzo8qeenIW/fY8YSsTXErjzyBa+lXFQ7EKhtaGB
	pN9W+bKIyClERpO6n9OmBmxk6j6kWYJpaKa6wWy89AJobN2GtkxSPP7Vlvbrvp8a9gGbouh9ohY
	0by7MozLyBZnckhGQELhKw+2Xd6s80xdODUKKQ==
X-Received: by 2002:a05:600c:b85:b0:4a1:f720:74cd with SMTP id 5b1f17b1804b1-4bb8892ca5amr333720795e9.24.1795578258707;
        Tue, 24 Nov 2026 19:44:18 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:44:18 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:43:05 +0000
Subject: [PATCH v3 09/14] dt-bindings: thermal: qcom-tsens: Document the
 Halliday Temperature Sensor
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-9-5c8311c0b70b@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=899;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=Gu7LEPVBsHDlbEA7f0+bCh3HrNIpvCrq8874bMnEMyI=;
 b=LwuvM0V2lFpMa4PY9K99qzfFeTZgXvTT9zRsWf5xnLCKTkxZox/BBQLcveRV+2SwtDIXcUnAz
 dTyT3erZvMTCCtObEN8DKkAXoSDLM9Igo6aZR3InSklVdITD6tCjFp8
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194420_656586_7238A5B6 
X-CRM114-Status: UNSURE (   9.01  )
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

Document the Temperature Sensor (TSENS) on the Qualcomm Halliday SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index c78074fbcecf..3b440f395fe8 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -57,6 +57,7 @@ properties:
           - enum:
               - qcom,eliza-tsens
               - qcom,glymur-tsens
+              - qcom,halliday-tsens
               - qcom,hawi-tsens
               - qcom,kaanapali-tsens
               - qcom,maili-tsens

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
