Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F2E0C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVcSYsqtsbtujleSAZBvRScsHWzU7YLxrHX1OmfKmEE=; b=ebcYNRU5etQrMa
	1FuGdfGpjevnsGY6guLy5A7ljo/NmTgrIslMt15nBgGW/4FJ6+fz+cCIzHbQ8iqX80qTD/ic5MSra
	rH9OyT2Qee0zEFTIcQCxedRd8Iir43qd35I1hi3FWa/EyD/9rcB4z7nuMLl6IMZ/lEeRLYJKJcarA
	+OKRTN+xV5C2MWeCl2kRFuazAtTLWixZtbCRdIMvYocmqARFfjlXSZZan0Mt7w1UVLEFDuKUdF7P8
	V4YLz3biAdOAsD4IqaqpBLgCgX8Zd9i+m1chEdFXu/Dfq9QkFP8EwxbHRdSco8s/laYxkmS/NARVY
	vJ/VKVm0x0lNI2ksGTbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hCB-00HZVT-H8; Tue, 05 Jul 2022 11:58:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hC8-00HZTn-Pw
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:58:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0DE4261727;
	Tue,  5 Jul 2022 11:58:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C823CC341C7;
	Tue,  5 Jul 2022 11:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657022299;
	bh=lCXFzDOu/arhn1E7qbcpYeWsTGXEZM7HRnIjvJuXRQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ItEhj+54jubFtuMGB8gFICe9Al+h8/22un5trpf08ioiYyvwAhcQzH8J88lV0U0Wk
	 3kjJoLEbZ999TJifjmeJ2AwV3LE8AGTm5SW8a0VbWS/jRSxWRcs0MgbfYv6I3JUbY5
	 oWlVK3xxkK0cuX9vrewGjpSUrtKS6NUGwyo5lmGSfYP/Etsm65PW47EAH8KnNNIBAK
	 mbszHYkTs/pjmhQSLifETgm9myld2cOlwWOz7opBpUtW9M9iin29/e2On84my9D0dS
	 iaLLBkRA28pyUz2XF0HEHioDPv/P3pqY+j6u2i3yZtvqyM5Gz223bCAimMTq9WM22o
	 wp5tytzOK0tIg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8hC7-000679-Jh; Tue, 05 Jul 2022 13:58:20 +0200
Date: Tue, 5 Jul 2022 13:58:19 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 38/43] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Message-ID: <YsQnW2o4eCU8PlWl@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-39-johan+linaro@kernel.org>
 <dcff330c-92ec-2302-8e2a-4ac124e72942@linaro.org>
 <76508b56-6733-b65c-d81c-31ac173780c0@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76508b56-6733-b65c-d81c-31ac173780c0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_045820_942756_5FCAC78A 
X-CRM114-Status: GOOD (  22.46  )
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

On Tue, Jul 05, 2022 at 02:13:04PM +0300, Dmitry Baryshkov wrote:
> On 05/07/2022 13:20, Krzysztof Kozlowski wrote:
> > On 05/07/2022 11:42, Johan Hovold wrote:
> >> The pipe clock is defined in the "lane" node so there's no need to keep
> >> adding a redundant lane-number suffix to the clock name.
> >>
> >> Drop the lane suffix from the pipe clock name, but continue supporting
> >> the legacy name as a fall back.
> >>
> >> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++++--
> >>   1 file changed, 6 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> index 385ea3d8de08..254ad25591b9 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -2210,8 +2210,12 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
> >>   	if (!qphy->pcs_misc)
> >>   		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
> >>   
> >> -	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
> >> -	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
> >> +	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");
> > 
> > Just get first clock and no need for handling any deprecation.

I still want to deprecate the current name as it makes no sense and
risks introducing inconsistencies when adding new resources (e.g. should
they also get a bogus suffix).

> If I got it correctly, passing NULL instead of the name would do the trick.

Ah, thanks for spotting that. I feared this would require adding a host
of new devres wrappers otherwise.

Would still be needed for the upcoming second pipediv2 clock though...

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
