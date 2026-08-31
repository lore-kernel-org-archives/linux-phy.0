Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6942C624CF
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt+zT9iFfPqOxrRBcHOC/8llSSTNu1vSah582BBHeX0=; b=Doi1+oCK09sbVj
	dFJrLzpcxI7Y+97X1IILo536GQOdVc/MWPkbEDT3NkxH7bd58XspNU6AgC/x9/4DeP8+5gGXyoJQi
	zyEg9du+UjQmm4PiCEKOaVKdIThOsZo+tBr/TpdWRlTv0FM5T2HIf1NAfJt5ROsM6vwhRVom8uGSc
	uhtRnBiJMkDguVUuAJy403Upk/k6/VEk6VGvRESw8lwEr1+4hoRWvB8mOhJaoiQR+40u3DuMNSc+B
	y/0vxS6HsN3rb2KSS79HinHJ7sflxHUh3YEnvgscnB8NWzAf7vdeCRvr24vSHnjL56rPa4tto2loO
	bACTtXh4Ydduy/vXZQKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12SS-00000009ZSp-2BdN;
	Mon, 31 Aug 2026 13:53:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12SQ-00000009ZSB-1Opl
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:53:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VB9wuq3447039
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 13:53:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AUqh2X9awgVdQ5KkHdaoibkAOyLtmCtEGhzRBJfqysY=; b=C1gvb/DH6TlLc1AZ
	iAepWOve9Aa2BzSBpYQW9XFNuQbQIzzOgtB2ZiHWIyY/ZKKySSR0Eiz/u0pb4BM+
	638PgobIVBl4w+kud3x+1X4kg+BFSPzu0VVMRfDGQz4PPyHo13LLLbKFdEQcNgkK
	Pgz/rG4DswvK1euBuk+EDrYdrFCUB/HRZHz98q+cxUPKwAfEVuCCWnw0RppaMUJr
	o1ioTrh9XWqoize9uODLrJmPPNI+a/hwKPh1DG4ijNeczR8lgJE7y0jB7ZRqzNzM
	KZ0WmH7S1A49B3yGLPEXovTGoIq2pzUleAvV54CnC2E29N4KiiDYX3BxPy9X4KH7
	gnbe9w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6rb9400-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 13:53:53 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-90c8da50f8dso91534416d6.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 06:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788184432; x=1788789232; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=AUqh2X9awgVdQ5KkHdaoibkAOyLtmCtEGhzRBJfqysY=;
        b=Y2xLg4b3lUb1dXJCPPaATHh3zaXnPYOEOr3WfM9gJjdW5ht+onY0EbdM89ixzocUOw
         KNOM0jGwjTjq2w7yLkzkkJyyC1Jh0O73Z0zVlG+nS5pHrRq/68wyS0FtqZfFT3bipcqo
         mjWuz/ipStp8h2zn8iIjX1n1aPQk4ga+CHTVd/8AG1VvKZkzyH6Wr/Yon26f25L87DAZ
         6SkgS5cB+QzggUll9aiqGwfE3sxdgqrMep2SCOkqw2RrlSCHAKEOLOQqQxyv02N5vPWB
         hJIhdByQ3sIBad+5XooekmW1ufMLJTprKt5130ZBFbuDdMe5MpYTOWsCGjswZtoqd9CL
         TYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788184432; x=1788789232;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AUqh2X9awgVdQ5KkHdaoibkAOyLtmCtEGhzRBJfqysY=;
        b=kzrchPESg9uFh3FuOjfXpWthx/AH3Q3CJTr0GX7gN/sRze0bES9/rb+G01yFeJyJjk
         JfbnKEqkd9C+KilEhbvUyGfFXN+AxzB33QMxw13RN6Q4YVtr/HM7ESCI+YfL1uHizsOJ
         Mcwbhpk5HJP5gQG8zZfKiOUg1CLSFtpju43DJNC3HonHP+7ipAfIPzjbR8yqua4u2QYz
         T3WvdtYZdhg79QQ9DTz1Gc/qGVQAYUm4JsNjTMDVIukrooU3K9O9YvAG7YWcQhEgDVTV
         g8ngZ9OwnUY1O0ND5QF+P4vQIO0SuyS3XtYDN3RuE3qIUwb1xoetcPd21dkaIKlnX0Wy
         a6qQ==
X-Forwarded-Encrypted: i=1; AHgh+RoAjuSbMxYfOAE57gh8C6pDChOkV41dEVygLc5KNSiIos/qOObuQL9mpAhqJWdoc/QMHulQZR/MWSY=@lists.infradead.org
X-Gm-Message-State: AFuF++lkVe+KiFpyyg1mvghkLQA/sWgNs7a72if/sBiv2MhT/TH3nBEo
	ienAIIQKptrdedS+O6KvXAWfDcqPafY3wMb3GNsRpmcd9F1vskQgMvAADCP63zCn0hvhR4bcaF0
	zp9jRSEaZnwUDuN0MGIl3riMyXFVHW/tv9zQinA7Ze1UJUq7t+fwwfXgimdlcpZuEEHEj
X-Gm-Gg: AR+sD10WSKASgiCt3SFrcIhP0xcjf48T4nunRkLrAONuQjj2QczZcJbnQofkb5aae6t
	AoVafAoAcSaBYGNNlHVwqW0oW+EuvnTzA9mj4LkTMRY2S8MrWvtIU+F0MjhskfikB2wK8cLTQno
	sAtfXWuKLbMOl6LVwSb6KmY0nqM88LmKxIYvInscnpF3rZZuBBqxXyWiGbiU9snFLnUSj6Pje9N
	ekPhmV8aCi/VqdGPFpyiqL3xlsTh8LVAgUs2ftB27QGPVWDts/iqXFmWYko8pVlRuk/8S06Kd14
	pR7HNx4Pv69LVM+Gj38I59joWrb5S4JgSjJ0HgdiKG3lm8WiIURNEJs6NJm/yUR/cr/75Kt50zE
	i3+RF/tJYW3817MnOe9fPtqC+9lND
X-Received: by 2002:a05:620a:19a8:b0:939:f89:3688 with SMTP id af79cd13be357-9391397dc88mr2712199685a.42.1788184432082;
        Mon, 31 Aug 2026 06:53:52 -0700 (PDT)
X-Received: by 2002:a05:620a:19a8:b0:939:f89:3688 with SMTP id af79cd13be357-9391397dc88mr2712194585a.42.1788184431596;
        Mon, 31 Aug 2026 06:53:51 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49c5a903eebsm181458645e9.4.2026.08.31.06.53.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 06:53:50 -0700 (PDT)
Message-ID: <4c9c442c-b1d5-45d4-9a0e-5ae7c10945e1@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 15:53:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 05/12] dt-bindings: display/msm: hdmi:
 Add Eliza HDMI TX
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org,
        neil.armstrong@linaro.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, conor+dt@kernel.org, vkoul@kernel.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-5-67843277de17@oss.qualcomm.com>
 <20260828141223.1BF821F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260828141223.1BF821F000E9@smtp.kernel.org>
X-Proofpoint-ORIG-GUID: f65jVPK32gyDOPvqWXJx8_bnNbZ6f82-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDEyMCBTYWx0ZWRfX0Pu8sG4gt7oL
 UjHeILQzralPt3PGvD1a+VOFt1wKnJieqfGfwCudGRJhwSGQJeGYLfcn6fJzrazGHG/x2TON2gg
 5+20RKb6HlZeSEKnqgK0xMPhHMeAPsPxQF9sAraSeD/BrBPtRvExyerV4L+4ywO7DeklyN/mBJ5
 yKl0mFaIU+zJhBPZWTwMTDX/OD+pmWEV6cmM5XO+MrvEfUVmTOdGTEQIZHkL/JP1KlR1A0wtRMR
 zlZ0h6v7/ZD811UUP3bOjKQfqu7VppZz0qgIUSDyvfe6w+dBwOG+TfBFbxkI7cx8Ta54hUXUbcq
 Nxmy9mpBA6PG8BGPXKXIpwbHr98Z9fZ9mOoPd7Edne+Hwo30CBID5tTMx0Hv2IZAtRVgn2cVFPD
 FXrSwdn2F2gPIWKYdnKk6yW+lNeKfgMprtFF52lPj6JaZQ+vBfH+YGmQKSuBfChhd/d/poX/9Ao
 WRaQvf9mq17aWYgZKNA==
X-Proofpoint-GUID: f65jVPK32gyDOPvqWXJx8_bnNbZ6f82-
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDEyMCBTYWx0ZWRfXxSu8KqKmS4/k
 78d2LxKi2Xj17arwpYiWaXiJsjiaRFU97zN8U7IYB9+TXVaF44s4WFn23384UfhSXcl28EROsuZ
 cmiOugO3QVrr4HxDpUoDM1GPuJNzmLY=
X-Authority-Analysis: v=2.4 cv=d/fFDxjE c=1 sm=1 tr=0 ts=6a958771 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=ryD-1BP75uk3LzTGFywA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_065354_391758_9A13BC60 
X-CRM114-Status: UNSURE (   7.12  )
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

On 28/08/2026 16:12, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The conditional `if` block for the new Eliza HDMI TX device uses an incorrect compatible string with a duplicated vendor prefix ('qcom,qcom,eliza-hdmi-tx'), preventing the schema constraints from being applied.

Ack

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
