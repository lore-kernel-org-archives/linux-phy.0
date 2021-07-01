Return-Path: <SRS0=Uwmf=LZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99653C11F64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jul 2021 09:51:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73A5C61481
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jul 2021 09:51:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73A5C61481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FneSJ5jsdPhynRQa6s/+tdcMASxN0Mnf9QCM0OEvdiw=; b=Wb8ImUtqsZDKgx
	myl00z57Yfdv5WVBg0GIrZj9YxowLsobFk2gCyrj1otA73u5HHXK6h87T16is8dxqbe5ANgwXEL6D
	jmF2XG4CwLraO0SIu3dw6nO2wMxEGqz8rGiQJ4c9T46hJFIO/k7tvpjYjR8667cu8GQ5oqcVmc3Ic
	XB7njiuhqHoa1PEV61O98I+C39itYkuTYc2gWxV6K6uiAp9Vr18u0f37BnqsZqUjVHptUzH4kRSZy
	ffJ2bZmYW9UC1zbR+/LFtR9FMHTdN/DVsT1j+s/4sKPDH7kjHAKIqM4eUUVgEr4gLDWGthnFjzTii
	5CYRDpcEspcE1PBaeOFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lytLu-00GqJU-W7; Thu, 01 Jul 2021 09:51:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lytLs-00GqI7-8T
 for linux-phy@lists.infradead.org; Thu, 01 Jul 2021 09:51:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4FB6D60238;
 Thu,  1 Jul 2021 09:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1625133079;
 bh=fpuEFrUiU5EVTjFlLK6uC+5uhkFCrLLjAqBmuItpzFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F6SOxaiey35zldGTmJos6Vw0zFdMWtV920qP9urq24IvOdyQOEcbWFq/eP+lBth0b
 R9XnFR9BbOsZ+ib9P9IPSO4Rdc3qe0tzRu213lswhExJ8WzWJk3PiJvTBRUPETmsLE
 bAvVdKdHZOLZJoEl8QyaQEqTpw82Yy1qit2kAP2E=
Date: Thu, 1 Jul 2021 11:51:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, linux-phy@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-usb@vger.kernel.org,
 Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: repair reference in USB IP DRIVER FOR
 HISILICON KIRIN 970
Message-ID: <YN2QFcH/DcGeg/0u@kroah.com>
References: <20210701093903.28733-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701093903.28733-1-lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_025120_363172_92699B33 
X-CRM114-Status: GOOD (  10.44  )
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

On Thu, Jul 01, 2021 at 11:39:03AM +0200, Lukas Bulwahn wrote:
> Commit 8de6b7edd493 ("phy: phy-hi3670-usb3: move driver from staging into
> phy") moves phy-hi3670-usb3.c from ./drivers/staging/hikey9xx/ to
> ./drivers/phy/hisilicon/, but the new file entry in MAINTAINERS refers to
> ./drivers/phy/hisilicon/phy-kirin970-usb3.c.
> 
> Hence, ./scripts/get_maintainer.pl --self-test=patterns complains:
> 
>   warning: no file matches  F:  drivers/phy/hisilicon/phy-kirin970-usb3.c
> 
> Repair the file entry by referring to the right location.
> 
> Fixes: 8de6b7edd493 ("phy: phy-hi3670-usb3: move driver from staging into phy")
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on next-20210701
> 
> Mauro, please ack.
> Greg, please pick this non-urgent minor fix on top of commit 8de6b7edd493

Thanks, I'll take this after 5.14-rc1 is out.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
