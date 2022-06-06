Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E032CC43334
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 09:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4HvUadG5AOAtnYmcp4YTSRa+Gu8KRjkq3ewTFW2SBs=; b=Rap2swBqDrwa5x
	Msa/xjvPrpV2qBFTeB7WnNuT/eHziLqjMcNDOJfvIp5SgqzyvtCZPaZ1HngsbTheMVOnPwI5rlA2i
	wFh2bzeKQi0nXT6t0vrJTqwtdswdCOR/ZnEbwqgGWwUjC6Uvu1XexJiOaXtqwAHIhubFX96mzyRkw
	D0GeBfdVykyWLQhW5bwBNTsXkRLRbZ1zBWJYgJbXUgCB15ozpdH86SPWZV/jp4ACLimdJJPOIC7qU
	hNAQGAvVy0IW60EBuzvV0HPAPDXxzue6nX/v+0BpvS+AZmdqeSIo6GB5pPKAjbVAknIHqFRZNcNW9
	jXr1gtnhsc3Fu0gevgJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny8xY-000NU9-3n; Mon, 06 Jun 2022 09:23:40 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny8wd-000N0A-Uc
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 09:22:45 +0000
Received: by mail-ed1-x52b.google.com with SMTP id z7so17922138edm.13
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 02:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B2qzsX69MvR2kCiL+jvxQvKEdryENRI1HIL++8WDe/w=;
        b=Y67yUMGG1L54Iix+TwVcCNtQwwej4I3qQb1F+CHMMmGjw6QKVjozWq6Fx4EycRNUUZ
         6IrYPx1DfkPnAQX5bPoxFNVDAsyQ8Q3L7zyB/vdOeIx28haXVu6lBbFz0RC+SNOBPW4s
         fwA0NHprHvm5a6kBWfGkYNzgNsyxdCD2dad5NoMHuMwlHEwhM2g0VgCFB8616ZMuckit
         BRzWFtsDjBBBrNEscs4OfgSRUEWW4zGWI0zzOe41GqyVtcdafWRW94cm0CPdAKrngm8R
         hGvBDHsLtSGPYRcuIH/3XRJcQe/mpCKjrb1PP6hNGLTNdCqef05XZUppB44tvkAiVDad
         vgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B2qzsX69MvR2kCiL+jvxQvKEdryENRI1HIL++8WDe/w=;
        b=sI8sQdFbNmSi2hJH8V6FxX3Al82T3VJyctGMtVgBM9L/lEFFREYGsofXWuZNSmcV1z
         b2LZksEcmXtHpyyebyNyzt7ZDNPcLo1wEJaxlLtqZJABxtKNE0SP9bNcTztsQV6qTbXN
         NhJndyav0bfW/NTgvMe/tbFcgWNT9rzsHF7Gmntv6XcobfOIen1pWEhEpxGVVTIP17VC
         C3d6OMBadMsaHvUqoXn03OKP/cTUCwHSZEZYgF4R5u/BP7mISeOcHZztrb4HtYZEmV8h
         XFdOmY5pkzZEJb64z1GejH9wZjfQ6riPinU9YtdayLXrSPQ11aEHV3v8f4McpdCq2XQL
         Xzkw==
X-Gm-Message-State: AOAM531TG4Kkf0cigdprm3/D6ZmumChAFg6uX1bHHlA+8H2Uc21nxJdF
	qOkD41kYGDfH9ggNXsV5KDqflw==
X-Google-Smtp-Source: ABdhPJycVq+J7OYvPWU1JTC/TbbgFFrNf8+e//O5eWC5vdnfYYDvqu7odLkoJkNvgVDSAfTvWgSrjg==
X-Received: by 2002:a05:6402:542:b0:42d:c7d6:4121 with SMTP id i2-20020a056402054200b0042dc7d64121mr25284704edx.302.1654507360418;
        Mon, 06 Jun 2022 02:22:40 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u21-20020a1709064ad500b006f3ef214e14sm5956397ejt.122.2022.06.06.02.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 02:22:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	avri.altman@wdc.com,
	Bharat Uppal <bharat.uppal@samsung.com>,
	devicetree@vger.kernel.org,
	martin.petersen@oracle.com,
	pankaj.dubey@samsung.com,
	robh+dt@kernel.org,
	chanho61.park@samsung.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	bvanassche@acm.org
Subject: Re: (subset) [PATCH v2 7/7] arm64: dts: fsd: add ufs device node
Date: Mon,  6 Jun 2022 11:22:31 +0200
Message-Id: <165450734050.62970.5177963742920277216.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220603154714.30532-8-alim.akhtar@samsung.com>
References: <20220603154714.30532-1-alim.akhtar@samsung.com> <CGME20220603154912epcas5p2bf984fb4e32ee1b1357a3cc595e70a67@epcas5p2.samsung.com> <20220603154714.30532-8-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_022244_065200_8AAE52ED 
X-CRM114-Status: UNSURE (   7.36  )
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

On Fri, 3 Jun 2022 21:17:14 +0530, Alim Akhtar wrote:
> Adds FSD ufs device node and enable the same for fsd platform.
> This also adds the required pin configuration for the same.
> 
> 

Applied, thanks!

[7/7] arm64: dts: fsd: add ufs device node
      https://git.kernel.org/krzk/linux/c/c75f5c9e11cf71e77c5cb8f0e082e5ee1e71545a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
