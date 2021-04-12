Return-Path: <SRS0=mHkV=JJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECD6C433ED
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 05:05:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43F6661206
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 05:05:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43F6661206
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WsazjJ7n7gAf5h2OobnmtBh0GIgcTq6E3V4rOPAgXm0=; b=MRAGvqO2IA2N4M+FyDN4fBFM0
	R2YPMa+n65DWkNmLznwFGMta+/EMil7xDdExVqlolc+hkU23zyns2pW/3SyOcODtpyrfcOm/Ku0W8
	KDpdTLa/GpCFfxGK+4AaLfXzrd8777mYjHWwm5GaQkCzEG7VwYsjLE9cPDFS95Bb6FJF86QUQOXrJ
	n0higQ1FdM4Bhil3P1wuku3GMjjOqNLM1CSCRVKKpY6b7H4kpZBerQSHh3NErO/uKEfWvXc+pxNGV
	u6C1IYDVwRhvBSyEkBHhSypcP4X5tVQxUn/ZRhYyQyGdmEjsFqp03MmpD8C4kt3BV+pivl1b+wN+u
	TavSu756A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVolm-005iF0-MH; Mon, 12 Apr 2021 05:05:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVolk-005iEm-7U
 for linux-phy@desiato.infradead.org; Mon, 12 Apr 2021 05:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zgY+cm2rGvieRuqIOZK3vCZ+HGpuzpq6DgXDsRHk0w4=; b=DiaU2GZZV3EiB96NK/Ws+L/goF
 EP+jyJyT2S/qJoHinHMTkUMmqoSDvFKPnWBQTBwzGewDWaGynjXwCEmKkErjMmXKLWwBXPMlQ7eMp
 am1MShQIPSlChC7UjSeK15KTuOaZDFEOihMglrsiHYFiMav9Pn6UMYK3A4eyQMrqV0ysEO+yC7YtQ
 3IpSBj+3kyEvwpBqjjPxb4OSaqnj2Iq6m5Zwezd/5ZQUr/uDdP5mWan4pjAMhdK9Oqff60Ksh7nEg
 PbHJIQaE+HgGIGu9TGZL39X+i7v/qaHfwyfw7Cvh1SOLU+bimkgtSWuVopZuhol0OClOcyNpNv5D3
 wfpW5Arg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVolh-005sbI-VV
 for linux-phy@lists.infradead.org; Mon, 12 Apr 2021 05:05:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B7A8B6109E;
 Mon, 12 Apr 2021 05:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618203949;
 bh=69ao+phJ4ZWkOF6Qux9UxXLL2zz8zJSiFyh+IT8ycxA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u+p2E4uHmqxNjaNa2gdtoPZm+SNTdCBp5NFwLKlHP3p7h+mfcGY21b+q2RI7s3jeM
 cntWgIT1rFJ8KEOOnX2QZ3uiWUfs+FCRT0Rzx3ZpbD+NXjqr/avf0y3jGszfribWKa
 P24SzS6JUojHHzOflxRLJC2Vs6+u6SPXvJT51F+KhaKs/Ilgj7Hq2ibzM4OYNzyQKE
 YmNLGAXefqn5kH3mIMYvXypNCp6cAlniehxOjcyN4jeFG1nOQC1QobHLzEKlK4WRCo
 A0x5E7gQWXnLpSU36NOCpCQ6cq4CDsSGuuw0LSWkwBagz+Ngyhc9/hObs/PllVl2/D
 /qLsHPU61EDjw==
Date: Mon, 12 Apr 2021 10:35:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Junlin Yang <yangjunlin@yulong.com>
Subject: Re: [PATCH] phy: Revert "phy: ti: j721e-wiz: add missing of_node_put"
Message-ID: <YHPVKZFRdPW5qAmP@vkoul-mobl.Dlink>
References: <20210408062914.3813102-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210408062914.3813102-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_220550_054670_A745D616 
X-CRM114-Status: UNSURE (   3.26  )
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

On 08-04-21, 11:59, Vinod Koul wrote:
> This reverts commit 00f2e6f668b0 ("phy: ti: j721e-wiz: add missing of_node_put")
> as it erroneously adds the of_node_put() as incorrect place.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
