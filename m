Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E2CCCF9EE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 17:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJi92C8wvlpRApFgkL+cvyyJfHVs/hB481qxu3DEJdc=; b=t0hhmSt3QoucYa
	MncjcsiSIjbeoIPCcIIXdu5FVrduWaV7xg/xXn+myB96WGSOStehW1lOPjpuUF2sDfpc/XFLRkazt
	SxKtblNOZOBW/MEcQdy84fL8olvq64iunoGDzHUH1NYlBmEsU59xNKwE7r+Q6fmZI+VafJjGv5gBi
	lQA4ow+VWK5PT1SAtkOMjTKMkhzFVWObe+pLu2HAlRcBMX7G7fYi6twoRnizuX3MHrv3rba0nT+ga
	spBfNjwu/vZ08CW9LjYGXoXgbEfM6F/LubbWbusgOwQ+fca/Q21Cp97icctAFaZbhIM4Y7kiMIdEZ
	H3SmjnRUTpiZzCP1oG9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEA71-00000002E4Q-0yjo;
	Wed, 29 Oct 2025 17:37:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEA70-00000002E35-0nDK
	for linux-phy@bombadil.infradead.org;
	Wed, 29 Oct 2025 17:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=NhUi6h4m6Y5VXT2vKK+q0h3TDlsz5Xrrk0iweaBViQE=; b=qKJNu0D4kQRKQrN3jZNupdzYEQ
	IT+gdt55ipQyUC6Y2KKuvZ9hz323M2re0x60LzTyirqOR9w+ShavscOSWppsbPFcY7z6ZB2SH7lK+
	SufTnfv0BwFlAZae4UHtdx8+0ULxNON78AJJ69uf2314ETaW2smHoBZNk8usXF6VXRCHSmuoC9Oaz
	+9A0sHVJc3LWeeP6QEz0d/U9YWpZwh+LU9x/tu2bh9M94NAhA8N6uFHImJiWEDW7WGwjkOSO6fS5V
	MOxYuNCrZjtNIXROxRBDJCn+7ILJ8W+IJ7IiV+jS8/8VYmjt2/RIkzwKWHGoULBBqWcq1StIHRgAV
	4LofCxMw==;
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9FE-00000007T9Y-01on
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 16:41:57 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3f99ac9acc4so116510f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 10:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761759445; x=1762364245; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NhUi6h4m6Y5VXT2vKK+q0h3TDlsz5Xrrk0iweaBViQE=;
        b=d1+CRgPwqluWz8Gs7tncHTAfJQ47G17xUVYqVUf3CWR0iQgAUUcAGvbF/orUyuGnXJ
         QYr/g/IjVBYN2tE0m/aEm2k4uwo5LP/Zc80ohLlXab2Sc3HQ/49Jud0E95gEQThDiivC
         yRBIdslaeX3dzyKgZZ155TUloMrL8bZgCR7YhWqQxf5/c2ZpoqpfBaZIen86qecsvso3
         A3mVZ1NwRyn6/ZZFCXE0ZLfSjwY8IITtWeM6T9kgvSrAT3ERrdc2H39D5GxQFEzPySIT
         h2sl5H7MVLtp2Z8eBU3CqqbITJJoqJ59pdJzBoSohsYBBUzFIHAftFfZnxCo54gzO6yb
         yXeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761759445; x=1762364245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhUi6h4m6Y5VXT2vKK+q0h3TDlsz5Xrrk0iweaBViQE=;
        b=dcftu9IoaF1ZZn+3JvN5C5Kh8FacIcMu0+zxfRlimM+CuSziMtPzIlkf9f1HSv3jid
         bTCjzZIMyC2ujVqizMXo1teieJE0jVn6Wic5mUtoKOynB/Y3XlYMwesJ/UwCL0+JubS/
         S0PPzrE6Je332hGB+MRoHw8Y4xDzIqSYkWh53bDOBFOlJKUAgBbnBW8u0GSvFwoFller
         tWOBEQPC8l7+2D6+ijkmfvKRumBTvgL3ORXwja1topVp2tW4LQC85VmyZt52N1FIVHqe
         2NO0sOeVtDbKiCR9+0M5fJqmreNHzVv/BvEtVzj1DhEOiAlf+2/xn/HHEk8QctFNOmiy
         YDoA==
X-Forwarded-Encrypted: i=1; AJvYcCXthYaH6hVK/ny5JQljGNTcBDEkkOf7ozq4dK+P2BVqYNcQ8VK+wsz7R9Bb6PuFddRTwu+MHzQn3+0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4S4D9HQj5vrlUxuL7DtAI9REYVpr9tEhoKlhTAwiEm5hn2Ne/
	nm6J8J+9jkyjVcsXmBFAbk8jTl5dPw3E1395z6vToMGW/YwqsCyBIs396IziVg==
X-Gm-Gg: ASbGnctVMDY0sfIg7JBa3eVMdLjq8y/G5t5n+MQAiJr8+y2PtxEkKHrcsCJZlZe6Frn
	VCvLX42zO54a1lrBun6j0n++R6EDRw8pHw1+DrAtkJ7q1XTZrpOEmz50JJ84CNX/qgYICgNj77w
	/kSnuMmU7pff4fKuE96f9W54yFK3NDfh/i3CQWbRtfAKeauvSGC/l9iGObiswP6M4wKiAECWyKI
	mkJcPtkuYp6ayoYqdfaggwrMbllTYoCXWgLMp1XSXJ9g9WHxl0bZ90GbsIQZmikLlWzkJjn6cav
	N3gS4gMH7mIPiPPJ5axTm+XDU23KNUeekxZVg5b+LWMMQrnUmOSMQAh/NPMlPl7hRrBN4ohifvu
	wDhFTxnxbMBkC0qzEnVR+Ia/zrtcCFpV8BTXXNhRVnGvUzZ+bQ5ehDJlJIFPCYnrTmGtD0LyjrZ
	gZAYqlm43XWGaWLSQxkL5sht4fbg5TMA==
X-Google-Smtp-Source: AGHT+IHzbLzBMCG4vRWavhz0gR3MN2E4QK6PUFiHctEW/nKzQ6EVw44MxYOuM0Le4svI/Ot02aqVPg==
X-Received: by 2002:a05:6000:2c0e:b0:427:632:cd3f with SMTP id ffacd0b85a97d-429aef88c52mr3318335f8f.28.1761759445032;
        Wed, 29 Oct 2025 10:37:25 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm27493844f8f.28.2025.10.29.10.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:37:24 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Wed, 29 Oct 2025 18:37:09 +0100
Message-ID: <20251029173713.7670-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251029173713.7670-1-ansuelsmth@gmail.com>
References: <20251029173713.7670-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_164156_135435_94B46D08 
X-CRM114-Status: GOOD (  12.29  )
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
---
 include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..33c64844ada3
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
+#define AIROHA_SCU_SERDES_USB1		2
+#define AIROHA_SCU_SERDES_USB2		3
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
