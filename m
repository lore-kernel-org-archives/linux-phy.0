Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C793C2D0CD
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 12:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iN9QOGohmDs3SxWFeF+1Ju73jsvFLQ2FToxr+TwGDvA=; b=BkMk6VwNn1wP5f
	R+hPJAgsSwLNuEH75E7IxDecfVNbIk//MQDAoGD9fyDKWOVdyFSERRsZu3WI3aMbeD7X+CK/yTZeR
	ZyNF9oyt6cA2sml8hAAm9P5h73Qrv/2NEmS/98+Q+l1Z2cgoHzRd2w4BYysBD3mB8yNeDN23NGB/9
	UeIuxcC2Q+9SHFAk3wquXwBADbm5n4n8GSKj4+NjbpZqitqvNmf9cpyiu5OHeVNc36xGMAdhVzKyZ
	LHvRb5vad1Z4jfFLgITZ97UkNQY9+ccsRrgbsXGcezXczJ0HcIsyuvbIW9pFqyWKH+fKrkYQVjl4r
	XLS5mmbfeJbkxuWisfVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFY3Y-00000000d37-0W51;
	Thu, 15 May 2025 12:51:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFY39-00000000cvr-0dJT;
	Thu, 15 May 2025 12:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Lo8tkKW23+9WMFJ5yoTSmuGd48aBjFyaRNNWMBrBWOQ=; b=BmvkpP6eIxfLKtQ9w3Uake6ka9
	/9CqizimXLWD3ytdX1PUn4ITl/TGBlhGsWxTcUSzRGijga8WzU+mLIpOc3Z95TFsWEleyRh+fqqm2
	VyNDWFGDoJ4DROR58cEpf1SEgCOP57kAbGhxX71ycOzcJaoweOmHEkJ/XfcEEgEvXluS3sGGIl/f8
	5H3ijB5QiJZEa70fSDY2qI+ixApiYZCNQRi7vWmMiuw40RO3hQwdfBFF5Kmxsy9DhdzbZNRAeyCMI
	2pY+duacKFQbAaQ1Zdyh+9WTu0U0gX2rm5gacCFnQ7EOIK18b1AKNMTUzCyFuW2ndhjhjJ03dOI/r
	2ALerG/Q==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFY37-0004ph-Ic; Thu, 15 May 2025 14:50:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] usb-phy support for the old rk3036 soc
Date: Thu, 15 May 2025 14:50:41 +0200
Message-ID: <174731343058.2524804.7975318323595517347.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250503201512.991277-1-heiko@sntech.de>
References: <20250503201512.991277-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_055059_186648_1FB1DDB8 
X-CRM114-Status: UNSURE (   9.91  )
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


On Sat, 03 May 2025 22:15:09 +0200, Heiko Stuebner wrote:
> While trying to resurrect the rk3036 board in my boardfarm, I also
> implemented the up to now missing usb2phy support.
> 
> The implementation is quite similar to the rk3128, except the not-
> supported charger-detection, so its addition was quite simple.
> 
> 
> [...]

Applied, thanks!

[3/3] ARM: dts: rockchip: add rk3036 usb2phy nodes and enable them on kylin
      commit: 9e010737dd434e3eee1fa75938abea0dc2fab8e2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
