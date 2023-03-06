Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9361AC61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 16:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d1uO+oP5h6NHJWlmXRwegM3gUWrMYbV2leDYDmXwoXw=; b=mSXIusRLBSDmdQ
	XmKoz1/LneE8yEd2fxV5tyeypG8k9W2hdmlBAT1u+W2EuswH25W/VWt2DfCHslMj4dUTYQDu88fCq
	cqq3jUTXSdurfOA8+0wdDayOTSOsaaplsIwdSA4H4CL3ubGAf/wgcd5cUPO44DyGBxyv9UKJQJ24C
	MRasJNH6VY9s435ZqDySKqsMRTE7VmsOv5gpwnANmr1Ljpcvk+la6v9NHHEqovYncJiz9K/OBdE9h
	9LGdtg3SPtwyQOveHZPApFhCs7z6mOaIjLmwHiL7IQUAiSRZbKOvqS1viQ8o2q+TdhWvzX8Wffnr0
	O/0D0SNsUE/LeeIgCacw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZE5f-00E0pL-UV; Mon, 06 Mar 2023 16:53:35 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZE5c-00E0lr-8o
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 16:53:33 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVl5941fyz1S5Jg
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 11:53:17 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:x-mailer:message-id:date
	:subject:to:from; s=dkim; t=1678121596; x=1678985597; bh=uK+glyg
	nD/QeqUlfo72/hfCeJTh8hcZKk6WDctNDr6Q=; b=QooJAV7RsPaTGv8Zc0TrfZE
	cRlzON5oP+5lkcuvSOFrn+Nv8JD1ECOPfgr/0eE1eIbguPeAm6Kgp4cex/+AuOyY
	8/9LEMHUucTTsWwP0SOaB80g0andIrQkzckkxYXfyi6B4HipXHp6+ESliz6vZ1Ca
	9h/AQdSjkQhcx3XYLN5IfGyCMDSnuTio7wPoSKzQL7Vn3rKgwG5x4Kot/YASsEbO
	tzigEkJEnl5R1vd0ZZhWEmylLBo/9iHk5jqKshaIzi5k312a0FdHPNnxGZ5ZVip9
	mW9AToTkhvqzpIH/6qQOYbzt5UIp4eb7VE5mvrnncUEcq6XqH9adbZN49CsrDlA=
	=
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id CcXvrYZm_o_B for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 11:53:16 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVl4p1NzFz1S4vb;
	Mon,  6 Mar 2023 11:52:57 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	keescook@chromium.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org
Subject: 
Date: Mon,  6 Mar 2023 13:52:39 -0300
Message-Id: <20230306165246.14782-1-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_085332_548977_5F428ECE 
X-CRM114-Status: UNSURE (   3.96  )
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

Introduce Universal Flash Storage support on SM6125 and add support for the Xiaomi Mi A3 based on the former platform.

Changes since v6:
- Add struct for v3-660 UFS PHY offsets and modify sm6115 UFS PHY to use it
- Set ufs_mem_phy reg size to 0xdb8 in sm6125.dtsi
- Drop "#address-cells" and "#size-cells" properties on reserved-memory node in xiaomi-laurel-sprout dts
- Move "status" last on &pon_resin node in xiaomi-laurel-sprout dts
- Modify "&pm6125_gpio" pointer to "&pm6125_gpios" in xiaomi-laurel-sprout dts

v6: https://lore.kernel.org/linux-devicetree/20230108195336.388349-1-they@mint.lgbt/
v5: https://lore.kernel.org/linux-devicetree/20221231222420.75233-2-they@mint.lgbt/




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
