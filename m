Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41DF4D3CC9E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 02:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYemRD58g6YI8aw4ErxHArCVvLGdFjxWqRuUD/ai9Sk=; b=nttQQYtgrlqRqL
	RUIpy9z22ypqEAnPknet+MMhyGUWQicQg+HtBVVkaXYRWcbCN0LkT9W5Mzi7WZxLA8xvtWKceZu2/
	1FxokRIxU7yGiFXi/zREOYhnyBpgPm7YjwpSXLu89axccMcINS1y3Sm3CXGMwDxUFAn6CC3/Hea7n
	U6WvAZiwxpK2BvkAGgmjKtIqfHLPaxSdMQoqm7CdMG22JbTAsMJs9qbYyq9UERVRIIgmKWB3O+uXq
	849ss/6L2ajsE9nv48dGVo3AID0Th4jbLbegedMoPVDdgSo48ZMzqnV5Xd0nJm/g4Zmm0OyY6LS/f
	hyabDd4vASTHiJF7/W4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCuV-0000000BWAR-3U9T;
	Thu, 15 Jan 2026 02:16:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCuS-0000000BW9L-3FC8
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 02:16:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EMgpgL3820399
	for <linux-phy@lists.infradead.org>; Thu, 15 Jan 2026 02:16:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=y6Nz50atGe4ppbMfJdSspqFK
	hDiCNfLuXTq78OiHIm8=; b=Ly4cuAb+gE5B+z36T4mwsz6tJmefkbZMWKV9iEWY
	/ofcZF55Hj+hjytzF0J6qWrAAuLwGAmVJUtporSSUMP6/p/j4THmQ7Rywi7jVBCc
	weQRzH3Bo9m7LYTyAWIFw/IiadUYkp48NR4EKg5nYdBXEeo/XZcCkmw+77ehiS5c
	1V7YkTYgKGQe15k78tIbL4QsAerPJzMiygeQO9LuwHMO9x2l6o8OUL9BnNW3ZL3+
	BRZeXBzGevBbIoI7taWWTn6c+L9/+VoxJsIPKZ1WJCbp/ctJ0vuOByJ9ul6DP/RZ
	2cmn9CtZTZWt6SGdmRZnkygL9Y4L4mkqH1kwyzvdXT40Jw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp7b6uc2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 15 Jan 2026 02:16:26 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b062c1aa44so1244488eec.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 18:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768443386; x=1769048186; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y6Nz50atGe4ppbMfJdSspqFKhDiCNfLuXTq78OiHIm8=;
        b=dDAcsHxVrK/XVCD/huEFGXLQoc6vuZWn8Zzd7nONQbRzPG5xX/MmTSYVYppAGCL8HM
         k/vXlb4tcQNiZMKUq192LN1rSF/Ewhwypshus0hNp2FU1cuTNgCd4pbbNIgAyc88o+rY
         ANGYxJ0HjXUYO10PxNgHBMrmWjyP4H1fHmMwx0S+xhhWcsc0PSGdADNRLQn6Dbz32nJb
         52eAAQwhdPYWjzMd2QZazODn8OGwThmnkdweTQANAJu2CtnLepY6MCsWYuxRhG6bAMHw
         nkF4s1QescRoaXeKBk6T3rJUTtNu9NpLgtXcg8PM086/YpAnvKaqRZPpjksx+88QTh7H
         hSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768443386; x=1769048186;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y6Nz50atGe4ppbMfJdSspqFKhDiCNfLuXTq78OiHIm8=;
        b=HgYyG2xFnqGBAHpRL3LqGubrM/M36pGojQ8hB7isvXCG3Sgh2Wl3bnuriuAP51f552
         dX3GLblYN03SW66efHGZe9tgWarED7ixeCVyUDRoUxU9wwLteRmU6spoBctmQuq2jddl
         GAnOxKptMyLjwn74PDvSDUvkks/mGx4Ps7sKuM90xq5MAshAcd2MYOS89hmBSAJogvnl
         Cs945aIAHoiEql5bPfEa/ljz5Ps75GnjNr6BCeB02IZkt6TznTNNbnKeIrpvf+U8czaY
         ZMuwjHBPX/M+uLOIAGx6vKu8w5qOrGF+1JnL8t/juIFJssJ7dEeOtrxiEVSifkUJn+pi
         cIVA==
X-Forwarded-Encrypted: i=1; AJvYcCW1YFIyAfHd8tJ8hUOuafjDglk+4akYl6P7nlE6h4aPxS5Wy2SwdWVqumH0AV4EqgAiacD1gCv8M3o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2ePIBiOiJjVdCS0jpR2neLKScEwdqmSqBqfZpp/bNNnrhlD/Y
	7eQNlZDmu0rMqm0lI9A0nsZmay/U/gwNXT7SY/dbZUKnnz2IEgwNSh9MhC/b/0t1de8ObQnFoe/
	jGr9MUgwi/YfdmKekA2PJUHNOg7XgwCiHq9ZuD85yM6DzbP+mqX9/9KzNZpUMFnycUoGlGj2lJX
	iJ4O8=
X-Gm-Gg: AY/fxX6so3jLHat1wTimCxGXyq5GAgjQ7tUvj4iYQJp58Cq5iyqNlOfDXos24444/BZ
	edNfCixKRN0x8MV1+JCu832gcIOD0qpCnwE5d0vcMdDcFPtkQHjt0ub4iJ7RdYGzGDbi+PUkyXh
	aOKsjB4JI8oPrZAusIWNWF960dc7wb2Ief4VmQu2Trkfktnm0tG5whUXg8MHACrF95k2HZpcO2d
	anqWsd/ajcQdR94AViW6Iaptyn0cl3zGLs5Vt+Gpgj/cDjEjap1b+ZxHHQZh6YUbdN+UqChE/02
	618oZ4/Zgt1ag1rSa8EOoLydTJJaXm1ZUCNpSsR2BKaPtcVs5ZspykcVvp+PzllFaFwTnjbd6rM
	pgx1jLRjpm4B8LMz55xpsjmWlrnS7RNOdvTWN5y6HxPFgbhtPQM/QGNau
X-Received: by 2002:a05:693c:3944:b0:2b0:580b:856c with SMTP id 5a478bee46e88-2b486f68038mr6473600eec.28.1768443385638;
        Wed, 14 Jan 2026 18:16:25 -0800 (PST)
X-Received: by 2002:a05:693c:3944:b0:2b0:580b:856c with SMTP id 5a478bee46e88-2b486f68038mr6473559eec.28.1768443385055;
        Wed, 14 Jan 2026 18:16:25 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6a49173b2sm293974eec.31.2026.01.14.18.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 18:16:24 -0800 (PST)
Date: Wed, 14 Jan 2026 18:16:22 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 0/5] PCI: qcom: Add link retention support
Message-ID: <aWhN9nlsma5T5ixf@hu-qianyu-lv.qualcomm.com>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: LpauF4NwT-__16UgP5e_Q35j7dokDoIP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDAxMSBTYWx0ZWRfX27SE+grwX+m1
 E7sKStKzBux1CaRl8LTH+3sTijECBGZYWewJNdYlOdlJKYmEFmnpL5z2fc1DbZba0ntp2LGWsnl
 pVI9GVB9fUZV5GHZ1QcNrzru6pW32CH1Mb13VPeWiuxkTmViSsOfOsm6hWo/GICUzrm/BLCMsiK
 AlQJmnQzowFwqDPLDlFmTjU/Iz1esvYrlKm1KS/vK1HXcALf1bdP5aANC1+8XSQHVZyWYgertDv
 DyXXmBOtKVMEUSsSYXyN+S5vK0UR4K9o+XbHuL2JZc8RV33XYYdLk76k4v5oy2A+mDx+7ZIWKgu
 ockyAEGDGvqWcG4SYFeUR7cpbb4Vet1KYT9wf4YcgzY9qcuz1evgR472MqXR/hhPnLsbXQ56SsF
 PJZRdvu87lEQB1manhnT/rejEqDBwY+BLoSNQLqYme+ol8hv0VANPl2GMSuucXlsof+mHkvmMC/
 9Oojner4Ie35Qv1EiGg==
X-Authority-Analysis: v=2.4 cv=W+w1lBWk c=1 sm=1 tr=0 ts=69684dfa cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ietwBVO8KLLdgrj2ZJ4A:9
 a=CjuIK1q_8ugA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: LpauF4NwT-__16UgP5e_Q35j7dokDoIP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_01,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_181628_926294_CD2001E3 
X-CRM114-Status: GOOD (  26.65  )
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

On Fri, Jan 09, 2026 at 12:51:05PM +0530, Krishna Chaitanya Chundru wrote:
> This patch series introduces support for retaining the PCIe link across
> bootloader and kernel handoff on Qualcomm platforms, specifically
> X1E80100. The goal is to reduce boot time and avoid unnecessary link
> reinitialization  when the link is already up.
> 
> We are not enabling link retantion support for all the targets, as there
> is no guarantee that the bootloader on all targets has initialized the
> PCIe link in max supported speed. So we are enabling for hamoa & glymur
> target only for now based on the config flag.
> 
> If the link is up and has link_retain is set to true in the
> ithe driver config data then enable retain logic in the controller.
> 
> In phy as we already have skip init logic, the phy patch uses same
> assumption that if there is phy no csr and bootloader has done the init
> then driver can skip resetting the phy when phy status indicates it is
> up.
> 
> Problem:-
> 1) As part of late init calls of clock & GENPD(for power domains) the
> framework is disabling all the unvoted resources by that time and also
> there is no sync state to keep them enabled till the probe is completed.
> Due to dependencies with regulators and phy, qcom pcie probe is happening
> after late init which is causing the resources(clocks & power domains) to
> be off which causes the link to go down. To avoid this we need to use these
> two kernel command line arguments (clk_ignore_unused & pd_ignore_unused)
> to skip disabling clocks and gendp power domains as part of late init
> for initial version. Once it is resolved we can avoid those kernel command
> line arguments.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Tested on Hamoa QCP and Glymur CRD, so

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
> Krishna Chaitanya Chundru (5):
>       phy: qcom: qmp-pcie: Skip PHY reset if already up
>       PCI: dwc: Add support for retaining link during host init
>       PCI: qcom: Keep PERST# GPIO state as-is during probe
>       PCI: qcom: Add link retention support
>       PCI: qcom: enable Link retain logic for Hamoa
> 
>  drivers/pci/controller/dwc/pcie-designware-host.c | 11 ++--
>  drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>  drivers/pci/controller/dwc/pcie-qcom.c            | 62 ++++++++++++++++++++---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c          | 28 ++++++----
>  4 files changed, 83 insertions(+), 19 deletions(-)
> ---
> base-commit: fc065cadc7ed048bedbb23cb6b7c4475198f431c
> change-id: 20251001-link_retain-f181307947e4
> 
> Best regards,
> -- 
> Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
