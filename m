Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A7D60A3804
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gsh7VlDA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=e2bsVe0b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BJRdPldB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=c6isMEaZpbkOGGjOfXVKH1w6FkTASfPaW0GHqHOm44s=; b=Gsh7VlDABBn6p22errL0fkN0fq
	iIA4LGEyKKUdnJ1HA6nlRvo+rY8skc1l3P7W3kkVEymV/hMRdEF1dRvvM8wxoZCLX4ni4MJZJ4Zjo
	DXYqHhJ7XY0JcNivYS6nrKdiXQbRq4PDC478+/HgyuSrkJV+1IbxPrTqV3Ppzi0U+KOkcKYzcb/g+
	n89/fpqBWE8CYvBE8X9uinGewZYTULLEDKEQOxJObDuSvEtkRR3R70XdcxIZuvMIgKFEerPgwJEr8
	gOwOcv1dri6eWsl48ro9d/I2jZhT6jKHZHLliLRw70HNxH/K1XBVyasUpCXXGQobd0Juze4181FKl
	+btqwmhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLX-0000000GzC7-1tnd;
	Mon, 09 Nov 2026 00:34:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLV-0000000GzAu-3aJJ
	for linux-phy@bombadil.infradead.org;
	Mon, 09 Nov 2026 00:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RVY15LYwgm0Qc/TTM/+0NaikfZtjUT6nkNDgccuwjcg=; b=e2bsVe0b1wzm9E56/aTRolbQdA
	kiaPcz0iaYPTnHcdVsfeB9fk3PKcHdmzTNUmt0MSjfD9PfWRc1hLw4dTZL4lnvAHBQwOHjVxerC6H
	xDgzkQr11VDy53k8uu9b13FmvZ6nThml4hT5w61EmhGOV7cw8KGeejHnBTnHSPpTj7iPczC17Air8
	sZAPoYRhBIS5SbNLpPN90/zfoN0CkfsXOtFFGuDqdQ5SB2Fx9g76mvLxV98GkKNN3ej/4K9PQNj77
	5xfTVBVqpsmQp96oJnqhUcCgsHo2nYANTIHbQueT0OvYre49+FrrV1h1H2ycVLUQL7TSU47Bz8GI6
	Q9png2ww==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDLS-00000006917-3Mng
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:48 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-490d59c3f0aso138702f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184485; x=1794789285; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RVY15LYwgm0Qc/TTM/+0NaikfZtjUT6nkNDgccuwjcg=;
        b=BJRdPldBbwskhnPbmbp2jCq5U3vCxc9IzQrRpvFhCeN1iP0LPA8G2hI3eMnjvIkM1/
         GC00xljzuPyv4/fGZH4w3N/P6yqtoTBKxx+zW48JKpS2EHAQiw7OE6kiNxHkGaF1mIcY
         OuFTbPhpqke12EwbRi1SjTfdTt2NrFxR2gaQUonjMHkqrQko5dtAkYuLNP9SYSHf12VW
         B85qlUzaS7TgZlZem8f3d419PvmC8qG9me/XUFiIo0m3HtkC7g6KANZDNT7Gm1kzYpSS
         apuVXLdtSznNU+c/T/iGjWLLB7R6GpMDhc3jX4jo0Vr4lcSItYPSFoaZUCRcOBb3DHYo
         hebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184485; x=1794789285;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RVY15LYwgm0Qc/TTM/+0NaikfZtjUT6nkNDgccuwjcg=;
        b=2DWWf8pBw7Ngorwm8ogz9Ul8gPqh45W7ougDKPtEepa9CzzK0uwdxj8Fesz9pJM5IP
         8/vWgMe5cZc7NlItYDPdzdioIRQ6B9+s9trJnEvcnidwzmjdChOChsVh/o2jdvcKLhy2
         /jbMhxLkC9CRZ1DO0JoYF4VdLL6fNrQFNrwMwVwu3ANQfPpOlb6HgqWPNRbmfTJUaB27
         jN4MEhxQRh2VvKXXtiA6q5bs4QMekutLwEhXfxleES0eYir/frV5sd1Rz7n2A8GycHdQ
         OF9KeuI2bf7NhD+/A/Mjx2f487Wv/SKn75fPNTiWDozmZgzgCooyCZ+k1Z+cPPJxr5sk
         0vlA==
X-Forwarded-Encrypted: i=1; AL+hErFZLgW4S3OGwazOnCslYfbEk67A5juVNyEWEEdjtw889NJS55n81WJ/9N/oFTC7BcJGXrS1HwL0+Hw=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Ph2SfL1+PKWqPWn0sAn1Dc/yCItDtHFH1VCR5Jh5TkLLlItCA
	G1hA2ZDIgwfDrw5MvwISqjODgun963GRy9m23gv7hAAalyiwHzWeu9lz
X-Gm-Gg: AYBFou2CIS5h8EHmT1+ZW+stwqOV1iai/mFN7F6A5ox0dgE7JMYrzG4D7rHGioluvVH
	C6Pz/HZB6uucyryWonmNQjbOv0FNr6GzQjcaHYfbZj+CDMJSI4gcZ56GIzd6zAxPDjc01Uc3k2s
	r+x2z7kSEsrdUmmry3IaqxbxTNlSBwz/HTNRMD3AED3WLr3Pwa1KI0iFdGdC5uTPxSR7tvAL/kq
	ij3eDGR0J5Po8MwwzTW+t7jxkAvGUPWcVaXnvw5dkZbf1GYfl6hzjObmvMJmosnwF3jq8F6yTsi
	QwChN6V7M4CZDs3yo0Sfuz6tqRRza6pQm1VEYXWeV8pUGqIyIRqJeaveKSW6RgDBM2IA8rYcdsK
	LC9OidwbVR9G38nJg2zIkBVl7LA4vfQv8a1HUfRtYQ3PMJX6BJe/SUHJ1/cnBmR06yfcbTOfL6Y
	rxJoPZ2q/9HOIIrytv7p3E38KVXit3tY2d6RARcpPSF+NFLG9zuw2epmpw4Ia0s7hxD57quelN0
	bJWOi8wCHz/ab1cHRARA8vsOQFIpWX5sKtzlqEzOWl7meATue6hckIOcOUY79I+urZ97E8/D51R
	ICW+v9/2gxme20DO4wwMCIrSEu5XNjSogDvRcnMR
X-Received: by 2002:a05:6000:481a:b0:48e:62a9:1a65 with SMTP id ffacd0b85a97d-49584690551mr4596063f8f.49.1794184484831;
        Sun, 08 Nov 2026 16:34:44 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:43 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:26 +0000
Subject: [PATCH 14/17] dt-bindings: interconnect: OSM L3: Add Halliday EPSS
 L3 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-14-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=844;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=gWRtexQl3K6zrJ8s8OX25X6Fe6c5gXvBp3k5tSGU4UU=;
 b=pnbK9TbDaJw63lMsp+XBx3cpAT1m6LlRO8M5pm7At3undTaYtmQjFmjLHcmBIU0XLq40cIoX8
 jdWhe4OxgWuCqPNlp+TJGp7ld3LSdzNJFNkDbr6brDzv5M8VXRxZg8B
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_003446_842573_BFA83E30 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
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

Document the EPSS L3 interconnect on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index cd6685683bab..6c3475005a35 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -31,6 +31,7 @@ properties:
       - items:
           - enum:
               - qcom,eliza-epss-l3
+              - qcom,halliday-epss-l3
               - qcom,milos-epss-l3
               - qcom,sa8775p-epss-l3
               - qcom,sc7280-epss-l3

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
