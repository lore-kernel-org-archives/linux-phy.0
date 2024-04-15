Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71ADFC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 18:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xPP4o7knwHrx/cp+IiiJ8990Jkf1+iWaTU+kw6JgPs=; b=1WiZYEQos5M8iI
	zOBUb8N+H63QayZVI2eH4ttnFNyHDNiNphIGsoXgk1cJ9Gad8ih4r/C6OImM4mUx+DPA402nX56OI
	cMAmTAtbqhH2yrBRO03+uFS6JA9iuiturvGX//V48L5ieTnmuaS/ERhhfbZI1kxWtbCwAnOs27fBc
	TlgylCGBf0S/poiMptN4xe9DHQOHrwYy9CR/3rmDh3wro++BOz+suZNSJWd9qSfC6zt3uVZlHlZl0
	R8BFU1Jpcb0LItDftSMAhL39ik3ITxOWzIep0CVRN1M5Jqqsl+Kn8ncT3R/LNnxkrYQJ2gnREmZjq
	GsfrwWPOT52ht+mgoX/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxH-00000009Qjp-0UQc;
	Mon, 15 Apr 2024 18:21:23 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxD-00000009QhS-2rdk
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 18:21:20 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5a7d6bc81c6so2656670eaf.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 11:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713205276; x=1713810076; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQII4bd5vU3iEBUOJRNxIf3Y2tkmIxs3qzEGZCMfEv8=;
        b=gm3eCedE+/hZ9hUGUp9jfLPbk9iavIE8i7LMkqrPDw5afowHsdP3PHyPY+ODHUSJ6Q
         tQXMgtrDt5kLLUPxgHkAiPTu7Jh+NjKdCjKWm8piMoeH1Pa8bslTcN+OuTJ6DcW2Bagz
         9mMwxL6avvqQIvsjjnrI/QzjAX+NkPkUJZDOpiYztl/saGTptiqfNG/8Up3OO9EtZPkJ
         A6nNCKFtUG2QkMnc58E3D9Ew8KfxIAPhUBum1SDaQP8rHBdhGm2mNBEwPkHs1rT15BmU
         DGto1rJOQwKPOYW6mlLnuFYpiTIGOuHlTamoM4SP2Omfq7jesHP2frnKpofVCnpuC58a
         MIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713205276; x=1713810076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eQII4bd5vU3iEBUOJRNxIf3Y2tkmIxs3qzEGZCMfEv8=;
        b=lj7W61Z8Mr/tfFwWtBxskBEjeO0Nzc4YxxOSSfmNQFM1fgUQfsyapUMiZaAkLug2i9
         oKaB/8mQTnGENkduIiWsQ8kJPoepFe+Aiu8Nyn4/k4tgMxZ7aElCH9NYbjjTi6nL/cWX
         U5THDanLHSUYnhPKpU2CZDdXKUfB3BB7e9bzUPOgQKeOJ8Be1CrC2dmVwwxgueOC3xNX
         uLj/V11pMCV3/0KRwu6u99E1fUVchapWaOX0+SWD7PDpBYo8U0q/BHFsW4KtvsJD2nZ2
         fWY27GzKTHD5QJP7DUjyhUyhwUeb8R7hi36dm6ACrHe420C3Icqlbmzq/T6ikXhGhTWR
         lHOg==
X-Forwarded-Encrypted: i=1; AJvYcCVl+8yWuwXidDshXiXNcKvrho2a8AhmTR+wCHdVVsOi3scuA+J+oyCxPwoLDmAzqYjcJteyGKksbPCYYxOTfwUIQqfajzinL8IkMtaELg==
X-Gm-Message-State: AOJu0Yworvv/k1KIMDXVKKP39HrGK7d5PrTpVxZzJMqYWDhk0FWgXNMn
	t6OhOzzlO0yE+4fU9OGlYOwMg3QFhC4Tj6QUrcmWTZVuCbUkxXCT
X-Google-Smtp-Source: AGHT+IEeVcvxHNezT/W5g+Igrx1FREJxZQPkhRmeduAzr31PwaRKeMNBmncsMYxNomC3jAJlTvCPaw==
X-Received: by 2002:a05:6820:2715:b0:5aa:3b8a:b491 with SMTP id db21-20020a056820271500b005aa3b8ab491mr9969886oob.4.1713205275860;
        Mon, 15 Apr 2024 11:21:15 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id x4-20020a056820104400b005a4dc7abc01sm2177494oot.11.2024.04.15.11.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 11:21:15 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/7] dt-bindings: clock: Add PCIe pipe related clocks for IPQ9574
Date: Mon, 15 Apr 2024 13:20:46 -0500
Message-Id: <20240415182052.374494-2-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415182052.374494-1-mr.nuke.me@gmail.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_112119_743698_31E3A678 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
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

Add defines for the missing PCIe PIPE clocks.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 include/dt-bindings/clock/qcom,ipq9574-gcc.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
index 08fd3a37acaa..52123c5a09fa 100644
--- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
+++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
@@ -216,4 +216,8 @@
 #define GCC_CRYPTO_AHB_CLK				207
 #define GCC_USB0_PIPE_CLK				208
 #define GCC_USB0_SLEEP_CLK				209
+#define GCC_PCIE0_PIPE_CLK				210
+#define GCC_PCIE1_PIPE_CLK				211
+#define GCC_PCIE2_PIPE_CLK				212
+#define GCC_PCIE3_PIPE_CLK				213
 #endif
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
