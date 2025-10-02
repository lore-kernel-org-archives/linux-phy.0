Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FB50CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 09:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWyY3TfAQKbY/8DGldh6Pd/a5yw3enh92P2L2li2HC8=; b=27i8t++xha4+NT
	N2mpcd8i640ZVqaCaFyWt+tbMWBHT/BpCDdQbLO/vMWA11KOL1qrzL1nmLXOtWWFS2dYAyKWIBnU7
	diEOwVLoKWpkhaYNsPz6dx/vE0Qbc45y9g8VZAdm8LKGSx2imBoqvCiXCMGnjpIIAiFI/XuUt9hO+
	EzvtNYZsTQc/Z2oGyElA096YCOMJBHog8mX+GttUxfzHc3opyfxpu1chwaKB0M7uuYWPp8jDHazFR
	XgVHs0ZXGR3/50BDAT4YDileG96sVZtTjQ4nFQGFwgRqdVUfkxtyuJgmazfHTmxrkuAGM+tyE2XGb
	nWn/m6o/lQqfAIR8s9pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4Fw8-0000000ABGm-0Gkj;
	Thu, 02 Oct 2025 09:49:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4Fw4-0000000ABFh-2okQ
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 09:49:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59292259031853
	for <linux-phy@lists.infradead.org>; Thu, 2 Oct 2025 09:49:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Img6lQjVNXbCTpDlJrOjPGysxpr6pRA1/ab4mNuUpA4=; b=Fhk3E+qTmHWIlblf
	L4ACNzgDuKRMXG6WHcZtGjMwrGv7gd5/1vFj9oGuwZrgx8t+OTHNdJ1LrYl0hMRA
	+jvULuHdc8KMXY0nZ+1UjtqTRkVnGOpLjI9K9MMzS96p0Guva+XB8AjZlDa6TyEw
	ASzsAqCPfQbdSwcH0+2iv+MeQf3hIaY08+pEO4hBicuKyux0lL4ezYGnEBHrjNid
	TqIHHAwwPV4XzIgnJnlyEwPxz9G/j/QqMw0YdeLba+ypFP9TwMNvPMZSHM+G9Fv6
	XZO6uiyWGilIovJ+2WCQw6WUnLJyEF14o3pfS3yvKez8+0zr82RwYRTG74k7hbFM
	SY8TiQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr7dyw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 09:49:15 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4deb3bf6b2dso1226301cf.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 02:49:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759398554; x=1760003354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Img6lQjVNXbCTpDlJrOjPGysxpr6pRA1/ab4mNuUpA4=;
        b=v1+56zWSGrpIDBfhXer9sKpqW9W9axAFcKXN0NpliaW1H0/Y4iPpD86rGQXwpS56NJ
         fWC/I1i99Uh/oEVSkNZxPHuitJOYouyqY8/n11+lZFUbaCmD5TIMA68kEkNoo7VshIfg
         2m/r68vZHlJI1wlO9BODNTd8WDdMCfPNmJX1wzeoKFASal9cqwbE2P36EPsD+VdlOGlM
         tBRqH06uhORPydmW57pemTx0dj04ntOpZAf9u2t2mbzFYwxnwSjvpWkv3VAEH9TqQpxL
         Nk4RkxWxSSxAOBulSjkupnIkHwwcf2++T5D8UWyo7lHKNZZ+xlEkXBACEyybsd6rUgTL
         khHg==
X-Forwarded-Encrypted: i=1; AJvYcCXElo6JyHmWI4g6wIDHfLA33kNC/c/+g1Wfr3C7Z5dfCCWYtfTSlPW3s1hzJiZk/Zx8+R8Sm+GeHMU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxij59aAKVUFixoQXSYxAr2NXHoB4whB2KsWGUEpDlsJMbMayyx
	NFj3A45epBSFXXJocVVw1yvhQFdQ3ennVpSqY8tedP2mwy9yn2wZHGU2jE8g/AM3bEyis3DZhNZ
	uCPWxtk7zWuaHimaQoba/JTZP67cydr6hmP6MNJ1wjE9M5rZp0fHh1fWNXtms6l+Vzqfo
X-Gm-Gg: ASbGncsMFNTf1+bXNpCGreAPm0Gg/51LiiVRqTRJEmFxbGFvvVc/SH0y3oldNnylzBP
	ApPLteedYZjKfLGrT3z8J2NCRgcOKx8jz83emu+BXKm2BF2VaJjtC+AbJMJGJ1m0p99g2p3L+O6
	J903jboQtsbs2e492w2VfCm9P+FCLunktu85nzQ7CFykNj4EeTgjq9HGwSFqNEIovntHCxkechx
	B1U7uFtE8Qe22iSUlGLGr4mmEsWyTcvB5JZIzNCc8ej3avIxQnB2HReIMVTOfnIiakd+4YaGrHL
	LGzZFzusTFRiaEps6ZfJ5zl9N16FtFOWaxSzL3qlKtsSQ4k224eRL5/URyyj4pB3ki5LXPhhwro
	2KjnHAk/ROkyv3IQTtAakcPxDrew=
X-Received: by 2002:ac8:5d86:0:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e41db86a34mr53924221cf.8.1759398554106;
        Thu, 02 Oct 2025 02:49:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYvtszzD9G5JK83jzL3QuBgXEB9+BD1IDAQm/hRuOJNgt4Zwb2AsOe4RoybiEw3lrFnoG0gA==
X-Received: by 2002:ac8:5d86:0:b0:4d9:5ce:374e with SMTP id d75a77b69052e-4e41db86a34mr53923991cf.8.1759398553536;
        Thu, 02 Oct 2025 02:49:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3abcd7sm1524345a12.2.2025.10.02.02.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:49:12 -0700 (PDT)
Message-ID: <3e9b1488-7c87-4e2d-8500-30cae30e828c@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 11:49:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
X-Proofpoint-GUID: caILllvrXKCP949ZbgOYAa88qI6IukY-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX7jP+WrqGD8MT
 yRBHFLG/0qpUWZ6w1aGkFc7qQwAMqY1Wx0ZyOcgNXN9F1OiRRYy4JtHQ+F2nUcFEG7DNRiz7dY8
 1wY9HPTkXNXkuqlD7eGallqovzMVtMfn5j3O9Jnxqzzbn6KuahuZLM2IQzPLVbJyHDckGzqcvfR
 /O9Rj3FqXZzeVgS9yvzFJjG3CdrFt4fekMA7a8H+3iJaWc95QrkzT6Wc8Ia1DBiGElFCtb6Fund
 0dewL61+cNrPeEf1zmRruPDRK7LqCFRPZLib3BaI26irie+wfI8aZUiom1UkuHDcRqz5oHmvusq
 ZZVpmjU0z241VsIyIBLGHgsFPTmLuzkFaYiWJkFXNiY1hKXVVtaKtp2nNAsG/PqLH5eQeOgmAb6
 IAzBPpMQ83WxyufZbTiMEfRcHKVQ4g==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68de4a9b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=kZOsEFAOBhkG5801Qn8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: caILllvrXKCP949ZbgOYAa88qI6IukY-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_024916_736753_56A1364A 
X-CRM114-Status: GOOD (  15.72  )
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

On 10/2/25 1:37 AM, Bjorn Andersson wrote:
> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>> and x2 lane.
>>
> 
> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> is crashing during boot as PCIe is being probed.
> 
> Is this a known problem? Is there any workaround/changes in flight that
> I'm missing?

Would enabling USB fix it? I think we went over it with some other IP
block due to funny interconnect dependencies, but I'm surprised the series
for USB is still not fully brought to completion..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
