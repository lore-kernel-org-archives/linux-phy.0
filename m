Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BEA3C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 21:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLYehYSyA58W+x8lMroGFDpFRwGLlReLRuyb0atsbbM=; b=HMtblbVAw/Mfce
	OtpJlAD56BPRukdn++xiF4a9NkK6z4EtkX/OEK0008YYZ/rXbdHXm22l3BLvgR91CaAP9nHESz8ZP
	l833sV3IrZLtBIdip0WIHICoD3nr8qV+/LGwoQQL405BFXUhAbeGxLumdjm1+CDGg2Zi9asb0LKMY
	9PfsfVenFlBN7wfpBW1fj0TABh91AnxXFPeyZsft5MKu9atoabrYxrBL7eJySjj6B7D3A2luyA734
	O2/qHSB1q3cFwvd1S9wJ7K99Uy0luddiYnCimOuV7cI3TtUvI80tklseaOIadHfSW0BbFAdQMj886
	Fn3DhzSzUXJxZKm7mqrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf3gR-0000000GcFo-1VNM;
	Mon, 03 Feb 2025 21:08:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf3FD-0000000GYq1-0Xyl;
	Mon, 03 Feb 2025 20:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=cPRYEXyFNvtECJ4mCplQhVsIp6sZ4vdXdPjF+3ii7wM=; b=MoD17aXWHKtAChI0UAloraQC2k
	IGbw95InwLf0PuzwyJ2MQXrZJL+JVUMMuqmjyrPmE8zukz82slFaTvqDekQ5rG9jNiOaT0Yf9vsev
	KP9VxVKjYKW6EQtxXKizztQLwysDG7zc5sKMBkEPBiD5tzExS09tyT3AA3u20bKMdp/pJ7eKMopaU
	76UO5hu7UzxKWjyh4MfZPJ1fstr8Vt7ae3DTkvYeJKaxWcwWSzhDcUKEBh8C0KGIzQQFfui/ezWi1
	vW1FvnUD/WnpOeMuCA2h2JbRyKjWYBv4qUGJuGZTZXu+GXgNqkXb9q7R8Ubkughd6InzwsGYdLGde
	dxcQwb4g==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf3FA-0000000GB6i-1YOs;
	Mon, 03 Feb 2025 20:40:34 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id CF7B725BBD;
	Mon,  3 Feb 2025 21:40:30 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LfZRGKwjVLFZ; Mon,  3 Feb 2025 21:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1738615230; bh=AkPRmblrUOOVXZ91gnc52sI3tgoBiuHlcUurwYVKLY0=;
	h=From:Subject:Date:To:Cc;
	b=fHtnpKiDOv28oFR7JVPqLvyt59QVIzHKJmPv7rvnS4zqiQZic7IKkhAHOmyaiGxBB
	 zIqp9YHq4hlr9JrmwnOfNDPqV1MpXR2YdWgVhjRP1ww35UxCtcuqz0y03VqHy2NhTA
	 8jRmv1P8XbAxL4uBGpzFRALM1KvNjIizSI3VvGE6VnfBg3mEOHEci25G0s/H7F4jwo
	 v1WiM+ylflQioY62JwDjCj2sMioiAZ1Mu/cvP+zIYmNLpvIHkc8oOU8CfWH1XHRQQf
	 isiz+2xYQXsnFaexHnsoZI+7yGSj+WWJeM53Rx+RPfJCBn/oT/OZ+/fYcAEL14ONlQ
	 OwUuq0AxC120g==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Subject: [PATCH 0/4] Introduce USBDRD-PHY support for Exynos7870 SoC
Date: Tue, 04 Feb 2025 02:10:11 +0530
Message-Id: <20250204-exynos7870-usbphy-v1-0-f30a9857efeb@disroot.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKspoWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIwNj3dSKyrz8YnMLcwPd0uKkgoxKXbMkSwtLY7M0ExPDFCWgvoKi1LT
 MCrCZ0bG1tQDfBpWXYwAAAA==
X-Change-ID: 20250203-exynos7870-usbphy-6b98936f441d
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Vivek Gautam <gautam.vivek@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Sergey Lisov <sleirsgoevy@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738615219; l=1055;
 i=kauschluss@disroot.org; s=20250202; h=from:subject:message-id;
 bh=AkPRmblrUOOVXZ91gnc52sI3tgoBiuHlcUurwYVKLY0=;
 b=nZ4OheKh0t1I4Djk2ZABEi1usrJZA4r9kSOSyOS3OeA388Wk9tRtYq4a96VjUCnYGi9UjEd+o
 ar6RvYqtM0IDhMQy3xWW1DmIufvI+ZwlTTxZYZnq2blK5Q0tenvdMNo
X-Developer-Key: i=kauschluss@disroot.org; a=ed25519;
 pk=h2xeR+V2I1+GrfDPAhZa3M+NWA0Cnbdkkq1bH3ct1hE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_204032_607796_B2B3373D 
X-CRM114-Status: UNSURE (   7.47  )
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

Apart from introducing driver support and documentation, this patch series
also introduces a masking fix and non-functional changes.

This patch series is a part of Exynos7870 upstreaming.

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
Kaustabh Chakraborty (3):
      phy: exynos5-usbdrd: fix MPLL_MULTIPLIER and SSC_REFCLKSEL masks in refclk
      phy: exynos5-usbdrd: use GENMASK and FIELD_PREP for Exynos5 PHY registers
      dt-bindings: phy: samsung,usb3-drd-phy: add exynos7870-usbdrd-phy compatible

Sergey Lisov (1):
      phy: exynos5-usbdrd: add exynos7870 USBDRD support

 .../bindings/phy/samsung,usb3-drd-phy.yaml         |   2 +
 drivers/phy/samsung/phy-exynos5-usbdrd.c           | 407 +++++++++++++++++----
 include/linux/soc/samsung/exynos-regs-pmu.h        |   2 +
 3 files changed, 339 insertions(+), 72 deletions(-)
---
base-commit: df4b2bbff898227db0c14264ac7edd634e79f755
change-id: 20250203-exynos7870-usbphy-6b98936f441d

Best regards,
-- 
Kaustabh Chakraborty <kauschluss@disroot.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
