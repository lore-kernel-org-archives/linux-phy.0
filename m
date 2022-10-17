Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5001AC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2O4PV1pyru9bUNViWFv+EyuR+RQ1sbpTRzOoEsOEaAE=; b=2XKMc6GtwKCFwY
	WycHx/E+ew55qh9S47uc03DOhmUCovLegXnFtx02zi8sYNuAUZfoMEw5HnO9yN+A0iI4DwAFLtgN/
	bxeI76M/wb0bV44spMjizAg/q9gK8elokj3GipWcZMncD67fo1ZULb4ovTg7lvsY/jmmrqXrOi7XF
	jnMRUPtxse6EUYQiWYGxwOvNMhJDPFSK7xJ8P0oPWCJ+wWKXv3eqcYaEZRDA8ueu4cw4PRQ4skXQz
	I0m6l1Ukq3Pmd5khBJdapBfIUQdJ3qnxSb7GkxuDSAyq1OjCOf2uG5kmUhdLnzJR2h+OCo6nfUSoJ
	AVRkbbnN/Al1EicZ2wRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIdE-007OdE-LE; Mon, 17 Oct 2022 05:25:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIdC-007Ocp-7H
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 05:25:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9844460DF2;
	Mon, 17 Oct 2022 05:25:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71A2BC433D6;
	Mon, 17 Oct 2022 05:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665984341;
	bh=QLTUjN8wz1TtW0LObJouIjCQHTrwqKczV/PmiieRk1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ovFPID7s6qzGHC0D3Xke7f+LPCp8gLARW8Nmy0NhMC+GLkYiT0eQpco/2VuoZTaSj
	 wRBc9JcsSb9Tu2GlYJuwGP2QfrHb0HUxLVZI4e8ZKSXNenoPj1JBN81hVi+Kb4EfAL
	 QinXZvMiyHT4iAxuRQ6o9M5vN/sqCYS/7IoC+wNA89eIBTgN6N1/q4VweLB+AEcQpQ
	 sLwz01/Irs3XR7ElEh3/JMeVN9kpbGDFDYhOAg5ieexqT0gLsxk9unJUqQGFXqkw9i
	 2iACfAH7W7XF0FEON81Q2eUYNpJMvceh3KUtFZ8KfTRbsVG+oCpVmHJxWOlz9q38R3
	 NRoZcRzb5X+9Q==
Date: Mon, 17 Oct 2022 10:55:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: stm32: fix an error code in probe
Message-ID: <Y0znUJMwFbOAPYpj@matsya>
References: <Y0kq8j6S+5nDdMpr@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y0kq8j6S+5nDdMpr@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_222542_316057_C514A337 
X-CRM114-Status: UNSURE (   6.71  )
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

On 14-10-22, 12:25, Dan Carpenter wrote:
> If "index > usbphyc->nphys" is true then this returns success but it
> should return -EINVAL.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
