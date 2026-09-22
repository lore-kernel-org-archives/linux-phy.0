Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14865C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 06:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGChUizuAaIaGKWR15JrIerOPsFdc9ra47vrLB5j4Hw=; b=vDopp6mxA/eWjV
	8T9nCcsgd8JFTuMcSdJuT86saMZO+xvMn8Z4+82wItvnteChpvmLRSS4EpgJk19ugtznmkK2T8jUJ
	l+30flyCtfAdB9+b6Ophbkbk0TIDZhfeR048v3UjU6cCp378/UGRuYUkwdivCRBmHtybRbanUaaCh
	C7LnHjfz+Qfpp7WoreS6MfHBxeuYNlr5MfANFj0FVS8Yj2iicEAMIBF6TOdn4zvorrK/N8p5/jILv
	NAMtHrUrCp+DzdEqOSJjZf2iLA62vZgdznKbfJsKQg2Ymfh4NqjMYUNgBiVMn+7HUpnEVBlRM2V0q
	5sf+stuLjy3yJ3SiNjqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tiV-00000004JRD-2YSn;
	Tue, 22 Sep 2026 06:10:59 +0000
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tiR-00000004JQn-2KR4
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 06:10:56 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc4bdf8abaaso3060251a12.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 23:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790057455; x=1790662255; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=918Ed3YoBXTCboO/8XC40Sz5nROxBXuKCN2wfNcGPBs=;
        b=jMS1ZwG2I4/mmEZobUTTX6D6GA9y+ksy75FOrPmcxNZEGSuv2ybW+djdyBItGPU+Rq
         chLCzZ6W3StP2SH3HK23wSMSVhaNifQuU6yBElRbvYRaxwvAgpTSzHCyaQ5bKrQQKEle
         IHyzRuXCRUF10RZZafQY7EyArrzQ/GjkVSWvz2xdOFl8sVP4j6F7ryQj0gafrI6w7JMI
         FCTLJCVtF1FX1394wix/8ovah93eH2/xGrAsdZ8qf4tC8iLQdhkmhZzIcxm6PGbYM8u8
         VUZGyCJFZRt6pcmiHzjO/xWaAEnVhwiO+fePkHJo/qP5OmnotU2/nznOACzWIZIrukEb
         yhaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790057455; x=1790662255;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=918Ed3YoBXTCboO/8XC40Sz5nROxBXuKCN2wfNcGPBs=;
        b=lUZprWCCcw4/3ON0CAOEcVHeglnAe9i1pMCp17LFHXSV9/OX7oAYSrpWj9hAJR55Bc
         cpwTdGMpV3b1hS/qX3kzqb4lsmMiskrQ96UFCdjAdy71Zhn2un4iqOO6vtx8R3iP4pmm
         qCFs8gOT44pfXFdrtLfX0Fo+YmotHFh7hRLHdOwIL02IVVCTtrj9nMYXTc7Ezc8AParp
         wDZeSf0B+IEs422AfBKu/lCgLbK44lyeUcgldHItgh0lm4mGkHC/NphdKaavEK6nLVJG
         ma90c/4urKR6wleoH+E6yscJ3ElEHqw/jFM4E0ugnRzlkS5/IrwDS/2MRHeYLMNbob0j
         rNFg==
X-Forwarded-Encrypted: i=1; AKwUvBzGxsIcEzuFxEsNJ17KtdgQCUM5zqTHqCw2ShFBSfZOCzMj82HpzaCDj06a8J/DNwdjZ5Avo4B4tLI=@lists.infradead.org
X-Gm-Message-State: AFuF++nBcmpFM+aerFUJGFVgRRg0iqm6IruP9egZeW7CZGlXnOo6RnZe
	7b3KEd0r0R4PhBWMHLDaysUThIuOS9vbSItyV9JQ5fDeoWam1xHCR/p7
X-Gm-Gg: AYBFou1jFP6Z0e0IAvCLv0Q9IrNwNThynWDrNdcKo11sjP2Os2BGw97EXJKXgDsUYEi
	QRLBVdQLscDmpfdiY1qyfsnRteqW1WjjBdPjni1moqo5sFokOegyR/dvVvJHvd+QsGmPGrl5VOW
	Oi14IpcJrapA/nzlSaScIf7CZwlU92D5Dqsnz+FNRiF9luZ0ryxOGiKrD51PRagi7NLxoTHoEFc
	smhcbtOurglrGMaNYedluooo3lesPawN6UrC9xSQQcHp2kDzg/M8slkUpKFcvCmztcFQdlPw9iv
	6hcx42jQlePzb+hPhowU7Sj6aB6cn9mrmcNyByVfTeEotgqJ074TN2lu8Q44LdiUUVNHWFj/Irq
	Au86YzTDwV0u2ZYXjIokDhlSB3wU/StfDDrngL6vXi/DsCGE1FHPdmyrg+iQk93suXXpVwYo35e
	9brbcBm6YxjplUkIiy7CCJXQI4MmlqtiNVwcjhGtcmy5d8vR3+shRkjfHNo/3ZnHGtgW1At4M=
X-Received: by 2002:a17:90b:5105:b0:39d:f731:e5f3 with SMTP id 98e67ed59e1d1-3a073116712mr140073a91.24.1790057454636;
        Mon, 21 Sep 2026 23:10:54 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a06e5a5eb4sm1489775a91.14.2026.09.21.23.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 23:10:54 -0700 (PDT)
Date: Tue, 22 Sep 2026 14:10:01 +0800
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
Message-ID: <arIZX-0aMQiabxJd@inochi.infowork>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-2-inochiama@gmail.com>
 <2026092256-shading-gratify-835a@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2026092256-shading-gratify-835a@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_231055_596717_AEC70B61 
X-CRM114-Status: GOOD (  19.58  )
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

On Tue, Sep 22, 2026 at 07:35:19AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Sep 22, 2026 at 10:47:16AM +0800, Inochi Amaoto wrote:
> > Currently, the phy subsystem uses ENOSYS for dummy blob functions,
> > it does not reflect the function state correctly. As kernel already
> > has EOPNOTSUPP for disabled blob function, replace ENOSYS with
> > EOPNOTSUPP for a clear return value.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  include/linux/phy/phy.h | 52 ++++++++++++++++++++---------------------
> >  1 file changed, 26 insertions(+), 26 deletions(-)
> 
> Based on the other patches in this series, this patch now breaks the
> users, right?  Shouldn't this all happen at once?
> 
> thanks,
> 
> greg k-h

It will break, and the change should happen at one. But I think
the affect should be limited as it only affect a special edge
case: build kernel with CONFIG_GENERIC_PHY disabled. So the
break should be limited.

IIRC I was told to seperate the patch into small part so each
maintainer can take its own. Is it fine to squash these patches
into one in this a case?

Regards,
Inochi




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
