Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 103EDC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 11:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ijv5UU2ARBt4pfSiRvTgE2fCMNXmfMq4ispU2Mm9Wog=; b=k5tT7QuZz8tB9Z
	p1petxOsAPUAZQZ6XIJv9mdTItc+joR6foLiS92NNpJMwZq7szIoR3FkLDrqhatBaVBCLnxVcYGhT
	JcOlr/ZDZdnDXC0izwCLdO2uU46cVb4Sw7PjV5I7ZRTkAs5nOv6D2EgdsWvoQzk1Q1rG4rpGyNH9J
	6VMoWKYJzoI9WmGvd5FzqBXAzJfGOljnBclSRSJclPVk7MHUL+cGFuTrcz1Ev7Za25/SWSOf2rO3G
	IJJVYV4vjn6ErmzSN1qgRgYJzp84Zpf7b9R1eFct+bh/qgZsyPVdpfAFJ21xrsgjLJ3k/0nkcoX9c
	GLYjS9Rf3OXBlZ4c+Lgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqZAQ-007Mm1-BJ; Mon, 16 May 2022 11:45:38 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqZAJ-007Miz-QF
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 11:45:33 +0000
Received: by mail-lj1-x22e.google.com with SMTP id bx33so17736879ljb.12
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 04:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6/qyJlPZX04CDitoceht1WZy7MBWG2zNDEEwfjbSvU=;
 b=y0qSRfRZf+I83TmFc/UOCgz5ewT85ZXKRm83xZmghYpME1fTvcOj8FlDenIWwhr70S
 vfRg89U7Oe1q3EaObaFBERMQ+YeHDvWxX4N+hYTpLMwTXndgp53zuIOB8hDZOrKu0xaO
 DX39ShEITtrZWjUKO5YeNJH1kHHidUl6+7Cfl5OH86hRttzRVMneeIGO90J5zxuL2X/9
 IPnMagbByGOfOlSd8oEM4RfzW3laY6wdlbCLMMaWpWQOsKSI9EPKDPCy5YRcSDv4VFn2
 uJhm7WsyovQMOw51Xj6K50Q4ludoYEssEboOs3gyT9BvYgDEYUw8WyFI5tDLUFWPxtTc
 pGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6/qyJlPZX04CDitoceht1WZy7MBWG2zNDEEwfjbSvU=;
 b=jePREk1s6uUwJ585YMlvRoLlPH+jeIU7ZMx3O2UvYMCRPalr1A5UcHDhbkfajqZ3Ta
 62bDQV5Min8QUrUBcQZ0EZxeAdLpbXGlVT3Uib4DGd9nKSYxLla+LmrXKVfyjs9qchlv
 zMW9NuuWQbQzqbGV6q2/7tzdl01IDbFLuBUYk9nGwJeZa4e470eYVIYLQqlTzAsPZ2c8
 2ivwnE0ayB04xgtkkA2ecqODRuRqauFlw5XrL7lX/K6X0I5kwRA8OsQrl4yJQgUlU82e
 JjbIj0uylwTuyjbIQ+E6KOCUcd+p9vCblQzodfCftedJRFsctOjXjeI4wSOsTswNM22r
 ipNA==
X-Gm-Message-State: AOAM532i0oOyQkwypQkQJRd5pMzUn+avqQXiHWeP0gOZOW0Sondp77ZP
 m4LZuAUjB+BkzpsPwnbUM3VXjw==
X-Google-Smtp-Source: ABdhPJy04K8jAqI5zr9d+MNxE7BBF1Cu/6uBsZ0RRe0UfLAVf38IAsdsbzDkJsHJ3Yf/aNVHACwjfQ==
X-Received: by 2002:a2e:bc19:0:b0:24f:4de2:38ba with SMTP id
 b25-20020a2ebc19000000b0024f4de238bamr11262517ljf.351.1652701527856; 
 Mon, 16 May 2022 04:45:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125]) by smtp.gmail.com with ESMTPSA id
 r18-20020ac24d12000000b0047255d2111csm1286079lfi.75.2022.05.16.04.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 04:45:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: [RFC PATCH 0/5] phy: qcom-qmp: split the QMP PHY driver
Date: Mon, 16 May 2022 14:45:20 +0300
Message-Id: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_044531_903047_787C32CB 
X-CRM114-Status: GOOD (  11.87  )
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

While adding support for the PCIe EP mode support to the QMP driver I
couldn't help but notice that the QMP PHY driver has slowly become the a
beast with tons of conditions and corner cases being inserted here and
there.r

This an RFC for an attempt to to cleanup the QMP driver by splitting the
QMP PHY driver into four smaller drivers, each targeting a particular
family of PHY backends (DP/combo, PCIe, UFS and USB). Yes, this results
in some code duplication, but I hope that the end result is still better
than the current situation.

If the idea looks good, I will continue polishing the drivers. A
feedback regarding the common functions (ones, left in the
phy-qcom-qmp.c file) would be appreciated.

Dmitry Baryshkov (5):
  phy: qcom-qmp: split combo PHY support
  phy: qcom-qmp: split DP data to DP-specific structures
  phy: qcom-qmp: split UFS PHY support
  phy: qcom-qmp: split PCIe PHY support
  phy: qcom-qmp: complete split of the QMP driver

 drivers/phy/qualcomm/Makefile             |    2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1362 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  290 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1945 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  863 +++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 2104 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c       | 5983 +--------------------
 drivers/phy/qualcomm/phy-qcom-qmp.h       |   43 +
 8 files changed, 6732 insertions(+), 5860 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
