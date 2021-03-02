Return-Path: <SRS0=5tgH=IB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28764C433E0
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 20:34:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9046864F09
	for <linux-phy@archiver.kernel.org>; Wed,  3 Mar 2021 20:34:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9046864F09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pTedNJJrB3wD/iE/hsjG3ZPDi69dJrOnQzruelkyKIk=; b=Kykuesd4+G+9TqV14/zoMXy7+
	FOODbNiPHf77CdFa71SpX2PRhbRgYce4Hc/iYuuE0oU4f1HiTm7jACWWvJ97t3NJAqNrerYcQGrOH
	9ISbNDo2fkL4n2qYg4wxxWBG5lEgQjuQTEWuaI0Cf6GvR0NorLM8NVmG21MaDNH5o5WkG8LMkFYTL
	VdwjDniNxUaQ6l1h6z1JNr6lqOZFmb++veOP+lIAKj/frYeEhmM0MhNm/3PEPgwByuKp3SrcCdnuN
	7v/JMY31n9w/aXDlPOUF5KgZkNqyZXA/iMQrL+wjYgsLQp+3IClPKCKSrs9a4QkHgdh6fHZo6MEA/
	UVEkI0YNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHYC6-006RC6-4R; Wed, 03 Mar 2021 20:34:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT6D-005IzO-GJ
 for linux-phy@desiato.infradead.org; Wed, 03 Mar 2021 15:07:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nrl+4sLxuA7NwNupoDJ50wcFAB++uLrzLa0rj01TrJY=; b=YFJzyp6jJQqn6oX+9ZrmIbnqi7
 aimnkpQdLLmrVZ5VW4AH8Xj1pJC5YJRof6YJ2m0a1JxOT4iKUb+z3WEeEkpmBGPVua3MiOmejrfkk
 eCFCu37VGbUOS/OUcI+vQGJRQcd/qONo0zncFO98ajTM/co0gpgrMl0K1xlQvrSk+7/5OAcXmX/YC
 b985LRPSzO5x23D5BpOtVi781CIoDdsvMdNX52aWUUvZuwqwcw3/9dzvt6mTdLFSX+9qxwi8loCb9
 4IF4xLyNpP6zwma2NTmpOAQ/qWsz9eWeH03IdaAfoDqDosrMQhU9aCecaC+1ybIUua3hPW91uRqGP
 TMnG4XOw==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH490-00H6Gt-0M
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 12:28:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 07BE764F7A;
 Tue,  2 Mar 2021 12:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614688129;
 bh=A5H4O3r7D9MypgFZD+4PBqBdA7HmqquEKOppYxkCEGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PWj1pUq9VGpVf4Y4UgUVTLskdBcNVjdMJOlXR+n1OTowYT0cUtUO2JE3rqI7sBq/r
 ItRQJi5aM/l91SqdjSb+T80YJn2TFNT6VxLqoG14AtVIf0wpXfAZ5AwjmU3d3DBV9B
 KqLDJAD37E1EJqWp8VpiwlSN/pQ7A/MjVd8RLfUJG4zMNSwfOQSvHomOtf1cGywuHS
 /Z50Kr6obxVdSRQ9A4l6QNSR+K3wl5xbN7QSlt7OatwaIPHHOA2alk/S262QoniOtN
 mCPpxRPfwR5Ti6NNyy0s7Fmmnup1XWEfN3CDZaxZ0EQcqdMY/cNssIgKEWKCJyzD9c
 cSw/2xUiBvpLQ==
Date: Tue, 2 Mar 2021 17:58:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: kishon@ti.com, linux-phy@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, neil@brown.name
Subject: Re: [PATCH] phy: ralink: phy-mt7621-pci: fix XTAL bitmask
Message-ID: <YD4vfDrvdlduVUQL@vkoul-mobl>
References: <20210302105412.16221-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302105412.16221-1-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_122855_910220_DD7FA587 
X-CRM114-Status: UNSURE (   4.36  )
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

On 02-03-21, 11:54, Sergio Paracuellos wrote:
> When this was rewriten to get mainlined and start to
> use 'linux/bitfield.h' headers, XTAL_MASK was wrong.
> It must mask three bits but only two were used. Hence
> properly fix it to make things work.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
