Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17552CA0EE4
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 13:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/ifqJrpt3MSAZaLaVZr8u0b22LfHMD1dWlNTKVz+x8=; b=YbmYsTZGUTnG1U
	jZk93Q//p7nCOYbNEOLplO3sofl/u2tMHLJ2+2I2/424eB0PMrvwv3xS86IEC3GippfLbFjLgn5uF
	xeu6TrBSOclUlD+O22ffTBgSRD6yi5BZiZX5K5fweKyyAA9gwd6MCfFv6GFWEQlFVTY+gYvhCKPI4
	oF+V/RcKq7d6tf3Z2OgfqU0RcURODPlqjtSIqeO2mTmTPM2TcRRfBBY+0fU6u4Nt83ba3IdkXwjJ6
	u/h42AvXXWnKwSmDwdETuanMt3NEGCK1Grtd4HM2n4azh4I3RYYuhq5ikEdkQOb9wZTnDnGkgEkNv
	RyDUYC6HGQjwJ3I65Y/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXmp-0000000GxNd-2YDY;
	Thu, 14 Aug 2025 13:14:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUXS-0000000GTSY-3O7u
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 09:46:28 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E8ohcv020590
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 09:46:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rVPjIP0yMiJ7161uXl004pucArZ7+8ApLEfvy0PWY6o=; b=c9eY5ndQYYjG1LG/
	VQqkz+NqQ5jhHWTTWOyo/HM4SjxUobms1lyhpK2O1059TiCKB//N7pDBZ33+oPT2
	Drd0U3QTKyVSM38U+fg4x80SR/FN5SCrunHeNm9IEXKXTyp+qCePCXZjjtxLG4Wu
	SgvPWZjjSmpJUXh9KylUW870Q44N6+/6W2RQffWcv7vGfBKPUFNUd413ks9isQzh
	YWyns9OQkfx8QoArw1FpwOOafGqH4AXIXCeDedAjANYWtMg0jYoxJPWWO4T9zDZF
	ZVNLOy/+GWePxJ9OF2gjqdv+Zn2SbmLQehyHQ8NDQK3G44pRmFNQlUK7oHHx3NzT
	/G0lpA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmf69k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 09:46:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e87068f8b0so20440085a.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 02:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755164785; x=1755769585;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVPjIP0yMiJ7161uXl004pucArZ7+8ApLEfvy0PWY6o=;
        b=SH+Ok1Blfbl/To9iV33D18UqBhiTvYfgo6whkMDc1QYGCfFSMREDRq1Hu0Jvu2o+uW
         1j+o6rXnSBVu7o1PhPMsqbSE/WdKoLep/uuIM/vw0bSbgVWbDwv+xM5VrqBvWgsfYaGF
         8N/MA4jEoCcEZknsKYJopk76+c/NYj9ISro4IiRZDZ7dtYVCdF2a01b6eqMjkmCHYkx6
         Sy+eLmR++ZA4lQVEP6eREq/a+/Z5skZ5kYhoCan3P/tqTqgcPDHxTdhF5Qg3q2cdaZ5A
         ETtGhHqOjNUsjuIZQNpc5ADUQ7K0wsXHYW7SLFyP/YzYoMdY3TZT9VOjw/VwhoKpMRtP
         u92Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHm+IZDv+yjJ38JG9kq684Q6r+m6uVNImOxMTYRIjhBelqzeFno5euDNgzZAL7gnZtH1qQID18L2M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yycf/azk5dqVeBKJAJdpBlE3JmdRIAOrOTo5TMAhENBMB57NRZH
	KzBUbL3qpSmojm5Ubbtsz8FvVLGKwN5mppGjbKcdVPFi71mWllSi+SjeUfWByrwB6+O2ZvOD3BO
	eRElwfB1iMax5qhtijNTj7RDptA6k7JIxivFkQ9ekaXEsNow2DraRHYxCAGuMvXjqPeyO
X-Gm-Gg: ASbGncsai9n/TrqQb854SpC4BAZifKo9wGBDovtHvzK1J5FEpwt7JuY2nzmscGrqAAD
	mqZABFzY1CYit4wpUOTD8Ii4wPqwyhYLOmaCsFUDhjEGDcr3Pj4CkrHpAtQm1jXosKj8dIyAIgo
	5XK9wAWfUgO/ONgfH0f6NKqks3q+6k8pMhqkolt3bfz4XDK6w0K+OughWFEy8OhrbuZ9Qr/FZkz
	YQkC0rVCKxQhxqx6oWWWHoIYL6yzjQsPgh4OdYyUIECb+SaEcRve7WgF3+RB5RozXCWDrPyjyaa
	tG+VqERyTOdjAgizTs2hGrahWOH+oucYj+9fimb+716OF0noIlfbjGho8T6zanjWpItt7pbBwuo
	XD6b1n2bBXGCcjpCl9g==
X-Received: by 2002:a05:620a:4009:b0:7e8:239:f842 with SMTP id af79cd13be357-7e870476a4dmr154620985a.11.1755164785011;
        Thu, 14 Aug 2025 02:46:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk+rLGT+zfHa/tgAexCcnh+96WIw8Fih6tIlfDVR70Fu5cDFYRswuXAwehpEUOb+at3084kw==
X-Received: by 2002:a05:620a:4009:b0:7e8:239:f842 with SMTP id af79cd13be357-7e870476a4dmr154618585a.11.1755164784511;
        Thu, 14 Aug 2025 02:46:24 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a1e833dsm2550194466b.64.2025.08.14.02.46.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:46:23 -0700 (PDT)
Message-ID: <aa0ed59a-4eb6-4f7f-b430-4976ee9724d8@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 11:46:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
 <tlkv63ccpnti367am47ymhaw3agjnyuonqstgtfaazhhptvgsp@q4wzuzdph323>
 <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX0ghH3pAeSt1n
 wpTlcvjb+KyIR5dVVvhX1u2PXx34FccKnCuSadLF0kfdtMQhV0sHj6aWDLMQ//B6/OzFZkjoPNi
 L+m3Lo17RBmjF4kOa70iZwu0IbmuA5YyJdEmyifX/is257ShjCZh5tovv1fLBXYNYM4zW15u3Z7
 yrwOTRqJijB4CFHU7CWLuTolfv8wQeBVUqbGVSxOLdOwc8Y+3Hkw7wo6lS/HZxj1PNvsRamtTFY
 eLhaNsTEQvPXtMJS7eOG7XTHuXG909wSgiYCjtgao0aTVgXAorV8qeFOgLU078Wq/Le2bKqJ8u1
 1i2R27YS2/7Y947yQuSSBaPvemH1Ztk/33eFel4MT3J4h8aK5JuOHyKCmVctXdY6XD9vLu0MAj/
 /6pQfbRq
X-Proofpoint-GUID: D_D64GEdgq30a_XkngAVNQCksBjM0rwp
X-Proofpoint-ORIG-GUID: D_D64GEdgq30a_XkngAVNQCksBjM0rwp
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689db071 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=tbUJWSx7DgQPHehloyQA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_024626_981709_032FE9B9 
X-CRM114-Status: GOOD (  12.29  )
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

On 8/14/25 8:59 AM, Krzysztof Kozlowski wrote:
> On 14/08/2025 04:42, Bjorn Andersson wrote:
>> On Thu, Aug 14, 2025 at 10:59:04AM +1000, Harrison Vanderbyl wrote:
>>
>> Welcome to LKML, Harrison. Some small things to improve.
>>
>> Please extend the subject prefix to match other changes in the files of
>> each patch, e.g. this one would be "arm64: dts: qcom: x1e80100: ".
>>
>> "git log --oneline -- file" is your friend here.
>>
>>> Describe device tree entry for x1e80100 ufs device
> 
> This is duplicating earlier patches:
> https://lore.kernel.org/all/szudb2teaacchrp4kn4swkqkoplgi5lbw7vbqtu5vhds4qat62@2tciswvelbmu/

(that submitter clearly expressed lack of interest in proceeding)

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
