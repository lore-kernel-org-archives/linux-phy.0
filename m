Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043B1EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 07:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCcONA6EyKcthYdxpHjfRkVjvSi2yKUU+2tYXnx33nM=; b=ML0NdBjccgtQzR
	UR8rGURzrPfNZD2e3xZ7QQtdcEAibzOwwLHNwPlpMDmZlPbnfqXmbeAygcvmj7ygNvZ1oPP47AfX9
	Hi9k7gH9T2v9fiO+G0ddcDEdbdxvvhib2OZE41jyRPpcRcGUWEQ7fu/PqOKgIjkAIHg38pjd4R/Gh
	w3qwBPZnKc9Epu5+SCJs6DMODk5cdiyvTb6Ie+7xxp2ZGqn1BH5kKtTlsXdVqQc1OU2QhCMlmqzrY
	I+sOwj94zRdSpM7TbdwkfcGvY5zEzXICjS6wd5KqqgS6ZxDH7gzgaW38anoXQh6ZUl/+58VSv67TH
	hMTd98kJiHfZ3uSDgSgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83X-00E1O5-24;
	Tue, 11 Jul 2023 07:45:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83S-00E1L4-2L;
	Tue, 11 Jul 2023 07:45:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 425AD61355;
	Tue, 11 Jul 2023 07:45:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6AFDC433C8;
	Tue, 11 Jul 2023 07:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689061501;
	bh=9Ag/B60GOyqVuKlVkpbznxGrmbO2mCDq1YuNpV11Ykk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gZWE6ZW7pLesJpRPzMUXnHXSmjVPX9iM0812pBy+Y7g0qcoLGTl4ewOJNJplISRwO
	 kdXL9maNVYyCxJCTy/EbDRGxIDGtmAt9R6nL7wJYIEMggtXQzuKmxAU6M+a/9dOvf8
	 sLju4rrO+2+WLHMEkse8Wp4iUhtgug7F7VN4i2d2zC1pXVVmyJLd3VasUkv0JjoQQ3
	 lC+rVuyfi7RFGurCsdYBW/FuHseREuEhi/VIF8vPIJKjnTPM1QkbFze1tArRYpneyw
	 5RMtswB++5qQdejnUhC8ffwmT9IRLh1tpxbxgMrOJ4x9Al8myv77EkmUxNmjNLkdSQ
	 Gd0V5zae/3xbw==
From: Vinod Koul <vkoul@kernel.org>
To: anurag.kumar.vulisha@xilinx.com, laurent.pinchart@ideasonboard.com, 
 kishon@kernel.org, michal.simek@amd.com, 
 Piyush Mehta <piyush.mehta@amd.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, git@amd.com
In-Reply-To: <20230613140250.3018947-1-piyush.mehta@amd.com>
References: <20230613140250.3018947-1-piyush.mehta@amd.com>
Subject: Re: [PATCH V2 0/2] phy: xilinx: phy-zynqmp: dynamic clock support
Message-Id: <168906149833.189433.6561958193632482750.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 13:14:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_004502_808723_9319DE27 
X-CRM114-Status: UNSURE (   9.71  )
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


On Tue, 13 Jun 2023 19:32:48 +0530, Piyush Mehta wrote:
> This patch of the series adds the following supports:
> - Runtime PM support:
>   Added runtime power management support to power saving during the
>   suspend and resume calls.
> 
> - Dynamic clock support:
>   Current zynqmp-phy driver, by default all the clock enabled for all
>   the lanes, that consumes power even PHY is active or idle.
>   So, the dynamic clock feature will be enabled clock only for active
>   PHY in the phy_init and disabled in phy_exit. Clock enabling is not
>   required at multiple times. Activation of PHY depends on the peripheral
>   DT node status (status = "okay";).
> 
> [...]

Applied, thanks!

[1/2] phy: xilinx: add runtime PM support
      commit: 1414920a5fd570e67bb7d367eda08f8851b2e378
[2/2] phy: xilinx: phy-zynqmp: dynamic clock support for power-save
      commit: e4f01e75cdcf003f07ca5f4ba61823b687fd941c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
