Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C74DEC9833E
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 10:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nm9CceTqCoyVP9tW6XQZTjPs1Sfu5dmPnaUj/HiaYr8=; b=cC+uJWXhd8WjZ9
	C7N9MIkiwdzcWf972o7j954EgwKLakMfLT7/ERR+3DfCihZWMnQ66nqbUoQ0QY/Q1buD5dfUJXgHA
	4oJI3cXrZunAT9EMZUyFmEhkRZPgJugxV4L8ga7D/GNgtr3FLpfnHarPAPfZgCdO9Mgh6CdaV8PAD
	4GwWP+ppcJ3/IklNT3pVOTMVq5BHs//aBat4tGsIioA6OsQCMVignLYgoqq8SEYw1yayIDvuDNpwP
	5EwKK4HLD1sjv7w/u7cdz5Fk2wd25LBcJES6a52lepQQEJeScKqU0deJWGM6V9YizSczN0b5kOzS7
	xtND/ZzcBzDtGZmDVLoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB92n-00000000PBJ-1EZC;
	Mon, 28 Sep 2026 10:57:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB92k-00000000PAj-29g0
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 10:57:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68S9MjMT1213514
	for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 10:57:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=S4yLLM7uCYQket8rd9Pq6dEX
	97HjH+y8AYJVBdz3Q0E=; b=jvnTlAw2/E+rAGs2X7Wvf5URybq+Oylk43sy41mz
	wrWJMQXat9HZPX6PbNjPv1nuHWWPzgdBijazlIbRtYOpBMWZWV8UDNm1iGKME9nk
	gSAgOULoCVQh7Mmzcwycyu3ceN7akynxUtzIA7RpqnvWLOq/sdW16xG0XqZPEIBU
	+1FH7Sb0SJFX4SYt0nEJ7AM/tFKv6By71Y6JeWO06Ah7Sib5rrfFezTgYwhcn0db
	p5IFQOF9fxBiYEPoG3T+Gzy7M53raHJzPXAflYqbhH39QdeFZCiW/w4s7tNrjMFp
	uO9aH07nUKiBd3s1SC+iPmKp6i8kyEjznziTOajnxmqK2A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gyjkxh307-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 10:57:08 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38dbf293831so4504312a91.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 03:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790593027; x=1791197827; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=S4yLLM7uCYQket8rd9Pq6dEX97HjH+y8AYJVBdz3Q0E=;
        b=Dg4P7z0cZ3f/OwhcOvw6SzkYXWn8rjc5g1wfZTWl0NFKxiPWEawhH2IFxf7FR1RbY2
         zQCWJ3KIlhDvm/SmHVQifPkcDHy0AFgnIB2jB+AwwVD+lxLLWxzB8Z+ZsGD5jPU3wGzU
         cApe6SHuWkr0tt2zYBDR3H+YBZsPzkAX9Re5VQWkRKgj5TWuUNDIdGuztcXfkqanwSJN
         YnXkMZMPUHvnbp+J1kcsKCC0aBR6zymn+1HtKdnbNawBMD51jj338j79HQZTOGMgu7ZX
         EYnM8AIyC6aAUYYitEKNHmsSiTQbPkj3660zUJYObUsLF2wn+etkUN9aLjyKc3YKEpBQ
         sFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790593027; x=1791197827;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=S4yLLM7uCYQket8rd9Pq6dEX97HjH+y8AYJVBdz3Q0E=;
        b=kL60AqpNiUBiSZ7dSOoUiGWOk6fOU6NEKAqRS6LWQOU4DYMCgNNuzZXS4RnB7lIB4J
         ka+kxSNj0C6R1GL2psMaFdxI289jeuQJaO1ORqArINeaD+MOpaAiSYXk4dzrH/Iz6kZq
         M44r8JKsqApBBj4R4N0txX9AQgW2pTQHvgEdGeDT2lq/5Zdqkr2bdZPGyu0ijvI+t7FX
         r8vQQLGDWSuhrkvmkIuZKYmWrKGn3bqhxj09OXzKDfgVLAD6UBjElI1IvcfXQPQWBR9P
         tEprOO66oy769jzeRyaV+IJdPJSo6EMRbf+kpBiyitnGjWWNGmI+ysEUTjvNJsVuxMAj
         BJMQ==
X-Forwarded-Encrypted: i=1; AKwUvBydAn5ulkPYPJntymTpEG+YTqSA0BbKhS8MimKFuGyQ4PfioSmc6AXT9yhjfCUQIINuwA6rc7Zaehs=@lists.infradead.org
X-Gm-Message-State: AFq9FYIjaDrSJdFDhbrtYuFpekQnS0N7Spl3RUGH/I4V+IMqjeVt27di
	y/82im1i13HZtqFVav9AoPuU4VuXGQK3XjKsZ2BScfXOJs+3iYDQZ3RqrF0uwauCzd1FWhQvKSA
	j6PcyatADHKaPPtTN+MMJDM9VQ4k6f484UkQXkZdfY8ViIeaub/Jx0zOeSRAqpq9pRAWC
X-Gm-Gg: AYBFou1ChkIaoHotGpUAKTEfq/GvRmZSj3ZbdNhaSuVGlG8YpfVTUDI9cUIJHkZv8pv
	kNkhaQHpMH6mGeqWmoCS1MBSDs55vHpeapvdE9GD5LZncN0mtDhWG0qm9btDiji3U9mH6b4y1TI
	yC8PF2bfxSeS3U1JTnRxTuuZLjDUp5olWePo1iIGgLFKVb2fG79oPivaOuaSle1gn1+eNhp9i2O
	ZkMLprOvDwSKncEd320LqCClvDzrTpt3Fd7nEUDy/U9WXRF7zIJu619mCB2pBHYjJ78NMddAE+K
	dD8Tg0OWmRmiSaH0PdVO1E3uKvZ9F4zeV2lSSgXy1Lr5JEeWHPGw8+X/nV1N7hkzGQvuW//WAEA
	q+uZ82edE8F7A
X-Received: by 2002:a17:90b:3c05:b0:3a0:e5ed:ef99 with SMTP id 98e67ed59e1d1-3a0e5edf00bmr4635290a91.45.1790593027289;
        Mon, 28 Sep 2026 03:57:07 -0700 (PDT)
X-Received: by 2002:a17:90b:3c05:b0:3a0:e5ed:ef99 with SMTP id 98e67ed59e1d1-3a0e5edf00bmr4635259a91.45.1790593026762;
        Mon, 28 Sep 2026 03:57:06 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0e7036e3bsm13347868a91.13.2026.09.28.03.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 03:57:06 -0700 (PDT)
Date: Mon, 28 Sep 2026 16:26:59 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add
 Nord compatible
Message-ID: <arpH+9ytWKFntjiz@oss.qualcomm.com>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
 <20260928-gregarious-deft-boar-e776ae@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260928-gregarious-deft-boar-e776ae@quoll>
X-Proofpoint-GUID: QwFA1INcWZ9YI3BfcKA3BR9-NEmVPPdI
X-Proofpoint-ORIG-GUID: QwFA1INcWZ9YI3BfcKA3BR9-NEmVPPdI
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI4MDA0MyBTYWx0ZWRfX6hF1f21I7pyM
 bMTVYOtT5Xwq5LoxDTmgdtCdqnj49o1t09fG8RskLOQ8kekusQrYJgNEbSPcN/nC3Wk66OWpCv1
 uz9Mx8xO/LOnPqfP7lzkWRjE/UkgyIA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI4MDA0MyBTYWx0ZWRfX3KND8N+UQbi4
 s1kqPWqmqedwxj0qzmY+9jybpLPifVhpJDf4YE1jtpj8oxp5e2IN6nEULxLuPL1c5fjmq++cg2x
 IvC4ALQqUIKyjxTdGI1UlFRJGxyjebdFTLLDtOlJV4tFg422irfdZRyy+RGsHBXBQEyp2sJhCEW
 J8DzZpNSaI1PxlvNAWafIW6zqKHFmK4ImXyslDAwxXgW8OPN/MvcMFDrZ4JKaZARwOd5iJfWkl7
 ytVKoUQI7cnouxmif6kQRIt2DyzM7UjcYw2/2pPwgo/rruCAHecw+4+8jth/gLtuZwlHTFpLUR4
 xHqfu5pgwkdVjU41ESiwIPcvq2RrLxirlwi8o7rJvVw2Z2BvnKJ7dZs7DVJuz40bsufdJ9NtXQg
 K2/0Oj1ZHXhTM2f6/R5zK0WtXYvIonVUBiDxcXWV+QlWt5B2/TZyEg6pxE2kxoJl+6FsRBpJNNa
 TNnwJV7HeRQfmYR4ydg==
X-Authority-Analysis: v=2.4 cv=QZfzLcbv c=1 sm=1 tr=0 ts=6aba4804 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=Sf7_UopSgax0LG51KRsA:9 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-28_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609280043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_035710_678411_11AF4493 
X-CRM114-Status: GOOD (  14.54  )
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

On Mon, Sep 28, 2026 at 12:16:45PM +0200, Krzysztof Kozlowski wrote:
> On Wed, Sep 23, 2026 at 05:34:17AM +0530, Mohd Ayaan Anwar wrote:
> > Add the qcom,nord-dwmac-sgmii-phy compatible to the Qualcomm DWMAC
> > SGMII PHY binding.
> 
> Why random order? Why not enum with existing part?

You are right. I will group the stanalone compatibles into a single enum
and sort them alphabetically in v2.

> Why not even compatible with existing device?

Nord uses the QMP v7 SerDes register layout, whereas sa8775p uses the
v5 layout. The offsets differ, so Nord cannot use
qcom,sa8775p-dwmac-sgmii-phy as a fallback compatible.

> 
> So many questions, yet commit msg copies subject.
> 

Sorry about that. I mentioned the QMP v7 details in the cover letter
but forgot to include them in the commit message. I will expand the
commit message in v2 to describe the hardware differences and
explain why there is no fallback compatible.

Thank you for the review.

	Ayaan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
