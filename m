Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44228103E199
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 15:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfKjj7A2ug0bVnF4R8RKO0wEcr/h4EsEUJKWoYEAINI=; b=kLQ35l+VRGmEig
	E1rdu4w1lt8pJb2llZZxyhpSR2vO0P564USZRFqOGYyXFITYyrYVhfvjWFd87iu4Dw7Zn24XXAeNv
	QgPHI/EwyurNF6zfTX/k0jDsPes+xt1xwx9UORLjc4FvPiimMUoyWG1jFKczy77njLvQUZiodsetK
	nJGySEo+fYU6akUqz7xux6jwRDaEGJxsbneTWYaZVSfQ4qg8jsu67kS2d+ZGJicD4nUsYrqTVhb9+
	O2sjg5W5tA4/IiDwy5oxP3wx5CBh10Ik2ztPWWXVwlYhCEOguPIBuCwdMwM4Y3dhQ2M/QdT6gaDPl
	ncERnxWB8gEr4wQpzdxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2soU-00000008hYc-47yO;
	Wed, 18 Mar 2026 15:28:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2soR-00000008hX6-41tX
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 15:28:01 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ICBjuX909962
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 15:27:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yuJUlH4doDFzglyADiWfRYiggVG3riSGedoZ0slOE9A=; b=b4i2+/sOyneSXzlI
	SbDcJa6JwI9E58qKdPTugdR+7ZzeeozMq7Ot/lLirMtd85bwB6BXjdXOGpYxH6da
	NCThLMvUFOiqPtWqKcENON6oLOvwk0tl7cmau02J6p1U5ORzh9W/7xso6ko+S+nj
	2HauAjkg5TIg9u9WEiDSk8MKoAYG8nX1zO0bwBeJKwcQJTTATQyq7QcYUB9Ehr4t
	G+HA8CLNWLSMCVnxZ9mBpAklJjbRziGbO3ytQgm/Hpf0JmmIuXwiLpJqmtupDB7i
	A+a/2eMd3Zejj9L/NRG5+liW7UPPgYKlaUWy92iGxEwIgR62Xr6/tONozdqti3U5
	koaoKg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyuucgquu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 15:27:58 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50937c5b742so231790371cf.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 08:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773847678; x=1774452478; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yuJUlH4doDFzglyADiWfRYiggVG3riSGedoZ0slOE9A=;
        b=Qf4qQP2pYWnrmQfr9zw5PbRDljgIiZkZm0mBju6UvgXkjrv2RSRNLUkb9myATDZpny
         aFeN2NMM3vSZziLxqx8pbev1/ooowYL+Aaw1crixzPUbiPXrqt7MzrMbrA8kLsA2Qthu
         57m90E7T/RTId/0sJW9eF92unk4ebLb4EMM6k7RRmPq7t3hG/xm0OndeveGin/m6lHw4
         c4Ea4mdjkVYrAcQ6/xS913VktegxMle+U73sFkyXEIAZy05Qio7B7VaG48hsdfUymQwV
         agu9HtEIr7AgIm/OD3gJKDpqtwiiNGdJtfgTmWHyhAr5OdqnwMBZDeFRQ3moKugnMpgx
         mq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847678; x=1774452478;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yuJUlH4doDFzglyADiWfRYiggVG3riSGedoZ0slOE9A=;
        b=fyRV1/QPbpePwfZR7uLqzMsx6kQ/LSOXCKyF0uF/Ql0ffqEwlvBX8aVmWfDlY56G3j
         lpxpE72EBHLRD9I+y7DYwnQtriqNauqqxxqqCiAv9V6sOJEK8b/rKit4ZTTrak6YZPSz
         gBpP84jouuNO9a31ZeM03DTUDoKz/DW+DDHSAX5gB/C44j4jV7UxR3aKKIrRjbwRKAvT
         BPryB2cJmgvwzKsqd3B5XZznrq2sjiNrVvbCSR1PgquEgL6tnCrckJlW7q4IzbjDUEuH
         3XOVO/UeeXPD72FjI2zvD6F1tKJEbZEBSZryc7Qg1kJ1qAzZEvetsaaqZJSIph6Do9nJ
         1Q+w==
X-Forwarded-Encrypted: i=1; AJvYcCVvnEYfHZa0kUPG5iX8l4Xi7tdIatk3NnZd0TI7BkLU5yZM8IyCvpL30Wd2YmaLGLhLkB01FiBYyHU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMFACK7ci+Cv9TnPAMpt2+mH4QEt05dzVHJRQl4W8WhQ8XGO1k
	CxV0OQqo6/dFXnpqnoutewrfcpOSMgxbCZPK8STCrL4eYgWVhQhyXGW2PKYcDDiRv0u4aWnEyWL
	AbYZhhZf2QwE/Uz2fLicpw4YEqTPxeD0F5qURfbXH0fnCV/SDwlLyntXQj/J7BMjZCzYeGV/3Y7
	bx
X-Gm-Gg: ATEYQzyoUIYI4VmRZTcCv+MdfocN0j7jbnSobC6BRdqP3w5WEmeY7uCL1xyeSz6wmYI
	zlV/oKqElSMf2M5Y43J4FYrKtsaTeJdEBalUgGu8M0poz48VGNRZp4GvwiN2/afMElBj8yFI8w2
	W1nXBmL38aqZxYgInDT3kXG9jrvoFrZAcCrJymEozN7ROEuRLUHxAxp45DMqaqesVcVa8dPBdOt
	/04R+JloWKzpxVW2OEcoePySwfxkIC/rCBWLrFM1xSTq26AJJKT3ve+wgU6jXZ61Q0pj6x1YHzk
	ntp2PbBfgl64yeIfJJbM/n1gHRmEDuqyDc2uEPaGWMb1kKnGAOjlOdyNZgkSVF8vxAExTZaaCRz
	VditvW6hnWgihghT3oyNfAk4J8yHQHJC1yY7OzS0RKUpWZK+XEJgyEYIkXtCLJwHT2qBi/CkiiB
	dfPgLAtXqH4L6+bK72iVILDCex41g6Us/8fX0=
X-Received: by 2002:ac8:7f41:0:b0:509:1cf9:ea0e with SMTP id d75a77b69052e-50b1485c934mr46201381cf.41.1773847677967;
        Wed, 18 Mar 2026 08:27:57 -0700 (PDT)
X-Received: by 2002:ac8:7f41:0:b0:509:1cf9:ea0e with SMTP id d75a77b69052e-50b1485c934mr46200801cf.41.1773847677443;
        Wed, 18 Mar 2026 08:27:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c6e195sm603363e87.47.2026.03.18.08.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:27:56 -0700 (PDT)
Date: Wed, 18 Mar 2026 17:27:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
X-Proofpoint-ORIG-GUID: UH1UMgKLRFapvmQ05GueqGPFwwkytFZK
X-Proofpoint-GUID: UH1UMgKLRFapvmQ05GueqGPFwwkytFZK
X-Authority-Analysis: v=2.4 cv=U4ifzOru c=1 sm=1 tr=0 ts=69bac47e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=u5M8gfWzTKoBtfYfDKwA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEzMiBTYWx0ZWRfX2dXeOZunEKa+
 gTjX07mbhyV083a5ndSBL4tEXQ1mN1gAiNyRL9HD/QYubWGra+s1Z6L+Ym59d33jA6HpGu+GJ+s
 Dt+ySle0I0onkeMu/S1hfuz/75CE/b2pSTlTJjauAMolpi6SaIAuV46BgcJrgoDIW3tNK4ovX6n
 6iRRaYzRFy1RTMZrWsBCua917bGxbhIgI6ONHgyjHKIfbNwUn3oOPWapOWQqxfboDq5o34NqIcl
 LRC0gFJeCIxxs+cnZMPzDTPx+GoeYxDbnHSXmAFnUWM89LAYax0gABGxoZ3QmYFqnSHc4qonpPx
 gw6IeFlGc1CjXXcxHjzKVsyUiOqFAcNLaVnSfAZJWEczM07gtph5EpUDjG+qeEKd/Ib5AX22Gid
 1mavqLDk0WAFvckQrSJ6HK+npdFqNRsSCEnhy7N0+IYfNwSa7DvT4at60adMyJjoMfb9tzqtwBV
 YtYNftEdfP2lliiFpWA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 impostorscore=0 adultscore=0 spamscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_082800_140767_BB1F873E 
X-CRM114-Status: GOOD (  29.48  )
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

On Wed, Mar 18, 2026 at 04:07:39PM +0100, Neil Armstrong wrote:
> On 3/18/26 14:17, Bryan O'Donoghue wrote:
> > On 18/03/2026 10:15, Neil Armstrong wrote:
> > > > +=A0=A0=A0 /*
> > > > +=A0=A0=A0=A0 * phy_configure_opts_mipi_dphy.lanes starts from zero=
 to
> > > > +=A0=A0=A0=A0 * the maximum number of enabled lanes.
> > > > +=A0=A0=A0=A0 *
> > > > +=A0=A0=A0=A0 * TODO: add support for bitmask of enabled lanes and =
polarities
> > > > +=A0=A0=A0=A0 * of those lanes to the phy_configure_opts_mipi_dphy =
struct.
> > > > +=A0=A0=A0=A0 * For now take the polarities as zero and the positio=
n as fixed
> > > > +=A0=A0=A0=A0 * this is fine as no current upstream implementation =
maps otherwise.
> > > > +=A0=A0=A0=A0 */
> > > =

> > > This is wrong since you loose the lanes mapping defined in DT, which =
is still in CAMSS
> > > but is a PHY property. The lanes layout is not a property of the CSI =
controller,
> > > CSI controller only need to know the lanes count, and not the layout.
> > =

> > Lane layout is a PHY concern but, the PHY API gives us phy_configure_op=
ts_mipi_dphy which should be extended to provide layout and polarity. This =
would then be of benefit to more than just qcom/camss.
> =

> Why ? the only concern between a controller and a PHY is the lane count t=
o calculate the bandwidth, the actual pin layout is certainly not a control=
ler concern.

I think that the DT should be providing the information about the
connection of the lanes and their number on the board. Then the CSI host
might want to limit this further for whatever reasons. But I don't think
that the properties of the lanes should be configurable between the
controller and the PHY.

> =

> > =

> > Right now none of the CAMSS users for this driver depend on any other m=
apping and I propose a separate series to fix phy_configure_opts_mipi_dphy =
rather than introduce data-lanes to DPHY.
> =

> None of the upstream users of camss.
> =

> The problem is even larger, as you replied in [1], the csiphy is still ex=
posed as a media element from the CAMSS driver, this means this driver is n=
ot complete,
> it should be a media driver entirely with eventually an internal PHY aux =
driver, but this would be entirely implementation specific.
> =

> Either the PHY is standalone and the PHY consumer only calls phy_open/ini=
t/configure/power_on/power_off/exit, otherwise it's not a fully standaline =
PHY but a composite device like here.
> =

> I propose that you write a proper media driver for the qcom csiphy, which=
 eventually spins a PHY driver as an aux device.

Why do you want a media driver? Isn't PHY driver enough?

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
