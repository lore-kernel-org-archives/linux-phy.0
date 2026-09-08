Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14909C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 10:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cudxvKwM7zXFOFonMv1BClZSm5WK6ctAY46vkcNwnOs=; b=ur+LnY+d1amPR5
	klFtbRaaxKVJDEb77vogNNK2UO+1K8vOyncBDc5RGCu9XwdN9TosEPeIZnWy0OfnDXFpQRWaAUBQs
	prGA5jtKgMkX8pR0AEZFClfzjvgNIm+YiaAK+6Xve3W2fNSK3NmRRjDFhbF5aLTnrFglaXn01AKty
	XqD94rvmefoUu0AcHJ47jVF/WS9+adoK5/iubW4r/HqxkSAdwZyb/hvCdGvEV/mNWDfjYX6CKdbw+
	Di0DzZSItIBbfIPeQVnbswCGI1ujEV5qG+AvDJKR9CbJ8Lv3C5RjVxR6588PCwByrYqwnRsHCMncg
	PZEGtR8PyKVKC4shm3DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3tCy-00000008mtS-30Xl;
	Tue, 08 Sep 2026 10:37:46 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3tCw-00000008msl-1wqe
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 10:37:43 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2db1ca06b03so3628115ad.0
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 03:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788863861; x=1789468661; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qekOjTKAbV3bYAHV0cqmxxGdYf6A7xrJOKm4lVlExn4=;
        b=WJgsIC0AxMsoovkqPegw9uSXz4eAAxI+s2SdqArTCoW2x2Lb4yrFm2ZCENxlM3UU6m
         QggD+D9GQDdPSnZVNpOr/F+Fh8SnHvP4IfdcETkI7DFQFN8pl8QXb76Ya7klvIA9ffQX
         6Ite0S3XMiy88Dz7Auc5EEO5+V1vG31FPlagfSRxIZXVfL5p7NrPnBx/piPcS6I5jDdU
         COD5FDDFzzXng57HSLOYU9uvlCPut7jf57G9RRyN6QxAigDbbU5XcZBCQ1ZS9I1bx1nS
         NjYSIx81INkMsvs1ntIOW3GNg/5hrLkHnT3I0Kp10cV8eCTfSkslYawbnjX2OfpHLlg4
         GOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788863861; x=1789468661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qekOjTKAbV3bYAHV0cqmxxGdYf6A7xrJOKm4lVlExn4=;
        b=rQ4hZRGlrHoay3ZhX/UMkOw3xgirBdft+s0odeQmtfleOEuOuKJd8igeCctkyr//u1
         eYC6kx27gWSgEz6A/TT2gGmAEfH6MwlybL3E21xYVujqeqra9N1wPmRlz4WM8XaVb0qZ
         +w1hzkxPrWrtTHM/5sgGA99zJHqhYwsHUesDFui7cMguCmkDMtpYg9ldgM+wmoe9NPLj
         kCW4GIPrRO/0k7qG1dzeZdJ1oH7iv5VzZMZTfjkT1NFdLDMWlngl0nfm0dwYGpuazPZ4
         7+kj3sQGM1Z7ttLgcsTy6bwbbmrVWa06zuf9Y4e3+Ox0AAgC+S6Tp2JHGYAl2/q45uej
         vgZg==
X-Forwarded-Encrypted: i=1; AKwUvBxtYsm45ryEMieU5fAt1L8SQU71juWXkd3jcAA13xp8ebJJZT2Apu3VCgzRYvuPtUAQqI1r2uHhP/E=@lists.infradead.org
X-Gm-Message-State: AFuF++kx6JLPQQj+6KhcvvITrtINYa9z20v3S0I3XfQ+0jIz1BQeZnAk
	9Q+tbCEjSI4WmpMpFWrRUaU6ihNyvmTT1Bipfxc1SRptMhZx5XRMHPbT
X-Gm-Gg: AYBFou3ftqoqW82T0l66D0aLmW6uhSOuQZFd69Cl0RDYVVgbamHoOBJCuJHkJIyVM7T
	eJjrQZLbqpgy4yDQdtPsmU/9m0pjZbmvGW4foq8zfHqx08/wwR1LF+L/xgWHdGBF0jrOcargVyT
	8Z6FR68i9VEQseTvEfapyTUH/CaZRPJMskPhlbzMcGr1BlmEcms9A8T9ObtFO9TihXksEWf3ulQ
	DGZoYn03NmvnaccMOnyl55dYdCVtgs2Ax384MeygJmVnIQt0vnssgaZcd6pEMQQ0zox+Rl1ytQ3
	bTOnE31y2uiOJN1CGAqW+lCm5L84rH5wfcPYBGXcfkf+D/qO5Q7tZFlLgeWkwVyRlusx3o41/26
	7qkfjrHsZh+sDwbuZFN7WuFuUjpX/SXGhaezWzawT/jxjvuNN8PkS0djTY4rJ6Y1GDW8GCHMhxD
	heFX6oCYRu1HORO/NTfr8nlg0SeC8MB2+mJF94mo97iaX69fYoU6THuYzUqFMEy4B9Vkz0Z80NS
	xTfNUIGzrGNt8/qPO5Ji8zYqbUrUJD0SeCtevI5k+X239K3FKSI
X-Received: by 2002:a17:902:fda5:b0:2d8:d4cf:fe47 with SMTP id d9443c01a7336-2db70292fb6mr58987095ad.13.1788863861471;
        Tue, 08 Sep 2026 03:37:41 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db14ae4b5bsm57362155ad.77.2026.09.08.03.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 03:37:41 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/3] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Tue,  8 Sep 2026 18:37:36 +0800
Message-ID: <20260908103736.236803-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720102222.251179-1-a0987203069@gmail.com>
References: <20260720102222.251179-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_033742_526170_69D9129B 
X-CRM114-Status: UNSURE (   8.09  )
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

Gentle ping on this series, it's been about a month since v4 with no
further comments.

Patch 1 (dt-bindings) already carries Krzysztof's Reviewed-by from v3,
unchanged since. Patches 2/3 (arm64 dts, phy driver) haven't had any
review since v1 -- could I get a look, or is something blocking?

Thanks,
Joey

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
