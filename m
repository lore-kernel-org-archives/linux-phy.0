Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E203C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 15:42:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 459EA6101D
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 15:42:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 459EA6101D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E5IkKMsP3RuGj4ZseQXtH4/g5bhu0tyaq+5kTLLC8Ag=; b=USc8bwSIlKf6Evq3bpUOMN3Gw
	3eTq1TmzCEV5hcde7Wl12B7OXPuUrf7Bg/kbFwkn0gFjUYY7s+YC+ydTskTZc+Cih146z0Mjaj/K2
	IHjSEhzhN57j77zvFQLdF1OX2cVCipQUMxQr1BpjDorXJOHJ5WRy1e9jNHN47OO/JVUnbUqJRhqYj
	2GqkbJw+WK9DMdrYIM1l2TZExMghySy5AWixpJXyZGMvyuLtrD9t+5IMOo9LPz4WKOG++fIXL0lwj
	6FYeUPtSPtdslIpTuOMIN5P/+xF3OzqYuoi/o6ncfPRa7DQOrr4rjWFbLmE66LW8qfBRdM8yWRn/x
	qN4xQ1yQQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRcyw-006wme-QE; Wed, 31 Mar 2021 15:42:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRcyt-006wly-MA
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 15:42:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 942A960249;
 Wed, 31 Mar 2021 15:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617205324;
 bh=Dwu4ScXJLPyvkhqWCuKj4QrYbuGjG6upskCuMH97kBc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HsSRWEdjDQeqseFojHNmRzluFhqmmu7/IioIp6qOKgNPB+HG7ONrWc9x6Qbbc5zTN
 8q6LmCWFzYnqEwJ2xKmXUWpKZow1V2UvVyQPXOvKfsgDbIL22O2MshQQxn2FBPgUJN
 4STXkbGY0hELs1Eto1ofr5BeXKorSFDpBUEmN+Iyv9TpxKoqh+5AvWl7l/znjZSIBq
 u638vAujWpdJyAWIiUghFwS/SlkIFBVUz48bNQqUzcv7UHhwKysXhtUhCDScHY3PIg
 FacZ0NoigeL7LKrhW5K7MrJka5Z7g/cdKTgU6ksS2cdMp2SQWsK+FIoZyutBP6mtbM
 JwzjIe3B0QxqQ==
Date: Wed, 31 Mar 2021 21:11:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH] phy: ti: j721e-wiz: Configure 'p_standard_mode' only for
 DP/QSGMII
Message-ID: <YGSYR0UNCYqj4jZx@vkoul-mobl.Dlink>
References: <20210331131417.15596-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210331131417.15596-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_164207_917765_EF02E0DC 
X-CRM114-Status: UNSURE (   5.14  )
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

On 31-03-21, 18:44, Kishon Vijay Abraham I wrote:
> Configure 'p_standard_mode' only for DP/QSGMII as for other modes
> it's not used as per the programming sequence. Add "continue" in the
> else to prevent random value from being written to p_standard_mode.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
