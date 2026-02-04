Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE1ABE9D3F5
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KHKxhKk2RfmhWskgg1aWeHdmpUEPmCX06IGDIU2H7A=; b=YVBpdyVm2tU2W1
	05VWmKxm8dQ8Cq4f+cMFpCUi5teywLZl5vPR7e+KPW8hO3Xl7WvYCerJDhh2kpdStGx2WV//yeLXl
	U3xlS/flEB8W2E7QJG1wCKE8ppdxZODVxB9uCMuvU3pSSEVkKEc3CHxPoleBRDEkdjV0BnPTTKXZ5
	9Mtl0rESfwTCuQAagwDEMZTYT8wYM8h8/u0QCj8AR3Bnd0GoDM/VjNdWptHI6MX1zipedVTUWnfjv
	U7q9Cn3+xBHIRct5WynNjDgEb8Sx/sw4D8QQN4XxA14gcNKdtvTvkISbuXUsAB6Qo6wZ9keRimhbS
	RS4k/RqaWXZFvGgwzXgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vneeG-00000008e5x-0xGf;
	Wed, 04 Feb 2026 15:18:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vneeE-00000008e5i-2wk8;
	Wed, 04 Feb 2026 15:18:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3A7DC600AA;
	Wed,  4 Feb 2026 15:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F2AAC4CEF7;
	Wed,  4 Feb 2026 15:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770218308;
	bh=Szm3QfQ7X3rGQRtzylMpLb3hyGhSDTXlCFdPG6u0Zxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gmM4w6y7cvT7G7CYPX5cNC5pjGLzQp3+GvqHRzVdTS/DSi5+z+en3IeUQkeyXXTB9
	 FqHye+/2TsHXMr7kVsBBwVIGJmFlXJbFfcuKOYF07iLFgFnO8mcVKS2aR1XxRvFIwX
	 IpaHzLRJ9K49A469JoTitXYDqi6JZsmCkNKlqTaIDM5xUMU+OkzRA/+Ey+bhUim+Nx
	 ivhW2HdLYJuWdLcDKk83Tbfb91YvsL2Yd4Re8fiq9xP6t4YwhzGsJaxY64u4c4hMZv
	 ipY9J5Ebz7idqQB6/WB2fY/u7a8ZXhQL5UDd77/aGB26zgw+toNWokd/eLTk/cBVvz
	 zJjpRiQg41Q1w==
Date: Wed, 4 Feb 2026 20:48:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Roy Luo <royluo@google.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Joy Chakraborty <joychakr@google.com>,
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH next v2] phy: google: fix build dependency for Google
 Tensor USB PHY
Message-ID: <aYNjQfXATNAx6reM@vaman>
References: <20260128-next-v2-1-624bdae8e6d0@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260128-next-v2-1-624bdae8e6d0@google.com>
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

On 28-01-26, 21:22, Roy Luo wrote:
> The Google Tensor USB PHY driver uses the Type-C switch framework to
> handle orientation changes. However, the Kconfig did not specify a
> dependency on the TYPEC framework, leading to undefined reference
> errors when building for architectures or configurations where
> CONFIG_TYPEC is configured as a module while CONFIG_PHY_GOOGLE_USB
> is configured as built-in.
> 
> Add 'depends on TYPEC' to the PHY_GOOGLE_USB entry to ensure all
> required symbols are available during linking, and 'COMPILE_TEST'
> to expand test coverage.

Thanks for the fix, looking at three patches for this, I like Arnd's fix
better and have applied that now

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
