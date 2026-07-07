Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DC9DC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 00:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wn4t/ttK0hntpqHBzZ+JiZ1aH3VwplNsR/7yjrf+qps=; b=eYLMT7n/2yh4AT
	IK8y2KOEkkCLbyhV6hLHsmtBY6O51TsLDB1QE6UumaKqnAXc6j6ZBWnpPt3Qe+3OFdbG3vtZ/X7TY
	Ysyfum6C4nnxcTn2IKLyKWmbipgqhT2n4fKCdTGYkZ+qbI0gI+p0PkXYAZ09mlw7H+gvKZzv3FEoB
	FWgZeLDTt8GCXICyV0xDOiHrVTs1HHbNj/S2al59LhO0c9T+GXxMUoZtHVYkM0u3b8l6F2KvvG0dY
	jjNjUSKAWKunMcSOdtLenbkJL5hK/pnqvgfhRcaaPHDCu1PrgnPHrwpFyJUxlVvujqAR0E/GfKCYd
	mlZH3yE9pDeljBHDZ91g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgu1L-0000000DqgP-3GtC;
	Tue, 07 Jul 2026 00:50:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgu1J-0000000Dqff-1LjR
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 00:50:42 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666KDwsU1478003
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 00:50:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kbaBHhic6gIIK0cxoTZmQQiR
	L9kgLJaSC+bKDRff9ZM=; b=eJTRIo88ZURLWQ5Lyl9WzJI/vCIsL6m0r6me8kbU
	E6GGdQxMA9C2sXJtRQxlLfHdSaxhVMho6axkjBVn/D/ok6EG1VXKL2iuAtAk5hdT
	8rVUBU7dMOL7PMyJCqzDhdveUpN3UDz1Jx6fVCpQo4AK77kQy1vhNGPuUkhS6oxR
	c1ijkLM58/VN0muS1ZQhuxyqEXvwudTJ6PJB0y+xIRGzR9YzCVwyNlQcntYYXr0X
	An0I1a372TVuEtU/Gw87JbHDk/YN6Xx4iW+amI+o3Lzox1waLgHqJYMvF2P0ZTyQ
	wOQ+jJQdcf0xOVOA1PJBnEbT6MepevICsboXtqDd0oLIdw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88hsbwn1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 00:50:40 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9692bdab0c2so162158241.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 17:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783385439; x=1783990239; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kbaBHhic6gIIK0cxoTZmQQiRL9kgLJaSC+bKDRff9ZM=;
        b=j7BxKGeCv4jKttYyFqGnBxfSC4/y2278hUL0PlpV2kjnTxIWm60ZZ0y8RKT2cslYzg
         QKv1QVGgO23LzhOQa8Hg8cuMsThalk7kQoEDxLzDeHk+3Ng+OvnjFLk3WeO2H3uxGmdf
         pjm/+bvcX8T/0YTp3VMeemHLy6zsuzBQ8/vZUXCE0hwBBurvpp2rQpBV3m3mq0fJ+hkd
         dcVfSODfLa6KggRbu3P7B2DgRWZH/VRT1mNcrasj5re0IlsuqfwQmS4na5maGed/YeMH
         pR3qEubcEfKhfgO9o0MxVxuLABm6UGL8ggQuozqetbfVSNfoAowgequIeeTlsUBmgKDF
         LVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783385439; x=1783990239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbaBHhic6gIIK0cxoTZmQQiRL9kgLJaSC+bKDRff9ZM=;
        b=fQ1rb5kmoQXfXJVIqTJNCWTWGMNMuOheGWZGZu7aaqARPvVjN1YYEKKCeWjv6JrOx0
         WrQxTA/ZTm7bQfP9aSGEJsvEm912Ft6QCISI5nT+0ylVVrkeTOzVMyHLe3XBR282wRGv
         MI/tJcWRPaDddRP6W5c+hucQZdHHDjipM07bHx3SiY/6/C8aoKJRnB1ZzhVt+SLe4ED+
         ImYsx0ZfKFlZzYYhf31yqglYXnVE9mLF6+ONVK1+i+dmR9MZGbxN4QZRiC2+PN7lk0tF
         KoQ8rRFJ8Xr0BthNXtonDERLmh6rf5PPaOihOTZVFKNVT36PS37+bNH6oL7ImQBCW8VE
         fFTA==
X-Forwarded-Encrypted: i=1; AHgh+RrcJ6yn8Lw+4tbgqUhgAHkU5fpWxWEuJpkXQEjMrezu861aX7sgrswzZTW1Ot32vLNOcYKQmZXJQDg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSWFFuTEH9+U+Ul/13lk0th0IRgghzgluejMeJYjI8viBlnlgn
	pioisLdjd7qX23ukWtufe4lkZ/y4H7BVKp31vbtz5epVYXIXfC6RYgATyxDxEsr3X85B2+cN/E4
	UAZcs4VwVIp4fKRH2a80am5r7P7XVUYRAGWI8Y6dtpc37Rhew+/Q14H+JKnAsr7aNFV2H
X-Gm-Gg: AfdE7cn2ns2aTFSyVOo4cHfsibm/B7ixh7EDKAZUM5k6tGRF6Gxa8GR87oD+itFNqQ0
	IjuZsfh8OPnkIXxyYQ2uSjBKD+z82I83I/q0kzfrNDcxP9qoiXv3oONnVn37i/gh1ywVnAKgIeD
	3p+ZdlqDQW3cKps5rEdg8SddUNG5GP8TK+EjTSg2fuFdI57sjDloajngBlOBGUfDTuVlYB2NrtM
	Q+5YHr+sgffqqxnYTkAQtIT9Tj8GOal1RIWLJuBbTLK7snGtDQbtzhb+RNyHbc29KPRrnDf3n/q
	1NB/9eKtDUXU3LcWafRJk32U2rH0mqKMQZT+h3aFddOlbYF3nTQ1u5dsmOlMl2b90kEWjLd/miI
	OC1F+XzBhLsXfnfVJEMDHndiFL09kQ0saVQjuzEUV8dwQgiq1dHF4oRNvss7V+STIi0T2Xeuy+7
	NWFwZ27ply3slOa7LssL3mbPpf
X-Received: by 2002:a05:6102:3244:20b0:738:9c72:58ce with SMTP id ada2fe7eead31-744c238cfb9mr307052137.12.1783385439570;
        Mon, 06 Jul 2026 17:50:39 -0700 (PDT)
X-Received: by 2002:a05:6102:3244:20b0:738:9c72:58ce with SMTP id ada2fe7eead31-744c238cfb9mr307026137.12.1783385439176;
        Mon, 06 Jul 2026 17:50:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13770a1sm3261848e87.20.2026.07.06.17.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 17:50:36 -0700 (PDT)
Date: Tue, 7 Jul 2026 03:50:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: esteuwu@proton.me
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/8] phy: qcom: qmp-combo: Drop qmp_v4_calibrate_dp_phy
Message-ID: <jnfko7lrdlda6qqc3453c4kjmmh62e5vd5pcj2icbnvu737wi5@qttiawd4vjrc>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-6-37e2ee8df9da@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260622-sm8450-qol-v1-6-37e2ee8df9da@proton.me>
X-Proofpoint-ORIG-GUID: OkJ5W0jLfpTCk4vrWKHMEGus9NgDbmOY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDAwNSBTYWx0ZWRfX9fQPdrXyR5pH
 C4sxeQBcrGSwfg402y4rvTYy4tUe+FaWwv9O8P4eriY2DkWrQY42ZHPNbn6zQIHe1ag/X1VW9OO
 ainkvJi661RoKlCEjgtsvvOU7vPv34TSZD5XlRW2ooNydLe/EwkXRAWaE7r2B2ZidGRf3jRkS82
 C9EVauAN5S5lKUuIVxACf57RR7VpeHiFNdt/lhxFpHKyvKGcafWqobdsSiA6MkcWxoeBtYUAzdi
 cATpIxNi1Hz7juS/MZn6LNKmifXG1BDO+0VXpDxv7W2PK5Q415nO+EYcnnDsKS9NOg04te+WX0p
 3dmBi/SrgRwr9Fok/05IiaHtnnDr131KkvLFVSB+7yFrP9uG6zTj/AuY8cQ5DaNv3qs3SmwprEo
 WulRvy7Bp+TxUMNdOsjHFWwYfplH0kLjephUpjj1Alo7FWE2m5mxl3PCQB/0tN16sYFDPyrKEX+
 wJbXF1Tm7lY2pzbi8Pw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDAwNSBTYWx0ZWRfX8/ObZf1GD0Hs
 cifnJb1Jwp08Ah7yUT/E+cW+AS6jjgm8zuolpehVL+EUQx98CALqiOXe55dw/PrwchONsEX7Cbd
 y5cJdtyA0unu6tl/ASzuhTazJYA0PEA=
X-Authority-Analysis: v=2.4 cv=XIwAjwhE c=1 sm=1 tr=0 ts=6a4c4d60 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=0gM5omY_zckdEeGsnHYA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: OkJ5W0jLfpTCk4vrWKHMEGus9NgDbmOY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_03,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_175041_565941_3BB64E57 
X-CRM114-Status: GOOD (  15.55  )
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

On Mon, Jun 22, 2026 at 08:54:27PM -0400, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> There are no downstream device trees that specify five values in the
> qcom,aux-cfg1-settings array.
> Plus, after cross referencing both downstream device trees and entries
> which refer this function, only 0x13 is specified.
> Since 0x13 is written at initialization time, drop this function as a
> whole, and remove now unused variable assignations.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 31 -------------------------------
>  1 file changed, 31 deletions(-)
> 

Indeed, 10nm and 14nm PHYs used several AUX CFG1 values for calibration.
PHYs starting from 7nm don't use this calibration.

Fixes: aff188feb5e1 ("phy: qcom-qmp: add support for sm8250-usb3-dp phy")

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
