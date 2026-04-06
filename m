Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 944EBF46C69
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 18:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNbIlUivDSVZhvDqxZOGOVkBA+frb+i7SB6McukcDf8=; b=vsO4Uugh2i89is
	wbTovdWTm5moCi81ZrIir+sCM6mRWDdI0k17xXDkhvqTOfEfLULjm/GoN9H1DiRAHta1lN9KjFdEk
	qRJf+Oag/plTGKRHZG8UHETiXAhp/AO8Io8ag9F0xVoOERRW6MPjQxpy8geIMvToMGcApwe9tLaeP
	BklOfNy5SO527kqf5gGp+TP0o/Ma/CxpcUPEMLucbfBeU9bI+RUY7vYEiGw+tXNqqJCwJc/MV0HrM
	zsZEDia2eMDXBGihyBXcwO4z90kuuyNprelvSVqZ8hT85GR0vl2a6yaTBq9gacvxZhEIuDYt9BXjg
	0K8+zk95iO/xtRj200Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oS0-00000005O16-19Pi;
	Mon, 06 Apr 2026 18:13:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oRy-00000005O0S-3vYZ
	for linux-phy@bombadil.infradead.org;
	Mon, 06 Apr 2026 18:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Jc0u8qW+IcgnjYpfWiJuD5aF9agXt5lsIksy5dUlTl8=; b=okBliivtSKh3maGQgm/oAcYZ8B
	tBLUekgMmD18yTXeu/8Yfdgy3eZ+8/8TQW0vRz+D86uxQsDl0QboE7rsxhZyyTn7ovWZKKA3iiYrb
	DBONWTEE0wJLm4i4HoHSZWE2MFIITaPadgvJr4Ona+omSnildbD6ClHvqEJNQkHm7zNiIm6ImaQur
	5NsvhW1o7nhd1QTCY4Rv8c35QW9/S27wUq2HJy0Wdbrf531IGpqB0wxy6/+4b2/vwX0ayvne4HPEa
	3jw9w2uqcKZI6zwM0wHPcTvb3pStwq+l783MdvfwBZazxPCV0nP28ZZMnIPIJUBUnQ/uZzr4JH7eN
	bmrsIzhA==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9oRv-000000074mW-2dsE
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 18:13:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id DA91F270DE;
	Mon,  6 Apr 2026 20:13:19 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TEbxBC7KUCVY; Mon,  6 Apr 2026 20:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775499199; bh=5A2ncLpb8vvjigR8O34mpX5m4sWPYSzbApPsYUi+pRo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Oax7lDBA+ECo3XW9O1L1ThTryL4uE7OKAsNQq/u2niuooLqh7kpX8b6q0im2obpti
	 Ih9kLKWbdKsvQJaC1zfGeY8MuCgNszvuu24EPxdgQN+FjcIBefXGQQqayGgIVLJzg5
	 wIccGaNrlN5qPJYKxl+mb/zoPGTBl/jiQ0cy+UTF7bi5+Miqcuao5Ccyi95xZkL1YX
	 icRgisMzqNUQ2sSgh4lDhkEojKCThcHGaZzaIck1st8xQ5nhqsGRcYCZaomif5WsGY
	 Q8KA2JUlwY5ukci2RNd+RMTjhi9/U7gTllJVmkLJoXeuIUfxXqG/ScDOEG4EgX46I4
	 iJ7dn7d/jvSXw==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v4 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Mon,  6 Apr 2026 23:12:26 +0500
Message-ID: <20260406181228.25892-5-adilov@disroot.org>
In-Reply-To: <20260406181228.25892-1-adilov@disroot.org>
References: <20260406181228.25892-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_191323_774914_D004E6E1 
X-CRM114-Status: GOOD (  12.02  )
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

In RTL9607C, there is so called "IP Enable Controller" which resemble
reset controller with reset lines and is used for various things like
USB, PCIE, GMAC and such.

Introduce the reset_control struct to this driver to handle deasserting
usb2 phy reset line.

Make use of the function devm_reset_control_array_get_optional_exclusive()
function to get the reset controller and since existing RTD SoCs don't
specify the resets we can have a cleaner code.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 0facd5f02e2d..64fd42513b86 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -17,6 +17,7 @@
 #include <linux/sys_soc.h>
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <linux/reset.h>
 #include <linux/usb.h>
 
 /* GUSB2PHYACCn register */
@@ -130,6 +131,7 @@ struct rtk_phy {
 	struct phy_cfg *phy_cfg;
 	int num_phy;
 	struct phy_parameter *phy_parameter;
+	struct reset_control *phy_rst;
 
 	struct dentry *debug_dir;
 };
@@ -592,6 +594,15 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
 	phy_reg = &phy_parameter->phy_reg;
 
+	if (rtk_phy->phy_rst) {
+		int ret = reset_control_deassert(rtk_phy->phy_rst);
+
+		if (ret)
+			return ret;
+
+		msleep(5);
+	}
+
 	if (phy_cfg->use_default_parameter) {
 		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
 			__func__, index);
@@ -1059,6 +1070,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
+	if (IS_ERR(rtk_phy->phy_rst))
+		return dev_err_probe(dev, PTR_ERR(rtk_phy->phy_rst),
+				     "usb2 phy resets are not working\n");
+
 	ret = parse_phy_data(rtk_phy);
 	if (ret)
 		goto err;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
