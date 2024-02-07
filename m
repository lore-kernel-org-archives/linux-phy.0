Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57EF9C4828F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 09:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cW5+7X1aAS7J3PrcOqTX3yiKL0CMgVHw6X1/tvpCjU=; b=t13RvE6briDSrK
	qKE51DYhGhh1xyEIv42GJCdCLhLjbHknDKQXmeKX/0OSf6j3VgvCdLQbe0yEkGnQCrKkjVliM+4I3
	ka1gRqIvFmEYA+WCrNQLKPeu/i1XuHsPRRb4T/mZDy17xQZ+ULYrubjwSfOVY+D9/pfQPqbhjaZ7M
	XUPnX+1prSPVbcqFYjJ4ppkywx05ZIHTYyxuX1irFAPqW7zrRA/32HUhBsXJ9EBJGXdPfBpB5wtyh
	r00QGS6fUfAFrdsFhEZRx6SHOG7uOq4McH1B4sjGCRbPsqpgugc5Au60Rx3mhCR+VPUOZWROO7szT
	GiCH5KqrR3F8xNYlZWrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXdwc-0000000A8VC-09Xt;
	Wed, 07 Feb 2024 09:10:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXdwZ-0000000A8UV-1MtL
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 09:10:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AF8C8CE1836;
	Wed,  7 Feb 2024 09:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79685C433C7;
	Wed,  7 Feb 2024 09:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707297008;
	bh=CWcooCUDRC36FI55Q8q63mmbp8LQ3fptl3hvpA18YmQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O7A4InjVavP1DME1JU6+1vhgI4Bhh1/0uyHIyT2tH4F+5Xl7EcQ0jkWB6EpWbdF08
	 nqbkznhVso0B6KndaZTiA4AazOb2LXSNdDVYk0YhbsUpOYt52cKUzs7DdGUELKRItW
	 YulzEKW69HRP4MpBs1E1QoBpmGsMghao0BFmuTMU9Tzrta6LG/QMElVM2jFtIw+aoY
	 lncfr5dELbu5sPsf9UzcT3Dv5PiatNKCPp2cTWorryQIdlcK5h66WCe1o9trGUBxq6
	 747hzdJgBaridodJHtWo9gQZYy3UVQD4/3OUEMThQq5lrtWqbSJYsKT87eGAVXvSRE
	 8PJmu/D8dkxMw==
Date: Wed, 7 Feb 2024 10:10:06 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: linux-phy@lists.infradead.org
Subject: Re: [bug report] phy: qcom: Introduce M31 USB PHY driver
Message-ID: <ZcNI7lSPLUcUzpae@matsya>
References: <88e2b874-b82d-4b6f-b1c5-761a8d066020@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88e2b874-b82d-4b6f-b1c5-761a8d066020@moroto.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_011011_562801_05F28026 
X-CRM114-Status: GOOD (  11.85  )
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

On 06-02-24, 13:22, Dan Carpenter wrote:
> The patch 08e49af50701: "phy: qcom: Introduce M31 USB PHY driver"
> from Aug 14, 2023 (linux-next), leads to the following Smatch static
> checker warning:
> 
> 	drivers/phy/qualcomm/phy-qcom-m31.c:302 m31usb_phy_probe()
> 	warn: passing zero to 'PTR_ERR'
> 
> drivers/phy/qualcomm/phy-qcom-m31.c
>     294 
>     295         qphy->phy = devm_phy_create(dev, NULL, &m31usb_phy_gen_ops);
>     296         if (IS_ERR(qphy->phy))
>     297                 return dev_err_probe(dev, PTR_ERR(qphy->phy),
>     298                                      "failed to create phy\n");
>     299 
>     300         qphy->vreg = devm_regulator_get(dev, "vdda-phy");
>     301         if (IS_ERR(qphy->vreg))
> --> 302                 return dev_err_probe(dev, PTR_ERR(qphy->phy),
>                                                                 ^^^
> This should have been "qphy->vreg".
> 
>     303                                      "failed to get vreg\n");
>     304 
> 
> I can't work out what happened here.
> 
> This was fixed in commit 5f7cd740a6b6 ("phy: qcom: phy-qcom-m31: fix
> wrong pointer pass to PTR_ERR()") but somehow it got changed back.  I've
> looked at the git log and I don't see how that happened...

I think there might have been merge issue b/w the change of error
message indentation and this patch, that is the only thing I can this
of...

I have picked this one again, thanks for reporting

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
