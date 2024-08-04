Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33306C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 22:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAeAoyaE0qxnVoL7u5tSJQ50nV2ahi9MfBZWHju/pG0=; b=y9srxn+LRlua+5
	RMRu8G2I7C564Xd8XW6XFa3ZfLBmYEIfVEgM4gxW7jZ5DPeQwdMo3Oa1QI3ktXz0Y1AWOJV+uCZU1
	Xjj/BByKs9hvw1DkDoqXy+eCw+24YCgSPguQCuSurxHqUjPbKxqUfnocj38hT6BB0ugxQswHLy5Js
	oEBf31ow2uTuzeGxdPEp1saDp3PUNsR20omR/ibErcMkXNzz8sZkVZVDYLxMuezVx4lKYsFcsoenw
	9ragtS6SN95eR4JkPWCZYQBhwuUw8qPpwPeZEGjTPSdvPOS1dGViAUjh5ats7dnV2qw8BU8vJ86Ri
	4l5DAoPU8UXYHYQyzBEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajGo-0000000E0sA-3mFY;
	Sun, 04 Aug 2024 22:00:06 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCm-0000000DzUM-3kt4;
	Sun, 04 Aug 2024 21:55:58 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-52f0277daa5so15446901e87.0;
        Sun, 04 Aug 2024 14:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808554; x=1723413354; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mrhFPOA10bN9OR7jponwlQQntJxF13+NNdEHk1/zbE=;
        b=XCHkgUNPqol2DlaOnGr2SFjngFCkSeBFhWeY4wqRL3yhiwp6e0f6Z7u8Aj5nYkhRc6
         RTRWWAbJ+uOnW0mkNnzLLZNzeOkKVgV4cxEFmHTQMte+yM/txvTsV1f6dmIX1/f84a9q
         mheVIsRWc5z6rGRkHuVDgBJexOHXx3i2H8zly41y4/HREViM5QlTgiKoOEtx/zgAX+m8
         mv0LmjtvtXd2XyvN6/lNRSE2tonpiyU3tRGILstq+3DBgzL2nVPx1YWl3QRvcLPvIcPJ
         DV8x18vPb1RORo70ZWLtfhLiYlwR9rTEJE+hDyxja8Z8dI+le2fU6v40AaexKn4unVsd
         rq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808554; x=1723413354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2mrhFPOA10bN9OR7jponwlQQntJxF13+NNdEHk1/zbE=;
        b=f/hM8/6RI/m4Ylnlx63BoLgktaYIw36c7+1ITfi7kjZX6RTT1IgOzmf6J2NZsldbje
         qZiTrC1NowG7/QrLvDY05qmItLorOJGGaJuoAyz8u8cngLfczS3PxqSWm6QdbG8aGcO8
         B3coS3J2QA8LA1BTzkrupNvIhfVUEDRx8V7BoSCgLSmxI4BPEhGVAaUNodiARI06e31T
         U1fLWkHsADBL+T2zUqRuHsX0ao1QU5f73tTbu2y56yvaT7X4N3oRLzBPUeQmcFPnhdeR
         Xr3wr+Y9tQGT3oa1oV2SiHA9Yu1WMA9iaCQw3NZbwL14oZuMwIQVUSLFY/rKzPw7W/ck
         dByQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNmH+Qls2PexzNZcHjgq7iyyIuU1HbJXBQJNM7ZvbHK3VWNjw4L39W2xYSCSOP+RkyI7FeglVAz5pwBLRKN3cUGKb3IBY96yzYnaHiICdH9OmTO3o=
X-Gm-Message-State: AOJu0Ywns5nNYmzjSq0I7PGax7UPF9mO63AhMRHNJSQh6AQg7jzS0MO+
	mAPwkJrcqRCDQmrFcOD+eW4hvVqfrP+SjFWDuHx1or0eQXB9DTyV1pW6PFLT
X-Google-Smtp-Source: AGHT+IEGWbiEQg/exi1Z48CX1tnMKkyEbNXIAJdnBvBNQOjhcm8r0tNUiJsfxT1egdx0cOSk4VH1ug==
X-Received: by 2002:a05:6512:3f27:b0:52e:faf0:410 with SMTP id 2adb3069b0e04-530bb366727mr6856914e87.1.1722808554282;
        Sun, 04 Aug 2024 14:55:54 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:53 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 10/13] usb: dwc3: exynos: Add support for Exynos7885
Date: Sun,  4 Aug 2024 23:53:55 +0200
Message-ID: <20240804215458.404085-11-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145556_956335_DD7D4CE1 
X-CRM114-Status: GOOD (  12.33  )
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

Add Exynos7885 compatible string. As 7885 has the same clocks as 850, it
can reuse the data for Exynos850.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 drivers/usb/dwc3/dwc3-exynos.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-exynos.c b/drivers/usb/dwc3/dwc3-exynos.c
index 9a6e988d165a..5cd4dc2e0a67 100644
--- a/drivers/usb/dwc3/dwc3-exynos.c
+++ b/drivers/usb/dwc3/dwc3-exynos.c
@@ -185,6 +185,9 @@ static const struct of_device_id exynos_dwc3_match[] = {
 	}, {
 		.compatible = "samsung,exynos7-dwusb3",
 		.data = &exynos7_drvdata,
+	}, {
+		.compatible = "samsung,exynos7885-dwusb3",
+		.data = &exynos850_drvdata,
 	}, {
 		.compatible = "samsung,exynos850-dwusb3",
 		.data = &exynos850_drvdata,
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
