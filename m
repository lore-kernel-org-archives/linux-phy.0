Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA80C282EC
	for <linux-phy@archiver.kernel.org>; Sat,  8 Mar 2025 15:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNrc6vy9LDB9R6/pRE7LKT1oiM8TYJ7BIVjS3RXgP3o=; b=TWAQAKSf7CduOs
	/rqzSV2aCtUrAV56/qI1oZoLlYGvR/3sPdqJ97H2vBQPMGzfDL20lQMQVtTz5Z00qCChf/E+5cNq0
	P8lJvn65JRj3Z3rQaTIxqckXMC26emvUXrXNReNGLxWicgKLN8ZnPbfo/k7tzCcTZNR6YGIdOIt50
	vs8mlmN9CdxOi6x1yD7j2vxOJFe4AmEA5i80E3ePfcY6PAZe5W/zmdexYV558SaYCnBj1Rri8iNK1
	Ca4Oc+J7WQXtLD9OzNjWooq9dB6j120kV7/SRUHd9q+q5MDvg9sqrZtrRggkYnQ+PPUwr7k3GBMiP
	hAd4piJ0iNZF+I6Kj6sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvlk-0000000Gljz-0u1X;
	Sat, 08 Mar 2025 15:07:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvkI-0000000GlZq-1Krr
	for linux-phy@lists.infradead.org;
	Sat, 08 Mar 2025 15:05:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528CrK4c013945
	for <linux-phy@lists.infradead.org>; Sat, 8 Mar 2025 15:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JLFVWaUWbDPd+G73ejj5R7gNnqQGG++cPE30muP9uhc=; b=KGy/wWVUKlJqjl6L
	E1satjTApuiwsDPW06hbUqn1nu4dSUTFSgQqU/vi+kQn9H3cqWMjklHArAdOj039
	o5d08qFN9HrFdnc8Gp1J/CCkdNh+bUFa20y5djLBWDKN7KUie2kucNUimJg21s9I
	okgXWaPvtX5PdGcyRSAVjTRjw5eyvFOFxLihCxWDx+3SAoHjPqhVMuM/NSo7lMMk
	U+urL2S1P40FcpIC90M7FYbyaXOMqtcrHDSLuMc4kF6eOZha4oW+3rYWkdElsJVd
	rzjREZjWJSE5yOcEdbXUCZRLNRvWtr/OkW8fxEMwsMszmmbsS7zjE5dtTb5ONnsd
	hS/dQg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ex6rqv1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 15:05:45 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so6122886d6.2
        for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 07:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741446344; x=1742051144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JLFVWaUWbDPd+G73ejj5R7gNnqQGG++cPE30muP9uhc=;
        b=ShLM8Wx5fBww93Zrietq/ZU5NXQPCAxPByenIiQ3V9dRkXcywR2Y+RlEYr7Nv1Eo2F
         H5D6Bs2sFbQiNycjQqD0Drpk9GiHZSQ3Ch1hJqnDSDwXQDCaWvYLz7SShUZlSJGtOBOC
         LysO/ChVan/OkF2qOzWUiCgPSgHxwtKzbg/kJUPunqYbQJrknOGw549q6iINRty92ZA5
         HSCf8tM+bSfcji2ZCRFPtVhxhTEODClmju5RMEz8DQFg/kyNUaPZAGVOP2278HgL5rHd
         14+jYq5KXe6D+YcizboxAyV/HXfSdcGXOBw+zMHd1ics2njoAd6hSnmabgFSytAHWwtr
         I9VQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtQxvvUM9sWR5binCx2zuJgivoaSxyoCACO9ApNJT0ATmGSbXIrunrdR9AwSMfSDAMatkejgETUug=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpKwWC20QXBhs1E8V8icIXgLXXLUag1qdw0wtj8CtaPm0UD3qE
	bi3Ku5j8Ta6sAT9WSy1UUdHH2iSUd2fvQ6UQ5Sb5boJFnzN3GPtNhVXuWRf0pkl8SI6AmVV79ba
	MrY+SP48saXbm2D2kQZCKzYMvwvosriQzh/J+CeTPXNqOZ8MD7YScOBa3pFpp7J52
X-Gm-Gg: ASbGncu+vpxDYxWa/JV8uDMAjkSjZw4VUDOEuzvUepWbrzYi5/Fp+98OEr5PUa2Ow+x
	/D8QFuxnRp1eIW0AZyZQQFh9VGGAY1nXtiUGxdigUJMBRhVXdsFP5x5BeQ6HyzvfqVQZuRs7PFp
	R0oe16L/TY6HQIPj1G+CV1wa+tOXId358ZSF8in3IuxHky3wnM2NmqEkxA7C3asKr9VyqaGq7sh
	AvCJcJvTve83aNF8SY1hM5KGlI+pYSkB/Y9Pd8aaTpwesB433+H7wTSFlWMJf5qHzI9GBa9zVjV
	OiSaz8MGMVZT/Pbr48Ll2RPalsS9fiivljc6q10Bs3H5mH/Is9HCDaH8dCBo2sEIXRZnyw==
X-Received: by 2002:a05:6214:d88:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6e908ddb55cmr15428246d6.9.1741446344422;
        Sat, 08 Mar 2025 07:05:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIuPcR+e7Mz7IBRdPMU7doLc5Tz3u50vlpBjwRgEiNKUDEUQn8nQE/supZQEX3XVnVqo2W4w==
X-Received: by 2002:a05:6214:d88:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6e908ddb55cmr15428086d6.9.1741446344095;
        Sat, 08 Mar 2025 07:05:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2390fe76csm445972966b.0.2025.03.08.07.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:05:43 -0800 (PST)
Message-ID: <687a23e2-7822-4d68-8b4c-f8816cce3cc9@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:05:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP and QRD platforms
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
X-Authority-Analysis: v=2.4 cv=G8bmE8k5 c=1 sm=1 tr=0 ts=67cc5cc9 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=z_dfX9dpdT3VBrYyFBIA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: R3oSP0Y0f1RcvUdOuN8qyxLjNWk4py2N
X-Proofpoint-ORIG-GUID: R3oSP0Y0f1RcvUdOuN8qyxLjNWk4py2N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_070546_379213_9DBFDDD3 
X-CRM114-Status: GOOD (  10.86  )
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

On 4.03.2025 10:56 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants.  The current definition
> will start the USB controller in peripheral mode by default until
> dependencies are added, such as USB role detection.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Please separate these two indeed. With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> # SM8750 QRD

(make sure the latter one only goes to the QRD commit)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
