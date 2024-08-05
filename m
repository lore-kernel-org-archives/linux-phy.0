Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3481FC3DA4A
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 16:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZaI1azcuVTFheksi0F2XvgVf2Etuo+yVaH5a/Mcfjg=; b=tfBRErUtpvQHW0
	Vo7jtzfcE+zvGYNqocvNufmwvHx5xnOtALglh2On0LwHJeNao7jeJG1WJcepXlKjbswNEX1+g5LTP
	LbMnOoge3I/Uz/8w60TDi2T4jj5KYVmqAoOD4GBj1Lu/FsxhxcwnYzwA0UjogyDewsxf0eDnIRSVL
	4wkt4n6QOkBH8hJQMG9KK1fE1WB03ggFXPst23v6/mu2nK+zjjlnasa7vaEUjTLPNlNx0Qfzc1SN+
	48Um5kca4hiiIonU3bzP3F0mGoEK/gIkiRDogfshai3P7HqDUrn+ds4ruixTyPFDidUT9+ocOHxKt
	O9OMN8HqcDZi+Z9phUxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0X6-0000000GVab-3qNy;
	Mon, 05 Aug 2024 16:26:04 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0WB-0000000GVII-3fmL;
	Mon, 05 Aug 2024 16:25:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2F016CE0B4D;
	Mon,  5 Aug 2024 16:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FBF5C4AF0B;
	Mon,  5 Aug 2024 16:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722875105;
	bh=oTY1y6LH/mDw6DIDjHRilDLM3Ad9/KgqOhLxW9od9oc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Yukzxcd564CI618puhc2kPJrklPjQQCADFdPlB9HQKhet+02g4JkleQnC7s4VvA+h
	 u0eX6m9UP5JVdEL0malu8QPlWKrNwdigRNWCKxLjRnqN3vtfOKUAhGz9gEgelsYo1X
	 hoFem+XEd/duR0CnNqYgaNoiIzNkd8KGm4bktvcoEiKSAVbNFqJF+d5bkll5nwMGlV
	 EyULrzAi2wvrK6wT7IYfAx09y9DfNHR8FKEJaeJQtMujpDDkomBOx8GIhIXp4acBrH
	 otE67wYERUMa7dzaEPrzyf9+Mgw0crYDuuZxwwKdgQCrTsIqmUn915rJZoBQcAKEzA
	 GDc/aY2IYvMhA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, p.zabel@pengutronix.de, sjakhade@cadence.com, 
 rogerq@kernel.org, thomas.richard@bootlin.com, theo.lebrun@bootlin.com, 
 christophe.jaillet@wanadoo.fr, robh@kernel.org, make24@iscas.ac.cn, 
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20240805092607.143869-1-s-vadapalli@ti.com>
References: <20240805092607.143869-1-s-vadapalli@ti.com>
Subject: Re: [PATCH v4] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-Id: <172287510078.465699.11033590406839071386.b4-ty@kernel.org>
Date: Mon, 05 Aug 2024 21:55:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092508_119144_5181EDB5 
X-CRM114-Status: UNSURE (   7.98  )
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


On Mon, 05 Aug 2024 14:56:07 +0530, Siddharth Vadapalli wrote:
> The Torrent SERDES can support at most two different protocols (PHY types).
> This only mandates that the device-tree sub-nodes used to represent the
> configuration should describe links with at-most two different protocols.
> 
> The existing implementation however imposes an artificial constraint that
> allows only two links (device-tree sub-nodes). As long as at-most two
> protocols are chosen, using more than two links to describe them in an
> alternating configuration is still a valid configuration of the Torrent
> SERDES.
> 
> [...]

Applied, thanks!

[1/1] phy: cadence-torrent: add support for three or more links using 2 protocols
      commit: 5b7b83a9839be643410c31d56f17c2d430245813

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
