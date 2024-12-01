Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA687D7361B
	for <linux-phy@archiver.kernel.org>; Sun,  1 Dec 2024 00:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Ylr5vNC/nAVCN2eoakTmZVilrsXdo2Zl5uEUAKepbk=; b=VnoN3ONxN/wFj0
	KLVIJGAROZxNA9qlUEGdUJ+YjvyE0k8R9CEu+U6tSlpAxmFFbJaG5PaxX21nk8bN6vBqi6sD2kCwM
	bj1NfIGBO0I3Ome5Q2lN8y9xrEaT+3R3+REW1WFE8jy+NbffQQsr2t0JqKczKqVrxN8UGHO25K3FV
	0l62qFs5JBRyCX4nPPVYtL3+sjmYjqS+XNctrsFf1/TdIqEMJAckDxFH0ilbxLRY9rG+HDGHePqEL
	I2F6p/AtknnOK5eUWhybjAwZ21YJyg4osImCVif/PbaYUzgt4QBKQYsI56oQHVfI+2K6Eqg7vXzeQ
	DRdnm+WRgNfjtfyyL9bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHXme-00000002ndf-3AWR;
	Sun, 01 Dec 2024 00:25:56 +0000
Received: from www381.your-server.de ([78.46.137.84])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHXmc-00000002ncy-2Tet
	for linux-phy@lists.infradead.org;
	Sun, 01 Dec 2024 00:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	s=default2002; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=X9062Dfv8TGUoF2iBJOb2+MW2me1B5nX84/ndMJ30qc=; b=FcOTDjbTmUP/2ov3omHD9ntSwL
	WQkSpjduPCJmpMNpAZahuUNbMW/Jc0DHQnomr1Vpc43nysiKH510fPKNRYZfOYGTurM0owztl2285
	+iPXUbpikz1lapMbd9++Dg8ZVsPgyAf1SoK1A4crG0Jo+JjqxL5J5mkWmNfEKJ0+PPqNo5mJUTnpq
	mag2M8Sffm54jZAJgPtuflcLaIw45XwtIQhWzEdy1y1jvVOhMVdKw7Zifgzy0hBDyM57pWGSMUqcl
	TEkrF/3DZD0DmiabU1jx7iwvSZxG9ZOJS5SbFijuenPN/wuydISP9jcnUq+x5MV/hayrag6Dg12WG
	bQoEfw7g==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <lars@metafoo.de>)
	id 1tHXmV-0005ZS-2j;
	Sun, 01 Dec 2024 01:25:47 +0100
Received: from [136.25.87.181] (helo=lars-desktop.lan)
	by sslproxy03.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lars@metafoo.de>)
	id 1tHXmU-000B26-1a;
	Sun, 01 Dec 2024 01:25:47 +0100
From: Lars-Peter Clausen <lars@metafoo.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH] phy: tegra194: p2u: Allow to enable driver on Tegra234
Date: Sat, 30 Nov 2024 16:25:19 -0800
Message-Id: <20241201002519.3468-1-lars@metafoo.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 1.0.7/27473/Sat Nov 30 10:41:04 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_162554_631264_978A4550 
X-CRM114-Status: GOOD (  11.04  )
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

Commit de6026682569 ("phy: tegra: Add PCIe PIPE2UPHY support for Tegra234")
add support for Tegra234 to the tegra194-p2u PHY driver. But the driver is
currently not selectable when Tegra234 SoC support is enabled.

Update the Kconfig entry to allow the driver to be built when support the
Tegra234 SoC is enabled.

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/phy/tegra/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
index c591c958f1ebc..f30cfb42b2103 100644
--- a/drivers/phy/tegra/Kconfig
+++ b/drivers/phy/tegra/Kconfig
@@ -13,7 +13,8 @@ config PHY_TEGRA_XUSB
 
 config PHY_TEGRA194_P2U
 	tristate "NVIDIA Tegra194 PIPE2UPHY PHY driver"
-	depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
+	depends on ARCH_TEGRA_194_SOC || ARCH_TEGRA_234_SOC || COMPILE_TEST
 	select GENERIC_PHY
 	help
-	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x SOCs.
+	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x
+	  and 234 SOCs.
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
