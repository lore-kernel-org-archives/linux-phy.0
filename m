Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B82C5CD6E57
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 22:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+4cGPv2bIg5tu629cFAtY1eJvQ7vWHAM4ym31BSu8c=; b=VdhhDrz62gB5w0
	/7idk37I0ZCdAvHHbojCTmQP9MNldXR2r4jz9lGueHMFX0On+clwboMVwQtRmS+YEqCd/ucd8xRE2
	d+F/g3EpzIk3EaQyARVVRgZlajfc4Dx4ypE6ZsIqFN1CgpbLznoYn/WR/s3pp3J7WRg6t4UriDzLO
	WkIbt5uxv0tFhlo5QUlIJ9QAN9U1M9s8qQcF1lgyun/a9N1GtlVYHY9I5D1xM3izjWfvkqiXbN75U
	YUZSYv9XUz1Q2YaY0Z0T2gTqEIqLuXlVRWTPSAVu7yOsLnd3H+VodPkDSA8EVW804gohtfO50UaXL
	IC53SBSXLZwxYYLBP+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUtrA-0000000Fsis-0y4s;
	Wed, 03 Jun 2026 22:14:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUtr7-0000000FsiW-2uCg
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 22:14:35 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653Hw5oF3234785
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 22:14:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xsSXOlAcJwLY6R8+0TCnImJK
	D3AIKkU0hbSagYVOEpo=; b=SY0UVSOPXpph1zn/qRbhp4saP04lSrbHSxxQZ78w
	sIDiCyw0hMCV5J+KVCnuHQ965aHMPg6YQKGJLI9b8tvRcOCiEsZOT4P9FLUn9EKg
	2e0/69On81keTF3GBYzEjm9374fH956TGhM+TfhjNSrRnf1Rv0QWCx6rPOOWtPgi
	rIa8XvH4UTfqDlxCJb+e74auWy4N9YvZhMVpqDeyFmFhBLE1+tfMvTks24pPu4FP
	gVk99ezkTBuAdMWOlAJGc1fAZBRpZy42gjV/SiGumtO/wOT2SuQadusN9MR2RHnT
	jbtVdITEV1pFRhHNT1UB9lYOVXxlWTz+32Xlp+O9dT4Izw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejs4s0xb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 22:14:32 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9639d763d99so34046241.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 15:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780524872; x=1781129672; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xsSXOlAcJwLY6R8+0TCnImJKD3AIKkU0hbSagYVOEpo=;
        b=A9O4+sPwudb6F2S9+/eeqgBsdc00PsOyq1j7He6ZRzful3GO8wAee78ArlAi0DMJpD
         8PvIxe8I8hba5ZA4oFnT8vzr0MSdJUPETxeY2P2bdG7bHtpbMynxwZfjJf0BqnW4xEeV
         6RA9q3DFCKqcfOyTD+3CYF87kqwTjA8Qx3Pat9Uz1dW8g7GwhqmoMbb7KrjfpOM4dfJF
         7KUxBtbrpcoVb21iKdOrJMutswvpl43V+epLJcb8jinI6QAsx7aF/fLtLCjZw/XoWpho
         Z6U/rUN1QLGLVixVzS3CfhxhfTJd3gwLxFVJUn3wBj1A97jtnyikJh6G2J+M7C6U8Fkc
         iwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780524872; x=1781129672;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xsSXOlAcJwLY6R8+0TCnImJKD3AIKkU0hbSagYVOEpo=;
        b=lcrUVdUB4G46iDA+oWboyQDLJ1vD1S/rhNMgJzPT6DsfmLKnTpTUqLzWiSZWIA7oZR
         vMFLIcUOps3CSzv3LFMia/RcAFrrO10XQY7qv0n0PZ0yayfgLGsKCQpy7V7Lv0m0wR7i
         rOa/7gj4gREv6y7tp3UBvvWTJPSmBEkuytrQeMxL6YyB8AIeck6qYnYGMoq2jCLg8kh6
         Ofv8Sq2wsEJuewF6FUI4HlAF6n26MI0QO3Z1Z7AART4fAejGsL9Tys+Pjt/m2yj51yVR
         FBreeaAlRm7wJQGYRxGWGrTe487OcY0um+K4bj7zzG3Dm9kfww3bYPB/Cbm5R7P6DCSF
         BW+Q==
X-Forwarded-Encrypted: i=1; AFNElJ8IV+g1WFiaZ/KMMiCUsnXC4kaeFMcQbw+mqBGgTEHnTi3Vi/gubJNQSpirGf8sjrLjosbESSj0mWc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPMgMTOq9wcyCyJShtFRORSD/8ALA3CrzvlYOoi7CumLrfpB3I
	Q2ZDi6QJjbpro43SBZMCmMAJtaEudWfl8SBKwUSOCkYaM9fbNc8oUszpPpKuuzk/8+RVYZGKaqQ
	kHDXLQVCnjs/I3FVKx2j1uug7o/hw0rAGd/wKyiPVHI4EB7asAbZBrImmwN51BwOE13QL
X-Gm-Gg: Acq92OEtAuFtHwASVCTb4jDRe004xUcoCuzJ8FD6B/kF8L0S6hmt7u3dnZZlD3U6jo8
	59ySnlyH8SWl6Y4zhfdO4+zTPrfRfZ3VRWShkMFf6vVS5wbnfFZKZ3/b68qO98qoMdgO3aD40lf
	6YvuGAg3wkGkZf/Q8CXbpb9iqn8QXA6xKLHc35cQbfj9gXa5ZJDMB9rfRoW+PHmyQ2QTtgeX2pp
	HJHS+eYHR/fbw9mg3tF/4QUExOGLVnvaMbw9LuobKuPq4QH1HvD47ZyL4z/31TS6WoS70baym5i
	JV9/sf5fpeqvt6vyDXfPnxEnKyqwpFazbWRZEBGnpEXvfFSn1teZHIIAZs90UD8DGDtaTskrZEL
	pipGRuFuZK2jHVeV+iThxuJiTe5vKQelZ1Jvqo6bhpkdn+nHm9ExiZ4X1Zi0ujekukaS+P61C7Y
	vn3B81N6ODSEEu87z/z7IY/EscB7ayr5+YsHXVU6WPLYGh9A==
X-Received: by 2002:a05:6102:dd0:b0:632:5628:6d8e with SMTP id ada2fe7eead31-6ec460bdf6dmr2693529137.21.1780524871662;
        Wed, 03 Jun 2026 15:14:31 -0700 (PDT)
X-Received: by 2002:a05:6102:dd0:b0:632:5628:6d8e with SMTP id ada2fe7eead31-6ec460bdf6dmr2693507137.21.1780524871182;
        Wed, 03 Jun 2026 15:14:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97a714sm869014e87.43.2026.06.03.15.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 15:14:30 -0700 (PDT)
Date: Thu, 4 Jun 2026 01:14:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <htxqjgwjczsghunsbvo44lwkadzeg2kp6wfcksf3hkmcubvs2d@cw5r67uxskvu>
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
 <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FrpxR9oEpoypIIdsPIi2m_ovOqoxNL4d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIxNiBTYWx0ZWRfXxYokZAcpPWS0
 scLnLGGf7f/9R62oqQn1SilI5TjDqecciGVwub25EOUFBoffETbMAVho9YLn+FU8rUXkImxK1y/
 gIlt8QFoM6sKYhWthh1I4kUBP5okk9LZUWXTFPoKTkKDoTSc+h99gUQkrUV7PZXTp/yRD0SfGLy
 E+P7hhnP+6riWWzyoO9tTLCTNe4VjpAuX2YMUW5jEteaYV/kOqK0fRtFBZf5KRrmHgGCdHFz+Ym
 vBVMO3dKuOxOHilb5Fu0J+jF94ghJZvxH5XEx5UaCQKfOTWUqLcch1H7we+lci4A7TFFJjn9oAq
 zCWxdmmfdGvZyDslQo0h7ruBiUpmDzVkklsR/OxKpoiY2nOCwsmn9JKb5hgoPdYlkFORGWIbWEt
 NRJjdLSfgSyzKJjyb8HvwH5ner6vLWSHu8aZiYP9IhvmwOicF3PkqXZ8NroH+/XHVEQlgSB7Aux
 DloiKRhOwN1acCM7yvg==
X-Authority-Analysis: v=2.4 cv=afRRWxot c=1 sm=1 tr=0 ts=6a20a748 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=mZDqFNyF9VkgOTRxVPMA:9
 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: FrpxR9oEpoypIIdsPIi2m_ovOqoxNL4d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_151433_907123_12CA7C28 
X-CRM114-Status: GOOD (  19.39  )
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

On Wed, Jun 03, 2026 at 02:37:48PM -0700, Vijay Kumar Tumati wrote:
> 
> 
> On 6/3/2026 5:57 AM, Bryan O'Donoghue wrote:
> > On 03/06/2026 13:40, Dmitry Baryshkov wrote:
> > > > Are you sure about that ?
> > > Yes.
> > > 
> > > > ipcat I thought designated lane 7 specifically as clk-lane i.e. named it
> > > > CLK_LN of some description.
> > > Split configurations explicitly use other lanes for clocks. E.g. check
> > > the RB5 Navigation schematics, CAM0B connector.
> > 
> > Can you please check:
> > 
> > CSI_3PHASE_COMMON.CSI_COMMON_CTRL5
> > 
> > 0 LN0_PWRDN_B Lane 0
> > ...
> > 7 LNCK_PWRDN_B Clock Lane
> > 
> > ... just a badly name field
> > 
> > CSI_2PHASE_CTRL10
> > 
> > Bit[2] = IS_CLKLANE
> > 
> > Right so CSI_2PHASE_CTRL10 controls lane mode, indeed. Thanks for checking.
> I can check this with the HW team. Although the SWI has this knob, there may
> be some limitations to use any lane as the clk lane. AFAIK, only two
> specific lanes are clk capable in DPHY mode.>

Having clock-names property doesn't mean that all values are valid.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
