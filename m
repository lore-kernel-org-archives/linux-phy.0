Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30555C64EC4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 17:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c3GMGosahUP5RMpGvSfwGmLwbywQwlQp9TspfZTatLw=; b=xdlkKmaekZHLl0
	cjLHVFLiifPLV3yDX9K476E7ZnhAGaLc7RygZkh0Uv63X7nJfUvQv4sVbkF7rpRAAsT9TO6OMSmaR
	IsANCmhsMEiQc3J+spTyYf+KcAQBpOZxgpZrdaW68t8v1efFB+zhVPP+HBh7mrRTMNPeECNvWawjD
	3wTK6JrQsMtaC1/ACIoaO7JBlW2qrSiMSvfeFnc9EcMD5eXSoFrl6kwERJE46Y52X05JisOUtnmTH
	WXxIw3rDC5x5ipXuBqIbjPCim5GmyFrBBe1AJkNpx/H/e6ZOxhix97S0aReYpdZx36IzS3jI4gJrQ
	76Oz+7osp4u1QdXI91mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEKE-00E3l9-JZ; Mon, 06 Mar 2023 17:08:38 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZEKA-00E3kM-UK
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 17:08:36 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PVlQn024rz1S5Js
	for <linux-phy@lists.infradead.org>; Mon,  6 Mar 2023 12:08:32 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:x-mailer:message-id:date
	:subject:to:from; s=dkim; t=1678122512; x=1678986513; bh=Cp0Pj3r
	+o2NETU+8hKdAUsF77CSSWrab0rX6wePh+5w=; b=gO3nusePeRHoheMgW7+WbR4
	9alQko78ulUCLWXe5XtowSYJmhGEghrXHFFHQyJaPhY2Bpx+b64R7JiKtLbbCfoM
	+DYsnPORrSZn2wqgBks7j1gAhbIH2ko+nZf9y0EORQWXjxD2+K0AJZ+zZFaINmBs
	hMrkDuyBY/vHS2hGefr2tZsXul3HtwWWVQymAYP7Qu/HHOwhXB70r4RXef/RrBF6
	vhFb994JbzM0x2bqgC/HBlJ2ZBlygqIb9FWAz86HrtXmfQwWdiKVPyIPDKn6t+QH
	lmeynCjbbdnZzaJc9rFC46VxaDY6ecWPrTsx94+0daUrfnRw8xIH7yVPMqTtzkA=
	=
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id SNmB1RSFPTMu for <linux-phy@lists.infradead.org>;
	Mon,  6 Mar 2023 12:08:32 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVlQZ50bjz1S4vb;
	Mon,  6 Mar 2023 12:08:22 -0500 (EST)
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
Subject: [PATCH v7 0/6] arm64: dts: qcom: sm6125: UFS and xiaomi-laurel-sprout support
Date: Mon,  6 Mar 2023 14:08:10 -0300
Message-Id: <20230306170817.3806-1-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_090835_133748_5EE7067D 
X-CRM114-Status: UNSURE (   4.41  )
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
- Add struct for v3-660 UFS PHY offsets and replace the v5 offsets in sm6115 UFS PHY config to these
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
