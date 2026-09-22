Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FF3C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 06:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPfBjBFORil9MFg+9EhMeCw57g165peNUeoQ/0kykSA=; b=Z/XAqdOyomFpSm
	9Q3wC4clcuWFqPh2nCmmWf6HYXSEqulOZT+NQlw6VCLjCvms2wIlsH9fo207KIVJbpy5ZslTnLyBv
	QbJ/rBCs/r+kh4/qYPEv8TU5faGm7n69XSrxkYjibOd7iCSgKDtifjKBfhvPGlS76ksFBHZbMubAW
	MU3AlefxkfC+fzK2sFd79A7fOzvFhrC6HkLHObMBCbUpicizgRcoXPxMg47cd675bqWW8gtyWGsLi
	vP3xkVR025PMJLO1z8ARrY4oZEqSV+9lmJTHvGEsIE1Ws4PdOk1/1Ta6AtLnq5CQa3RQevWRGHquE
	T6ffI9fE8fLE2YYNomlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tiu-00000004JTp-2uRF;
	Tue, 22 Sep 2026 06:11:24 +0000
Received: from mail-pj2-x0f.google.com ([2607:f8b0:4864:39::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tis-00000004JTO-24Iw
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 06:11:23 +0000
Received: by mail-pj2-x0f.google.com with SMTP id 98e67ed59e1d1-396ccd4f99cso4069114a91.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 23:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790057482; x=1790662282; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=NlAU1cyZsGgVwNObzTYZB5CmWtYF2TFVXhpno3VWcwI=;
        b=RKiMeeq3pBOOXNQdWQAHyliePRElsEXVBTNMkX2esPaTmd30PWiH5AFZsCFn38V380
         Dy4xGnievE2mMSFwZmfb4nDhRSEvwS3ZARdAl8S2Z67gz3OFWYOERcRpMbXXtDmxb9Yt
         dEw378Lcm+NWqtRkDM+32wHwAPdiy2pEffjcYmhiXmu6Ayvio3E4oLBAVCIe6tFyE+oh
         VlDd/FZrclpBxOZxK7i5ahypYYSx6Rmaxk0OJ9GHlDyOJsYWu9vpgH68vJcyi5wvnHZr
         Dka5NkBrwviHnU+SAT8uF+iydwQczwMRVEwnTTeqoaA1/CJi0o8CBKCUnAdz5vaRYgyo
         mBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790057482; x=1790662282;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NlAU1cyZsGgVwNObzTYZB5CmWtYF2TFVXhpno3VWcwI=;
        b=gInp1qP1PK55aZbENXJ0iYVg7HL91PoPqS0214B1uReC+/nwP/xPIGzvYZRy/k05lQ
         AvegowyySJ1LlXXNnSCsMrXJZZjmr7TbPC1oMBlA8V2Hlpe6t042rG3KqLDeNi3iAOe5
         e3RO+M3nI+d7FZK55mNR6Iy0blFpYcwiMm4QtC7bfikrY9hrQ5qAOrqGdHOMMiANUQmo
         bpTzqnh1x7oVqhnmxOY2axnICREWedU2xByu60frO7TGLDXqzDEnR/+sUK0FgeFNU7bs
         aK4EqchFaCa5bammCi24hjX1zYDzxd0UTuFeSE+KEsKrX0+23p5apXZOm5hjibQeUdrn
         2JPQ==
X-Forwarded-Encrypted: i=1; AKwUvByD2hWJ9VRNHzo42sxv9Lp7OPEBYdm1b4dXaK/cyNKzkbct5Ws5tBU1p6EzLDNDL5qqjCDJUJCk9BU=@lists.infradead.org
X-Gm-Message-State: AFuF++meWO+iTM/xVYCMqyILTFcodt9RxZM3AfmgBELJ5TOEUqEYlb3m
	36Sp1YRtILEOYfOrGOS8+2KueLikFBj/lFSlLX9eTBErENlJ9nbNBVww
X-Gm-Gg: AYBFou0E1f8j2psZDDj4DRy6/xJLdaBdplvV8enyIftCqIXbdqsE4o4gfdwKSUC+fu5
	qw3pBHRBBCgn+bCwz762bYkFx6dYe8xgzPR6OceF/2sQzk8y4Fj5l5i5QQEf5LpeOgbkc5mvBmg
	CXMJthj/CzTdjK4EJFAsQTAXuXFvHRgco5pdfBoW01dbzXHvhKAGkb7CJJRdImg33yqLepjGQgM
	sk33XMMetmCll9ugrDMk2PEyIfZQ3HihS6ut5zeqe0LgbDNP4DmMkNBqD1dRPbruWmwPNynOZ8l
	Dn1nAJVmP1fmHhuKMczL7jWip6M70/yT90m+RfqJrDcKvvfNoehNQurplECzjwMdvNxBqrWeKWr
	wXsBWnu/oOMQFzV62BMyN0rQs9Q0NqCPac+Hv3y25BCmmiLiwaGaSyradEovyv4WI+jOb5e2Mxl
	kzvSLtDachv+eLhHgM6bauWhKlaT6jDNz/s+unQc99NCUKZv61dikxXX+xmDgurOMuuwbJjCY=
X-Received: by 2002:a17:90b:4c02:b0:39d:f5b1:e365 with SMTP id 98e67ed59e1d1-3a073112c1cmr146819a91.25.1790057481645;
        Mon, 21 Sep 2026 23:11:21 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a06e5a14a8sm1659901a91.11.2026.09.21.23.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 23:11:20 -0700 (PDT)
Date: Tue, 22 Sep 2026 14:10:28 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Damien Le Moal <dlemoal@kernel.org>, 
	Inochi Amaoto <inochiama@gmail.com>, Hans de Goede <hansg@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Minas Harutyunyan <hminas@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [RFC PATCH 2/5] ata: libahci_platform: Adapt the return value
 changed for disabled blob
Message-ID: <arIbwfsrA3PlSWNW@inochi.infowork>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-3-inochiama@gmail.com>
 <f0db06a2-08e4-4013-96cb-c6754f673126@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0db06a2-08e4-4013-96cb-c6754f673126@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_231122_538245_F1AC5C19 
X-CRM114-Status: GOOD (  18.69  )
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

On Tue, Sep 22, 2026 at 12:23:54PM +0900, Damien Le Moal wrote:
> On 9/22/26 11:47, Inochi Amaoto wrote:
> > Check EOPNOTSUPP for disabled helper function as the change in phy core.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  drivers/ata/libahci_platform.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
> > index 6e072d681341..3e8ddbeb49b3 100644
> > --- a/drivers/ata/libahci_platform.c
> > +++ b/drivers/ata/libahci_platform.c
> > @@ -371,11 +371,11 @@ static int ahci_platform_get_phy(struct ahci_host_priv *hpriv, u32 port,
> >  
> >  	rc = PTR_ERR(hpriv->phys[port]);
> >  	switch (rc) {
> > -	case -ENOSYS:
> > +	case -EOPNOTSUPP:
> >  		/* No PHY support. Check if PHY is required. */
> >  		if (of_property_present(node, "phys")) {
> >  			dev_err(dev,
> > -				"couldn't get PHY in node %pOFn: ENOSYS\n",
> > +				"couldn't get PHY in node %pOFn: EOPNOTSUPP\n",
> 
> I do not see the point in printing an error code name. Instead, let's make the
> error message more sensible. Something like:
> 
> 	dev_err(dev, "Node %pOFn: PHY not supported\n", node);
> 
> Or
> 
> 	dev_err(dev, "PHY not supported on node %pOFn\n", node);
> 

Thanks, I will take this.

Regards,
Inochi

> >  				node);
> >  			break;
> >  		}
> 
> 
> -- 
> Damien Le Moal
> Western Digital Research

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
