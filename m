Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF268C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 11:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXN73XlJlM1w5D7T1z+ZpDIzg8ea7ByTZ9saQKORk6Y=; b=1rgKGQQmJElB84
	qVmrkYILxgLFVYkQ9KRXDf7l+2E0RZeLb6SdzIfvWxWCRWUVSiG2p3qr1MwXIQ4WsK36iQz5qwYh/
	A78LUONa3+LdKpmtXxSnlEyCMJ1ktk+ANbtkiZZTQbV3u9s3xQ9PEUKQPKOuxN6tw3Ng1D11j6Aob
	KkoOQYHAiifd7Z7+yTJssKkoG4sfNzkPBMfDXKvKvVEbVbiCmeoqwxRXyQ8YjDpKwEhj4LG2Al0Qu
	twrECTQMUdlcjQea+oTsA6Jn/MZNafsrDrYrm5Uo4iwijHbtZ/S0+1Z0dIwDG+4Nd1NOs77P+OGTo
	45zUlGAb3i8cxfvxhTjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neaw4-000jIa-39; Wed, 13 Apr 2022 11:13:20 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neaw1-000jHZ-Ex
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 11:13:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id C7CAF1B7B16E
 for <linux-phy@lists.infradead.org>; Wed, 13 Apr 2022 13:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649848386;
 bh=9+II1joWUflGCWg1+eKfQCVVTfrt64iTzI2vrxxAZ0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=VevlYHLpz+x4vM5iQbN0q2d952ATMkgDbIcAu+FoI+2Nqx93MaEDve2VVMxEXKt1z
 iC1Ms1U11FSUdMwVtAujiUyd0JkfhKyP5ROMg8ym3La0VXrETk3zcdXa2wG32L+AEp
 /4PtmGAb5NNDbGTyKWFrR9OddsMDZs9tj5k2ATho=
Received: from fx408 (localhost [127.0.0.1]) by fx408.security-mail.net
 (Postfix) with ESMTP id DE1B81B7AC10; Wed, 13 Apr 2022 13:13:05 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 52CE51B7ABF8; Wed, 13 Apr
 2022 13:13:05 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 03E4727E045B; Wed, 13 Apr 2022
 13:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id DE06A27E045F; Wed, 13 Apr 2022 13:13:04 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 ugWeVI7OodDm; Wed, 13 Apr 2022 13:13:04 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id C2A2027E045B; Wed, 13 Apr 2022
 13:13:04 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <f1f2.6256b041.2221c.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu DE06A27E045F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649848384;
 bh=soPa2qoAVFoq47iDh1+vjH0I9npC6QTDJJCXeYNmh1U=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=VG1WZaQZca3Ohex7w+r4KKA3br7IX63IaWDilqQR4RnCv2dfEZUPs3W5wolbKcfRg
 I6mWp0bueoeLY4uPeDayeRjL3Pxk18BOFSAs7ONv1j9eT49STc5uaLfHr3mnBHOV9d
 SRpG/ORYGEMHyb7xhlXvIK5b6RU7ULyXNKq+z+1o=
Date: Wed, 13 Apr 2022 13:13:03 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Kishon Vijay
 Abraham I <kishon@ti.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Minas
 Harutyunyan <hminas@synopsys.com>, Amelie DELAUNAY
 <amelie.delaunay@foss.st.com>, Yann Sionneau <ysionneau@kalray.eu>, Michael
 Grzeschik <mgr@pengutronix.de>, Randy Dunlap <rdunlap@infradead.org>, Arnd
 Bergmann <arnd@arndb.de>
Subject: Re: [PATCH RESEND v3 2/3] phy: core: Update documentation syntax
Message-ID: <20220413111303.GB25550@tellis.lin.mbt.kalray.eu>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
 <20220407102108.24211-3-jmaselbas@kalray.eu> <YlZnb2dJjaroDfyu@matsya>
 <20220413095349.GA25550@tellis.lin.mbt.kalray.eu> <YlafAkEQq81R4MGC@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YlafAkEQq81R4MGC@matsya>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_041317_794662_774B98EC 
X-CRM114-Status: GOOD (  13.62  )
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

On Wed, Apr 13, 2022 at 03:29:30PM +0530, Vinod Koul wrote:
> On 13-04-22, 11:53, Jules Maselbas wrote:
> > On Wed, Apr 13, 2022 at 11:32:23AM +0530, Vinod Koul wrote:
> > > On 07-04-22, 12:21, Jules Maselbas wrote:
> > > > Update the syntax used by the documentation of phy operation functions.
> > > > This is to unify the syntax with the newly added documentation.
> > > 
> > > Is there any reason for using this sytax, is it documented somewhere..?
> > > How does this syntax help?
> > 
> > I don't have any particular reason for this syntax, this syntax have been
> > suggested by Randy Dunlap.
> 
> Is this documented somewhere?
Yes this is documented in Documentation/doc-guide/kernel-doc.rst:

``%CONST``
  Name of a constant. (No cross-referencing, just formatting.)

My understanding is that this formating should be used for the constant
NULL and not for literal values, such as 0.

What you do think? Should I revert to using a straight 0 in the return
value doc?

--
Jules





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
