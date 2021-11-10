Return-Path: <SRS0=44yZ=P5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4204AC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 10 Nov 2021 19:45:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F20C61159
	for <linux-phy@archiver.kernel.org>; Wed, 10 Nov 2021 19:45:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0F20C61159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjTfOjMaHs0pY4sPbOW4j9K6a2qh8rcoHdyI1pgCycI=; b=nwoYUsZTqbigXH
	v6wTG5VF35Gjq0M1v0Kp4ebZJLMPqRYM0hvVUtvivtpUmiYXTZ7gKNH4uVn48wWCMlCMn6PUZWBnY
	l4r+578ujIxozDaKqe+uunvcEJaC5yBPHOd6srndMM2fVxDzHqFs2DyoVudcIScgAa+5Rll+Dg6F5
	97aCweJ+sQW/yFMNFMg4aAVyRKu1V1jcCUQyBaobv7/rl1ur7pIHb/p+4h8o6mw8PcaXZ/1Tiil0N
	UTAn2C/p8rGkbwO549RIvL5O71SDMh30Vle6OSqQsZK/ewHgnXlGfG61nTuca+eiNzv2xXV7tDJBQ
	9e5LlWy3dmTzZaeKfYVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mktX2-006Bml-I8; Wed, 10 Nov 2021 19:45:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mktWz-006BlH-JJ
 for linux-phy@lists.infradead.org; Wed, 10 Nov 2021 19:45:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA89361106;
 Wed, 10 Nov 2021 19:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636573512;
 bh=lCMVFrWs2pqKBwgVHeDo63j1cexn6AwkfVk+cp16e/E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Yrz1TkMIptmftiaIc1HLpVZjxQIHGXCyIY//qO5SZHbGfL7ysWOtonwPOfv6HwYVt
 F6QuSpW78YDOpjsYA3WYNQBX+N8t+ZZXJ/CypU3a5FCYEuBVb7k3GXjMlvxQtxGFiH
 Y4VxMZEvxe+h6pbRSdMTq/gq3oNBqxBiPFE7fijIUJ3mv1j9D9MDbnQSrjIpabj7kP
 SM5lEcZugOSJmQYe2dvMub1QtCregVTlV2kCty9RuNBWNapF94mLvwwMOcYaX2C+UU
 s/HY7tg2Hh5WUNVlraLYMuLav+h/xEqPATVEl+ncc2PK5lSJvEl7DAA6GZE18sPVxp
 kFLatZCUCvZQg==
Date: Wed, 10 Nov 2021 20:45:08 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 pali@kernel.org
Subject: Re: [PATCH phy 0/6] Armada 3720 comphy native implementation
Message-ID: <20211110204508.429a0441@thinkpad>
In-Reply-To: <20211028184242.22105-1-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211110_114513_694201_8D382301 
X-CRM114-Status: UNSURE (   5.10  )
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

Hello Kishon,

since Miquel gave his Ack for this series, I would like to ask whether
we could get this merged for 5.16. Theoretically it could still go in.
Or do we still need to wait for Gregory's Ack?

Thanks.

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
