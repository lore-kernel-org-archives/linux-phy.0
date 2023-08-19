Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47731EE499C
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7g24qZ6FzyeO8v4NfKXr57BtWVgtgYHb5vQKuyuocs4=; b=C72dkaOnrlNeq5
	f/MEpAzqtCxoPI5lqz/+qDzxfprFelYGts+gIIL8Iq1atKtn8/oOFcVj/tX8kdo3aOUu5aUNvD1CT
	3r2wV+mfBMqNEZP7PYxsNKd3lRaaK8qWyNGcSKgDKZxwGkidHs+0RIZsa2VQfJkCpnXaNWI3sGaDU
	5EOmHkGcfm5PK6TgC31VPCnxEdDDBaGh3DHHkchfsVpi5SLD6BbAX3E5Z6mcjOoc05ibqIGvMcQuz
	lJ62wKHZDyVEWsoX4nZK3bhLpvA9P4teheAy9hIt941VvsnSsm4IGVCP4RmBHmUG9D1qtnTS79mEa
	tH0WDNozWgxB3pfCoy1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCaS-00ALNl-01;
	Sat, 19 Aug 2023 03:25:16 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCaP-00ALN5-0T
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:25:14 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a81154c5f5so1066861b6e.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415511; x=1693020311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pE2SxwAc9ssHdvgA5CR8AU2aj+QN0B7Vb8/YfT44UQo=;
        b=dMlN9Z15ghuxekMBf63uZqnof3xlRbirRt5hiuoGOEDFIQfsNCid17bfTC4mwmrvxo
         2mZ8nVPK7rAFThaRy8nxcm0hGT6EXtHWGzNpRroTlilXdtJJYaPfMJuFJr4HoNkVquS1
         ragmB8a60nCG0AttHT6Uf/hWl/G+1DmEclpBf89wq2TJB/A8LOLIJffZ+vY1leSLt2ml
         RTux4qepUOvGWH/Sc2zkMSOyrxoG5gXVlu5Slh4J6ku9gYsLcksiJ6yQ+yQjwvmv5hBq
         DqgTOEexXZJVeqFCezRT2Uy9Wd0UBjoJBZyDaIFMusVnCV8ey+n7XjfWAmXcYGAgXZ8n
         j+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415511; x=1693020311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pE2SxwAc9ssHdvgA5CR8AU2aj+QN0B7Vb8/YfT44UQo=;
        b=S12jKng5Go01oWHEn53KUgiaeZ0ZdcFaLa3ZO9mOl91Ri9g4fOgXVbXO+rmL5aWC9R
         VcGEKXE0ydbwszi+vOoacN91OecH+ERb513fEfrYWD9eVR1B1x7HFIn88ADu/5BlbqVh
         AN7qUhYFVATmdmziiUnAFBKNIniSWYGd2SndXQddTP7tZq7cXqFzn607XP3hJQA/Edik
         hXgVI6nj3yo35BUnz0+A7hwbI9t6ZUpcQf/hexTHEWe5cvz5p+sZVjvI3HxoKjaJlbfs
         JSRU+702R5OwWereglDbTCdZl/8lFyPjrrpouXpO077VZ6jOMdUHHyoxttn/DrGtpQ0k
         MeEA==
X-Gm-Message-State: AOJu0YyTDAw1pWxs7kgemODJxV9Q8diOf+KzCl+HkhrHzi+q5Wytp1bL
	BOGqwY1Ynq+ATYSvOglPo1YZvZiXH+EnY3hFQy4=
X-Google-Smtp-Source: AGHT+IGwN20mZxiyx0bg2sXc9CDI9nvRQ0khtew3DAEDJbK4jTTSyqkBbLjLhbnjlq8G3ilSFSFg8g==
X-Received: by 2002:a05:6870:e38e:b0:1c8:c27f:7d9b with SMTP id x14-20020a056870e38e00b001c8c27f7d9bmr1474715oad.27.1692415055429;
        Fri, 18 Aug 2023 20:17:35 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id gq20-20020a056870d91400b001c5a3e31474sm1711347oab.45.2023.08.18.20.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:35 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 3/8] usb: dwc3: exynos: Add support for Exynos850 variant
Date: Fri, 18 Aug 2023 22:17:26 -0500
Message-Id: <20230819031731.22618-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_202513_189735_81DF7DB2 
X-CRM114-Status: GOOD (  10.99  )
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

Add Exynos850 compatible string and associated driver data. Only two
clocks are needed for this SoC:
  - bus_early: bus clock needed for registers access
  - ref: USB 2.0 DRD reference clock (50 MHz)

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/usb/dwc3/dwc3-exynos.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-exynos.c b/drivers/usb/dwc3/dwc3-exynos.c
index f882dd647340..5d365ca51771 100644
--- a/drivers/usb/dwc3/dwc3-exynos.c
+++ b/drivers/usb/dwc3/dwc3-exynos.c
@@ -163,6 +163,12 @@ static const struct dwc3_exynos_driverdata exynos7_drvdata = {
 	.suspend_clk_idx = 1,
 };
 
+static const struct dwc3_exynos_driverdata exynos850_drvdata = {
+	.clk_names = { "bus_early", "ref" },
+	.num_clks = 2,
+	.suspend_clk_idx = -1,
+};
+
 static const struct of_device_id exynos_dwc3_match[] = {
 	{
 		.compatible = "samsung,exynos5250-dwusb3",
@@ -173,6 +179,9 @@ static const struct of_device_id exynos_dwc3_match[] = {
 	}, {
 		.compatible = "samsung,exynos7-dwusb3",
 		.data = &exynos7_drvdata,
+	}, {
+		.compatible = "samsung,exynos850-dwusb3",
+		.data = &exynos850_drvdata,
 	}, {
 	}
 };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
