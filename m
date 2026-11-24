Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4291E606A321
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 02:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=q7rY3elS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lhD05pIX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UswfLaCMuEkAuF7fzRV9X+zOFjwdmq8szNB9SuPZemU=; b=q7rY3elSkg7oOokYGPcfDec/bq
	k9mYyeFYQf55kww9OXcuSsZLPlj+a/UTABdObRcn8oWfLmZuoKFY0ljLulbZZzZXpKfPLo0l2RfA9
	BZVDXtJa0T/cmJSAwSwnzmPqNkgqNNwXfRQEovahb/5cEeaVweqt8lRtjRTIxyLSeUNRNTFPE2ePh
	gi+NnjyGhQDmbYnNZDtKlea1bpl3jwwnybrw+N4/3Gl4qtZHsEHQeTRwl1aBhOvuAxjiPkqxl8JX2
	tLpAardZHytlHrEO5ezVsY7BR9S9vBA7XqotXsMRHaALa5ezcTYPOhy48CwnK8A5BOXurJ7tE9V51
	uT07B23g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVg1A-00000005M1n-2T2M;
	Tue, 24 Nov 2026 02:12:24 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVg18-00000005M11-2fY2
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 02:12:23 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-3b3d125637aso777425a91.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 18:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795486341; x=1796091141; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DYJhcyx23MYrdnoVW3nJljPvokUxcXGxcoFSW0aOJ4Y=;
        b=lhD05pIXj8AeF/QHTPqQD7jJ4cXvsrpkf+dtsHCzgz6/h+JTvTBeIaaG0sIuPeynSD
         RrkdVzPWKx+RVVJtV+vdsAHh30p9T2dsM9Dg/2OY5EgkY/XLk3OdIzhwAmdAFeL4rMsh
         9JBv/6pJssxKOFLCixRBS6B8dvMhhPinKS9mWeg+ESsaU3CpxNo04JP7ey6fF2Stc8bF
         PZFaZS2dzzoSunAzWoRTXQUbxS8AAmBlbKZssijilOFYRYpczu/SysRyEh9ArlQ0Cdk8
         u8PmZ/BtL1Nnikvuvt+SipiTvoz9L0sxC6m7vfXKWy2LmbGiJ/72KAgSiWQGv3O4njK6
         IG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795486341; x=1796091141;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DYJhcyx23MYrdnoVW3nJljPvokUxcXGxcoFSW0aOJ4Y=;
        b=Cuo08Qp3wi+77FLjG5cF8Or+wREP5Dhwl1HGuxACdtSe3lq2HK6tijUeF3wQfCJuOw
         +QN2PeM0xslPN+LFZSRL9GwtuFALfgVBE0vzvfXAYrNH8Qw723ra8L6dT1EJ+cSxNExd
         Ia/W5aBKGyWZC4t1FzaxeIEy7Wu13ylgp4MIJyaXtveoPnrIi3IieljZF5tYZqMNAJT7
         edjkkQlJ6FgMxBaP09MtRKq76it1Ge+NLuls5iv7vVKtoIFNKvdTiM9pyJ61K4HJMiP3
         isXbv2i/ANUG1pjWlL4UwjUdZo9FqJJVokE55CQ1mp+YrD1x15t+ECsyYqHotnaS+zTv
         EBEQ==
X-Forwarded-Encrypted: i=1; AL+hErH4AWloYpywrCeNcwdIxCu8ugzgCBurkHRg/9Ho4sch6GldRHfVp3x+xWab4Q3p5xx8BPUbfWRH83A=@lists.infradead.org
X-Gm-Message-State: APuU4Z/sl/Tp/AYGae1L2P8Y9wyez+G313mtFTANYj51fpLFNAHuQxPx
	o2LhtzxvHezSIc5DFzUk2FaGfomFnub/K+IRTWQex/WmJM7pcbVVXxA0
X-Gm-Gg: AZFdTZc7EZqpT8qFbXs0j50hr/IpNc5F8xDPVX04nczrAaiOV+ptwaecTqhXXZLUYai
	2edPK8qu4d2NrMgHWx+wiO+TFVrmc9rM3mSwTctwonon3sMG7H0kwyud3NJrHBfA1VKTSGmwpvU
	hb1qJVXzs8BMztSySBZ5+y7cajpfVpiOuB+voqP9WctVk9ER4juXURMHOTlGHHea/UKL17tHPdI
	glFOfl9ywNNKyEN9pLzD5nhslICM3nTwatRSHf18ATy7UXPndtg1ZMUOeXacrYqOSyFdlh3x2Vh
	XpgjVez3kkEc6dE8Qg9IK+TsEgNdFMGoWIOCV4vhOajvxaar4u5b5aADTkQDB6oPpSXM+R3a/+Y
	m3OWfbZx6dxcDMsK8/LL3VdiQD9Di7+2XGflhhO5nufFkIz1Fway/jup4Z4O8b5WJPk3XKyIGKl
	mldtTQze/w3iatBN6H4JXWko8Ad9+Ohf/9rZqf262+TCA+H0PolvuycK+FgUhk2Bt41Hua0QJCg
	mTcxfCP4/wyyzMy1aHydTri2dKDazabnha/9DdMHA1ih28lIIN3RNwaNDN6acruQcOdpOKgPAwO
	outPK1uDgwSe5S+44uM1zq/Iow19XpeCYodkxJYxYSG8WB4M/0+ufuu62g==
X-Received: by 2002:a17:90b:4ec5:b0:3ac:b2e6:3181 with SMTP id 98e67ed59e1d1-3b41c9476d3mr12780728a91.37.1795486341377;
        Mon, 23 Nov 2026 18:12:21 -0800 (PST)
Received: from localhost ([2403:2c80:6::10a9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b48b41928esm9869004a91.9.2026.11.23.18.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 18:12:19 -0800 (PST)
Date: Tue, 24 Nov 2026 10:12:15 +0800
Message-ID: <3b4d214b53b64cd7941260875bbc88d7.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Ze Huang <ze.huang@oss.qualcomm.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Guodong Xu <docular.xu@gmail.com>, Icenowy Zheng <uwu@icenowy.me>,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Sarah Emery <sarah.emery@canonical.com>, Dmitry Baryshkov <lumag@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 00/17] drm/spacemit: add SpacemiT K3 display support
In-Reply-To: <DN2OGZ2JLHQ1.3PK0UZ3K1VYKF@oss.qualcomm.com>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <DN2OGZ2JLHQ1.3PK0UZ3K1VYKF@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_181222_687365_08986CDF 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Ze,

On Mon, 23 Nov 2026 22:59:10 +0800, Ze Huang wrote:
> Thanks for v3. I tested the series based on v7.4-rc1 on the K3 Pico-ITX
> with an external DisplayPort monitor.
>
> Modesetting and page flipping with modetest work at 1920x1080@144Hz,
> and kmscube renders correctly using Mesa softpipe.
>
> Tested-by: Ze Huang <ze.huang@oss.qualcomm.com>

Thanks for testing v3.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
