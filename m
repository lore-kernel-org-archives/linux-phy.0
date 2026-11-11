Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29156606A324
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 10:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MdqYSclv;
	dkim=pass (1024-bit key, unprotected) header.d=cmss.chinamobile.com header.i=@cmss.chinamobile.com header.a=rsa-sha256 header.s=default header.b=dPEmse1e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3VmVFCRKVYLOHa9P7TPFi3Oyf2N8XQ+2SJ9+jX3W4R4=; b=MdqYSclvJ4pFZ3V7vB6ptF7LJP
	XOvBpIHRDoeJDU0Dre7B2NDnxoSauE3thu1POhjF3kF8UQqFX1uZFnCFyHv3mAPIrvpA6sWdLt0p1
	TmgGfzZuMSivA94fxvLDPUU4M3/HjkSmppg7E10dNsJXqWuO5/+96oWUxdkTaCY71cz7/Nz/YSNaf
	TJlwkubt0covID3SJZi5zFohirQGUVyOzdBO2nNFvU/yt4QrJRTiPvG8hD0hocpw2ORVaZY53bbEY
	2S0Rg5CCaHhA8rVPnKloMMS1KsaFshsDbD4L0x/W2XTWzQkjZiPEOZeU0EipOoucP0SUn82DnJ2Dc
	6JWeQP3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5wm-00000006OOb-39yf;
	Wed, 11 Nov 2026 10:52:56 +0000
Received: from cmccmta2.chinamobile.com ([111.22.67.135])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5wj-00000006OO5-2g64
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 10:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cmss.chinamobile.com; s=default; l=0;
	h=from:subject:message-id:to:cc:mime-version;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	b=dPEmse1eE9+YROYuuQDfN0hk59PesQAQSn1s0KO0+F2Ir2Z3n0ZEGI4RiqGKHQwuTlwY54leUO3Qk
	 1vJd6tn0aS/cA5a+/H/sverXlsvmBgohhlIvPWyP5lnnAnIBKEsV8nEVhpBVbJNehEtnkmcx2j9Yi2
	 BjRlpWP6OmzqLHNk=
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from spf.mail.chinamobile.com (unknown[10.188.0.87])
	by rmmx-syy-dmz-app03-12003 (RichMail) with SMTP id 2ee36af448fbe41-a470b;
	Wed, 11 Nov 2026 18:52:43 +0800 (CST)
X-RM-TRANSID: 2ee36af448fbe41-a470b
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [198.18.0.47] (unknown[223.108.79.101])
	by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee36af448fbc44-d8e49;
	Wed, 11 Nov 2026 18:52:43 +0800 (CST)
X-RM-TRANSID: 2ee36af448fbc44-d8e49
From: Xia Yan <yanxia@cmss.chinamobile.com>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, yana06070@163.com
Subject: Re: [PATCH] phy: hisilicon: fix UTMI reset leaks in INNO USB2 PHY
Date: Wed, 11 Nov 2026 18:51:00 +0800
Message-ID: <20261111105100.232587-1-yanxia@cmss.chinamobile.com>
In-Reply-To: <dbc39e63b74e1df9dfb134b6100a8deb0ba6afcd.camel@pengutronix.de>
References: <20261111085942.159625-1-yanxia@cmss.chinamobile.com>
 <dbc39e63b74e1df9dfb134b6100a8deb0ba6afcd.camel@pengutronix.de>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_025254_203937_AB39FBCD 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Philipp,

Thanks for the review.

Regarding your suggestion about a from_child equivalent, I checked
the reset core after your reply. The existing devm reset-control
helpers don't provide a way to obtain a reset control from an
explicit child device node. I agree that such a helper would be
useful.

Do you have a particular API design in mind? If you're not already
planning to work on this, I'd be happy to study the reset core and
explore a separate follow-up patch. No timeline yet.

For the current fix, I plan to keep the change self-contained in
this driver.

Best regards,
Xia Yan



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
