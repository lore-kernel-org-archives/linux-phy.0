Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 590A9E65D2F
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 07:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAAO+HcRmCHKjgZ9YveYT4/atnKrZp//beuYHNh7ANc=; b=izEa9HcJOO5Pu5
	+EIEi+fa7WErF2dAw7+d0FDT39TasCt2pfWeyXbgJAf6DRLuIWZ0PKyZ+pI38kS1TEyIDYvaVv7oG
	Iuz0/Y0K48giJpAy7ZQAA5Vn4IxW76Eg9r/n8mH3g623L31kBdyjQBEXCEHu5lXj/jNDfIWm6lGBa
	5M0LihYCDUZQ40OyYDJ74fnSj+CADXkzrTs6SG+Tho2siwvDz8NPk7IYIO5AaNb9GXE76C4pzlGVI
	uKmHECY4ztbI+Jc5LvN+LhRqzniBUqClYmzFmCLHjKHSXOgeyMfkit+3SnfPMpoTKdcmgOzlN0wtw
	8Lo0kCGJoKt4pQd+nakg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEOXf-00000001rrW-06rC;
	Fri, 22 Nov 2024 07:57:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEOWh-00000001rkP-0U06;
	Fri, 22 Nov 2024 07:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u2CzZQRt2A+r6WQzjhC3dMMoIgGWbh2r8sqexAlw87A=; b=oavklLj9lgVc1U6ewRXNKjUnYA
	UuvJDHawdQgCSe1dPmUZK+NkujcFi8KfnIgUrc+e5NwiWvvTCnLo1aeE2HEtbHMW9CDnzrLotYG49
	AKWw5gT0gqhhMpRwmG+Nyt3ky/0dblyNO6NC+RPFTyKBh3aOyQvIMn5WHsZfiB15C3e9g8Gh+NcR3
	cxV7GTx5SU7WLkCBBlw0TVctHCCJX6yQRs4U5xsn0C+mW24Gj6lz6rw1+KLblO+Ra6NOEn43d1cT4
	DcT77o7MehymcsUkkTayLuELMBUPpd0QWSI6gzcIgYAhKsM7PgvpT64O/NiKUnMgrIWdGkytK0d8A
	3B/2gZJw==;
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tEOWY-0004Gz-25; Fri, 22 Nov 2024 08:56:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri, 22 Nov 2024 08:56:17 +0100
Message-ID: <12563257.O9o76ZdvQC@phil>
In-Reply-To: <20241122073006.99309-1-amadeus@jmu.edu.cn>
References: <20241122073006.99309-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_235627_185413_0C52876B 
X-CRM114-Status: UNSURE (   9.21  )
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

Am Freitag, 22. November 2024, 08:30:05 CET schrieb Chukun Pan:
> The reset-names of combphy are missing, add it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Fixes: fd3ac6e80497 ("dt-bindings: phy: rockchip: rk3588 has two reset lines")

It does looks like, before that patch above, the phy did not use
nor require reset-names?

No need to resend for this, as I think b4 will just pick up this
addition when I grab the series from the list.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
