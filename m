Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAC90C7618D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 09:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRSwWfWzWmd3uowr6DW/esONOx8mfbXabjKOLF0pMEU=; b=LRpu1EW2Bm24ag
	G0hoVW9G5fgDdOyjfIqPy75/MzFrLd0Pcrhu3H4FluiaABFFJ36elFTsGRNRoYzl3t4o+NpSK1Usp
	dFqJh8R2oufLHBmKlAl13nkYsVtos1bYK/ZztxHbggdIMoabjodPGDunCX1YtH7ASQwr2CT45sFsf
	fCdVcc2VvSPTCleiTiTiSmArw1aCwykgpT8riR09WoggxmixfKqbB58+TblftH+VIQ+3b1bzVeCC+
	sRQik6t41baHq2hOQV1FpT6RHZCuWFYl0r9v8yj1jbby5vyxIcZc6IrvK1LSTGvT+0T+WQzyKmc5p
	8SlrCJpDpZo/iGHpjKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peBna-008UB4-1b;
	Mon, 20 Mar 2023 09:27:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peBnY-008UAD-1g
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 09:27:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4576CB80DB4;
	Mon, 20 Mar 2023 09:27:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A9D7C433A0;
	Mon, 20 Mar 2023 09:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679304442;
	bh=rCKrNjd3yw6vYapn4P5njBlAE6teSv1Bf+1tVsguCMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DsisnhAgrDKYTQUBZVhCaTuo4xZHkVHl5076Fk7zLApJ55eWKS9K5j6UUuJYzpBCW
	 tpxQnrlfkK5dHzatJRPXm+b4jpDDoGimzOoUgaObzPs1unwqJdL9Mudi46bsy6Yyj/
	 WrqhgyLB7NENjQNTsPDS1r0DPuYXqxFeQXI0cUxBgL0Q0hwNyO8ZMLvPALQZr+KWeP
	 drbGDYbe/RWRVyH03u09M0C/W1p3Bbbw4gv1bzJ5z+8Ua/7KTdOO8sl8aEw6H+k6IR
	 PVSE2sxhd5IrvjwOoJZI/vHPmCSzLhxMvRdzXbXM6X+cSUYbjbSkEJN5RUm9FcgUyD
	 WphR7cavQmaFw==
Date: Mon, 20 Mar 2023 14:57:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
	kw@linux.com, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 12/13] phy: qcom-qmp-pcie: Add RC init sequence for
 SDX55
Message-ID: <ZBgm9QxXWJWpEuIl@matsya>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
 <20230308082424.140224-13-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230308082424.140224-13-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_022724_697029_C1B52288 
X-CRM114-Status: UNSURE (   6.22  )
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

On 08-03-23, 13:54, Manivannan Sadhasivam wrote:
> Add PCIe RC init sequence making use of the common init sequence. The RC
> mode additionally requires REFCLK_DRV_DSBL bit to set during powerup and
> powerdown.

Applied to phy/next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
