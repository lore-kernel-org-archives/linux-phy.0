Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021A0C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLfZ6OgteN3JB1pbwNxD95fgl0nqRNKmlkY+NSPDLzA=; b=OnYqBFQOi+gfhz
	d52/4lSKtKcftB/AsWWsEU0DKiEUH5plSEjF6xpEC4tVdl8QrrJ+QrBgUFE+y0WjIBHjSwGaDeLDW
	mOIn/8Fmq9vX7V4CgD3qPPWh7HEdYRiUM25NxxSOMGhHH1B3U32JqgKR5kQxdzkDKyDCFXPMg+N2U
	i3VvbG8HQu5LJchpnhst4Tj/NTc07GNBHqYOV6EXkGISdJjLY7gUtzuEEkF6CYxN6d86DCo1UH9z/
	rNRjF+l1kPlF/1W5vgTF0aMwfMgjsMF9JJE0fAAaH0isp9v6RgtNNHtMtPE4n5sC3HnSWAvY6pxhL
	JIJbYO2n5Q3oJsITAAuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKz-00000008dsL-2Xod;
	Tue, 08 Sep 2026 09:41:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008dqz-1UDu
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1DEDA43C30;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9085C2BD04;
	Tue,  8 Sep 2026 09:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=XJ6yOYRHmExtgCBY9qgx0PWkSsgAEmtcH8En113ot5M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=mN6/eogAkZbzqjvWFtEatTPOr9Qhv3XpQaWOJtJ/NUeeVmPyNp1H3VMIZdlEEnrsL
	 0FFHkFXlEtvohsZ4VuSjF37S39i2Hgv38VC/szstDP2FdkVNN2PNMJqKXnJS46b0/2
	 C876uV8YKabqt4HjZ3Bsmt2DeDnjVzfqW+wMure1s4zwKJi8CUi5220pJJFwQSZUgn
	 P5c+Rp1Y5phdoxmKw7lxoosQ1UW93X6xyXlJP/c30+UqnXKa0V89xkjtYWlZ35HjGl
	 AnsGBxP+JG+ureHDmR4LWqecM7nthxM8+rm9A70bUyBe2/kypNQesPWiXXbTseoU/m
	 nsTaqNoduuDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB46C79F82;
	Tue,  8 Sep 2026 09:41:55 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:40:56 +0400
Subject: [PATCH v4 03/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Remove
 unused of_device.h header file
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-3-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860512; l=932;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=x3YqnFvnYn/dCrkEKgaRYBlPO+FYsf46oEelUL8OnI4=;
 b=Z6muUtm7Pdr7gd25BHnn0SL9Th8zJf9BxGrRZH5VgkYh2/tMv5XhZmJAPRCmqvBuDxz/w+rx7
 WgQl+YY1RUxBzyjyoufuWzTS/Um6a2gcF4t1xVvhHpS5BPvxiYxzuHR
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Moussalem <george.moussalem@outlook.com>

Drop the unused of_device.h header file as the of_device_get_match_data
declaration was moved to of.h in below commit:
commit 82174a0a9c5c ("of: Move of_device_get_match_data() declaration")

Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index 53512db90eb3..b9ca6c1c177b 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -10,7 +10,6 @@
 #include <linux/io.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
