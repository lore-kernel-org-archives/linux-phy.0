Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4025EC43219
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 12:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHZS3WHFh+ufEkBjD0oZKd+i8HjIAkeolvqwuk6w/fc=; b=F2cr1VefNYij9J
	MUW4tJlGo6UFPP5+mO4cuA/LLr4n0iCL2vZFJqbebuGhcT02khtlxZojeUZvfwv3nK3bZyyOv9/4r
	9BbUMH+TOqxj/zHbHh2AUXhECZxt9pJFiYoORTP05ziFBXogeCncvDClLAK1NTW0hxY+PLpvjMUK+
	CUChkfgzNfmYBbE243PSfmVM5P9Xz5IBiD0leGg6RoMBDIeP79vovYhSJNWE5gj2r9Mu3Dk2N3Tta
	3czIbgDHK4/VjjIm90G5rGDkCNpnvFZRMS20azpInuoeJLR92nFxmVIpMHtsqkGolUJQZHle3AJ9k
	jt2sWkadGaxdo86ZA27g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orHzl-006Txa-M8; Sat, 05 Nov 2022 12:09:53 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orHzi-006Twv-W0
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 12:09:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9B7A1B82D5C;
	Sat,  5 Nov 2022 12:09:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B127DC433C1;
	Sat,  5 Nov 2022 12:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667650188;
	bh=+rs6Q+VjOlHj+euSJ4o9S8ikRCeAGUE9DzDvLfyibdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W+FRiPsAMrVf7EpIXJlJh7YkPvn8BTHV1EBTaIlm6gPA5Tm+jylGj4zsiMqTeQfmf
	 7OuurQkPK6yQGhF1IwsNT1iZcI4ZAqe+Q6M65xI67x/vPS7/4iI4MgipLHAm58wDxv
	 zBV2JgGcVWi16bPr2peWGZnuNQAWEMrgsWp7zeUCMojY2U6zXGIN1gPfqseLQA3QuY
	 Tsz4sfZOxqtY7s8hYse5+hF4aBUk7fOr8qkdQuDjaEPhdWKxZDpTQlOEmxButgOL4G
	 sKTlY+gyq6TnY9Z+ZYyOZjCB6eTQFMoatok2csYBvhWaPjmUvHatnFZ97KX5K5S+AW
	 xN+effbYPJ0pg==
Date: Sat, 5 Nov 2022 17:39:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 10/16] dt-bindings: phy: qcom,qmp-pcie: rename current
 bindings
Message-ID: <Y2ZShqNfwB65lX+0@matsya>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-11-johan+linaro@kernel.org>
 <33b13789-33d6-a22f-82c9-4c5691d0737d@linaro.org>
 <Y1zot8aJ1WXnbrwF@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1zot8aJ1WXnbrwF@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_050951_199642_EE5BBE93 
X-CRM114-Status: GOOD (  22.36  )
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

On 29-10-22, 10:47, Johan Hovold wrote:
> On Fri, Oct 28, 2022 at 05:57:01PM -0400, Krzysztof Kozlowski wrote:
> > On 28/10/2022 09:35, Johan Hovold wrote:
> > > The current QMP PCIe PHY bindings are based on the original MSM8996
> > > binding which provided multiple PHYs per IP block and these in turn were
> > > described by child nodes.
> > > 
> > > Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> > > child node does not really reflect the hardware.
> > > 
> > > The original MSM8996 binding also ended up describing the individual
> > > register blocks as belonging to either the wrapper node or the PHY child
> > > nodes.
> > > 
> > > This is an unnecessary level of detail which has lead to problems when
> > > later IP blocks using different register layouts have been forced to fit
> > > the original mould rather than updating the binding. The bindings are
> > > arguable also incomplete as they only the describe register blocks used
> > > by the current Linux drivers (e.g. does not include the per lane PCS
> > > registers).
> > > 
> > > In preparation for adding new bindings for SC8280XP which further
> > > bindings can be based on, rename the current schema file after IPQ8074,
> > > which was the first SoC added to the bindings after MSM8996 (which has
> > > already been split out), and add a reference to the SC8280XP bindings.
> > > 
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > 
> > Also missing cc devicetree list.
> 
> Yes, I know, but as I mentioned in my reply to Rob on the QMP USB
> series, I do not intend to repost this series unless someone insists as
> there were no binding-related changes in v4 (or v3).

It is always better to repost and get that out :-)

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
