Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E4FAC282EC
	for <linux-phy@archiver.kernel.org>; Sat,  8 Mar 2025 14:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTSo72q9zsEv9i033ih8wYt3MiqfA5YRQzWVtagNghw=; b=rdYO0OXoQ+0rBF
	SLTQGM2zoNRgubCl2tcqINJu+qd8KPT+uEvf7aB5XRQ19yx9qr94p59HDXWsNMT/NFNTZ8XDK8/cs
	CnPceUu2XhhYFrlcGeXunTt+3Y65rG6u967cEIs/l3QDJfW/C+XKgnzjd+EqwIGum+TW315QDFfQk
	RJCcwAHR4dhbPkpDOJfwF5YLXXID0fGGlDPUUyDZqeK5XlANRD+V+FzGYVn0+JR0h55t2lSnWoD7C
	NEBRUvhmFSguoIpH+f0TyJcG466h705NW/QtbpOBZTRzvZ/tir0J6DqW24LzOmf92NLuoVey6RLTX
	3l1vwlS8N89M/q9AXS5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqv75-0000000Gj4D-0cjT;
	Sat, 08 Mar 2025 14:25:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqv72-0000000Gj3i-01UE
	for linux-phy@lists.infradead.org;
	Sat, 08 Mar 2025 14:25:13 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528DjNmE013314
	for <linux-phy@lists.infradead.org>; Sat, 8 Mar 2025 14:25:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ajkDcMXkTChhLB9nQXqXX4w1XlD/zn/bmx5ISWyGiDE=; b=XdlAcI8mJvT5ZzSC
	BYdYS14qi2YMrDMG0SARJc7twAMD4ylW/xAiRf7VdzLeQ0p2B88dgMBNI3Vd9/lB
	yg5bLTeegaMxv8TOxoKsro/HOMyWUoyS4XxoEWam/FQftEmPaY8gg+TpfSGOCd41
	5agraq4czLhmGRvhKscIk7UyEvzH1gk2B+vpDRV31EbIc+BIR50KmaoqruxUT+LY
	LueVsidQh+p4yB6nHt5hsOnSE2AGC9vMWSo2R7P+0YGy2exaMsVMwEaqrIepPj5F
	wUgZQnRQ2/y2AM5ss+YTNtGIe4uENpkPfwtM6bdha7fBjl3T7QTn8eZ/p/5Bbl94
	vYh30w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyu8nsn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 14:25:10 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-474f467e613so7926771cf.2
        for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 06:25:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741443910; x=1742048710;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ajkDcMXkTChhLB9nQXqXX4w1XlD/zn/bmx5ISWyGiDE=;
        b=FDFaZ1CsE2gzL3nw1KC63dJhIldy7G3k8Kf9EwWFn0cphI1riSErJqYjtQmSejLmFg
         oEm5N5RNfchIYvXGgwoApA4CpuKmCvfrlQo9UeQOZ48C5+zCnk95eO15f+aTApAuOiA4
         21u0nky4e1aKpThtdS5BngwX5KAa4tcTR6Fpvb9uSy8oUeEZqNemMI4EzRpJnvh7EKbg
         HSQY7PxA8RIJakAyZq3E95imDEzT+OyKBbWKTr6eZYe/9cmMu1wucN4uKTKsLMyoshcP
         uyKmbDpPtrx9QFom/scr3zkZAb9dRmIf4Ll6iYGvPYG8496yJRph0lWBt9eIYpBR1CCc
         OJHg==
X-Forwarded-Encrypted: i=1; AJvYcCUm6RU7dl023Rs8yqSkPrCeDtnUOn/3ckIXFci6EevzfsY6iUOJkX0x1mnIGN1+RlHPr8ivyiLNsjw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0XfBM1vIS6s2T7ukawfkxwzR4S2yi1ybrv53eoIYM+y5M0xSa
	T73/yXgm6W9qstlFGLQccsOIxtD2yyQYIu9uaCbzOBlm+uXzmUZXW4LwHN/IJquTFMychxubcqE
	4AcpeUAPdI5dwN2V2lw1tpZCmC1uzse++bVRZIpRUV0eTNwLijPC36s54SymcCt7t
X-Gm-Gg: ASbGnctZnKhtqvFNpcA0l2X6UQuw9kV4nh8mJIyxhA56cd22qiULCMoHSqknRqCl0HF
	baHaXjmeFFsHkMDQQcCxKFcI0PIZ4GhnNSimBA/jF9RiO6MCcP4i4NmG4etpdLeC3/o5rqDQK5T
	h3dqaWuQqMQuXxK8QgvrCP1V+cmvpQMVWVTxbc2T3NXDQZ8vSGWcHBy3vdClkpMqQypRAH6Pe38
	THe4bYylqBsiyX7iSNVjbK2cjOissqhm5/NXu+iNr53N1LdincSGamla4XrG+BFfNZXy5llzdTW
	HEtVvcesAdFFXomhIfUasuEVi3zsIGIL6YbfXgO0IbD2vFQ1hNP49SlhFTRK/9a0Eyq6xQ==
X-Received: by 2002:a05:6214:d6b:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e908d8568cmr15818356d6.6.1741443909945;
        Sat, 08 Mar 2025 06:25:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGf5Bpdb+EwGJ+DUwof9ezxDFy4IdGxQr6SUgAcI78hiBLBYecPa0sQ6yprSMZOTAU4uNWqGA==
X-Received: by 2002:a05:6214:d6b:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e908d8568cmr15818006d6.6.1741443909472;
        Sat, 08 Mar 2025 06:25:09 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23973b09asm438894266b.119.2025.03.08.06.25.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:25:08 -0800 (PST)
Message-ID: <e2d84147-c061-4f12-a44b-f60919625f77@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:25:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support
 for IPQ5018
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, kw@linux.com, lpieralisi@kernel.org,
        manivannan.sadhasivam@linaro.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com,
        vkoul@kernel.org, quic_srichara@quicinc.com
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67cc5346 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=Bxonh79IiWxE7T-ZNUwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5YIxcDrmYAXFraC-U5gv38EmKJm1wCa3
X-Proofpoint-GUID: 5YIxcDrmYAXFraC-U5gv38EmKJm1wCa3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=878
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_062512_176101_2DCEAE63 
X-CRM114-Status: GOOD (  10.04  )
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

On 5.03.2025 9:39 PM, Dmitry Baryshkov wrote:
> On Wed, Mar 05, 2025 at 05:41:27PM +0400, George Moussalem wrote:
>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>
>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Something is wrong here. There can't be two authors for the patch.

It may be that Nitheesh was the original author, whose patch was then
picked up by Sricharan for sending (no additional notices of
co-development), but George later did the same, forgetting to remove
Sricharan from the chain.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
