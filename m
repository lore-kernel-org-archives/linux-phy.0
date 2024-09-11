Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA75EE499B
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 11:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDduNgN9xTiRD+nF5DqG1DY+5ea7lFtEEl/hCXe/grA=; b=Kf5XgQpj9y5ZvR
	/+YSY8pd442oWgWUtP8sfe4aB3ZrYpo/ax+0qPFjchgFskCpOtw1OsZ6jdMwGAmjjdHgPdbnURZMf
	bY0TVwAWy6H9WOdu4G1Rm6vTYLPOiWSbxbfOLGAj8jYsV+KNbkI44gv3HZ2HdFvzqKPSY+Vcj1gMB
	8m6q8j/dM5oK9reYOYthoxEZVFaOeeozE77OV1+LWlQ1qXxWVjOaP2vMskd36NZAgBCksOwKowH5b
	szNK5o8xQ9Z4cJj1PS0GDBK94dN3/a9z1uhCxtumgCOq/J6j2ISniwsXqxI09tE4keP8z9yoYOmf3
	Rl0RdVGzx3mf/z0eQMJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLyD-00000009NCw-1Vwh;
	Wed, 11 Sep 2024 11:57:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLyA-00000009NBx-1CJL
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 11:57:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 63B895C06BE;
	Wed, 11 Sep 2024 11:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84C4FC4CEC5;
	Wed, 11 Sep 2024 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055828;
	bh=XGH4fqWa/9fWdPNDRDACY+LXke8v6guB2qi3oabmQF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lMzzZvuXiwrJkp4QF0vVgrilLLXBTS92zyBUiZqrEwTtuCn4oOOEvJqmlvSJt5x3e
	 WUJR3hU9WWoiiD4BmDOBM52axdUjkWVLy0Wdu41UG3Cwl5dQekHCaBa/6H0OBrYlrt
	 9Hu3TXHP+OgVOLJ58X2eG+CNeSLzCVi1Qm49Rka1N/vD2HnSsRMnJoyJckMxrUdJza
	 2ipRDR7Sd/91FNKmTQ3b2MysLmiURnScL6R0GtOKaElBrQvWjUkURP5QVllruE4CzK
	 89UzLLXbiu0/NLnq2VW4E9OZtjBfna72VcOhUZTQM7yKmi7EfWJ5NPG4NCklg71P9+
	 QX3t10OYEugIw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1soLyR-000000002zM-16i7;
	Wed, 11 Sep 2024 13:57:27 +0200
Date: Wed, 11 Sep 2024 13:57:27 +0200
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: qcom: qmp-usb: move driver data initialisation
 earlier
Message-ID: <ZuGFpx3VZOGP-6Ii@hovoldconsulting.com>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
 <20240911115253.10920-5-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911115253.10920-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_045710_408888_CDBCFE20 
X-CRM114-Status: UNSURE (   7.35  )
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

On Wed, Sep 11, 2024 at 01:52:53PM +0200, Johan Hovold wrote:
> Commit 44aff8e31080 ("phy: qcom-qmp-combo: clean up probe
> initialisation") removed most users of the platform device driver data,
> but mistakenly also removed the initialisation despite the data still
> being used in the runtime PM callbacks.

Perhaps the copy/paste error in Subject can be fixed when applying. The
summary was supposed to say:

	phy: qcom: qmp-combo: move driver data initialisation earlier

and nothing else.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
