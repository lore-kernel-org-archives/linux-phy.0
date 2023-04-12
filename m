Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36D07C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xc5oKB/07WX7jSqIRlqndJCOj53qUeCnKBQum+1ls1o=; b=uhu1uc3KX+FADC
	Zm7vQlb0RUkVQF6Isa6mILJEeXbNkgcgHbhJ9BfK53t52obkC0A0MGPHKM+JOEPzfBhXSdQDIKdX9
	QBln0eFOhjahuIg1S1XQeTdxGgEbeHQ9nyMk5xy2xSzXdzF4ERLifzfNBENi6DnoZKvOmfXc6t49M
	eGlW5syMwZfXSVnWVgOND9f4xywxJrd9aCTQ8zP6mzr484QVhgvVW+gCQT6MtCOuaLH46R8qEH3EX
	XkOwHqQsGtwpnjPMe6FGxvu5S5ZrCq9MsJb9hA3etJG+ZBMBJVFbRqTiw6VZoP1n/qw3TnGksMtug
	s87GaEHZpQsb7QqBM96Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdEO-003nMk-2p;
	Wed, 12 Apr 2023 16:22:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdEM-003nLL-1S
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:21:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0B276636F5;
	Wed, 12 Apr 2023 16:21:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF171C433D2;
	Wed, 12 Apr 2023 16:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681316517;
	bh=OMGCs9Ki/y8UGmBnO+KdZJALvU1grM+QgjO8iL+SpUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PNUDwydFe8CXlErg/3dyAOl1IG+ZJ0miN0obmi9YH7BL6BZkJEBvnigXNsZ9KjXPO
	 jqP+/ejHVAy1CvFswSd+4wIPIdqYXscJiNwp9BBJFczap7nmseHpt0sZuT/QSNej1o
	 z9R4uyPyuG1gP9RB0YS53LRPZN2FIkv6Pttj4JTHg2Rt00yVsRs548eHndwlDVEx3I
	 ZW3uEzGog59yzZS0XfStfpIaq26bttvthQ+weprqzZHrLe5D2glQIGVxKjWXyH8p9h
	 1BsCNUrbZMCHa+SUC/jUVck0fOBhhOmG38alhFZeQgxYwk/7aM8AnulA9iU5xu+pPO
	 WDV+vwJoosm7w==
Date: Wed, 12 Apr 2023 21:51:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Gaosheng Cui <cuigaosheng1@huawei.com>
Cc: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com,
	jonathanh@nvidia.com, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: Add missing tegra_xusb_port_unregister
 for usb2_port and ulpi_port
Message-ID: <ZDbaos9E77CAyisG@matsya>
References: <20221129111634.1547747-1-cuigaosheng1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221129111634.1547747-1-cuigaosheng1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_092158_527238_664B028C 
X-CRM114-Status: UNSURE (   7.07  )
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

On 29-11-22, 19:16, Gaosheng Cui wrote:
> The tegra_xusb_port_unregister should be called when usb2_port
> and ulpi_port map fails in tegra_xusb_add_usb2_port() or in
> tegra_xusb_add_ulpi_port(), fix it.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
