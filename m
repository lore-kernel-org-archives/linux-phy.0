Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74444C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ui/Wc06dz472jcNYRU0aw34zPcO7f4Idhq44IdLzqHo=; b=Jj244kcFwQw9FD
	DlSmf1IoPYv4IUlk9LSFj5gcI+J+oAlwrCZXd0tDD40jdI2cLHbWwSN0Nb4REIa5TzaSrJbkXYztB
	kB3llSBnUG9GSOslwMEWbgw67ysArNJAEQQRYWmb6eivT+vQ9ZiWI7Qi0V/lVA8xfsUIVSj6ORImj
	dy2HDZDwDEC3HAudtiQvACV6EpkblKDYOJfdGa2xnv9FhFOeBHbX4UxBUqESjKiDqqx9CzSqB9tPl
	gEmlgoHN6PVCR1Fke52FaMh0ehEQj5jTh4o+gg428Q5XqNoqP2nNHw2TpFherQJmIIIpLlbROfR1v
	2UfNguMuHBt4nHebBNKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpOj5-000vhF-V6; Tue, 23 Nov 2021 05:52:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpOit-000ved-28; Tue, 23 Nov 2021 05:52:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0C1660174;
 Tue, 23 Nov 2021 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637646726;
 bh=16r6J8ycJjRHxKmkqPJvCenPNAYddQKOVSL71EK6Rm4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PexDVdjXkD0NTnnv4NY+Rpfx1ny3WXQZZFvS3dKyRKhUNiYhectW2eotKKCqg3qeR
 MmSTH85ZDd0pIwDuIx2RzZKe3wnuGTUIRDNi5MWvnK/NoWZ30xc+i2jhf7/+3J9e2F
 xOwbHpFdUhck77jWS8s2bCcmxd0V/eKlJnBi9IM4CCfExPl3yOxi/o9+dBWMGEYXe9
 nRCzRRKdgIsFzXUb9dhCKV5JViSd6CvfOeE5+tknF0L9AIwOJqUaicjHC0aq0bP05x
 MPWEGDNJrGsWmapixnP7p4eW6ZZZxuUbb5sTPk2om1pb4DxNv8B35J2WVgkYX+NuDd
 hlrExXc+uqhYA==
Date: Tue, 23 Nov 2021 11:22:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/8] phy: socionext: Introduce some features for
 UniPhier SoCs
Message-ID: <YZyBgtbgKW3w6lqG@matsya>
References: <1635503947-18250-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635503947-18250-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_215207_149884_352C0F5B 
X-CRM114-Status: UNSURE (   9.38  )
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

On 29-10-21, 19:38, Kunihiko Hayashi wrote:
> This series includes the patches to add the following features:
> - Add basic support for new UniPhier NX1 SoC to USB3 and PCIe PHY.
>   NX1 SoC also has the same kinds of controls as the other UniPhier SoCs.
> - Add a PHY parameters to PCIe PHY
> - Add dual-phy support for the SoCs that has two phys to PCIe PHY
> - Add basic support for Pro4 SoC to ACHI PHY

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
