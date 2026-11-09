Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86AF606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EL4OS5A9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=EK8o8ut6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=H984lJzkeQ80Cd91GUSYq5Ai/jZyddh4codIxRzGGYw=; b=EL4OS5A9hjHtdLIjKaoJyo+c6Q
	NphywJIy1B1rtc10IgDhjR5/8pXNp1ode8EzrAZibpZDMNBMte4dE7HMhYK3JwBVxTcHK4H6UAIMB
	K94pWDF6fSHaVeF60NcVwP1GcfgNz2Ua4fgvnZcBxaGegn1/pYuzCAxHvGGutPQN2+1JneAVymkeN
	rQUqARBe9ft+avYRN7dh+hs5Y03sXbq5R4m5qAvawp6N2gqq6TQntmYXbnLnMgFy9ElnLNuYjCFT3
	9HsIqVB+Ce7GAW0RnAWaxdmkxW1OJJ+VdA3SqpaXMd8nQhMsdy1Ul8pDJ0Enxpd1JmUHS0DsYzwsm
	FIZLL4yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKs-0000000GyYN-1V83;
	Mon, 09 Nov 2026 00:34:10 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKp-0000000GyU5-1LRP
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:34:08 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4b7252a32c8so2998785e9.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184446; x=1794789246; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3GDSoMHQsxRWl9RceBND7eXD7fNs4JK2UCz+AN9Gniw=;
        b=EK8o8ut6kuy+tdFMmpMkJVDrqty/3QTRERYgADDK2YLBGIc+QDi+b8y/Y4vkam3g8c
         eENYZPfpmCTqSc+Yai2WUUuEN2f1VFupHcJ4D2f0PLqwWqr1rA7UKF3RGJ8mY8d3zJLF
         QH4fYECC+ignomfZJAKSt3NpZz/kEk4TmESNVdqX2jylF1eERAtq0NujydcmgrUPSGhN
         aNtHs/Idiepy2v8ZHB6rbqftwUCrQ6A3KUl9gc5wDZNFbn01z9mNyFh6KmUH2EV1xBCE
         zd73YA6xco6ROg1NPLBFo6iL/fzCle1Xuhi7NWVsnRv5fzvIWulzRFnJby4P7vCSi7X3
         dAnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184446; x=1794789246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3GDSoMHQsxRWl9RceBND7eXD7fNs4JK2UCz+AN9Gniw=;
        b=I9SjXkL7Au1XDZh4WM+ActYojxyUxiyoq8VKqx5pTlp83rQcuICjQeTm6AWP7ohpig
         9tkkGuvF9MuN5aoBVP3IgSZU2QFc261tzeWnEHccM4JXrJDvn/lT6nxcfXo0iI+lfV8D
         zasjERD5IJ3y1zDWLjNBwPbZGx9stnq7kF9rI4r0SUvauVCblNd9tq2E+Ydt15XJj1+L
         0Qy0ZDA86Fpu2N5jp5LoXJMeUkgI1GeENhm6685f4QhdwA5CnUKXmPxdR/2j398ByE8k
         sI49vPaYJGWkC1asDt8er1O7xcbPuCHOp3rRm3ILBTnfSlGzTZdAOrTdbsAJ6TeNQQ8m
         /Dbg==
X-Forwarded-Encrypted: i=1; AL+hErHrWPRWkdfR8ay0wCHaw2sEdhCHM9FzcrGaYj3A008wwDn+/tmcSZPkewkn06t4qklUuQ698VKtoVI=@lists.infradead.org
X-Gm-Message-State: APuU4Z89Ur/G3kbV3uwGcDLon8pOs2pK9VLiRuCDy/KXiYXmg288/k0l
	XxyJNVXlT738o41PVK1lX89cdXOQse3UDgjZB0Nct/P5ewAMZ+ZFNHTh
X-Gm-Gg: AYBFou1jscLr5N9/x4zytKzOYgg15wDP5l08wOAP2EdlCxwErIJ37YzXWWVV31MUtjK
	KjY3a8vSMr8zDshH6Ob6V2wHdrl4SndxP91Yei+0IDfygkkMDAhT6O2owszvnYsgMAVE01F8vx+
	nVyiG06f8mVvPc0VrxTgU43NZ5aww7AmBaUnAJtP2AGbW8Hf0jkxV01fNpp83352DV7+FzJbQzY
	Os5jOB+mXnI/CBRrZtZQnk7XRAjFbgP6Za5+K0zY5UPdZ6MjQrEWo6EjsHdTZ7qDbNZmoiBhd2a
	wCYezdrRKWnp2Olt7nqJIJdK/KsfLqqKrPEts1PV7vKaK/ZYbuK0gnQm+vq+JqMog0nBE0XfrB3
	/1iNhEolSofi/WMB4jTk/uHmrblNDJVXkAvZtvpCmc9iAhJHBQs+p9CkD0x2hZwcc0p7PCMK0cp
	QZIxTbxFbiMPQbVC0+nlevFEIrrWGqEhQyp/nzrCX8wkmX8x1RAWIdlpIdnI1q2AOcfERvuT6jq
	4bWo9tcVuEZy4Vf0lVwXB32NIGRZAf2dmVRp7QtekrVYzgaeH9T9fGvICZwZQma5CrGnxjzFRNT
	VRsZN1Y/3UGQzXLTXBlzS5jiTm7n1hyihAVCdcss
X-Received: by 2002:a05:600c:a010:b0:4a1:c5eb:b445 with SMTP id 5b1f17b1804b1-4b963ca3a7cmr51069905e9.35.1794184445733;
        Sun, 08 Nov 2026 16:34:05 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:34:04 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:20 +0000
Subject: [PATCH 08/17] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 Halliday HS PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-8-289114ab8197@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=891;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=iomST/Qr961He4Ne7crBcxin7EtHuKLr8auNEsY1c6w=;
 b=4DxRuDlo3Sv6o3VM377FCKNLzrNNMHf6FsM5TYa93t66FIlBhCp/mgcC4QeOncc3ZgmuRzx3Y
 hjxDAxOeJv2BA5u50QEvvg0b3XgcZ1hYXm30qFoJ+yx+NwOICn4vuuC
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163407_420981_55524511 
X-CRM114-Status: UNSURE (   8.77  )
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

Document the Synopsys femto USB high-speed PHY on the Qualcomm Halliday
SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 661759b25064..8ff1db4a1d79 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,usb-snps-hs-5nm-phy
       - items:
           - enum:
+              - qcom,halliday-usb-hs-phy
               - qcom,qcs8300-usb-hs-phy
               - qcom,qdu1000-usb-hs-phy
               - qcom,sc7280-usb-hs-phy

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
