Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2883C531FC
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 14:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a+0/XV2DadY1S/7uWzxJN5YYMb70sCaaVPtxArO6e4=; b=3Ko6DlG2zabQPr
	SY9t2M31i3SmMD0ocOlR3MiE7/EfIp8ATM0etFNAEgbaO618lfXuH6RrPpTUpLWnQBElTlfCbOIWg
	duDqIfBZPz4MQF/pirWWxrSmIhKjyLDRKE6UXXegx55ouycVNja39yywbh+Ec1OwyBqkwZjv7EAOn
	8MBL/261mlk62xWfhUYo+II8rxdax1lU9sL25j4OeEl/+GYXkG0pPkmZkTyMfFq4U/py2RW2ssVx4
	q0ZJY3GZQrxBcqjaUBQjDiS5cVaa9GtSUyAmn9zmZuFmZhB4QFMpd3bbgp1iK16gJZAOZZ75VXxvl
	yecmCBXgUZ5v54UYjshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLvT-00000002vrx-27vi;
	Mon, 27 Jul 2026 14:03:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLvQ-00000002vqz-1nUJ
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 14:03:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66RDlbpU3895555
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:03:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N3R/LOwcFbmCVfeXnS28YoPT5GraPotTYYR1n8ulF+s=; b=RqXKs65tKoedSsuO
	qRLKyLIUh5stufSeT5VKC1Eukq2TrjB7dIj10lTWSLWT/xKXJ+zGzeJajrbD4lvK
	r8/sWGiERpdyUF8kLuIpb6G4PDNbBAh2x7RoM5/9hzwVNkQUOARXmTDjJQ9DnUEV
	iF5HxGfcBuvz7p9Jt22DOvhwwuilHvhXsT/C+InRETTHaMaPn0EPAZqZ6uqLBsoc
	CXKSw9+rRqKjyNqrNXHTBwKn4OZhFjW2o4LQvVhIe5vNiG4UtwWzxMsM6yZUkitT
	NGg1SsWuaA3OwFo+d/o3AaegX5qJUJ71hurH8Ot5qBX6sQkzeA5HaiXusjfEbXat
	x2pw5A==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fnsxs2wa3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:03:22 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7e6027a5761so1353065a34.3
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 07:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785161002; x=1785765802; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N3R/LOwcFbmCVfeXnS28YoPT5GraPotTYYR1n8ulF+s=;
        b=i+rTcRKJoCSdf5qqHNNdgsJAzChthmUdse+QMck3hu8mFlE2bw1DuS9BrrW6QatJ7b
         2lnVGWanNRw3OqQ6T0nI+3iFI15FUYBT3UhF+fFXT+j4txn4RsxEIQ0btXLP5w7CxrxS
         1SqrVTkpJR0SvqJhpcvxTNNQW7390zIubex9MSrKYQ5ADXe1pYYC6IP4nIW1Gxx8gP3e
         zgdFyU4XEHUuymAMddE+OL+Gqhz0uAMoXh0Hg16PPBgyiwESPlQ5Su7IMrEAUZRfnmSg
         yrWXxxQZQ/kILyM+1qeo8qvtfPTsfHAAYjYaRnhmLlYZYZTQ1jzh0LCWUeAvKpHZI9CA
         FfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785161002; x=1785765802;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N3R/LOwcFbmCVfeXnS28YoPT5GraPotTYYR1n8ulF+s=;
        b=eKgdEeYXK5Zc1n3tTePCOvKil9xn/CtJWwu//ndR2osd5z+lBg1Ubx8jZAHKrpHf1N
         Mb1YC64i0X1G244Z1631ODDXOTv1rsu7LVoIfWnYWEy/TJkPaW9nVW3hYmedeG+W3YYE
         05rANHWx78EPc/5jA+xfkywuMJIDrTiHMaAa/23zLvHvV4EUheFfroMGlFXtGKxZPm8j
         EQ9mTKDtCXLU1IlPKaoA/gsa2AmGnomSip1QTIh0cYvCxpitM2k0cCDwHOogr6ZJXlUO
         ppuuf5GJb8uzDoC756k4ueM/VQ7bqX7c2wJgXK0+UJZRsEvSqLVRjk9zdyqEy36/b51o
         DYCQ==
X-Forwarded-Encrypted: i=1; AHgh+RrPe2QEltG4wpZ1EVuligqTvjaaZmj6KjRleZH2D6nceQbaR19wX++/MelBVsANzYPt9Jl3KouyHto=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6QKpVCfcUtbni345E64DzULietqH4uKswewcBJX4yG0UASXMX
	bX9dU2T/EHMFQD/0429shXTlvfN+YtrdEDFmbq0AMptVG5VWZ49HS2dExq2i7yD2qyO+DUykEip
	XbVNRkBGMpuLVRe0vwyS3Zbne3lv1oAE10YfYeAhDkzLFkXV9iHDZTS1u5D9o3Mdt054z
X-Gm-Gg: AR+sD13Li9GXsWHObcF5kzpI0pyYlGAOaRMNJAMQx5CqHlQKmvxSRqcJvotELNPlCl7
	hNmHcAbyxlV6GKaXierCJlSKuf3RlzOhslc4MIVH75JPnqzMSUU2/tgGGcw0Go661SjC4jWQPu/
	wi98qIlXoPEZ4N14sFj7cbIOmt4d00Yu7GsKZ6JjSK91y+SNJ9swOm1780y5IZvkJP3TJgzUqyN
	93InPj1au8pBBwK0GVDbZMen13ypLHE9JuW8uO2Q236oFj2L6gebhdwTa0sq9GcFyU9BsnIFAMe
	aCFtQfYWZ5DIEmkmhR6glNJ8AwliJ8T2Mk1dMEeX/DqAgdC0ZwzLAMqQwtgXPfOPPRFqOIkfWoX
	kyqxH4tn2eujNehslAot2YO5D
X-Received: by 2002:a05:6808:124d:b0:497:e695:3423 with SMTP id 5614622812f47-4ad528d7697mr142159b6e.0.1785161001707;
        Mon, 27 Jul 2026 07:03:21 -0700 (PDT)
X-Received: by 2002:a05:6808:124d:b0:497:e695:3423 with SMTP id 5614622812f47-4ad528d7697mr142119b6e.0.1785161001130;
        Mon, 27 Jul 2026 07:03:21 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32f1127fsm651110766b.55.2026.07.27.07.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 07:03:20 -0700 (PDT)
Message-ID: <cbbb007a-fe6b-41ef-9930-fec17f40c946@oss.qualcomm.com>
Date: Mon, 27 Jul 2026 16:03:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/6] arm64: dts: qcom: glymur: Add PCIe3 PHY and PCIe3a
 controller nodes
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-3-65c8469c6b65@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-3-65c8469c6b65@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI3MDEzNCBTYWx0ZWRfXxVYFzF98pB6a
 YVPcO9816EaUyL9hzeJQQhTbauV418YIUm+300E/zSPU7ylKb1ZOZJb9vAxRHthpCMsiFiiDa8z
 liPWqPYWJAUpig4iQ2MVNGrW4Z18G7L8ZMV0MO+vakY7/JzXsvDnFxLeayQlhPSz8HlroLOIGJE
 oaIa8kBPuymamGzRqcwz/Q3jgmBxbiFiEhyvTU8sH09lZtd5gATF5SItR/HA5HVG63RiH4YRyJ3
 QwB2CWgeegoTm93+viJGwfqBTenlt3+veRKRAFOblmzgnHRkoO+Wiwig7zEZybnvul4CYycF9S5
 Tfla1LKYPhZ1YJ4uXtiIonl3t4HIAV0IT8IVCdcJPiBgJa6mTVjI6HFmcUthAvRAYgH7T8Of58q
 fOuoAHuQY0lZfLBuxQlmQnuVQQA5xR4i2vy+Fg3JsHhN6bgS8HnNG25QG2tenlaCZNseJ797CnZ
 RvdDWvFz5wG9UnKC1FA==
X-Authority-Analysis: v=2.4 cv=EYr4hvmC c=1 sm=1 tr=0 ts=6a67652a cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=kF0Kh6n4e_L3U_yLb1EA:9 a=QEXdDO2ut3YA:10
 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-ORIG-GUID: yHJYddwM7MQOkYUpUh1lgsdz2fGy7xOi
X-Proofpoint-GUID: yHJYddwM7MQOkYUpUh1lgsdz2fGy7xOi
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI3MDEzNCBTYWx0ZWRfX/jSQZ/F5a3NJ
 RbY12XvAMk2SfNRjtKHII7hRAM0blqLKe4YRPEGUPei5yI3yyb+q7h7t9jjL86gtZl5EeLOc7wA
 JjpIfc+TY7JcOpUqPsr+oE9+skiARFg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-27_04,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607270134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_070324_589396_2700C9C9 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

On 7/24/26 12:01 PM, Qiang Yu wrote:
> Add the PCIe3 PHY and the PCIe3a controller nodes. PCIe3a and PCIe3b share
> a single Gen5x8 QMP PHY that can be configured either as one x8 link or as
> two independent x4 links (bifurcated).
> 
> The shared PHY is modelled as a single pcie3_phy provider; each controller
> selects its sub-PHY through &pcie3_phy (index 0 for PCIe3a, index 1 for
> PCIe3b). Update the GCC pipe clock parent array to reference the new PHY's
> clock outputs instead of the placeholders.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
