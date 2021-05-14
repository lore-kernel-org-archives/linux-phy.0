Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23721C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:47:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D800B61458
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:47:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D800B61458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DLaWNUINm6JjBmrk1if7yJbudtMJQfouIPKZB0X5moQ=; b=kOlobVRard10QA+NpEtXuLU+D
	sw3tL36/WRc/GD6wPLukEsLO/pJKK9k7CxzXE9n18Bwaie0rnwUnV2ut3GTdoAINKscb6P7Jn3lSb
	4IEmjdmm3yI0PHWEpPX89INr7SmqiYTnVYrvq1Sp0slbrS+U+WkLRXRzUq4w/EfIKQ75gVrY7qUtC
	t0E/H4ddP+L5vbLWJ1BvEDXf9yOOsYYZ+kaXKtlrYSpH60pfHZfa0weaf16NeXgXy0qxlKjd0O3Zp
	hsmsl5RFuZqY2GHt7zDIEbY1Rweg2RjCP8W1KpturJa49RNVLyj/HXuz4X/TwSWjrGtWTqCOSjbGf
	LLjRnLBYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhVLT-007oeI-BN; Fri, 14 May 2021 10:47:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVLR-007oe2-9x
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 10:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gLmAJDsVUW1370YpiYBGQQi+gX0EMfu7QDpxwK7Dzds=; b=KSbdOR3meZ+fbGzdtZMlZG8ZNK
 N2rammmChgcZ29AYuChthuDANueubFmxlrUCroGue6X9j5CXFObE2ZxoUf+3oA+Omo+9BPEMcLASl
 23+6pWpegd5DyBZ72qIVpHo1uWDSzhUjtTvuTRfHDS3/II1G8Xj6Qe2eL7t8Ku4sl0xsVNJNDF14A
 oN2bxMi0bNP7Ama274R/kcDVWPrlgb7llxWA7TinTs9n328a4t/DdXUP7RByDM9w0CqxCYddiZweX
 euUnQ6jChJMr1itHv+D4Z6GFmlNsHLY1JxukI2cGIzDAYirnOg2ORwa6SzqXToSw7nxixWCDHQaIP
 xYNBxz0w==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVLO-00BuYo-SO
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 10:47:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8ED3C61408;
 Fri, 14 May 2021 10:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620989218;
 bh=Ux8YzJnBSwRgnaSNa08UTSzDAiWaxXMm8YbEFnJGvEU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mQH0FQQhZUw30gwfPpibEfzK/SMLWnRm6Flgv3/OZA7an8lWB7gZHJbJJ3xXRCAm/
 GB6nVvynaCNdTjD8ShC6gLgcn2W0S9sbDxo801wx4ehNIvQf+R0fXiCvlLcNnz1vRy
 +wQT3Ity+uF0gzLNfM+9dSh/CMuiE/vM5Xx575u1VYF3dlVNx+0lEpKhrSrfBgbaNu
 IqTyJED6fXmsxBu+7iRPZOCp6BRVCOUplU6B1WuS/jkEXPvWjcLCKgMpMWtjiG7E8p
 d22y/N92eko3eLUK23CXafxVGwwuWoELBnLd50ix1+oP3QLB49pYzgkgiQn2rxIS2c
 1EZc0rK/PFs/g==
Date: Fri, 14 May 2021 16:16:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: kishon@ti.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
 neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some
 improvements
Message-ID: <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_034658_956582_3CEC3F68 
X-CRM114-Status: GOOD (  12.87  )
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

On 08-05-21, 09:09, Sergio Paracuellos wrote:
> Hi all,
> 
> This series contains some improvements in the pci phy driver
> for MT7621 SoCs.
> 
> MT7621 SoC clock driver has already mainlined in
> 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> 
> Because of this we can update schema documentation and device tree
> to add related clock entries and avoid custom architecture code
> in favour of using the clock kernel framework to retrieve clock
> frequency needed to properly configure the PCIe related Phys.
> 
> After this changes there is no problem to properly enable this
> driver for COMPILE_TEST.
> 
> Configuration has also modified from 'tristate' to 'bool' depending
> on PCI_MT7621 which seems to have more sense.

Applied 2-6, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
