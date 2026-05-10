Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7388CCD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 11:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S672ZBEZuhfSI2nI4vUeCFTR8mLjIKJF893RYDjGfkQ=; b=gKNi5KPvgkTZcZ
	05kPebNyv01vMyH1ED+biECWwL5vV7Gn2R1LDFH+8FjRulaaaMQ9H7/trCjcOGvAq7yjHS2v2RmH8
	cZ1pEfNATQBwiCe1kRJavgVFIjFCVv3V4YuRKh1eFvO2NToohPyi9S+Fs6vE7cHmHULS3AH17OL9d
	HBBzCTAXSIHvOd/aclJPiSuxdnnt2PpZbWTYUCqzKNG7FlE4Av6Ct164JTN9sU80tDU/fFN+HlomB
	umFvpNy57tmC8xHyV/Ch0aGi28mQNLGysYTUZAnezuFFUysy/yOuaD8Svmn1GOGgkGpp3oj+zHRHG
	jY/bpR7jue63e8QJFn/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM2Ia-0000000Adjv-4B5H;
	Sun, 10 May 2026 11:26:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM2IY-0000000AdjK-04QJ
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 11:26:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 38A3E41A76;
	Sun, 10 May 2026 11:26:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DB5EC2BCB8;
	Sun, 10 May 2026 11:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778412373;
	bh=2KRTjZ2Lq8ZGRTyfYZPEXXRsQjgKx/NzMCHPT9+g3SI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=okjxQ6ZO2rCXK0FiyK77U2aTNgcVTcTMEALrRzyYXJoz/CRP62qy1NUH6tWADKkf0
	 isu7QOlxxiBapWJhB4qY3oU6FAtuX+C5Yzx+8B0tGvmqPuIG2u+RliTjjhRkaEpHlg
	 UIWjvvw+YhY910QWp9EIktPQ7gwAtBzz+HbHHhsDBcXLm91Hzh6NGOyydPmJ6gO+QX
	 PE+Is2ED9RuUB225NOZ10NmtI1cg60/A0X1T4wQnyF3xtBnFhEdddYYNkKFk53xDlY
	 J3As1YwnIgvhxHQZgXAvH54TOotwgSSPrXJfQQEfTJxY12U1cU/THOsOuTCZpbJX3H
	 kp9cdbXw1mVbA==
Date: Sun, 10 May 2026 16:56:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 02/10] phy: core: switch to using
 class_find_device_by_fwnode()
Message-ID: <agBrUA7SsOLwhOMc@vaman>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-2-b72eb22a1215@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-2-b72eb22a1215@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_042614_076713_2E78E721 
X-CRM114-Status: UNSURE (   6.17  )
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

On 22-03-26, 18:54, Dmitry Torokhov wrote:
> In preparation to class_find_device_by_of_node() going away switch to
> using class_find_device_by_fwnode().

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
