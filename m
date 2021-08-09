Return-Path: <SRS0=DrSA=NA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17295C4338F
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 08:41:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D634161051
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 08:41:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D634161051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFcZ+4BvmEf5cmNXIpyDxQq+SHa95sNovNUcjVwLZAA=; b=3blAj70hw+Vs8+
	SbiAk2FJJHkk1VSPIe5shGgrs4YhFzLKhcGOouCiROyZJvBBRlV44PwKp+yUk5WzOl8SmweKqyXov
	5S+MDWkZJhAEJfsbpAWQUmOcs2FPkN1w04XN84kxDyI95WfH0ZMytf296PwGWNiXb9aPdoD83HMlz
	o520gFeaxU8loGm0msOieJ3+nOtMzW9YSi3d0lZL87GQZAHjZQuxSHtQnUGVm4AF+SjcVe9yR+fu+
	6O6sHQJBN2/ErfBqEdeRoevjvwcSVTkmQlmktEXpTj/F0Acyfp5iGJUnBOBZLnimSOrlf7eO8Dd8s
	jBedDyQ59xH9dz2TcGuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD0r5-00HVYy-8x; Mon, 09 Aug 2021 08:41:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD0qt-00HVXN-6m; Mon, 09 Aug 2021 08:41:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DEA2161004;
 Mon,  9 Aug 2021 08:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628498502;
 bh=Qxd4HYvX3aRfn/wmAN7Ne2jEEMh5o0SV/36EibPAnPI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B8S4Qpo77i5TDVAurBFxqMaItyoZUC3owyuZmIDcI4bKn+iVlAFekR0R9wQdIZTno
 g7q9uD/CDmM6AHnyhmWaT9Ob/v/v7ntpJJLrD6135P3VF4irhsUrZTMIR4YbGVPDpX
 yGmvnSyWCqT2CaiEq5N9VVCz0nzZJgoBP+3b2pcpIXM3+r6w6U9Pe5xEvJEEmLX3Gv
 p154BkNk4BYYomDrgCoWOCnder/9kjJqNZiXUsBhGpUOBKgebVkHej7nLTt10e82t7
 ugCj8qR1sxI9yxN+ka90R6vWHV26jtuUx+R6Dm6KgzN29kuv0dVE5EzTLC69ANhQg4
 D1BLa66ioqshA==
Date: Mon, 9 Aug 2021 14:11:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "A, Rashmi" <rashmi.a@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 Mark Gross <mgross@linux.intel.com>,
 "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>,
 "Zhou, Furong" <furong.zhou@intel.com>,
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>,
 "Hunter, Adrian" <adrian.hunter@intel.com>,
 "Vaidya, Mahesh R" <mahesh.r.vaidya@intel.com>,
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>,
 "Demakkanavar, Kenchappa" <kenchappa.demakkanavar@intel.com>
Subject: Re: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
Message-ID: <YRDqQvKQ71/824Lu@matsya>
References: <20210730063309.8194-1-rashmi.a@intel.com>
 <20210730063309.8194-3-rashmi.a@intel.com>
 <CAPDyKFqZ-H3+OnYyyY7y611YrRAAMFq+W65DMfM4wSNvY_fzjA@mail.gmail.com>
 <MWHPR11MB17891909766F5295AF34B0578CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MWHPR11MB17891909766F5295AF34B0578CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_014143_305742_8A7F841B 
X-CRM114-Status: UNSURE (   7.09  )
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

On 09-08-21, 05:16, A, Rashmi wrote:

> > 
> > Rashmi, is it safe to apply this separately from the phy driver/dt changes?
> > Then I can queue this via my mmc tree, if you like.
> No, the phy driver/dt changes must go together with "mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan eMMC driver" patch.

Why is that?

What could happen, emmc driver will complain about phy not found and
bail right?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
