Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B73AC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Dec 2021 17:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uavEKx+cbScJ8dt8PnwUS8ihpu+IKjpM/em6D9a2swA=; b=0tLHsBm4Jy8ANB
	h+nUrY0WwhFXaKcfprvRQXPecw8pE7R/LDrKBwObuDffAKM3tgNXiBfPmomH5HiUtmF+fnzhREdaD
	FvvTDcWQcn1tsmVAHjpvTH8kx7EK6bBSe6WtGUj3o4w0wg9LRzIPD4WEjO1GD1G4FtJ/nsHMPhBDJ
	NPiP1KmEKyScYh1jggQN60FI0HMlicYq2IxfoLzwxzruxEUQOOx3MkrFH47/ZaEfou1P3I8moA9GM
	s9HWYvDumWBY8G2LLuiHCvlZhFqXht0XtrOyoNa5nzlAJBbZ2FfcMhqdb+LhWfKiYRZbQzMNq0JuU
	93uZgw2lHqF7udUY57aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtCa3-00Ggvz-Mc; Fri, 03 Dec 2021 17:42:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtCZk-00Ggrb-QE
 for linux-phy@lists.infradead.org; Fri, 03 Dec 2021 17:42:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B481A62C71;
 Fri,  3 Dec 2021 17:42:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF428C53FCD;
 Fri,  3 Dec 2021 17:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638553343;
 bh=qITFqiG4aRPHfdbrFqKNAIXEJYa92PD9iA88TTUUpvk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PTslTplSSM3NgsfkrOcGGYigkM7RR1b//xUEigcwoNqUUzR+P5Z6wb35HzUpJpzof
 QR5qeLn7M7+lqmgnfUiMFJ9UKKyteCoz6kafvHGnoKagMzA34ye0hcI8a1p5TBSR2v
 qSAUKtJFXlqfwxY19FdQAhAWUlKLKxOGKiaRV6e75fvo6LdoI8ajoM0oFmUCDYfX0Q
 io3r3izXCheQzxtsnaFS46q77E7yS1aSajmo0XJJh5sZtbTFxhKIdWLfX705SQyKFD
 ildsABREWdyGvQQOUlYnuuTDilhibn+Lh/y3zD4dpYu6Lk4tPqWL/iNQxuP1JnSXog
 Ih3rpRwkYeZ1A==
Date: Fri, 3 Dec 2021 23:12:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] scsi|phy: Add SM8450 UFS & Phy support
Message-ID: <YapW+EY/IeUk1BLz@matsya>
References: <20211201074456.3969849-1-vkoul@kernel.org>
 <yq135nawg3q.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq135nawg3q.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_094224_941808_E2FFCAAA 
X-CRM114-Status: UNSURE (   9.09  )
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

On 02-12-21, 21:58, Martin K. Petersen wrote:
> 
> Vinod,
> 
> > Add the binding documentation for ufs SM8450 compatible, phy
> > compatible and SM8450 UFS QMP Phy support.
> 
> >  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  1 +
> >  .../devicetree/bindings/ufs/ufshcd-pltfrm.txt |  1 +
> >  drivers/phy/qualcomm/phy-qcom-qmp.c           | 32 +++++++++++++++++++
> 
> No objections from me. However, these patches should go through the DT
> and phy trees.

Ok I can pick these up wearing my phy maintainer hat, can u pls ack
it...

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
