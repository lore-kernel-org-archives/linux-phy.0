Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8DB0CA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 11:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0p9KQNIygibEkFAGRw0gMmSPuk0YYKViwtKwV2SLmvg=; b=vcm2AYfsje2IZM
	o07aH8JECe2Go5pP2ou/EBD1J8zrt7HmdWc9F2tj+BmebS608ocU1GxctK4V0yKJXfM/jDE2CzO5N
	SZAvl8ToL6+OoL1bHMqsvg4sPp9KZjQQTcqHhqODFfqsw1+WqIsBduoccDvcC3rHUisZU0/bBeZ58
	Ecjv+DvB1bS4QSj2KAdwTwPtSm6o9waVgE2s6gMDOFsMOVg66CrUewEYu4Q7fmN985EZqAqvlovr6
	wPHXbh1dbUbU1vVofd2eU01hG4d3qnOlTi2iBDq6506NzFbKNarBWixFUj8JtkUWOzCz9e0CyYF/K
	6VjwwJXy+JypEuNP1F+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgSG-0000000GGSK-1p35;
	Mon, 05 Oct 2026 11:02:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgSC-0000000GGQr-08J9
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 11:01:59 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 695AoV712183547
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 11:01:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=W7E7K4byUVJiE774L54djWwz
	KpsesLKw3mnR/cGeHcM=; b=WRk2aSzFYCp/2UTmSjZw6OZFQVLL2nNsqKUQKzT5
	9rCOtW4CaEtONqe8NynQomZEKSpRaEZO5XDLocv86bG0NYZouEYBIC3sghyJVQfI
	EDin35lZQiDWnzmL0E+2RVRPQ1nwwOTudvgcqCn6ZaiSGdNRwJWtcCzwYpDxVQdu
	npRIzhJoSJrzqkwyoNdRIMQNUU7QzVEQD0tvQma3i0dbkpKHMlxNdYxyWzhdvHMO
	zrk8izOheX1S2wndrQx6gqpeFjcBhGZOyNj/SrWXQuYiQScdKu3Fap6fdH8a5Z5i
	O7BvSubsDDsjdDgT1YJxH2SekT10lEa+ZLB4P8sk89B6Ng==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h49tvr5md-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 11:01:54 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7c02e1df088so54357137.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 04:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791198114; x=1791802914; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=W7E7K4byUVJiE774L54djWwzKpsesLKw3mnR/cGeHcM=;
        b=hfeHhgHAFqosjsNdmttHCDSr/TYlf97ZH3bKKhbGS0yg6x4YTsaH321BVM/n8WAZoX
         yR4GDu37EYO/gWPB+lcJOGM9G2tNBk3Dkc2pdGIm2RwEh3XzYi7bYP45522JXiGd3YA+
         in5bDOSNGdw0Yu3x3YbT1E6cUphm3UWasISi/LcLchNYzGbIgrNXrm5CCAfjKyjkAS+i
         i0Ub8a2N1xxu3SOSvR15731uv5V6bEoWCpXX5FFJHsbia/gZpTcJu06fXnCKUlarWbhj
         yDvo5UQtlXQ/EDyo8GCskp+nbGHAoTSdd+PnK/USG0bbHJHHEgOkj0gguTvxrL+muOlU
         bd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791198114; x=1791802914;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W7E7K4byUVJiE774L54djWwzKpsesLKw3mnR/cGeHcM=;
        b=Y59yhTxJsuOkBLop8xwrlBH13cthiTaT/eSvVIDLgRR0L70QVS8iBzaalyBVWjG8xt
         xWaiZYwH3uUAe4mG3tgFw283eWYBy3NGsxZFJt3chIKLvsxy95PZa+Ks35tWsSihvFSh
         xHQijZEfhdtFqknGmdYy5zUZ6LTCnNJJVOjc3VYKv3o7cajJrVrKLIAFNaCZsRjpx3Wx
         vXkUsl14n7sg2EJoU6g6aWFpD9mW358QVQ5MKdUEg5uWQoogSaqOZAJMXvqYzVuNgAvd
         CcHrAxr8HS1AKChbR0MviboY8sFmZGGRnlHgH8pK42Paovp2eWtDPwkEJQnmxtvpalWA
         nl5A==
X-Forwarded-Encrypted: i=1; AKwUvBwy/GPX3L3MqCQe4b04ctWiLZOYG8DzzeT11y0h5EImyy6Zztbxv9Lj7UJZc0fE9uXB6SXifJMk42c=@lists.infradead.org
X-Gm-Message-State: AFq9FYIm4ef18K/fUVSK1S2rM1jcKt3kr75cvTFIjKHqPhuE0IZEw+fy
	nN20kQIJgL/sJMPeI+/pPEiAhOBy5PfQxSh6hW2FHXu5MVwdE7iWd9SchY64hhuFCsa3lKMepTP
	ZHAJ8j0GlFNBt0EgHJ5ZFDD7wm/akR0H2HrdmNoUWkmFcsam5fFMWfiAOFFm6LXtBm6t9LpQBwZ
	LD1r4=
X-Gm-Gg: AYBFou0zC+4rxsmQ4zMHUTcDCIhWTLXPHtjcy9Ofnob0RzYwPmzsRLoLaE+NTXRNOVd
	e7PKWupEGF52/sNbwciyjUUADwvDsHgFNDPC3/qsgZtuttwQYHbP0Jo3mYpNeRaWhJEY5Do/oRJ
	GLH7bCjcZquyGGHG/1E8ptIqSjWjWgYcWR4RHa+0YGaPP6W1zpt6HuAUgMWNLpBPM0Zbat093v/
	U+56ZSStMVudJQ1XEmsclZJnnPIK3iBZ6Jj97LOsnzhnkxxvL3TrxDLif6OJJMSi3VzyugAP1bA
	FxOjixVh8PljpnLlRGNcd/FxbHxXjHuwY2GKpgNWtsethta/PcjOYb4/g+JwK8fAhR7uBqTyeBj
	GugFALaPJkWV5OyhBfQpvm0uC6HRwW9yes6RBhrUaElDQYtjsEAzb+g8KXurJR3b8553cg0ANeg
	SlEcbwGj7/6Fzn
X-Received: by 2002:a05:6102:390a:b0:7a6:a24e:8140 with SMTP id ada2fe7eead31-7c0f488a869mr2125289137.14.1791198113799;
        Mon, 05 Oct 2026 04:01:53 -0700 (PDT)
X-Received: by 2002:a05:6102:390a:b0:7a6:a24e:8140 with SMTP id ada2fe7eead31-7c0f488a869mr2125284137.14.1791198113297;
        Mon, 05 Oct 2026 04:01:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a87e333cf3sm41714871fa.39.2026.10.05.04.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 04:01:50 -0700 (PDT)
Date: Mon, 5 Oct 2026 14:01:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
Message-ID: <lfs76pvsdpkkle3b75m2ez75x25xjqjkgbw6kkaf7rxqrc2plz@7sekrxlnqcus>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-6-b04c4123ecb3@oss.qualcomm.com>
 <ck5st7q7rbnzfp26kbwzixorxlikq6hpmso5fzz33dlsqsrnrm@g3aey2pabkzb>
 <asN/uLBfYARYXlhb@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asN/uLBfYARYXlhb@hu-varada-blr.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=aN9lOr9m c=1 sm=1 tr=0 ts=6ac383a2 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=lHZ1h7A91xy7d1hexNcA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: m9ok8bol67rXqgJrWcGxDMnvuxXTk5G6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDA0MiBTYWx0ZWRfX0aoaiYCdERGX
 Tsut7f+XcxgrllCKshGwcLzA22IwqEO8ONzZllcz5f7fLAmIE371oJgsDyZQAHSpG5oweYnHMyn
 QjKRzIGaUJTI4VVDOMpnu54pmg4ndZMkJ3V7/OurWL0frK4WmiJ4FDwQVqclHkzY1DiIi/ckFiw
 2/SZZvfi/qZ+1YNrxJd6Nev6kE3Vf34n3m7cAl1jXy1LMzTTk/VS2YkJavqMyiSfYdSFCobmM2H
 03+nfZIfQXglFZCE59wojCLztnAzoFpZlTCC+0DSY3x6pvJb8IkkcTG8BhAdMYRWvVNDR5uEDZ3
 m/nwerGqDFrHkUXS3/nhbSqyTd1NfyQgP7bt3zSq/OWKhrKI66WNwS1qUMYT8OK2AifdOOiIx+Y
 laplD8RfMASWvQfBvFxrUq/TS7RBdkg+TuZKFdIJzZdFk27yTUqZ/x/fxwIjm2MJWJKVAWzs+Fe
 i4DEzV/OFmrda6jE1ag==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDA0MiBTYWx0ZWRfX6w5BDiadEFdu
 pGG0WVx1Jv+dTjS8uuJsWRtXhEahZuc+tvxAV1hjQ2khpt/NjTjMhJhTnIR06ny+cHnXO8k8seP
 Kc8Hmk/i8IZ6Ojnmr5oUepd7l+sE/o8=
X-Proofpoint-ORIG-GUID: m9ok8bol67rXqgJrWcGxDMnvuxXTk5G6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_02,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 phishscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_040158_571216_C4447CC9 
X-CRM114-Status: GOOD (  20.49  )
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

On Mon, Oct 05, 2026 at 04:15:12PM +0530, Varadarajan Narayanan wrote:
> On Mon, Oct 05, 2026 at 10:17:32AM +0300, Dmitry Baryshkov wrote:
> > On Mon, Oct 05, 2026 at 12:06:31PM +0530, Varadarajan Narayanan wrote:
> > > Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
> > > on this SoC require a dedicated init sequence and override parameters
> > > before they can be enabled.
> > >
> > > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
> > >  1 file changed, 62 insertions(+)
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > index b6bbf2b570c7..8957f208bc51 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > @@ -29,12 +29,15 @@
> > >
> > >  #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
> > >  #define POR					BIT(1)
> > > +#define ATERESET				BIT(0)
> > >
> > >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> > >  #define SIDDQ					BIT(2)
> > >  #define RETENABLEN				BIT(3)
> > >  #define FSEL_MASK				GENMASK(6, 4)
> > >  #define FSEL_DEFAULT				(0x3 << 4)
> > > +#define FSEL_24MHZ				(0x2 << 4)
> >
> > Use FIELD_PREP, please.
> 
> Not able to use FIELD_PREP, getting this compilation error.

Sorry. Does FIELD_PREP_CONST work?

> 
>   CC      drivers/phy/qualcomm/phy-qcom-snps-femto-v2.o
> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:53: error: statement expression not allowed at file scope
>   449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
>       |                                                            ^
> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:23: note: expanded from macro 'FSEL_24MHZ'
>    39 | #define FSEL_24MHZ                              FIELD_PREP(FSEL_MASK, 2)
>       |                                                 ^
> ./include/linux/bitfield.h:136:2: note: expanded from macro 'FIELD_PREP'
>   136 |         ({                                                              \
>       |         ^
> 
> Thanks
> Varada
> 
> >
> > > +#define VATESTENB_MASK				GENMASK(1, 0)
> > >
> > >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
> > >  #define VBUSVLDEXTSEL0				BIT(4)
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
