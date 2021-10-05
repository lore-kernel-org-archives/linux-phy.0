Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A417FC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 07:50:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 684A26126A
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 07:50:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 684A26126A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc16Dn+e3oPhfxpLNE7PBUbm0OIB4reQqN28Xoyr7rw=; b=RPha42NUogrTR+
	p8EuBwRCc63nqNe2oi78cyhUzKOWysI8qj3BmBbGoZzJj8OhrBNbY0AYzImtnar9GFUTJYUuR2QQk
	WGE2K1WsSxkAY57zElYx3JY9etcfD5yH+J2NZfEVTcn7NrjnFryjp0sTAZN8WyvAOOcACmF5Ur9iS
	D6Q/AtdbFeIwvOGCFhT6mo3ccRcyL9o8BUtcbyp/kMP3sOW/Il53obG878Cofh5eV5KLQfvXtuJnN
	8qFaNC+lDVJDme9ztKCeNTfza69qKfs4ExOQf0zcRaqYAX17YDAlyXr2Pry5B7voSu3CNSJFsfTtx
	Bj0DHh4oXiMkrPsXkUUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXfDr-009Qnt-0N; Tue, 05 Oct 2021 07:50:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXfDk-009QmO-Kz
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 07:50:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7DC79610FC;
 Tue,  5 Oct 2021 07:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633420240;
 bh=9l2mJUM8P5HtB5bff6tB0MR13WiG5f7SZZjCmx9SBjE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jy0ZerDv+HhEHkwlfLSGJn2EsZ2ZYR0wpE8WuQlLTSd+pZ5u+QpSXXl1sWTsqixVr
 ymMiQ9tknp4YlmKwYb6dHPCc0uIXktQiiGwzPaRfl4G1FvAm+4BxTHxb24guLZM0HY
 PiKO6YgIxHjpMt3f9Cd/5rO4U1d1W9Xi2B/9ahhsfsKxQ/1Mubzd7v9ZThb+cDlcSX
 Ph0ViVUqvh/mtAKXtsVEuDxZ1Ps/GohN26KwP1WfJ6ydMmxACida2Yi/7xvClbAW4L
 KHSyxp1nxIoF0Qr44jEdFL03HZkagJythVyC/+r51TzrX0ghHgqX1wOpbFw425/FIK
 WYT/uT9hvQ26w==
Date: Tue, 5 Oct 2021 13:20:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add QCM2290 USB3 PHY support
Message-ID: <YVwDzGCh6jDbACPr@matsya>
References: <20210927064829.5752-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927064829.5752-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_005040_727466_EE296609 
X-CRM114-Status: UNSURE (   5.12  )
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

On 27-09-21, 14:48, Shawn Guo wrote:
> The series adds support for USB3 PHY found on QCM2290 SoC.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
