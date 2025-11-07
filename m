Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E979CCFA18
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fot/ODPZKPmPsUNcalQ0RVa6Nrmmj5o6991KT7cFWP0=; b=n0nk78MsOOM0F3
	e7WmkOWCz92mtLDg80xzfciBY8WTp4XYhgPJUp0iLxuFHBXC4MpIu46r5aQG2JQXvEal7mUZ5hm+R
	QVDc30as8Jg6K1DPju5TOE/zDZX/gqAj2k5dOSTuC9CWBc1lU6coMP+hl/3anvHcw5BQgdMAe13um
	GpZtW/3RuGpd7kEQukR22lTVNrR7FlLOh/IkkRmp2//UsKYdRkOIpgGW+EYLLdPgvljtCC9PGTLe9
	ll2nAPMU1yz94JteWYlDoUQf49NqcDAEOVc4oslfeK1iIhD5Sy0AbSVD9XsCMntWBdaCrqCmfuR15
	P95uS40y64QeTDbYCzUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHOvp-0000000035n-3gWn;
	Fri, 07 Nov 2025 16:03:21 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHOvn-0000000032j-0jqi
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 16:03:20 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso870014f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 07 Nov 2025 08:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762531397; x=1763136197; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jn/Od/4YICRZnXAyEJg+dgWKk8kIueyrVLZ2I+p4YAM=;
        b=SXenQJy/o3b3/qaCn2bgRs6ONDxGcIvBKjPa/eE86N7Y44Iw3R569x9UVhmutQm5fh
         K/4yI6kzUBovn9jU3AQJOhLxAWAjh+Wb2erbzvgYEBrwxIqE/7aUJ9wQEre9wP4/Zft1
         g93l0rsD92921vESPe8i/mVyHYqJeiQvE5H4G4mUo8CuCwbI09QXUeH3rcYKt6vtWmZS
         zArRothlwzvvsPw2WLVjrSGL0L9095A+5KVlGD5gD8YxLVTG73AgX1YpLwwp8sTP/I15
         8Q8J2wDXbbPEV+8rap3YzqLSjcKBgkL5Czfdp1jx//6x2H7GeVhdY/sgdsUicgqUP74O
         1Rbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762531397; x=1763136197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jn/Od/4YICRZnXAyEJg+dgWKk8kIueyrVLZ2I+p4YAM=;
        b=UF13F2PK//h7yUMFBGEhfKE3miFIDpDO4raMkBUNpe7wNIiNfkprg185y82BNWj/mI
         GR21V0oq4Cp/Qx+YNkygr4bvQwY467LqhI//8ifWkQ2xgnspdQHk0xtqHrMXv3hAGac2
         8fG15/pBUjU7/nLFNIwxhVqifb7lEzTj1cdqj7O8LSWEZQFGAMyGt3fnQhUeediMg8q7
         5+GNbNw6diKWZkUzBJFfJ3T4OG/6xhulWrlE3B/4K9px6M4ugGC8ZdW5WMo8dL09U0fV
         r2Prxaq+Coi2dxIckjlHAHxzZiMzv9C6KB5kssuyU9K5wVbpLCdWYpZGgpGxn8Gex5L0
         LllQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr6s47l4ZsPD5xA9XfAzOt9Y71aAITAuEzQ9GBn+GD7TKvmJfs3j/stxnYnv8FOJs+B2MT91dasho=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe4UjH/E2grXfu1Q6aCyhekJeuOleTYgY72n82zcT3YfsWoSmS
	ux96CE6IqpvLBXaTok0yvfAML5llznrUx/5dNT/udI1a4DsBCZAkw2Y1eqnlug==
X-Gm-Gg: ASbGnctaJhohanekD17J3i1s4JNnUA6QmYCubi6mvANDvvnoGY5EouPdcLQ8sV2mJi6
	ZzLtLBiFKzUrtOT0w5pJgaEt17YWJEAsNM28Iz03TusPo/qUXUSlCESYr5ZCFUOrkmGdRS+nnGy
	LsTcuIQ4v9OTxVRZirolC5D9/MTLyEjQFQrdH/FeW5vTBddXmQGb7wBLHJ0B3OlEeE0K2hlTMUT
	iofG4P11jdaMirstQaV8Q0mT3+B9jcfr8SwxqFUn11D9VaB0WEjRHHAOxo9LL/ZwOkRFhfV2LZ8
	YNfq4zPKuv2ddSjV84rJ1c/qSHWkYi0XiSbaudXjfejgZYtSnn/tNJuvx3oJRrAFBOBSUtd/TiK
	D0N58Atd3ijGiTD6XTPK4qjjIarTsa1njgFBYcp/qCZb18ZrgE257jGc3J/1NFD9h3GnT5iY5zH
	87lTpTHrLFGvDcuXtp+rKzHXnBiMj5wQ==
X-Google-Smtp-Source: AGHT+IFlyBZfNRMNXVV5qUwRTFWSjWoXooTbJycgw3IhWharvD9aJ29E4znbDQrJZiQenU37vZU4XQ==
X-Received: by 2002:a5d:5f94:0:b0:428:1475:6a26 with SMTP id ffacd0b85a97d-42ae5af41cemr3864192f8f.56.1762531396986;
        Fri, 07 Nov 2025 08:03:16 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm6058016f8f.19.2025.11.07.08.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:03:16 -0800 (PST)
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
Subject: [PATCH v4 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Fri,  7 Nov 2025 17:02:43 +0100
Message-ID: <20251107160251.2307088-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251107160251.2307088-1-ansuelsmth@gmail.com>
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_080319_228705_2F1B0CE3 
X-CRM114-Status: GOOD (  11.57  )
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
