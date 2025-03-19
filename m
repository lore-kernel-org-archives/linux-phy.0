Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03BADC35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 14:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvlQbMTkwXbhqOFHp4f16OGPHnj7BRgJrL2eqjmvPhc=; b=gYbcluTgkdaIMI
	WqbWLEmLjXmctrgMIPi1dWqIh+uWNviT3dmH0XSXCI1BshZa4xBwEpGzYIC1+EWOxwUOxwqQQ/XAw
	ZIFerDvyk66idoyr+smFt+LwNOI/lvTIPHdYArfIKRKoE9lWO6h1YLZpW7e/81YNL4mYRZxTF2K2L
	kxR0Mo6ljAo5cft4PJv0MNRI0gm8sRF17xuw6Chjk/EqJbCbv7ZNbqn2Lbbvd6GgLBXn8fJjnSwf/
	UHK1nWG0mCoDd+Y0vsKmNrPNx31pI+CLw29qrxphwWmCyKCpmoHlq7dtVzSjCXJ2LE1OqHaXokyHG
	8++nnWBY/qCo2BIPaXmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuuSQ-00000009DWK-2PyE;
	Wed, 19 Mar 2025 14:31:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuuPv-00000009D6X-3y2q
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 14:29:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52JD7kqd020427
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 14:29:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l63o9PxYJ7IYk7anlY9p2pUAHNfwefM8iz2O0O0wiAQ=; b=jidskT9GjqqBWQzR
	+Lzssy5tHVmKp3lR/+6CvYSfjam87BvNUP9aw23Fr5zExKzdkBG00y0noPFOyC+m
	og+gmXYakVUHreNTIWlsk0qXV1j+LqHVqXy6tqC4kn//H5KT0K3pfKPBq8Qa5Myu
	udzmvrHvnAJOgRk3Xbyt3JB7X+cre5UzyLi2biuDjyYhtk60qs8RvGJZ1cpWqboH
	0hZyccZ1QMT/UfJ0yM06mNiAdbBRR8KktbvQrOfa4l0sJbyuZJ5/Lm7aOHJN6Rlo
	EFlKh8KR7QRxIrEfdBHJDnw/zDcZ8smU2Z36n8pMCmS1+uRRDIFyBwQzY3qM4jnp
	vlo32Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdmwtxnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 14:29:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c552802e9fso115867585a.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 07:29:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742394548; x=1742999348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l63o9PxYJ7IYk7anlY9p2pUAHNfwefM8iz2O0O0wiAQ=;
        b=tPYqUtQEMb3N2z4QpMFq3JAfdswy9C5QmY3ba3ceCfcgtbo0GmG6Wm7eHxNn3LEkWN
         XvSrQD4v5zw9Pvi00NdSLvecimqUPzkK/CCxJ+o1jXWUsQDzwPhfNs/KREsH9n4v0Qb6
         w8lPBtur2svZiaCftW2Xo7sBtkWXo2jwj99UkKAu0GiKiYhwzytiRA5vi/wR0cOcb3Sq
         zzI/AyH2y/Nl2sOgUrgBEmgHRDO6OW9nwWCiSmjJeQWtZDNc5EeTJ4Lxw7+VqO+IZ4vH
         ftzWNZ5uPFzV5XhP1uF6l34Dsafpe5ko1PkLkngPoSiwfftqP538/6NE3YCamcHHbqYa
         0hvA==
X-Forwarded-Encrypted: i=1; AJvYcCU9gEow7ldEm/NMJhcX8GKftIldUABhah+M+xsUcsiSWfS+35JjVdR3eLqApKIfZzTLWNLPCE0Ez2s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw179sG5VcROAgSewlaQ6pq7mclg+14xwsY7xGTWqvQQCmJSQIU
	Cay4ex+kHMC6XZr7SxTV6wzvwJjSc0H4HAd/vDliHY69uIzPlz0QYG8nVTKO7s0y2QW1NnHRyEn
	99C6pu21dpFmTxk9QqP2wzG1Z75uEi6njmmhOEYPh9i79QIugMto7I0QY0AEL7kN0
X-Gm-Gg: ASbGncvCJ2wRUfRwyBLAKxOikDsMS2pvv5mpLGZs1xC0XWYt5xlhSX+NL4n6vaVmS9E
	qAyOGpTc6c4f0OLlKWh2dbRv5byaG72XBcBDEcZM66dgHDmuTdm1igaVVuOusQaBKAt2OPVfs0j
	7s+Gvd2nayLKBiwOhuZmE8hF9KUV80ckAdeHEifHX+B4h/VBTpKGu8cMniJZENWiDyYetxn4FF3
	H6k7k2iDsKzKgowKz8xy0E+pncQOcFBKSdFUD4BVDqDbCMt/tWmdH0oQg/mGFxJ/pYR46fBmfWO
	nJLP/wBkQoo5XsPcAF3D15FMWL/IQKyZDYUI0IXZdJb6CcRYgRJfvOz7obmL4rlYNlZcDQ==
X-Received: by 2002:a05:620a:2a16:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c5a845daaamr149573585a.10.1742394548485;
        Wed, 19 Mar 2025 07:29:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVewRW74gtZU1oD2rXTbBPlZetJJMVDf3b6nZ6/HNqN2o/B9AHtzPooKP8wbpbPMg5EGv5VQ==
X-Received: by 2002:a05:620a:2a16:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c5a845daaamr149570785a.10.1742394548002;
        Wed, 19 Mar 2025 07:29:08 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac31484bf27sm1002942766b.79.2025.03.19.07.29.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 07:29:07 -0700 (PDT)
Message-ID: <a710034f-1c49-4d9a-b39b-d08f6c7c947a@oss.qualcomm.com>
Date: Wed, 19 Mar 2025 15:29:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
To: bjorn.andersson@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Vdt7LJSafziZ2jJsq3-WdCTtHP6FRPDs
X-Authority-Analysis: v=2.4 cv=ReKQC0tv c=1 sm=1 tr=0 ts=67dad4b5 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=N1jLX2bt0puczyyA89AA:9 a=QEXdDO2ut3YA:10
 a=0t72Ts4ygAavhsGdmO0z:22 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Vdt7LJSafziZ2jJsq3-WdCTtHP6FRPDs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_05,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 mlxlogscore=737 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_072912_109699_D9D57F9B 
X-CRM114-Status: GOOD (  11.43  )
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

On 3/19/25 4:22 AM, Bjorn Andersson via B4 Relay wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> The fingerprint sensor, hidden in the power button, is connected to one
> of the USB multiport ports; while the other port is unused.
> 
> Describe the USB controller, the four phys and the repeater involved to
> make the fingerprint sensor operational.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
