Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B4FCD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRJL+6Q1pwYrH8f7lnB8P1bLsyndgE1WWpuZzStxDT4=; b=iMYqvsI1u7yAmW
	jsFiGwSwiYcOH6X4/DdEB4EG97QUmN7bJidRoM3x2na7B9rxZVVpzwhi9mYuHusyTtV4F/c2xtrcy
	u3H6Dyu7RUYLKdDGjD+t7sK/kGqc9eUgd1K2gBBDE/ETE29x+8LHmcwGB1A8bVIToriARoojs1bSF
	l2YbkGRU9OYNtF0gFMvDQMKCbWCYJlJS05KweSFDT2medCcpKpWMSjIrUDDoLVk+ihluACktiOhQz
	WGYoZnNuaOrvH2hamUtNSPGYcC+V7f+xmBxLzP9nXRmYzJQnjwvEMlhjQMFT3qGPUWQQ9YbeX1LPB
	9QZvkxiCwFNU7L62jjkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNEh-00000002pI6-25Nn;
	Thu, 04 Apr 2024 13:34:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAo-00000002agG-1gP6
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Apr 2024 12:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cXMXdhzuoLCLynIjoXzQvanMKsFRKu7E/3G3H+50quM=; b=Sddnnd+friiy4huuftyDmGI9yO
	Q/BZz5vC/IcW0ee8WQAXsUuDaaBIg2o29CMQg+KAiC0sEgyczwFCpad8qQdxmpfdW+30OmpBTPaLU
	iyQ9VPln58jj7o3n9GZT4AsZIIFDI026ee85/dxedWwreYYcttVFSndQobwUVBc5ELeBwdfo4JPhb
	GnRPw8GGd3X5sXVCDaUbeRaWLsDy8o9STs6OkWnGUb9r5JVEW4osIqXTW7aW7elxnWW+AsXhZhhej
	Wan3ZOHiHPdCcfHaeJRZU/KNKik+Q7NmqBf3OoJgrujNo40vTc2AAlLGid3ZnRW1MeOuHYxcC30s9
	Ljrq/yCA==;
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAk-000000052D5-2Rob
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:28 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-343cd12630aso181868f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233584; x=1712838384; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXMXdhzuoLCLynIjoXzQvanMKsFRKu7E/3G3H+50quM=;
        b=rWCL3IzxodgqJsG5JpY5gxqxO4sEngbSrvSahSQM7SLuQx8XHxLRWHx/8284UH24wp
         t8CAD1QI4oVSd1leNbNiUSD2qQ1hXFCk/O5SW7bgwLBcseE/KxauRcy+bLi+RHxmuud8
         ymLxRKsDBOnTsx8TDu05hdK3VefDiUwjdcs4QXxrv/efEvRfrZQ1O6IZwLHtAHFU56a6
         iHkIl6OirK8p0XoE/i3BNE3y3vdrz25/h1xjFMD2eukvj3szup9UhE6GMjPvSUX1pIMF
         CAq9n3pWmPeRVU3f1bOn5I/cukze9tBnM9EGevXzORdteQaoKn7nz51+3JKVMdEzNqAh
         vi1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233584; x=1712838384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cXMXdhzuoLCLynIjoXzQvanMKsFRKu7E/3G3H+50quM=;
        b=D4WA00QXtyiJIzdMNNj0h/XsAH2qZiceWSCXPzxbp/wUTqQBrfqC7NYeVxhIvugK9v
         jI5/c9YtAdd/7mQHMC2al3O+SHyI4eFpcMHELnhabtim95d5wXyJQTUN9+33gPaJV0Ku
         j0cSw5LF4jAm7asYlgI119eKzOkRmien6y9xqkp0Lql9s8rm5gk7FLj2zM9zdqWuM/Fz
         W3jpZxHWNrJ4dug1itsJuGl1TLS0G7OhczCO9WRT5tw40AkayPoD1UOwz0SuHmlSYJwy
         QXS1XLv8vD/STimwTGQABTlW+XPHavlnbmZU5QbYDGPhHbyuvaGpVrI7BNm14EipuNTj
         7n9g==
X-Forwarded-Encrypted: i=1; AJvYcCVeiEEIRLT7prtrkQ1QvRQpclN8/Z2NC1qjp2gYunK3yAPcH2o+FqrEdAoSg77bZnogUqeMvGiFnlRbTzJkGj/W7lTnyxL99iehEfBYwQ==
X-Gm-Message-State: AOJu0Yy+8ewRtGieEf3ba9e0sy7meUOuzjG93SM0QkhGKsVq13MfcTTd
	DDE72bIbkXFtvb1ZwfcqokTsmouu/P5J14g3ffL6f9d4avbz4yRenXcn0fgwiYE=
X-Google-Smtp-Source: AGHT+IEApEjUKboR0OBWLDTAS6Jxlk1eQTEdQEi/Xza6SHa5181j+IZCoUEpXbG45sbONQ13Dr267A==
X-Received: by 2002:a5d:60ce:0:b0:343:9189:e685 with SMTP id x14-20020a5d60ce000000b003439189e685mr1644596wrt.48.1712233584399;
        Thu, 04 Apr 2024 05:26:24 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:23 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 02/17] dt-bindings: soc: google: exynos-sysreg: add dedicated hsi2 sysreg compatible
Date: Thu,  4 Apr 2024 13:25:44 +0100
Message-ID: <20240404122559.898930-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_132627_118260_2DB41190 
X-CRM114-Status: UNSURE (   7.77  )
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

Update dt schema to include the gs101 hsi2 sysreg compatible.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index c0c6ce8fc786..3ca220582897 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - google,gs101-apm-sysreg
+              - google,gs101-hsi2-sysreg
               - google,gs101-peric0-sysreg
               - google,gs101-peric1-sysreg
               - samsung,exynos3-sysreg
@@ -72,6 +73,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-hsi2-sysreg
               - google,gs101-peric0-sysreg
               - google,gs101-peric1-sysreg
               - samsung,exynos850-cmgp-sysreg
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
