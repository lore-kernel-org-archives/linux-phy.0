Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AEF0C369D1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 15:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zed7rAugXq6CtilNBB/wIPXh2QH7Evq5oaIUjDmvQtk=; b=o41yfGcyrnfGNp
	6a2j1aywvSD74NnKO5k8x8uD43W52VQv7TDLcbVnH/nOZNp2srZJTpTcoaRdiByKlccw0wQts3PNB
	xjzIC1m9o8HZLJ6LsqttHpUs03xKKT9x5mgwbmnR7aLXExMyGK1Jhzdg9daoszjYnHZamjv75Q3Yz
	Xdr5BSMgxv2cyQz55albcsLT+MtrWLdvH2iR1BZ3/nnXueVVIfTcnjZO+bPCxrjXkh8+Pjlert5dp
	vDmnnP2oYGA7WrNXbOcC3cVGHv6iTB9uluMw8860M5n6jKG1L6gnA/2Q5GTZdFYymQCZoLPY1M/5p
	DbjUUI8k+USIgyyjhx6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7boq-0000000Avtt-02eu;
	Wed, 23 Apr 2025 15:15:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aWD-0000000AfvX-1bh4
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:52:06 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NApLEV011954
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xkJf7kOWyPXE/bAYrd0wNfurykT7yQdN5XAbkQzQbAM=; b=I7yFIYaRltaS8kba
	rOOsTY8k9by6Ol4ONAO4ulcraS94HwCoOHibcZi+u2y1+RgDu15tNcWY9qWPOtgL
	mmftD44RzR7+KquS39u6NqtItkeEY8Fo8UGRujXjYkvlIgjUW3FkF3cmVJMNv5d5
	6uoiGH4/gE4IdU1ejhBdvTTLwT2gg8a1sQ16uq2D4Mbb60UOweGfzrltX5y0ODyI
	vH71BzVnj21YzCaawcVXm3P3J9xuUZIY9LcPEizXnqaBJbi/QJgBUdyYRGevq03S
	HHTIqmft6gzee6h/CTtOUToosGmZV41CPtPLykb3nSjf70r6HMAkaH7YJy/cgbKJ
	irhe1A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1jayq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:52:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5d608e703so1147694385a.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745416322; x=1746021122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xkJf7kOWyPXE/bAYrd0wNfurykT7yQdN5XAbkQzQbAM=;
        b=MTfeag1e5fQHTlwN4v+XIlkgqBV1nwD2LspO8GtNVYFAmkFBIglySpNgKeLgVAbhZd
         3JYLslAVDVMyc4YB3ETT2x0dxUzO1x5+/J5cYixsK8+/8S2AILQiGwKWsg9vq4Cu1mi+
         OZslNBjzYxuKCaWmaoj3VaHqJkVPLN/QwhPx1puK2EbOlISWgtOkJCTRTzfWOvjsOcPX
         nwY6KmkcXKnzNmng9HlalgelnziLjHQCIUEfm03Dm2lz8uB0wgbZ9L+/oy1KDVsVUE0M
         s76mv9CvqESMcI5kRjuhPOJcmyCPVs6DntHdeXidqoi30F6GswoZW7vZu+gNRSCsqxU6
         RsVA==
X-Forwarded-Encrypted: i=1; AJvYcCXSVx5aOGyqZRY5+tPOt6rOFa0As0/pnBt9v5pqW5tDiXSeU5M0HGPW0W3y7V/bfQ0TP+q3fYiDXUo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6yDUFCtCDYf+YrVfXmV/r1+xrODcu+lWT8+ZMSZXIWon8axdg
	gRr5kEDw/0eH3wIIRZbh2QfbgSzY5SDtbQcuVXEci7Jk6c3cDS5mPbVmDsr8aB7p8lxw5FqIHku
	jZPC/L07nYe/5lcT2+pkeEyx+vKBt7nBa2OPd/bVWIW+MGiI2calqf1fcftdIhzIe
X-Gm-Gg: ASbGncsD/DNfaF+Gs53W9HI3xBljYFUsnebIiPacs621+rv3Y4q3bg/Iq0b+FB7RZiA
	cCarP8s48EyD1OpPK91EFs26IqqsS4mDIS8Oh1ZmwWDZfvdgpXNXOSgY6bhiTuDfjQShYdDto3D
	f5N6tWHGJYFs+4oP39ZyyGeuX6W8OmxYf39Ua5O91ot5revdlmCyYnhvEERFUzwKyXs5zCqPJRc
	PqtruofwlnTy9AnC/6mjAl8U0uddiDS57dxke/kHDyK/28JLcbaf6zCHa6nb48KrMKyD2pD47Rn
	UrBkk7bpfRbwQm/sd6LW8eOx55g02nFh4NafMggOeIQZtiu+HdmX46uQj0/PYPUMeJWekx+W3Dh
	/56nqfQIA1l9W7QyRzX3j4/dJcuiXL+G7OnrqzATGfbkhbVYgVVVA/xHsT1IH56u8
X-Received: by 2002:a05:620a:248d:b0:7c5:43c2:a8f4 with SMTP id af79cd13be357-7c927f6b2b9mr3017558285a.12.1745416322126;
        Wed, 23 Apr 2025 06:52:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrD8GKWDiajlXtRlhCqQokXaChDX0L7FWqOCEuiK4S46NfWfbpwHzSXWRpOSxjfqEHecTieg==
X-Received: by 2002:a05:620a:248d:b0:7c5:43c2:a8f4 with SMTP id af79cd13be357-7c927f6b2b9mr3017555185a.12.1745416321797;
        Wed, 23 Apr 2025 06:52:01 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ce:6a0b:adf3:3f29:4dd7:6598? (2001-14bb-ce-6a0b-adf3-3f29-4dd7-6598.rev.dnainternet.fi. [2001:14bb:ce:6a0b:adf3:3f29:4dd7:6598])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310907a8416sm18673731fa.63.2025.04.23.06.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:52:01 -0700 (PDT)
Message-ID: <7ff824d9-5d86-4d63-a8da-5d94cc489ee6@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 16:51:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
 <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
 <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
 <1adda022-b5d2-43e0-8cf1-de8e72544689@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <1adda022-b5d2-43e0-8cf1-de8e72544689@oss.qualcomm.com>
X-Proofpoint-GUID: -UkTbU6wjkqzsNDu6s1dgOB9PPRz-qo0
X-Proofpoint-ORIG-GUID: -UkTbU6wjkqzsNDu6s1dgOB9PPRz-qo0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NyBTYWx0ZWRfX6Hp1uth9U4rV jABHYgD55bAZerkV2CG3hI5smrNpXSt9ggp3Czi6qkHPYJtZZZlo4DHI/TzNnwfuBmbyJKFcZUV WMWK5HxQUaEkBB8vA8acHkiobduGhJTKqEp4qHGVWCVxAzs7EKke7ck+8E1pikQybsge1TNqJnx
 Ls2Px06hfYh3c9HrS3IFiEdHgTEdpZW0ZnX82F6JlVzyVsUsYM1TzK2quWsb9uC2m5+uEYnwqsW S0Xn6FdZmSdGouJuhQRKBkBAuQG5T2KE7m+zyh5XXuu//K/oqg2fX/t6xTnxdF9mA+Rkp8T8G1h WUMarK2KaNLeeXUYR8O2K5wmUzQW6mqbRtKXTyuheCU2P1DbsnsWnYpk8F56FYGohq0PLE45Wav
 pZ5mxjgLZgJVqlvMfBZhGLX1yhkGSsK185bz3JiEpXui0oY+F6r6/5FscgX7CjzbswADKBDm
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=6808f083 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=m2W-dpWsrdQmR1pkfZIA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=999 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_065205_518597_8FD71DE3 
X-CRM114-Status: GOOD (  12.93  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 23/04/2025 16:47, Konrad Dybcio wrote:
> On 4/11/25 1:08 PM, Dmitry Baryshkov wrote:
>> On Fri, 11 Apr 2025 at 13:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>>>
>>>
>>>
>>> On 4/11/2025 1:38 AM, Dmitry Baryshkov wrote:
>>>> On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
>>>>> Refactor the UFS PHY reset handling to parse the reset logic only once
>>>>> during probe, instead of every resume.
>>>>>
>>>>> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
>>>>> qmp_ufs_probe to avoid unnecessary parsing during resume.
>>>>
>>>> How did you solve the circular dependency issue being noted below?
>>>
>>> Hi Dmitry,
>>> As part of my patch, I moved the parsing logic from qmp_phy_power_on to
>>> qmp_ufs_probe to avoid unnecessary parsing during resume. I'm uncertain
>>> about the circular dependency issue and whether if it still exists.
>>
>> It surely does. The reset controller is registered in the beginning of
>> ufs_qcom_init() and the PHY is acquired only a few lines below. It
>> creates a very small window for PHY driver to probe.
>> Which means, NAK, this patch doesn't look acceptable.
> 
> devlink? EPROBE_DEFER? is this really an issue?

Yes, it is. No, devlink won't help.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
