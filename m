Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB43CC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 03:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/Cewp6MKJVXKzNoK4IMAtiXsfNUnSh6dop1CFOdocg=; b=njwCzf1l2dejdT
	fnEKAOg+9SfyZrmM4EFsRmTTG+RF0YjB0SasZ6qOJenxV6ZLjFE9oDF+iGk311OyMUMkQoFYQ8o0N
	mVTORpzuKdPrHOiVEXlzdH4fNqoGlI0zN6xymc6b4kELaqtDIiXpuFEAoh5Mac9UEc8V9xB4ojx7G
	dbB6IYz/dmowhPvoQLXUWIeMIMMvM+LV/QONqoUmdCqQUL2nXhqVqhSfiBZbdUcU645cGYZoriJdW
	etsxd0RzfkagtQaciSNTw1MI1wDEyd+4PcOTvont+vpIo69GcuodQBIMh+xIucGbMkv6hoXclB2xQ
	tKkjUcGiGOVAk9mapZtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1munhQ-00B30J-Sk; Wed, 08 Dec 2021 03:32:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1munMq-00AtjP-IS
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 03:11:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0BB61B81EB2;
 Wed,  8 Dec 2021 03:11:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CA0DC341C5;
 Wed,  8 Dec 2021 03:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638933095;
 bh=dq1wkqYtFs01LBkSbcbvRu4cVFC9ChXb2E13JklqHQQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=svbSVpGd5Eb3SInmX5+tv4gbfjjK3ye1datFxqV3inbRbJV2avKw63K33ocAoHJ4t
 tSnRJBZJ4Je0bWnjuJaWAZp0JBRAW791GxcSoYmz7klJV86lxABFccDyAJC4q8TheQ
 6HuLr3jmO/E8bQ8Qd2YK59nfsiQvspVlfp5hTTGyyaJCPc/fXNdponqBBtuJfGapkv
 pzH18bFLz8Jh6fMiP73wG7KBbApk67YFPJGXjPLUPFVXI5Zq4KSk0cBXtygI3Gol8i
 kHVAz6WFfNXZs/gaA72WwdhwfGqXr2LmGf7y+ePsGnE8Ng2xHTtzDKwGzqRx92Ah05
 xo/0mTJ/1E3eQ==
Date: Wed, 8 Dec 2021 04:11:30 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, Kishon
 Vijay Abraham I <kishon@ti.com>, pali@kernel.org, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: Re: [PATCH phy v2 3/6] arm64: dts: marvell: armada-37xx: Add xtal
 clock to comphy node
Message-ID: <20211208041130.5959aa11@thinkpad>
In-Reply-To: <20211208024038.8797-4-kabel@kernel.org>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-4-kabel@kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_191140_811971_2AC1B1CD 
X-CRM114-Status: UNSURE (   6.39  )
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

Hello Gregory,

could you Ack this patch?

Thanks.

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
