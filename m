Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 267B7C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:22:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDB79613F5
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:22:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDB79613F5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aeJc5jr9Ybg8J1kgafBygvZssJwEsVTsR+1Crbi2La8=; b=Bp45oQ4bMM/J2Zl0/x8ZnzSA2
	8ZLcwYNRAxkij/9Y2qPJ/NDr5KEMAKjPw5QSTow6uhorXMs6GrNQh9AWJBlrOZosfF+ShP7tw1noE
	4IpTtxvUFZ3VZr3O9wLQIIJYZ0nKqQvYnfRKVJGzKahylgPaH+Qsvv5iGfxiGeWuQ8x8QOb52doZf
	9e0qq/TOtnFA4wbxAHFHVdzjUJdRSkAYT4BdN+DLQJvwuiN8BWTma8ruEdZ7V7Gj4LMxp+3v0ypHC
	yAZmv0MLzsfsBfXPP/F5CIq/RouWfADfAxwxPQgr5Q3wAmvOWbQ4EB17IeeR286R6gAIKIdUO2U4n
	PYt5LRqvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhVtw-007tOB-3g; Fri, 14 May 2021 11:22:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVts-007tNg-Pg
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 11:22:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bCI3/+pZI3/SyWXxf/8MA7XReqc+iIC9yTTtq70zx4o=; b=cFvmZ47VZ/DrWiBpocnjl5wi/P
 nKGjGwnOMfNnBRXEdK5wVvWXZOLCfkDm6IB2iylwwihGk9dkb14/Ha4irKd9HRE4BUcAJmRGvmrRS
 YK54PbPYs/f9w8c+lIUhroGT7eg8eEBCm/2MLV6UL9njFAaYfhH6gmwcT6rb/nXMQOQyIX0BPA/5z
 JhTdUXVenYbslQRuXvi5BC6BM/SXCbxso0q+Uy16LwpNRkLU4t1/Qh55+VZiLiVXXGXqS1SHtTV1/
 l7U8H12wAi3URYD9aK0UyfMDMpkU3CNzz2mI5KUzGfr+egJtsAztU9gaLkenJzLPISlKQ3QlupgIW
 wK8CYqig==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVtq-00Bw2b-48
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 11:22:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B792613DE;
 Fri, 14 May 2021 11:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1620991353;
 bh=fdI4/WvFxLdOxw3z0CJfS4djdEHMKXDEj+klVKAPPdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SfyuVtLk6E8Z65FAVs45sn4bhQlv74lXiwqfQ10FIfAcIv1uWX2qGOKNlzuX37A0V
 y8y/OzI4Z9TSvvbflhG9P0FK016w73qiejkBEIFf48S3YnGTV4owY+RRD7xrnU1cM0
 fNXXSXqd/1ZXPUFmBQ28HjUaEFSzAPRUVqOtFrAY=
Date: Fri, 14 May 2021 13:22:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-staging@lists.linux.dev, NeilBrown <neil@brown.name>,
 Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some
 improvements
Message-ID: <YJ5ddkGytGI+kAt9@kroah.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
 <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_042234_213790_45EDF983 
X-CRM114-Status: GOOD (  18.61  )
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

On Fri, May 14, 2021 at 01:19:18PM +0200, Sergio Paracuellos wrote:
> On Fri, May 14, 2021 at 12:46 PM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 08-05-21, 09:09, Sergio Paracuellos wrote:
> > > Hi all,
> > >
> > > This series contains some improvements in the pci phy driver
> > > for MT7621 SoCs.
> > >
> > > MT7621 SoC clock driver has already mainlined in
> > > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> > >
> > > Because of this we can update schema documentation and device tree
> > > to add related clock entries and avoid custom architecture code
> > > in favour of using the clock kernel framework to retrieve clock
> > > frequency needed to properly configure the PCIe related Phys.
> > >
> > > After this changes there is no problem to properly enable this
> > > driver for COMPILE_TEST.
> > >
> > > Configuration has also modified from 'tristate' to 'bool' depending
> > > on PCI_MT7621 which seems to have more sense.
> >
> > Applied 2-6, thanks
> 
> Thanks, Vinod.
> 
> Greg, can you take patch 1 through your tree?

Sure, can you resend it?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
