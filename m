Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15B5C4167E
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 20:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYekAri4427q+Hm8kE9kO4vVLaH0L4U86sJIW5eVxbs=; b=4AFmYrn7TfP28W
	LT9fuVSNZlqsreEEfB/TtFaWiJF7+qVBhDi/xx6VjaJPiIL7E2q3SwXw57DDoxrtJ79tnL3xc1e8Q
	2nltMtuOGaX8tPO7cajydMmVj8mGFkNO8/1bWsf9+8/y3WXROKK1W4CWULSk5G6xywXqeTnmuNZ1D
	UYGiZoiYsfoVfhX1tI2Z7oTid659fa3EIUbRGgVmh8jD+N4sd2nMtj5SPSmsxdFHebndVjEu8vFix
	0iwb3qzO4Tq9KWPO7EOgjS+seLebRtyf76TYTLpCjocwmI9niy2BXPyxa1N4l835Lu+R5uJQ6eu2H
	L6TdAsicz0gDbx+iiJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or3hz-0056F7-2c; Fri, 04 Nov 2022 20:54:35 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or3hw-0056Cs-NB
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 20:54:34 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 218235C0084;
	Fri,  4 Nov 2022 16:54:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 04 Nov 2022 16:54:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com.au;
	 h=cc:cc:content-transfer-encoding:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667595272; x=
	1667681672; bh=0tAgYqAZ0GRyXkSILb2k0x36R1r8N/5tLN/RnkJr5rU=; b=L
	2f4gb2oC4O/VvGuAYuuOHLmH8l28Hn9R97GVgq+71qIr6yM0Px5S7kAJZxnc8Gg7
	yLLio6qc+UQqme0nRewruSuSR4/DJiEsgVMy0AlCEmmbvK3sKJRmCP8p0HYwpmZ4
	iEpEW2M7vLrD0l9f6HxvwkHICGYRk/jhOpgplm0U0FvXlaWONjuKQ4VayLg5tiTl
	N/YliTqxVnOCGUF+ucP0S6Z7h75WfNiz9Xu4tDzI8XILWsVs5LQZsscbnV9tx1o9
	UUFGONw9MvXrncYo6fXaI2sDgT8Evg1FkDvRWPcnhCUOf3+jF3NxniPFrNh6w0Wl
	yJ0tHDSYH+Zg8xELaWp2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1667595272; x=1667681672; bh=0tAgYqAZ0GRyX
	kSILb2k0x36R1r8N/5tLN/RnkJr5rU=; b=WNmqNv+arquC2jp0bIIQ+4kgvLkJ6
	oQv2fpGoF4uG53d4zgQFUkKnDjmCUuFdpkEc4pZTqziBRHKDx65zSarlqNzHetr0
	9jCcQi1FN1vuM0L5fZO2dxJUotqsvqKwW29e+/b6+cim1xN8B4QgfW5zEDgKEP2Y
	oALaijUyLsu4DsNhelL3ohRNoPC8yFvN/ZFhJq0rxay6qox07D37qV1pNo1m8i4s
	9Z0NHEtePc4IxvAqWMB8iJsqmrKnF8lC2ZgHMMDMXivllnB39lDFhETVAItlpVru
	06Pdtpls67h/ffHwMpH0qip2JZ9DisHTTf7mCqgLeOeSHxigwQd8Y79Uw==
X-ME-Sender: <xms:CHxlY3b8s6PQFp4siKdn1dkSKjL95a-QRUO5fBu8uUgNkOrnFli9jA>
    <xme:CHxlY2aeMsEJrctBdbR2AWBuH3wjWSobVvYb7lPH1pkuhgpvaC7unlgLS7OjDGBsx
    Cbu0vZEcfaB3Qd5Fw>
X-ME-Received: <xmr:CHxlY59tRS5WqWsuiFgfm8MQ9ffeBDfzLPdL0HH0_r7VXFENRevnxRgB9Obad4g7XCG498AQVz9UjFObDgUJVwekHNG9jVuVCeOx4qvQ_CG0FVLxVIAlqZkpnZCv8PVr>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvddugddugedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheplfhohhhn
    ucfvhhhomhhsohhnuceoghhithesjhhohhhnthhhohhmshhonhdrfhgrshhtmhgrihhlrd
    gtohhmrdgruheqnecuggftrfgrthhtvghrnhepffetgedttdefvddvhfeifedvvdeuveeg
    hedvieffudegudduudehudfhjeekhfevnecuffhomhgrihhnpehkvghrnhgvlhdrohhrgh
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgihht
    sehjohhhnhhthhhomhhsohhnrdhfrghsthhmrghilhdrtghomhdrrghu
X-ME-Proxy: <xmx:CHxlY9ryg0nQRcqV1AQtoILqcP48LGgxmXw31FBdR0rdpMasbzVJTA>
    <xmx:CHxlYyoHmgInzVXcM16Ldv1EFTi4pqxsw8ha0IUKo3Io9XvZmf0aww>
    <xmx:CHxlYzRlowXtozeIfieFIrgWKY0JHU2fA5G734NrsOHiPZz9EG446w>
    <xmx:CHxlY_QsbU9xoZ_g-49qsA4eF3TVFhbt9sWGIPzmcyf6qx6MGzf_Fg>
Feedback-ID: ic081425d:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 4 Nov 2022 16:54:27 -0400 (EDT)
From: John Thomson <git@johnthomson.fastmail.com.au>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Cc: linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	John Thomson <git@johnthomson.fastmail.com.au>
Subject: [PATCH 2/2] PCI: mt7621: add sentinel to quirks table
Date: Sat,  5 Nov 2022 06:52:42 +1000
Message-Id: <20221104205242.3440388-3-git@johnthomson.fastmail.com.au>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au>
References: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_135432_873614_110517C0 
X-CRM114-Status: GOOD (  11.14  )
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

With mt7621 soc_dev_attr fixed to register the soc as a device,
kernel will experience an oops in soc_device_match_attr

This quirk test was introduced in the staging driver in
commit b483b4e4d3f6 ("staging: mt7621-pci: add quirks for 'E2' revision
using 'soc_device_attribute'"), and the staging driver was moved in
commit 2bdd5238e756 ("PCI: mt7621: Add MediaTek MT7621 PCIe host
controller driver") for the 5.16 kernel

Link: https://lore.kernel.org/lkml/26ebbed1-0fe9-4af9-8466-65f841d0b382@app.fastmail.com
Fixes: b483b4e4d3f6 ("staging: mt7621-pci: add quirks for 'E2' revision
using 'soc_device_attribute'")
Signed-off-by: John Thomson <git@johnthomson.fastmail.com.au>
---
 drivers/pci/controller/pcie-mt7621.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-mt7621.c b/drivers/pci/controller/pcie-mt7621.c
index 4bd1abf26008..ee7aad09d627 100644
--- a/drivers/pci/controller/pcie-mt7621.c
+++ b/drivers/pci/controller/pcie-mt7621.c
@@ -466,7 +466,8 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host)
 }
 
 static const struct soc_device_attribute mt7621_pcie_quirks_match[] = {
-	{ .soc_id = "mt7621", .revision = "E2" }
+	{ .soc_id = "mt7621", .revision = "E2" },
+	{ /* sentinel */ }
 };
 
 static int mt7621_pcie_probe(struct platform_device *pdev)
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
