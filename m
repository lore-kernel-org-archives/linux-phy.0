Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A757DC5AD49
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jun 2025 21:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaw/bXd2ekdlHDn9q96+6lTe2nOPBRb/g1rgdM9ajRM=; b=HPW3ynXoYuUFXM
	UmUCxPLl16XiHXEmSH/CnDKFogk3xWlr1SQaaFOUxEXSzWo3PUD5nZqecM8qQQUhi2ve8IhPC0RFJ
	i5DfjzmZRbJ1vGk+xa721VgKI0j2pvCBIO3VafKTpNNI++kZJNDu+GorozcFXf6tcs1H5HnupJjG8
	k6uM54AFXWRdVXLEQND8pMS5LVBXdQARfOUfvkzi7eT7ShraMbCuE1NmYe1xEzIH7Gi2L/9HCkJ4E
	ZB/5oMui7GDUPjV5LU75racWECHGPUtQiukep0ztCwYjxkC8QrYWwFrPnRi6B6B+v6HgrpHjFncpH
	fDol0+gvwgchzwJQzDqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uONJa-00000002yIV-3wHl;
	Sun, 08 Jun 2025 21:12:26 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uONJY-00000002yHY-1Xyq
	for linux-phy@lists.infradead.org;
	Sun, 08 Jun 2025 21:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=kWsKDDy9kZ/KJyIOPjKBSE/YT6JRQAUiK4YeE/ZD9hk=; b=5XbMpBSlK41qNpn7kBaeSyFt2S
	rge05IxY4AqKvRtXDrRi32pYxXShym3BoesP15kMDEuWBsI8nQhk8Rbbm5IMBU7R/UedTAlaZhXez
	iH7HaHZMpbWq8iMSlMDcV5KBp/i5BhbvSZqP8GIz3hAlMLG+1BEwLaZdKoVBq4Gqr49w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uONJS-00F6XO-64; Sun, 08 Jun 2025 23:12:18 +0200
Date: Sun, 8 Jun 2025 23:12:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert marvell,armada-380-comphy to
 DT schema
Message-ID: <cf506115-27b0-40a8-a081-345c286c733e@lunn.ch>
References: <20250607212541.742427-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250607212541.742427-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250608_141224_405236_047978DB 
X-CRM114-Status: UNSURE (   5.75  )
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

On Sat, Jun 07, 2025 at 04:25:40PM -0500, Rob Herring (Arm) wrote:
> Convert the Marvell Armada 38x combo PHY binding to DT schema format.
> It's a straight forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
