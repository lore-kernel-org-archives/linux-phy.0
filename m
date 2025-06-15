Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49BC8C71159
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzhKRAD7LD8k2BPCNOA2jJGSQyQpPRn5Q+iwnRo1TlE=; b=MGivR4MkQXjftg
	ENGI/KqeohcS49XnWO15jm5WqGPtLdKEzAnWty2SaJWHD9y0cAOYVP/VVQ/bcQ4HYP4cC9lqnFrsP
	gBpQP7mCDHkyaGMP34Yl4Lay1swSJK0nIonOLwbCYMJBtZFg7Q91SO+fQ5MzIv6pmAu4ubPsC0yXH
	0HypurIZbWolSh8LoAN4b7qazpJ/uGsi0TmJUZ+3tRQKnotk9jNWr4rqhqz0kW9AqIYHX2xikRJRa
	MXSrenqJE/+sQekvS5mT9KCONJ5ww8LNcXBcub3qnw+5bF3aKI3y/O+9b8hFrkcmHghvKTHgPA6Zk
	hJ0/TV/YsiaiWcVz8fEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqjX-00000002gn5-0ETR;
	Sun, 15 Jun 2025 17:01:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqbB-00000002fuZ-0wjo
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A7DCA611BD;
	Sun, 15 Jun 2025 16:52:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE042C4CEEF;
	Sun, 15 Jun 2025 16:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006368;
	bh=waeTw7yWy3QuYQKUy1k68cPCqMP3I5rcjAEUx2QJeG4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=T+iBhysCWjCL/En2CtxuNZazQkAcLvlnMf/PQK1HES5XFuVFPEp7kWgG8o218Qfco
	 AWmzJCWZOSAfM2A+4+xN9lJP/8clwbQ+JxLeLsSpNQklVOlBqkPJ1PRCQdQlzoPwuM
	 9drcFqUuI864wmXoZnSaGPQn3QZ5QnGlLPSp73Id5nwpy5YKJcqrVj1KSPwnYqkirO
	 T8ae4aYVVQlm92aYABY/DutM+TBxCQcbiXWZsT8T+s7ayla2RV9dIJjpohskmNXPaN
	 nOkQF0/lcayj9DXqRq4pckwedCyIFozMGoUTlFT+yUT/OKZh5SM2rfqX5n/Qj70iBe
	 +4SQsq6CCN0+w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250607212609.743346-1-robh@kernel.org>
References: <20250607212609.743346-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: Convert Marvell MVEBU PHYs to DT
 schema
Message-Id: <175000636547.1180927.9393502709140378980.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Sat, 07 Jun 2025 16:26:07 -0500, Rob Herring (Arm) wrote:
> Convert the Marvell Armada-375 USB and MVEBU SATA PHY binding to DT
> schema format. It's a straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Convert Marvell MVEBU PHYs to DT schema
      commit: 4dcf1632d617262f16608f3bd0f6dc00eede8d4e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
