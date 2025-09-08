Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6238ACAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kV/Zm6b9QP8Jpzj4FM9vKykLogbvxkaUiO5RJuus1c=; b=xtCW9tk/bjR0tG
	A56iiQGn8900VlrAznxHt875Xl+cDQTLZQuqEr5maQA/68v6bbBoi8X31GBrZciwADdtM+fwtcNDr
	cQ1Ksh0cZvJFZ8cicLa1xO8AVM9MYfCZ0D/8/Xh8/2Tr2UYOW6rdTjHt+y5DpUCDeaFap60vDHOoB
	MU1/EW+ahboC+KauYfkNFaIzpBb3EphVyb9xq3WeXQNJsogj5+WDMhSxp6WA9fF7uKopX1AcRANdB
	pjbjjlvWyLy/RPrmgwQK3vXu6EG/rIYLmKIfneQsDxcBQYp1rXbNe/6H+RxJskg0AUeL/0XzcA4So
	Iz7PmwAsb3dsRttzsKIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvabe-0000000GqAI-0UMc;
	Mon, 08 Sep 2025 12:04:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYLp-0000000G5zu-3boE
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 09:39:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5886fcvC004866
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 09:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	veUZKzGV5RVIn21nOgmhArWZXfr3Vm5aURD7be3Q04k=; b=kcActATRy/YmG/oM
	v41uIWypgasfnaH13qR1G2udWqNB/39HAwbTE1pvl/Lh+iVznXU0uGOo6qZAEU4m
	E0sWsSA7qRgrihSPHidpjModRVRhpxkmY36jNEU11rJhUnL0Jo/djwyhIYg85IJs
	jS01UNSQCSIIJH9mKL/11VIlBw5KbRA18+rer6KTBP8v5h0EAA9ILR3JJxPraHRR
	p7Ddp88abc2LHNk0G6ErmFeKW+/azh77unHFx73z3KsmvAKyyjsvoMtiG6EOUb+t
	3IxR5VwrjbETzT/GGhyrwrdUWV+aGW2IeQ4JYlCIFE8E5TpgIgnK5F7NXPsJJd3P
	FfDDzQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37rka4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 09:39:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5fb1f057fso19076591cf.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 02:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757324389; x=1757929189;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=veUZKzGV5RVIn21nOgmhArWZXfr3Vm5aURD7be3Q04k=;
        b=EtGC5iBq81Qxsquy+gxrEaykgUz0ZoKxOxFv9UyAtj0KmTAuDtZTerAcNwfLnlCGpG
         6nogRcFOr7Gmb0ekzPZK2iH8ikG3OCGFD7D7wb2UhuTBakvd7IwBAMZeNW6VV2ia4oeb
         9ZkoBOMik/yb+iQJVcbavFTzVA/nswCbpe8h58KujX5ws0S+nsmr2LeH2wiKohHC8fkm
         NQhriMJcq/VDh1MTIVWLF8g7vyOvKa6zRtXIopacp13p5ytmGUSAYa3ZNYbZwJtlmbmX
         SZ4QSBhflV3yzCd/KXMYPGrRqGyyqhyObX0fI03/PROKFzQMD8V/9i7JqCTiaU3VzVaG
         Qr+A==
X-Forwarded-Encrypted: i=1; AJvYcCXL1UkeMRC3kT9LR9il38raBr0RudZ7JM1k3Ct+jJhUz+2AWjyLbiAt+oJSz6NKJCeXi1k8DU6m4CQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXCkMFTSF8IAmrQ/B4a0OquDqhColr8XvEppNJ7SHkp5AFfg7Z
	Pgq6+Aah1bnWKGolpUB9J6fF+Bz9HA7xXtvUnqRVqSVe9tJtn7cmXLh9dQJQxqUns22Dm6L0eyH
	IQkjEd2h37I8o1DNPDYybqVQ39v/I4fV9j7XOyBux89kRE9TKZIDW9pgnAc50pPYpnQkd
X-Gm-Gg: ASbGncvQbCovLul94pqZrYb6kjiVxwDVYyvgvYGrIhugW7kW3bZQKcDC2JD7hiXoxOe
	YYe9YjfP+3Yob/HCs0pXZHEHJfleBR7cITtHKVPyW4JsIpn/vyALyPYHDq/56tqV8f7KSrw+rnD
	QvXpG+8ZV6Fkik2BiKiRJ5LAeq33QY1L1hu3DsP+efGWEPHFWnd276BLRVtfeqoNbhlqc5jaBTj
	i6qeuCZ+OSfKAMlNkUJaYLROsD4hHjWYHLZxoIeGFJa1TPhR49MRKSLE9GXki7/y4vSWeSFxmzr
	2mP/fOFZdZovgwt+IUogYY0NG0vHSKjVJxZP1RDVMS4bLuYEjyGcan3uVjm6Ua+uJWWxhilxxzd
	7wxIJUy6ADxWF29Io3WAxQrQbcIM36zN0kAjXQaSEaaMX8wdqSW4r
X-Received: by 2002:a05:622a:24f:b0:4b5:e72d:dbc6 with SMTP id d75a77b69052e-4b5f846fc73mr78826121cf.72.1757324389114;
        Mon, 08 Sep 2025 02:39:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy1mrw36Xw8dyInvC+DMbqIM2PRIu/aziD0n/i6SMiCO8OR2jo73OLVrZzBTqj9rG+/JMhUw==
X-Received: by 2002:a05:622a:24f:b0:4b5:e72d:dbc6 with SMTP id d75a77b69052e-4b5f846fc73mr78825941cf.72.1757324388614;
        Mon, 08 Sep 2025 02:39:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc1798sm3486986e87.57.2025.09.08.02.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 02:39:47 -0700 (PDT)
Date: Mon, 8 Sep 2025 12:39:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: onW6Yvf8IgTzHL8lOQ9VWG5S-uuhL5HC
X-Proofpoint-GUID: onW6Yvf8IgTzHL8lOQ9VWG5S-uuhL5HC
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68bea468 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=4LzuJVVA2EB8z9vYX0EA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX8xZTFK7NCpm/
 MNi0ANcGq4zCEx8H0V6NmwIjCe2PD5y6RkIw5CmEv9TyuoJumtDSM22JQkAOmNDZqDi69OOEcZU
 9CQQtcryrZWAMsiBoGSp+jhjc9CmDnWUJcfiWgWYO9dcHwOIoVQ7iQj84bCMW1mXVN6eS0zW9CB
 VsWIwry+FsWIH90NjzeOoK5Ap+1gf/Zc31jlabiEn1jpuUW8Yg0YRayRrO5J3FxTLFUKZTaWBYv
 ydpoGIvjPL4f4WwpK4e74AfvsbxI9IOtXCP4JsXCcdGSCXBs0VUG9FXQ/3FY29KM7BVv61Rc72x
 nagqnt5R+P2BoT7EbkCsgfSQ8euE3KEzGF0cgf75Pu8yAIQc4hy3Rz/L/eQVKsuV/0WhIK9vV6E
 /uYoBjlS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_023953_899325_17D0E8D3 
X-CRM114-Status: GOOD (  22.39  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Sep 08, 2025 at 09:16:29AM +0200, Konrad Dybcio wrote:
> On 9/6/25 10:41 AM, Jens Glathe wrote:
> > On 21.08.25 15:53, Neil Armstrong wrote:
> >> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> >> connected to the third QMP Combo PHY 4 lanes.
> >>
> > [...]
> >> =A0 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi=A0=A0=A0 | 44 ++++=
++++++++++++++++++
> >> =A0 1 file changed, 44 insertions(+)
> > [...]
> >> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dt=
si b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e=
3ecdc8ea23f44e8e09 100644
> >> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > [...]
> >> +&mdss_dp2 {
> >> +=A0=A0=A0 status =3D "okay";
> >> +};
> >> +
> >> +&mdss_dp2_out {
> >> +=A0=A0=A0 data-lanes =3D <0 1 2 3>;
> >> +};
> >> +
> > =

> > Hi Neil,
> > =

> > shouldn't mdss_dp2_out also have the link-frequencies property?
> > =

> > +=A0 =A0 link-frequencies =3D /bits/ 64 <1620000000 2700000000 54000000=
00 8100000000>;
> > =

> > Or is it something the bridge already negotiates?
> =

> No, it seems like our driver falls back to HBR2 (54xx) ever since the
> driver has been made aware of this property:
> =

> commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
> Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Date:   Tue Dec 27 09:45:02 2022 -0800
> =

>     drm/msm/dp: Add capability to parser and retrieve max DP link support=
ed rate from link-frequencies property of dp_out endpoint
> =

> Dmitry, is there any reason not to allow HBR3 by default? Is our dp
> controller/driver not smart enough not to advertise rates it can't
> support, during negotiation?

I don't remember the exact details. If I remmber correctly, there were
cases where using HBR3 resulted in a less stable signal than falling
back to HBR2.

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
