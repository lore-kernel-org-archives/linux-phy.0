Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEBE8C43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ruqk1Osm/chWnp5Jp6TN7KqlZkGzuqgKczhwQE1ysfc=; b=AdtqIh61lum8vv
	GsHAYSJqN1k7MHh2POr2O+IsvU3gY0QC67YOn0/ysLfkGVcMi3dmxeS2aia6FRSIIkIGu04muY/ed
	0VOMb45CxN52oCl9rV+eVn7T9CmQgF5/4Cp6ZVP+ZEGLp6nOsO7w27qlZOlw19jYvH2lH6mYzE7dp
	zUxtMUUHMGBynnfyMERs5ztI3I8dyEhDsLNTAmyOBgb7ULE5AutzEgsixxGWTbgnH80ILOYzTxD6f
	RrbtxGDpBgn0aGsif/nH6NOaonpWg2vOEQvFm5v57ZJHmV6ufQQAUsmUGQ/ozLXAyHXgmxhaDB+v2
	gH69nfl1WLyKSjFEn+pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LHX-00Elep-0E; Thu, 23 Jun 2022 11:45:55 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LHT-00Eldh-U4
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:45:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 649F8B82239;
	Thu, 23 Jun 2022 11:45:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B829C3411B;
	Thu, 23 Jun 2022 11:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655984749;
	bh=Ww7Wzcwqkp/dbEVh53zEn2lZhTl1P3ZAgZnVdLZgCKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nb3KUAX9+KYCTRqU54XnUS7e6eu3ZtZQi5Xgv0UjdUPJJNTl6KAHEydLqh6w0wY9u
	 lsFgLs1FRvGJWzb9x/tNHJnhfSR1t7aLxknQhme9PnPTxVueVCSl7PvZaakz35Dayv
	 h3s+b/KsXHxUZDZGjnDVa9PzYWo/atINutJjIKDzVSU2yII4pRaaAV1IlQ4ZyXCi8w
	 gx8CyuVday+bY3OAFIO/Da6d8cZW/0OxBYKgDqGFCIeMHapUNj9Uty31/ImanHNe5a
	 FukM0RMC7K4wVmT0nOEfS6C2ZZzGiSlosQ5fy9s6mKc/Ma/3lCBuXOTs0BBuq7e2FE
	 gahiWZ22LXQnA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o4LHN-0007pp-CT; Thu, 23 Jun 2022 13:45:45 +0200
Date: Thu, 23 Jun 2022 13:45:45 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom-qmp: clean up defines
Message-ID: <YrRSabGuRDRy8bi3@hovoldconsulting.com>
References: <20220609120338.4080-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609120338.4080-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_044552_146147_C689B1E3 
X-CRM114-Status: GOOD (  10.51  )
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

On Thu, Jun 09, 2022 at 02:03:35PM +0200, Johan Hovold wrote:
> Here are some trivial cleanups of the QMP defines for issues found while
> adding support for SC8280XP.

> Johan Hovold (3):
>   phy: qcom-qmp: clean up v4 and v5 define order
>   phy: qcom-qmp: clean up define alignment
>   phy: qcom-qmp: clean up hex defines

Any comments to these, Vinod?
 
>  drivers/phy/qualcomm/phy-qcom-qmp.h | 70 ++++++++++++++---------------
>  1 file changed, 35 insertions(+), 35 deletions(-)

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
