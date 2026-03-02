Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0DEE9B34B
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 09:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIP+4i40uqQGFUe1eSDtoUc2pZO41PChlG0WrVz7ITY=; b=XmsqxmPbFutPZh
	RPqocSIbk9prxkI0v1bsuQaQe6XOBVCpk5EdRCkR0pXbN+Gd4rVXXqz890OE8iUEWazcntem2+VO8
	ZGBGRG0OX1V2gNeK+uA42sJW0QI9e+6i45hY+iK1iTaL0giD/R5ub1TiBBbHAki/bRkX3Z2sbjJ3v
	C+Hk1APYknO1S+F+Z32tllB1xo21a5cY1MQtkx+VVuavaRFX7tF/urnFdwqaKJ5HGnOurffUaQYjk
	bgI4x2jzSx6cVKcEkiRM3Sgy3AxPzSPVxPYe2AUnvJj4MRHAgdVASoPRENHuGjARiIx/3V2+E/Iq7
	8wUaabajihlybwKgjG2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx03v-0000000CdTI-0Xwe;
	Mon, 02 Mar 2026 09:59:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx03t-0000000CdSY-3UvY
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 09:59:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CFEC4600AE;
	Mon,  2 Mar 2026 09:59:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7BA9C19423;
	Mon,  2 Mar 2026 09:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772445576;
	bh=JW4wtcwWSZaAh0Eew+adPH7eqv23BxKf/1lj6ik4sTU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hiq+kzVp93oaS6b2l2zDiik3ghkSOKcBm1+R63qsJ/z9Ds6V/BkrXDYyyrRcCER3e
	 ES27r1RFJ2IqyLpQiS6I4UDiKB8rMFrM46AggFSgm9XCBmDLwb9BYufeQTC8U5nOUH
	 S+iFxQ3zGapm+gaNZzsVe2EFqUQ96MHuq9kgOiLh0pK49rZxyrkuxgynR9BrsBVQgu
	 sSkf5WO4gJB+M1qu5X1K+WLXNU8Yov1+hAfKgqTRoa4FDBb4OlhMokPrnxxT8AE7wr
	 DGtUUEkZKuvjJMy8Tp/WYFllqdu6owx8W1R3o/3SQ87m/y/R56GlD2oBBk6T7KHY8L
	 S7h0Fzc90wBVg==
Date: Mon, 2 Mar 2026 15:29:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/6] Fixes to Tegra USB role switching and phy handling
Message-ID: <aaVfhN_pVLebf0MI@vaman>
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
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

On 27-01-26, 15:11, Diogo Ivo wrote:
> Hello,
> 
> This patch series contains fixes/improvements for USB role switching on the
> Tegra210 and Tegra186 SoCs.

Thierry, Jonathan

can you folks check this and r-b/t-b please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
