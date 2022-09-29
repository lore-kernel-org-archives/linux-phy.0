Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C7D5C07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 06:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNvGYK7PtNOmBw+3SIhdkP1APC+De0Cm/AAwQgaLzng=; b=Ggp7TvLUXJeNT4
	EdyJVpn778xTlN7NBq1ue5LhvFnlxAb/tyeq2DV6wSu6uzHPVilRvweLfGQ6taHM6jN9I0B+BbIfO
	Vum1QfKAW38E46af9UAUWoaj/1bC0iPo2Oh5A++a1Qktw7DYYsvUw13OMYo9V8oawwaySonnQMeID
	+dkfXagUKHN00iXrSK0qnTMqGiinTdgWiomm818ltLZ48Tvps62EpjqAT3ykq3eNkN2OO5r9z/moW
	T/kz2FklzVrRV7tc/N91XEs/MAxBHLby+t8Pzlg8gd3B+ouqdZmUarAjHqHzUNG/Zq85ZoBtST+Nm
	3F8tjFtl/mOLOuC6CpVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odnT7-001U1X-GF; Thu, 29 Sep 2022 06:56:25 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odnT4-001U0a-CY
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 06:56:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6EDB9B82365;
	Thu, 29 Sep 2022 06:56:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8579C433D6;
	Thu, 29 Sep 2022 06:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664434578;
	bh=8e2sx4sQPbmcCfkfJZv9gfdi3Q8n+Bkj9pgn/A7YiZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TSgbnwKq72Id9ST9hbR1VtFJGKIhK+YONZnUSnj9J+vejAIzOGmarwEhF7s7QX3Br
	 xw3eqND/J1866/wjjcinVifPvOOrmdg54rgqrh0JTjYlKTQWaSNmRirPHRjIazl4tC
	 uf4VuBMZRtwjRJZ2kKtfomrTCTnpad6s8reFCl7WhdHz0lr1nQ/RWiOKzMY0SuNqkY
	 oZg7gTqX8ffTSyvDGjpd0O7QEFdqLH9BhP4/QJ7vByPjnl+wlXlZS2p76M+ZVnL6RD
	 7C08I9pJ7k7FWQCZVMm+Ct4ODwwDfpBlNVjd0RVSSmxDlPgzk3YJksaF6kp5AHdUIT
	 SjP03RkWV7rrg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odnT6-0006OQ-Lv; Thu, 29 Sep 2022 08:56:24 +0200
Date: Thu, 29 Sep 2022 08:56:24 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/13] phy: qcom-qmp-pcie: drop bogus register update
Message-ID: <YzVBmJ5EtZzkm4cD@hovoldconsulting.com>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-7-johan+linaro@kernel.org>
 <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_235622_588426_2CD1CF9D 
X-CRM114-Status: GOOD (  18.32  )
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

On Wed, Sep 28, 2022 at 10:10:02PM +0300, Dmitry Baryshkov wrote:
> On 28/09/2022 18:28, Johan Hovold wrote:
> > Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
> > PHY is powered on before configuring the registers and only the MSM8996
> > PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
> > initialisation table, may possibly require a second update afterwards.
> > 
> > To make things worse, the POWER_DOWN_CONTROL register lies at a
> > different offset on more recent SoCs so that the second update, which
> > still used a hard-coded offset, would write to an unrelated register
> > (e.g. a revision-id register on SC8280XP).
> > 
> > As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
> > the bogus register update.
> > 
> > Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for sm8150 USB") added support
> 
> I'm not sure about the particular fixes tag. Backporting from the split 
> driver into old qmp driver would be a complete pain.

That a separate issue. The fixes tag point at the commit introducing the
bug. And I didn't add a stable tag on purpose.

> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
