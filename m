Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DEFECD342F
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 10:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cqSA/124I/6QNTqbj/FkjDWHUVqsTSFJJh9h4ejhsA=; b=EIOzUopOFvERPo
	52pmDIZcWPO3J2FcnS0Iv2czG2TzDDQev4hsh0WkFKGGX2Rq2rZ5qB/78zTgTDmHJlWzn3PCLYXLZ
	YE7MvIobR6/NBymlm0XsnGmtqEiMNNPeKgg2UrM1AS9oLkTfy0WPzX0eB77f8tUT0GZRfO3qnL4M7
	qdfvmhsdLqF+GXC224FQob5H7oi3hxgMdVu8D30XUfL2hu2A5pWPkN4OMFnIhCJVu7Vi1Gjy9Dq6O
	zl++XTEAUzJSGD03hBWwrs5izIj1Nnhm0JnymsBGImBUkLXMd5DvdZ81iQ4frc5N+xxfaBj22xQxA
	Xzm/oRwJCF8YFKihawLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDM7-0000000FwrJ-1bSS;
	Tue, 05 May 2026 10:50:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDM4-0000000FwqR-2DtH
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 10:50:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 40B484058A;
	Tue,  5 May 2026 10:50:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A774C2BCB9;
	Tue,  5 May 2026 10:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978220;
	bh=wlXpugk6r9mJmRNQ2cr1RlgB1qYY1ILeREvHnWMgMg0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mzVXiRx5bazBpUd05r+8RLJ7f6es/GACNwaTFGBccrNR7pe9NBLwBmifxBIo+4ONG
	 z9PN9NmDv/klndYV8FaY27auclJGEF4JUZbRJYdzIcmOnSqlfIvB0+eavfAFBIanxI
	 9r4IOASpgpqzOKB+HRZ11JwrlrLjSmcWCFeWhIHnlOhqCNmiBcd9l+P1OOOEYWUE01
	 mkQXfYwzrQv+J5KePDmTsB2xpNLAOqmwIIxeiDquxt8Is1JoaJtsoFQC5pk7biBO30
	 gyRzG3NUnwt1+YRz+0D/tNdplWrkaJjKYUUsj2KX7rmQR8yPvyNUWPxg0wBu/moAKI
	 RSS5GXB/WlCNw==
Date: Tue, 5 May 2026 12:50:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Johan Hovold <johan+linaro@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-usbc: Add qmp configuration for
 Shikra
Message-ID: <20260505-glittering-shrew-of-promise-09db29@quoll>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-5-krishna.kurapati@oss.qualcomm.com>
 <gb46nv455vfkldkhvlo7c26amuonrlzvstirdpbzictbqgyxox@6vypar3byxhs>
 <230aef5f-43da-4b7a-994c-7a63b631ae8e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <230aef5f-43da-4b7a-994c-7a63b631ae8e@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_035020_586462_2E5FA1BB 
X-CRM114-Status: GOOD (  17.66  )
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

On Tue, May 05, 2026 at 09:36:31AM +0530, Krishna Kurapati wrote:
> 
> 
> On 5/5/2026 12:58 AM, Dmitry Baryshkov wrote:
> > On Mon, May 04, 2026 at 10:36:59PM +0530, Krishna Kurapati wrote:
> > > Add init sequence and phy configuration for the Super Speed port
> > > on Shikra SoC.
> > > 
> > > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
> > >   1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> > > index c342479a3798..400dcebf8222 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> > > @@ -2019,6 +2019,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
> > >   	}, {
> > >   		.compatible = "qcom,sdm660-qmp-usb3-phy",
> > >   		.data = &sdm660_usb3phy_cfg,
> > > +	}, {
> > > +		.compatible = "qcom,shikra-qmp-usb3-phy",
> > > +		.data = &qcs615_usb3phy_cfg,
> > 
> > If we are reusing Talos configuration, should Talos also be used for the
> > fallback compat instead of modifying the driver?
> > 
> 
> The clocks are different and hence I didn't use fallback.

And why can't you use the same clocks?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
