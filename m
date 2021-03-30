Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A417C433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 18:04:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8DF4619CF
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 18:04:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8DF4619CF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cQ4fcWRwEvacZgZN0CC4C+i6Sy1Umwpfg/FDvUmPGR0=; b=pip9xuOzAFF8SYZolTwhuLErA
	uptiXZGlPtMH2rBPl5PTrF0FWsRshj4lTvom2fmWAWk8/QcsCGl4GYUTCvb8PG6fCAwF14M7zX7KL
	NMKnEwNMyUTQdKmNh+4vZrqDBEKZYKcegaA5B1vuyRmfd47++k0+fYCLPf/sxNFww6ZLj5HswrztR
	zgdxvwEeERl8q3uS0yvphwW3mMXXAMyzzwimfD4kZbg/bsIPqEm98cJQGHQhvQuFbn9AHKpV6vAqg
	PoqY9mBLxCSpio5aGKyKaWt1stJmyJtoUz5+WyFuZkf98nd/4zy8/JlTNLEW/VJNWNEBtFq3eC7af
	/NaGVucqA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRIjJ-004XbU-Rl; Tue, 30 Mar 2021 18:04:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRIjE-004Xaf-9B
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 18:04:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C2E67619B9;
 Tue, 30 Mar 2021 18:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617127472;
 bh=PQ5S/TrXO84kqcGj5dGJdHVqnmimxvxf9DtcGJchqBU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mRB2J9y+/ZivoGmsa2n/wlr5fZ6PveJtyY0CTrAtzXlMpc2rsS9XP8nXYkS1GNXcx
 lildalmwicnPpauB0KdQfELyvw5hsmx0qU+gm0Kf8voACOYxSXXsJfPEuwQFzm4d7s
 UOGhRcm4yRvIMpXrQ4YtZIAp9y+YG5MRRmpxGY+HPG5BwZdkV+fgGsZNiktatTUmkK
 B9fF1r0vejlg+dtO2T/D5TlSxtJ2t4bguu78Fv6fyoaod1cSn8JSElmSWXQddV8ppE
 T+vb2d//4CcInE163bclzgsosS+cXeePZinQCcVDZBb6khlV6cx9RQmVOawvDGSmQo
 JvDkdgKyq30LA==
Date: Tue, 30 Mar 2021 23:34:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Swapnil Jakhade <sjakhade@cadence.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v3 0/6] AM64: Add SERDES driver support
Message-ID: <YGNoLHjKC0y/VIHl@vkoul-mobl.Dlink>
References: <20210310120840.16447-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310120840.16447-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_190438_116713_0A5C7759 
X-CRM114-Status: GOOD (  12.73  )
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

On 10-03-21, 17:38, Kishon Vijay Abraham I wrote:
> AM64 uses the same SERDES as in J7200, however AM642 EVM doesn't
> have a clock generator (unlike J7200 base board). Here the clock from
> the SERDES has to be routed to the PCIE connector. This series adds
> support to drive reference clock output from SERDES and also adds
> SERDES (torrent) and SERDES wrapper (WIZ) bindings.
> 
> v1 of the patch series can be found @ [1]
> v2 of the patch series can be found @ [3]
> 
> Changes from v2:
> *) Sent the DT bindings as a separate series [4]
> *) Remove enabling PHY output clock in isolation mode
> 
> Changes from v1:
> *) Model the internal clocks without device tree input (Add #clock-cells
>    to SERDES DT nodes for getting a reference to the clock using index
>    to phandle). This is in accordance with comment given by Rob [2].
>    However the existing method to model clocks from device tree is not
>    removed to support upstreamed device tree.
> *) Included a patch to fix modifying static data by instance specific
>    initializations.
> *) Added a fix to delete "clk_div_sel" clk provider during cleanup

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
