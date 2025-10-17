Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8194CCD183
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 02:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIaLLQYzMLzDZvThnFVQ68dUSOKI7evzunNRDwVTBhg=; b=WkgVrDkXUvJiG5
	XBbcwtMp6k/tsUhow5upqY4+oiOGk5zIlwNsAY+4bm94knAB0AEpnkC0KOC1qPsiSUn0OfOjuB0Yn
	sRNITmbmPfaFfRognA8y+aoL+GR/Hcoei1/bT6CPHwlBThuIWDT+QNp9fled7U5+75nPF5Zg4d7h5
	vkJcHfsz4Q++79xy1/UJtc4mJ+uALOXXnFQwjj1Xbv1Z2TZoi3xe71wSJg+JcJguU12i4h/ICovMh
	vgvKklakAbrYyxUJ//UKW5iTDGYbecQCvlEq90VMPStXJ0lYb7wba+qRjdkozJbQyN2sNOcuBjGf7
	de6aXvCCJTflE7DndyWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9aK1-00000006PQk-0Bf6;
	Fri, 17 Oct 2025 02:36:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9aJy-00000006PPi-0pcy
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 02:35:59 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLTWL022287
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 02:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pnta0ElwtxRwPXhkcckaPVCu
	qE+PUgPrCXZcvvyV8VU=; b=cy/oem3VT/N+gkNmaxhKasRfMmHNHtM0/B1QS2l0
	zzK3JBNlR/jZ62z3fp6IKF4UseUftnd12jwgPv7qCGN8HEAk3S/5aG0o+YgXBP6D
	YwPaelPkXozleWIVid3Me5eAOJrBDEzXDup8XeCKzRpEfh1mPzkrbgS4fZ06GEMZ
	G17dHHS5wQWr3DjJdxx+1JLCmbxEChutOfNm/dTZ6JOKCV1fIMrWHSu22uLcqLOW
	28l5lwJ8otRaWZb4ecCrvCw+PEIPuiiVGHOGUl/WENIJTqKXjrdquFjhr2NvARQz
	+si+dT+RzFLwLNDCfotFREn2ziHSukT9eV1dwKHSzZoDEA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrtfgsp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 02:35:57 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33826e101ecso2794404a91.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 19:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760668556; x=1761273356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnta0ElwtxRwPXhkcckaPVCuqE+PUgPrCXZcvvyV8VU=;
        b=mbtwYHQOVQQN5zfJ65C+Y9gVgBkm/JDV7CYb96c2uW1synshZN4qHN/1/9KkzaY+Tf
         c/Tc68sQAudfpVxviW0Y5Jplar9xQrPb+FKUhKzlHHFaMDL1n64XCaf4DCN1Kx/44yKf
         Rq+IJEvhvdV+sA2s8AG9iqiHjm/kjxjKsxwd/wvcJ5bCfVzde1M8czHVkDfZq4eUiMhG
         ZfZDu4FsYgAg6MnQ2a5wGAu5TsNBOXQubBb1S5b5Lx7HRbE5tvwULlTCjaHn0vSNe4Em
         IRHCxarnyySRAi/omQJg66k6KPFNYiEFELEo6KkGNnw1h5xjr1yg0GpRdKmMs8ja5M7I
         NVFA==
X-Forwarded-Encrypted: i=1; AJvYcCVIbeOdKcp+YE5AsAMuhuT++fRbtgUxRW78/F6LaXiK7Koy2hcjIbCbwSTnA7yFrZFLI1zZZdWejf8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjJiwFBxhapY2jViTpISJk+ml14DU5gBGhX+FxpLVQrJR22nuN
	UnKdkR/OBmPX7xx1VxBrDuwk4nLquYSSS3O39zuEM+Vyy4xHcMgfvYiGF20Z4Lv5JbzQlMSuxc+
	521mJJ69SqwmU4S4EMkSty1CmK0rIladaligy3L0ebIjrTUsEPJlxUMja6R9fwiXeTVeO+D/aAd
	/eVKk=
X-Gm-Gg: ASbGncvFrRk7eQgiEjxgG3lDatJlXtV1Om5tYvR6AfbbMktojoMg7haNkLpvtMCmE4j
	8dbm/E+5V6dwkwtBztjBA7ZpXtop6QaUwbD6/suqLvuQBW4KBWz9JaB8GLTTrQtnXJMkjC04oyx
	vtKM1tRBtQ4nFioL++LDE2bgqLOn6P6ni4m6L7FBVpoR9d4yrp1BUA5XGj2c9/LmsYzUxZ7vxlL
	Lwhjx+O+MIdPntELzy3KeBJ8lEllCwp4BPIE7dOclejUTrFwfdOi3qImXzKb2j/91/5ybSWkJ7D
	KdOVzX9dwD80BcBQQxlHLX8SJ94JProiRoRnF5a71neNnBDsTYBgyDfBNH1pKo2jo99vrqAW0t7
	y+jgDfH6ezIaj27pVM7MriqMF62WPGFkFk8Dcjr6+5Ff0Ug==
X-Received: by 2002:a17:90b:3b4f:b0:314:2cd2:595d with SMTP id 98e67ed59e1d1-33bc9bb57a5mr2474416a91.8.1760668555628;
        Thu, 16 Oct 2025 19:35:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWaqgs8yi7UTt2AbGY82T7BUeI2rUPDLBynvD9H35dUeDbKXFf60ihFhe6zjxdPRmQf21ffQ==
X-Received: by 2002:a17:90b:3b4f:b0:314:2cd2:595d with SMTP id 98e67ed59e1d1-33bc9bb57a5mr2474387a91.8.1760668555176;
        Thu, 16 Oct 2025 19:35:55 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bd7b3da78sm946297a91.19.2025.10.16.19.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 19:35:54 -0700 (PDT)
Date: Thu, 16 Oct 2025 19:35:52 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 6/6] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <aPGriPZ3u54RCpVx@hu-qianyu-lv.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-6-84fa7ea638a1@oss.qualcomm.com>
 <k7xjihanbqelhm6pytrugv73pc6bmspn75vy5a2thcqnxkzwhd@bsyp2nqkl5rf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <k7xjihanbqelhm6pytrugv73pc6bmspn75vy5a2thcqnxkzwhd@bsyp2nqkl5rf>
X-Proofpoint-ORIG-GUID: vdL6jUU4O6zS8v7pkZkv21irrn2_5NIK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX9lr990thC0NM
 6vIkJ+o3qFTNBlZqv/85vMAepqbY4e6JWfJK1t+dHD29563w5D/fVbCfVzZQyee/D2xCgmISw/d
 uJ6xvTlhvmIJqRJ/IuMeQpTyc0VKbnTWt6xknsQzWtvF1/RuecVWkjIvu4wcVCskvzSW8oUlbtx
 9My4SOR+enqbxeHYEkY68KYmzUTpomFGGYODnleSARLDyAxwKJ7D3wliQ4P6slYC9Mag/bZwUUl
 H2LxjqoK8KWkfTLi+WRip32i7fQlzy2fV7mQf2L2vIHRD3kxva18wrdbOcQGJLL+tG3OUu6RRRG
 +0BFnEmBZ8Nd/GU/oQATy5+OTtcQbpY2V8L6sDpxmO4ATahQQvYG6E7zSAjr1Pelz0TlE78II+y
 H7hFwq7e8+yccMHHYLciH8MMKHDMdg==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68f1ab8d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SE4x-66S8WGdbeowD1cA:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: vdL6jUU4O6zS8v7pkZkv21irrn2_5NIK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_193558_459360_D5B1D1E0 
X-CRM114-Status: GOOD (  15.51  )
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

On Thu, Oct 16, 2025 at 03:05:15AM +0300, Dmitry Baryshkov wrote:
> On Wed, Oct 15, 2025 at 03:27:36AM -0700, Qiang Yu wrote:
> > Add QMP PCIe PHY support for the Kaanapali platform.
> > 
> > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Who is the actual author of the patch? Do you miss the Co-developed-by
> tag?
>

I wrote this patch but Jingyi help submit v1.

- Qiang Yu
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> >  1 file changed, 194 insertions(+)
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
