Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E47ECCA470
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRmIVWzhhvdkl2MWkfrC8adeHTQrNSu/pt3xOpAnwfw=; b=fi7Adi4PtoHnvc
	WGjj8xxdb7BB3hPeERJGN0S0eDnz+dQmKN/I8lns9xXj+YmZKUkSAEjBqK+5JgAgU2CFFFigruEy9
	xLGKBcD7qQGP7lX+ic22CJPzm+UrW9EFxrdsiDt9zZ6Ltqbt9XZc6wyezALWmJBdiCsW5QyQz71b/
	z+gNKo1VJbUXMnY5lEKmx4IvtZGiA5topRMhhDo0ofp3NnneIfaL9cHE1FIroSjjbFkIiBWoioP8D
	BNBHsfcq7xtQtFOF6bJTByHUVCRgzdb4yAcM6TMeeqE/qZjCHDbcEtYTna6znqDoFs3Z2nvnFNFuo
	01nyNWg0L9s2Nl7c0Mvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mfG-00000005c2j-0dLV;
	Thu, 09 Oct 2025 09:10:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mfD-00000005c1I-32Mo
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 09:10:21 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EK3g019192
	for <linux-phy@lists.infradead.org>; Thu, 9 Oct 2025 09:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1gLto9BCDROKFQE4dD3C8sxYVc2P8E3H62tB0Tiz5aY=; b=X4WQfNspdGcNJbZr
	DSXD7I7PL3YF1t3vwZYpAGpfgw+Mu1lbIA7nVDCrIFIm1E4oZLZ+1Iz4gfCl6qwR
	+XQQ2B+EuWj3+o4fEwHRRPKu3D5zusxKR8IeO3tyCmtcXBqKKNK4gWlxi1hNM5dl
	kD5fI0QVZxVlTpS6c8Oog0RfYtCkyqwImFsxGlnDBWumvZLtuPVJS4SItj1n//qL
	2ShnL2sun68DlebdMrRZLQw76EnwyaIhpKMdaVT5kQEeSfJpvJ2A26uEDxxi9iKp
	NMBmzzkvbl3d85tcfXYgNPsvk3nf6hOZrSqwgZ7ue+MConDu1ULj1wLbk8J0QUle
	RP9v5A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nt5m7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 09:10:18 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8572f379832so26391685a.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 02:10:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760001018; x=1760605818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gLto9BCDROKFQE4dD3C8sxYVc2P8E3H62tB0Tiz5aY=;
        b=jDfu3yBjL2GutXRGpE5bik6sKMVxEQ1l0ocafQW5DIzSHVUpDa+gUYdCUrWs4wXgtV
         GmBxt5CL/nFe3WMTU8xGFLh2Iycq/OFGVk8/Xs0LIL1r0uR1jOWAQ0z5NhOrYsdJBY4a
         7Kp8+gn+vbevwOJcgvtlA7LOLis8wyME4Kp5rWDv9mQ6kdHvXBOiA/Jl8Ttl+iyuQXlg
         nWdkKaXJwHzSQu5VImoCPSoXXaZjd2DdKiyKyBT/RZ+J9zDTf1BxzBfVj4A1gB4W4Aar
         zCKGO3/OqiL6QIZCiunpOaYz2ouyruVqpEZ6uGjXcjM45a+IcPVD5G5UW4OCer/17n1N
         +JUA==
X-Gm-Message-State: AOJu0YytqqOfVimUr/7g8w+ObCUMrgRjSgy8a+fMnp5puk2MhwHse8V1
	Bfnv3Gqlj4NfBXWcxFn5lpwM+5coMg4Yhl83uUSYqjQcyC4wF/kKg8djfQlA9KVoaQGsdrGfgzs
	fIL4DIwIOKxBD1AwlOawIO00lblcN48Y6BwX4aD6yNpJOrH4Iay96r1lIwtjQ4cr9Fz2u
X-Gm-Gg: ASbGncvIWva7HixffRjzE+QZhxXz7WtE1oc3k+UbocYACskWj4nRWEAEwhGIIkwthDC
	zgRqLQByc+YdvoxQU3aRStsod24pcTfuOGghto3J+upxAss/qwdp8+4YZkGO/tmZZb6weWxFsLi
	j/xliQp+Cx9+DHW9v/udFKIKvk25eZ8edgum/Dd15NjvkQMD8JfkGfvT4tAYETdUclFIB9DEqPv
	wuL7g1Hh/5gc4N0z04z87vtAZbzdJmZgu1AhGFolh/5XnxhTMQA66XO658UMoPl2zqCGESudMzn
	+gMIq95tjfL4wQ9f7ldNpcahsrEl0zlkR50H7j63VjGfcT7SJEag2G5UGT+Xf1by5dilLPgDJzo
	Dk07XSLHZA5t3mgn23ezMFd9lyV4=
X-Received: by 2002:a05:620a:7104:b0:835:e76b:ba25 with SMTP id af79cd13be357-88353e1a4e2mr585136285a.9.1760001018076;
        Thu, 09 Oct 2025 02:10:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6MZb6QOnbhBTE/91nRDArgRgqRLTEI+IVWFn1NxgCnvCATzVRomE0Pl/cQ96//aeLXvp+jA==
X-Received: by 2002:a05:620a:7104:b0:835:e76b:ba25 with SMTP id af79cd13be357-88353e1a4e2mr585131285a.9.1760001017473;
        Thu, 09 Oct 2025 02:10:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4c83adec08sm1153029466b.56.2025.10.09.02.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:10:16 -0700 (PDT)
Message-ID: <597ae997-37a4-447b-967c-8fd362098265@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 11:10:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add eDP reference clock voting support
To: Ritesh Kumar <quic_riteshk@quicinc.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
References: <20251009071127.26026-1-quic_riteshk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009071127.26026-1-quic_riteshk@quicinc.com>
X-Proofpoint-ORIG-GUID: fYLNX2qIoTm3qo5a5XCJFMJIu4XTdJs5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX5pTXDmQFrC9C
 GF+04QiWUrSfzJlpUhlSYiePJJn3leSOUJ/xBBQRqDBgaYGK/Lv0Urq07qJ0DTnvaZ1/WXyZM7G
 3weX5UTZ1Zg+JvakGgHwuZXH6aHnWO9NT5wgUdVnXApyK/yt2ZuUYBT6rv1GOmn9NLOKo6AEzjY
 8/jVt6Qi0TDIWgCsoFpmWj9wh0P1vZIHW+a7IkIkUZZzgpp0fesbJXgq8jRySBouClykiyZ6zXR
 aR9mlG2LXbth0VPpPBNQC9jyM1QMdTczTytqszy908hKh/+Viy+Z+icFeyAMPCTU/de7lNZ1riD
 6AO0yreadrhohiFfnDLvlTRgH3fb5BWoNYlUOphKoPPI8Bj0dcnBYNjg9ya0nUCCbK6qLICKYpJ
 Q5LYT+yVRrSY9B4e/ZZ+V0bjkc8qhw==
X-Proofpoint-GUID: fYLNX2qIoTm3qo5a5XCJFMJIu4XTdJs5
X-Authority-Analysis: v=2.4 cv=b6a/I9Gx c=1 sm=1 tr=0 ts=68e77bfa cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=rf8yBW790zp7CXIHNmUA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_021019_885253_18F1E06E 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
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

On 10/9/25 9:11 AM, Ritesh Kumar wrote:
> eDP reference clock is required to be enabled before eDP PHY
> initialization. On lemans chipset it is being voted from
> qmp ufs phy driver.

?????????????????????????????????????????????????????????

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
