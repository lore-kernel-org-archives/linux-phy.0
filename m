Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D04CF885C
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 21:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ria9wMnSPYBXJA/c1/nDS4/IeMULAir/h2EF3Kngb5k=; b=Fp/UmSuzp/F9QW
	xIZxnvnKjqpoEJSV7/L47zW4B7QtUHIcdNpXptWHTmcoOzUW9euJ849IFsLZR3/FOB2vp85PgK9mf
	5bE4kaexC+egW2LWd6ie7FOZYa9MnvquJKHEGDYRldbpYXKqfLJ3C7/krUd2hD6PAOIxbK5R5tYkz
	W4VxoEUG/eHl7MSqQ/TkkVjO3cHRE5+zH3cUKZmTmtyCZiNEUs7ouOWfK4tZpluUUnTRNZMewMnQw
	GDjbums+/CsuPH6UgY6B/rPghBCczIIuCCGdGFIf/73nupAjs7R1TbSW9AvwGlhhJAu+kp+xlhxZC
	R+zY+bjWRBxlrx23NquA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swpR8-0000000EE7y-2Zm7;
	Fri, 04 Oct 2024 21:02:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQp-0000000E13l-3UNW
	for linux-phy@bombadil.infradead.org;
	Fri, 04 Oct 2024 19:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BcN1ryMvOwwt2Dlfb4YKA2Wdv1MdcqwO9HnMeLljjgk=; b=UK2qvBilA50BBUzmEuKmI5+Bjm
	pwndLTf64/nl7zTIeR3MNnsc69Az322kaGxNfMSwn7A5KOlcFw8Kn70E86VDda3zP4D0ldpIl/tCc
	Be+Vs1eXPiOkTBD5zNaCJbLawMXi0M/SPGGs9Msy+QayRDnPT7WFJE6s0gsbN8Bw4ksI5aRyxJt2U
	CoLUTLPAT7dJ3W8/Ejzw8UCmgW3K2+NNqYtFZmu3Vc2mPMAEmJ/SQet+XF0Xa3Wjtsbj5HiY3u6mZ
	0VrEo7SxfdCXgEGnL132e7uG7yxnvFt0iW1p0UbR/uHSG7456apC5jFIBW9ZXNz8Uh6pzJv6nQroc
	bwIuRS2A==;
Received: from mout.gmx.net ([212.227.17.20])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQk-00000003vw0-1cVF
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 19:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728071836; x=1728676636;
	i=markus.stockhausen@gmx.de;
	bh=BcN1ryMvOwwt2Dlfb4YKA2Wdv1MdcqwO9HnMeLljjgk=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=E70nC+y9NespXruFfDzoKOIYaZ4IhE7bgBjsWI08XAaZcRto3wn6KfLXSK4AITnr
	 BlrEcZ/MCc0PSv9EfUCezAVhW895ILj0JwVMgU4unW0lKPNs0D3K1CU+v5pOeyI2R
	 DHZmzX8sCWXkdXW1bY/MDXC843St88LvNHnEGhGacIQ3fWZrlSUX9KChHDOka2O41
	 zPwpKwAUtuQ8xONUJl2yM/4HeDSrM8aqxxA21qtQsAtxWEJxRuo07oAGeVvrq4zNq
	 xtBeHuVY1kKaa8OIE0eCJdbqMQHMzj4+nNBmOaQpHMTf9+JeWZm3SC0pcB7agxQh/
	 4dSHpA1CQ42RJqq/IQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.81]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MdNY8-1tW9Ay0i3M-00eSXc; Fri, 04
 Oct 2024 21:57:16 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH 3/4] phy: Realtek Otto SerDes: include driver
Date: Fri,  4 Oct 2024 15:56:09 -0400
Message-ID: <20241004195712.1891488-4-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:QHc4NLpzmbXLlogmMNPyyDgcn4jHHopkniK7hviLrZoJRvYaN2D
 dIfi10FAZaHY76DN2PZwHWRPJejbZaXAKMp3Cb4ZQUl/oRG5hAnZbhDovbMR/NtELy+mfSK
 ARH7cU4mzhuOqPZ68yLhj+DyfhEyEB3AoaGEFEBHj+WiG6oZsc9syKzL11ZMJ6aeHufLSHE
 TLnc3TbBrjed5zYQ3mO6g==
UI-OutboundReport: notjunk:1;M01:P0:c/cHjFOoleA=;oxBe3N4fdBwS+40Qa9mnTstj+s3
 4o065wWSU9a2CuqLSweeRA8a9GoBAkSvY+cqwlsjuNoRBrpxn3stvaLKVprsqO4OxE0XDDzEl
 HpZxaL2u+mWO8n6ZibPm5zCCrw1NgTusFhL7xT1sWeQYt2cZSeVJ6TVrVf7PbS9OSg0zLdvG8
 mrKkWPdNZLxGFOoAeufhdDCDmip32PDqyTzId6aW/CEZMvHEoUfGl6c44pCGOJ9yFyqp8CAHq
 KDrVS4h7rNCvlWy6aRQAsTrAZ2esFu+XqV9rkaI8FT285t8NKtX01QdcIuuLreeKcHRQDGv2A
 F/8X4+PAhSEglb5T7iKgimwHmARE3g+Uvmk6KApp1r09dz/KWRmcSRm+fg9+cTvPCBvgX87EY
 hPk1J6zzWZUeAIusE4eDWdFdRnbhIu4OAy8d9cqHJmG+y3gKFjMItcYBl4yZsmo2CeX+J2+PQ
 ZlRQ0pMjJ8K/9N/7MRHYAcICQLNPGlZyYYgcy9cv3CYQuRTbv+08v/tgM3nvaAGLXOrVgEM2E
 3yVZkZp+ufNDCdpiZooEWtFxE8HL45102VKPDGaRzNj3ZxaIqCufgLLYXY2YDJ6VCcP7inLrL
 QDlrX4ja/hHZlcfiI7C/TJeCj+hw4DvSQ+3HtLk1ujvpnTwTk+SIKFuMHl6mJw10ZTXD1+hhX
 E2k2y2FL2W7ageubCZwyAA490L3dMlNhSZEsPriRJFcpGbmUDz1utrTcAPO0XJgI+anevFwvd
 6OsoQCgYxixsaVFleD0br9SvPXNxqrmjvlaI/4owieFJ1mdr9w16/UomMR4erq/VvrUaVszsj
 8cBH45/2PbZJa77JoYnq9mWQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_205739_209073_423CBF65 
X-CRM114-Status: UNSURE (   8.10  )
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

Make the driver available in the build system.
---
 drivers/phy/realtek/Kconfig  | 7 +++++++
 drivers/phy/realtek/Makefile | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..2c711016952d 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -30,3 +30,10 @@ config PHY_RTK_RTD_USB3PHY
 	  of the parameters.

 endif # ARCH_REALTEK || COMPILE_TEST
+
+config PHY_REALTEK_OTTO_SERDES
+	tristate "SerDes driver for the Realtek Otto platform"
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this for SerDes support in RTL83xx and RTL93xx switches.
diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
index ed7b47ff8a26..57e14961d851 100644
--- a/drivers/phy/realtek/Makefile
+++ b/drivers/phy/realtek/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+= phy-rtk-usb2.o
 obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+= phy-rtk-usb3.o
+obj-$(CONFIG_PHY_REALTEK_OTTO_SERDES)	+= phy-rtl-otto-serdes.o
--
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
