Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82700CA0ED1
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mul93KiohsJkAyrwMZ138hbbxvCRO5048roDHy5vvKE=; b=Z07rv5EYQhDNe3
	cTnoEloxqs8Tj8xN3d2px+16Cz13ojlGx/MG/EumoyaW6hmlFfxzkl03UmTUNLnzJcJPACnhPSmIl
	JzIZECyv5XxkDGuxoxuAC1TBxz1OCFALC8ccdL2EVoVq9PtFgH/3vQnaNHgwRD5z0Z4I+0Qr2bWWw
	C5nWGIfRo7BVJgFV86lDCG+bxSb/l5x4jrV2bt1+/7vW59Emrfo3JxVTC+zpdg7O/cWl0J5zi2ABn
	5MI/HP+rE9fbJw/8iN2kNBlqf/xo9f+HUAWg3hUsa0pUylDK2xuGMT5D0WL+zx62XfFwg+ODiyJEH
	gtKQSaft1oGE4kx5DUWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVEH-0000000Gb08-0LSi;
	Thu, 14 Aug 2025 10:30:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUEw-0000000GOye-0adr
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 09:27:19 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E00TeE029470
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 09:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8liDg8V8jJXUIuWDLIxvpQ4YE8ananmMfhqXJvLliEY=; b=HToJcEMPQ4HP4wB9
	t1OtzocbXVlWu/n6pFUkjBE+wINPkNrLU3/a3JzVZLWXXPp3bm68JTAVhluBEg7H
	J1udt41fqeIcopO4PQqVdOoXMfOA+kM1vKhJv1hF8WU7qT0166+yITvAvDU0qkiO
	+txbGDmFHuyK52G0r6QzMDYCi4geB8uOweR3LBYfWyMI7xIAuowZcf61zpqc0Eik
	5IYUffPL4fwkverXTj4TgvrhM0DUWMljx6efvouRIZtex4txsHc5buaeV9Al/cYI
	Vin0aTzjd3JzUmk/MBs900b7UwgHPwdncTG96WTa7YQx3eORBRTOlCom3gTYOn0J
	gtOAhw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9q9x730-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 09:27:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b1099194ffso3420711cf.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 02:27:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163636; x=1755768436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8liDg8V8jJXUIuWDLIxvpQ4YE8ananmMfhqXJvLliEY=;
        b=s+Iu+rDzAbbinj5jPngCG3gKXdh/Vm2xTfLBbYFtlNc8Bk5XX5yOlYmojsxuaw3EEL
         GhZhZ5gkd4cexeRK15u5ErYM1Pk0Q4HWrKzAcNGSHcZ9XrM+O0dqMVaTYqnoxzmAsLD6
         c5vgI+sBOaKcPFaup718tw0cfjeKUlxe3hbgRD55pg2dEFZqkCuYebuFYJ94DWf1Jwqu
         X4VGp1IobLvZKSh79UXemUoZO+hpZNjZQryQkUre/GlVDr4obnis19FRPGFJ9uDURSaq
         H1m0ResvTwzSVJCR3x/uh8yLIiNNGUoMmPdlyt/+PjNdj4lZXRVzpvcrCIknRUGbltMW
         SVQw==
X-Forwarded-Encrypted: i=1; AJvYcCVlZT/uBNZ0Cl8Pv+LJ3HYT3OP/rjv+8hV44HAooUpBjVze/NeD3O1Kp/6Yz04asB+aZjB0pvsoAlI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9RRKTgyNKKy08vk7vcDB9TCU2eDrBRr7B4ZH2FY1HvQz244k8
	HgJLjmZXrDPiG3fJEAiJX5QCrzAot+wIvkR8srgRvBTGWJPuOdp7U2Ix8pa2c2D9KymrSZrdwV+
	mG1FcR3I349OzCEu4lxH7BdUGtsql1WYeQOcVSbESxXaxEjm5rPbRh95ly1tjtcaWq9v5
X-Gm-Gg: ASbGncspZaTpuaRyh7vx/Fq3hBAOWaferQN1ZTUp4wDpdLC1sMnfAoY+a6K7PvluS6K
	QoAN5B0eI/ns1xIV+PICg6nKMs9KeH806ispQ/fdHa19krzIP0mZ5kTLXkO+GrKZp6qJtVEMcBm
	uWYAxS9AaxSBIyKBQt9JniTOTz/j39DE8k96/dhksNjM57Wg5fErdZ02kYU666Wso97mQPjvvR2
	T3ARZamYpdBI/flkdx+AL4SjMoU4CRnuUhtGb+clNfPvYTmlKK/6EiGfO4yjIlo7pRDsWjyio0c
	O+XAh9kulnzf1aAKpNrfuBLOvNSKt3X5ZsBlxt3UxKzyLE7toeL0EHQ6HgRM0Ym+iB3DzWTdJFF
	CZ5LpteXMEF76h5NRXA==
X-Received: by 2002:ad4:5fcc:0:b0:707:43a1:5b10 with SMTP id 6a1803df08f44-70adc06e445mr15766956d6.0.1755163636101;
        Thu, 14 Aug 2025 02:27:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9SwT7H/YCBwkzSO8UzX7j114raEKqqbTh+pISy8oflkO6NLP0NtoNDbBk/MM3LTCvC9zjmw==
X-Received: by 2002:ad4:5fcc:0:b0:707:43a1:5b10 with SMTP id 6a1803df08f44-70adc06e445mr15766726d6.0.1755163635640;
        Thu, 14 Aug 2025 02:27:15 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6176052d163sm17241998a12.48.2025.08.14.02.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:27:15 -0700 (PDT)
Message-ID: <0e1fbd77-b651-4614-adf9-d2f8e66abac2@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 11:27:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Describe x1e80100 ufs
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>, marcus@nazgul.ch,
        kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        andersson@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689dabf5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=0dJSgm4hv7TTYW4Xl4AA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: k4T3H8yAHjdjeaoXH9xCde0USSt0dXH_
X-Proofpoint-ORIG-GUID: k4T3H8yAHjdjeaoXH9xCde0USSt0dXH_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfX7CZGeyIihKPR
 UWSWc9TrY2ENi5vhSoR8WuBRUaX4qHrnIS4TEZiKTz/sSZg4tWve5dGaqByr4SNIk4rNg/Ddzpp
 JQK8ByaPpLBkKWzAsxwQAU3WA77EudLw4ddQMYVg+8uHh2SpTawsEVPQMMUGxAQTep7IoF1OGDs
 VNd/jrS4jZIojtIfg9uE/wo4BkzwwS/v84X9Mv0YU85K5Nbg6HhRMgHvQ4kahd7JUT9n/V8nuFN
 5HcGSMwZcuCkdB32gKzLP+cBQYua5zqt3E+5qvEjLGXY3W9PP+FlM1E/WZ/Z33F0Q73LYLMUuPz
 X9N7k04aH2GzDlftFFIgUa64KF2cj+j4XnrnRsrj/G+luRyLRZ5OXdKIm/jN64ZkMFRsywQEoEj
 HhJ0vYCc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_022718_184923_E2AE6BAA 
X-CRM114-Status: GOOD (  10.14  )
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

On 8/14/25 2:59 AM, Harrison Vanderbyl wrote:
> Describes the UFS nodes for the x1e80100/x1p42100 chipset.
> 
> This is relevant to the following devices/patches:
> Surface Pro 12 Inch 
> HONOR MagicBook Art 14 
> Link: https://lore.kernel.org/r/871px910m1.wl-kirill@korins.ky/
> Samsung Galaxy Book4 Edge 
> Link: https://lore.kernel.org/r/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/

+Wesley I think you had it going on the Samsung laptop at one point, could
you compare the diff and maybe give it a test?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
