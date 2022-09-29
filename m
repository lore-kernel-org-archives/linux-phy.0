Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 075A3C07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 05:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1FOjw86avKLn56u9wx6VyNCJGPZGnNdUwvtW/NaDVI=; b=CsDc97Y0EuIjW+
	AhwRui7aVzFbZBiGwv64LLL9q2+koViFTErGJZHR9MNRFRfboTJqTbkE/ujl0EyOBAmuz0g0o8CkS
	e8G0m3svdjzTMy2MMcFteQcVpU3ptp29H+uQKgod6H0FhdlfJFJ30DPgrLskzz57b/k5TH2JN4kfQ
	RSLYHx6t5bdfJChM7hKq65pjbQ4f+grcknwkvq+fxZDn2SWu06yuYdhJa/g0N/me6AzPGpALbIsrb
	/6nVq3PMGU8j0sLpUBiW+cLvhoJibWVP/lRut74zAaf3ArP2QjlFWXuwrw4fo8UUpDVSg1goUt0pU
	cTTr/V6yErOcOvKG9q7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odmIu-001HiX-9L; Thu, 29 Sep 2022 05:41:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odmIr-001Hhn-VQ
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 05:41:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 885C961BA6;
	Thu, 29 Sep 2022 05:41:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6186FC433C1;
	Thu, 29 Sep 2022 05:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664430104;
	bh=mcJXvhCJ7bHk15YbfjU/dj2x+85qWncO+cBKg1q5oEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LAXmdrn1t5tqiFMKjaGfngxIgz9bG3PeRSxyiAem+2irKMrUq/czDr5MeD47ASmJ+
	 MN5SgGHEjQ1pHT+C/VvnM61j5bvY5R7yWRX7Vqofn4sV2Qb7YcQ0RvyG6kkmVvth8C
	 OE0Exv/OKt5qYihx1N+59lgHz2l3G81lz2APqRNgZwDk0OnZbxEFpc6T28h0/2zCDs
	 syEvt+Z+ZQshh4fjJqulukbZa8hGHYdZaob2XQ5xHVUsTYN4SIz/HNbT6lvDyNBLhD
	 e6JVwPAvXKhIEWM37QPxiKnOhWBRyFJulg7RK878WFLCfxsM7ROc6i2CKghDi32JW/
	 aSBXZcIxDuIKw==
Date: Thu, 29 Sep 2022 11:11:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Wayne Chang <waynec@nvidia.com>,
	JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: tegra: xusb: Enable usb role switch attribute
Message-ID: <YzUwEvFPvcQuFShc@matsya>
References: <20220928125640.2219402-1-haotienh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220928125640.2219402-1-haotienh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_224146_087979_1095D908 
X-CRM114-Status: UNSURE (   8.26  )
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

On 28-09-22, 20:56, Haotien Hsu wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> This patch enables the usb-role-switch attribute and lets users check
> the current device role of the otg capability ports

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
