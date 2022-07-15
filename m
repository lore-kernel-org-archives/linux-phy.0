Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A84C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sz3CO8HoB3/6bJ863UJ9Z36JZWv92ZyTS22r+22dao=; b=lB0AyDUD6mXWVH
	Y08r5JLFT4efQt0xUwuRZuZFmbxeCqaaoNQSHZERChHhd0/lpbgGF1HifuVqJq08HUhAAJtTKlo08
	scEp3p3DxZcVhLjnPlhU/WPlZhXkxzg4eZOXrGx+QpsS/Spb33vCakzHvDQRhbjOvLw+QRvx/2b3T
	S6sSAkHhfnRvOciuYsXxdRhWF+MH1tjUxB2v6tTn3Mg6V35kjOz5U+nCw6r5OsyCQgX0xyS5o9KX3
	9R8gmTJmKhsqrSpabrLtXPno52mhi+x4z74MjqxIPsxfOmx3Ds8LecGS2rpS5yHwIkmmgT+VJvSiU
	3jVACRDiz4Gut8y6nnxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJbT-006diX-8Y; Fri, 15 Jul 2022 11:35:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJaf-006dNi-RB; Fri, 15 Jul 2022 11:34:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 55C48622A6;
	Fri, 15 Jul 2022 11:34:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4282FC34115;
	Fri, 15 Jul 2022 11:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657884876;
	bh=Gg9+rPfHnCv/g2fost5hnrWOOpgML/L64l2+FxYBMRw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=THwnBxzRcyhE5VjGQQ7K+awANTYSKYvRRM9ifEdfOuZodd71H0lp3za4HTl+knLYw
	 6d8NT/IiX2NordgRXumj9xX+l0Epp/IMzjXKEoD7P0eEQkxdLKOCiyTvSGdPyZoojh
	 I3AzD6EgHENSsnCbDILyDaNVSYaSN18ushW0aDFbQB5wosG7T4VjtJ+5ldv5dL5Dr2
	 K0HRRpLGohWxC0sBwjLUIHQ8ttw5DopSeCdIBEy8yBnQxhQq+iYx42j3dIJCG0mC/u
	 8FU3inju9RKI39rRUGH1dbZE9aEhyCGj5jiq+DVQqU4lEgIiKS/yN06aUf7Miywe+3
	 XLXJ6rOoG5MZQ==
Date: Fri, 15 Jul 2022 17:04:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: kishon@ti.com, amelie.delaunay@foss.st.com,
	alexandre.torgue@foss.st.com, linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: stm32: fix error return in stm32_usbphyc_phy_init
Message-ID: <YtFQyBCc2IRXOptK@matsya>
References: <20220713133953.595134-1-fabrice.gasnier@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220713133953.595134-1-fabrice.gasnier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_043438_003954_56DDDB12 
X-CRM114-Status: UNSURE (   9.79  )
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

On 13-07-22, 15:39, Fabrice Gasnier wrote:
> Error code is overridden, in case the PLL doesn't lock. So, the USB
> initialization can continue. This leads to a platform freeze.
> This can be avoided by returning proper error code to avoid USB probe
> freezing the platform. It also displays proper errors in log.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
