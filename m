Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4DB2C19F53
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xPP4o7knwHrx/cp+IiiJ8990Jkf1+iWaTU+kw6JgPs=; b=TW8VZeQhSlrSuC
	msYeBT4vzR9PDlf/jK3+OWGnMnwrnDBnChUBPKp9rm1OpgPeyEztHzjhsH/Vr552VhuZKzJuIQw86
	Nfvq3FZUfmuRew/zOIIzqofezaaXwB5mzy0TBe6jYYU9qu+JwazbRrAVp2eiNEu9tbdVll64hAO7f
	d/NxC2AWi/6azhzITrxnur5wxmcktrjj13lZZ5XwlkZwADCMD0fFJrtU+7LHNeQ60JPhlmRqxIdZy
	EnsEVgyJ4Aa6iBJh4w53Wawefx2oPKF0La35c3CuvGVkqD5393YnZsEfPwha7GXfqYc198uNvY+2K
	KZb3dVgxPxmiq3kG3wCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aY-00000008XQi-2DYQ;
	Wed, 01 May 2024 04:29:02 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aW-00000008XPQ-0AoO
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:29:01 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-23d513ea22eso420537fac.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537737; x=1715142537; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQII4bd5vU3iEBUOJRNxIf3Y2tkmIxs3qzEGZCMfEv8=;
        b=lVlrjh5F+8V5+DethMj8nMA56kfYNFR38PYK5LKE4mjpMR4vZxKbU95KMkOgBlceja
         RQTshkhqAZrPwT23PTJ7Urqf2XpdGku6sIahuEMdXNOcnTCOsXIlRY/KhPMMB+KSSneD
         rSG7qwSHztUSYJsKA12WagjuC3qyGJGDwPMd8Ez8pKXRiUT6iCJ2FPva4/c4LOdqDP/U
         FS6H0L51q5xGtuzjKITFZ7W0CCdAZvYPa1lEiRH8aTFe4PPtOpl60IqdwtVj8Sq8Afvy
         8k2oMFn6hFIalmf59duTlHEBw+lyGxNqDBYR1/WTXAUo08A4ux20yaR35FiassnY1cy+
         lBzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537737; x=1715142537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eQII4bd5vU3iEBUOJRNxIf3Y2tkmIxs3qzEGZCMfEv8=;
        b=XwSe+7bzRf5qKxbmGSwXhhc/l/wpK5WNFUdSIQZal2zfNLKgdmqHxNzgy2YT1o7OMR
         PG8gj5AG8Um7Bbk2nSTCVgNYvBO91drKzl8Adv2nlM3UjIFbvfpTRwy6WRkoVZ7CfHV0
         s+yWF3TqfVq8j/DXIdJCD2jZCaX/as5wbfduES+AkMjmSC4S3/XAD1m9Xx61fWLjtKl5
         YBnBPjTiOgNP4E/o0f+OosD9/cZMRMNdlSxuiU4X8c//6Ym0zTO7z7gouRZERsXKybsm
         5SiOTOq/0pbQBbCQyXNLQS733cpw5e1u9Mj1FmQ2syH0CbQ5DR5dTU6sZdCSZpGsezgP
         Dnvw==
X-Forwarded-Encrypted: i=1; AJvYcCXRGqesp+SzwNCMQ1QMt+2ypVmrvom202znuf1WeUr5xxTr6oXR8HE+yV8fYPh/yxr4CmrTc66vCRoOE/6AaaqwUBEQJum3DzCbCmYydQ==
X-Gm-Message-State: AOJu0Yz5iyMzj4kt8IB5HA9sgghjKP/l+2j001ceR+/1ur46+pGHdHHr
	wwgVPy+xcotAzxqGUKHLQiBsbnH/CxoN5iJpUo6FwOiOiN44FrD4
X-Google-Smtp-Source: AGHT+IF0dxKW/JwgcvWoMmwvXBPtDjQ9wZTIqZg0eca+QzYjkqbSejIEdI6TQZ632LMaz009pBLE0g==
X-Received: by 2002:a05:6870:ec90:b0:22e:8fe3:a9f3 with SMTP id eo16-20020a056870ec9000b0022e8fe3a9f3mr1560608oab.17.1714537737603;
        Tue, 30 Apr 2024 21:28:57 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:28:57 -0700 (PDT)
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
Subject: [PATCH v4 RESEND 1/8] dt-bindings: clock: Add PCIe pipe related clocks for IPQ9574
Date: Tue, 30 Apr 2024 23:28:40 -0500
Message-Id: <20240501042847.1545145-2-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212900_086890_738A91A5 
X-CRM114-Status: UNSURE (   8.23  )
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
