Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2854FCA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 13:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niJqIzjI/qXuHqWuYGsJ9gQ7OIW7J3SvFXKrgJuuXzE=; b=iPwJNT839yvyDL
	0U4F85qC2SEhjKosMsdNaq/d4C6/wOFiVxX3g5ywA1Xo9AuHc+DKAc2S088jAx+CmxjVRimchmOWK
	O4kuP/d9s7g9rg6gR+U+hurel2rHSCuekbmj5noIevzY9EkHOGGM3VQ/zpxn4dO+MqJ874m52XRiZ
	hf34dTU7/MhGu69K4PEZhMKV8jZUDrxhuzIxZRKYfAD7mCoe1Jpwpffu4AfeG9PTucPUVq2rdBfe/
	qyX51dJqprDb/iwLIv4XIVyYLKF7f6yf1ySJQ1u9+2KDzAB+T70HlkoEa7k35n2DrRcIwhLGOeSoj
	OnsI8iW4ABCzXaXlJtyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDiN2-0000000GRiU-2qPj;
	Mon, 05 Oct 2026 13:04:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDiN1-0000000GRiD-2E7D
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 13:04:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8316E60A70;
	Mon,  5 Oct 2026 13:04:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8827F1F000FF;
	Mon,  5 Oct 2026 13:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791205482;
	bh=SvZ50MTxf86/y2/B3yqMvVurhcL2GyUlrbK2UslfeeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LJCvdyCUPjlrmlwV0tjAkLQ5qLBUHdhaSyfE0ePObjEFGIDCzqWttFxs1AwA9jnsP
	 aHPe3nss8BfwJOmE2xIgnrtGjO5bYPE1ioqPA2ad8IGsbJVpKKByfRtW2kkrpp/tyw
	 21qWP7C6H4sfLeNa9VTTXjhfqbQubT7y8uz/JETMXgcldRgiyNwRji7X5EpqteVW5q
	 nETriVMheB9tLBUMqhtq+PWzaLB6Aq7uHxUzHmYhg2UGNtdxvTxxwV0EBqXJJc4HpY
	 EOp4Y2Xyfe/7FgLfnSug7TYOxlC8+NUTZmOBSySRtwwg9G8DlyAweR0vEkJAl40H3Z
	 bVYeRdVdd9mJg==
Date: Mon, 5 Oct 2026 15:04:38 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Manu Gautam <mgautam@codeaurora.org>,
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <pza@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
Message-ID: <asOgZrVX7ANq2h3W@parshuram>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-6-b04c4123ecb3@oss.qualcomm.com>
 <ck5st7q7rbnzfp26kbwzixorxlikq6hpmso5fzz33dlsqsrnrm@g3aey2pabkzb>
 <asN/uLBfYARYXlhb@hu-varada-blr.qualcomm.com>
 <lfs76pvsdpkkle3b75m2ez75x25xjqjkgbw6kkaf7rxqrc2plz@7sekrxlnqcus>
 <asONJKiT8pbIulWj@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asONJKiT8pbIulWj@hu-varada-blr.qualcomm.com>
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

On 05-10-26, 17:12, Varadarajan Narayanan wrote:
> On Mon, Oct 05, 2026 at 02:01:48PM +0300, Dmitry Baryshkov wrote:
> > On Mon, Oct 05, 2026 at 04:15:12PM +0530, Varadarajan Narayanan wrote:
> > > On Mon, Oct 05, 2026 at 10:17:32AM +0300, Dmitry Baryshkov wrote:
> > > > On Mon, Oct 05, 2026 at 12:06:31PM +0530, Varadarajan Narayanan wrote:
> > > > > Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
> > > > > on this SoC require a dedicated init sequence and override parameters
> > > > > before they can be enabled.
> > > > >
> > > > > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > > > > ---
> > > > >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
> > > > >  1 file changed, 62 insertions(+)
> > > > >
> > > > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > > > index b6bbf2b570c7..8957f208bc51 100644
> > > > > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > > > @@ -29,12 +29,15 @@
> > > > >
> > > > >  #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
> > > > >  #define POR					BIT(1)
> > > > > +#define ATERESET				BIT(0)
> > > > >
> > > > >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> > > > >  #define SIDDQ					BIT(2)
> > > > >  #define RETENABLEN				BIT(3)
> > > > >  #define FSEL_MASK				GENMASK(6, 4)
> > > > >  #define FSEL_DEFAULT				(0x3 << 4)
> > > > > +#define FSEL_24MHZ				(0x2 << 4)
> > > >
> > > > Use FIELD_PREP, please.
> > >
> > > Not able to use FIELD_PREP, getting this compilation error.
> >
> > Sorry. Does FIELD_PREP_CONST work?
> 
> Yes. Will post a new version...

Yes we have const version, there is also GENMASK and friends..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
