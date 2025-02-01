Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D79CAC0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 15:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFRyEyVp11LdbJaWePwgvKlkFiFYkd5NlAm1XIUWnv8=; b=zhKvEraU2eAA+H
	Q1qVL2ROUfSCUR59u5BgL+9WDcMljfCWN2J00rXBUsNVLdoAdWzuYtA5aH+0uuDos0AtL7CfrOuFl
	dNYvAP9TK334v4DX2Dm6m4QdsajxS1kfBLOp7Tt5gbwY4of1ygwp4byT5Qf9ETwLNNGD7b3/jO2i7
	SrZ6iN1Ott1r67yvSqnU2OnQYeSAOWQf7wyKb1Bm+6l5qkQiR0rcDtLqeAmJS6pHQtbTXIVeCXj76
	7d3OVp3xa6iWvbwoj5Z8+Wp4PWLAutk7ITGPFL/rY76cCfVGMeRN+zHFpzAzw2VDIBT90i/Aq3+ET
	b39uU2cYQ3yTMUlbx/KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teFrE-0000000CpST-0I4u;
	Sat, 01 Feb 2025 15:56:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teFrB-0000000CpS5-27Vv
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 15:56:30 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 511EwFCx025489
	for <linux-phy@lists.infradead.org>; Sat, 1 Feb 2025 15:56:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RxAI9QfYzUboOCqPfk86tl0uJEcqlI27N0d6rOMmn2g=; b=Wuczx6zz54Cwy1gA
	XovtkIrG5aZ+hXsHE7QufKxE9d+kBV+zVhLaV94NPy19REaCUYF/MXe0O4Av6FHb
	fTiYGKmTOwQcDENGyh/St69Ga/Qv0cjwIN81+Zr5rS7FRsOVhMchRwrb8n8sV1ne
	/T8xS0VM4fqx+zxncVffSYtqVyw8XwRvo6j1LiVNQDNTRMIAEZkFCBOEfdm4yFer
	N9KsUr+/dvVrXScbvFDztgmCXjK+eOBtDQiX+7RZFt4n18bWYM7fGciDjskmJlgV
	qTy8Ui6wEFn82oWuvecWS2AUEGPAQVe28tQu1Afn20FAhA6L+SCSyj++xFMS542E
	T/clpQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd6a92yq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 15:56:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6e43ed084so72197585a.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 07:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738425387; x=1739030187;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RxAI9QfYzUboOCqPfk86tl0uJEcqlI27N0d6rOMmn2g=;
        b=ryjG26VNXFvF6oyUGt5zng18mL+yb/Ksz98YTiic3hxLXpnSXhq4toNMAmToyPax4F
         ngyJ2ETUvmbdS7kLuBlBN67LRk3fPJJNjpiXbmMvdEhsHv8DfYj3HIA96KT/q/coHcq7
         cA4IR+xoaDKl4WiUXH+Kk/K142iuVQdBhFIUpYmtTFod02VYV8JtN5Eud9ZLluDCL4xt
         fDH3GwI1X+glFT1ar83V3rJgx0VYFGY7E9cAQr+IlM4DF7HqC+r3cS49YcY8g0i9nuXv
         17IaAurPVQXJmexEbKzXGtWeLjQHs6LTEW+8wF0PwUKVRwgKhzS/IjHqXGQGcfzyAhei
         1Bcw==
X-Forwarded-Encrypted: i=1; AJvYcCVIYkq/X43AUcanSBcGXgU3i1Qde5hNjPK6Cvh9lqtmzNLgWxZ13Y0tA5kC+DBPMs1agKKTc+8sxa4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfwQok+2NxgautwE4R+lypSpO2z0T81/haQGEYD44kDbmZ/6M+
	yBedru2/QMwRQkoHjodeYdQtA5/a+sWGLEF2GLEossrRU3b+8FbrFZIGneBNw2pkYO/YqWb5dNQ
	SL+Cnclbo7f7U0WoHRyqnoLmKTiLnFQvlcKgpMvxzoxo+0H6ErAUEpciCBlxrqzWd
X-Gm-Gg: ASbGncs1Lsi590hDLpnVMavca4vJ0/VLt+wKaisENOt8T9X/2onDm21Fg+c8NZ9H4Tt
	zBVk8O4jwxV5dn0yQn8jeyD+i/7p6Ww8jDK1JdYJjUR7Y56TMr5S4ltXWwhDPr56oEkz7Bnak5b
	EWD42JZBvdwjzL9jKwGUP1M5/ZasMbzyYHRE83tElmkEL5Sp4VGBRj2kQvUtNM6WLeC40VMNnTJ
	G9LTNn3dbUusHXb0IRxocF+sB3YELMeblAAzEGNbDf/RRljZMc7KwyYX4Q/QSOscua/bTtI3HRy
	1JXa3BUnEIEMNX6JZwLvjX014Ya0V+EdRya6pE3rQylnmNtI74T4kp17QnE=
X-Received: by 2002:a05:620a:4246:b0:7b6:da92:fcd5 with SMTP id af79cd13be357-7bffcd0a7bbmr802318885a.9.1738425387293;
        Sat, 01 Feb 2025 07:56:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCspEPtqtytsQHm2+LoVv9U32cEp2WRHWSz2SmhEQGoYUVNNLQcIl4uNOb1zVwXxus0FRB5Q==
X-Received: by 2002:a05:620a:4246:b0:7b6:da92:fcd5 with SMTP id af79cd13be357-7bffcd0a7bbmr802316185a.9.1738425386886;
        Sat, 01 Feb 2025 07:56:26 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc723e4b6dsm4577092a12.24.2025.02.01.07.56.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:56:25 -0800 (PST)
Message-ID: <96c4af07-6adb-470a-8cbf-784bb544ff76@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:56:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number
 constraints
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-2-02659a08b044@oss.qualcomm.com>
 <20250127-hungry-bald-groundhog-4f7d4b@krzk-bin>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250127-hungry-bald-groundhog-4f7d4b@krzk-bin>
X-Proofpoint-ORIG-GUID: W011JSfHqdDqaYmpd-zElez-Jm5LvMRp
X-Proofpoint-GUID: W011JSfHqdDqaYmpd-zElez-Jm5LvMRp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_07,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0
 mlxlogscore=999 adultscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502010138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_075629_670277_BC9B3F4C 
X-CRM114-Status: GOOD (  13.82  )
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

On 27.01.2025 9:26 AM, Krzysztof Kozlowski wrote:
> On Sat, Jan 25, 2025 at 04:31:18AM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> (Almost?) all QMP PHYs come with both a "full reset" ("phy") and a
>> "retain certain registers" one ("phy_nocsr").
>>
>> Drop the maxItems=1 constraint for resets and reset_names as we go
>> ahead and straighten out the DT usage. After that's done (which
>> will involve modifying some clock drivers etc.), we may set
>> *min*Items to 2, bar some possible exceptions.
> 
> You drop minItems now, so that's a bit confusing. If all devices have
> two resets, just change in top-level resets the minItems -> 2 now and
> mention that it does not affect the ABI, because Linux will support
> missing reset and it describes the hardware more accurately.

This will generate a ton of warnings and resolving them may take an
additional cycle, as I'd need to get things merged through clk too,
so I thought this is a good transitional solution

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
