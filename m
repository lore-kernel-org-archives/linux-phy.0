Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56E0FC48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdHkj4yHyUG8CNysqwzsz2+WczUWUEL9t6QQrkt0m+Y=; b=fMJy4cVtqLFsCF
	15Iu1h3QWIRxypXK5OF6BHTVgbMPPc5pUEHihAFGK1PitXiaf5ctvlgCDSjI7u2AARFpRFx6UYUdz
	HeIc1iu6A+SFgtoAIHLA4TAwjL2JFzy6GLfRSgm/NiBlg6Q3ctlQ5nt9Y5WvsfBadHXgbM/Yuxi1O
	LruRblADxCXwcN//RNTxk1Z1jdYgUPohULSyYCQzFF2Hdkzh7Qsm5LN678hDxrBU/zZ9no+ypMZ+r
	9M4cpTpv95u0Z7kBiEwQBRguPjm+SQ2WOJlPDIUkpZipFQlBpzFTzzO3hsOV7iOH/yjiUyy6thB9B
	4+lDfp1yqFoe9Ex3V0yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawr8-00000002Dux-3u04;
	Fri, 16 Feb 2024 11:58:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawr5-00000002Dsr-3GB0
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 11:58:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1E8C561F5F;
	Fri, 16 Feb 2024 11:58:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DCE9C433A6;
	Fri, 16 Feb 2024 11:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708084690;
	bh=fDXFPqOM8tS1XBAaGHhJZBANxuhJPAJuNO0LrQAsUz4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=A5gf51Nchu6ZzsB9EI/rNiYoAPJC8mTOX+Yj+aT8TRjifTvjHM4d2TL8Xlexbv/YL
	 iL3qrkOkCtYkIuF4MKAxl3SP/zqx/vZlXDe4PwKbdaTDr5GcAR0JyOPEEuyNqQQB6M
	 8Xvj6YwvXCGqkiIhxjXN9aaT6zK0zEEZsNGUl64YMlTdmHqSb6mqB5bZADootnbI9E
	 r2SMOhFOnj0nLJMhY1mid+pimMrecSNjV0kOQOoGPm6GxmTIUQfj5GLkawA3VdW+uw
	 zkbhuf3r5YMlikVo8XjRZ7sXzGI4wnHt7BCZA43O50zp1e8HKE2lu9Ig8n/jr7eBae
	 B0sMDSDK+WoAA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
In-Reply-To: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
References: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 0/2] phy: ti: tusb1210: a couple of cleanups
Message-Id: <170808468906.352706.3704956051915037531.b4-ty@kernel.org>
Date: Fri, 16 Feb 2024 17:28:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035811_901823_A44F6006 
X-CRM114-Status: UNSURE (   5.08  )
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


On Fri, 09 Feb 2024 18:02:13 +0200, Andy Shevchenko wrote:
> A couple of ad-hoc cleanups. Nothing special. Has been tested on
> Intel Merrifield platform (with DWC3 using this PHY).
> 
> Andy Shevchenko (2):
>   phy: ti: tusb1210: Use temporary variable for struct device
>   phy: ti: tusb1210: Define device IDs
> 
> [...]

Applied, thanks!

[1/2] phy: ti: tusb1210: Use temporary variable for struct device
      commit: 03db1786fe9eae146ba9b3e4fd220f1e502d588b
[2/2] phy: ti: tusb1210: Define device IDs
      commit: 505dfc6ba84c85651f8f8a7bf721aadc49049a44

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
