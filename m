Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57B7C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 13:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYW6/MDnOj0u1vZBFD2qesiQSLv60hKOTUR4S2v3qZM=; b=yJN2IjVi/MiynJ
	jc2HU+A3/MjQbU5azToz4lFfg8QsyvK32amh8CN0RRJB98ImNGPYMHkD88/kWLOBFaTy7RW0dewuy
	JwRyuj2N6sdpmChvcbP9wQT8axf+1C4XxbEBDz9qh/WstzLqKCQvTDwSrNVGNvSOXC6m/tKL8+vxh
	cftW+tJnrxMBeZu4f4y6yvxCgvtuvppp4HtY8o6jOr8m1UTkr1Ex12eOpiWKu3Fx7egAKD4Lorr4h
	7NYwzVsnAx78KnHAGVsnQkpBq7jFG1mAxPsFbQ16jlxEjkFxnTnTJ+vg7HSdQfqryhIYoQybxcTO8
	lHa2FMUycP7ejKJpVoVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZUD-001Cws-W3; Mon, 14 Nov 2022 13:26:54 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZ8T-0012mp-Vh
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 13:04:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A5BB0B80EA6;
	Mon, 14 Nov 2022 13:04:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CA3BC433C1;
	Mon, 14 Nov 2022 13:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668431063;
	bh=B8vw6qZp1pAdTc0xkFcFrwXOTcOIyVYrxMXbsKmlHSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iLyerZK1InQ8OyNqlEdaHZAmAzfxqIrN+EaSobimUtA3S5xPZA06hIatGXMCGJvAn
	 3hLPt6LNZayKDMC6tLu05P/PtJ1RH7LiTHN+IjNAk2e3/H24n2UBcQgdxmg0506egE
	 hl7LQmKcsKsll7LActV8R++9ndv2PZvCPdrgvxbGv8H1SlAyIzP9nigHw4jzyNZTOh
	 4ryeEF/WSdauM1I8BMdZ62bZrgdTwmuHTrRCdt7dpZtXxF/6scgNP/PnXv8D6ylDFy
	 t5EFVSIS28TUWR4ixRa38Ty6sGSW6Uo/NqH6jhmU9CLO123ZPTZDrjL75nxldHpD7I
	 IKKWUNY5Ucaag==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouZ7v-0002Yl-Ig; Mon, 14 Nov 2022 14:03:51 +0100
Date: Mon, 14 Nov 2022 14:03:51 +0100
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
Subject: Re: [PATCH 03/14] phy: qcom-qmp-combo: drop v4 reference-clock source
Message-ID: <Y3I8t6it7DN0Id1G@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-4-johan+linaro@kernel.org>
 <14f01c33-dada-b66a-f81a-74b9028de18b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14f01c33-dada-b66a-f81a-74b9028de18b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_050426_199636_003A9E20 
X-CRM114-Status: GOOD (  13.41  )
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

On Sat, Nov 12, 2022 at 02:43:38PM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 12:24, Johan Hovold wrote:
> > The source clock for the reference clock should not be described by the
> > devicetree and instead this relationship should be modelled in the clock
> > driver.
> 
> Do we have a fix for the gcc driver?

Bjorn is preparing one, but there's no need to wait for that to be
merged in this case (we have a ton of references on CXO, we need to get
the binding fixed in 6.2, and some other reasons which Bjorn may be able
to share soon).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
