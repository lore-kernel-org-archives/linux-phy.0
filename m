Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C3A6C49EA6
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 14:27:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0269B613F2
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 14:27:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0269B613F2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvsDWYi2WzI5co+yl+bPDia/dBSk6QVFtzlFx7oDG4c=; b=M6JyFgETe6mfLb
	3W0iq8BKmZ3XqKoeZwLHS8a0nO1Ua5Gp589hxCRfpDLiZ7Lv0KyTLnPdnh5++CQBaPwyJwn304n5f
	VLVobMk2NjH3YZUgLZ7+qb9B+lt5e9qpX1txvj404QN33dwKS+KX6FhuSGLQpYVlxqQLF/jhJ3YdG
	3YYSuvyb+tqRb/bLESBVWoXRaoaXgzje7OP+o19LrVbF443zBnaDB/AJv5csemY67WNozPMGhsrDZ
	uTp6YnoTK+bIGjri/ClKAAA0609WUKemcanX/Vn9TAD5/B4ymM02GWCmYeTd6/D6NHDVpXFEIe2dG
	PlOmFWTBfOm5NTgEUBUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQKL-00F2ZE-Hk; Thu, 24 Jun 2021 14:27:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQK8-00F2VG-EG; Thu, 24 Jun 2021 14:27:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA9516024A;
 Thu, 24 Jun 2021 14:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1624544840;
 bh=/W7GGtFuHznE/k7ogBLCPm6Nks6yk9xFc5/56IqkYuI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ew3Cd6sRv4GTber3Mwcl4FY/kn++KMhFdnWMjvGeRwF3Zg/e62KkqObHKHYxz3jxR
 GbQtjl67gpqsf4MDjWDK/iy8SjQ2a5p/14jNBAbei8L+eUEZtro02p2WdUl9va9u88
 +IEzNp43tUARi8d4yXhRqj/Wx47IAm638mAEwNQ0=
Date: Thu, 24 Jun 2021 16:27:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 0/8] Move Hisilicon 6421v600 SPMI and USB drivers out
 of staging
Message-ID: <YNSWRlCjJ6WlrM/6@kroah.com>
References: <cover.1624542940.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1624542940.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_072720_542597_C77FD9BF 
X-CRM114-Status: GOOD (  10.92  )
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

On Thu, Jun 24, 2021 at 04:01:29PM +0200, Mauro Carvalho Chehab wrote:
> Hi Greg,
> 
> Those are the remaining patches that are needed for the USB to work
> with Hikey970.
> 
> This series address the comments made on v5. Sorry for taking so long to
> return back on this. Got sidetracked by other unrelated stuff.

I took the first 2 patches in here.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
