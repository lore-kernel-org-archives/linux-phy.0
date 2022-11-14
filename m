Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 692A7C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndQ1vHUBlKeo3jn3tPqMWiwrNYaE4EUyH5TeWWUwz3s=; b=Hhy23kWEU02ZoD
	AWhX3j41xrAojcFxpayzJ4N6J8GdTfgceXeN8q7Ki3NpQ2Nfl1K71m473WCi7U8cGAQx9wWHHnNqm
	5AwyT+X0LLzGUpnDhFJRrRvCFFMpH9/MJ8fsEHfRLbKe98U/CfGSpcMFR/lZ70Mi10Hqmh7B/Ocof
	4qcHJKuBSoVikFJMMoDuR/LInfHPUytpa8eCGK0VT9meqdTbwP73l9uc8ZW6rlr1s/A4r+8nhF+hs
	f16hCFnTof0YzsSRWTOl+ZW8HdCOMdgmD7rx2QYkNXpXuCjkMpfVGUFqMejO+hQesO+31BDT80SAO
	YzA1BS09LUJtY2pMFujQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYzl-000yUV-Ru; Mon, 14 Nov 2022 12:55:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYzi-000yRq-7X
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:55:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id C1185CE1018;
	Mon, 14 Nov 2022 12:55:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB4F9C433D6;
	Mon, 14 Nov 2022 12:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668430518;
	bh=Y9y2PP3dM3aiSA0/EAu5FI2WtvutiNqnsGRh3fAAYKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JT7GVlQcKaoFspCF0Vi/SNKgAgvJvHP4XchNVWu2eWfohcMUBpjEZhzu6frXmim3T
	 k0+elV1VjXnF5OEaMOfpTp5PbvsXAF7ByKuD5V+6GOGIRboRZA4EUoqq4AjXEPaTZm
	 sS4dKt+/cWk8Y5poG289Z8uuUdLX2KNQy3ye7ht/aJ+u+ekX4rB5jolOtA5MuzvaTy
	 VboHuB1znUQFhL5YXTlCqIuuNr2Ep2ochgjjh5c2IW3g86yeodVM92r4bSW/wHcLlj
	 CxkVlfWEn/8IMia/ZJCwuDVHzIXdfjHb1HwzDj04F1bXPyJZQaKVqJpW03q4Vg3ZXF
	 w52/SsQs8+FaA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouYz6-0002SD-TR; Mon, 14 Nov 2022 13:54:45 +0100
Date: Mon, 14 Nov 2022 13:54:44 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/14] phy: qcom-qmp-combo: rename common-register
 pointers
Message-ID: <Y3I6lN6UTHg2ozNP@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-13-johan+linaro@kernel.org>
 <f3ae781b-2046-e1be-564f-9de74107f000@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3ae781b-2046-e1be-564f-9de74107f000@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_045522_530398_EC5E8F7B 
X-CRM114-Status: GOOD (  17.12  )
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

On Sat, Nov 12, 2022 at 02:31:27PM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 12:24, Johan Hovold wrote:
> > The common registers are shared by the USB and DP parts of the PHY so
> > drop the misleading "dp" prefix from the corresponding pointers.
> > 
> > Note that the "DP" prefix could also be dropped from the corresponding
> > defines, but leave that in place for now.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
> >   1 file changed, 12 insertions(+), 12 deletions(-)
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Note regarding the last phrase: I'd suggest leaving the DP prefix in 
> register names, it makes it easier to visually note & verify the 
> register block.

My point is that "DP" was never part of the COM register block name. The
confusion likely comes from the vendor driver naming these defines along
the lines of

	USB3_DP_COM_POWER_DOWN_CTRL

Here "USB3_DP" is the common prefix for all defines that apply to both
"parts" of the PHY so the corresponding Linux define

	QPHY_V3_DP_COM_POWER_DOWN_CTRL

should either include "USB3" or drop "DP".

This becomes more apparent on SC8280XP where the corresponding define
is:

	USB43DP_COM_POWER_DOWN_CTRL

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
