Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC2ACD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRDz7giHv+iz9wVFwjl9qFtvFwHa7ZyTHtTonzjgcpM=; b=A4GrmyTJ49EeVF
	5tS4/TOednT1bSQXW2MdpFq9DCKgO7f/gPGatUGiOGtQCsL0BPIfcXxv7sNif0FiBYS65sEd3+hjH
	SPWhjvL2VtjVW58sfnrPbAvawtPwXgmxe1sTCC5+FPSb0jgVgFwsuErCxMWya1PWwkORFhBlKuazN
	80qv7jP1/CqWjUr2age7fSDVPGYBw6xl4nHgJJZVxmFarafw52x5kYZKv8n0fG2OZrMhmThc6cJ3B
	W4aoJZd+Uh4jp6iFZrO/jdiNmvgGlofRV/JR2VOtNuZn55ndQldcGzK0PcCGdL/zEplGfiSdh7fFO
	KxG8ccCT4tWeATXoaavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWT5x-00000002sD6-3dYA;
	Mon, 08 Jun 2026 06:04:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWT5v-00000002sCN-2ygz
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 06:04:20 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6580F11N1470709
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 06:04:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bL7RrCSQB6iOyve28SUhhCIRdGFRm2bK3QU0AFb5LnI=; b=IWNQyrMkOngUtDtW
	YfWDc7pO7gwTyhqdYJJtIqH983UEJSIMBKLXNp0XeZtlNNK3DLWKSFWZqxm/CTWj
	MUjCsQNxunru12y1kLnUJrb/AE0ODIOV2JegkDVQ9myiDXQi2xvad6+fMy4HW8Vz
	5KI7IVuWxEUyVxAPLimBsDsg1hDxw7S2nKLHsSK2Ga1BQefrSd0Rnm5/jxvC+HTN
	RG+BwUEK3LnrvJ11KWwCSKl+xDr1Sur4/3s4c1//XmKtpHVsWfEmzNjBCtgJlkRY
	ygSHX5UMEu7seDTN62wbWlA59KEOB4L6FLMhe/lJ6lazwbuNpWppQHeb2w6ds6b4
	nc0T1A==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcqgww7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 06:04:19 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-59ebb69acadso2365635e0c.1
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 23:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780898658; x=1781503458; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bL7RrCSQB6iOyve28SUhhCIRdGFRm2bK3QU0AFb5LnI=;
        b=gty/Yr69WSc9QCrV34CG32kcKnMkHFKybWYleOwhYH8N3EEa2tMwrkXeZdq97lKJgm
         Vk21t4ophaeXJr9p+6h3FbpKMi5otSqaOp3jHqrdfMOIkitAb24J9YE9uL389s7zNyOv
         GQA5YwzMuWZgtf0oVVGdZ4pIoEGYefmKIIEDvbJWJQFmJkTUATo6TrUac0IsdDxcqrAY
         m+TX1nwJ0ExzOpDVuPPBpftDTUGn29HLBwJS6OdRoRlnwzj9PID9iux6pVKPOVQlkwy4
         9Yp9sdswgorkT3Dqt7EXJRTKB+HPeNimHzNpbw+AnXUrT2+9k3HeitaJlGaOza90mR98
         hxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780898658; x=1781503458;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bL7RrCSQB6iOyve28SUhhCIRdGFRm2bK3QU0AFb5LnI=;
        b=CjKqLwrkYnRNi5+/xiwa/XJKCDCi+CZ4Gj/VMVtoHEB+/SuJ6LPuSivlX9+5C0YgmV
         9o+pEjSGHdF/rly1elJG+WI8+3dXmZvZKESJmvyaEg0McF53EKLEdgPGD85AwpWl2CTL
         +FNYm5xWHy0IjMizxmfs/UIGolY4SBhR50Nq44FcikC90ljuN1SdbVP/0Fv+PmWf5vDn
         DbFHiwnyktrfGI6GOi02nw4Uw9l6aCN6xGgK7rlt3PMU+13yU27DHx77beg0+O9yH3O4
         QAfj/OWcx+zqj8nCpggVVogzbE0s1fkA0DGpcNwZiVF2Pf49jUZVEVyWGALOF04ft1QK
         NFXg==
X-Forwarded-Encrypted: i=1; AFNElJ8409GGnJfuyDDN2SHrE6+foCvz+EluOyOTZKcHl2OrCT1xKiPZqYHjgzakZMQ95dt5x9SCle8RmbM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXigTQ8BMWb9k4FyOHZ/GEZkDaXKMJ8YJSWtfacw81sM0eVRbP
	8lioOTDvakDb6XIo5ThxYqT9Y/OaGKRkHDxMJo0JYsvwSkojgVfmD/dUlRDKLUEfkRGB8AvDOqY
	9aRO/TGyMQn1dRk7DEPaoy88PvvjFkEbua499xH9oYCC7f2iDLLzAgU/ATwwwXKMd5cRZ
X-Gm-Gg: Acq92OEfJdEPRRVkqFDenNedZ3G8H+H/Krebigo8YQJFX0EMSJ2q1gVfzhDZO4DUpvB
	ksdvzWrlKxYmnjmT9+NMKOz0aiEAmPeuW9V9PZsD3u8zUsZoO6TaVazKijOsEtuVYMMeMVZ1Eb/
	ayZ1xmwDB5wciptYbc230Sk8lkXRYj+YINyyiEvQgTI88uwaUWZqN5xmIrPQAh8jmMd9AdlZY01
	H7qj8T0v9PYBC2aHRV8R0bXYFXsBep0LHbNbJ8D9KjeeQh+EvQhYBvFKWiUflT+HNQyLLhAhcAi
	yXAYyRrkDXxt7QSjQLR6PcqMJshypFcY/ZbJRoDTKIuh9bP5Kda3loyME5ri8Z7FKfNsJl07ivz
	z8X/ODGT6IxfrwjFS9KxBM75Qc1JDm8I7/RqyizctaWQ8dKa1jHUE+gcYne1ghhSELyQaIlNe7n
	HcRxA/Eiar4WQYP/czCA5BBZN92G0f+hS1bRqya9Q82WGH5g==
X-Received: by 2002:a05:6102:809b:b0:631:28c1:154c with SMTP id ada2fe7eead31-6fef92b85dcmr5513728137.9.1780898658059;
        Sun, 07 Jun 2026 23:04:18 -0700 (PDT)
X-Received: by 2002:a05:6102:809b:b0:631:28c1:154c with SMTP id ada2fe7eead31-6fef92b85dcmr5513719137.9.1780898657668;
        Sun, 07 Jun 2026 23:04:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed2d3sm3551255e87.5.2026.06.07.23.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 23:04:16 -0700 (PDT)
Date: Mon, 8 Jun 2026 09:04:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Eliza
Message-ID: <ywabwqbgjkvurybqsc5faq5vhli262nqe5gplki5gio2w2zsve@g6h5d7tigmvc>
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
 <20260601-eliza-v2-3-6b44c9c23d5e@oss.qualcomm.com>
 <k37nby6lnczb5qajku2shpff4rsisyynlfmzu46lhojl5eiwqo@wkpy2tbeoa3b>
 <29763928-2301-437e-8787-916930b64a88@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29763928-2301-437e-8787-916930b64a88@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dJGWXuZb c=1 sm=1 tr=0 ts=6a265b63 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=5G9BQlURLoUVyWWmJtQA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: T_qIQAcbc1-6UZDCUD1hbYcw-cwoX1uE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA1MyBTYWx0ZWRfX6tblBQusvvn1
 F7ajFqaYiPXdmzv9Qb+EVSsWP6gbVrtr1bY1VYD6m1EJMXyi4Tc+AWltnYLSYERuxjw/m4aTBCa
 oGSycYFVaP2blHxG14IhEcDV/InGaF+gV1YLO+7U7pyHusIOGtCZjN2kVi6O4TbHkR1nQOIia0Q
 lkvpZH+Qh2jrjEmzGrlAeEWQWmJp0NFC7mvMt6XUV98goOWoCd0Qs+3bHMQ+ybwQFsUiZnRP7rd
 fh+ZebNEd/o0NzVwmtiOjcFdLCOHsawVNyxZVKy9U6olIF0lOKiT64P3GS3P4kepAYxPx2Im/pR
 q2SjduEJrenlI5Fuz5nECHAh3/0Vt2Rd6slwOKn4qnDHOduUuLM1xYpl6gsWO5qFXssMrNSHxAd
 bs32lgJjhWtQhwxlU6043dk5rx+WY+Fo8GrnVdf+B21udopYaVoZ2EhSHFxhEMmhL/x8IqwTj0W
 S8AbRBn6pYXVGGoY4ZA==
X-Proofpoint-ORIG-GUID: T_qIQAcbc1-6UZDCUD1hbYcw-cwoX1uE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_01,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_230419_751652_B6B926E7 
X-CRM114-Status: GOOD (  21.31  )
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

On Mon, Jun 08, 2026 at 11:12:13AM +0530, Krishna Chaitanya Chundru wrote:
> =

> =

> On 6/7/2026 3:59 PM, Dmitry Baryshkov wrote:
> > On Mon, Jun 01, 2026 at 10:59:46PM +0530, Krishna Chaitanya Chundru wro=
te:
> >> Add QMP PCIe PHY support for the Eliza SoC. Introduce a new Gen3x1 PHY
> >> configuration with Eliza-specific initialization tables, and reuse the
> >> existing sm8550 Gen3x2 configuration for the Gen3x2 PHY instance.
> >>
> >> Also add the missing QPHY_PCIE_V6_PCS_PCIE_INT_AUX_CLK_CONFIG1 register
> >> definition to the PCIe V6 PCS header.
> >>
> >> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm=
.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        | 139 +++++++++++++++=
+++++++++
> >>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h |   1 +
> >>  2 files changed, 140 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qu=
alcomm/phy-qcom-qmp-pcie.c
> >> index fed2fc9bb311..257b4df965c3 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -198,6 +198,112 @@ static const struct qmp_phy_init_tbl msm8998_pci=
e_pcs_tbl[] =3D {
> >>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_SIGDET_CNTRL, 0x03),
> >>  };
> >>  =

> >> +static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_serdes_tbl=
[] =3D {
> > Thisis exactly the same as SM8550 table, except for three extra writes:
> > QSERDES_V6_COM_VCO_TUNE1_MODE0, QSERDES_V6_COM_VCO_TUNE1_MODE1 and
> > QSERDES_V6_COM_VCO_TUNE2_MODE1. What are the default values for SM8550?
> For sm8550, the default values are different than what eliza is expecting
> =

> *PCIE0_QSERDES_PLL_VCO_TUNE1_MODE1*-=A0 0xA *PCIE0_QSERDES_PLL_VCO_TUNE1_=
MODE0*-
> 0x53 *PCIE0_QSERDES_PLL_VCO_TUNE2_MODE1*- 0x1


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
