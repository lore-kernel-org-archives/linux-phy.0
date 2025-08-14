Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D328CA0EDC
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 13:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6tq6syWMk9Id80zqKqffrSylnKG0R2SG6I2BBSxPsc=; b=gBp+MGDCo0mmD3
	MPGM7cEg7WIgMgSiBPVPAAp9U7SM3rm1EICQ7yWRQDzHO5kt868nPMAZ1/9ti8b9CrheR+MiVe2hu
	4klbNEmB+uo/WssWBR4gFUY/6ShaJKJr4ECJdy5UsVSWJesDbmaUalZIu2euKunYmvTDTAMbTwAwX
	CQe3cICbMoVwLxKwaIxzf5Qfk3EKjxxfXLe75PyNah6Ur5xsRiWfxzrddyuNVvPvP7KEFpX/DN8EE
	WPP+bi+I3fXWCRE7+HiNC3VDQBSAIk7i2ZSS1Vd0V4TQ4UNMyA06p0TLkvZmYLNxsruS+fK3tRaZP
	vWtLlEHx8nGnQ+Us3PeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXom-0000000H0qQ-0p4g;
	Thu, 14 Aug 2025 13:16:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umW61-0000000Gk1C-0rh6
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 11:26:14 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E9xko8024412
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 11:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9l5Xf7ay6Os+hJPhNXMLzGQB
	mPfNGIe/A5XHYvxm8IY=; b=U8Lzcoi0K2t2nPu4CVPuCIGWaldrI1vDN/RMfRyw
	6fj6vqz+Ek+TPMf9b+QSMIPbHaW1cZheiHo3aglRKRBiTSdCNEgcN2827vSTNZHG
	j2NiTMCv0Ain6uCeKl5ytRi9zqa/1j0dqwt0jaMWPlFAr0WOcTrCQoxBqamteMNt
	CCyz08J73RhTlx7Jq5JrUuRB1lJUFX9yNttjvu8eRXmPp4V2wgWf9wywfC551VTZ
	M+ClCLiDqKsLT5WrRNXHQY2pzoDqAHkb3ndybAAd9IbUiIa+Nt5605T9NX8CQGnr
	3OmuuCwBBMEeC/VQGQIM88fmFg8xwUtjkupwJsGyQJplVw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rv4wb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 11:26:12 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b10990a1f0so17832241cf.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 04:26:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755170771; x=1755775571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9l5Xf7ay6Os+hJPhNXMLzGQBmPfNGIe/A5XHYvxm8IY=;
        b=MQjchKWMmxVd9WyD/6msiuHraoB6VNBvJq99/xk9E2d7KibRngt4O5FU19fetP/BOi
         QQplioKg3Q7uJUmx6fwWpWVrXH+W2kQ2bd9yVNZql5Zu8jlNEYYXUolVwT11nPFschgW
         pYSSYagp4Bjyhmc3cUpT2UBYob6JRkN7nYiCGlo+0W9tALkAoZzFD4ho8exsaHthFpPj
         7grSzPBGnGE8vyACIyBiAz34JyoDOtouIVf7FLKHj1ilbARn7PGDod3nPQNAa+2mz7xO
         mp0ULa02RzAZVGUztbubJ4AJeddaThIYhBA1s2rt7uqb2IIc8VV2DhV9vg9kelCQh1X/
         46Fw==
X-Forwarded-Encrypted: i=1; AJvYcCUybGUjLQ9uK8WVIFMmY87FL0LwPz4kyRdg3lHrhxaegkHwEMLXkLxJB4x/6F6BIS7ZppVgKAFM6Jc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA5rmbr9ara8CoYEpNDHm9YhCtTSEBT4bPl4luD2txZiuK6lyb
	bv6+jzAAtcH1jR8Zq/lVYdFpZYCIc4UuJyEcndPi+zV7Dw6Lup2PGtl9r7D40tlLzhwwvdO/MU1
	1hHkGZh8df9+lBc80tjI5oMqCAWsUL24OaUlaFWTMPHcDIFilVVN8BMFQF1pR2S4yKTAs
X-Gm-Gg: ASbGncvfUszmlqFWOp/AoffDlY56z06Rfdc4GXOL9kK8LqXtS1N1dLzbPQYCrjDF9VB
	JFg0LIPgnIYKuExqvD8YJ3iEBcxiaB4Cb8fORTxfG30fDzUMebpPneHXeq4bJj0XkK4e5rBnveT
	R9S/cvU6HSWcH4sZIIdqFrzSEP/XdbfU/eqEf6ZwUlSWUVWpJmRBrcqspmOr/il34FQjLKzSfQp
	YhfhBZJ24ku7q2CqiDbSck8rk2v+gjt00PKYeEW3jYUO1dIBCeD2zuRsV93thkpatuepEB3l4tt
	3cWkSRNmWJJt+tOcOkBvXLxyFIMHUGO6Hy95o2a5UBinCAfja1ZsI3WOG8BdF2GDeQMVKYlpRZa
	dAT1p/hQ6fSLgkaj0MxJf1CeMvTrFUW+kDbWA9zWlb74hM7AaFwpD
X-Received: by 2002:a05:622a:511:b0:4b1:dd3:e399 with SMTP id d75a77b69052e-4b10dd3eb4fmr18484761cf.64.1755170771075;
        Thu, 14 Aug 2025 04:26:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtN6pLL60KSnafzV8jSq1qMtlj0g/UPMsEkwHvO3oPzQWBiZQja+mqbp1z25h70yy7INfOYg==
X-Received: by 2002:a05:622a:511:b0:4b1:dd3:e399 with SMTP id d75a77b69052e-4b10dd3eb4fmr18484171cf.64.1755170770552;
        Thu, 14 Aug 2025 04:26:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88caf0ebsm5610119e87.154.2025.08.14.04.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 04:26:09 -0700 (PDT)
Date: Thu, 14 Aug 2025 14:26:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Harrison Vanderbyl <harrison.vanderbyl@gmail.com>, marcus@nazgul.ch,
        kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
Message-ID: <25c5vwdgrfar6rz657nyijan7ozo5nzyyxb2w26wf5rvxftkvm@wy2fbsi77prj>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
 <tlkv63ccpnti367am47ymhaw3agjnyuonqstgtfaazhhptvgsp@q4wzuzdph323>
 <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
 <aa0ed59a-4eb6-4f7f-b430-4976ee9724d8@oss.qualcomm.com>
 <433e1189-e2b6-4299-9fa7-13e7994ec89c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <433e1189-e2b6-4299-9fa7-13e7994ec89c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX3ou9sm8QFzkr
 W/PGzyub+tFGUSqGGcUbcY8uvI/0SH0uSLQ8PELNQD16n1EamipJgAkRVVwDRfOWHGGcv+Ua/dE
 sdq2S7929otaWbICFA0zZgHBJp6d273r6Mc+NNc1/hiUTRJGTv1c+iZwV07MOJTs+Q1UGc5Gg6H
 siA2ns7y5cUChowryn6yW7ORDfVus4hYOvRyvrvC8HEIyXYHYRzw/+BZAGWWBEjq1dE4iqNYlJR
 d1sGXjV8awzqia1D8w+jKMsC8vSmMlbxfmhJv1DI1YMbiG2OvAbSdwtnuvjgl2LdVecxTSu9PHw
 22940fHrEel8yAPPt4vE/DhLqFcQg1VSGUX0JREZY3t7Lv7Vs7xXcBkwAgVe8LxqkGN5mOZckEO
 ZF6lat6Q
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689dc7d4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=4zz7r-QmOHHUCVnHuw4A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 1n46wlvtskoihLlpopgxOGlOzvpW0s7G
X-Proofpoint-GUID: 1n46wlvtskoihLlpopgxOGlOzvpW0s7G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_042613_248718_ACC44629 
X-CRM114-Status: GOOD (  17.70  )
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

On Thu, Aug 14, 2025 at 01:18:46PM +0200, Krzysztof Kozlowski wrote:
> On 14/08/2025 11:46, Konrad Dybcio wrote:
> > On 8/14/25 8:59 AM, Krzysztof Kozlowski wrote:
> >> On 14/08/2025 04:42, Bjorn Andersson wrote:
> >>> On Thu, Aug 14, 2025 at 10:59:04AM +1000, Harrison Vanderbyl wrote:
> >>>
> >>> Welcome to LKML, Harrison. Some small things to improve.
> >>>
> >>> Please extend the subject prefix to match other changes in the files of
> >>> each patch, e.g. this one would be "arm64: dts: qcom: x1e80100: ".
> >>>
> >>> "git log --oneline -- file" is your friend here.
> >>>
> >>>> Describe device tree entry for x1e80100 ufs device
> >>
> >> This is duplicating earlier patches:
> >> https://lore.kernel.org/all/szudb2teaacchrp4kn4swkqkoplgi5lbw7vbqtu5vhds4qat62@2tciswvelbmu/
> > 
> > (that submitter clearly expressed lack of interest in proceeding)
> > 
> 
> Sure, would be good though to reflect that - provide summary of previous
> discussions, changelogs or at least give links.

... Also keep authorship and SoB chain.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
