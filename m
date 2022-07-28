Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F928C04A68
	for <linux-phy@archiver.kernel.org>; Thu, 28 Jul 2022 08:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxGKb1yA57dbcKXvvwbmSB1QApeZ17zr2/XnEmh2fjA=; b=jOUmP7Zk6NqoH/
	v5qvzqehjRp5xfM2bfQ/xLhG0/IyuDdT99x6W97XGAx3MDhu+PQ1ahG+Z6EEXzF8WOrZ6EMYv9vDh
	RBukbnW1YRGiMCRIaSUa2fcdUTf++AEPnbygQ9Or9FKODw5VLy0uLUsHpVv2MnaD/vY2qgBMO8TwH
	uCfYI62YEEEe9i2BLP1Vt6rtYh9FQMJWcpZ4biQcF1E+W9nGVq5hGsu6tVxZsBk5tvUUQzZod2qZD
	sB4rRYL+Q3wbT19PjCy+mNt2Gxn4ZKgLuZPUvR/Hh5UQ4m6ELz133Rxob6zZMhh8NSo+/KEN41V7G
	g0rGQrL/d0lz8nIyIyKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGzJm-00605O-Dw; Thu, 28 Jul 2022 08:56:30 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGzJh-006021-Ba
	for linux-phy@lists.infradead.org; Thu, 28 Jul 2022 08:56:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9C54EB8236F;
	Thu, 28 Jul 2022 08:56:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0622C433D6;
	Thu, 28 Jul 2022 08:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658998582;
	bh=ugMfMQoHM45Be3z6trPnwYRL1JLhfjGfWJJCVOFWlV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WLVpdRU+iZb/CdplYzS2W+O6h9GeixYNKFJkIxO0Q7B80yMywY2rV8aK3nULno6yz
	 B1YJjxfF4/3N0RCMX//2M9SrmvbysR0XThltnIR8OGT9W+yufwDzFtUBnKb1T8LElr
	 MIN4tYoTiX0tbvVr+hV5OJq6IEUI+Z3ygDTSjE2Q=
Date: Thu, 28 Jul 2022 10:56:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jim Lin <jilin@nvidia.com>
Cc: "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
	Jui Chang Kuo <jckuo@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"balbi@kernel.org" <balbi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"mathias.nyman@intel.com" <mathias.nyman@intel.com>
Subject: Re: [PATCH] xhci: tegra: USB2 pad power controls
Message-ID: <YuJPMz4GMz9IwPXk@kroah.com>
References: <20220727105314.14681-1-jilin@nvidia.com>
 <YuEaOGP/AaUKimFg@kroah.com>
 <IA1PR12MB66038FF5370F31870ED62BA9C0969@IA1PR12MB6603.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IA1PR12MB66038FF5370F31870ED62BA9C0969@IA1PR12MB6603.namprd12.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_015625_583718_828F2F29 
X-CRM114-Status: GOOD (  10.02  )
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

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Thu, Jul 28, 2022 at 08:39:42AM +0000, Jim Lin wrote:
> Thanks for review, will follow up and then resend.

Also note that html emails are rejected by the mailing lists.  Please
fix up your email client so that you can participate in the kernel
development process.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
