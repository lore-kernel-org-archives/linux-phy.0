Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91C83C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:In-Reply-To:Subject:CC:To:From:Date:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5tIeS1cPWJzcmXa21LfL6rit3govgbJ8uZUYdGLsMc=; b=aenwF+xEcskj03
	Qod69+p5++zxPzUqqCPclVTMr8+2c/5z6nRVO7mCWKNqDhJnxh6uno0aaDqFJIBB2dr7MU4NdkezR
	yJg3RbqrTdFc4vKVVSlIpMeovpFzs3211Dyws2PMjHz5JgmN5K4SaKAEGV9wz+5ez5V3uCSlv7ufW
	eOMmPpCK671dQyWqlETIlW7eH5ly4gQhy6Wmsv+V8KU79W73ZP0k7zPNMj4dSDtS8Zqb6NzDDnVFJ
	URvbBgsDQ73XjHsJkzqsL4I2Eb72sjkkPwi5xZnQMOWqC576BhaP7VKVeWMFuU9tjtxAo48yapuwz
	QRtWsCVwTx8yIxRWLjvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovERE-001XiY-R1; Wed, 16 Nov 2022 09:10:32 +0000
Received: from mout.gmx.net ([212.227.17.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovENv-001VHZ-46; Wed, 16 Nov 2022 09:07:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1668589604;
	bh=JzsGOJXboxKM/3crZDIoEMyOlym1tEKRyGk1X7tJOE0=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:Reply-to:In-Reply-To:
	 References;
	b=opY5scHBUpdgu5gihOElocUqXf9RoIIv/ruFjs3wkFGtMi7OrUoBj9UWUP5fxuXSo
	 br3rUPMDQozK77dNdkOfSr2fkymMLkCQmPGhM102cMWD2uTP0aBUD1WyyaeS45Gb+B
	 5XDLEpHZ9JasvKi+X/HWsAszFj/ia+/rEtlKvJDiAqsTcaDauawUzsWuZVSA9W9AsO
	 zV6C5vzi/3vFefLseQVKv77r7wSiSKAisu+yO76O9lHkBV0rqk0hqRW8IRFlQ8t7Ki
	 Q6tGUgbEnbSOgfEOOp0YoNCEx2Isk7NOVqdF+vXAjyTrIJpnYNOjNczzXX0+2xaykX
	 agQm3qRyt4gYg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([80.187.100.158]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MzQgC-1p8NaF3cga-00vPwN; Wed, 16
 Nov 2022 10:06:44 +0100
Date: Wed, 16 Nov 2022 10:06:29 +0100
From: Frank Wunderlich <frank-w@public-files.de>
To: Daniel Golle <daniel@makrotopia.org>
CC: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Bo Jiao <Bo.Jiao@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Jianjun Wang <jianjun.wang@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 10/11] arm64: dts: mt7986: add Bananapi R3
User-Agent: K-9 Mail for Android
In-Reply-To: <Y3QMMKGc6uNFyfWb@makrotopia.org>
References: <20221112091923.9562-1-frank-w@public-files.de> <Y3QMMKGc6uNFyfWb@makrotopia.org>
Message-ID: <46481C3B-3B46-440F-B923-02934E0445F1@public-files.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rehvp2Q0a87CjyOMm8vKg+p92Q77SPjMTuCe012oBGxdzZVfWkj
 YBh88W32HzaGgeWQE2MShbKCC2M8d7DdJ+2MymyUSTbOkv2FYOM9ET0Mn6XgDYnx8OFUq6S
 SSw+BL6nm/b4319IdgAFFtTT6NNFY8YtUpBsWG5J9mI0veVyaOSZoFrI4zqlAEECYUHVBaX
 lRsvvsSTTxZWwYq3YenCg==
UI-OutboundReport: notjunk:1;M01:P0:Yg1rpNvtESI=;ewnDyjRW58XaqRskOpwg+Ef6gi4
 z+IL/9QzhsodSKsHI/5SHVaLHQpep7uQgTUwzQAkCPdoYNfy500OwbUhxx+3ES6OG+l7uVG7F
 OdJbr8H5FN0v7LmRJfm4iDnpO0TovFG/DRTdt3QT+74WXv0eotk4t/SRPbLAeAkMQHwlB8JEO
 QyeADG1ErlosH+9tb86Wx47c0sJCrmsEUnk0zMrc1a8i47mgdX2wzSInH3k793pv9FCeRL3Wt
 G8yApQmnbY39qh7deX/etzqg3DFcPso2KOLBFt3a6/SMeMFs54DB8HD/l492z8pbCjmjPnn/m
 adxbvtuodEgCFpEzvgwwZVTtXIM1yDH3ZT0Gz3eR+vHbV7yQMghLQKVDTB56EwoczrTA6mdaT
 9Jv3BSIKQP65wnJhoQDlKE5sorcTEwoHbnH1xMykMaB8zIvynuC7Z9dfc7FccR7tIhV/wmuji
 eRzD4KuYKrZpLjOAL6Mk+O2rNjfyl8EFbBje3IZY9t2jBSJsrqtqiXIfZOYPTMlzaSpAMb6ia
 UHWW9jOSWosQ+9yfA352aX73A6DlHZrGkUCOwxFh4AABRaI6tBs4/Q+3BzSeZVSUXRvjAO5EN
 /xgAk+sPiN7pv2fDPfRc4hdv9QWeCqe1MYRu7DgY4+2o5rWf/azq8N5ilRrOse7UsUXuOaDRc
 6m9JaGCsNgiKkbq7YkRJCibNQEnB87UC7X0LsyROAJHMFlgvAx8wh2h3mTZzlbynHryjI7zcA
 CdXJmYhLpCmDgx4CX0PaYDJA5VT2k3yKO2UOKET9RCn5LT8hCHVmCc0RPdl60rqHcQqquZg0I
 dqyV38X6IXWgjZwtNBL4nyNbUSz8fniDGcvlF9OFJH1X5rUZjsQljHZ+RLubfDNeM1xzdfYcM
 Xuy5PqUh7qLrRX5/3tL5nPRy2m7dmf+64JoGN5EexBLz9NKxlYm+ej/rh7XS1E4ydD6f0s5n4
 U4NNqtWhoGf+DmliGDuE0KSyqpc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_010707_517488_DE545B28 
X-CRM114-Status: GOOD (  10.00  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Am 15. November 2022 23:01:20 MEZ schrieb Daniel Golle <daniel@makrotopia.org>:


>The device can boot from all 4 storage options. Both, SPI and MMC, can
>be switched using hardware switches on the board, see
>https://wiki.banana-pi.org/Banana_Pi_BPI-R3#Jumper_setting
>
>So why do the SPI-NAND vs. SPI-NOR switching with device tree overlays
>and the SD card vs. eMMC switching with dtsi + 2x dts? To me this looks
>inconsitent. Use either one or the other method.

Hi Daniel

It is still in discussion,if mainline-kernel will support devicetree-overlays [1].

I used this way to have at least 1 dtb without overlay for booting kernel from sdcard which is the only external storage.

If mainline kernel rejects dto, we have no "broken" dtb which only allows bootup with initrd. We can boot this board from sdcard with mainline code only (maybe some users don't need emmc,nand,nor).

As you cannot delete (sd specific) properties in overlays,i added emmc variant. And now we can use overlays to support spi devices,which are not needed for first bootup,but to access emmc.

Imho my current sd/emmc dts can be easily converted to dtso and base dtsi needs only to be renamed. But all only if the big question below is answered.

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/20221106085034.12582-12-linux@fw-web.de/#25085681

regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
