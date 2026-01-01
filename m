Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC64EED626
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 19:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEXXVlnO6wLAfVrxveyBQCNUycDaILN3/FYNcmkY5kg=; b=HwAZcQA5YJ5oOd
	AUR3JM8cEYsjG6He6m3+utd23+/ygCiaJLxLfubYOGGRiRVBENmBMqazL3IxAqovEjWaJFVNA3Ij2
	OTeD0ul2DJWmR5F0gUg9eEy4vrnBw7oUXAD6odIq17pOaCiT9/UzYEGKX8mAw1ZdyQzalRD9J81pS
	xb+mIr+cA7hDqPUYsBB/OZUnBa9t0VlXD6BKzrJGM4t3e7ZuNHqHtHEGpeewoquvexvlDxY7c5fzR
	+cEAdfqtZ9EZcHDIQxGIG45voCpguQ0HlHykKMO2+J6TxwhT8tlQ+sx/g8L4gE2LPLkwdvsGrt6/6
	UBYCx9CxMN5N3nFqdK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbNvj-00000007Rr4-0pD8;
	Thu, 01 Jan 2026 19:01:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbNvg-00000007Rqj-10gf
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 19:01:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601ILiZT2908449
	for <linux-phy@lists.infradead.org>; Thu, 1 Jan 2026 19:01:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tXclW4aX46rZnRIVsSHqBVnw
	Bj3pv8YCsnr1Ohovb0I=; b=dr8/Il4ZBCcfOCcIBsFy3GYTBNndjl/jRLhrBXLT
	utwX/bQWVLpSRpqya2g/N39NjqT1RL7NKGA/FrF4+/RR6IPQmvzIgB1p+8RzvmzC
	X1EZUZ7fWW+Vm6VH3z/Qosr3CA9TI41vthWICi0yxU8OLbfQuH+VzUjG+2e1Rt0D
	s0kRTAqJZK0dFX+i82aZSjcw28sbBArJCMQfaUnOTJyXMfTewVtBRzPbshjfxFAK
	E6aGAFvN00vir4T2AFl62CH2UQcRK522c47dzlcYxZhCQz6q+yKXtvOQp7/EjnuG
	zyVv2z/zOCWLE8PsS9hxBwIaBMrapLe3IFU7iuW04tXMqg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd2bb2eft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Jan 2026 19:01:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1dea13d34so284462311cf.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Jan 2026 11:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767294106; x=1767898906; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=NzNnedqIYY/Jo6aUjmnETpxDgaJnh3+xOxYkcknEPB/pp1BT9wfWFcDgC1k+pBpkjC
         LYZQ1VXbPEhSMlz0+yI//SqiVAkADDRF5SaL+YJPij3Uyj7oiYCjg7AnFRrT5T42bTZU
         BTWVm0e5DT51619dXx67i7qiga9S0X+erNLmxlCME50h9fxNcfZWd5nWsZygUOlToZa3
         mbMsacN9DPayeCSORs3HNvQ7DI7raxSbcu7jSG3wqpivsPD96640i3PE8vJ7YjeNLHff
         qJaqA+M4oB5TBZnWWX8xbClcfJK8+UkThXFuJhJzaA8KafEWRkZjyP3Kcfv+X6s/y4T+
         XFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767294106; x=1767898906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=LefMQn4Pr760JhcOAbJ1/snxA+gpx0Dr3JuwZv61SIuqf98Bm8cnjNDa5LQ0pxGS2D
         oWy99XcW9EUtRS31tvEATFpjVNuEe7HRr0fRxAakusXuYdwkk/Sy2U3Cc2AvieSDJhQM
         WmtDMdmVUtcLwB68ITnYvC1xer8KtEtdd5VA29DstXhZwjwutCIIsgQg9Kf/niJNuxaD
         idpq6SmlX2SOJWboIU6JSTfK02RjzUJLrDzUyISzAUNn9NjUmOqSX1lvc3Gc3FxfXQv5
         PRyYPkgBLggHnhLE97XpJqMmfGN7cL0sXiOhaX5crZ5mwZJdH2xYo/omGsk+qFi93ISM
         sOxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyv2//bW6a+yCft8DBJF4VwLnIzXu58hQ9rIND44RpttFZ5hP+qvH5BJ+ADwUPoJliS9gZa3KShiA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyju8xeglBNrONRiA12sSSp8RjW+Urardunft7cQO2WbT+wP0p8
	g3YSWV0FvEpYDWK/O7tMWEpyTxEhasGjScbLDJDyoUZUVbNqZo+zqWmzz9XkTJEdmuInH3jxsjV
	5V3mL9RLIMGKft2YwC1qXl1EmhIMj1++nmVcsArZ2ImDVCRMnSLodre6i/5s8e9cq2nGg
X-Gm-Gg: AY/fxX79MRkwfkIc3OYfLoG+2XGO4i5F8zL06rA1BuAV0gYkqFIfjfAk+X6kCJxrCJy
	l/wjttx45ma//Se5XBaVpI9wrM5bUefR4FYN2cr0fpZdztTwwFI1I/n1pq2U/BBtUcQ5/9Uft26
	WEsA51gMd0jvfcnK0i5nEug1LhejHetLQO2f4iobynBFWV+34SaEFuFrJyMjEc2PQ4hVVFWLqrP
	AebohJwbU71jAbhmK37Jh15R4khARhnsIdTu/eiQgON1mHQYziEaKJ4cP7qyCLTQs3ezKVz80GB
	LFnx/NEMBANf4FiUUbnyE6fZPOxbfLidrBU+7zQ+k33GPjdwM2eR7PwFsTYIA5YmYvoN2wermeW
	sC7BSzrpurKB1mSzhowQQ
X-Received: by 2002:ac8:5a41:0:b0:4f1:b795:18bc with SMTP id d75a77b69052e-4f4abda1b98mr687311291cf.64.1767294106176;
        Thu, 01 Jan 2026 11:01:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcT9eU1RDafnLHwpeHbUaQmXUFAUv5FdN9bvkmWpAiWSOAl+7hR4IrqdLX0iPFDNK2rR8Xpw==
X-Received: by 2002:ac8:5a41:0:b0:4f1:b795:18bc with SMTP id d75a77b69052e-4f4abda1b98mr687310241cf.64.1767294105539;
        Thu, 01 Jan 2026 11:01:45 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a60500sm4293397466b.13.2026.01.01.11.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 11:01:44 -0800 (PST)
Date: Thu, 1 Jan 2026 21:01:43 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
Message-ID: <ixqokoldggtkeinosfr36oeq3pzwo3iiqdw5bvxwag7hxpkgy4@3lvrj3bdjd4w>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-GUID: qjpmdgLWR9nwlgWPIRxQztujc3qpp4aE
X-Proofpoint-ORIG-GUID: qjpmdgLWR9nwlgWPIRxQztujc3qpp4aE
X-Authority-Analysis: v=2.4 cv=dMKrWeZb c=1 sm=1 tr=0 ts=6956c49a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yu3_NAM81_lDL6LZg7cA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAxMDE3MiBTYWx0ZWRfXy6IHP3/svX4e
 U9Zz8gR4/PMu95AkvqU2LfiMnHElO9aUoN6yyT7qawplsvM9viVwDbO4lc3kq2LCUPdHddahLeN
 LfYZBZmTGZpDRoZbM+DVpa/RA/6TIoS6PettcuN3yFyAeCM5gMqG1NeOv6JTZJL+XJlO5sWzP4I
 r4Sb7WNnVft6C35NVAGc10z2Psv2I78FJ+0ZO6cS+mC8MEP6bZezj11p2MZySpT27APamfNZYGP
 muqEPC3gBeYrcIM6fSwYacY0bg2T6o+C1lv5ZfraeiJS9UOx5QJefclTkkhnJn2Y9LQ2ZbZqDh7
 qyLDBXVLXLqdgzgBZTP7WA/RZxOR3wxEkyrA7am8U4/IKbvdHIUGXSLtoi7bd3qTyszLuoi8OL+
 eA/il6O0T9wc8wSCJTg5VAPtHf+gMc4FhEmek2z8MHYsAwFjyBhhc1g59llx6Ph6HayE1W5X+/S
 RP14kr39+T926B/e2lg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0
 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601010172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_110148_398032_DCB57126 
X-CRM114-Status: UNSURE (   9.09  )
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

On 25-12-19 23:01:07, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
