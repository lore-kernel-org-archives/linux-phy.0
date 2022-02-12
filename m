Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EB2C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 12 Feb 2022 16:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqSJW+CLKo0Bd94APQ1WOWT8EexSUs4Pq66O4DzphXY=; b=nE7zCuYbTy0cif
	MLZawpIUl+ZcaU3BZ6sLO4B6P1v8zu6MNU/hjsLGA0Vyu5ZldLxreO31zK3RJYAEwZI5tRp6fEAFe
	2FNouSclPL0iI318xizmVREh3Q9eFU685kZqzbprWYUBV/ndmC/ucRCcbLgE3CptF5sMaN8SHazqZ
	XeAGKcaHCpdmzYDWOj5NYCFSmkPi11uHdYLplN8Ufh2LNMPc1mjAMIoNfk2qfM8xRIprfkEC+Uihv
	vuEIYCk/iljCYfMFT16MJiQn8XQr8bwP1YmFmhOCXHIFLRNy1oKEE5E++7SYywnY8OtcFCuqaGZbK
	gYcGRzRYk8e0U5VK1fLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIvOo-00ABO5-8y; Sat, 12 Feb 2022 16:37:26 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIvOb-00ABHY-9D
 for linux-phy@lists.infradead.org; Sat, 12 Feb 2022 16:37:14 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1C4BE407D3
 for <linux-phy@lists.infradead.org>; Sat, 12 Feb 2022 16:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644683832;
 bh=15hMJzU1fmathDo+CvBtL4KOBTGHiJyQDvhqhMcjvDg=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version:Content-Type;
 b=Y7W2mMsV9ij6Vtq8SNjvdXrExl4B2t1a8UKyzYYEBn1iEZaZ6DQRrHeoGMHMEsmJG
 W0Py8ZGhsxfq9eRtIw1EeVNDTO8AVl+h2c8zoHyQWK4u6uDc3ZK/KwncwoYImHpyGc
 A5LUGC04kNbSk1j7dfPbY7e/MKrQutODOUBTdN4eCU476P6o7bW1fF/ttHzg5d33uz
 STrpE8gY/F/UFxyZ2HN4MA0ldC7MAT2fd2zVmr8ibQ6fo4Qu7lNL3xliE6FpPkzkW2
 pvWFzzbvDoTsxrLKos/L4T+2/Z47V5zEX9yjl5TbSH8l/MUx+iSiFNpabbiE96qTRC
 oCX81aESHCLEg==
Received: by mail-ed1-f71.google.com with SMTP id
 dn20-20020a05640222f400b0040f8cdfb542so7284562edb.3
 for <linux-phy@lists.infradead.org>; Sat, 12 Feb 2022 08:37:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=15hMJzU1fmathDo+CvBtL4KOBTGHiJyQDvhqhMcjvDg=;
 b=LP0obV+ZK3mqxMcEw217bTp9SoDrLtaURL+AsDotYFnEthaONXu6G0FdS+T+KQn447
 hWy1pdD4ZSgrNKtEY9D3KhGe3f1o3OP4hep59fyftzIlngXeZi5EvIRj7ys/SCePcLk3
 Wr/IUGbz80Vq71BHlImTlliXgSMJ3qQM3vUdMnv7TYodZtqiKbjQCSV2OuHKg7ZfVbj9
 07YYBTAmADu/yuOTOp/NTGtWWi5IgJgOWSX/5wbeNSy1jC6qSX+zA+Ip/D2l8vNuyUpk
 n3WOEyr+oTXwRiG1ze/tCRbHeMX32jYdw3DuIrU/h6xEGZhh6WzwkEjs8Yqb7kCuerpW
 W2Bg==
X-Gm-Message-State: AOAM532dQVE3n6euvdHXIj/UoEwH3mTBJcDPN70bdKxY7U5X4iYo0BpA
 U+/vTVVNtYbxOTdEDcIj1qz9jr2jM61MnjtHNLe2uEk09RYS5lmw5dhEphs5Vu3NXWGm9fVYSBM
 C6euoaM35X0yVihrd9U5WvJfZkJf53aLJvQWEHFiCzX0=
X-Received: by 2002:a50:9dca:: with SMTP id l10mr7054306edk.311.1644683831488; 
 Sat, 12 Feb 2022 08:37:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxKd2PgvPfnFZh8rSZyPq0B14QPo5js//TUm4+syJvIQzZKlxeHGKY7MDAVXnpzjoJMBxl36w==
X-Received: by 2002:a50:9dca:: with SMTP id l10mr7054288edk.311.1644683831272; 
 Sat, 12 Feb 2022 08:37:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id x10sm2494443edd.20.2022.02.12.08.37.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Feb 2022 08:37:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-arm-kernel@lists.infradead.org,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Inki Dae <inki.dae@samsung.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>
Cc: stable@vger.kernel.org, Sylwester Nawrocki <snawrocki@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: (subset) [PATCH 02/10] ARM: dts: exynos: add missing HDMI
 supplies on SMDK5420
Date: Sat, 12 Feb 2022 17:37:04 +0100
Message-Id: <164468382250.54495.17613053424810805341.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-3-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220212_083713_474006_3E4FE9E9 
X-CRM114-Status: UNSURE (   9.60  )
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

On Tue, 8 Feb 2022 18:18:15 +0100, Krzysztof Kozlowski wrote:
> Add required VDD supplies to HDMI block on SMDK5420.  Without them, the
> HDMI driver won't probe.  Because of lack of schematics, use same
> supplies as on Arndale Octa and Odroid XU3 boards (voltage matches).
> 
> 

Applied, thanks!

[02/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5420
        commit: 453a24ded415f7fce0499c6b0a2c7b28f84911f2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
