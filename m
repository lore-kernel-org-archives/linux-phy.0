Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CD5DCCA47F
	for <linux-phy@archiver.kernel.org>; Mon, 18 Jul 2022 12:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nojCydqUVQ12qomu4PaEjYZstzGpRgvyRdoTJE5KG0s=; b=qnjInTU5qFc6My
	SLuMdXh/3YvOuJN/S6pidPtE68BYquQzxRoz7kpvpUOAiq+ZVNhKD/3kwVpx3N8NxheJ23ygKA3kD
	tOvi4gbiQxSyS3hVS+MQ4S5Av6aPh0spdsBYTq2wVumSp97nJd3IpisRMFwAg4mhSMQy2bNan9XSL
	0Oq+tqx+KpkMNp3aRZf7Qi5xtPemTH0S3MEZA7OCqKHkD0seGWEjHlwixlYv4dzTV94bqw1AoeP0s
	BrUIuIEMNoQtJRIKDBZLxNbUxoL1fbSoAtd+Yf6YUXT07y82QOTzMl9niKbWxxlYf5smFzXSONS5T
	cmX8Et3/DtlK2wE+Vwhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPh7-00DBWz-Nf; Mon, 18 Jul 2022 12:17:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPh5-00DBUr-V6
	for linux-phy@lists.infradead.org; Mon, 18 Jul 2022 12:17:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 36533B80F79;
	Mon, 18 Jul 2022 12:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0B58C341CA;
	Mon, 18 Jul 2022 12:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658146663;
	bh=gSPYWrtefh7o03UpmnZKwVHqMxMyAtwC8qIBKGeufeI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m8xejPDZ1kQwRV7Cf1tvbT3QWcvA20KhW8Whv3AKt6rr/flPsl704hex+bWYewvGJ
	 JwBqo8NLrk7XFA2z5jQD2e1PrxPbSumTWD1irct0JhXnGG9J4qkR/CVlmVZgaV1fe8
	 fhbShZBqT4f1IHmn6zNfQdKqgZHwuMK2hjpAoGkCqjwkeRFzd+rAOP3B7377cjSypK
	 Z4qugd4t9bsfaPYmj6mWVGadyG8HN99xwFKv36b4YQPnqW3XZZi1m8CnztLN1UbhaY
	 wACpbI/r9lQJ6fJAArujGLzFasj4GT56IgMjRCsDNQJP02w85OJ0OMpsbQVuqTDqU3
	 mAUoi+EEZG+MQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oDPgt-0005sM-Rd; Mon, 18 Jul 2022 14:17:36 +0200
Date: Mon, 18 Jul 2022 14:17:35 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <YtVPX2WHKU61MTo5@hovoldconsulting.com>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_051748_183736_9655697C 
X-CRM114-Status: GOOD (  17.21  )
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

On Thu, Jul 14, 2022 at 02:43:03PM +0200, Johan Hovold wrote:
> When adding support for SC8280XP to the QMP PHY driver I noticed that
> the PHY provider child node was not described by the current DT schema.
> 
> The SC8280XP PHYs also need a second fixed-divider PIPE clock
> ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
> the clock name just to match the current "pipe0" name so I decided to
> deprecate the unnecessary suffix in the current binding instead.
> 
> To be able to add the missing child-node schema and handle device
> specifics like additional PIPE clocks, it quickly became obvious that
> the binding needs to be split up.
> 
> This series clean up and fixes some issue with the current schema before
> splitting it up in separate schemas for PCIe, UFS and USB and adding
> missing parts like the child PHY provider nodes.
> 
> The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
> PHY that actually provides more than one PHY per IP block. Note that the
> "lane" suffix is still unnecessary and misleading.
> 
> The final patches add support for the updated binding to the (recently
> split up) PHY drivers. Included is also a related combo PHY cleanup.

Hi Vinod,

any chance of getting these into 5.20?

Note that there'll be an -rc8 on Sunday.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
