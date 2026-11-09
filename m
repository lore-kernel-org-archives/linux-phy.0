Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DF860A5BC4
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I5xc75+c;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=c0EZEb8/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=USsmgim7Iq2onLKi6XlHlCY3uWXSKDi+6GA0+vAWZJc=; b=I5xc75+ckrv0LBFiXAbKpkcN5B
	1JMIQ0AK3NC2HilvVnfnlAkgU7Jxpi85ErKiCZG/9nqU2eK0OnABCfIkH0+owJiKSiUm7RJfbQFfq
	Uw38gELKyXJmV765Nns/3tGfvkefO+2/QrY3hT3pg+ZieWH6l8/YuyK9JBIUDiT3DtjprpBj9aBGL
	nNOu8BZq1TKgrLU/1k0ltd4lyV2GvgD2cS5jcoFcrprexNNwqpr1RZCudXi3bjRifq8fao3priOH/
	XQpm1BjHydU6WEwaZVwgxanx0iNyi/jSUUQYQqem64namCki4IcT22BVeVHo/BBgOYKvvDazMUz7P
	DhyG6K5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLb-0000000GzFZ-28c4;
	Mon, 09 Nov 2026 00:34:55 +0000
Received: from mail-wr1-f51.google.com ([209.85.221.51])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLN-0000000Gz34-2LvU
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:53 +0000
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-492f0a1b685so236620f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184479; x=1794789279; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bHyunwqhqqpQQZSm8FsYLG0nPatLuBc3TvD/xVa6m3c=;
        b=c0EZEb8/6+L5YeOqQ03P1HKjSOGBnhm6yuwf5VO3F8DRs0TTjpOJ2LnyXL0AulbQDS
         s3w1+mJh4ERwYR5wTndECi3/1SOMYPgG5arfiCpHXNYXwz/QY+lP4OZWt3TbYxuaIKw0
         TabM02VA/5+pFLR3APxbK85ukEf5YC40a3BUhLbvuYcqRYTdMQUsOj807IIJ8QGPU/8G
         D+CT5HRVkr7BUMJNZoexwjHcW4BKfIzvimBKO+pTUGqXqlzDZcbPs04NSlBkwzCJHdUX
         cUWG4XN6Rp0N1J2ZR1ZR5ZwFTdg2Iy6RjwhmV3LjScXkFCwIf/uvp5suWroV3bR819hx
         CLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184479; x=1794789279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bHyunwqhqqpQQZSm8FsYLG0nPatLuBc3TvD/xVa6m3c=;
        b=shMMqFak6IdmyKYhK6OtoXDoeR0xUty6JJ0ER+T1U206J7W9RgQk8SBQubef9Rm3iR
         UKZIvP0ctPJbEl65n5t9BxkSs3N58K9NlphECvgeEpsEiCCXwFSDYUANeXMNb0GULhts
         NXnH6VqCzLGWF+McP60wUIsDGvgUE9tjKm2vlOZ8xkVls8fIN+MU024aZGJpCmb4NxZz
         vy+bJ509KloT83+RIfYHTxGehcf9BZGGQgdP9e6gw8r4M0b0NagwKnj1xyNFQMoSm5et
         4rfjYcUNkagRAJUiBAQChLq3WyE8e8fc+gA3naiMptlz+5pTHs7aRhHvuMB/EeOGx0NX
         74iw==
X-Forwarded-Encrypted: i=1; AL+hErGMMUTyokGcGGvm+aDKZoNWlGWiE+eQTZAm/n7hz0ncqQQme4qxmTiWCbk1wbQFePNh5q6ScifhNR8=@lists.infradead.org
X-Gm-Message-State: APuU4Z907ZD6A85itcTew3iXTot1b60pnVh8KwmG2L6OYO3+QVMCouC+
	ixPkOU+BQbQLLUUu8D1qmZ6MGhoo+i9PcefoUnrukzqqhLOF/MjtHuvb
X-Gm-Gg: AYBFou1sAIKvUmDQb/k/JsZF2565aSYv7B6HmDwXO7W2vOQkYZKj4gG/lB1J3/DYuTD
	mXp01Tq4L2q4Ij0atnGCWHB6TpKZkk3KzWf9xsw13i+0nY6UEMam9jwB9oHrY86DVTBul65U8Td
	37tvMMcUjkleLqPkKf3pd45RSMHEayX0kKILy8skjESj3zsqqutgS+saUN5InFeWqvuYvzulgze
	LHgxgd2+VLskRUrBlFH4xdHVW8THJoKv/nH3EwJFI0LmusIzqTopryLXn3i8zepo5cEBFf8TekS
	QXdAKcenLwSiATRNt8g6miqbO7RRJhBarZnWUiEvjYdU0hSYLvG0x1NNM5Ts22fqRXhqrp8lHqf
	yKBYaAN5Ba953GSofBVXmTz8BrdBlC+p6j7uCMv0RJOaScLFJs568ZERcH6OyXQ8WZszvr93xBF
	+86/j29mfotNPJuS/EO/S+Xa8JGFMsgZE3pnHzm1dzbNDEuGOYf6jKP9vKzjt9GyuHnH/t6WJO9
	fURY2xmhhxw62DpG8w99GCZave/HN2TWsBnyT0HwoNliO7rgSRDKu3AFBpOT692kAqzjMwrpxk5
	D26Fp8FAAV4NUb0JBAa/XYg4HWDK3/l5rHyOreTK
X-Received: by 2002:a5d:6f0f:0:b0:48e:679a:4aeb with SMTP id ffacd0b85a97d-49586a3c015mr4911501f8f.3.1794184479389;
        Sun, 08 Nov 2026 16:34:39 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:35 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:25 +0000
Subject: [PATCH 13/17] dt-bindings: thermal: qcom-tsens: Document the
 Halliday Temperature Sensor
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-13-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=829;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=QaX1Uqhi9JFBTyniSmrOqgkrx65fb+cn/pSnBpltl3Q=;
 b=Nal1T+ROAiQwIycyxEfKMIQ4y4aGW1L0uJ4HewmCRmGIZfSJuQVD6Fg2qPRcOrHnEpA/WiD2I
 u4aa5TB+J3JDBwhP4O82nlPD61zqIxNlRPMGwQQVcuKGnMJPv1tp6Q6
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163441_666842_E4C28633 
X-CRM114-Status: UNSURE (   8.70  )
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

Document the Temperature Sensor (TSENS) on the Qualcomm Halliday SoC.

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
