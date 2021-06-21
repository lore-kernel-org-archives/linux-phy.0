Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09E02C49EA2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 06:34:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C83C861003
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 06:34:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C83C861003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0TjsEICiYTN+UlOzlXucFaJgqWXJY40RQDobDuh2Pw=; b=C/IJbRqz36umtj
	Jomg5MVvKMrYcWYFXr8O6pS6ODxYPCCViBsBl979iFDqBHrjylvOSx0dabmT6X5wFD5sbHGXCjEyM
	BYW/SJSJ0ys+1Q+r71TbxMl9efvRkBQSKcuxykLc33DriaL4Zh52pkXUYBoKGQ3IUAoLcZf1JoNLL
	JAVYiNvOECuyjN6TdJmKLwNmCwTqdmJDsqqYiy9Op5ipF19sDfDzKF3c5knRWlYFXFdRuvVYXTVZr
	NMSV7hPhJ4mI7RGg01R+eF9+iOExj3nICIhZjO73NA7NtorA6kC0kaLSPeMQdntaaaxcCeU93GMth
	RJfmoHZswkY8bJguGRKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvDVx-002KhV-Ba; Mon, 21 Jun 2021 06:34:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvDVu-002Kgq-OF
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 06:34:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7EA8661002;
 Mon, 21 Jun 2021 06:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624257270;
 bh=J2UkjNiDVlVLQCJc+TT6Np0y26TvHkmM1b5v6axIous=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kmx6UT26l9lheOTOv4SaHpTyau3Qad/NwftoNAxG7GI/0N3d+t+V0Ci5gY5rQ8mSw
 bB7Liuut68rsh5j9mRkj4KJfVbfSclSH4wK4RiP3H2s9CQD0qsNnC1BulTaAtWk+L7
 F9E4eUWBtSMZn6qgVo4VDX/IG22dT6QfyI8z5vo67e6GblkYrI3duZpGe22kFjUi3p
 vHIkHYBKnhBX2NBzm8muvisi15f5sIpHDpNCAbb1CRI+m/g7kAIrVBGJ123xF8ssJp
 hfeZe/FWnVY39mlwHK3Yqrk94GoJGLq0BneeLwPXZojrRR+GcAohYZpY4iDSmgDZkT
 cijKiU26z1KbQ==
Date: Mon, 21 Jun 2021 12:04:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: kishon@ti.com, tony@atomide.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: ti: dm816x: Fix the error handling path in
 'dm816x_usb_phy_probe()
Message-ID: <YNAy8hlj3upzshnD@vkoul-mobl>
References: <ac5136881f6bdec50be19b3bf73b3bc1b15ef1f1.1622898974.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac5136881f6bdec50be19b3bf73b3bc1b15ef1f1.1622898974.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_233430_866796_3D270B48 
X-CRM114-Status: UNSURE (   4.46  )
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

On 05-06-21, 15:17, Christophe JAILLET wrote:
> Add an error handling path in the probe to release some resources, as
> already done in the remove function.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
