Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA5F9CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 18:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePb+DDJA8rxZ7bZ1tl+FKIQkz995N6xxiw0SAi+tSXE=; b=OfUonwthuyPk4E
	QsDNKbP47Lw8J9IaPA6/5R35xD1tJgsFcf2Ha5Y77XzCaZ57Bim43vazy+qxvfsrccVOwQk5UUjZZ
	BmW2JhMeVtKVCG1PSziCXPbwT2dNlLbdZfQXi2uQ+Ojg1RZ+T307iwUaEA3YAJ/H7xhdODWG48FY8
	zVPIdOqMtW4sEHOa/esd8aBs11hLx4nJ2QBPkbNjzuBbhjCtshb5Bs/xTJC9lEUuI44weJ0gs+ldN
	RWy/aXnfU1jBOophd4XIMj0uL08LrsItS1CdF8n5f2HT2Tvgw5CEmYs/MpdjuBgQV7omP+SPkJfI+
	C81gV/x1LJvoz6Wq69fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeqp-00000004HLk-15jS;
	Mon, 08 Jun 2026 18:37:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeqm-00000004HLP-3XrO
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 18:37:29 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658FG9ff3589491
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 18:37:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nIZ1j2oO4hKk0sVO2Hu6TOAa
	KuhKzlRHmyJatc66WiA=; b=Ve6KxcPdZvl6B8I2F1YCoUs97rEowdCEDqmkApdl
	AvAFb+rdNQVgJrGInOIQZDLQeb0Va59EbdNWVN1qAwmswzh/aJf/LKpxZl2QHGmI
	QEUhvr/pdHKWEGtPQoQFjEeMDJTbTATeMCiYlzsxFwSu6yL5DjZ321dRKkNoQc1E
	TBLBYARUxglCCr55z7VpDZ1c857hMtwlqFYM7R6mdDY2VkDSMJpeXCl7FZf8Z0N7
	UmyIMbUTQ3bCPdh/CakIvYBSVXUtrQIsEmabCc4/XWhnb5b6SBjtMEUTbCMop8fa
	2QipVp6uHvplwQGH67lk+iAQGs/8vP4NE6nQxJElk/ggUg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun42ddm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 18:37:27 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-963df05f08cso1304401241.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 11:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780943847; x=1781548647; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nIZ1j2oO4hKk0sVO2Hu6TOAaKuhKzlRHmyJatc66WiA=;
        b=JQDVQD/MAcLeKuuTxTk5Z4S0f6oY63RHhHeCGZv4TBuOikY5jNrKQPDzwoxEW6prBs
         ts7ROqIoB/CTynJUbEAMnSTCfTttC/mBjMhH+Rikw2e9ZQke9jcarsjis7b2EmEmUVdM
         hOVzzvkT8mEnRs00DYC9MEAZaiv5+NYO6GEwC0d6+3kY3/J11uRyrcJrQZ6FqQ1S2Y+8
         ungwayVspAHw8fWCzttbh4ZsjaZJwjMiniuIiVdQglmSTxj8SXtrwTf+uWgV2zGbw14B
         JBlVz13MhfMYDd1lHJ1ywUdkudhSfbXHGUXqkl9vi/otB8VqRBiUF1wY+fgM5mdac8Tz
         CyDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780943847; x=1781548647;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nIZ1j2oO4hKk0sVO2Hu6TOAaKuhKzlRHmyJatc66WiA=;
        b=drFIB2zO8TK9JcwSN853BPvI/XrD4aaDL58DclGVZmsB89VQQHa24RN0x9/WHa7C/B
         3nwkoZdum0IlGtVaM/ynrxzSIsZJlpGToC0CLCjyBa9OW8LujqoUGX2RnKbeEuGQfWsQ
         u3QiqssfH2LpcBtco/1I7amj5I61NHpjhegoHP+1qWAJMNttdCMtf92rLD+m1Mxpt1jI
         IBz1obHCF3SEcpyhcKdw+pqf0affHJbbscFdP1W2sc48ZuGcRD/Esw+kyd1qlttF3wgk
         r60rkWxNurnH4EycJWap0G3Pb2LMT48pXPb6f0gzPtAvzbSnYMyjkRdSEZTA5GMNeV/U
         fpyA==
X-Forwarded-Encrypted: i=1; AFNElJ9l46tOrN4E2mc5y8ViF1ofNspne3Zkld281AkjtjkLrL0he04KR4LGzS1a1s+2F+985gNa5COQplY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9rPMadTzmn/cLXBsU5OsMICnwL8KlRv9Jl1xiTjLDMIW3j/Aw
	R33C+EcPp2jUpS+EG58LsmN9xEwCRbL3N+oru4/ukE9cbLIgHtfb6hAAHYBM/TwJvWfNyFAHR8K
	qDrI46zL7FG6HGT2EAqmjKVi5xsBuP3vgr92b4h9voeGSvfdYRfeYJN6kOhxGeIDvvRx/
X-Gm-Gg: Acq92OGNt7H2e7H8XNhj3S/dH9NybVrvpX1WnG4v4Uok2D3XCAcB/oYSNxvVgGTKFNb
	nZLaHApxpDgrP8Pl5kioi5TQQ7szJy3sXdCNt/3q9x6vgQF5Tx8hYQVgAc4CkC1yyCpaOuPV83o
	4v4ycLFMyGSPh9RVFjac2dtV7pNbb/suukX4v1dhGr6Fl1gG7NgYLYhvvsIQQZQJNakMNOOpfEu
	H1bRU4A6HAPizosmv4v9LGeaHRplPXHhqat8vBn9gP+WmxXUQFNo33nxvAz9ZGse8tKlhSA0gHW
	c5JAhrNWKsVoJOz0Z0B7jzeGsIvmJ3rLo9xYrfNYuidTUv0jhgQxE7yDkzEk2Wd8Duisz5a9dI5
	HpdPIm93fPjWnR+aLmo28yq/g3ikkb586FhTmSoirAmhFoU8/X52G2D4WpPo9THQn6treEKPiIA
	LKIIp6ZfwZ/UOmXJ10K4QvZokjTdWGQmZbOZSUcO0vvnzqEA==
X-Received: by 2002:a05:6102:442c:b0:631:81d6:e15c with SMTP id ada2fe7eead31-6feeeea7c1cmr7778972137.4.1780943846820;
        Mon, 08 Jun 2026 11:37:26 -0700 (PDT)
X-Received: by 2002:a05:6102:442c:b0:631:81d6:e15c with SMTP id ada2fe7eead31-6feeeea7c1cmr7778948137.4.1780943846371;
        Mon, 08 Jun 2026 11:37:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b992a66sm3938821e87.74.2026.06.08.11.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 11:37:25 -0700 (PDT)
Date: Mon, 8 Jun 2026 21:37:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
Message-ID: <25m2ts5lomrmmxkjc24t6ky633sb23ge5udg3z3rln2jaqrfh6@46xrntztb24p>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
 <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDE3NCBTYWx0ZWRfX5ecLN45+07w1
 h1QWWIPk6H89VElk9lUikOEzKFUSGoL3ovPxQOq/LG26DIhHwsdK94MlPHdcX5A/wHo0NN9ACIl
 tqEVpcYEhr+koUNJhAqIw4Vv/FQh/ZpJhgHinPCUb2LVkdWElI17vTTguGnyc4iZ65KyKYJZWHk
 VcR8NbzcrXdNXuFm/NNylXXv93UE7Q1bEwe4wcHGRK90x71FgyQ4HNlIP1DCEIFhy3iHy9bITbR
 e+k1Tm1eL3KoeLScUUX3+e8gAsNNLvFulHeTUteUmwPw03jP3CRrdOr3SD2wpPljxgAMHtTLf68
 QhfsT9/L1UvFIolwOmkItGTXVPqohESn7PoVktffkLQoM1HqabpSwf9yN6xDrEYOIsP6NysWEqr
 wFw/gTUZ7Ay60LMSBwRBQnZ2Q/rsowH/BLgGop7YEhgUorRnMooq9FakWXsFrzj9V+u5KNDkfsh
 Ert9Zq/GfvyVQaRv9rg==
X-Proofpoint-ORIG-GUID: uLcc5eA1c0dpLebSym9fpR6ofv0JyBM4
X-Authority-Analysis: v=2.4 cv=ZY4t8MVA c=1 sm=1 tr=0 ts=6a270be7 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=4nhpQrVHSdZsbWUMf4AA:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: uLcc5eA1c0dpLebSym9fpR6ofv0JyBM4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_113728_913199_B1DADFDE 
X-CRM114-Status: GOOD (  13.70  )
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

On Tue, May 26, 2026 at 02:39:56PM +0530, palash.kambar@oss.qualcomm.com wrote:
> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
> 
> Add the init sequence tables and config for the UFS QMP phy found in
> the Hawi SoC.
> 
> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
>  .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 139 ++++++++++++++++++
>  3 files changed, 200 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
