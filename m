Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A5D3CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYYbkDl//kCf7cMVqndYiLeUAIZFDnE2HE7Pvh5AEMU=; b=kJrnnx+cx/3BYM
	8t17hMpepj5ckn1CL1Ocj6QvE4EV547YUkrvaiObMa/QwZQqDzwqVMeFvK/PUJE5jONHzTaq24mkH
	Te/b++QcmDBmo3ktuHQbU3Mu4p21fpyfSM6+XxyIwal+7WnPgGTuwmlRAp295AffvSSGIV6bZsBM4
	Ik3B8w1W6eHmBNAsybDZQot5R8xq1D1We3m4Bq4sVii/RVVK0T/mD4gilLoZoRkg1y5+ktB6o0lqp
	P24vm7AizVRsPWZ/TyXzkyhPe/gyiJo2LionKE5HTkpiJOtY5e3feYf0X2BP2j/nd2xsb117ALKBV
	68rdfzY4HFRm2Pj+CJJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIUt-00000007gSC-1YYe;
	Wed, 10 Jun 2026 12:57:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIUq-00000007gRO-15h9
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:57:29 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACCGoi1607877
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 12:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uOrsbaLMHqJWodEJznlZ6hZw
	bpwVVgA011Bf8C5Tqrc=; b=jE7mQZsbQzcbu8dgTrMBDso/VAZe9hU8xLajFkLE
	OPRJ21TbJhUpKrF8UcU4pHbsB6OW+ugaSHUMYMDqbUyOzRdR/Zimd+LI/sWOSgbr
	3Ngm5RJ8x3m9b2XtmBneIsocS4ZgSGOwWU07hkch7AlYQW11MHdLQnCEsYnuRb/p
	+0lxB2fzJ/Lw7n3nGqkPWe+u3MFp+adR0pxo3CEp9geWvvU0NVuzuG/d+T1Cdv3R
	bCUZT/lxRhvOp75gZVIybzvD+MAT2xDFoj5m0fY28/Bu/bew9N4J4v9WfNVdpM+X
	CqJ7DrTtjvhYgjLnvquxvNMrVT5DjdX0TU1yXv5iwefcNw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq10a9uth-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 12:57:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5174a23afcbso84220141cf.3
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 05:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781096246; x=1781701046; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uOrsbaLMHqJWodEJznlZ6hZwbpwVVgA011Bf8C5Tqrc=;
        b=fIWykTjt5VQltTcE/1yxTOkYu29+vVE1iiQDE3ZCjzBpIMBzaaF3JhZ9WzZVVATZQf
         w+bpbYFsSJRqjZMI2ghkG7/Gl6MTuRoGf6q62kTdHZfE0n4leTgku3GOUf0o2GhWKMjf
         FTzXoUPa0KxGwyxZ/+mYjL5dvuSbhWJWt+OK4H7KQLnAyBs/wtDa0xVRmz94bmSD7hPn
         wF6vzg0A1Vpd67ZiQW2g5eoZ/taZj13j7JFTkoxfZaix7FYIru0ImbXLTL482R+jkGq+
         nm4jZZ1uMHCzionEo/XF9w32ojiyFkY5NSwClz9BAbbjB9ugLgGvdGlmzSf27uhw/CIy
         dK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781096246; x=1781701046;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uOrsbaLMHqJWodEJznlZ6hZwbpwVVgA011Bf8C5Tqrc=;
        b=r5Yhz1B0vOtWTRjm1dft/ztZBVVcWEu/w8XAg5vrPu2kR4NSl6QBZU8tjnfW/dGghL
         q3vmYNJY/p6/sc59piSZurSr6dMd2QWEVgfcJCjvBmsr6absGZND4Up0vRP+yGLY9uqe
         OyPgXoFABPb/i30V+LQ4wQkgUvLZl4Gs3Q1DYDDyZlQU+3dpCGVcSmuQcQD4y3DbpPnN
         /wKnwA1AB2sC5kPztT3ngwcNujw8Btliz3QUYwtMri/CNnfoLE+YzwUwofsoNoR4Ctjm
         Z6XB0Oxcfw4vGmRTwXKcjLZpLqS1yMqd9r9fkejLAgB9CRt9FkKjwNHtmonh0JTzK/Lp
         5nQQ==
X-Forwarded-Encrypted: i=1; AFNElJ9wDnKSPqf7EHAeuC1DmfcMTPoFP7C/BjNkykGXlCAreWyA/SYZazkUptCCFvX5Qfttc8jaP9gPrtM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4CASKR+a0MSutS92seMN2NIXy7KAN5csy3qSvEN5WlAtxzDn3
	1ZNUky7ONs7xYGQRuNCiX9Q6z4MTAe/QKB3YFt3ycCwod3Bq+WABwprdS4rK6FZrVYtGLSo6HcA
	mU1HawGC+raBnHH2OfCw3PJRXP2MbGjo1OMrO/YTCZxFM9gGeVzCpqZewh/idCt6+7+NX
X-Gm-Gg: Acq92OGJ/8XgAxc8BlDq5U/Yt0wsrXzdC1N7Uty+ZDPm8i9SmUIw6ADEjWFYSK1DITX
	q2Qo5JYgeTcY0gGrHpPHg5SEIlzObHD+5XCODLfOkJ6n4koHhdJWsk02c6/BsDPVgKCSzhbDdMn
	ppFHVLs8h22n1d7o6AL+wVbYIJcKMzN05lMTmoGXKktxW5ydaIesNqHQxpcl+QOK+wiPA8Pqj7q
	YDvYbE3GrY3/WQFBHVRteTdSiRvuJr7fdmvzffeAWetZa97XG1JWmAWEwHD66WdHuas3eDBipnd
	OLeYnaYFJJOag49ghdEhUi4CNdcfASJVwu6ODNHIr3oCJIMxUttMREpCRBvQgqkH/CybiqbwCj7
	GN1rmHCblcOUNoL08BmEFeQRaxOnz1fv6uUDp2TNBJYk=
X-Received: by 2002:a05:622a:1b10:b0:517:9206:10fd with SMTP id d75a77b69052e-51795aebe0dmr347346791cf.16.1781096245704;
        Wed, 10 Jun 2026 05:57:25 -0700 (PDT)
X-Received: by 2002:a05:622a:1b10:b0:517:9206:10fd with SMTP id d75a77b69052e-51795aebe0dmr347346101cf.16.1781096245170;
        Wed, 10 Jun 2026 05:57:25 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.7.18])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2f2710sm56210283f8f.14.2026.06.10.05.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 05:57:24 -0700 (PDT)
Date: Wed, 10 Jun 2026 15:57:22 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/4] phy: qcom-qusb2: Fix SM6115 init sequence
Message-ID: <r3gwpggirf76rlvk3eulctsvw54ae5a3znbi5czwacd5ftwajp@tkv7axgtle3x>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GoFyPE1C c=1 sm=1 tr=0 ts=6a295f36 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=BSZ3G9h0/EKbgBlQZBbU/w==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8 a=SC11PsEEbJH5d9KfBicA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-ORIG-GUID: Fz4CVKMsQWQ9fdtzw1VS6kWusC-yHWAl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyMyBTYWx0ZWRfXw/b0oR6FkbzR
 RmuAoNGqs/pZACdlJMGUHKblusU85REILQ9bvICK+1j1AbcHPy7Xca41gHz3zhR7ffFL7xR+peJ
 +e3ITcym2o30KWDfo+lJihz6LivuijzMkVtfpslY+XsZOaoE/CNyjrzxwoVXyhUczrDahx8c8gd
 wV/C5tQ0+FoEkGxaW2YqYegfD9uSVa/O29Plc6iQmNa1cPhV0VxiovboPE1K7qCyoQaj+/vTpiB
 fWLNjJTClt7zn6BFt46frrz1hRgkAszWHbDnzD/0xEU2UfAO/dk4Z8ZZf3dOHncpx6p6XZicm/E
 iihROIdLNUdAYeHY78nnQe4zH1eb8z+09TRGrVYfv5KnLlUGSR7ANxYIte4zPhzZUKwyxsNlC/M
 gsLmnDk0ex0tYgsIlDfRIZi9c0lj264caYz3zXGeR6+Vji/ck+bNHAuL8RRtgzhCqwVCTr/TY9O
 HY5uGZnu3IJZctrMDhw==
X-Proofpoint-GUID: Fz4CVKMsQWQ9fdtzw1VS6kWusC-yHWAl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_055728_425821_DDB445C0 
X-CRM114-Status: GOOD (  11.66  )
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

On 26-06-10 14:04:15, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> I don't know where the existing one came from, but it's apparently
> wrong, according to both docs and a downstream DT [1]. Fix it up.
> 
> The updated values also happen to match SM6125, which will allow us
> to fix that platform too.
> 
> [1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#145
> Fixes: 7756f1d6369e ("phy: qcom-qusb2: Add configuration for SM4250 and SM6115")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
