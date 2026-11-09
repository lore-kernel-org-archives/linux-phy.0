Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD7C606A32A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LxgQC9h2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FsRJrQtz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=efIM9FjnMdyLIAzzqjK2foaUXLVLm8u8x1hFTEl6sGU=; b=LxgQC9h2it6ARENXhGqGqUpKfu
	f+MAJdQPlCOsOmm7tZNDfLH4gSg3cqSYMz0HHpmbKudZta087TVXAgxfmkZU2svsPp+wcofIKjaxC
	3cQ/R0maqJlVu5vs3tZfmZilUXggHbOG3C5r9jrtrRPmVxl1xJY0I4Zsq4fYBTq2eiHd2Czog0gE3
	MeiOE7PLYDe7J/YYbUJ031e/8zEnjtkOI+V2aV7sMu4rZPhoIjFJSGh6RKkvTMaFfBVqpS+Q00ngM
	AqPvQsyOk0SD9wf4QkG94MaQA3NNnhn78GZ2MOfbxx10C/DNoW90OC3rSuQM7jJnnwWTlRTJaGfpO
	q4lybujQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJIv-0000000HX7p-3Ap3;
	Mon, 09 Nov 2026 06:56:33 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJIq-0000000HX3y-19JX
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 06:56:31 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-1ae18eb9ad0so526260c88.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 22:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794207387; x=1794812187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C7z8/qe+AfvmJGG4y2bRYtRiZGRNOq/Sl0ivxixfInc=;
        b=FsRJrQtzb6IgDdS51pi0hJG6lQdCG4A3c8ETVvCOEkB+RF+5cho1A4y6oXll2KBeJE
         fw4EBGXpzcXeC0PZXnKh21nTy5M6o8zhy+ssb9h6591TYpB02DZiwytd9zHNSWOW09cc
         vTjj1JwgXy9y7KaFgawAFAcz9NMsaOIsUFloM8XFlrxx0etF+ydksulxJhR3LM96sg+j
         vFnrJPR+v5IeYYul0xxbbgY89iScokGGYCJt5uR7WJcBawBDqPf+B53xkZROPAPaCQcH
         2k3F1Ss5mMA6YXXI2SufBD1b1Gtv/LHhaRBJj77wI1QlbGBBNZXLE9gdrn5Sz6wTFznv
         5BOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794207387; x=1794812187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=C7z8/qe+AfvmJGG4y2bRYtRiZGRNOq/Sl0ivxixfInc=;
        b=GR1XMCBK50b1Pm5g/i6rYHS5+Y5HnAX5EfpWRR5cwQ1Nqc8WGR/KUD3k/dasRdlmsz
         oH85O4u/QPMFsM6Mt/9vmME40IrkhF581COjEExy7QWayxKc+wFWVj0AhXZyOBFmRPcx
         vKT6hmHqUewSfJi/QLHSM2w3hyjKdRGIPTTiCj6Hmc8jH+rk+AIAZKnWjy1tdWgCway5
         oBPgHI6B98ajuOf2cQNIUPuvTJVbEQRpnDcTnjf3w4vB8ppebhD60+cvnzzzRfhSVKdd
         E0mdjK6Nz2i4X/kcWcoCGt3OD4LgJPVEl3Mp5hUFvR+B9Btz+SrJz3EmQV5B7QT6TIDb
         QfBQ==
X-Forwarded-Encrypted: i=1; AL+hErE/giyAqB4lfxX4e8PZF6cXEExZbkX8fSbNA0bNUHWoLJj6u7X94sWi9mtWPoHXgblEl4sY9hjhqVM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9oAUJJoZqdGL8jS6sp70Jdw1kYx7l2/dB+D+Jjsbdzc29tlvXv
	K3ibjYXUmIdKCTNXuUq4fAw9S0Vxc9LmOPPMboo/XmvYCcNgno5FHikr
X-Gm-Gg: AYBFou2YvVCMAJgeoM0w/hlgKvJWz5OtYBtJPw3UU1tIPN4B8bOx1AHddDAaHFKERjO
	FDPxKjHpxdNXEopb3/fxpkkS7zTo6tT0z8X6AJmT9ZuuDcNkWekw7gseCt0wUp31oI2fpdPcGBi
	0sD7AhtGJdhETWqXH6uASa0DwdhnMvo42rlUTALpoDHHSKT8cPAEtYDz7ziOkyA21RRdyDJLqFB
	sNANkV0A8bTFev+43q54E2sURd7iUnxs1k0x2X4b2dFkErQqLk0QHpnxvnJCM7xBtioUSB5ogBM
	fKvAp9Wxodews7OogwHcGk6lAm3W+OM0bbTtNoti3eDLy4YL5+9HPI9whZBKMDfLVQB3peK+5pb
	KUWDJYnE70mD3AGr0X67CjxIIJmO/R2rtVPP6VQjOfmYG6A8au+RKtXm01l/ZHJT9HKYZtoPYX9
	W5tAHOsIyB5ZQc1w9JYmviXVhjnme7RHysGiP5gvZt1ed6M7Jnd6qA2JZ1ZDh6+skm77nqRMYT3
	iN2/xhvXSCoV/376qkLUlOM23NLUI6wG4Z8/p/2JbrBLF0TzaSlR7dJ6zvTQ3MEzYwsg8grGd8M
	f48wH0weUMXB4a4oBnmz5HYM6wtlXMJfLTaup34SjhyH5pMCjKIdqn027qN53qeId9/CuHJQp1p
	yUVEWdUmrvn0QtCCk8w==
X-Received: by 2002:a05:7022:ec07:b0:1b2:557a:aa12 with SMTP id a92af1059eb24-1b39fe8762emr6494368c88.15.1794207387028;
        Sun, 08 Nov 2026 22:56:27 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3757214cbsm10120176c88.13.2026.11.08.22.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 22:56:26 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v8 3/4] phy: nuvoton: phy-ma35d1-usb2: remove unused linux/io.h include
Date: Mon,  9 Nov 2026 14:56:05 +0800
Message-ID: <20261109065606.62641-4-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261109065606.62641-1-a0987203069@gmail.com>
References: <20261109065606.62641-1-a0987203069@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_225630_708868_1551CBE3 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.8 (-)
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
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,FROM_LOCAL_HEX,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This driver never performs direct MMIO access (no readl()/writel()/
ioremap()/__iomem); all register access goes through regmap via
syscon_regmap_lookup_by_phandle(). linux/io.h has therefore been
unused since the driver was first added.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 drivers/phy/nuvoton/phy-ma35d1-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
index 9a459b700ed4..0b9976fb15c1 100644
--- a/drivers/phy/nuvoton/phy-ma35d1-usb2.c
+++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
@@ -5,7 +5,6 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
-#include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
