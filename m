Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 291FACD4F54
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 22:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8fV0ywmXnvl59gZZKty1sOAfApJsAj5rykNBHr0fKM=; b=rPqROqZ+UBpGhO
	+qGbOaXj1n25CD4uM3FOWKwxZ2MqYRgKE/gpc2jKyhYGLsfCwh39Yty38r6Y1hECAYh9q9V6T4wmP
	ctuS5wWRVF6iqce8et+e9BVqZiw05prdYKkoodz95msm6fjRe43TyOCMzWbq0dCDfr9/RVVBz8lLa
	Vd6BRAF+bLFJckKkaCYaJfSbjGBJe/hi9GIJQ1fwqvNN0SDCzs7KSWD/+O2glEbin7zhXJoN9xi2P
	xJZBd4eL5cmCjSIGtHkmciUSpm6RoR/UNwIrO7ZCCh2GaiCaYTC3hln2zv9EKoE81ghtnabId45Yu
	DyLEfJgiGGfGzfBvADFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSc2-00000002uD6-3knx;
	Tue, 19 May 2026 22:08:30 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSbz-00000002uA5-1rdx
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 22:08:29 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-488a14c31eeso24956485e9.0
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 15:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779228506; x=1779833306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Pl3lC2lLvKX6xR22U61HDIBcCG9FBCIFd8HUnvukfE=;
        b=SLc8to0QDfFJgORHT9m3LiQZetBqm9Alz3gd5JEzx2UePFGtVOb1Dag4EXsA9WEwJT
         BR9EtQ0jnYUJaYlJYuMWEAWcR6w3M07fJ/ZB5lZ7b/1lZ5cmNelGF7DBrtthKlA5003s
         mIdhs57dPvHVJtAw5EozGNYQPO1IrX71GOR2L+/SzUCwUqcmizSrL+FmT8LEeHpYMA1q
         Xyt1K3RjdOLc3MdZyjyu75VqrDpNNRNnwi8JJibpfdYsx7IpR5lmdH1qig0Y917lM25P
         +7Hu04JAroL7QQwWWMRaeyD38vo9sPr/ct2wnxIX3TWyVmvI1pbf3JrFlm7C26VX4idV
         hENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779228506; x=1779833306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+Pl3lC2lLvKX6xR22U61HDIBcCG9FBCIFd8HUnvukfE=;
        b=PhROkj3RL0pm3A+YZj8VjrE4dMuKvCcIhWcvGEjnXPanTnmNMtusjkaHWNXltQ0GFj
         8JNaImsodIr9AdIHKmd5CMbpTJ3ygtIve2DJBefPRUVPwqDAGEOOsQir122UJgB6RFTF
         PY83IrT1UgO/lTrkwceoFRhV2VhNTp0HyGYWSrIB0qbCSDRVEm7k5NFO74KmMIB5wMSR
         0s/iQb8TzuXmmFO89uyZ6TD7s+/euQxsKsm5sTWyVjREOGHTLgY+ST/GU2ep/vBf6hgE
         HYCGSOW/+1BiACTob0CysPbmfgIoz03JG98gLqWBb1pytlvjETnq7iNQ6rVMMkhs8p9B
         Pr4Q==
X-Forwarded-Encrypted: i=1; AFNElJ9w1RgUKlDMaMFTn+uizbeStmkYruRHE49OzjhjFzxyGauiDo6vYRIbOIOWPzijlW89eQu+JCC7J6Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfHMnheH500smF83L/0Dvvfi83AyQN9nNb8/Ot0uCQm6mVq54p
	dOCKa0M+07bJSbISQt5me+cKnD8GBYHMVSR72VBOH3qdjoeDdGEH/ko4
X-Gm-Gg: Acq92OEq47sk/ABb2eMYIFk/97we16PCkikhTMXaB0lteq2K1OqMUh0OicnbxGcDLcU
	FpryaAYusXDeKqKg3gmAsdLnMl62nwj13TLAg1uOwipDb5GolyxBoP8TkooTnTBlDokN7T4Orlw
	hgfFms3sL7k/4t3aB2A0TOyDh8h4R+LSnC1xXXTHsuG/DbCjAIQV1RVfgka7YUZrt23DpBV8wE4
	zSyMElvkV9ts6IiHiT5vJuLEtLlK8kpdMXGBBFgtIByyXDkcw4rXXW+XBphhieaI0TUiVeSV1JD
	DtzaPGctPTO8FcWyFp/V7KkcadXNfDeqWE2c2+uS6gQfXKll3TUgmhzz+VXCpe9FP8zR7FoC4rW
	ZfvCIRdqOCpD3clYuNuzLUdSpKopyglPSawY9EBnIgWFv7yR6+iOxzi6nXQwqDrHwkLfcAVo8D4
	ChChsg2/SV40LfLGAfvTjShZoViNt68LFDdyxa5VWiqrW25dNuDQAdY+AWDTBDAI/6fm/ysWWVJ
	E7FpJKbpowh6gg/2ZI1
X-Received: by 2002:a05:600c:1593:b0:48f:f199:79f7 with SMTP id 5b1f17b1804b1-48ff1997aaemr165115725e9.27.1779228505743;
        Tue, 19 May 2026 15:08:25 -0700 (PDT)
Received: from Ansuel-XPS24 (host-82-55-252-101.retail.telecomitalia.it. [82.55.252.101])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48febe585absm118304005e9.19.2026.05.19.15.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 15:08:25 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v7 1/6] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Wed, 20 May 2026 00:08:06 +0200
Message-ID: <20260519220813.28468-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260519220813.28468-1-ansuelsmth@gmail.com>
References: <20260519220813.28468-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_150827_496361_4A2BA49F 
X-CRM114-Status: GOOD (  12.72  )
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

The PCIe Serdes can be both used for PCIe operation or Ethernet.

Add bindings to permit correct reference of the different ports in DT,
mostly to differentiate the different supported modes internally to the
drivers.

Values are just symbolic and enumerates the Serdes port with a specific
number for precise reference.

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
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
