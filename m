Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33FF7C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gphb4ovbMPVNeXxDn+KRb5uTzIvMT/qKVTLuqu6CzHs=; b=SALR3ZOk+mAkdp
	xMBZPgZv+ayckPgRE4FxUkmTCFQFE2owxV7Q6bQAKvy1O0GMvmGWSTScXQuI5SmKgWfYWMtJJb8yx
	2aV3MSm2YwP5s7CrBJcR7wvMNt9aKmpoGC2HSwDiaFzsUedoalrrs7OYXyNKlskICj7O1U/5TdXDT
	WqJKt2m6Tx0ZF0vr/EdyAeF/LJbeiQbPmMG4Xx6lJUbdpp81IVvRRtzvGyWeck0Vq3nJ2KS3aOliV
	G2cOuDd6EUPpzYj7eh2l5vANNPR5iksemG5O+FhJaBG+fQS8LAd7g5R8+h01wec6cVYV25ZqB8hRH
	VgAs2spG1EoHdeE61ClQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvhn-0065sM-2j;
	Tue, 16 May 2023 14:31:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvhk-0065rX-1y;
	Tue, 16 May 2023 14:31:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 28B93637CA;
	Tue, 16 May 2023 14:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C302BC433EF;
	Tue, 16 May 2023 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684247467;
	bh=pDqiW6ik/osmZlDpZv4+OTNlDq/bBmRLJ4LLoeJJWNc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Plr0pCH8cfhw6IlqSPg+ZA609N8siQ6D0HDx2JQ3+C15Pv6aeoaa8rvV8lTmgLIJw
	 CHtLfzF5uy5WUXC4fUvMcDcFwSZjqmwcVLIcVo1PU6wM0JojQtYFWF4/ES1OdIZ6K6
	 L1VISLMo5aCtfhNK7Yn6DqPpqFCzOr6oc8gEPZelIzw/5M7mWv7eDt75t41e4jAKLd
	 ICMICECDd0CgaY3zSEklcbNJXy+tLHV6tXtVZYQJ+yrHzzWVPujm6uKNhBdZsv1DDx
	 PSlY0+2+RbvMGRPxvY6pOAJnFPSBFG3cUgKI2mJuqlokpiCm+qINRJblPC1JR1a1rt
	 FJjeuKHzwGIwA==
Date: Tue, 16 May 2023 20:01:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, rogerq@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com
Subject: Re: [PATCH v2 0/3] PHY-GMII-SEL: Add support for SGMII mode
Message-ID: <ZGOTp/tUsZdO/Mqm@matsya>
References: <20230309063514.398705-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230309063514.398705-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_073108_693334_20A4B38C 
X-CRM114-Status: UNSURE (   9.77  )
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

On 09-03-23, 12:05, Siddharth Vadapalli wrote:
> Hello,
> 
> This series adds support to configure the CPSW MAC's PHY in SGMII mode.
> Also, SGMII mode is enabled for TI's J7200 and J721E SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
