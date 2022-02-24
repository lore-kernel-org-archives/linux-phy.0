Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 878B1C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 15:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zt8RENmqS8xZs6aOd2cqt3cP49+0FwhzdKMb504Wn9Y=; b=Pp0gKJoQodtqn6
	cUuK15bKgmht9yJagXUdBUajBw8bVTyb7qVcgvOvckQ8/nF+k/2t0Q1gVpHb7N9tgEG/Aqz0RcY4r
	MKdBwKxvQwBw6sUKZcQ5CaiZBSeniiMf6CAsyJarcYixUZaBvrvVqtRAh81yuRaw4XtF0G0yZqjZC
	zpCwbH7N5V4vNRF99X6gGJqNr3lj0Fih7a9d+F5HToZAuu8KnGKFCCZQWEyLKb1lCzREdJvOetR/6
	GvvdQsocAFXUCZ6H4I9QRh9Km6NwLv4JZOJDpeJ9DmxB4DHSRDO6Cl1TKQp+weZ5fUo6D7Uj6FV+4
	KExm5tJYUMeL6opbUJPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNGBg-001LfN-T6; Thu, 24 Feb 2022 15:37:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNGBd-001Lez-DH
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 15:37:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 71A2BB826E8;
 Thu, 24 Feb 2022 15:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1636BC340E9;
 Thu, 24 Feb 2022 15:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645717062;
 bh=QTjQ2k7EhsLUHtwRotwO1+VYfp0IpRFIZtbDrLj2Ths=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JOjrMuaG7r0F03ujWipBmNkA31JD+Lt67wsmkcAUkBp3OUiVvLE+WJzHD7SujcqoL
 lji/SHg6VvqWIBma0HHUOk33Xyxj2jZwAWgdFLVGZtXV/TWw/RLmGeYyphhsFc9L4M
 ZljvZqhxsFkvB4HQbcOxE+dI8tz6TWdJNik19FqTudWEC22VD2qfN1XC5b6PDOktiG
 1buvngSaZo2vopvC0Bapi2fBrHUcMLsoYmEUXVztm6jwCMY27uwiqZQKsA5jF4rbQ5
 62eYO3uthWcOCab+eG0XjXMChaDmr2f2CIMJnebB6VzQqQpa3pDUHKl5dooVF4934Z
 qxkLmArmYSsEg==
Date: Thu, 24 Feb 2022 16:37:38 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org
Subject: Re: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Message-ID: <20220224163738.7da04b51@dellmb>
In-Reply-To: <6082e3a5-aaf7-f876-b1ec-c6627fba1503@kernel.dk>
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-4-kabel@kernel.org>
 <20220224161324.6ac0061c@dellmb>
 <6082e3a5-aaf7-f876-b1ec-c6627fba1503@kernel.dk>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_073745_671448_881EB322 
X-CRM114-Status: GOOD (  13.19  )
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

On Thu, 24 Feb 2022 08:14:58 -0700
Jens Axboe <axboe@kernel.dk> wrote:

> On 2/24/22 8:13 AM, Marek Beh?n wrote:
> > Dear Jens,
> > 
> > could you please send Ack for this patch?
> > https://lore.kernel.org/linux-phy/20220203214444.1508-4-kabel@kernel.org/
> > 
> > It is a revert of another patch that was added because of potential
> > problems in comphy driver, and these are now solved by this series, but
> > Vinod says he can apply the ATA patch but he needs your Ack.  
> 
> I'm not maintaining libata anymore, adding Damien who's the new
> maintainer. Leaving email below.

Dear Damien,
could you look at this revert and give your Ack? See the quoted message
for Jens.

Thanks.

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
