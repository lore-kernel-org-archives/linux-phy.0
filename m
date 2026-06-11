Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5012ECD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 20:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aw4yn6IpVewfsyM6PBC8sNYP30Z+pskci3jLk2goopY=; b=kyslb7xlysveo7
	oUlaMqhRC2wwnRAVlWcZ77WmRoqGODPw/7SUt98miJ5qcqQ/3CX7o/s6TUp+26AwnF4qqm65prE7U
	mhZX5nmS65nYJMxHtGYiPmBlYUjFwt9HTeBp83H6TxOd+gVrWt+HPooPnLFD61eR57yDGGI5epjkm
	0JMl2vgvDQASQHhq9PvJCrQprIGJAmjocLlCe86ix5u44nIPEDE9uZ20kyE59kbVrRYMdzkZXmDBI
	Ao4RF5QyBPkYwPNfoqEkc2ehGIxt6uT+5Aq8laZgRQRcHTBTDQ9UVy2BeTROV3jYI+70YdroTqkOj
	Dv3xh3WeRwPqwjdurTqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlvB-0000000A2gR-05pe;
	Thu, 11 Jun 2026 20:22:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlv9-0000000A2fc-0ScT
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 20:22:36 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BJ3J7V1479470
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:22:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xJZJ9xOtxo/SGEidDFpL5mXa
	/YUpzW0hXPivz5u62gU=; b=Theh+Kbop1JICFoapkEXU/+HG40FvGtIwVhMW5Mv
	G6Gg6Zs3K2dbk6PVdVv+kzRW0Kag9z5GrkxBQzz/dMl8Tqk20nXgVjw0LK2VNuPc
	SPsD80Ar3Bx2C8M8mIAYwmM7mqYNJZaJ3E7KLVJoajxlKP8iLBI0Ot4QaXj38Yi3
	QXKlJPhLQxPKvsX4AdXzvmVVgrKr1ZPEDD17G8PvKyMOk76ja03kjKjFu/cdbm8F
	eKQIspiaj4s8A377peILxFcGZMXCZPYYHpS4h6XJhTiEIft8sJF6cD0KAVmVODgk
	jC6i7pSSKg9BTHAq9Oh1GQbw4Nrid6Psfm6WlGPzfLWijg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er0x7gvrx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:22:34 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-71b5daaf011so72759137.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 13:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781209353; x=1781814153; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xJZJ9xOtxo/SGEidDFpL5mXa/YUpzW0hXPivz5u62gU=;
        b=FimR0jU+h11lTep3WLVNU5QJid6rEPYfvsZxI7ljsCzT/MkACHhwaqoFKeb3u/wSv6
         9pjjblLHzeJ3rDcHhfNpC9XSD+mhlJv941/R/KUzqXnQ7fQMWpuZmqmeRnzKa2raDQg7
         DGKuiNw5GXEr2d2n9CieIN6RnGrzYhOZrozzYSPd4AYPrFqvAkEO2LJ8kUSZpNYxscs5
         frbwayKLAhfpuPVwx0JviYVEHz/NMEyG9cJxHO82B2oAr+vwqlnr5vtmt8kfKg8qHTLt
         YBEhzGB4VbRnQcjIYRhl25dMLvRBPePiKDWtJvzo8ECyEf8J3H3RY/IiJlyL4enGZY+w
         tWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209353; x=1781814153;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xJZJ9xOtxo/SGEidDFpL5mXa/YUpzW0hXPivz5u62gU=;
        b=hPpOuMNBJbJNQy0nNTeF3nxQQUEGttXR4o0Vgk0658r3w9NvSvaxUZzOYdudtC/ZTH
         EDNKA3CyfQZZo7eApeeyXGpHwkX20g7dhBFvhNE4WRqB1+H6np3D08Z2R2wPH41Sba2R
         9mRiOUzPUcYrtyEwTvzLTQdkOImXi6Zn8Ot2Sv3/EPCBbOQrp2r7uvFckF5N0Vo3NLgr
         mCGbKkHEDRIYNTueNjCmFqYohsPdBrYcM4cTo3oTHKUNAn48be4qmXmLL/LJglyD0TIL
         DH8HJxIMzyDvjO1FZtbV10TuPynmPkjGg3jGkv4GUwjlHAe81kGFtO7y3nWPReieGDkD
         mRLg==
X-Forwarded-Encrypted: i=1; AFNElJ/xqzrfL7U3ARF8H2qDI4UxPKA8DbvChhLGKWjqhHvBWNTIXaL2QZfK7Jw/ppo/lvo4n7Tftev7b/M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYPq41xOarpvnkGFaaeHSfp1HmVAH9cLL7CNQAblJSmlholH+P
	NSrIwuVpizppdAg/5p2aSLvR55b2KQZLn728F+q7luoIufDN4WaV3YtHsMbG26i/CPjdkz7QFpD
	1p0kcxziBCTOOgQiYEpFTNZgnGudHLPXRrEL8wWC80kaYnjWmRjwIA4rMxY69f/ejPvdG
X-Gm-Gg: Acq92OFKfSsZHP31nkPAODpu8xEvzhr7Z6xvpb3GaWosD26qtyhoCWKucJ5iYsJ2IhV
	s/PtliN8qI1ZI8tNGCXOwLFPqEvdkZ7/czTCFc3jXriVod+HaUNTzSuWv2z3nq8nBgPJwe7+hhA
	fxRT/TWsUe9HuWF/tlB8YANKHc5GF6sUqLO6pGvE79+semtbBxEO+GbJ6j8EfaTdlTJwFymfOxQ
	cW31j5Znfuypv235tD4Bry9CcdgWp46bs23ZC60KzQsKPG3BPK1nVuEKrzlIPjI3eEUlj9uSDWO
	j/ezGKT6tDoCIavh1SV6MxPOdUwM8PAq+Am1f0fuOodSadjBA4Ho+MqI9soTEhPZ/QwLd12C0Jh
	cNUlf3cm6OO33jGEAbB52h5LOunq7Aa5sV4fzBQ7SDdaIvJepJKmzucjlTH2JYFtlipn1f5gv6g
	IWGK4PpDrRLqPkFNp+f+IopZ4SSgHfipdrA3s=
X-Received: by 2002:a05:6102:2921:b0:650:a5d1:ee1d with SMTP id ada2fe7eead31-71d5d398fb8mr2993497137.10.1781209353447;
        Thu, 11 Jun 2026 13:22:33 -0700 (PDT)
X-Received: by 2002:a05:6102:2921:b0:650:a5d1:ee1d with SMTP id ada2fe7eead31-71d5d398fb8mr2993489137.10.1781209353023;
        Thu, 11 Jun 2026 13:22:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929f1b4basm242091fa.24.2026.06.11.13.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:22:30 -0700 (PDT)
Date: Thu, 11 Jun 2026 23:22:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
Message-ID: <fbtghwjrokuijatssy7xn2hwkp34p5fjyn3ndr5t2w67fkz2na@3izdh7uk4hst>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
 <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
 <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
X-Proofpoint-GUID: l8zLmVUQ5TCWFUc0jDnvXAGcT_OFyFz4
X-Authority-Analysis: v=2.4 cv=c4abhx9l c=1 sm=1 tr=0 ts=6a2b190a cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=Khteb_73IZe1q6EfuL8A:9 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDIwNCBTYWx0ZWRfX1HSkvFhDwZlf
 iscEf69IQKzRZvBpHWVkUplDoTTZTj6IXhKHuMB0V6qimrHjyH5Ibgqo01HbIqDkFt37Gtfg8WQ
 6yXw/mMoEPyNi0Wbtk64Uq9NnO20FdQcA5fCmNqIzhcmhN7Cfwx9r78ynez7gYfB5U1K8FA9rm9
 lCNKadKkwXAYJSy1RDIH00skpuCOEx316C2RBdqYZ5feicsiI0oX+jhliZwBgt9HaADMeWfeDji
 FjUE18ISaH+WNp31vRVSrhmXQpf+Z2DtU+bA+pItCoXEh0eVxb8Ob2vlbyD/KzOSEHE52NOgRd+
 o8UQ3cjD+Nu1qTPwri2RcLjA5o4Bh922rtARD3Cpnf/vHrDogkvEbBuDglY62dwNIoND6hozV1k
 neaduD+3U0yWDFO+cXA+E+Q2l3g6ScWFlUxfcCzhI43GUuAtom/J1R2o+YI6EOVfQk1z35Gf8p0
 2F909fgSfQfL90VRfJg==
X-Proofpoint-ORIG-GUID: l8zLmVUQ5TCWFUc0jDnvXAGcT_OFyFz4
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDIwNCBTYWx0ZWRfX+BUYYaTm+uP+
 hQ17vFxHp1CJq01gFOvXmOvLsR8JszbXDNzXLajDhhkGmIiB/GW9vYQX1V3cQF/aWsaIYvgd+2J
 Q+nrpAGPMxmvtThx8VO02/+WZNfFOyM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_04,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_132235_174643_4C4AF2F3 
X-CRM114-Status: GOOD (  20.14  )
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

On Tue, Jun 09, 2026 at 03:46:56PM +0530, Kathiravan Thirumoorthy wrote:
> 
> On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
> > On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
> > > The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
> > > 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
> > > supply.
> > > 
> > > Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
> > > refgen regulator supply.
> > > 
> > > Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
> > >   1 file changed, 220 insertions(+)
> > > 
> > > @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
> > >   	"vdda-phy", "vdda-pll",
> > >   };
> > > +static const char * const ipq9650_qmp_phy_vreg_l[] = {
> > > +	"refgen",
> > > +};
> > Now vdda-phy / vdda-pll supplies?
> 
> Cross checked with HW team again. Along with refgen, there is a on-chip LDO
> which supplies fixed voltage to the PHYs. It is enabled upon system power on
> and no SW intervention is required.

What is it being powered by? MX? CX?

> 
> regulator-fixed doesn't take the resource 'reg'. May be should I create
> another regulator driver which accepts 'reg', something similar to the
> qcom-refgen-regulator? Please advise.

If it doesn't require control, there is no need for a separate driver or
separate supply. For example, the refgen is being references only by
those devices which require software votes.

> 
> > 
> > > +
> > >   static const char * const sm8550_qmp_phy_vreg_l[] = {
> > >   	"vdda-phy", "vdda-pll", "vdda-qref",
> > >   };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
