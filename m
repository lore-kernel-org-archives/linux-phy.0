Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C36DCCD193
	for <linux-phy@archiver.kernel.org>; Mon, 20 Oct 2025 07:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uW0JK8VGzzJhAAR1LBgctdP5h0QiH8ss06WJ2jA1Ks=; b=2DQKgBjS4TcUT6
	bKmZndhbaRvIARG/topQtfLAZd5vyrEy2bNrNV0cKro3fwK2sR66mPenl/f2hxILT+Y/iiXOWv++S
	ZWVoYeDbhGBijZtjHBPYoHDYJFgHGZSG5pAUo+BxQbvXMjKKGzNnhxCnI6zQ4P167OoQ9iCEHOLgH
	Bb1bD/TzVUUq0iz/czL7mr2Z2EOhGwMawGWRlC9BOjLYhJ5T6T6NhVixUPdad4ANzlry/hvAUUug5
	QBRmCAcXbAdqqdvwQsGniHOXZdAasbqdzDoNvx0CioKtM5CIenrjoPYBt7Z8HAnskX+9d6hm7IyCG
	gEf6BLyQqdCv1dD/glUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAkiS-0000000CH7a-2bSa;
	Mon, 20 Oct 2025 07:54:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAkiQ-0000000CH5u-0yFi
	for linux-phy@lists.infradead.org;
	Mon, 20 Oct 2025 07:54:03 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JNst0v007555
	for <linux-phy@lists.infradead.org>; Mon, 20 Oct 2025 07:54:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LM8Wb4xKnXMWYUb3EVKiXBuMBJRUWQkyl4ilJog4k/4=; b=iyjpDBVcH7Je4rLp
	cYkGTjynusYe4ujH/nbc88urUNJGZqocwL+V5VkVIkzwOMAqDlx676bhMLz3I2Zp
	GUZgzqTEwU583drosSwQZfmc1Tt0LgXwc5g/z+dow2CZjpsWkHmphGmBLcp8cOp+
	KgkmRGQYAyUbAD2ujideYQyyh7x3w4zJrub6jzBgg633MLNmda25muXmeEAO4mXE
	ndid3/A6UzjNBr8QWigJxPjn8wKaWXJVPSTt3oAOKvG+E+W0uy2kBqG1W4YZEqf8
	P0A/1XaL9UzABAkikKu4NqazPWiAtNxQz2deqkaearQUUy9gz5uPg5BqfAOhpac+
	XKovmQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v0kfc96h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Oct 2025 07:54:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-890c743a001so113242685a.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Oct 2025 00:54:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760946839; x=1761551639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LM8Wb4xKnXMWYUb3EVKiXBuMBJRUWQkyl4ilJog4k/4=;
        b=vkVLu3nWXn9MSJCU3Py2Didpvx/OjCUKRgG8/R7VuVtX/bJaKIaFKPvdpXm+fzBBbd
         1tdpgBTi7BC5FHf45egozfn4t+8hMtyvS/nbjZrZ5b1wLFhwohl8cYttUSwgVUVqrr60
         qAPuw+nMPY0VAF5WiYiSPU7PyXFYt3Mcll+KzfSc71KhU5v8qhIjEB9spJRXJ1PnVVas
         lxkgBvhPyQ8xonVXags5+mB356C8ifeo9N14E61gAYjMkhqE8N0DumH85WR9G5+t8KCL
         AQibLnbmEwyR/0fniKS0Y9/wb9YPkQNY9trbuzdDotlRJkoi/99Kvnc1WG9NSERCmIRj
         k7jQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLusvr+F0SzZtRh3n0SNAWjZVjK21uFApXcj1C+gu35bC+DI4JD96rs+qv4OfLFLxVMzl9oFyIfWU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzakqR/YQn1tpzuVwdxqUvN2mUbuWrLJbqQkiOoYDov/z2mXpcS
	IwQJBflVgdfkn70eCelNUYI0ZnjGHsDKac/ySGPsySSOQYcxf4JQGeO88B5H5t4fG06/mddDi5E
	7MOzrM+6Pg8Xm54R8N70/p1Hy2/aBWoX9vvd6p4FwBlir/Y1xuiavKHaOd/cj2UGlonot
X-Gm-Gg: ASbGnctf9AYIAaF7WWhTLloP2I8gKP2KXkA3VlZqae58Wh7fTHV+lEjAkISzSWTfBdY
	L/XFcg/bQj/XbVNrdPJZak7URVDuukzs3gONKdHtAcxJETur41VkPO/IfiP9bt3iUEa8xyKGlfY
	/nwoU6jS4qwSGlAuMiuVfPTgaHbRrtBMYxayVrj5Wp4KjZA9/zRiRCf+b7gN+duegKctOtjxjiz
	9jGbn1YsIpZAZ0yc5v49mWeL5WMWfOHBT2R2VpgcgtE78RqcI4+Y0ofS573dpmix5C7QluweNMT
	ZUDawwTWFMytkgb1JeQGEocQZGahrtA8jiQNj8LPO0jUIGiIhd+knhX46L0NFI4Qias6+CEqjd6
	uOHkkspHUxyX6mdTVnIbrXz1WfWIn5EdfJWHpRJ26S1qNHwOf9ZsZAad0
X-Received: by 2002:a05:620a:199d:b0:864:a09a:e860 with SMTP id af79cd13be357-890707f70e0mr918099685a.10.1760946839343;
        Mon, 20 Oct 2025 00:53:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMZp+OC5Adsa0c1sBHHpTL1fc8+Qf9FzzDHNItwHbY6gNDY4TIc/2bJJHggDLAKLYsjXguHw==
X-Received: by 2002:a05:620a:199d:b0:864:a09a:e860 with SMTP id af79cd13be357-890707f70e0mr918098685a.10.1760946838910;
        Mon, 20 Oct 2025 00:53:58 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8393778sm708060266b.24.2025.10.20.00.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 00:53:58 -0700 (PDT)
Message-ID: <e51e8665-0245-4ea6-8c09-c73004a34a3d@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 09:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add polarity inversion support for
 SAR2130P
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251017203438.744197-1-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=E6LAZKdl c=1 sm=1 tr=0 ts=68f5ea98 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BrIiScFafQzKgqpYfbkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: MS4WA_94wirC-gpr46m0CSY6d8hBETCw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMiBTYWx0ZWRfXxMH7/2mi5qOP
 RiU16YIDxRY/9RfKNOy62e409JP2YvpD0lM3uIZY87spRnd7phKEW+LYR1SJvUBh/sf2fcDOkdV
 em2BARoVPJON7Z5h4YVhkCwGzREkPqFEFyxBYVq3VkjpnDF2YvOLUff1L+sQGfSpbAoePSjq8LC
 V3/+nwDbSYO5oS1lZyHtwinOsZQ6norei0FF7Xm13wnqAPKdnbZr7rY3SpyDCFtTWkKEmHHaPrN
 C1aV/HexZu4mZ8goVwof/Im6YxNivzIapr1EuzW4sviWimd/vurLNDRT5FdRyfn/rAkER91KQZi
 eaXl0ZrCC/p5axJ5pjOT8ghWzECoS5y2wr8ma+zBjCU/LkhYKesHStoiU4B9XwqCuRzPiV9WvR7
 K0LLyhCqYsnNQlmlFFi+JpX2u0jcFQ==
X-Proofpoint-GUID: MS4WA_94wirC-gpr46m0CSY6d8hBETCw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_005402_280875_6EBE15CC 
X-CRM114-Status: GOOD (  10.01  )
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

On 10/17/25 10:34 PM, Krishna Kurapati wrote:
> On SAR2130P QXR Platform, the CC Lines are inverted and the lane
> programming is to be done reverse compared to other targets.
> 
> As per the HW specifics, Bit-2 of TYPEC_CTRL register indicates
> port select polarity. This bit is to be set for SAR2130P.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

The downstream kernel for this platform corrobates this

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
