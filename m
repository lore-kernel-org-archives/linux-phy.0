Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53C99C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMiZdhBpDUjnMO4ZZawJTw215R6b0E3TyvFUPRL7T5Q=; b=P8xd+b3Tgm1Fu6
	9jvoQy2idtpdGOJM8m1Oy8clLI9hqxOUJ5nepm6gs5rU6sJAB2MXqDetkqARiSLDqSGZLwNaCTsq7
	vy8hkOH+EyFa3mgL8+RrWnDg3QMqNZoZXSZuEIZogr8CSK1vfWlgDc9bcSnS7remmY70xU5iaE3kO
	8gjGL3/yPZxAUrHloFIUusseGUKzwOnaQRNmNetGeJjQEbj9GWDJzXJO0xRDwrwAlpbZHPHkxGraH
	zQisfk/X5pvgEyv80NgZ06yhNyncQpBDfI9U6+SEetfTu9N5KfO34+OJR033uKLPcMc6ZC14gX9h1
	+hkCCcodAWBNdVxax8vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDq6-0062HT-OE; Sat, 05 Nov 2022 07:43:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDq4-0062H0-Ep
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 07:43:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0439260A6A;
	Sat,  5 Nov 2022 07:43:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4EC9C433C1;
	Sat,  5 Nov 2022 07:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667634213;
	bh=FdBPvPyfNEsaKWxpsYXFShqySPy8bj/5cp/ZwJpEjv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=loMQ3prw/yAZ1nmMWo5DsILo48yKDdSTPkssKTwUNncjGOAXWlWo6RyJeFzAmLi1u
	 e4GKfxbQ99XFyRzw9UQP8NWeNhR+fF3bznOU3UKx+UYy5MB2BJJeF4lUHAmvSMgNO4
	 b/T0RMVf4IY1LkZPncTzcD6QHWqQtC1t7t+dNNi4zUBUi8ysOZDj9GTTZjTCZboynu
	 bk+Ctux+G4D46h8AujKo3kQNf3rMGeOma9G50uGAOwjHv8qL2l8s8hnVE+hCm5IW3/
	 AYhbq6c1ZVyco8fwfie68cJU+HXRvDuMgamaiwPFaqFOqtBQWYtlOhE+a/+GVlcTR4
	 ksa3P9pC3mNfQ==
Date: Sat, 5 Nov 2022 13:13:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: justinpopo6@gmail.com
Cc: alcooperx@gmail.com, kishon@ti.com, f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: Re: [PATCH 0/6] Various bug fixes/improvements for phy-brcm-usb
 driver
Message-ID: <Y2YUIaQdfJOs22iF@matsya>
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_004336_550875_A9A4821E 
X-CRM114-Status: UNSURE (   6.79  )
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

On 05-10-22, 14:30, justinpopo6@gmail.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> A few suspend/resume bug fixes with clocks and wake counter. Also improve
> port mode selection.

Pls order fixes first, that way they can go into -rc.

I have applied these, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
