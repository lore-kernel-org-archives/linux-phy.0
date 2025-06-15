Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D02C71157
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/tuGmkle80c+6RlJi+qGB9Yahp5q1x+c29LOXuUfqE=; b=WAad1NkgSxNR71
	COUsCR5b5O68dZlie8bKU4qycNcvWyOeoW+Zj8vGOs7jLGsg9+nSD/71TXbmtul4UwrVypPZQwwXJ
	/ZMCLvHogcwyM1kHOe/GUgK0rRSNgNeooL02JLNaBw+002pGnlz1DcGRGyVQTcy61pOwGQWq7J251
	Pm96wUmbSyF7fLsbRIet/1bRR1nyfCldMb8mixkDFIQ14keXsiNQxAMbGMEn416VOyD+2mWmZrX6P
	K6VlBaPqQMpHLMSnXlSnUPh8EoxUhUukBqBEFDqZOH8i6jndgjC0dDEzwP0dwjMRtXT1ZFEFw8+Cm
	LM1O+hvkFhyRTeUtkjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqjW-00000002gmf-3Epw;
	Sun, 15 Jun 2025 17:01:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqb8-00000002fuO-0YCP
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 88B9A614B1;
	Sun, 15 Jun 2025 16:52:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AADCFC4CEE3;
	Sun, 15 Jun 2025 16:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006365;
	bh=Qz1/0+f6f6wOIGk0uobnSw0mO6TF5EAN/B9lJlE04yM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KAMXLvTAT0oW0+YChf+aTmd1PDOS7XQeX4c2T61yJT6B8E4shzBj3slVMwlD23Nva
	 RRMQUh96RNpCCs4PcECNPoJmOvtU0LagWs88ImAsLks1wbDiiGsKHz2evcHZRpS9TQ
	 hH6PYYL9UP+LoYZQ26F9PeWoteNsCvFizoOYaQC4+paPFtMkiGiQpIuUJx1kQgOYIu
	 MQwbPz6r1lX/6vpsd9TIv0OJLnfZrxMeevhDRE5YjwBuWTg0K9ZslTBKFygPikuMcW
	 kQ54gvwtbAFIDQM8fifTMXaURYArD70v6eZJkkaOhCMUKv1AyeUWFFhvHo+92oitnC
	 9uGOOyWh5FvzA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250607212541.742427-1-robh@kernel.org>
References: <20250607212541.742427-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: Convert marvell,armada-380-comphy to
 DT schema
Message-Id: <175000636232.1180927.5495769053614901406.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:42 +0530
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


On Sat, 07 Jun 2025 16:25:40 -0500, Rob Herring (Arm) wrote:
> Convert the Marvell Armada 38x combo PHY binding to DT schema format.
> It's a straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Convert marvell,armada-380-comphy to DT schema
      commit: a5aa04619e715adda36ca5a97cae4c48bad8d65b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
