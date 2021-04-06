Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85B5CC433B4
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 05:04:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 253B2613B7
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 05:04:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 253B2613B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0CyfGoUa1+jAAJTjdog2oaDz5X+9cODKE5PNjbF6xTM=; b=koo/XZG956gMD2+LUpgLZmuzI
	C3NToIHlMYtZCLUJNKRYImsGBofUMHn+L545nNNlYoX3xm0MnjYs6vQiqrKfSbTLflwMxSiu5lYBW
	SJpz+p9jBHCPgiT1QsXPeTTFNRJ7dS63F3SBegpkQmmGKHRMpo9G+GdGjGilqUni+yG1Pi/gWpijU
	4DG0JZf8+DvPodA+y+j/cigaDbt2np59dY0wl+HbTEI1jpSMqkr90laFRP+gJxaZvUle9TRXPaxuD
	9au7Tk3op7iphR6PXyWpakeJaLLcFcHZpKWpMGjH+rKoE81XxX2Qb0Bi0Nvwj1fnhysuvV998ZYaP
	956CoY05g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTdtL-001XMp-3p; Tue, 06 Apr 2021 05:04:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTdtG-001XLh-Ji
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 05:04:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3372D61399;
 Tue,  6 Apr 2021 05:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617685477;
 bh=XzoZv30BlKblLYhPRIq5CCAUuMxI2ItwFYZMrIJEY40=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s6FEN7n7JZcjYoeGrYbB7SZNtbCjW+SU9lMr5dmngAiIbveboHo0cA+RhV50ULhy6
 v3T5Ske8EkG4rmC/mV/z9P+Nu+85S9289W8YOAlAm+AlgVx0iU1DGzNWf4NX7g80kn
 FL7V1WzZUgHSc+rWvhRcT2LJkyKdBYb3zUTb96d7uXlaE+s2hjiJ60xmSjzSozZx2A
 CvcDHmpklbz4JSbXvdiwRJxJjBQhj7PKHnW1s+0KX0SStXhWvkPo6kBZ3Pb9JjxPSi
 VsFOtSUISoAPi6nfCN04EPo5iCgjStfMO2rpZNgWqVW2t7f43n7plVdJV7mYVxeKAU
 vKdNpzUVBdeZA==
Date: Tue, 6 Apr 2021 10:34:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Kostya Porotchkin <kostap@marvell.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH -next] phy: marvell: phy-mvebu-cp11i-utmi needs USB_COMMON
Message-ID: <YGvr4ZDWYNT2w/tf@vkoul-mobl.Dlink>
References: <20210401210045.23525-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401210045.23525-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_060438_877875_ED72046C 
X-CRM114-Status: UNSURE (   7.08  )
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

On 01-04-21, 14:00, Randy Dunlap wrote:
> When USB and USB_COMMON are not enabled, phy-mvebu-cp110-utmi
> suffers a build error due to a missing interface that is provided
> by CONFIG_USB_COMMON, so make the driver depend on USB_COMMON.
> 
> ld: drivers/phy/marvell/phy-mvebu-cp110-utmi.o: in function `mvebu_cp110_utmi_phy_probe':
> phy-mvebu-cp110-utmi.c:(.text+0x152): undefined reference to `of_usb_get_dr_mode_by_phy'

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
