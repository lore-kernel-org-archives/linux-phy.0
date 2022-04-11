Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 095C1C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 14:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38W7QOEATpN1RmAt1RRpu9LrX+U0pRpcxICPG+jn6Ds=; b=b6D5yyVh3MXHYm
	5xjoe8FQBy1QW27NdNJXJQkuVsEHV7NexLgLPwK31f/+v0fyaBmPaZSreWY+iH8CfSsQ5uam07W1e
	W4w5sSvNkh2W3aUdsrb9UA21UgpWDLBwnLWO+QW0cExwjy8MJkcHiTW/ZSQ1A1fW8vR18mPzeQ+1f
	3N4tsPaVdKLGgAnQJFjWKXp4nWKjB8rLjck0urXZqV7dCPWZKTvXrtaReTt5HqZ49G6DiqVPK6xs0
	/jbbMzkw/OXGVoQY4S966lPQjRNdTQZvgUIQRzt1HFkcEWmoRynoeInHywST4thCVEoatWRZR8+cP
	qmSx4oA6A1DtVrnayByg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndvD8-009Q0x-EH; Mon, 11 Apr 2022 14:40:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndvD6-009Q02-3I
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 14:40:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C147361495;
 Mon, 11 Apr 2022 14:40:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98B00C385A3;
 Mon, 11 Apr 2022 14:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649688005;
 bh=+saKweDFleiumysXK5QHdl7bdwpKZhGZFXtIhbrZwA8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p9DeTeu+PInhybClsPA8pl3+xfgseVglV3Z9QEzogL7v9uzVqlC5gKFop4ttogNSz
 xqCgfiAKUpyuxt1/zd5TB5D0rJt+ouJLRVUrGsa9hcCiOTjuufdtCTC5zUHGIxgIST
 vrsNNLJRDXg7NJ7Ya1eDjWRKcCS9g3h6n0golq4UFEcXh/uMJVTRd7My9wxTT4X282
 rElwJxlKbZEyDyiLSwXxdDBqGNKTTGLQpfUcAS23fH8fnf28CDEUmi4BonFMMPyWeq
 QJXxb6bWqrcJxZGEpURl07gQOS9lBJEJ4cAH2qZXVl4d0PsbaThyRqOty8ixbslNfG
 ERLp1TEaaa3Pg==
Date: Mon, 11 Apr 2022 20:10:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: ti: tusb1210: Make tusb1210_chg_det_states static
Message-ID: <YlQ9weJMdF2RXg3i@matsya>
References: <20220411135440.558394-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220411135440.558394-1-hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_074008_213627_C0D6A024 
X-CRM114-Status: UNSURE (   6.35  )
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

On 11-04-22, 15:54, Hans de Goede wrote:
> Make tusb1210_chg_det_states static, fixing the following sparse warning:
> 
> drivers/phy/ti/phy-tusb1210.c:158:12: sparse: sparse:
>  symbol 'tusb1210_chg_det_states' was not declared. Should it be static?

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
