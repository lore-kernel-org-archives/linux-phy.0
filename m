Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AB6606AF83
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 15:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xMXZQ/rA;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=fqwqf.xyz header.i=@fqwqf.xyz header.a=rsa-sha256 header.s=resend header.b=WkEAmPbB;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amazonses.com header.i=@amazonses.com header.a=rsa-sha256 header.s=zh4gjftm6etwoq6afzugpky45synznly header.b=r0zLaYPc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDA4QcId6U2wx41INMXJ2fGmXDal46IGdawKAcRoPiA=; b=xMXZQ/rAMu99px
	2T33Gd9V5xVE7puf1RjRW+h7QgoE5oJtGr06xXWKL1EGD6Tsjtagfl8YqSnePiK31e17qnGe1mAID
	O3FKT8GV5rQmRUGcjatMkvBt6+6oULQAklLLoMquQ65/6bLsqzBgKyfQ8SnlN1BfuAag99nqfiezP
	rVEklXjDn38o5Bn5CEZ6ZLEFSqSwVyzdTTdB7dh0BcgTzItzrTG7SjOED+CbYHAGvmHwQHyPSrZHB
	KRk69okVHkswwDiwps2yQEv6PKlOVlm0oBXf6+JMDQjRU1Ngjzt4bAqUZOSrb2BIirke2aRwluijq
	fo24NQLSFn5ET1MpM4QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIpZt-00000007saX-00VE;
	Mon, 19 Oct 2026 15:47:09 +0000
Received: from e234-52.smtp-out.ap-northeast-1.amazonses.com ([23.251.234.52])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIpZr-00000007sXV-0a4w
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 15:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple; s=resend;
	d=fqwqf.xyz; t=1792424820;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type;
	bh=bA82C24dkHYIS6f3OgsgzKwCX4C0TKB5nurDcZQs6BU=;
	b=WkEAmPbBXn5sincNaWpZ/EZwEzUK+EcbGbNyd1y+nZU4XVBOqYdvhwo9HV0IWMvx
	UMgihLiP7BnYazFYubdP2oCExJp/LcdIRasW21YyEsMRZtqEt0brygiFc80Z9AJUD0u
	UZ2+FAv3azWXhEWg8HOlbzkN99i7ELMi1ct/L1hs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=zh4gjftm6etwoq6afzugpky45synznly; d=amazonses.com; t=1792424820;
	h=In-Reply-To:References:From:To:Cc:Subject:Message-ID:Content-Transfer-Encoding:Date:MIME-Version:Content-Type:Feedback-ID;
	bh=bA82C24dkHYIS6f3OgsgzKwCX4C0TKB5nurDcZQs6BU=;
	b=r0zLaYPcueOoQaA6xyNudF62tLU7HfLnOZlty4CbcAd+oI+hqN8aLMLW+RBjxI2k
	WEyicS8Nweq2nNV1YCkBOawh9wOzJBp5TmJydCAI/IUR/fIi1aWwnJsH0hCD4FaJ+Cd
	EDS+qJYWjdHcB0vEFy4fPu1Uejqs9xpTb54G2JWc=
In-Reply-To: <sashiko-outbox-168888@kernel.org>
References: <sashiko-outbox-168888@kernel.org>
X-Mailer: git-send-email 2.53.0
From: Jizhou Tong <fqwqf@fqwqf.xyz>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, 
	linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, sashiko-reviews@lists.linux.dev
Subject: Re: [RFC PATCH v2] phy: qcom-mipi-csi2: round the requested settle
  interval up
Message-ID: <010601a154d83d84-0b2dea8c-14b7-477b-b1ec-3f44b0b55ad4-000000@ap-northeast-1.amazonses.com>
Date: Mon, 19 Oct 2026 15:47:00 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Feedback-ID: :1.ap-northeast-1.6BGMgStFQE7EJYq5syaCRzdneEHVt/+DAaGDrqUmDs9QLO4/SllUBZ3fHvnZ8rcAX/3IjUyTRgi5JFZsWrikFHwlPJqCkqEMlxDFM4JXh+ycxH/J5Tudg5bGdz6h4331g1L1EFsGR8kuYNfGLsrxz4Nym4YXoPcZxeVkrHry4Zx21n8vEVLEjc7s+OCM8PU9:1.ap-northeast-1.DTXDV/V9GPBWozcllKo8innbNB2qs2O/3F8XZSzd9ZM=:AmazonSES
X-SES-Outgoing: 2026.10.19-23.251.234.52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_084707_336906_465578B9 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
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
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,BULK_RE_SUSP_NTLD,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FROM_SUSPICIOUS_NTLD,HEADER_FROM_DIFFERENT_DOMAINS,HK_RANDOM_FROM,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_ZEN_BLOCKED_OPENDNS,
	SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bryan,

I checked the zero-count case raised by Sashiko against media-next
(d7e7bca71698) and the rounding patch. Both the base driver and the
patched driver return zero when the calculated interval is exactly
six integer timer periods, and lanes_enable() rejects it with -ENODEV.

For example, link_freq = 600000000 Hz and timer_clk_rate = 66666666 Hz
produce a 90000 ps interval and a 15000 ps integer timer period. The
helper returns zero before and after the patch. This is a software
boundary case, not a clock configuration I have tested on hardware.

Is a programmed settle count of zero valid on the supported PHYs, or
is rejecting it intentional? If it is valid, the helper would need to
distinguish it from an unrepresentable interval, with the caller checking
for an error separately.

The rounding RFC preserves the existing zero-count handling. I would
keep any change to that hardware policy separate from the rounding fix.

Best regards,
Jizhou Tong

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
