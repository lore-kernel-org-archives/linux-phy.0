Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6864FC3ABC3
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 12:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0z/CTiy1SnaH1UApNtmAA5ZcJMOkm32x6Ux+D/oZcY0=; b=0vEISe6vIeRHnE
	3ht96RjQShI1ZVathc+72h218xJjRwaz/ePwMjY+Un+MLhpQu5evsULqxnj6+u6u0fAgI3mv7CNvw
	1Hg1KOkxHT64J35jTjQmcIz07zGnFgkEZNGPyzQKVJTox8WP5J/hdAB6sjciYf3WbVQz//ndlGtBS
	6XA6NWJ+hIZf/2hYFbL+k+lcSBE3o/mBSTuBUQ5IudC/0EWo+3+mS38h5g3k8OLLZCXoBrqqEOObd
	WgJ9sNiIHaeKeAm1EFtq8jaXuEthpJKjI0vTm1ztnCyOz67nMaXfHK42GREt2s6f5PjjpgiimhoZV
	UtsITpy6oN6J0E6R7e/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNGL-00000003f6X-0iDy;
	Fri, 09 May 2025 12:55:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDMUf-00000003XGE-2lWa
	for linux-phy@lists.infradead.org;
	Fri, 09 May 2025 12:06:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549C1vaV016663
	for <linux-phy@lists.infradead.org>; Fri, 9 May 2025 12:06:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VFG5Da+YfOlVw9RRbBfTzV9AWaQl9DWU8KlZRXqpzfA=; b=JUuXKYHLxyincbcH
	3IGZUI6NarqsJFKHAkE9EDmhzizZVQ2IR08pkiGbNr2KAFQNrnEXgmYTNlmb3Bnx
	L0/eaE/pzf+yeN1QyIp2dRsDa7fhhIBi0g+E8VSFhoYifYX9l2KSfw45QUMk/+3C
	zZiVoKL42bV7C5S2m2RezcPr+Dr/MyQ6FNW7XFEQoq2svb13zA4bGAjnZmPdu2ll
	tmi0asOc6LfdH7cwiThVAfoKhfFMtz+aZDp9y6OOf2q3pSvipJWwmM3lqrsFw/w0
	YvrcOQzoVvoxkQV79s+WyyltceWdfBZpLjishapJBDeHIxHK5E1pzKxnCsl2pESl
	U1Vl9A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp8vj19-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 12:06:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f541067fa4so4691296d6.1
        for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 05:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746792380; x=1747397180;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VFG5Da+YfOlVw9RRbBfTzV9AWaQl9DWU8KlZRXqpzfA=;
        b=dm7DFPSY8Tyq9QnVoHV41DVljLXgzZ2FWrXQGFuV+E5a59/w4r9bhFkOFdoJs0EMrF
         F88hl8j+WmFAKFn9ZlC/X0KtSHBNl8DimxRLiJcQlOchWgwIJOwJ1hBKobxyBXUHobxP
         uWB2BQ2XOR3SDztFUcK3kOLR4MN8XdR2TNbdFVyApW4mcP0cYjVb2BhZl1cech8sFScX
         N18AJMpJxfVYEuc+ckEwOjTKQvtwnUj5S5DKmI/A/zpOukLmP+ycbGhGqCWOV/+eVR6N
         zXdub/3ziBH5UgcVoLrihSa2dmoWJpZVbh2m8rvTa16Dt5c3wUmn+ASaptnexyzOXItV
         h/2A==
X-Forwarded-Encrypted: i=1; AJvYcCWVScZ8JjXyJC2Pfw7Ogt9M9lU8XOzC6qI4DnrGe5qMXbJIvh/Auk0SRRoBEFtUAP3+Kys3YkbFIUA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1kxtYyHMmo+0mK3/I+D13qr9CaGcHegMvgI9DfyLk8ITMLA/x
	nRcKAD//LdJhrDKm0Yy4tmrfJ6Bx39U+brYC80uFwIR5UzndmrN2ulXUc3nvttFDhRAv+vLyqjh
	AXFIBjq3E/8nU6ei04mcfLu9SY636V1p7Yv9UCQM2ErM8IV1E3rB4kSlzkBi3DJY7
X-Gm-Gg: ASbGncsIMnc8DgHZ5FWBNntZxo+M7h56YglNydBMFjv61ntCb4vnWYjXGcHoeh0xduo
	K9h/Qe/yCIzxGTIawAgKJ2l9OTylaYtQcSgp/nJ4XqTSeH5ypuyFE37bO8w9rceCkVBKQ5Rv31w
	Im0P816qq1el0YH/RF3fxs/JhJZ+mDVWnFiR1AxnhZ4w3KCuqc3Gobna4LdgdM6ioPc/XsrzHun
	PjDpw5/HnXf8jzVwTaocfYyfiGd4L41KwyWhp4K4My/GS1WXre/eDEgkJh9/7b7qRLJgUwDiH0j
	n3ZEBrWE5W9V9+hufpIOvUdgRY6n7JPw47woHGPRGJ311px6Ir9B5TC7CABXu/cLr0E=
X-Received: by 2002:a05:620a:290b:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7cd01108cb6mr190528985a.8.1746792379813;
        Fri, 09 May 2025 05:06:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKcBKsJkKgfMZZzUCoL4UmLzaEErHDasd9ek1N9pmcMcSpwfQinc55ChB7fmY4ymnXRybyaA==
X-Received: by 2002:a05:620a:290b:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7cd01108cb6mr190526685a.8.1746792379449;
        Fri, 09 May 2025 05:06:19 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2192cc449sm140992266b.20.2025.05.09.05.06.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 05:06:18 -0700 (PDT)
Message-ID: <7695636a-e6c8-476d-ba8e-51185a7ae2cb@oss.qualcomm.com>
Date: Fri, 9 May 2025 14:06:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 01/11] scsi: ufs: qcom: add a new phy calibrate API
 call
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-2-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250503162440.2954-2-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: YxDTU-E3uRjmVyyp1yUCy7N317RrSpuE
X-Proofpoint-ORIG-GUID: YxDTU-E3uRjmVyyp1yUCy7N317RrSpuE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDExNyBTYWx0ZWRfX1Za2Hn0CQQQH
 r1Qv6L3zpQQhyc0ATmV5rl7GtKT4zeiVLPomxZmaiHPbuwu0vwlNzozdewCQRkIuCLMt366+lZ4
 eTO/0Kc1OO/7ZMWZQ40bvCrpiUM7eXZEwEq2/UvmR2VBN97MorbogXCevfoOVipjqw+FrWJx2TO
 JcflIjlZzkA7G9lhBMXZKraui1lBSdfaLRpA2kVf4O2zRH1CcYvYYjgSJ6Tfc4HfXlDUwo9xqUr
 Kj20gbGU7sCjcD2xBaVe44Kat6sX0p2jlgt/yggcrcrGoGYo+drN70cSDxpcETLlJ5HUpPsz4kc
 97wQOK9jT5seZifBS2/6fXGYvGt9OBmxUA/G3ddnj2hn0REsEO6mqtNqNp3RPGe+oCBk8D58qLz
 RMRAAsrzORpExzTFdMMcn0VoMBG+sGJutFRn/ea12EUdrgYuep5rRqc4tjWZjMpqlcHrhp/Q
X-Authority-Analysis: v=2.4 cv=e/4GSbp/ c=1 sm=1 tr=0 ts=681defbc cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=Z92jOV8uMcrVojWvk68A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_04,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxlogscore=854 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505090117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_050621_820771_2A849D62 
X-CRM114-Status: GOOD (  11.28  )
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

On 5/3/25 6:24 PM, Nitin Rawat wrote:
> Introduce a new phy calibrate API call in the UFS Qualcomm driver to
> separate phy calibration from phy power-on. This change is a precursor
> to the next patchset in this series, which requires these two operations
> to be distinct.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---

I would imagine this would all go through a single tree - be it phy or
ufs, up to the maintainers - unless you want to merge it right now,
Bart/Martin?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
