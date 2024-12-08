Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F504E77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsnyGySeRu3zkMZFW9dafQzBiUorHP17lJJdV6Vn3vE=; b=VtA2wwIZHcUug1
	kXcW042Nz50LwY0PRPOWaypQn1c2lqn/T7eIqpEqN9ggcxgh74tcIq3wE0d3B1FNgh6At4hueWb0e
	o8th50/I50mj5xSdpdB3zaGMyK0KRMIVXpuxzuj3XsM71mruBBDG3/DYPwpUojGXm34RhUY9SGGPW
	4qlX4GNJ98vBUw9gxTA5YDSB5LkyIb/hGzNafResSvpkivf6fcOSvixac28qtGzE1+MecHgr9fRVP
	q/se97ICVDfaQ001DlJHogSvmXPoeKtI1ul9zm2VXqnhJyn7r1w7XqgeDPGw9bKPwFF0p6im8AoYt
	DrkbGQa1DYx1Fa6WLRCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKjD-00000005cVZ-0lA0;
	Sun, 08 Dec 2024 17:05:55 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKga-00000005brB-19i9
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:03:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E5ADCA40C45;
	Sun,  8 Dec 2024 17:01:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C46DC4CED2;
	Sun,  8 Dec 2024 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677391;
	bh=Lnz2aWDHGkRniarfLIMsg+D6EF3yAhHrAHetguznFNg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gdHZaAoS57Tbn9u04xu8VltLKWm9ujB5ZbP0HWPb7UEOvCwrgJYOKf+tNTwh3KZvA
	 kRipx8xQlojkgr8gnCikhbd1twGNRAT3GZLsBio3v4BIGQfKrjWaYdwkGEiq0kiBRg
	 PfABS2n0d4W65eFpq6dUYjaN4OxOd1IG2DC9Nvu/0rb5H0ynkp8nR/goi/+yakqywT
	 cx79oGPHkKiNm5597j7ic7OIdBoBKaMd+m7iwuF4gsRFbfrmNjEwcSxwfSEK//BwZs
	 nEbZkjYOS0uAAgKVZOQEpABTQBK+/f2acdeDyDqKNIBn8t/1D0UpTSsfTkNOljIQDd
	 /bKsEnTvQc3Sg==
From: Vinod Koul <vkoul@kernel.org>
To: konstantin@linuxfoundation.org, linux-kernel@vger.kernel.org, 
 keith zhao <keith.zhao@starfivetech.com>
Cc: helpdesk@kernel.org, linux-phy@lists.infradead.org, 
 jack.zhu@starfivetech.com, chensy123@21cn.com
In-Reply-To: <20241120085609.199586-1-keith.zhao@starfivetech.com>
References: <20241120085609.199586-1-keith.zhao@starfivetech.com>
Subject: Re: (subset) [PATCH] MAINTAINERS: Remove Shengyang as JH7110 DPHY
 maintainer
Message-Id: <173367738866.1042266.114125862388608986.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:33:08 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090312_376160_D4359A69 
X-CRM114-Status: UNSURE (   3.41  )
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


On Wed, 20 Nov 2024 16:56:09 +0800, keith zhao wrote:
> Shengyang has stepped away from his duty,
> and this email is no longer valid, so removing
> the email from MAINTAINERS.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: Remove Shengyang as JH7110 DPHY maintainer
      commit: ea68f5c1b85462704b1939e547f9858cca5fcc0d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
