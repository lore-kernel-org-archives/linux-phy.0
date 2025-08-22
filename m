Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FF8CA0EFA
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dN5hAHgK/dwS842qbctdNB0CxSwZMHcrty1EIgrYQnI=; b=iSpEVSWzRR2QLE
	HWC9drwugAd5/7MBxg0mDE2DCCPZL62Cq3/DqppIu649v++QAmsaiMYv6xuencsfa7WXbpcjmVGHe
	kPeesmppI6zfDVpj5+3m0BdQGoQ8M6tlEXU+lo4q1zHnRsM5aBuB0pc0jCJVqPHdyQUICvybSE37C
	WCtgqo5PyOpZAC0bAtbtHqkqsIjWoHUEM91wvrr9QSA1zjgKzenkuK+bYdLJ8FM2/ie4+gkePLbA+
	WkHdYDSLhJlJzzKGMdmFN2F+MDTdPSzLkBSY+ZIIr1O20238kMs1EwS67F3Eab3wWfSAPV2miaPcA
	1gKjDDvcDxdBJ0avMUyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphmO-00000003zs7-1AFL;
	Sat, 23 Aug 2025 06:31:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSL1-00000002hss-17oo
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 14:01:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0BD7760268;
	Fri, 22 Aug 2025 14:01:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6274EC4CEED;
	Fri, 22 Aug 2025 14:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755871309;
	bh=9TuER9TVfaawHAu2ZzezpBnq2eWkpUazPrpKKrgYpg0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=rzq2MzCZieMW0wVn6HeGXsec3xM34igLkKufPD/dfIvpyGhjVevYzUJayUzXn/5nz
	 mgpZBtnBHLy90AIyUkfivIFoXXL6tdtKEPmBTmOzwEgUlUSMdAEFD4iSbgkVFbYEpL
	 v25TUu0kLym28YxBVZs/h+AINUBuzJwDvCY+Ao5w7D7lFn/WEm6G+NDM6kYF2de4lc
	 jrHq5rhiV9D5TetJZjn3LF/Z1X4FFFUTYjnrZmbY4Af25sNu8KLYRnvS7GCDOQJNNp
	 806g3WKhXuuHp4SDHN73qMPNrUuu+J+rCED9fJG8BIFnAMp6U/wmBDI9OMpnCZivhK
	 2q84RQIt0HPpQ==
Date: Fri, 22 Aug 2025 07:01:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Michael Walle" <mwalle@kernel.org>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Siddharth Vadapalli" <s-vadapalli@ti.com>, "Matthias
 Schiffer" <matthias.schiffer@ew.tq-group.com>, "Andrew Lunn"
 <andrew@lunn.ch>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, <nm@ti.com>,
 <vigneshr@ti.com>
Subject: Re: [PATCH v3] phy: ti: gmii-sel: Always write the RGMII ID setting
Message-ID: <20250822070148.2e23c3f6@kernel.org>
In-Reply-To: <DC8R5IJ2Q88K.YKUE9X9FZRNK@kernel.org>
References: <20250819065622.1019537-1-mwalle@kernel.org>
	<20250821181850.6af0ff7f@kernel.org>
	<DC8R5IJ2Q88K.YKUE9X9FZRNK@kernel.org>
MIME-Version: 1.0
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

On Fri, 22 Aug 2025 08:45:33 +0200 Michael Walle wrote:
> On Fri Aug 22, 2025 at 3:18 AM CEST, Jakub Kicinski wrote:
> > On Tue, 19 Aug 2025 08:56:22 +0200 Michael Walle wrote:  
> > > v3:
> > >  - simplify the logic. Thanks Matthias.
> > >  - reworded the commit message  
> >
> > This was set to Not Applicable in our patchwork, IDK why.
> > Could you resend?  
> 
> Won't this patch be picked up by the linux-phy tree?

Ah, poops, you're right! Let me adjust our filters..

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
