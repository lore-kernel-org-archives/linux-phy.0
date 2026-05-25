Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9309CD5BCF
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 08:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/kkHM64TWxGUI32t/sccHnFGl3MmUC0e2qqp1Q2a/k=; b=fMAzmTsDNnzJj8
	1Y9DKw3uACs/zO8sfVZLcoxikDhbCENxe1rL9yyMzFDY8bKuSiiOUXUGj6Mfk8L7+9R3DxJ9mMb3K
	Ix3k8x/br380mmMv4SA9qVpdwNuZoO2tKpp7MklfPA3MvigVRKcK/gJy2OZ3Dk37EIobdJClXh5Ch
	naV1iV/yhVlL3aHhVIpMne4WHA8xdMaT/o7KLtp3XOopkcTNae4pFyCi59zYhbzRVvf9k5aRG5Tla
	qcPBsDM0enqOronApsXFq7/dRhKbWK1Pcz5RdltUEJ0U46M4nnjpVBYOdzEz3u8t9v0MJB1Dz5Ryx
	g+/ayqeWz2fEcOHbtViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQwX-0000000Gh23-2Lrj;
	Mon, 25 May 2026 08:45:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQwV-0000000Gh0d-2ecl
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 08:45:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64P6VjKa1202108
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 08:45:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PUMbg6cDpe8XLBpHj57dSo1q
	TWRy4Xqw6/CpTC9UXPE=; b=UXvmyWvmt81bxpC3mmtVfd/pAqTjpQeDifowuZTP
	qDx/S+XeFBPKVw97IU3D05wQCd/TlnpWUiB3yDxdbJjhO6QVD2QAVdzuEdpA1hZy
	LV1NICTC/qKZMkejOx7C/pveMXc0qyrkGMuuOpfF8CpNDPGllPnQTeLuUq543Ur0
	LrOMQlV71aycQWRVtfwSEAxogQfEdkkIa9Dpqonc8o22qYtnedfcSm9glZ2HasN0
	qsDG8Te4h8W5iRDZVfEtzRCxoaUqcEQCJFe/J5J9XDlvQnYDTxvN4OzHFnLRuSkX
	ntnT0gcXbyUrxX1onwDaYkkws6XHESfocjA67/h+3usInQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eb4aswvct-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 08:45:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-516d09e77e6so72682481cf.3
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 01:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779698746; x=1780303546; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PUMbg6cDpe8XLBpHj57dSo1qTWRy4Xqw6/CpTC9UXPE=;
        b=ZDjoK3wxI/G5JHKHAbEDFesRmS0RXVEJwc7kc7XZCMpRKeugKSKnmIb9A+mN7mTO9K
         HqVVbneFKX+8OyQd3IXIhgdXZrRQW/GardVHsTMnlk+14DGxWpfUFQpQ7kk6aKHXAcFQ
         15racVovxaNiE518sBdF7yuIw+KXm1JjPhycMCCevEm3mrmiSdOaPsCQ4FDv6px7GtHB
         VDmJOvMiz4i3WX0eRRzr5evRyHZjv8IWQjpnsPrr/kPbBcSSlqrRbU1PKJzuyoIZ/2yS
         rPaFGKgEZBNjKGVqcLfpD1FAjjGAOZ80F3rZiMKmvLrzmApRMOa4uw/I6uI+1/6M278v
         Fieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779698746; x=1780303546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PUMbg6cDpe8XLBpHj57dSo1qTWRy4Xqw6/CpTC9UXPE=;
        b=J3edEoN1lukKFTforGxS3K572FoLtbHtzV+tdBHYT4Dgle83YkPdtwf5O8RU/qhl6v
         zHg2Sic3eUA7uACMVz/GqEM04eAPjA7cM8yTzwgSLCxibvmwYX0W8Vxbsb9EmJIDTyph
         Ut4c71WCf5HIKShYBPq/Lo2B31F6Sw9UHSntWVl9GW4K7fdASRnCuE0OMJaBF1JFT/H3
         EsZNaON5yDBW5JIG75donkYnKWLDSMjczahbVP7aT141A2jp9nK9sicyAOS0PT7da9YB
         mcVsBsgzAskInWAYV3ZWUkQIyxEs0d8psU7Ac3ivB86lzpDLW36g6sRyTcxWyjxCxiY7
         VoDA==
X-Forwarded-Encrypted: i=1; AFNElJ+XUHz6m4r7HmBDuvOxypPMGItN1lPLegfdgEAK5IjD2QI85G3TEBDx0uV/NA7H/w1x90Y5HDw2UAQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzN0tUpkV0kTmKeRsCGFyr0DAQtnqR9BVqB9QPi9pgp5rR2zXBv
	HEag0DTbB7xBEMFlilG6mPIoRfbprfYt1e2yqULdVC1wcuo3COSFQKpfkiCL8DanOMB5AGLY+AV
	cL+vMHuSxzrB56nsRctSXuZ5cpkHwDUxbyGOF4WK61cTHY6asQxKgIDnBWHtwveW/oedh
X-Gm-Gg: Acq92OEjG0+dTRzWfW9WwBnFYyhDCRDiweRHMnrDIsNCfjvsD3kBsoB5BFsncJRjn4d
	55typHvC5M1iXS3SuXIG3i7f23jlKmWSmGo6sliOHZHTaqiijmmppryDGY6jSN/Occii3LPvUrq
	W/1DrtgpxdQq14KE1XfENzDfw6Nm+vhu/+br2us5aIr5QP0lwVsl8BSwZUdjfYQEbN79WWjwigb
	76j5i+bPCEjZAOBzBkR83kK8JyZs921XqiwNAUUMZ47s1RCIRLNIubWEuS48YqqxCPRKqWtNAyw
	ue2vhQD8KJYiFoOQnH7px5AK/RqQD6EJlLMttQ2MFCeUXcVOx4eE+aSAJC7wyHAxzuiUcqJGg7L
	FGGRlr5aCWqLxSuiuMXy2y25CH8dtBkz6N9w+v9WNn9EvQvkAKB3qvP6TUm1vqET5cxN9moNr3O
	wyNkEjqhviSN2bPHVDQIiwSFgXj7mWHvuX7ws=
X-Received: by 2002:ac8:5889:0:b0:516:d60f:6438 with SMTP id d75a77b69052e-516d60f72demr185991151cf.0.1779698745959;
        Mon, 25 May 2026 01:45:45 -0700 (PDT)
X-Received: by 2002:ac8:5889:0:b0:516:d60f:6438 with SMTP id d75a77b69052e-516d60f72demr185990851cf.0.1779698745535;
        Mon, 25 May 2026 01:45:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395dcc43aabsm21943531fa.37.2026.05.25.01.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2026 01:45:43 -0700 (PDT)
Date: Mon, 25 May 2026 11:45:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V2 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
Message-ID: <szzkygcwnrx2p54hbulzd3edhwzueaulhpyl35b762yo4enepu@zgzv6oxdocha>
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
 <20260522172716.820490-4-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522172716.820490-4-palash.kambar@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDA4OCBTYWx0ZWRfX2FfDtGyIQY0F
 iFPaALBmCG7o13+mh0E55K1rjL1iDNkrNSJXnihKQBg2r10kWcuXMmnDOns2Iu4r9r1/nQL6Ogh
 v+BblKpB+KN5NvhwugzuCS/+myVsjqN6u8wPsh4Qu4x0L7NP+9qqQHyd7/D88hsZ91719dIi9rM
 AIJP8okyXrhYSJiOaMBXQfNugBvIFQAqMVrWehZuE9yoAMaEUl1m2I2W/3tXdJFRbWVrDhMVv1G
 ls+q1ZmYOvsSaYDlWNv18Wv13ju6u48lj0U+YCfTNN1eY+786IvYQdgYF4qg8DvKs5j3EMHy+y9
 lAZ3+uF6LkDzMtvgxj+80XFlYJRL3KWm4zvBzlcxZQFPutzTyo1/chiCacOkH54MbOo25Fi1V3N
 KnSc9MI4BXeSc+/acYm2lhPiZY2AdYBYN7JFU4keahGgYmZRQHx6KZ+ta4ce9vw29U2f/jhK01+
 xcocq/4+ViHJUmYcrjA==
X-Proofpoint-ORIG-GUID: Emjl9ZgQcULf00bkLkSvIhYngfqlbEwl
X-Proofpoint-GUID: Emjl9ZgQcULf00bkLkSvIhYngfqlbEwl
X-Authority-Analysis: v=2.4 cv=c6ebhx9l c=1 sm=1 tr=0 ts=6a140c3a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=9mNwicV8TSN3JMHTN9sA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605250088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_014547_794906_F4E9EA49 
X-CRM114-Status: GOOD (  15.58  )
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

On Fri, May 22, 2026 at 10:57:16PM +0530, palash.kambar@oss.qualcomm.com wrote:
> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
> 
> Add the init sequence tables and config for the UFS QMP phy found in
> the Hawi SoC.
> 
> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
>  .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 140 ++++++++++++++++++
>  3 files changed, 201 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
> 
> @@ -1306,6 +1315,12 @@ static const struct regulator_bulk_data sm8750_ufsphy_vreg_l[] = {
>  	{ .supply = "vdda-pll", .init_load_uA = 18300 },
>  };
>  
> +static const struct regulator_bulk_data hawi_ufsphy_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 324000 },
> +	{ .supply = "vdda-pll", .init_load_uA = 27000 },
> +

Stray empty line

> +};
> +
>  static const struct qmp_ufs_offsets qmp_ufs_offsets = {
>  	.serdes		= 0,
>  	.pcs		= 0xc00,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
