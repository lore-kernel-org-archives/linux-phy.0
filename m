Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A953CA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 11:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLY5fJxNab91+zH59Kdkm/+ayxuE3coZvMlw7DT5cWE=; b=LOfY6eiQ3i4Apa
	aJb4BYFsP8ATGbMaabB/CgnlE6E9CG68C3+3Bb44qWawoneYBDcyUiE5gXbnBzXCiLUE3sUgonNdq
	B4Ifw7gMoIBHt/FckaYxsNd7sl1SSQkr7vknPxix1VjKuCqHve5uODFaxFI6OZPNLOTalH6a9c8g5
	HfNXdHV7XmCsjLqGrBWEzqCl4e9A2sGkEILqrVZ8NajoqNX+J/rn95FLt1Uq5AlHNpsgfJ8M2u1au
	yO4TUWmprfbmcxBRUFSQfAULyz9AoNtp2teI1CcjOr+4bZY83ERFf5Hh1m2prxXdSpdl6FW+nS0v4
	9k6HtRgWJ9mCJppxIjWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDh5g-0000000GLtI-1IVK;
	Mon, 05 Oct 2026 11:42:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDh5d-0000000GLsr-3EFa
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 11:42:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 695BU4Q6377579
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 11:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=abOvEkNlOA0Ylyy+FBc9VdBu
	BuQsp2/yxfH7U5b4CZM=; b=SDTFF7JofAD43m7RDcTpULyp9Mjv9kjidR4NV+J+
	kt/NjeKtupq+LATZ76WXJty+h9l0BETIflX0cLmkmrRn5lWHp4j7/76P+5JzKiyx
	iX/OEWwfcaPKOu7cAM6GyCnicRC+OwqbPM6npK+hqxtslEDyR4D5A+zl6Nq/CW6n
	cEXdyrvR7S0P+7kfXsJl2thpN6bsboPcFiXWUpWpXi1d8yRgueOnZ10J/nrefgW5
	TIQkLcZvCgmbgO/4zgz9+ZXh+/mJ1I5s8WThKbAy0aegwFGyL2VE4SIlaJOfgtXr
	B16vFGQ62YB3nYL0KbuBd8SoXQ8JgjI2UxyIKTr9FUUDCw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2tvewhjm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 11:42:41 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-34ef5fd7934so4738034eec.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 04:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791200558; x=1791805358; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=abOvEkNlOA0Ylyy+FBc9VdBuBuQsp2/yxfH7U5b4CZM=;
        b=HWdiRFZXbDPWVfHmHSN7pd36YJznRrMPdHb1Vnjve444/Wf4Dh0buAeeuheAIIiEhU
         kDoOKKkV+Uh3Cm4r0sRCHvR96WCVLk8Yl8HsvRZOu5WF+N7hr1yZUzyX4YcFNvbFFL0J
         EsYceQweiByCcYTi0Wr2Jg6gDff9bhwoXBcPyW0NQAp3cmngxUEzOHqrbauNV5Cj1Do6
         FxF6HCpAgG84KtrhwRAlUJEq/wBhDTNGQTJ6fe3sREo45ZEucE4Y8cTaAyh2RGawb34l
         vEESld9+S05xZH2LS8rIMNvhP7lyRGAGuAggXfGWkds225KFymXwudHXDVrCM6ahVv+5
         2Kbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791200558; x=1791805358;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=abOvEkNlOA0Ylyy+FBc9VdBuBuQsp2/yxfH7U5b4CZM=;
        b=UEu27HJw4FFB4JMX9F+nvCo1SB/6URnpxsrVc3+69+KR4BRF10rP+211YEonwL13Dh
         GRIV3uA8PXIFHTN/tBVaKv/76kIbim0gG/XcaU1OBcni6e9r29KajGLwGl1ZLF7DPU0s
         +Ddx04sOeJ5hw5tZuR5XTu84S1F8AT5UxSNaI696UQb1PHmKtHcuVU+NMZRpFm3lwqwv
         DMfnnBCWwvgpnFZiLKtvslkWvZdehD5BNV8yJEJS05OYx4mj0O99hCf174pZt1q2ewEL
         7TXo64uVzyYPm5/PKDhq2bTbeoWF6MVp1Xb3JoLXqJCpsDfle2j5kkXldKwyXHzXR8Pe
         00sg==
X-Forwarded-Encrypted: i=1; AKwUvBzR87Hq3aD4q7IQz9w0womzLq4mstKBjTM8GHJgIKg6XD5MCXWw9MKu7wv6d7doxvpL+yIpHLVOA90=@lists.infradead.org
X-Gm-Message-State: AFuF++kHnPvYPAg/nVF7f71+lLeu2EDkHxqHZF4UQcycfPIVaiesqP7t
	oVyUynLBbJIWQK39uR+n+O2NwM6vdT+YHHfsSReh9bghdEnJddymbfarZ/+qSbVRrWm4O4zbtNR
	2DIAmRXQ65qienZa/xtADaLV6fOU3lPGJ+q4jJmzeQDoFgh7PiSEWkXaWogn3u9pvflNoCjYUe5
	pX
X-Gm-Gg: AYBFou1moze8Kv4FK+r62SYPreuQWZFqKLJjOmetcknqXmsbz2rlLEfBoBJuLoI7esX
	hfDc/jaIK013a1ixCITjaa4XVwvyOIgVLLKb+qg+RGBS+xDQWHzsyJf7Q/q6NPum8uKQYQC65OZ
	6ebWKxaQc3WAr7SGIee2TEz7nDC2pfDaoy6eYlJ+4eHiBdKaX81zu2EGh72c/7cjcFN8TS0PqVC
	96sBbDH+qHzvVS2yATh4hKm00AxT8LFXAG9bi4TZ/80ltLNa7PEG6zP/+qDZIbIm/qPlcl2s2ft
	/e+jNiFDqxE0TC8h1B/6I5jkFF+uI8I8CB7KEd83O+95V/jmsqfFqEQM1MZzHr3oTkryP7aNs7t
	j1yDZrTzanOSz5TH53JSxRgBFYpRFzE6UqH+W16G6+coaliQahkDKIuLIoXcu6HzMZF1LAbu2ZF
	vzhR1gEmS+kpiB/gWgbS/LbHDh9lEj
X-Received: by 2002:a05:693c:8810:20b0:351:165a:baec with SMTP id 5a478bee46e88-351165abed5mr8555596eec.37.1791200557464;
        Mon, 05 Oct 2026 04:42:37 -0700 (PDT)
X-Received: by 2002:a05:693c:8810:20b0:351:165a:baec with SMTP id 5a478bee46e88-351165abed5mr8555544eec.37.1791200556694;
        Mon, 05 Oct 2026 04:42:36 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-35127021d1esm14466025eec.4.2026.10.05.04.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 04:42:36 -0700 (PDT)
Date: Mon, 5 Oct 2026 17:12:28 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Message-ID: <asONJKiT8pbIulWj@hu-varada-blr.qualcomm.com>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-6-b04c4123ecb3@oss.qualcomm.com>
 <ck5st7q7rbnzfp26kbwzixorxlikq6hpmso5fzz33dlsqsrnrm@g3aey2pabkzb>
 <asN/uLBfYARYXlhb@hu-varada-blr.qualcomm.com>
 <lfs76pvsdpkkle3b75m2ez75x25xjqjkgbw6kkaf7rxqrc2plz@7sekrxlnqcus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lfs76pvsdpkkle3b75m2ez75x25xjqjkgbw6kkaf7rxqrc2plz@7sekrxlnqcus>
X-Proofpoint-ORIG-GUID: f1sjOFgK_yHSIBwZznKvb5e9kS3bZc1m
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDA0NSBTYWx0ZWRfX/P3QD5pBwnNU
 lbrEG4OxjuF26ctHV/6GgZtpEw3bJL22gg1BPNDI68jGoFP3UDM7wsl9tOmKtrJFcHBCi9alyYw
 kXcJvoV2iYgT6FJ+elGmf0GM1O3fuzc=
X-Authority-Analysis: v=2.4 cv=YoGa1IYX c=1 sm=1 tr=0 ts=6ac38d31 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=jxoNFKAhCVCw1AryeQUA:9 a=CjuIK1q_8ugA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDA0NSBTYWx0ZWRfX0/gDPQGdAlOS
 MRNax7qA4ooQHTMYcG99/dPhzF0VcilOSLKtkU6ZUVlhSP5OsncGzJEzTRHi24prI9z9kbTJH7e
 QCEEhH6Koym5P8kyluxgxSQRRQd2fzAtfmJmdaCGFrKB6sN9XLpFkdHZDUjF8mR7tnLEJ9PKnOg
 lR69PcNW2RCpr0pYnN+Qggv3+hPykYe789mNAo3v1Wz1qwu7DltkOvlEeDgZno6qrHKwyALWMOT
 NyvbWi8MJlC7LOF63mIJdyyjoFLsh6iSeBYcqo1fEdP4/bmBJmJX/SMfp9cRNJPLeT1FT48q48G
 8MZHSIExZMEe8GyVyhtfuaoxsmNPqJMDku6QZFA91Q0+jhqwICkk0d5iZF/WIEiVpnrr0xd/FdR
 kT8ESH7Afo5RYSy6GUdErrtDqOocpBCVy1vot0Qev2MP6Z2gja2OElmRZb30ltCmCLKQ40GvNMF
 XDxC10ieb5L32M/SoEg==
X-Proofpoint-GUID: f1sjOFgK_yHSIBwZznKvb5e9kS3bZc1m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_03,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_044241_815285_35BA374A 
X-CRM114-Status: GOOD (  22.32  )
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

On Mon, Oct 05, 2026 at 02:01:48PM +0300, Dmitry Baryshkov wrote:
> On Mon, Oct 05, 2026 at 04:15:12PM +0530, Varadarajan Narayanan wrote:
> > On Mon, Oct 05, 2026 at 10:17:32AM +0300, Dmitry Baryshkov wrote:
> > > On Mon, Oct 05, 2026 at 12:06:31PM +0530, Varadarajan Narayanan wrote:
> > > > Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
> > > > on this SoC require a dedicated init sequence and override parameters
> > > > before they can be enabled.
> > > >
> > > > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
> > > >  1 file changed, 62 insertions(+)
> > > >
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > > index b6bbf2b570c7..8957f208bc51 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > > @@ -29,12 +29,15 @@
> > > >
> > > >  #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
> > > >  #define POR					BIT(1)
> > > > +#define ATERESET				BIT(0)
> > > >
> > > >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> > > >  #define SIDDQ					BIT(2)
> > > >  #define RETENABLEN				BIT(3)
> > > >  #define FSEL_MASK				GENMASK(6, 4)
> > > >  #define FSEL_DEFAULT				(0x3 << 4)
> > > > +#define FSEL_24MHZ				(0x2 << 4)
> > >
> > > Use FIELD_PREP, please.
> >
> > Not able to use FIELD_PREP, getting this compilation error.
>
> Sorry. Does FIELD_PREP_CONST work?

Yes. Will post a new version...

Thanks
Varada

> >
> >   CC      drivers/phy/qualcomm/phy-qcom-snps-femto-v2.o
> > drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:53: error: statement expression not allowed at file scope
> >   449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
> >       |                                                            ^
> > drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:23: note: expanded from macro 'FSEL_24MHZ'
> >    39 | #define FSEL_24MHZ                              FIELD_PREP(FSEL_MASK, 2)
> >       |                                                 ^
> > ./include/linux/bitfield.h:136:2: note: expanded from macro 'FIELD_PREP'
> >   136 |         ({                                                              \
> >       |         ^
> >
> > Thanks
> > Varada
> >
> > >
> > > > +#define VATESTENB_MASK				GENMASK(1, 0)
> > > >
> > > >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
> > > >  #define VBUSVLDEXTSEL0				BIT(4)
> > >
> > > --
> > > With best wishes
> > > Dmitry
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
