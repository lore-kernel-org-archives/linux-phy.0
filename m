Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9022BC43219
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/EVMrQ/eY1HDo9igMCCV/6GQ1lmNBKIhMzdTeBRXLA=; b=XPHvFrrm0s23sL
	OT19nntaeUF1/gt9iFg+nlv059UiKC1i/YC9qtPVNWgSfW+wGlujUoG2x+sylXgfk8mUgteqfDpIc
	kl2u5fLxprIhl8Q4S9DtuBhJ98/Zm+gQWYJ3mZWrwFev567EFZWdhtcSWoahRsoiuAA8pJ8Fqx518
	x8S5W6RvxI5GAXbDuMpEk9vCVq4U7Wl8xpy5hwgI2Qako5HRRacpOsdKyQvLQ16/eA0ryd3OpXO5E
	snxVkX0Zx9wJCFQfgPzILte/bfI/0aF/fscvytxhaxYvGeFbN4LROcI7iXaBp9Ma2TPoPQjGrTMSS
	inDscjXm5ndkdhRQE7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or3hw-0056Di-Td; Fri, 04 Nov 2022 20:54:32 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or3hs-0056An-95
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 20:54:31 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id AC3BF5C009A;
	Fri,  4 Nov 2022 16:54:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Fri, 04 Nov 2022 16:54:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com.au;
	 h=cc:cc:content-transfer-encoding:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667595267; x=
	1667681667; bh=lJsdPrNmT8+mD6s1iPhVQ7qYCLCp7h1cNeMluNK4XT4=; b=E
	O6eOBOkVKmYCBEl3HdGVUheKJcMVNMqYzWzy5OoM9/f421xFhaEPsDGf/FfYoleT
	7COY6kt4OFxYjJibQB4KLrvM8CZk/hO5E1L40EIk0cKqU2N8SZYf+dvX8a5dbScz
	JZlF1KyLASTAtMIXvMXk2eCS/gSF+F3SdICdbNJ4PxtdCstb3IPO3rKc8oaNoomM
	TBA8OUhDTIKZjN9Hbty1K4YAno1OA1/zbMpVxsFnwyxAvLHP0Sy54VMVZvaaa/Wn
	4f+ICKW77WDO7dduPDsPWzr/5RpyDeI0bziRHhtiy3g/9Elx2vQIrnCx/iAytstM
	0oppi6LGjUm3pmdj5zFVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1667595267; x=1667681667; bh=lJsdPrNmT8+mD
	6s1iPhVQ7qYCLCp7h1cNeMluNK4XT4=; b=e9E70KT7Ua6gQif8RAr7lQ1yJk4Xh
	wmbs5nxg48WLha1z/Yg0E+DgebkVhvuwPm/WlXnLQUZYBuJAbtyBnlI+eV6JlL1d
	qjyN4X0IqNrRhMFvIbKP+z1zIRtzYWMLzOFMUG4wme0lm1wS9KntQWzwkor4zvgg
	sQNKb60tUEmBUaULO7sPqordbnWztqG/FPNedCUNIM/I0/ryBDYTH2CvKb5+9Z2K
	fuFLx+YYsF8Hquhl+bSvahrc1RMNzEIaJFJtgdoPEJOjOUlA2T55vkYJyf+ELMXl
	BEbRHaRPrjWKlnZooyP/2sb6AnsWECNzIZP1Q7hGD2BdfNkYTD6qvL4JA==
X-ME-Sender: <xms:A3xlYxZXUuaLVPp_MHbir-9adoGbzmuVXBfKpN_emXnAX7sUeMUe7Q>
    <xme:A3xlY4b0iq_W8WSZp9QClKVKWsmJV78H5OP8WvDVHKFBJbM0RtoL-0S8KA5kUdGse
    vtc34XCv8kY3cKRbA>
X-ME-Received: <xmr:A3xlYz_ZwizbfJ1pKI_z4B9iaGvEr2AD_OpvMGCEpCXoenKRGTc2mBUrvGi6Huww1_V1mAGIsPdGUtP5kAMd-dTFliLS9tLM3RTMArgjKpSZwAeppYpZPvvB_BZjKa05>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvddugddufeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheplfhohhhn
    ucfvhhhomhhsohhnuceoghhithesjhhohhhnthhhohhmshhonhdrfhgrshhtmhgrihhlrd
    gtohhmrdgruheqnecuggftrfgrthhtvghrnhepffetgedttdefvddvhfeifedvvdeuveeg
    hedvieffudegudduudehudfhjeekhfevnecuffhomhgrihhnpehkvghrnhgvlhdrohhrgh
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgihht
    sehjohhhnhhthhhomhhsohhnrdhfrghsthhmrghilhdrtghomhdrrghu
X-ME-Proxy: <xmx:A3xlY_qFHEtu_bOuWS3h0ctm5bTyOxhlzJIYUdSFNM1DuRRUBz_LCg>
    <xmx:A3xlY8prPyaIrMN2K_wfvj5u6hZN4P9nLpqaG2MPuUQkwCPNaTiWSQ>
    <xmx:A3xlY1T99k6CDvRHwmwcwR2X4pxU0mv_1BDGaQEU7WM9d2rwyo08Kw>
    <xmx:A3xlYxQNV4MOzYkJ0zZFAWDTv61c2i1f-IhApDDFkSllKDXqY9MaFw>
Feedback-ID: ic081425d:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 4 Nov 2022 16:54:23 -0400 (EDT)
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
Subject: [PATCH 1/2] phy: ralink: mt7621-pci: add sentinel to quirks table
Date: Sat,  5 Nov 2022 06:52:41 +1000
Message-Id: <20221104205242.3440388-2-git@johnthomson.fastmail.com.au>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au>
References: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_135428_406166_32C00766 
X-CRM114-Status: GOOD (  10.83  )
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
commit 9445ccb3714c ("staging: mt7621-pci-phy: add quirks for 'E2'
revision using 'soc_device_attribute'"). The staging driver was removed,
and later re-added in commit d87da32372a0 ("phy: ralink: Add PHY driver
for MT7621 PCIe PHY") for kernel 5.11

Link: https://lore.kernel.org/lkml/26ebbed1-0fe9-4af9-8466-65f841d0b382@app.fastmail.com
Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
Signed-off-by: John Thomson <git@johnthomson.fastmail.com.au>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 5e6530f545b5..85888ab2d307 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -280,7 +280,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
 }
 
 static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
-	{ .soc_id = "mt7621", .revision = "E2" }
+	{ .soc_id = "mt7621", .revision = "E2" },
+	{ /* sentinel */ }
 };
 
 static const struct regmap_config mt7621_pci_phy_regmap_config = {
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
