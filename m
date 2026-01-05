Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C773C2A062
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 08:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=getyn3OqDYFPolS3LjA+7LXFM5F1YcLNlFDdG7a9bAw=; b=lo/xkXlNsJMmSe
	5WZsvaFKaJunAZlRntiBwhYUrKGADTan3CMIwYNvRSN5d7P1V29fTvS7u/qdztb0PZTGEHD9juQcy
	UbAh6VRFW91A/503desdL93iK8ebrQkzBJYd7eAqoo5PiQJy3aevXvMyFzSQRixDnn1LAhdMO/k5m
	GI/F9wY6Iiom6oj5yuYe9voK9BxiJDTI+NfBKhFDB0fO12RA6T97Zk0LGxVElEuXaQUadAUvFvQ/W
	GJo3yx6b7CE3ZzMxdTdH5CgG1l1aU3F3MFUclSAa4LwplxXTMF8vSKtxLfcRUzru95FLPDNLEila4
	X/NjH0nCwr1AAY+aqWRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcflp-0000000AyGe-16IL;
	Mon, 05 Jan 2026 08:16:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcflm-0000000AyGE-0nb1
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 08:16:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6053F8Gd3542060
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 08:16:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	18YCrzwPnslDtu4eM53n+j4KlC4xTSp3NlQu11JmA68=; b=XbB9k9Awf9GqhO4a
	z6V8XueCPy1PhrktQj/sYEz07Mu2xic3Upzyht/H3t/ZYzp3OfNA3ugaIxhEJ4Om
	ETV5bSTL+M8vFCHMU+B/wRBE9T4KsFgFN5YQiTjalHc1Ykg7akzukbnEjLPiw1G3
	wvQy4sakpoPvKT1E93Y+yafUS+Zx4zJhEUCDw4a7TCvLnbQJuIW7jA53fMwOIwtB
	lt+G2sL0Mko41/BkLMP697zl1byKBAQPcehd+mL3rMWnyH6eEhfa7wmFrYEjtJIH
	6OAuMF1Ilh2Qazy1GnqOOrRgqqZD+MqZ35+6IeqcJyv9QRE2f1Q0ukmcmYanAMt7
	7ssw8Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57sgr5d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 08:16:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a09845b7faso212275055ad.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 00:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767601013; x=1768205813; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=18YCrzwPnslDtu4eM53n+j4KlC4xTSp3NlQu11JmA68=;
        b=Y2jOwwhKgKniSOadfCzYCT8PuyX110sFejDzPSbQsFfNibRv6j4RSsrSB/M91HqJZ8
         rdTUaFIeiS6i9ugu7ierM7Mdz1IiGgYlNkOMAiJJwqu+NYHv4Kmq2LoHzcT4jn/86A38
         utvo548iqrdK/ln7UEL04W7SuSy/RaXyN2+f8uM1ebxwobQftt3wCGlgHNimP4HdDlbl
         Rzd5WLheYblwaozBaxTNt5mgT23cP2ln1BQ/rWmYzkg0OfCbLL8CuAMBfrUm3U2vzNrv
         VV55hG6jUd8+KRDdqiPSqUbSv6DoaZ/5yyN3EN6gxrPQGyaHYZkaoYk2uOQ6Q+ECT0jZ
         /kVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767601013; x=1768205813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=18YCrzwPnslDtu4eM53n+j4KlC4xTSp3NlQu11JmA68=;
        b=ackJokz+aNb0yFIc/vwN1Lg/1/eAcvVGbPqpvXNR5yb1/4K+q/U0H2GMVuZceUD+PH
         WgJpgHWei4+Y74yDRSAv4WXdA4HM7Nn0oYe3WsvRP6cgp8Czb0jbfst2emGRUOQWZoVE
         cZd6Wzk0fH0ieMOs9OR15bKzhKL2b695Q/lcpQd+lWiJsuQjGBALr2jSoAw9CwgieQeR
         IirGbHZiTLFgQDLABMLDrt9vEKV99h+ZDjQ5s9bOnUQkvMoYBS5bl5aPD42leE4OoZ5B
         IRI4vCLnIzQvF2X8fedjTsyXK3jlqqgQ+12dP6kJGUaIfjFimcZRxoyqW3V0HDNjaMv1
         1ruQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxv3zr3XtlDQKeKruG6LpcFSYik9OAEJ5MyP+qugvgYUci31hagEWL17R6nP/sjyQydRaNMH1O7sQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPr658qKV0TBMuPN1K2mJplonfGny1lEi90I9g5tShreQGswzu
	V6ws+Q6Wgd+731N1r/fBWfrqLk5yQNYSVBar2thcyl7iOaUDzmobBYMW9+Rl8CwoYl/u8Kjt6uG
	aS9ispC01fg6rhbnAy6BPyGBLb4ogBYvXnmBKq9CUNbMex8pzD9hbC0DVfPAWBxRs+n/2
X-Gm-Gg: AY/fxX6tZIP0ZNCUBfOhzn7Zx9lCTuBFTD5sHL2Q4V42mm+z6m6Qi5M2eJWbpTnKta1
	xSjFTJw3p+V0WEV3JDXquinZ2415Z0fbXH7Thug7z5nXZjOtI/0ZxPzckEabEV9f8JLeqnV1LyJ
	N0akUDm+fjvpKncvqLfecX+QjuA7sqep4lDm42fg5ifJsJhgYuzApwjC2/2uayxj2eC3hp9kWZi
	qdT4p3/lIo8eW2n9Iaoeq7pdfuM4sHy8guUR+vQETEJymNo5JL/FVq0B6yF2rrAGAV1y7cxXaXY
	0O0DeZIY3nNFUW3d4eyUlZxBvgcjJC/f8gGnzbLRJ+iLd5xkrmqxnP6d9pma/ejfU/Dg40PP8MI
	vp9zdcpDC0N4Y7cqloqWw9PnygFm4MwcywVgKknOkeMpcaKEAaYo=
X-Received: by 2002:a17:902:fc46:b0:2a0:9411:e8c0 with SMTP id d9443c01a7336-2a2f272bd84mr472738305ad.32.1767601012916;
        Mon, 05 Jan 2026 00:16:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF47iCpRyTshsyeLrz78/zIsz21oTS5Aj3RsHakwta124JthwB46ioZMbAIB4ET4fXUvBd3Og==
X-Received: by 2002:a17:902:fc46:b0:2a0:9411:e8c0 with SMTP id d9443c01a7336-2a2f272bd84mr472738045ad.32.1767601012449;
        Mon, 05 Jan 2026 00:16:52 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c5307c7sm41443575a12.28.2026.01.05.00.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 00:16:52 -0800 (PST)
Message-ID: <336fff92-c3b5-4214-9a78-56098769062d@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 13:46:44 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC
 compatible for x1e80100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
 <20260102-logical-frigatebird-of-elegance-8abd82@quoll>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <20260102-logical-frigatebird-of-elegance-8abd82@quoll>
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695b7375 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=TyPWlNIwSm5TisNF1W4A:9
 a=QEXdDO2ut3YA:10 a=i6qsmYmKKdoA:10 a=csto0wWSG80A:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA3MyBTYWx0ZWRfXzIrihRNKUt5I
 g9Bxr0ePQ6K3eBwtL/QN1CHPcoRV2volLg6QFIvx+FXNkugRx9XANzp9R/MnW7ivl0j6JdpqfLx
 MGUvVWCrvVkotxKzB8usW2b4FaGrauqsbFZn6hV+n324DW3cEAuOq/ktLIcXxgY4EcQ1a0VTLFv
 IDMdLIn5b73r58G04V/gkBh2sQEBqRohYj9bHNW1bceuCdX604kXmljUt03jWlEJOlgbgKQF5Pb
 P0VyRvErHh96OMzbbLS+2bx1HEiyxRvAsW/D+fiOT6yyjjVrIxcHf2iRBTfZ2n6PlvQVjmOe7YK
 ZGP9bNh1EEhZK9jFUpWFz9/W1SAI7jyoPxicoHtB05Yov+Z6WN03ZcJztV7v3eH9swTYdRd5Hsc
 NT5f6aBAFfJ4aAVym8uRBKAw80o2zLg6FEg5kHV/FA+0MDZqP+jxA+KfB3HA2V9rWitBpLVmSBG
 U5N5f+B/atVNQxq8MpQ==
X-Proofpoint-ORIG-GUID: zenrh5pXlQCTTUERHO7jytBG7BmRotfh
X-Proofpoint-GUID: zenrh5pXlQCTTUERHO7jytBG7BmRotfh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_001654_259918_3621B729 
X-CRM114-Status: GOOD (  12.25  )
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



On 1/2/2026 4:56 PM, Krzysztof Kozlowski wrote:
> On Wed, Dec 31, 2025 at 03:49:49PM +0530, Pradeep P V K wrote:
>> Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
>> SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
>> with SM8550 UFSHC, enabling reuse of existing support.
>>
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> 
sure, i will update the subject prefix to directory path in my next 
patchset.
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
