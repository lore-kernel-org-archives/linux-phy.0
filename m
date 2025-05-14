Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A560C3ABCC
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HasM7MXh0jaA3X19GW9vI+B+cEKQwkEizRb0gYVREVE=; b=h/GuJM24RcPZTc
	Sw+ZGvOuMn7MoRfPcjOTfxbQxVgCheganSp/FaD1gEgFpzhnS554pC5uDBDhrPCVCbWcxB3DgnwH/
	n9T0y52kN/c1+HwpgwvV2ZVnq9luW5k2ivbx5qn/ns8HwexnARQYE5AvtXNIuXEa6JZ4/va9DKhzK
	lywGvyj4E98QEvOprHq/S4FV8QfrzPJTglX5pT2srumFkRRKkA4OngnIuANJZeV4eoq8qk2LOehjN
	WCweSdnpjWk6bwaudyDyq8DrY14mw6qQLcGHwQw7vkab8gzXdliXrPSUsLsDbpokMPNaZCaB92J1u
	VJs54jJcV2Gs8Ca0X9BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB6O-0000000F4ip-0Luy;
	Wed, 14 May 2025 12:20:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQV-0000000EuSs-2xmX;
	Wed, 14 May 2025 11:37:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A4F64A681;
	Wed, 14 May 2025 11:37:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC3D0C4CEF0;
	Wed, 14 May 2025 11:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222650;
	bh=BYLy4VG9xOVs94mC7wIDlxr88txhDai/COmTvrqUImI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QpCARnYHBCnmD9i8RUKRToT+x6HCADCEoMOlwLouPPWWEpr7kxNvnbuHOlV2pF4pN
	 Ey2SdjumPQLi3i4i5GUlSMU011+0l5LdTNc3LGslQkdfAFTBL/TWUgJbCISZV3teLC
	 LDCQBdHtj4pYur5raesDHyI8qrcneC5P9fd6ew9mc4gRbMjw/LNi++8hDWadBo6mPw
	 8T8UcyOmA2dSArMY0jV5jK7B47DYVVQH23bTtVeBHUrRCPYex80k6pgxElqbIwE7CV
	 ib+oB1MbDgFAtTSbB9hsovWsIfRQztKDU9GNfnkxzMY3BNVUaW2783HcgGGgcx7QdU
	 adTWIRyQ1o7kw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Mike Looijmans <mike.looijmans@topic.nl>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250428063648.22034-1-mike.looijmans@topic.nl>
References: <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.298e943d-5a80-491d-b36f-77b3b9a86df9@emailsignatures365.codetwo.com>
 <20250428063648.22034-1-mike.looijmans@topic.nl>
Subject: Re: [PATCH v2] phy-zynqmp: Postpone getting clock rate until
 actually needed
Message-Id: <174722264836.85510.7340097492825315236.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:28 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043731_767356_0CDC543C 
X-CRM114-Status: UNSURE (   6.98  )
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


On Mon, 28 Apr 2025 08:35:47 +0200, Mike Looijmans wrote:
> At probe time the driver would display the following error and abort:
>   xilinx-psgtr fd400000.phy: Invalid rate 0 for reference clock 0
> 
> At probe time, the associated GTR driver (e.g. SATA or PCIe) hasn't
> initialized the clock yet, so clk_get_rate() likely returns 0 if the clock
> is programmable. So this driver only works if the clock is fixed.
> 
> [...]

Applied, thanks!

[1/1] phy-zynqmp: Postpone getting clock rate until actually needed
      commit: 065d5885f6180c534b7b176847b3e008f4e11850

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
