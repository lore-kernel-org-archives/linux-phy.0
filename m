Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EDFDC7EE2E
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFjTIreb4JRvfI7x1/PHNXZR27Pdoy7MeKXdFnhZpLs=; b=Z00w2wC8LbF5eT
	8bjpaOWL0aQzTaGgDzR2eus9PeUXMGDvHCy4lpBFjoyt/63bcVubkz3MQraZz4H7zxVOkTVZqfBV7
	Ee0755qvavSw/BuDWePkmrbD7PAjT5qPzLO3H4THeK3XWfWM3DgxkFhNFEHbB+ylIcEHzu5APnIYg
	hwZG7Y3jERqki6U8VHIPpVP9rPAWUuJxzTyzAo98N34+javmMiyoLCEbvzv4H/DyRg9rboAZGsPo3
	hQfErPKICp8fiCSfzNuWg3kN9Zv8CmgMcWJAWmf5auWfrXKapIxYggcS9jf+g131YdMnhBMtsoW5e
	8/ipfeyJQpi32f1C8dOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmh-003yYU-2P;
	Tue, 09 May 2023 18:09:59 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmW-003yPB-31
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:51 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50db7f0a1b4so1903230a12.3
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655784; x=1686247784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zs9IksAZdPUWZueIWev0YHwP3SfwTJngjTY4HAluqu0=;
        b=k3tXANjes4g05zH+EiJsegWVxlkJzp41oNY3t1dshZB/kkJLq7LyekAftEzAadwf3U
         10Xc91NiUZEeq+UdneApZrEHyTkl18baPlYBxM/jJeEzJTpktNxhLwWB8UP1qMZEHRPP
         HxZ9j5syMXIa5W2CbsnzlM1ZWiauPeJOXuaDRRlY/2ZAjQZtsUVKpNWe9Lt9owhhEF5c
         dpwlWcc7SNI1TSBZMLrOf6Z0ZsQIdhhkXzypjItx/lsFs4Sn5+HRI7IQkvdtCLTBPZnq
         aq18PWOcv/9gofTZDflgIF2QuHx4juSZoxnRcJYpN0IqRzVl9KB/HAParfVePmCfOVAt
         DiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655784; x=1686247784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zs9IksAZdPUWZueIWev0YHwP3SfwTJngjTY4HAluqu0=;
        b=de74Xl6GdMetsv4s0DSamVWD4aE8Et5rrimel2cNiEdrOxvCOzSd6ejqkfEYdncnqC
         syJFdDces6TL/Uk+1eoI/8zCpc0cTX6uuF7z2MizTZkW+O7MKgPAiDAdPLRXLwJkUjLd
         13mSlmtLxEqjVSRlE4CPnhl8iwSZ49WHcfoMlRkxiVdR0fLGXmeg8lkuf2ivWdK4wITP
         15EJ5idhxDl+wCwYIqv8vRD66PPKioy+hq/z6Q9GszBU14xBxSHfXveMcrVKQ5w/RRPa
         gnSoBd1BSafEsvpGxzD1wG7MaAt5viHdoD3lcngt99Hz/JUhE9O8tUhEEa6WUshrn22+
         znTw==
X-Gm-Message-State: AC+VfDwggBuWRxdw6ksoLDVOJIOh1rURhGSKPk8V9+oJobVAGh7LY7vk
	QwlpzwHY+665n8f3NR7GpOrO4w==
X-Google-Smtp-Source: ACHHUZ5e5xBUZoC73JkHOAuYZol8+WzHPQzUCswmjDbXMuKS2byDzPvO1tY0/0dKFOjnVbNh6oDCWg==
X-Received: by 2002:aa7:ccce:0:b0:50b:c085:1991 with SMTP id y14-20020aa7ccce000000b0050bc0851991mr11920150edt.19.1683655783875;
        Tue, 09 May 2023 11:09:43 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH v3 03/13] ARM: exynos: Re-introduce Exynos4212 support
Date: Tue,  9 May 2023 20:09:30 +0200
Message-Id: <168365575564.242810.13469552889679829335.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-4-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-4-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110949_049450_6C964831 
X-CRM114-Status: GOOD (  11.75  )
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


On Mon, 01 May 2023 21:55:15 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> back the relevant code.
> 
> This reverts commit 9e43eca3c87476f75680f472ff3ebcd85f357b86.
> 
> 
> [...]

Applied, thanks!

[03/13] ARM: exynos: Re-introduce Exynos4212 support
        https://git.kernel.org/krzk/linux/c/4e486a650162a20e5c3c7987715f8297c84c85f4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
