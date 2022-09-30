Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5896C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pjo3SB/xIhW4x8DLPS0jy4EFPpdJ6Ke8+jHQjBr5s6Y=; b=SDO9Q9uh7UNAV/
	OkAu7dnLBA3pn3HtIv0NEr9Ke1ui2XbtGqjKKEmSttnSXSHqdBSC9B13l/mq23iUikdwCqwn8D7zx
	ggF7/2gKgMOCsUE6dNpKlQakeqssF5BQAa2TMsvyzC/s47J5g24I5C3H3jkdXBTo4YriLKnMAXof/
	HEaScZc8tZjxMKEAUZp3ntmvRleuHxUsrLZ41hoj3lVQX6LYHKseHhsaPRIsLzOFDuyxleZ3FxpFB
	vYbuQYwP3k2xb9yJpo66EuUotJfYyAd8SauOLLDkfMKgJE3dtBwwjq0gJWiB76FqnHYT70AKAu1Ay
	XsW9MJYAUQ3IeapjuJUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeE9A-008rAM-4a; Fri, 30 Sep 2022 11:25:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeE97-008r7v-Fw
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:25:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E0238622E1;
	Fri, 30 Sep 2022 11:25:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42EFCC433D6;
	Fri, 30 Sep 2022 11:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664537129;
	bh=EtTfFT95kJOlidZdVTvfFENPF4UX2MmvkhuMlNo/5/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fxkXsVbJTnaqNg90wrGGaKbu5cDEYBRIK3HdYvLdz8bNGTDmaC+f0PitO10wCHvEQ
	 VCrHYTpLIt/NtBwjyh9Ub8KVU4GCdx8w0RNFyzy3UQUulF8alvQ09EowF2EwF2TX68
	 Jpql8OVFsie8fCWVhzLnIslIJ+t94sucOJ74pxwUnPafyQXNrDS/8qIkLA6jAOKYiD
	 Fg7CoKcr9IRgbsS9lZayoksFlTI/eTMzjrulnpxN23xm+HFabMH9CDWN1AzaXoqwuH
	 EdTfBibGznid03MlMKY4hl35DM0ykGgni+x5PtKiFfjMvHcPlAfALnUXtsJjnD2Nwu
	 7p9tEdLcvT4qQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oeE9A-000157-M8; Fri, 30 Sep 2022 13:25:36 +0200
Date: Fri, 30 Sep 2022 13:25:36 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 11/11] phy: qcom-qmp-pcie: drop bogus register update
Message-ID: <YzbSMAOqaP5vFF6o@hovoldconsulting.com>
References: <20220929092916.23068-1-johan+linaro@kernel.org>
 <20220929092916.23068-12-johan+linaro@kernel.org>
 <d82b0c09-194d-9357-a887-f0c8f81fb6ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d82b0c09-194d-9357-a887-f0c8f81fb6ab@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042533_617498_FB260F06 
X-CRM114-Status: GOOD (  15.49  )
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

On Fri, Sep 30, 2022 at 01:57:46PM +0300, Dmitry Baryshkov wrote:
> On 29/09/2022 12:29, Johan Hovold wrote:
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
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> #RB3

Thanks for confirming.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
