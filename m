Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B96C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjjvz9HAb2zXM4e9QxFWQB+1brkyBn95iJhlujiFs5E=; b=UUjxix5URLSzvj
	U5ZcZNC9U0SoyV0X6v07rlbSokU6gOD1x694s6ZyOtEosKE8U4O9dUTYlRxVuhZzrWzAYVe87DWql
	pVOYkr/JDaGaWVWnBHptBQsDZLO4ZgaWfMLJ7s5wo4HgJMaw/0oDTrsWFMfyHO3CzUzghpwzhRbEF
	7zxg1NPKir9U6BXGgBIiHzexAxQ/mXsCAZPvyEq0ZLSeW0dhmfGJzsx3o8FiMG5tO/T8QqcCccfUz
	bCLyVcL2DK+oWMaAgXqRQm8HIels3S8kk+IHGmzgrOpJwkPegkQnPEqiZjo+axQrVySG0PxDiqQHv
	0mQMqFeBpgdtAM8wQyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIr4-007Rcc-Rb; Mon, 17 Oct 2022 05:40:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIr1-007RZE-RO
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 05:40:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 41DF560F30
	for <linux-phy@lists.infradead.org>; Mon, 17 Oct 2022 05:39:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2935C433C1;
	Mon, 17 Oct 2022 05:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665985198;
	bh=nQpWioaLzb9aE0GIgK/k8NqWcTPKAfl43vnaIeeoDMc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1HpwzKE/xsQo7cMEJ6fEdiB832lOrdVg6ELOrZkNydo6oyFJ5v+VeZP1Y9ffM2eJ
	 cohE0ieJ3VbJh0ojTi3IZOuS5V5/DPIEO7FLKgJlVLErUbEiVNgyMiNtQ48jDMyqEX
	 JmrMagTxPKni0+1QXvrkBqMwTu6QDrx0EoekLDa2KSRtw3Pdg7qTnDP/qEGe9BfhC3
	 pQrm/UFlnpYqJV2oOdil7uTv7mVKOqxRcIoLwo5nbY1nwOb54MTE+K5GpvDT/OHgZT
	 iL1XM6NxtDRsV6f1PAtiPWe1RfjdS1VepUwibuMqLwyr5spVayeQO6NCSoFanZFIJx
	 FeLa0HLk/gZWw==
Date: Mon, 17 Oct 2022 11:09:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <Y0zqqvs91ByWcH4K@matsya>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
 <Yy6uaaZUbZsBSqrw@matsya>
 <20220924083127.oht57ivvsr4obrjr@pali>
 <20220930234541.hsf6ryketcdukpia@pali>
 <Y0OrZ8d4GBC0Cp8q@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y0OrZ8d4GBC0Cp8q@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_223959_945188_8824BF91 
X-CRM114-Status: GOOD (  10.49  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10-10-22, 10:49, Vinod Koul wrote:
> On 01-10-22, 01:45, Pali Roh=E1r wrote:
> > On Saturday 24 September 2022 10:31:27 Pali Roh=E1r wrote:

> > =

> > Vinod, could you describe a bit more what is needed to update? Because
> > this patch fixes regression - USB 3.0 support on Turris Mox board.
> =

> Sorry to have missed this...
> =

> Somehow I misunderstood that the USB 3.0 was not working and log needs
> update... I will apply this once merge window closes

Applied now, thanks

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
