Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1795CCD4F26
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 08:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3n+vf3E8pLl2KLpWk5kiaqQoIuKmmHvDYbGjlS9Xr0=; b=tUnaQqYujAP94d
	RazzwbQkHGyAYaU+kqdCiFNvSoYPFsO80wUMdqMo/U3gxRnFp+ys+ISDm5XrzE5Id5DDDswQXISjn
	5vWlXCjpf2F8W6bPITbFj9Mabe/QExWWL/5ILRnZuDhAWlNFamf4HdeVaiQKaOs0Lya/e8dvbHlYg
	0l4Nljj3XduviBxXqP5a2b3bSCcg11sNpCvXpSu9i5bfB8LPuDR6Uc3q4lRCOxVfJYUZ1tCof6Tro
	HKEGruR/lDPU9mitk4QTEXh4gnR06XqafP0dK5xFWUkh4GDjStqP3GeH+qZINRQTsxM4SbNJuW81t
	9pR4lgz3BeR/dWCbOrYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMiET-0000000G2kI-2EMr;
	Tue, 12 May 2026 08:12:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMiER-0000000G2jf-1zBV
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 08:12:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A440440708;
	Tue, 12 May 2026 08:12:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A291C2BCB0;
	Tue, 12 May 2026 08:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778573566;
	bh=iKoZSxz8wlSZlrKHB8el8X5w1WWSeeWHYoI1BzyYxx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eeMjzPH6Y/sUarT1XK6P0RpXt2R5PQui6P34ZNR8P61RgTyLW+wx+fF0hLkYfHGek
	 0i7+BKOZLYbYnc2Ia1YBYQgZ9oyxi5zfhhtybCJN6qK2egaD0RQ/WE7mnKj6g3y7xq
	 K/nNZjnHnsvLgH4uktUqbKKXHDpExs0QgdynJ7SnZJDH5eEbMJ3XNJv4UjbRq8szNt
	 joos0Nz/JUfqsu0Gefb2y26gQa2500/LCDc2r7MFKERI8aV81gRF34tJEcsXtb6NlN
	 iZf3gDCIOslXPYGu61cO+yjgfLLiFwya56pmodtdFhtMvlx9jUlZM/51eclhgFrVV5
	 tg9/16MhBQTSA==
Date: Tue, 12 May 2026 13:42:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-phy@lists.infradead.org, naseefkm@gmail.com,
	neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: econet: Add PCIe PHY driver for EcoNet
 EN751221 and EN7528 SoCs.
Message-ID: <agLg-thli6UXftpn@vaman>
References: <20260404184918.2184070-1-cjd@cjdns.fr>
 <20260404184918.2184070-3-cjd@cjdns.fr>
 <agBpBxofP00bAt7V@vaman>
 <23a04af8-beec-417d-8d3f-9d587bffe953@cjdns.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23a04af8-beec-417d-8d3f-9d587bffe953@cjdns.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_011247_528880_78CC6C50 
X-CRM114-Status: GOOD (  11.19  )
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

On 10-05-26, 13:25, Caleb James DeLisle wrote:
> 
> On 10/05/2026 13:16, Vinod Koul wrote:
> > On 04-04-26, 18:49, Caleb James DeLisle wrote:

> > > +		val = field_prep(data[i].mask, data[i].val);
> > Please see:
> > 
> > https://sashiko.dev/#/patchset/20260425173642.406089-1-cjd%40cjdns.fr
> 
> 
> I think this is an error in that the AI is not correctly differentiating
> between field_prep() which accepts a non-constant mask, and FIELD_PREP()
> which does not. In any case I can confirm that it does compile and work
> correctly on the device.

Right AI might be confusing FIELD_PREP with field_prep()! I will review
the series now

> 
> On another note, I think you may be the creator of Sashiko, if so, thank you
> for your work - it helped me with another patch already.

Oh no, I cant claim credit. It is not me

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
