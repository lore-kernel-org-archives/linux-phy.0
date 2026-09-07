Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 316B8C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flqQscJ0Y4G/qCbRWt1+oJCpvjY4hpTp12AqCA96wIU=; b=cTu6FKXdZEUHML
	BBZ3k7prVF1hpgh6xqhpZzI8DpvgH0ogYFJ2hxHDwOkortvl9E33yPR5hHi/aWd3pCXy4iS6wVVn9
	YwIi099liqvrXy1yBBHv74z4GYMwNiXwgU3nro/fn3MeDlT54fPCTzrigjcJY1OQQqadD4iDekMo3
	fPuLjX8S24VrnTabKNu1wZlibhBsGo6kN2DoBJbpmn9UE2SHtxGT9ZPT4QEEJNjfTI5auNzM0stLJ
	jb4no7DvJq6s2O1jbGJUZ7UtUHs8APzhEl6S3Ah57Tc2KuLYoQxJcvx18IbJ+BvHxyK32wjelYAS+
	Fy4NZj2K4hqJUHCnVEXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Yh3-00000006pzg-3L8E;
	Mon, 07 Sep 2026 12:43:25 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Yh1-00000006pzI-2bMS
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:43:24 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4838dbf1bbeso257077f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 05:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788785002; x=1789389802; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IABNEZ66YDQycQF2YzhlynFWVYVh8lX87+mEaozzsWQ=;
        b=jW5e4xvX7yDzZDTcQpVXsoMOzds4UnNewXgtChWCGs4aygMgAms4x+y9MW4HWMsobU
         N3Rpm2T/3iuiI7YBFdFkoS213j8ixwaXEiQFKPZSBOU/3LH450UqSgdAOqHsCce1nI21
         oTifkO2MJ+PbR63H298YKDzdfxbsRSHptgPd4+xAbdYcjKeYjhgD/xthqLVGrZXNnV5E
         FlLxI726aBb9BtR9Bs0SqHm7WP8UirKUl8SksqCyIox5xGwv9yPWLiKO0YbGK2H+jsyG
         xR9TOTlUVPCaO5ikdyfb3zDkxoIQu8OW1XzW+yhCcGPx0FuEn+a+VWGuReJRMEvtQm5A
         5ooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788785002; x=1789389802;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IABNEZ66YDQycQF2YzhlynFWVYVh8lX87+mEaozzsWQ=;
        b=JY8LHpL/otjSm6ZRXgn0+YPw3YKkOEboQmgV0OjRRp2VjgkhoXuDQhEJKr2R1K32c+
         zQaXM605cB6+78vD9O5ptDwfvEaqk+R1EuXhUdpt7QKUiUo/9tsEGWEAS6MNnak5m2to
         NiPbDzcUGoBo9pQk4Mq+krA2D1rpi87tQAb+Znq7nPnr94e/IOZaSyt2rMKkrYyWkXod
         PoPY3hPJld5iaKI3MAlIDCKGBKLgxWQlj6Ka+PBTgAoXv5DxTKKv+nj8ZQZdj95QIGjE
         p/l2hfGjQcWrs3dxicJlhUh6UAYSeAWqQGO3QCuwnEt/0tK5m/1QtP1txKV1ewTn8Rds
         VCWQ==
X-Forwarded-Encrypted: i=1; AKwUvBxeB55lbfpuAZjo4/JbumvUIMI9N+pDWiha1mLpDZAZ6ZqTWoaEx1uQJi+bDhbgnGLYJ9ToDTr+Cuc=@lists.infradead.org
X-Gm-Message-State: AFuF++mkv/BomOdGmpoL4EtdxlANpu/Su2i5ezI9Ad/Vow1IfUkaPFTS
	XbtGMIlqmfWwxyadX+UC6FmeZ8o4bBAIZXH89nrKTz8U5gnRs4egjNpJbxCi2A==
X-Gm-Gg: AYBFou1TAYi8UA66A2HbWT6v2iIX4Nimqp3w6kJpynG4xJtHy8EH61ydGskyizHMjeA
	cmmCqRphf2fDYf9LHtvI70tVlE09UP26olLagFC/aT1VzHBjuGO3DU8U5aAdqK0GYB561KO5QCW
	5PGoXLw252lC2cqsYSlYdgW4g9rnxUTzS8bv8mWBk27e72THlsd9IjI1nWC8Sxym7nT95wajv/4
	WNtoXgxR8yY+HlPjyE+Nt5TW2eZGFXJ/S4dBJjnQFuMBzzPhLBH+O9D0na7XaxrywxMqzvxlmSV
	UUwbFLRDDBNzO+G04xek02Bi53TuLaLztpHLS7ol1ghwqunCX7k/Zpw51sUmyF1wA4OgnKzLYGM
	jzMiKtndRGR6ijKTjLdbjwXKtM/uDu/bHhMroT+RxAAkZKDMCOyI+435GE/fewPFwztsy0W8LZn
	TaHrEQbNBIvONF64aM5Zxao0gVrcr0wtNeRweCvaIIPOo593VANQ==
X-Received: by 2002:a5d:5e0a:0:b0:484:3310:f393 with SMTP id ffacd0b85a97d-485908001bdmr14755495f8f.5.1788785001630;
        Mon, 07 Sep 2026 05:43:21 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858e239862sm23348581f8f.9.2026.09.07.05.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 05:43:20 -0700 (PDT)
Date: Mon, 7 Sep 2026 15:43:18 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Message-ID: <20260907124318.6q4rr2huxyehm3zs@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
 <20260907114837.2y55l7dfqqrgcka2@skbuf>
 <ap6or7kpWUj1wBI4@inochi.infowork>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ap6or7kpWUj1wBI4@inochi.infowork>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_054323_686703_F700F540 
X-CRM114-Status: GOOD (  31.94  )
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

On Mon, Sep 07, 2026 at 08:15:04PM +0800, Inochi Amaoto wrote:
> On Mon, Sep 07, 2026 at 02:48:37PM +0300, Vladimir Oltean wrote:
> > On Fri, Sep 04, 2026 at 04:37:07PM +0800, Inochi Amaoto wrote:
> > > +static inline int phy_bulk_get_all(struct device *dev,
> > > +				   struct phy_bulk_data **phys)
> > > +{
> > > +	if (phys)
> > > +		*phys = NULL;
> > > +
> > > +	return -EOPNOTSUPP;
> > > +}
> > > +
> > > +static inline int of_phy_bulk_get_all(struct device_node *np,
> > > +				      struct phy_bulk_data **phys)
> > > +{
> > > +	if (phys)
> > > +		*phys = NULL;
> > > +
> > > +	return -EOPNOTSUPP;
> > > +}
> > 
> > Why do the stub definitions of *_get_all() return an error?
> > I would expect these to have optional semantics, i.e. 0 PHYs are not an
> > error to the consumer.
> > 
> > For reference, I am comparing with clk_bulk_get_all() which returns 0.
> 
> This is the thing I am not very clear to. I found the clk_bulk_get_all()
> return 0. But something in the reset return -EOPNOTSUPP for non optional
> get (I reference __reset_control_bulk_get, as reset does not have an
> API that is the same as this). I am not very sure whether it is best. 
> 
> Since you think we should follow this optional semantics, I think it is
> fine for me to change this to 0.

I am only talking about the *phy_bulk_get_all() functions, which have no
num_phys argument, and which as you said, have no reset_control equivalent.

The optional nature of *_get_all() should come specifically from the
fact that the consumer isn't specifically asking for "this many" PHYs
(num_phys). So the core can return 0 and say "that's all", and technically
not lie. Not a fatal error to the consumer; the bulk API supports other
calls with num_phys=0.

> > > +
> > > +static inline void phy_bulk_put(struct device *dev, unsigned int num_phys,
> > > +				struct phy_bulk_data *phys)
> > > +{
> > > +	if (!phys)
> > > +		return;
> > > +
> > > +	while (num_phys--)
> > > +		phys[num_phys].phy = NULL;
> > > +}
> > > +
> > > +static inline void of_phy_bulk_put(unsigned int num_phys,
> > > +				   struct phy_bulk_data *phys)
> > > +{
> > > +	if (!phys)
> > > +		return;
> > > +
> > > +	while (num_phys--)
> > > +		phys[num_phys].phy = NULL;
> > > +}
> > > +
> > > +static inline void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
> > > +				    struct phy_bulk_data *phys)
> > > +{
> > > +	phy_bulk_put(dev, num_phys, phys);
> > > +}
> > > +
> > > +static inline void of_phy_bulk_put_all(unsigned int num_phys,
> > > +				       struct phy_bulk_data *phys)
> > > +{
> > > +	of_phy_bulk_put(num_phys, phys);
> > > +}
> > > +
> > > +static inline int phy_bulk_check_disabled(unsigned int num_phys,
> > > +					  struct phy_bulk_data *phys)
> > > +{
> > > +	if (!phys)
> > > +		return 0;
> > > +
> > > +	for (unsigned int i = 0; i < num_phys; i++)
> > > +		if (phys[i].phy)
> > > +			return -EOPNOTSUPP;
> > 
> > For consistency with the individual API, I believe this should be
> > -ENOSYS (not that I know why we would be using this error code).
> > 
> 
> In fact I think -ENOSYS is more suitable, but I found almost every
> subsystem use -EOPNOTSUPP for such a blob.

Why do you consider -ENOSYS to be more suitable? In include/uapi/asm-generic/errno.h
it says "/* Invalid system call number */" which makes it pretty use
case specific.

> So I think it will be
> good to follow a generic -EOPNOTSUPP. In fact I found nothing about
> why the phy subsystem use -ENOSYS for this, maybe someone can
> answer it.

It's been that way since initial commit ff764963479a ("drivers: phy: add
generic PHY framework") with no explanation.

> 
> Instead of switching to -ENOSYS, I think it could be more proper to
> change the existing blobs to -EOPNOTSUPP?

Personally I have nothing against this, though it depends on how deeply
you want to go in.

If you want to make this change, watch out for the following callers
which explicitly check for -ENOSYS:
- drivers/ata/libahci_platform.c:374
- drivers/usb/dwc2/platform.c:246
- drivers/usb/dwc3/core.c:1591,1608
- drivers/gpu/drm/bridge/analogix/analogix_dp_core.c:1363

Only devm_phy_get() / devm_of_phy_get() return codes get parsed this way.
For the runtime consumer functions, all consumers seem -ENOSYS-unaware.

Though after seeing how some drivers treat -ENODEV (for an absent PHY)
and -ENOSYS (for the disabled Generic PHY framework) the same, I think
it might make more sense to return -ENODEV from the stubs.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
