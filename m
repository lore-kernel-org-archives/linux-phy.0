Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D22BC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXbTIuDGwhYYD+MQCkdkHu/RwILYgjwKidGr0R1fBE0=; b=hjZoznGUrMPEb2
	y1BQ0J8Xd5NOesjjgTvIUBu4lR3iLYmxhGjtWQ9Yx71J0zr1Gx6pRkaylZervyyOuWhcr1f4gTOKc
	6Gs4dinmPR/91lQzpxipMEKIQ3vxYHXc4sq9iEWas93FShms5OKowgcyj5TqlEAgumSqkDLOWDF13
	yS08ENmB4jsZSP3osw4MA0SGZ62mbasQ/MPFH6Tnqy/aBzpTbBuJDHsQ1vL6ji9C/fFFdQ8+6ia0g
	uc3n8R450+lzC8zTkhkBX/q8kyUUPzuV4ABU9D7vGzdvEOrq4xmMCL3VYHczwO8/5ZqBbSudmu9Ks
	EUT56sAeTUewZTtFxGTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpOg7-000vOw-Tu; Tue, 23 Nov 2021 05:49:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpOg6-000vOJ-1O
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 05:49:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9C82060174;
 Tue, 23 Nov 2021 05:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637646553;
 bh=1pN+MGPYLaxOv215SX069r2aoliyKZqf2lL8USnoshA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oB6o+b7FcB51m3tNOvO3ouaG3Uo70zHal+wsEztKjQp64468JblEBComKh557HpwD
 cQXoUz6Cam0cATTfoA40/rw2Z5rDGAEdA5vhWWIpfZ6ZeHUSl7evPLEv8C1ZAcVMkf
 ZqelToFpTpEUo5zdPzBLEuew6DTK3wAuZhMbyT6H5hSINM9GLwPE9vAO9AwKnSjt8k
 KBcLDgrd7fZeXwZkrDya75o86OzkV8Y6T66AYjPXsrxk0zkde6G1kOZ9enK61T2F4V
 ZjXbYzjnWWGidfZcyJCiiO/KG1qttFJRXhRWHXduBOlwgckYe8tEtvtuipRQWmUAOx
 ovXFpKqnc6s4w==
Date: Tue, 23 Nov 2021 11:19:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 ~okias/devicetree@lists.sr.ht, Thierry Reding <treding@nvidia.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Tegra194 P2U convert to YAML
Message-ID: <YZyA1L/6/xMpYzwR@matsya>
References: <20211031113236.29712-1-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211031113236.29712-1-david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_214914_127299_FDD77B25 
X-CRM114-Status: UNSURE (   5.05  )
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

On 31-10-21, 12:32, David Heidelberg wrote:
> Convert Tegra194 P2U binding to the YAML format.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
