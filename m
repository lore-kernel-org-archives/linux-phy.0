Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713E4C77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 19:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+c1KnO+x32GIA0b+TfwulWJLj3VXo6mEd3gBtN8o1k=; b=HFkQOjdcKAIeUi
	pwgvbxPR00KyYzMJwDFOYnV0dH6xFcb01jqQ5sbYhzm++7GF0oZhA1Puu6U4C42ewh5tgYKAGLqxh
	HV6vgg8uMHUN4h+dpGnO4czDf3/p0hsEht/LNd+5NW/29/gbMyGOMeJx6Qpr2JmplQswsGjlhDDDZ
	TTdpxWV7ko0NSyyylR+kKWNXI9S4fFvFSsuxr75kpCcb1dDc53cNTvjPGRZKlrv6P6RmDNKn5V/VG
	LgEMhp1eGL7nSvvEi2Cs81/vKjYUy6Xe6m3Q/p4o/kPRoET4t+f9lmh3YFtYa9w/2/VehTHjP0v8c
	rGATbpTnD4I2csHUY2Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVENw-0000000FZfy-3liQ;
	Fri, 27 Jun 2025 19:05:16 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVE7s-0000000FX2k-2SVV
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 18:48:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B4512A52F2D;
	Fri, 27 Jun 2025 18:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52C8FC4CEE3;
	Fri, 27 Jun 2025 18:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751050119;
	bh=t5QdGUQTKtZh/w3br7IAj5wQCJkK0wiEdu+3pRAz1b4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dtBUmgomkEfTvE9Cr09XadxUpPq1uVa7MkSN5TQTYk4779/vJjZ3fNkqtIXJm7Elc
	 ZxaSc4fiTGY5lahUtAKOG2DG5WmI0twTmLpCIXmiy2cfOAj1ozKTWNcS2wtCx/Y6LJ
	 DgMVSYA2lMKZnBqzXo5tXh4N7KQObpbF5as+J+Udd4VyWpDqP1VdS30qK52FDN/zYv
	 Sv/N5mGW/6WMf2saVzbfJOxZVTptD+5+NFuLuGquqsQZ8p5mrTLy5oOhy/yFHxkskW
	 8OVzPQejgj5JRoaTwtpcGcHKw+0m1k/TGyTCsgtmqhdbNWUh1NdXjnocbYm9tFQspo
	 L6VW1xfvlJ7kw==
Date: Fri, 27 Jun 2025 11:48:38 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Michael Dege <michael.dege@renesas.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Uwe Kleine-Koenig <u.kleine-koenig@baylibre.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 0/2 RESEND] phy: renesas: r8a779f0-ether-serdes:
 driver enhancement
Message-ID: <aF7nhuFWdp80sZTS@vaman>
References: <20250626081723.1924070-1-michael.dege@renesas.com>
 <aF3Qp730y_Vusb-z@vaman>
 <TY4PR01MB142825081D5279CA2D8251EBE8245A@TY4PR01MB14282.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY4PR01MB142825081D5279CA2D8251EBE8245A@TY4PR01MB14282.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_114840_733136_20CC64F0 
X-CRM114-Status: GOOD (  17.96  )
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

Hi Michael,

On 27-06-25, 04:52, Michael Dege wrote:
> > > This patch set adds the following to the r8a779f0-ether-serdes driver:
> >
> > I have a v3 and v3 resend and both are not threaded properly, Please post properly as a series which
> > is threaded and not broken...
> 
> Please bear with me this is the first attempt to upstream a patch. I used b4 to produce and send this
> patch series. I did have trouble when I tried to use b4 to resend. And ended up using "git send-email"
> to resend.
> I don't quite understand what you mean by threaded and what is broken. Could you please give
> me a hint what is wrong? I am willing to learn and would like to get it right.

See Documentation/process/5.Posting.rst
"In general, the second and following parts of a multi-part patch should be
sent as a reply to the first part so that they all thread together at the
receiving end.  Tools like git and quilt have commands to mail out a set of
patches with the proper threading. "

For me, patch 1,2 and cover letter appear as disjoint so hard to
review the patches when they are split in my inbox.
A patch series if threaded, would appear together so easy to look at it.

Said that, if you are using git send-email, easiest way is to supply the
whole patch series to it and not per patch basis
For example:
git send-email ....../dir_of_patches/

would ensure they are threaded and sent together

HTH
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
