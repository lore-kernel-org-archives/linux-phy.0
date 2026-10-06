Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE9ACA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 21:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRcgQvKJw1SKorYPFGntit7LiVfuHFCIW1MD2RqSui0=; b=n7KHhAT0htA4me
	MJUPtEbj+INyLENtR6qrqDb6EOCs7yKjNWKm169xXlQbf7piwOd+lX/9OaX0y+KBbU6mNqYhw/ww8
	ZnF0aVBuiM86N3brRYv2Va1ZR36DsXhnXyCyFETNBAQ6b5zBK39JV+At7dLKFH89rBPJe7bAAPLSZ
	ulyrAFgNToW6sFqrvJVcCkiS357urLscKCBlLd6a3l0EG45XPRw7O3UJmFiIQGV8rV29iub7Wz/eB
	pdf67ivmGU29qAv20MYi7cL6Aoc224C6FBiM117yfPGqAmvDtF4NuVoW6/EXYkdUqBcof40vF+9pe
	Kx5EMBQ3mR6LoLoZcmBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xECVu-00000001Ohe-2NgX;
	Tue, 06 Oct 2026 21:15:54 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xECVs-00000001OhG-28BU
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 21:15:54 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49fbc3db5fbso1849295e9.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 14:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791321350; x=1791926150; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=09pu2jwScTlH0IXCcu3YnB3jHWMTRjZZnpTwRHLnhOU=;
        b=C84q0kIGtTsia6edUnEchQSlL8Dsb0DCmtGcHjvAMmSItC67OHbJZEOeDCVYQ4X552
         FCPc9kF7+jHSSSnRR+qVdZ8QT4y+DKjWyV4Z0oTxQ8ZfIjsC3SsUnC1NcMtNP0tvacB0
         dz+xNVyrxxdenuLTe9o0WfZCrTndPUyozip+KWlgcy/VRI1PZCwwKFReYuiPT8sW9WFE
         FgMlnrrSmauYWACRKmYAqYe1h+zFjZ4Zrah7kHH+GGtc8fJUClUApI3wPhnP4GZjCPMG
         4OaPPKotb3K5h8t/tzzCsd3zoYJHJxqHEMOstF7UmD6CgNYRFFDOT5hjmo5Jnypl0Imr
         6ILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791321350; x=1791926150;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=09pu2jwScTlH0IXCcu3YnB3jHWMTRjZZnpTwRHLnhOU=;
        b=A2OqlMrFa4njzpq322RFxu0jt3Zn6L3OlPvJLQq3H+zZpmkF5Nepf6p38e9TXbE0Ws
         EHhfbZ6aRvfJOF5+K+3HmJ9Lr/CjnmqxoqcC7Ixj9wqw/2eaZz4PMVck9EivIWVq77DY
         RUs+11ERrBjTJ+Vu1zN9Zv3rB2Z0pRSJoez+cYJrugqkwdbHtfbI4bUi7lU9yXHy8D0a
         kHJEX3bPN078aeNf/yiZ/Ts2pM4OOpmXlIjI5m3ZqiMhagpJCHiq87DF1SxacNSb+83K
         gmglaewN943v3sywpyw3h4T6Owx2S8XdQruI1yT3it22WL1RmCUJg9tEEtaDZ/Rywtza
         0gmA==
X-Forwarded-Encrypted: i=1; AKwUvBwE9fi+Qm7q+rcYNkSY684PXBhooEDZ4a4gP+zMYWQX8FdCebrzWfg+BXNaOwIoxNyrcCjqq7gAJRs=@lists.infradead.org
X-Gm-Message-State: AFuF++k0Zipn21h3zCDbJeGTSa/3mg7FaWh81/Uu2rMF4YZEoO7ormbj
	JFNDCNUxsGOuDELGoAxOidbf1zF1Pd4TDmJdRbAkzRalHwLWQaR7QGgC
X-Gm-Gg: AYBFou2TBDneJe1IwqnfoEaDUiUbIMqCwCCuPZeUo+o/rVVOVC3SCs3Goe71buJO2Zd
	EyjvHcqg6eumV/1k3/UXURwnP2Jzf/KQ7jVb7FO2mXnLamWE5rLDWtc0fz55sgS7fTKxOtMZz3A
	TZm/pKaENSlcS663YklPEoPZjTabsLJ+7LPxpX6riUtmm87XVbmiEo3nP0gybWa1RjpZ4c1737O
	O4y0+Vn0gw1ajyA9BVmbMCgAibAlM9FjG7HuMYIfNDO4O9tmHARRsdMgSvh2besFUtSO3unWWNA
	22UN5EzQRGjQJuCNKTAEsV/5y1zTdoJVAeQxQI3n5hdSMpFMb3bvt4DTYiUMcvdyKqj3xV7Hr9L
	uLmX6Rh4s9OtzHvxeoJbxczqPTO+3kmiMKrtDeqWqdxeKaXFT0ub8FMSJem4w/Wlk0SoFz/UCbz
	ADbNYFCDEpdVAr2IDgb91BP4butF5RJ575jdiXIDW8oQTya9EDH/9OYhSJ6KeLVCw=
X-Received: by 2002:a05:600c:3c89:b0:49f:c432:885 with SMTP id 5b1f17b1804b1-4a18041afbbmr1800205e9.2.1791321350648;
        Tue, 06 Oct 2026 14:15:50 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:92f9:f192:2805:c29a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c71d2e2dcsm1837566f8f.42.2026.10.06.14.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 14:15:49 -0700 (PDT)
Date: Wed, 7 Oct 2026 00:15:47 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <20261006211547.lfrhgdkixbbbyiju@skbuf>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
 <asN4I1cpVb5HLNu7@parshuram>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asN4I1cpVb5HLNu7@parshuram>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_141552_909281_4F120551 
X-CRM114-Status: GOOD (  17.71  )
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

On Mon, Oct 05, 2026 at 12:12:51PM +0200, Vinod Koul wrote:
> On 29-09-26, 16:52, Inochi Amaoto wrote:
> > Add several helper functions that allow drivers to get several phy
> > consumers in one operation. If any of the phy cannot be acquired then
> > any phys that were got will be put before returning to the caller.
> 
> Do we have many such examples? Phy is not a many resource like
> clock/regulators... Do we really need this. How many in kernel users
> will benefit from this API?

I have another case for more than 1 PHY. On some NXP boards, retimers
like phy-ds125df111.c are used for networking, but not in the way you'd
expect, i.e. not like this:

 SerDes      SerDes
 Lane A      Lane B
 RX   TX     RX   TX
  ^   |       ^   |
  |   |       |   |
  |   v       |   v
Retimer C   Retimer D
ch0  ch1    ch0  ch1
  ^   |       ^   |
  |   |       |   |
  |   |       |   |
  |   |       |   |
  |   v       |   v

but like this:

SerDes  SerDes       SerDes  SerDes
Lane A  Lane B       Lane A  Lane B
RX      RX           TX      TX
 ^      ^             |      |
 |      |             |      |
 |      |             v      v
Retimer C            Retimer D
ch0  ch1             ch0  ch1
 ^      ^             |      |
 |      |             |      |
 |      |             |      |
 |      |             |      |
 |      |             v      v

Since the retimer channels are bidirectional and not hardcoded for RX/TX
function (unlike the SerDes differential pairs), this is not a problem.

Since one SerDes lane is one struct phy, its RX side and its TX side
need to configure the channels of physically different retimer devices.

The retimer driver was modeled to permit this configuration, and it
exposes each channel as a separate struct phy. The implication is that
any consumer of this retimer needs two 'phys' phandles to have both RX
and TX retimed.


Actually I'm interested in this series too, specifically due to retimers/
repeaters. I believe they should gain core PHY support, because the
current support is very sporadic and not homogenous.

Today all SerDes PHYs capable of supporting repeaters/retimers need to
manually acquire their phy->repeater using phy_get(), and forward all
ops from their consumer to the repeater as well. But this creates the
odd situation where maybe the SerDes PHY doesn't need to do anything on,
say, phy_init(), yet it needs to implement it anyway, just to call
phy_init(phy->repeater). The existence of downstream repeaters can be
made very transparent to the top-level struct phy (the one that the
consumer interacts with).

And because in general, there could be >1 repeater in the signal path,
I was thinking the bulk API could be a good candidate for managing the
list of repeaters of a PHY.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
