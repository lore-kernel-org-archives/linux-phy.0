Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E7EEC982FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 06:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuvrromPxM3FyWxccNLBGJjrfFxfvjho6yucGxJQRYs=; b=XdH7xX5scr7ZId
	hhLkZ/uI9zdNz9Svna68qxYeeQoLC2+NiXwv6OnkuIYNkamomvf96DN3HG7Vpog7nVzyYAYBJIi0K
	CJkrIXMfaFDIu0Xcs5EBE2HexhI8bORqkTGI3NSvM4yOL+W/X4F0nNf79VU+C7ZD1GQ+wQKvPBZDz
	0lf6r/Px8Uj9BnMFlHQZVENvrnLlylMJbUdrDS3dpfHTcTWCxYKYtqb93okjhnuLBsayTFtfeytyn
	3V9D9NS8LWoOH36kMRYBodIPlY2jnzEPDi2v7/geoi+Keon3Hyuhl7qXjcnj7ZQuS1ge0LZy2BUJG
	Jqk0pz0701IAW3rb+ZNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8u8E-00000004LtN-3DGj;
	Tue, 22 Sep 2026 06:37:34 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8u8B-00000004Lsr-3LPK
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 06:37:33 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2db18fe459dso22319415ad.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 23:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790059051; x=1790663851; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cEZ6qIPBqK0kKyvC4PAdXp1jfvwWUdlhUlYS77zPoh4=;
        b=pfacZGqDX+csSll9d7L9VhYzTIWvC/nQaBAuEfMOWmYzz5Tcs3pCNcHnaDee8oflTK
         yCGw8yjH1YiYsL86G3J+GXLxkOMk46zCqiW5bIu/24l0rofBDfZ4OaOGf/CTC5QeW4fT
         6/dYrV2gJDnc+1OqwrhGWx1IxSU8cvxR0n6MpU9pn3lV9bmvLUdez3csnbLE2/w2umdE
         nBtIU1OXttqAnhnW/uUYK0y0cyJyvorlGjQkm6WHXhcyQmjIH+4u40X7qEH6xwlVWdAH
         o5k1Y5O1iikV65GVfMYyAdOqCN7vEpC+bTp2Hru+B2SdH8P628lOA7phMg6eOtHmwnHh
         FNbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790059051; x=1790663851;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cEZ6qIPBqK0kKyvC4PAdXp1jfvwWUdlhUlYS77zPoh4=;
        b=J33oxr8R7rezNoEqMn0YpdjNL943+Xzl2s405hKieSaS9KsQmneUu60UXAEDBRq6WQ
         WHLtk3nFWsB9wOsaW9eLVGSql6kWy7NTbyBq9QyS4uZQm7gbVqURTfR29i7mMohsrGIt
         ZSM+pBRAJBIBbXBoqbGBRQ+jv0TCunMzYCHf0C1BFy+eqAnTyvAxdu0Vxc+Wvg6BrFGJ
         J55ThBRIR7fFRnKvQh6LAOt6o6e2qPZ9FMK19zA2THsVdqocfd1bm6ufc8LMUv25AEmn
         5MJfKIanEAABT0ocOQvnEflp7lt00jbnmRV5YKlFFaVuAId6moT+hvJeN+eAYg1boea0
         Nsfw==
X-Forwarded-Encrypted: i=1; AKwUvByTFIffgqaGHiBNA6Ensb0HNs7XnX0DiccaBo+jW1dMHLau33yho/bU2zAcSXHHP2Fjsm2XyKgV0/A=@lists.infradead.org
X-Gm-Message-State: AFuF++n+PomdrcM+d2b6Iffa2VL8FQSTMRWdH33ZMlkq2m32W6d9cHB1
	3L0TCqUfzIbXj9+Eu3gP1danJ1zUqRMivD0q6spkYQaUP5FlAj+3lJLm
X-Gm-Gg: AYBFou3Rm/6U3GWTh9O7ym0jUCEISNaqoH77iTKOZPGRD6GfLZ6FjgHFYWfYWWwenJE
	5fS+YC8srITkc81eKoNA3IDek+8ED9M9iH5mTc04Q1XjNbNcv6ZJ+ioq0Un73jHquGBGUGkm0Ij
	vyc3B9T+7UdpKegFXaGAglt2BYUcw9qzfu4K8xZ4ua7P4bJ/G9q2njq5n3rpKATSZMLWkr2TLMU
	yaGmvfAfMCEnXcowxxjCKe1ViKConZ18vz+2omGtIzcVPAHLFY9sJKLoqugOGjoq67lb5lKz26N
	AZpJv5CHRHJYgejrFYystTU3cdv0zWPVD0OTZByqFgGpKi2PSybGf3k0LT9qPqx1XdGe8z9Cx8E
	YdWBgghg/EwPX96A4nqX8WBBk1vQiPrUDgmqRzFZGhKOdZis7f+SkyJNaRQHr4EqtR0JCbW7ksy
	8x1gjm6Vtw33Q/VbdlzHmrj+gEOMOTTqf624RhYJjWUs4PRwqJeDJufZF2IZeTflFUA9LB
X-Received: by 2002:a17:903:ad0:b0:2d8:d4d3:3fbb with SMTP id d9443c01a7336-2df609d1990mr2155125ad.15.1790059050558;
        Mon, 21 Sep 2026 23:37:30 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df5d056911sm4297115ad.70.2026.09.21.23.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 23:37:30 -0700 (PDT)
Date: Tue, 22 Sep 2026 14:36:37 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Hans de Goede <hansg@kernel.org>, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Minas Harutyunyan <hminas@synopsys.com>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Heiko Stuebner <heiko@sntech.de>, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [RFC PATCH 1/5] phy: core: Use EOPNOTSUPP for disabled blob
 return value
Message-ID: <arIgfDh6ZSHNgbhB@inochi.infowork>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-2-inochiama@gmail.com>
 <2026092256-shading-gratify-835a@gregkh>
 <arIZX-0aMQiabxJd@inochi.infowork>
 <2026092236-breeze-educator-0f6b@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2026092236-breeze-educator-0f6b@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_233731_862578_51C6C5AE 
X-CRM114-Status: GOOD (  29.29  )
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

On Tue, Sep 22, 2026 at 08:16:16AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Sep 22, 2026 at 02:10:01PM +0800, Inochi Amaoto wrote:
> > On Tue, Sep 22, 2026 at 07:35:19AM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Sep 22, 2026 at 10:47:16AM +0800, Inochi Amaoto wrote:
> > > > Currently, the phy subsystem uses ENOSYS for dummy blob functions,
> > > > it does not reflect the function state correctly. As kernel already
> > > > has EOPNOTSUPP for disabled blob function, replace ENOSYS with
> > > > EOPNOTSUPP for a clear return value.
> > > > 
> > > > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > > > ---
> > > >  include/linux/phy/phy.h | 52 ++++++++++++++++++++---------------------
> > > >  1 file changed, 26 insertions(+), 26 deletions(-)
> > > 
> > > Based on the other patches in this series, this patch now breaks the
> > > users, right?  Shouldn't this all happen at once?
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > It will break, and the change should happen at one. But I think
> > the affect should be limited as it only affect a special edge
> > case: build kernel with CONFIG_GENERIC_PHY disabled. So the
> > break should be limited.
> > 
> > IIRC I was told to seperate the patch into small part so each
> > maintainer can take its own. Is it fine to squash these patches
> > into one in this a case?
> 
> You can't break bisection of the tree, so if it all has to happen in one
> commit, that's required.
> 

Good to know, I will squash them.

> But really, why is this needed at all?  Who will benefit from this
> change?
> 

This change make the phy subsystem aligned with other subsystem like 
clk, reset... they both use -EOPNOTSUPP. After checking the comment 
in errno.h. I think this is more clear to provide the information 
about unsupported function.

The related discussion is at 
https://lore.kernel.org/linux-phy/20260907114837.2y55l7dfqqrgcka2@skbuf/
After some discussion, Vladimir think it is possible to go, so I
send this patch as an improvement.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
