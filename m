Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5E0C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 18:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaQ7tHbq8vEt3Jta/mpSDIo6qtZX9EV+GhFcby56egk=; b=kDvFZiORFtlpHy
	GT/JoEGOtytQSCcve4tZhSIAugw62+9GclQBU+a8e8QPHydOretTQomjJgY0g/R6LlqmH7Z4Qbkye
	U2pL4DN58aRUoOdnwonnsu0MlGytHsH5QTv3pr9e+CN2JSVXyHkGhmM802LkD4wYpnEreWFba1Age
	wm+x/vKzBcw//as7HqQ9HdX9jXJrQVca1/tahRoS+1DroC2y3ce0Ju7otT1I9mdx9wgqhS0gQCm/Z
	6YOVdXebbYweIzdD8iZo9M/0rHfs/lo260DTA2Uz4BU3znTzyjKAEdI3Bn5lh3TBY5zr4p1JFFb+D
	MgFqreTaFBnz96n1WjuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYSt-00000005wtD-2dNQ;
	Sat, 15 Jun 2024 18:49:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYSp-00000005wsb-3BPH;
	Sat, 15 Jun 2024 18:49:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C3BEB60BA3;
	Sat, 15 Jun 2024 18:49:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A84DDC116B1;
	Sat, 15 Jun 2024 18:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477362;
	bh=2UFS+G15YQb63hu8LpWAEUeKauwNQ3gIuqSdcJidqJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UYXEjMw/WNPKKLRHyp6R+kcO03OHxzA1i8kiL/UHm2M+ByRERA26imlKwyVwsM7pC
	 20SxSSbNmCRhTID7gkblYNwTsn1lPRQsr+ME8YkFAtwbOOA9dEUzmxBL0IDGxXfPH9
	 uJgWgNoDK9QlgVhO4BV54B5ucC27tJyyZOMv4GHPHYHweOh2HFUQwbhzjIPLDiQJKJ
	 tGGcVOW9WNepklT3t3SzKayfmMUc31bjvfKt+TTWN8HEOHswk6HM5wmn9gy/LhFugv
	 fW64hl3E3XUvgxlUYx0EyRRlv4gx/e9zb2vq0VfVbGQCQ9zj4ADDlZ6SHGLsimdkqZ
	 /H7SUISGExowg==
Date: Sun, 16 Jun 2024 00:19:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-phy@lists.infradead.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: Re: [PATCH v3 0/4] Introduce PCIe PHY driver for EN7581 SoC
Message-ID: <Zm3iLkeu27E4Qn8w@matsya>
References: <cover.1716031610.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_114924_076035_8963041D 
X-CRM114-Status: UNSURE (   4.59  )
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

On 18-05-24, 13:31, Lorenzo Bianconi wrote:
> Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

This fails build tests on x86 etc, please make sure you compile in idff
arch with W=1 and C=1 and submit again

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
