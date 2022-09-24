Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F858C07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 06:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39LhQy0rEswgercnpcvDnKhRAX7EPpVtOosoBGAmzv4=; b=vAoSpm9a0rWbBx
	ZIigjuaxrygf67UgtuHQ2HYcDvpg5odhak1AA/Kw74W+GZCAJ62bTufsw8/5VI4KE+tyz7Q1nv3u5
	9uVJKJZISRNPQOKv1XkQNMcaAGUVELZG0NiTyq90V33CfjCoU+LslYjaOhf0v4Zy/iAVCssyN/+3U
	7aB+Mqg0SzWyKnBraGT+c+39pHyhx4HJsNMJdLYl/womIAvLhAKpw2TVLft3KvLd2k/w+mMW/FvJ5
	kDvsNasVw8fKtu2Hf9HghPD5m5Hjdt+FFLSIXN8TFN5AEdvFdMfBqp+ier5dTRMRiLP9rRdN+N5rw
	D4GrMb40MKG7IZrswp6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obz6C-006XKE-JE; Sat, 24 Sep 2022 06:57:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obz6A-006XJh-Ix
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 06:57:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 011BECE069C;
	Sat, 24 Sep 2022 06:57:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C27A3C433C1;
	Sat, 24 Sep 2022 06:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664002631;
	bh=RjJjcNJ/URRIy/zLeVjpveh9l8Vl/MNtMcQNad0U4Ug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AED4EE94LTWktqgVptY3m+vsWQWH8pOA08gxMZEBjm2+DEGAKATC8DrpMtFd6fIVI
	 wrk8gcRBoC8IHegSC/v7SPKICZ/mxxKyl6g7/PDu3s1MZA8prTLBc8jc6vPQuxBeP6
	 uidFkUuQrApcisWGBcDhefXbu0F1pORiVpUh374kh6G7tLcBCMPyWNscyZuT5tiVHn
	 vFKQ/GvweVCAPYgLyJqS6+cpmmrBfJ9ugOYJaJCM+IiqKqgP0GXUsMeyJ/e6+Tj1Df
	 zSUIeM0AtWB5ZyNuRDr6is7Os2cdO1fGStCzcswzcIM2gXc4wkojXBjNLSgwQQcWQF
	 7WO++ScFM38gA==
Date: Sat, 24 Sep 2022 12:27:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Jakub Kicinski <kuba@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"edumazet@google.com" <edumazet@google.com>,
	"pabeni@redhat.com" <pabeni@redhat.com>,
	"richardcochran@gmail.com" <richardcochran@gmail.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>,
	"andrew@lunn.ch" <andrew@lunn.ch>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v2 0/8] treewide: Add R-Car S4-8 Ethernet Switch support
Message-ID: <Yy6qQ/CKfshid/B7@matsya>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921074004.43a933fe@kernel.org>
 <TYBPR01MB534186B5BA8E5936C46E3B6DD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TYBPR01MB534186B5BA8E5936C46E3B6DD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_235714_812188_FB5355A0 
X-CRM114-Status: GOOD (  18.31  )
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

On 22-09-22, 00:46, Yoshihiro Shimoda wrote:
> Hi Jakub,
> 
> Thank you for your comment!
> 
> > From: Jakub Kicinski, Sent: Wednesday, September 21, 2022 11:40 PM
> > 
> > On Wed, 21 Sep 2022 17:47:37 +0900 Yoshihiro Shimoda wrote:
> > > Subject: [PATCH v2 0/8] treewide: Add R-Car S4-8 Ethernet Switch support
> > 
> > I think you may be slightly confused about the use of the treewide
> > prefix. Perhaps Geert or one of the upstream-savvy contractors could
> > help you navigate targeting the correct trees?
> 
> I thought we have 2 types about the use of the treewide:
> 1) Completely depends on multiple subsystems and/or
>    change multiple subsystems in a patch.
> 2) Convenient for review.
> 
> This patch series type is the 2) above. However, should I use
> treewide for the 1) only?

No, How is it convenient for review.. I would like to see a series just
for phy... I dont need to see the whole other things...

Maybe Convenient for you to toss the pile to upstream reviewers, surely
not for us!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
