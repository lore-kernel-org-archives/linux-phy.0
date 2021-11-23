Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17322C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=098LVSV3eDhlWgvF93rH3R+LxJL5C5xVruvjVOQJFMI=; b=YUI2H32nOZjLVj
	uKVTu4t5HtVVKg8XOF8ysbV2mOuhkkAJ0BO7CkEQXApGypXV/X99aXmp3+2L6XRjeuNjTySwyny7s
	9WmZvMBE6/1d4ZDC2ctqKTxmda69yRXG5JcoB/BFFUk9AvqOscoBh7HTJP98fJWVYmMumngo6RP+r
	kMhdfYmeXwGI16ewDiv/qTzU8ixCsyTW4gFgbAgtWhcyuGEXN8qO/cCvq65wec82cPOmRbb48VrQ8
	FszeKh0JfarLrNAleJwxi0f9IdJ8yfcmBZE6/ESlRW/ytlnp1+BsHw8IiGCJGYKdRA/+rq9QXIDU0
	UjL1pkznXyTnxn2LiIsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpOFo-000rtJ-BW; Tue, 23 Nov 2021 05:22:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpODR-000qmg-Oi; Tue, 23 Nov 2021 05:19:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A1876044F;
 Tue, 23 Nov 2021 05:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637644777;
 bh=s2+X/Dsn5egmAanzElg2iQu3D1op/8JYzqhkY6R0B1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S9F3pH7NnisPh1/tnsyZYJgedv5MHzvlgFsyY/u03a5Kxf023659hbCitgJnJ7+9P
 83Evkqb+lC/eA5daxdJyr+IAJyarDjBL2GLZZ8zjrOC6n7yBfV5SLGNsvihxLEOayR
 5yGKyHtN5jMyXrN+oI4clFAS2/4PRNmokc8aG73bvQY3gNCEx6HtgbaCAHSNfyhSec
 2l/oFM/TlykQ6frdZY2IaN5Jh/zQkkVKeJo6seG1STEtYFy6/F32E3CdlNkVz+4O4E
 XC4/KiQ2nP8++/909qWvZi/FCdZfy/2OSooZNUY2Q5dTiyyXsuBEACqznbjt58kb4J
 OCBr6QQ+d7C3w==
Date: Tue, 23 Nov 2021 10:49:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: kishon@ti.com, amelie.delaunay@foss.st.com,
 alexandre.torgue@foss.st.com, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: stm32: adopt dev_err_probe for regulators
Message-ID: <YZx55MrlupRxNpMx@matsya>
References: <1635172265-26219-1-git-send-email-fabrice.gasnier@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635172265-26219-1-git-send-email-fabrice.gasnier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_211937_862917_C015DB0B 
X-CRM114-Status: UNSURE (   5.03  )
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

On 25-10-21, 16:31, Fabrice Gasnier wrote:
> Change stm32-usbphyc driver to use dev_err_probe(), to benefit of
> devices_deferred debugfs in case of probe deferral.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
