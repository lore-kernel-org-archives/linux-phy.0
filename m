Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26AE0C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEZW9NvuBGckeEVvORH+R0giYo6HtYOUGysrqM0HNXA=; b=BQGrRl65fxstce
	81sa0h5ZP2m/PqlpbE30fMRfzM4J9Dx0MgUJHTHkZoNq53Z9uq8aKEql3avjNPjlkGGjpZpvGEJNh
	ZepkpyBhtGnTtuops0jModFjsvV0T0g2cJeafcYxl0RLdxdO77muQDKiuifH869hdMw8CmmEuCX2R
	5JhA/T33cXBVwomEA3lhDeuxXhcgam18W/eoLa1dPH1A5vxec9/3ndJt3/lf+HOqT4OjB1bgVG2r9
	0QL9YiRLM/M4ESWlol9HYDLT6bW8Yi6SuU2pcoRLfEi6w2IzaIJl4Qoww7o28e1FNbC/S9dvdAvtG
	7JbhcpT8wKwaWQDxHlYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYo2-000sTk-IM; Mon, 14 Nov 2022 12:43:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYnt-000sKf-NR
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:43:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3FFEA6116E;
	Mon, 14 Nov 2022 12:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 036A9C433D6;
	Mon, 14 Nov 2022 12:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668429789;
	bh=SjB3OqbdMsh6d4Hu5GyXmdkPniVNdvUIeA6TIRfqTzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W0TYITlLU7S8TIhSwP1y4nLqbB5OqjV67/eAW3xwPilR/Dwjh7Nvx6W2xgLftgc8b
	 mPhfgPQ+W33tobxRiqd7QMR9aBzpOFdEdGyfxsD6y5d4ZlYTrWXcBUtCAPvVHhmhWC
	 M2IKj/XzytJiw4FNCrJsPCSxgoKtzuwOnPNpJ53p5AnmEfycBu7jd/QA6eiTCip4Gv
	 /CF/FTN1yyPK/iRgS5pvR4ZcBYojiqqvUx814uidhSbXkK0knuK8Uam2B9MOxu4kV4
	 L4zMdrH4G3t9Q8uvW03urk3icV3ir71OGi53N2lUA5nRCVmHpvNDUi2yZPWEy35GMQ
	 BFNmDRDoECNIQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouYnN-0002Hw-0l; Mon, 14 Nov 2022 13:42:37 +0100
Date: Mon, 14 Nov 2022 13:42:37 +0100
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
Subject: Re: [PATCH 08/14] phy: qcom-qmp-combo: drop redundant clock
 allocation
Message-ID: <Y3I3vec+9Ob1dPhW@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-9-johan+linaro@kernel.org>
 <75e188ce-99ea-7511-a561-5b0fef9feeaf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75e188ce-99ea-7511-a561-5b0fef9feeaf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_044309_822212_5AF2D6DE 
X-CRM114-Status: GOOD (  14.88  )
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

On Sat, Nov 12, 2022 at 02:17:44PM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 12:24, Johan Hovold wrote:
> > Since the QMP driver split, there is no reason to allocate the
> > fixed-rate pipe clock structure separately from the driver data.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 ++-----
> >   1 file changed, 2 insertions(+), 5 deletions(-)
> > 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Note: it would be nice to port these two patches to USB & PCIe QMP PHY 
> drivers.

Already done:

	https://lore.kernel.org/lkml/20221111094239.11547-1-johan+linaro@kernel.org/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
