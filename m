Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9934C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 04:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvHgBfL/KCIwQWJgKCp1Tvi9kedxXPPZ5ALMJePZBzw=; b=vWlyhHJjmBO0eY
	vuV6vYulICWmSDbxsazsAZdq3iuvtX2SASDGiUPycxt9x/CGnw6n1Cbe9SE5L2mlYvqt+AQ7mQsum
	dWwIuOZ6nQpMfp2fk+0Iz5Imxg/79bNcmW9TnFyuH6i6Dyx+vc1MRpq/6xiSHJT69SDHaz4sap6s1
	a+BHYbsXECBytzQ60MCKzy+OeZSvt2d+eMfZKa550PuTv7RtJpMD8teFgNuE3Tb5r6MgLa9O89Vb7
	5gdBOgY6gjWqnqPdor6kWqqx2GZLBZTlgArFOs+prSH8qvZ9BEFNIt3F9msu5YNcXCZZpoNFRjhAJ
	s9qgiFZYD89NtjYXXF+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdSg-00As8B-43; Thu, 02 Dec 2021 04:12:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdSc-00As7I-1V
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 04:12:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 8BE69CE215F;
 Thu,  2 Dec 2021 04:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1738C00446;
 Thu,  2 Dec 2021 04:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638418357;
 bh=WrbRr7hfiIN1K0T0/WmtBkJD3RopCcS33dkDOpBXrUE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SDyM5T68r09ajTEZKtBfOjBS9r9CD+0mzhRhM9YY32oUy3jqqF6MPgMfL/7sdBSq8
 vwjmSAn1GD30YGO6FNm+LcZj3G+pu73kLJB/uyJBXLNqHIYyMOttxFxMTaltZIrn6s
 PNsHj+yZ2/bQTG3GS6/UkBy89TeiR+GJzCbKiR0KU+JMhaO6Rd6QyZEcqnQB76ILav
 DTnle9VaWpmmQa8qwCQDYxhSnDJ3P4l7EBpHRvlq6GDU4UUSz5QTojkkSVIb/3n/gd
 tcwTTU5VPetky1VhyyntMZg/fnUHWjAI7EXTBantsa1jljLzKa2qq1nJePwcoa71LZ
 0euLpIRXsr4CA==
Date: Thu, 2 Dec 2021 09:42:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy fixes for v5.16
Message-ID: <YahHsaJVCkxAm+hI@matsya>
References: <YaB7jK+ADoUQHWjh@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaB7jK+ADoUQHWjh@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_201242_487224_EEFA077F 
X-CRM114-Status: GOOD (  18.99  )
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

Hi Greg,

On 26-11-21, 11:45, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to recieve bunch of fixes for generic phy subsystem. These
> contain mostly kernel-doc warning fixes along with couple of driver
> fixes.
> 
> The following changes since commit fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf:
> 
>   Linux 5.16-rc1 (2021-11-14 13:56:52 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-5.16

Did you miss this one or something else...

> 
> for you to fetch changes up to f0ae8685b2858fc1dabf5ea743642abb5f242375:
> 
>   phy: HiSilicon: Fix copy and paste bug in error handling (2021-11-23 10:42:13 +0530)
> 
> ----------------------------------------------------------------
> phy: fixes for 5.16
> 
> Fixes for:
>  - kernel-doc warnings for various drivers
>  - error handling fix for HiSilicon driver
>  - name fix for zynqmp phy
>  - property name fix in stm32 phy
> 
> ----------------------------------------------------------------
> Amelie Delaunay (1):
>       phy: stm32: fix st,slow-hs-slew-rate with st,decrease-hs-slew-rate
> 
> Dan Carpenter (1):
>       phy: HiSilicon: Fix copy and paste bug in error handling
> 
> Liam Beguin (1):
>       dt-bindings: phy: zynqmp-psgtr: fix USB phy name
> 
> Randy Dunlap (1):
>       phy: ti: report 2 non-kernel-doc comments
> 
> Vinod Koul (6):
>       phy: mvebu-cp110-utmi: Fix kernel-doc warns
>       phy: qualcomm: qmp: Add missing struct documentation
>       phy: qualcomm: usb-hsic: Fix the kernel-doc warn
>       phy: ti: tusb1210: Fix the kernel-doc warn
>       phy: qualcomm: ipq806x-usb: Fix kernel-doc style
>       phy: ti: omap-usb2: Fix the kernel-doc style
> 
>  .../devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml |  2 +-
>  drivers/phy/hisilicon/phy-hi3670-pcie.c            |  4 ++--
>  drivers/phy/marvell/phy-mvebu-cp110-utmi.c         |  4 ++--
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c        | 26 ++++++++++++----------
>  drivers/phy/qualcomm/phy-qcom-qmp.c                |  3 +++
>  drivers/phy/qualcomm/phy-qcom-usb-hsic.c           |  2 +-
>  drivers/phy/st/phy-stm32-usbphyc.c                 |  2 +-
>  drivers/phy/ti/phy-am654-serdes.c                  |  2 +-
>  drivers/phy/ti/phy-j721e-wiz.c                     |  2 +-
>  drivers/phy/ti/phy-omap-usb2.c                     |  6 ++---
>  drivers/phy/ti/phy-tusb1210.c                      |  2 +-
>  11 files changed, 30 insertions(+), 25 deletions(-)
> 
> Thanks
> -- 
> ~Vinod



> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
