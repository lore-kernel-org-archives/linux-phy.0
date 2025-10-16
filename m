Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84BD3CCD193
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 00:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYPCHFKD78V8z9eSno3tiA4RLWqx0MU7TcIlIcD1MAk=; b=0OYMbMwNtaoh6c
	XiLDgmVP63X6eySnD8adf9eu7WET+gkYpmNaSMYI0SqzuRr7TQWcDPuRDB7YSBOAhk2zdXwe7DVsz
	LUZvA8TMpd6eTzcVrDg4K/bqOpyDyfspZ4fgUEnp8bAcBO+L5xniONnhBP/5aYjklLugsLXLyD6+4
	y6mIMjWBP1TwIr7P5HDiyXQVbhASe22itqbgmeRVsr9tCLRy6CZu1zLejdgOYx1l/T86GuiCFgcnk
	u5a+EQvArcBBdgd1FSVR4bBWMSSlUY3+YVNZqmX71n4pjNNEcpPA8eihWpNvcqyHJMQYxjSuLn6IX
	zN7PNfCZFRC1xgp55ZJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9BUj-000000037Rx-0K1D;
	Thu, 16 Oct 2025 00:05:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9BUg-000000037RM-1Z8b
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 00:05:23 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FJuWJU002556
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 00:05:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ttH9o+JKFt12U4z1bUTlIexU
	G6jcvhEibO1N+cM/DzM=; b=mVbD4ji1HvPHj0I8MTQbn2quhJKosorfDjRHqDmi
	vz7qiYp3yhclG7K3UIUh4Jw4sDqUokOwqsDjDWcDCeDD4YhEAT73v8Zq5orGwd8g
	nvUyuhS2+KgTbIlQvVPGQYw2goRA42L+yqGvFAx2GsHcvqcMuqpXpHgPWKcfEsvK
	nv1VgxufuYnUf0ZT9RzQdR8R93HsRcEzWNSoUdg/I/cfoINn9Cl7ZaEWXYsHvLcb
	UrJCahJKXyz5H2SfvcsZycMe7f/HNu4MtEt9Cw8fpLRPrrZotGb2Fq3t120/f3X9
	MmTkszG2aaxB9kSeU4VwnaZyXoGCa6YvhlOvOOxfURpYhw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd96e0x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 00:05:21 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c1115d604so6683896d6.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 17:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760573120; x=1761177920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ttH9o+JKFt12U4z1bUTlIexUG6jcvhEibO1N+cM/DzM=;
        b=qD3R/gzx6RX0rfC364FmUizqrGAHlOqVAW6pukUt+LKu6Sgfcu5Z+1MX155U32nBDd
         sONyz5wK8o1HjOa3C+UWAdYzeAcw0+rlaP4iXvnSHnD26odsAZ6Zd30IMKn7qrNrczQ8
         CrKrMw8uG1HdFpK2365fyKoNolGz3qWRl6r/Z1QjWWJ2iuZh1RyskusKCTiUi6Xi9dZb
         mQmtPLxc+AsxK3wELg2o8MiuORBWAbc3J0Tl/2nFb5zsbfrUjknG4QaaVSYxET7FIM4Y
         qdCn2Xz2yNCNh3vWC6zhJa2qy59d+pV4d9pOE2RqlAgHt/hrkp2yIIIan6PDY3HF/hBf
         /LuA==
X-Forwarded-Encrypted: i=1; AJvYcCWFvfdk5j/muvmEHwdJxIfNi4sp8PQPxNF0swMakynB3j/XhzMyeihWV3CoJZKSjionMXdjWcBu8dk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxy5D/JdDG7O0zs7CNGp1Wk3tNZ84IpvHMQRR3VF/krFQ6Or29i
	/7LdLVKAtyTZtkCAfedG4Xb3QQpNumIW+SsFcaKNwdXtwS4Gurg0Cm012HElSkRBsDHaEJBjiIt
	fO/aHF93RWKmPT7zNXt+6ijA9qZbVZYa6tRuPdb/6nkvoe+lNbkDCPVn9H50SY8A+TjoQ
X-Gm-Gg: ASbGnct5kFe8h3n0Q4l9v2dOo6fREq74Dxw6SKISOu/qiIMAFOOhM1ZmrbqmWONPiZK
	SoYx8jw+Lcr0nC/yYe36LJsedbppS26EQxh0v0NS9g0aUqTgVRRsYi0vhRpWONhYFklF8myiK9j
	1gGYv2u+IMmpan3JRuXv6kT3nFrYrNfRbOwRrKK2Uf0lYkO7a+CePDgQKZ9xOVw9dvC9ByAAEj2
	7HwAvI2tuWSIFbQwKaEdt3m1LLSJ7Hdxw1Nq3N0aNCw4X26O1heEyxbKygN4EyFQQBPS7+aQmaD
	JTBSQIZYsQcu0MrZO0GkABTjl2rdnFGnaVwxQaGahqo+3WvNqQVaAzjaBLdyuOTWXbDqzJmyYds
	DsaplX17QK7oNRWns5FPN40eDR9mCedkKpqNpm1dAvX91EWGxD6sH1GIBC1sHnaXgsCAVG/9eRi
	oP8Omz2al1zHI=
X-Received: by 2002:a05:622a:4890:b0:4b5:dada:9132 with SMTP id d75a77b69052e-4e6ead709f2mr460284901cf.75.1760573120304;
        Wed, 15 Oct 2025 17:05:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPHSdX8RqUU8RAtgjSgrc5QwEf9TAs3cpNtbgxxS9fE9uOnZFE46JhxPCkQd6l+F9bJayOlQ==
X-Received: by 2002:a05:622a:4890:b0:4b5:dada:9132 with SMTP id d75a77b69052e-4e6ead709f2mr460284401cf.75.1760573119860;
        Wed, 15 Oct 2025 17:05:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f8c79sm6592635e87.34.2025.10.15.17.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 17:05:17 -0700 (PDT)
Date: Thu, 16 Oct 2025 03:05:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
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
Message-ID: <k7xjihanbqelhm6pytrugv73pc6bmspn75vy5a2thcqnxkzwhd@bsyp2nqkl5rf>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-6-84fa7ea638a1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-6-84fa7ea638a1@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: UjjHDJyARObRbQT1SuNKjQv6yn6YylvP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX8U3ZqpNRBwJR
 MI+dHjgFKISHo4L5WMm48qoAckeDMgvrDDQsZ3sIC1Fjww91PSpL2N80ZcVDnH83BPNtNUn0zL9
 GzpdulwHoYhbrlxNC7v9ffnVppkr/KA3bX7jh72g5j83aFOPzDJeD3gN2Ig/rtQ0STXP9KlaMh6
 2rmKY0MyCbdz9R7GPR+7S8eOJC7jf4J930j190gZoboC+1UyVSb27eVsNDjb+CT1xbGlo35vvCh
 ey7qy6jB6HHi6U4U/kxZUevDs8GeraweNO1GEDLDSb2M1XXqvD+yvqELAxZ4gWHrufin+G9tFov
 tIztdaviGEsAXpWGDRBa1i4A2kiG6aoxCwBiAqX2oHbGGsblnv5yTWHlkoScxE5cPAGgx5lIyG6
 0RxBH5WvHVGw6r/gETPwacfwF8z3pQ==
X-Proofpoint-GUID: UjjHDJyARObRbQT1SuNKjQv6yn6YylvP
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68f036c1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=tdoatHydnEAQPWUjzvIA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_170522_412989_309C16C2 
X-CRM114-Status: GOOD (  12.41  )
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

On Wed, Oct 15, 2025 at 03:27:36AM -0700, Qiang Yu wrote:
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Who is the actual author of the patch? Do you miss the Co-developed-by
tag?

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
>  1 file changed, 194 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
