Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A0B4C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qezp4HNcrbxLeJLyxwdTTZMBGjnmMr1MwCcle42EzjY=; b=vuSOw+4rVhr2h+
	elHFVkh7Iq9ApaEMtpm9MNU5vlpJLzNx47YcTxmrfjVaPdarmKYpCKaPic1OpOASUZBVfg6TFM3qj
	QZE04PF1gZtwH/hG0jsh5rzY89BgPmOot7oMRgatHV1ABLVi4dKg98gas2Mx3Um4KOYn61aCdLe/h
	TydwXtk28TUV5lRA970gEhudajeaMMXPUINvx3WBQTGgcvWNrSF98yCmGc/jLMNcMPfMVhfkbVstP
	gxST68xi2K1WanURr7jgZF4RpyjvaBs1nLFsze0wsg4XXfrFr7aoVCzXT6gpjjzN8rgvbhQtke4TC
	AtISj7oEA0FpILK4Xozw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZ3L-00106v-0I; Mon, 14 Nov 2022 12:59:07 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZ3I-001052-G3
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:59:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 32998B80EC1;
	Mon, 14 Nov 2022 12:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5DE9C433D6;
	Mon, 14 Nov 2022 12:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668430741;
	bh=mIg23pKPFLK0PkpdC5Bu9BP433GCopKjuM2NT2OEBkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hunFjVVaaFzGk6JM0HXJ8MBdy6SzFWI7ep8GBUNhJAbBwVoTvhCW4OHaFO8Jf197E
	 gRDy1/VrbzJy8R0Zb5IXYMHy2P8Te234zqWgo2EjCTQ3n8sKcV7/oaK93b70cilCSU
	 OWmeIeDpOEraOmZTQTdqsBMgiaiLs7ec1LsM3G8uvmx1Ug4sRh5Ts/e0FizD/KXDlN
	 21HwQIK+hKBofGTrVlfL+NbrKv2Uai0XBQjKsUtZF64Z9IoD8HrkP//zJ+cX3sPoT6
	 4Cz6takmhNOuZSADFFAZJBrRue4yBJyCOx/sjkSQbIdVvnIteiEYgJr7S6tW0CaO4J
	 sg28H5aBKr+Dw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouZ2j-0002VJ-Tt; Mon, 14 Nov 2022 13:58:29 +0100
Date: Mon, 14 Nov 2022 13:58:29 +0100
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
Subject: Re: [PATCH 14/14] phy: qcom-qmp-combo: add support for updated
 sc8280xp binding
Message-ID: <Y3I7deJYKRAUc0Q6@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-15-johan+linaro@kernel.org>
 <ae61af60-46ef-e455-6063-e47238c608b1@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae61af60-46ef-e455-6063-e47238c608b1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_045904_701412_19340DE6 
X-CRM114-Status: GOOD (  22.77  )
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

On Sat, Nov 12, 2022 at 02:36:23PM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 12:24, Johan Hovold wrote:
> > Add support for the new SC8280XP binding.
> > 
> > Note that the binding does not try to describe every register subregion
> > and instead the driver holds the corresponding offsets.
> > 
> > Also note that (possibly) unlike on earlier platforms, the TX registers
> > are used by both the USB and DP implementation.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 143 ++++++++++++++++++++--
> >   1 file changed, 133 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 0a4d53e6c586..544a7e55bf14 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -798,9 +798,25 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
> >   
> >   struct qmp_combo;
> >   
> > +struct qmp_combo_offsets {
> > +	u16 com;
> > +	u16 txa;
> > +	u16 rxa;
> > +	u16 txb;
> > +	u16 rxb;
> 
> 
> Yes, txa/txb are more in spite of the vendor headers. I'd sill suggest 
> to use tx/tx2 and rx/rx2 as used everywhere in the QMP driver.

I don't see any reason for making up names when we can use names that
match the hardware and do the conversion in one place when parsing the
devicetree.

If anything we should probably rename tx/tx2 at some point (as either
tx0/tx1 or txa/txb).

> > +	u16 usb3_serdes;
> > +	u16 usb3_pcs_misc;
> > +	u16 usb3_pcs;
> > +	u16 usb3_pcs_usb;
> > +	u16 dp_serdes;
> > +	u16 dp_dp_phy;
> > +};
> > +

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
