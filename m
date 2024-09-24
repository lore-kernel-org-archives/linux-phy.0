Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40E3FCF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSMFDWTtlVheHD0h4WoPGZwAB2/5rfBfFA9QyikppI0=; b=te6fzUQBFM104m
	yIX7Zf5L1HZGpUtEq3cKWY2+vyHvWGCDZXybYyqHqI1HrKae0eoOUr1wSL6/QRBYPSbmRhj6m54g2
	zhCza/mPfw1+vSK6h2A+T+lgPzvksO3FapW8mzMGPo3repJOFDBuofBxeaV6ZxC68lkEgpVjKfK8l
	yuS9ou1ElELzEivXMf6Tsm9kCUSQnCh+Hnn1rgqIiq65Y1DOOgvsT4kIjZtcQ6pJWIJ0LgqttvKPs
	2RwRHnelZOZkFwr1o+WWlLPBhPDc/Bhd/smtT41fr0dhHkKiz+3sLZx6fGBanWfrhu3k0iCPcCzfz
	VXyklK2P6CsWcYVKibxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st2RE-00000001w1d-3VN5;
	Tue, 24 Sep 2024 10:06:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st2MN-00000001uww-0p7w;
	Tue, 24 Sep 2024 10:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qHRSPWckHafEtxyIwPf3zZU4QzTnqXjXtDJvuDWNGxY=; b=EDEzJDOvTIqfDKu/h0+VACmGM+
	d6J1krWZp1rP+U/h2l7/YVcCVDjpu9xLJnRT0jmDbF5p1YBo6G9JlgZrdjjkLx63koYHZA0U6V/cE
	CPLGZkv012RDB9CdDejb5zLOx4r66xa0wDi2FuozwTUXhViqdsJeJVnCFK+e+Nrw3LjyEaZ6TpiPE
	0zeywkM2krVYU0Lv3u1KRpVQGTvWkxded/eEXWFmo3RttahcJEGMm/OBM9kh9W1va46iz9g53mMUQ
	JPSFdBsauXBiSDWYaicBVVOaF+G9CrvW0YgpA7nGn0f71bZjQPphw41KIyudHvZrhJKdEz7sI5TMJ
	O9fETzxQ==;
Received: from 90-177-212-167.rck.o2.cz ([90.177.212.167] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1st2MH-0000xL-2Y; Tue, 24 Sep 2024 12:01:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, wmc@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 2/2] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
Date: Tue, 24 Sep 2024 12:01:23 +0200
Message-ID: <15288441.JCcGWNJJiE@phil>
In-Reply-To: <20240924085510.20863-2-frawang.cn@gmail.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
 <20240924085510.20863-2-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_030131_303244_4A79FF4B 
X-CRM114-Status: GOOD (  14.32  )
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

Am Dienstag, 24. September 2024, 10:55:10 CEST schrieb Frank Wang:
> From: William Wu <william.wu@rock-chips.com>
> 
> The RK3576 SoC has two independent USB2.0 PHYs, and
> each PHY has one port.

Can you please split the content into "converting to clk_bulk" (see
additional comment below) and "add rk3576" please?

That would make the patch a lot cleaner.


> @@ -376,6 +378,7 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>  {
>  	struct device_node *node = rphy->dev->of_node;
>  	struct clk_init_data init;
> +	struct clk *refclk = of_clk_get_by_name(node, "phyclk");

Doesn't this create an imbalance - with the missing put?
I think ideally just define clk_bulk_data structs for the
1-clock and 3-clock variant, attach that to the device-data
and then use the regular devm_clk_bulk_get ?

That way you can then retrieve the clock from that struct?


Thanks
Heiko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
