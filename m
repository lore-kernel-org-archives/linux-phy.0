Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9DE0C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 10:35:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC4066124F
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 10:35:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BC4066124F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmxI/cyjIWMdXYsLelM89QyafQ7ZPctHH7pqmdWlAMo=; b=wBdFhq4JC1eq57
	mhzqnZx4j3Lf/i88m36Y75L/LE8iA5IEm1sJ9gVElrXFRZvvCY9WOb9hRMvdzJTNLr8UUZah3LSFv
	U6Xuv/S01NtaGOYx6UvVfmX3Redn4chXZB7bvkejm5DsZPNVTuytG6l10uLICIHLzlnhkFVLZq1b0
	CJc8eHz/IfhJ5PQQljru2BQJPCEYWoC/mInGXjYhs5eixbxQ7Eamw5e0zhREj8YtsmZfZJXWn0FzF
	npQ+5YvQUvhHZSo/jdMNEYa50Tuxgo54n93XI/58QWkZ0dtPH+ZAMft3uxG/DPzcdadlFb22S9M+1
	M5qXQB504zTj1yc9javA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXhn4-00A0TD-B0; Tue, 05 Oct 2021 10:35:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXhmr-00A0Qj-Qx; Tue, 05 Oct 2021 10:35:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B79261131;
 Tue,  5 Oct 2021 10:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633430105;
 bh=tPRSe+sMGLMk0DEatVSdVYaqyhvvz0YMaXtWMarFKAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uxPZayo3ns80cG6GBoZnUYwBGG0P4nH/VwSvtxVE5aAyzZqd2hA2UM6B1t1tqRluB
 kYHmmPOCFhM8lWxYtpdiD3Dw+fAM+8uIlKbN8V8pdblrCH/fGTXtDliHcnoFsXF1Gw
 zKPQPrD/bPSAoX/bb2PgqO+JvQuAmq/wXf8nYunPutvl52Vt5F13KwDHiFTaZdS5lN
 7iyl0DcMtzubUGz9X5I3OTmsS0NYRiVUkA2QCQkLTV35AltcAWD/akKmsEUs71wVJR
 +dONcCwUHO1Ryo7Zck1dtw2hcsrorcY9gBoT3Zv3e/121OVGiE1ACu3t4BkePxJx7y
 myL+d6MzeKd8A==
Date: Tue, 5 Oct 2021 16:05:01 +0530
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
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>
Subject: Re: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
Message-ID: <YVwqVRkwAYnoJR6x@matsya>
References: <20210829182443.30802-1-rashmi.a@intel.com>
 <CAPDyKFq2VQ=khYnmfsQGPPcpRnxyATVSpwKSZ4MTbKn64rthVA@mail.gmail.com>
 <DM6PR11MB306560AE06F83FC56B9F89988CAE9@DM6PR11MB3065.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB306560AE06F83FC56B9F89988CAE9@DM6PR11MB3065.namprd11.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_033505_916750_DE5528DD 
X-CRM114-Status: UNSURE (   8.49  )
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

On 04-10-21, 06:04, A, Rashmi wrote:

> Applied patch1 and patch2 for next, thus leaving the phy changes in
> patch3 and patch 4 for Kishon/Vinod to pick up.
> 
> Thanks and kind regards
> Uffe
> 
> 
> Thanks Uffe, 
> Hi Kishon/Vinod,  
> 	Please let me know if you have any comments

Need ack from Rob on binding patch

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
