Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD5F8C48BF6
	for <linux-phy@archiver.kernel.org>; Thu,  7 Mar 2024 10:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoDR1pjhqnLAjwdwZwLOzR4VBrRXCvYe62QSSNVu+Fk=; b=l5uOYN43dVvOnt
	MO/AHKtwwbvopJxd1O24NLAZPPA0BcJu4FfhLIpLckU3tn2kE3qHDFlbmoM5C3IGBQdB9muz0Xq1h
	T/vj5FjCLVJSNBhzzKbYjLKd0kQnuMU8Qh7cXyLcEOeH1Va0z6PNy/3tSdwXi8yuFFhoPwwaBalpF
	Z3LDjS6P5xxJ9iyWnTgW9oxZBuW/p4wrrcj8qy0USr4Ig03wK6Qo9lHwwODZLbAAFVLWty5pLGJ40
	g7FsRYgshLBs0V55CPbsH7nwicPYS8s3hAQO69fqeGiIYnTwhoDixIfHkNkDjwB9ypHoRnY3LyiSu
	uSngcdLsSJegO57yteKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riB1t-000000045uE-0u2i;
	Thu, 07 Mar 2024 10:31:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riB1p-000000045tI-14vf;
	Thu, 07 Mar 2024 10:31:11 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1riB1j-0002lJ-LP; Thu, 07 Mar 2024 11:31:03 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: rick.wertenbroek@heig-vd.ch, Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: Fix typo in function names
Date: Thu, 07 Mar 2024 11:31:02 +0100
Message-ID: <13184309.nUPlyArG6x@diego>
In-Reply-To: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
References: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_023109_335977_ECEE2040 
X-CRM114-Status: UNSURE (   7.52  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 7. M=E4rz 2024, 10:53:18 CET schrieb Rick Wertenbroek:
> Several functions had "rochchip" instead of "rockchip" in their name.
> Replace "rochchip" by "rockchip".
> =

> Signed-off-By: Rick Wertenbroek <rick.wertenbroek@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
