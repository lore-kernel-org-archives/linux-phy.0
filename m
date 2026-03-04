Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C18ACEDEBF9
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 00:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q440DGDt4GNBtUaYCuwdQ6M/Ywt79E7niyW7Z67pcEo=; b=Q8XO40gTP3bpwx
	YOKWiY5btrR5tm6/eiZFFyeeQe5jTBUNUYoKuc/vZhzSQRbWd4zMAfXvgSgDPD170nr8q05QrtiF+
	CusJ8OKDwNN5gxtoOLYL98Sse1AM3oBc8u0xdzSliVgfAI/QFa4YFyKf6cp7I4WhQCHJRO6Bv9r06
	4m6MQS+dVO63uyligqvzEbbfYggjZGbG9YR7hITyugq9XP2f0FVearR1yYyreHCsG6qcxarS4l2Mc
	ecJlHhfOt6ibPfup2SsYHscjC2Ya37a0S9LSSY2xaXLV8D9nlIu4YXOjE5SMSVgDUI/XK7Sgonvet
	VjdhziZnPc6zQ6r/mlSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaZy-0000000GCRJ-1zjV;
	Wed, 04 Mar 2026 00:59:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaZv-0000000GCOt-3p5f
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 00:59:09 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4833115090dso64607905e9.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 16:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772585946; x=1773190746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=Bf2KPCDTuThFhivbBkdejvm0dO5uT/hu4zDEKR+VHCEYr1THOuonYtcvL26moXUbHR
         vykWqQdOU0GZGAKYpVIGvk8Gk7ZziLkPS2t1HegSHyw24wYDY/GiA9G2oJHRETZdC6l0
         pvq1rSGKFDtl7FwtiK7ycvjrp09MMqGu8Zk71vy4FuCDkseQwybHXllYQJW91l89v6jc
         YSGZ5hCUYWrag9uL/mievs3nWZcx5rjLVivbKviIusgsiDZEmcFXJQuUHJQpS1lsANbu
         OAmihgPlofwVJ8gOKVsw98r7wBiDbEyuYHZ5NbIDGIl9GvN6IrphmIkGy3qkrutKRrYx
         e1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772585946; x=1773190746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uq+Zu8LykB2khmPRxrzoypE2Ot8bOB1NxKiqjP0T/vQ=;
        b=BBME8EBfDHChABK/OF2bBVwtpDXzAcGauNYgBYR1I3s71OiZ/JOQJROLyfK/VYmDmt
         DC8IPpwG1pUXHtKaf30u1LoywZ9F11c2krSEAQNKH4GDfFr8wDr9KCHMxPPjaqPRTY04
         hqRqvjEQH90/oyoHgKpyYA6CTa/Z23CyAi3aSO8pR+ow8AJMpIyybXhwOjo8sUNMoJV7
         lzVwysTYIgXChGGvFX31c+HTlAkNLJ5+kFyyFYjtEbLRcir/VTOrJU1E24DyXzDQxCcu
         1rU+Z6J+maJSVxLhUfIpIixl8yxhA1H9II/w5geXlqyUHE0ln8BRGF3YZfAN3DC34P+C
         xgOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJpjtNAWPaFE+MVWaPuMCW2oZBkDOS7kLC1FmiOj5fZGV59fcOorhQRW5AiPsWSgivMAl6CEVq57I=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYwZixn49OCen7S0j/ZqNdZukhx8keslK+VYSJ5/NxLuy0Kn6S
	9ZzoEWCGYXskBlqCN7U1905H6Xt95wsYMTg4E/EGujKwju0GDA8yKMfR
X-Gm-Gg: ATEYQzxPeeHByHoEhuFDs6FMu9uY6IAhzjSPErMaLMfl8c4GLiLnbveA4BPR4xQSQHt
	lzn+Hs1mfmZa3CX6HBVHxUbYKsFTRGKINEg3zkeKXyhajAEwmLzuc7RzZTCaPqHgT0javnc1I4e
	ik61gGAFRel+OrvCXCvVCMb9skPT+AXdE7ry4Bic+zqvA+mJ7kscimVSwjnu1zS8nyXf+ojyQCP
	n/WyJIk1QTbM0iC/svSwsPN7M3Vg4GJo08pWZMjQUwKNd94Ae8xRghVrCvePqiZmOadGtpzggqm
	WYBkY36Lgj7gUHN/G+V/VdLV4y31Aoouin5AHMRxJyAId7IGTig9vFtshtD3dW9bkCxgc1b1clu
	yX24Xp9OmlxqNJTfeG9br8tLUQ+fy7qrJ4N33wmZ8ltARkyv5Lr7KSbIVQM7MnevBTEyry7lVwE
	4ZqCyOuU8KJOcpLthMvNejwqigQYryDybSUJkKRw1rqe1dniM2klX5t5g=
X-Received: by 2002:a05:600c:3f0d:b0:483:7903:c3b1 with SMTP id 5b1f17b1804b1-48519889a49mr3172975e9.20.1772585946112;
        Tue, 03 Mar 2026 16:59:06 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851880724esm26927575e9.9.2026.03.03.16.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 16:59:05 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Wed,  4 Mar 2026 01:58:33 +0100
Message-ID: <20260304005843.2680-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304005843.2680-1-ansuelsmth@gmail.com>
References: <20260304005843.2680-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_165907_983524_E1DE9468 
X-CRM114-Status: GOOD (  12.02  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
purpose. For example the Serdes for the USB1 port can be both
used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
used for USB 3.0 operation or for PCIe.

The PCIe Serdes can be both used for PCIe operation or for Ethernet.

Add bindings to permit correct reference of the different ports in DT,
mostly to differentiate the different supported modes internally to the
drivers.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..a14cef465dad
--- /dev/null
+++ b/include/dt-bindings/soc/airoha,scu-ssr.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
+#define __DT_BINDINGS_AIROHA_SCU_SSR_H
+
+#define AIROHA_SCU_SERDES_PCIE1		0
+#define AIROHA_SCU_SERDES_PCIE2		1
+#define AIROHA_SCU_SERDES_USB1		0
+#define AIROHA_SCU_SERDES_USB2		1
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
