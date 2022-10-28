Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30BC7FA3740
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9ZfjdSYyG7d8QnQfXdyw7uc5yGsLaxzLFa6SZ1+WeQ=; b=36EV7g7SN8O95M
	S6x/uGz1T5g4g1dexr+29KUo52nMRQ72cgG2O0OVyDp8BPY2ukV8dDoyz9YW8zbEjLXq8FhynfNHn
	iWIJqNsNLVebbQQHi4GWU1T6xuPZU+Uq9NkPg/EvWUHxTMJzEN9dhmCQSGLcOqokG6mcJh4WmvmD8
	XfTuSpgScN1qmfYcGUGg0U5SSXrmATWC99r3LKnUlvaIACvdEkgWQPnQ3V8oVAMtGhroMncqfo4/8
	85AqjLRsu0YzgJENxn8N5zaXjnzvnlsl8u4Dopm9CBFTS6UeVl6KimjUhVJY7hSCI1XmOuP9kLKdk
	uaesKr47zdlXwgtX4ndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOEr-00H4Mc-Fs; Fri, 28 Oct 2022 12:13:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOEo-00H4Li-NO
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:13:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 48E1162818;
	Fri, 28 Oct 2022 12:13:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA3DC433D6;
	Fri, 28 Oct 2022 12:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666959205;
	bh=ljENQ8jydh0IcG06Xm/fdMGM4Az0YuRelUKmmofFzjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Plm1piARSo7IubRh36oP78LkgH4juDqvMHiWDWGE7asHDeRamzm0Gku59kcSFbUJK
	 gSx30rrHdMUXu+6e0DqZU1POvpBAf+T1QbsZEan60w5zzWXQ7tQUTK+QvtYi93Ks4o
	 a+eldyaB8d06aqy94fAv4IQ+j8pU3TvRWKZ0LV1+IVEP3F8OBhj2K2X6oFRagOw3uQ
	 7n2RLV9EyzjSmxQUcPShLljXPkkjleE/KqtmrsTtBxRSAz3lrtG3twbKN9vXZWFhG+
	 sIhqd1Mz4HMNDLtmReFJMx4LcJhqNp1cqyLzj9OfqgLXpHyY6/0GSwYhUhIzE4tvhG
	 k5zRn+3P7eeMg==
Date: Fri, 28 Oct 2022 17:43:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
	bhelgaas@google.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
	kishon@ti.com, mani@kernel.org, Sergey.Semin@baikalelectronics.ru,
	ffclaire1224@gmail.com, linux-pci@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kthota@nvidia.com,
	mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 08/21] phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE
 in calibration
Message-ID: <Y1vHYduw4CQl5ssA@matsya>
References: <20221013183854.21087-1-vidyas@nvidia.com>
 <20221013183854.21087-9-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221013183854.21087-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_051326_816904_46C2E1B7 
X-CRM114-Status: UNSURE (   6.57  )
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

On 14-10-22, 00:08, Vidya Sagar wrote:
> Set ENABLE_L2_EXIT_RATE_CHANGE register bit to request UPHY PLL rate change
> to Gen1 during initialization. This helps in the below surprise link down
> cases,
>   - Surprise link down happens at Gen3/Gen4 link speed.
>   - Surprise link down happens and external REFCLK is cut off, which causes
> UPHY PLL rate to deviate to an invalid rate.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
