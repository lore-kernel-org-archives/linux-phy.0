Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67946C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 13:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cCO0uhETlvOtSY1WJqRgpNM1JBmfxIwKHxeTGKm6uM=; b=qUeT11Q8snZPB+
	wAiY29sXB9gMaKBGEEcJ6FCKmcykOaIlVXipxRt2r2s3cPI+WddHHTKM6WKLl2bPubLHV/sKSoRUM
	WKrZN+dwZRZjKHwzdAbv92CDgZ1SeF6ckdfAqm1EJcyWtbfYAxJubobZqqhJf964Bb3EzuPCHn8mn
	lGSpd2JJDNdZcYvHL6ehF2pektAaQZnKlzBzhupk4rXafCVVMXFXZj3x0I8ZiRK0BzxW401tJ1Fsb
	0VeOuEntjs54ZkmnghG3OhBlIbl5fZ1VenMwvwb+/Y1BL44rK8ZZ8W8eSnganR4bWIHra61WbczhK
	qw6QYd/NzqTE8xkBFcsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tewAe-0000000FTD6-3kwh;
	Mon, 03 Feb 2025 13:07:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tew6n-0000000FSmG-1FPE
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 13:03:26 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513BHHuw012514
	for <linux-phy@lists.infradead.org>; Mon, 3 Feb 2025 13:03:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mX7IfXj8e+kxJnyMsONTU5RjQUK7rzCN/ci7rHKOAdE=; b=nOg27x6wRaSJtHgl
	M+XWT4621uQHI+uz6vwasngw5vPFhnlnF91tAKmC8RF5WfipkXvsdLceAZizC7Cq
	wwe9egb13+KJpEV5dr8bvSBGls01qgdbSBza4MbGin+KPjsjJDJBcEwjV1wwvlNh
	5zjLbEu03rsxMhDOgCvQAnnKWa2VJm3DtxwMDXMHRnVIIwyi/sDhVKWpj+Kt2a/n
	dSBeBBHkthRu1aCn0CiYJw6lTk1rqNlHMhsN6BcsnJF+/xq1N8MisNNbirTH2BxK
	lbo/dugFlnd1Sv4zyQsFv504ftNc5CVFbVwUKIcMbMch25Z2ucECfvaCJI5r1EcS
	0rJ+Zg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jvsu8bk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 13:03:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-468f80bc8fdso2576921cf.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 05:03:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738587802; x=1739192602;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mX7IfXj8e+kxJnyMsONTU5RjQUK7rzCN/ci7rHKOAdE=;
        b=fA+UiYAK3L5M6SplgfUHCgu9mUSBSNER5osEqug7B8yPX8mH3fZj68YqvyhFwtWvTE
         G3J9pA17ZrdRDP0BpHbjGloJwtND8P1L/Jbdi5BTmI5AZxmxnWZrszBo6nnyZWmdPiyu
         CNDrhwelJIXuuIRghdzGxvS0OecT0yeplcpQArf/7qsswYgaqXnYmGVfykFayk18Cs6K
         WyF4SebPl3Z1PPk54uLCDvrOe+Q0crw0qaN4V7s29m82xWBYosz8uW4YRgrD1+wFaw/C
         j1VEIOmGf9rIefUKsaJ8g1y4BlL7AltNiyPTEoOPzjfoHIRyfymv1LhKtutdt9BL9Tq6
         roAw==
X-Forwarded-Encrypted: i=1; AJvYcCWbI6caw4X48eGc20OfBqIcMIh4mFvAhP+cGFsFOIl5E8x46QmUMFx3BSiaWedj/Tkium+q5xWJ4pE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOGmcCTcc8uyqeaGhM2wCZFEg2Z2kIBzcy6FOqX0I4s44YsLYU
	Pu5zJ6DVH6a8p2oa0JYDHIyF3ibAsJ7J8Ni13d+Gy2Q69DA8o5yxk9XnpwTMCcANvh2VrXQHHmT
	sGDNa0tpBI5tuZM7vR0sskte3HDeYOZGGVM8n6oozD3u0K+W2Xw7LZbl+25FnQtAOOghjXcE4
X-Gm-Gg: ASbGnctpw9591CsjNekuuSeXNn1TFfbNhsaN86f22h/XsecULQGVsDULozJN3/cTNfS
	g3q7ESpD49/EIY+JQ0Fo+C1riCzjYD8QKEgYirwuiIIho0C5s8lWE3kD7fy2hBg7tSYI8LnB0wh
	bxEjOdJLYvifS2kZ9ZEZf6Uhvyi5YVzz0Nae0uxbVFuvL4JjNFMuNIRzo+C2NQmrmzpU8RHBmru
	0cmngwwre3PUXDyI16/eNVMYrMlJlu1YcnK4Nup1C0hS2tJakJkvJ0Psrla73fOodJF81Vk+v3L
	/98/YMvk/HPaFCWKTnV/0plNlSXg+rjHoa1y/5r0JfbsE6r15o94XEokOgo=
X-Received: by 2002:a05:620a:198d:b0:7b6:d273:9b4b with SMTP id af79cd13be357-7bffcd8bd6emr1098437185a.10.1738587802305;
        Mon, 03 Feb 2025 05:03:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrZB6OqHiWRJ8HOtNHhQ5KqKCDHZxHykXb1U1YPH9wGXVvU50wTt//rEdVCP8JTUwiZqblcQ==
X-Received: by 2002:a05:620a:198d:b0:7b6:d273:9b4b with SMTP id af79cd13be357-7bffcd8bd6emr1098434285a.10.1738587801762;
        Mon, 03 Feb 2025 05:03:21 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc8eaafa38sm4639434a12.76.2025.02.03.05.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:03:21 -0800 (PST)
Message-ID: <3ee057ab-927c-4eac-a933-a14a5849d66c@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:03:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number
 constraints
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-2-02659a08b044@oss.qualcomm.com>
 <20250127-hungry-bald-groundhog-4f7d4b@krzk-bin>
 <96c4af07-6adb-470a-8cbf-784bb544ff76@oss.qualcomm.com>
 <0ec25b21-9a1d-4c4a-ae52-6bd1c3018f4c@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0ec25b21-9a1d-4c4a-ae52-6bd1c3018f4c@kernel.org>
X-Proofpoint-ORIG-GUID: mTJV8WQngpA9Gtp-iSsi00e51d2grf1D
X-Proofpoint-GUID: mTJV8WQngpA9Gtp-iSsi00e51d2grf1D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_05,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 mlxlogscore=999
 clxscore=1015 impostorscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_050325_364321_F5711037 
X-CRM114-Status: GOOD (  14.59  )
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

On 2.02.2025 3:35 PM, Krzysztof Kozlowski wrote:
> On 01/02/2025 16:56, Konrad Dybcio wrote:
>> On 27.01.2025 9:26 AM, Krzysztof Kozlowski wrote:
>>> On Sat, Jan 25, 2025 at 04:31:18AM +0100, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> (Almost?) all QMP PHYs come with both a "full reset" ("phy") and a
>>>> "retain certain registers" one ("phy_nocsr").
>>>>
>>>> Drop the maxItems=1 constraint for resets and reset_names as we go
>>>> ahead and straighten out the DT usage. After that's done (which
>>>> will involve modifying some clock drivers etc.), we may set
>>>> *min*Items to 2, bar some possible exceptions.
>>>
>>> You drop minItems now, so that's a bit confusing. If all devices have
>>> two resets, just change in top-level resets the minItems -> 2 now and
>>> mention that it does not affect the ABI, because Linux will support
>>> missing reset and it describes the hardware more accurately.
>>
>> This will generate a ton of warnings and resolving them may take an
>> additional cycle, as I'd need to get things merged through clk too,
>> so I thought this is a good transitional solution
> 
> I still don't understand why existing devices now get 1 reset, while
> previously they had minItems:2.

Hm, right..

Would it make sense to just remove the else: branch?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
