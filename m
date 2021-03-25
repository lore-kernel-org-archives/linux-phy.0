Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13605C433C1
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B55CA61A25
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B55CA61A25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yf9HekjebhA5MtnJhvP9+uzbMtkVhucQ3EPM3SIuGoM=; b=XV97k6fEuW6kaUjWT51zQKrds
	EOMoq+aLUYZrMdT7FItp3vEX2HzgotRItQzbNw04OIFFaPaMNaZmjTuPU+0DUQ5boYQ/8RM5xV9mC
	4cM3rp2yXwiJhOscWowQ6C8orsuo3kGAKQVBSm1/XVxNpfU8Jof0IpsVMtq+gASZeY/zxIfy/USL8
	dMiT3NVMS4kBHjDpy9H3TcO74hPD7k3Hrg4Hmz5Ch880rAEmDCHO13HFwX5882WOPuYeJAPXL5lwk
	LDAFkbi+yj0syNqJdZTRt5ThvXNNOXOnmooYE/qtVzxRKE7IvTn2suC3VhPR130Z5rNHqbUjpY7vX
	Hb/+0/8Rg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2y-001qNJ-5q; Thu, 25 Mar 2021 16:41:24 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2u-001qMm-65
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:41:22 +0000
Received: by mail-wm1-x335.google.com with SMTP id g25so1573628wmh.0
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OPzdS0BZuVjzz5zpA0akhJTbQna6KzdKZ0ifPMBA74M=;
 b=G/7ctoLhmSP84RR4q7afIf6il7apjpEgOCwfVjSesqvj7A0TsbK9VcN1MPey8dpg1j
 lJEDBiCwGbv7aKhE/42F9YUgqqy0Dd9M4qj7ztceD19taQTSU4yWc/Pkdi7ePLojBPiK
 A+4CcuYywYEZSrCLO8NcVzo0RxXIOjzYYU12tCZ/oLLaV6FYFwsN2qMyEycdCdFUpKC3
 yXUeaOMZu9uOhxDYBQV88hvih/WE3A5Cm/km8UTS8qKzqjLpP8PZNt2Pv1SebWINvUtt
 wwYLewbXulIBLRnS/nkQbsvzE6+pmOteFxLadVuV8U8bw6+mFCa0snuQceMnYc1gKqr0
 CVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OPzdS0BZuVjzz5zpA0akhJTbQna6KzdKZ0ifPMBA74M=;
 b=Sj28U/fOUs8N5evZT6oaB+pu/u2zORnxrN2m/NIkV+Vvu0i9T5GoMA+VYV9XO/a0zY
 t4vVv7Eswe/Z6d4EG+T+SxFilEJViHjJVPSBMGxsV8sRY1E17FjnlSrXaY6Fw+fDsgxZ
 QWw8h9TzJS8pfSM/r8djxwZVq2R1GfHx09cjJ8hunsGHIb/qJGzWiRmaJr1loABD8gmj
 P9We4BkphKeC70Zttn2vEQKVsYpaKmgkYM6jVzTwcOdmfe6SJo4gqM0pibVCaBbre3+u
 FnjrRm6YMlCrYGQEJ3FzrImtE7QkfLKEoyNkBnPjTFSG9z0jmMGv3l9FeIOt0KIcDZtD
 Hdtg==
X-Gm-Message-State: AOAM532YIXQkh6Iw3+k0pyI4X4WmzPEDt2wTJ1+MjalZcMt1dYvCXj1Y
 QRX06DdbH3ghF84IiOfjjDQ=
X-Google-Smtp-Source: ABdhPJybCAx2KsEH5ARujBPMu3ypk9FAutXosozY6u1qfZqL+RTzMIwChPGJ/VQvLGdpRJXNJg+O8A==
X-Received: by 2002:a05:600c:378c:: with SMTP id
 o12mr8970266wmr.69.1616690479608; 
 Thu, 25 Mar 2021 09:41:19 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id q207sm7074912wme.36.2021.03.25.09.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:41:11 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v8 08/13] dt-bindings: phy: tegra-xusb: Add nvidia,pmc prop
Date: Thu, 25 Mar 2021 17:40:52 +0100
Message-Id: <20210325164057.793954-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164120_736973_74C19787 
X-CRM114-Status: UNSURE (   9.11  )
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

From: JC Kuo <jckuo@nvidia.com>

This commit describes the "nvidia,pmc" property for Tegra210 tegra-xusb
PHY driver. It is a phandle and specifier referring to the Tegra210
pmc@7000e400 node.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.txt      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.txt b/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.txt
index 38c5fa21f435..b62397d2bb0c 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.txt
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.txt
@@ -54,6 +54,7 @@ For Tegra210:
 - avdd-pll-uerefe-supply: PLLE reference PLL power supply. Must supply 1.05 V.
 - dvdd-pex-pll-supply: PCIe/USB3 PLL power supply. Must supply 1.05 V.
 - hvdd-pex-pll-e-supply: High-voltage PLLE power supply. Must supply 1.8 V.
+- nvidia,pmc: phandle and specifier referring to the Tegra210 PMC node.
 
 For Tegra186:
 - avdd-pll-erefeut-supply: UPHY brick and reference clock as well as UTMI PHY
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
