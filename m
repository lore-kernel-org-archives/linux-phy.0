Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8943C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WV0MSdQv5PfxmNOu/CaDlwVJHF/Kk1uBaR99/qZS4i0=; b=HuUmfhMRmVzuXp
	b6BQrPPu6taaueFIdH+C108WpVfxYFay9QuNurW/hcJCXVgMFjXOArQDnDxRke1QQeOWk7boMxiVa
	825hHjEGSgK/+GQwj67veyxUQETY9HM0Dr2jUG0EYk1vIKt6QkzYuyn7jX8x9DiFh8E9nC1UH0+sD
	ekvLilerNKHlAbiFPDxRjwZdXcpeZc/qIRWQhaM5CVm7VcPjh7eTnyzPivt0riv91IzRzFZFUB5Yc
	KB8WJ0D5oV0hwkjMDfpU+Q3iUA/3Dl28AeTEGRmlHvdGEQ/AXXGJV09V2kuFKxDJ3dp6I38DJzrta
	Cw8IHIMQv2kDHY+OfJtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcb-00GoGd-17;
	Mon, 01 May 2023 19:55:41 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcX-00GoBS-0r;
	Mon, 01 May 2023 19:55:38 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-956ff2399c9so591337666b.3;
        Mon, 01 May 2023 12:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970935; x=1685562935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ioENJwwSwT8zGQMUXkQ8Tqi2ax0jSorolSTsZSyeeas=;
        b=K6eLCuzGsavXNmaXAh7srZI2woPo8xtK6L2wfwkbtp/Imj5Jj/+aB/6HBz1M9AkTO5
         TkKkJFUipDeWNfNhpiIbWXRobPXpksgkC1zaaE1mb3GeMtRRx6uWfz991ioq9MrzalxD
         1vWbe8+uUFp+LwcxQ2+hfg2Ub1LOs0AZ2IJh77xI8giNy2daVxEaJOftr0j6wInKM0Y8
         kyW6KtbU/F67Y5ukPSPemwBjQ6Mx6niLahdF+xg1nHFnlLfQUmjuJrInWzeKOtVVAQ4I
         lW5sHNlfOTxqPpOCwj3CYxBieq3mg7onrNaqVk+cCQa+XeKHQfcrZpluhX68gxtmAEa+
         E3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970935; x=1685562935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioENJwwSwT8zGQMUXkQ8Tqi2ax0jSorolSTsZSyeeas=;
        b=a8fZIct7onr+bUn2jlxstVrwC1k1WaZokkWG2SHCriNJk1dhLycOj7YsGjOAf+yMKm
         QkEC6X2p6A2LtF+pgjW9c/fyDNQ52CN2sUNV59U5VXaO6y/5uR8jI2bYk0b+mAxUaakR
         m1vlz7ukOwkO9xTaAOQHCMNtLDi4CVTriRMVGiVEAOf6P7cOL4XICEMkK9Y/z+t/M6Lw
         6B+AnF/ygwtrxHsLGV6nfe95KPdT8h+CbMwbfWBtk6TGRxVqOoU2PjaOQMms2fH3pvs5
         gubYcx3GaYdvkfa/ZvOprLQkfDqd2mBzmtbysqRj54SXjGWRuHK76D8jxYlGUkj+pIQd
         pk1g==
X-Gm-Message-State: AC+VfDzs2KFuUecG/ycN0gSjZBp3u4v8aQccgawLeiMkQcpBowPO4mzC
	UkzNUBHGBP/yEBDD2wHUIyM=
X-Google-Smtp-Source: ACHHUZ6IVZDwDQOTnnbij4uvxNxCT1PMcB7uRFLQJHqaKRBGgkrS4fKg3jfhVmMzJmY8cz8Ps3IH6g==
X-Received: by 2002:a17:906:7308:b0:94a:8c3f:d0f0 with SMTP id di8-20020a170906730800b0094a8c3fd0f0mr14002808ejc.68.1682970934695;
        Mon, 01 May 2023 12:55:34 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:34 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
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
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH v3 02/13] dt-bindings: clock: add Exynos4212 clock compatible
Date: Mon,  1 May 2023 21:55:14 +0200
Message-Id: <20230501195525.6268-3-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125537_305429_09035414 
X-CRM114-Status: GOOD (  12.21  )
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

Support for the Exynos4212 SoC was originally dropped as there were
no boards using it. We will be adding a device that uses it, so add
back the relevant compatible.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 .../devicetree/bindings/clock/samsung,exynos-clock.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
index 0589a63e273a..a36781a455b6 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
@@ -24,6 +24,7 @@ properties:
           - samsung,exynos3250-cmu-dmc
           - samsung,exynos3250-cmu-isp
           - samsung,exynos4210-clock
+          - samsung,exynos4212-clock
           - samsung,exynos4412-clock
           - samsung,exynos5250-clock
       - items:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
