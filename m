Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2CBCA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXvJSzypmZ5Bgqd9IOvTjPWZmqXZlVZLWOEKNW1PBus=; b=j8U4gBCEn23wgc
	gNQ552ph5YvSg1Whn9LWoVTkzE2u7DibUkpi2C4x2KEA/z8K5MDYbVEslNq7qjXFOmK4H8Bk4RihE
	d/kmOMVOClXKBH5iGy30QQi753zwmkUImSzNqEH/+OzskoJ31UqogAMcXlBs+q4C3xb60LmSj/HDo
	DXAX3rjjfScA9i5d3MVRQudp0Hq+RWgzQJ/xHfowZSznr1FjFIofW652BkFKQGRjLsDhGGtpDu5Vo
	QLVJuIiK60OaY97z6Njlrz8ZFSN4h1wAFW+wKbU616ecqJMcSpjzZBat1HRSbgo/JeXnTmc1FjbD7
	0hF+uIR3wn91KbxqI94Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopnA-0000000Ev8M-1z95;
	Wed, 20 Aug 2025 20:52:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomDa-0000000ETNh-2iSj
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:03:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 322CB5C697F;
	Wed, 20 Aug 2025 17:03:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48AF4C4CEE7;
	Wed, 20 Aug 2025 17:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709402;
	bh=SElAD61LmEC7ET4fpxDnqoBXRvOTFLxIg4jB50/P65k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eNlWh2YpJZPhyyLx498h2TO6tswQhXtvPVHFjQRkeaCr52XNN4goQti+2t5h7mE9+
	 Oef9XQB426oNQywLxIXFJfo0eWv8UjFyjSQCZlrS7l2QBhOmqg9DpCHzd0KjePZYl3
	 L0Femuwq5Z3XGTnpZCF1fSLHaZSB8ZJwLtBGNVRrLdHyiZ9ribJ+Tw2enofOfE460A
	 83eg+Wzui0gjQZ0JZ9ISJ9mXDQ2yNUQR10Y9F78SJDZWRRfo0T6XvbO9P7Z1MBt+JV
	 fRhsSwlV9un+f5M19o0g7cw/o6C1x4m/y/9bNyrsRfzu/ZSP1ov1VS6wr8J2dHUG2t
	 xw7aTxN1EA7eA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, aric.pzqi@ingenic.com, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Akhilesh Patil <akhilesh@ee.iitb.ac.in>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 akhileshpatilvnit@gmail.com, skhan@linuxfoundation.org
In-Reply-To: <aIIMW971BYsIk4As@bhairav-test.ee.iitb.ac.in>
References: <aIIMW971BYsIk4As@bhairav-test.ee.iitb.ac.in>
Subject: Re: [PATCH] phy: ingenic: use core driver model helper to handle
 probe errors
Message-Id: <175570939883.66459.13384631190910835404.b4-ty@kernel.org>
Date: Wed, 20 Aug 2025 22:33:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_100322_735621_089FAB3D 
X-CRM114-Status: UNSURE (   4.91  )
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


On Thu, 24 Jul 2025 16:05:07 +0530, Akhilesh Patil wrote:
> Use core driver model helper dev_err_probe() defined at
> drivers/base/core.c in driver probe path to propagate errors.
> standardize and improve the code of deferred probe error handling
> using this helper for ingenic usb phy driver.
> Inspired by,
> commit a787e5400a1ce ("driver core: add device probe log helper")
> 
> [...]

Applied, thanks!

[1/1] phy: ingenic: use core driver model helper to handle probe errors
      commit: 38404274bbee1f0001a490c0dc98aac32a4d7c9d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
