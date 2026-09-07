Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96D1CC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 09:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jIAVYb/g2qK1lHymPPAXn9k0xgaEO8aHkUn3Otgopc=; b=GpiC2s1EaGBZsW
	9og6egHAs2s84biMjakhgYZe8w5Di8JZUjWGNlvka43CVche+QoUaa0cZb9f5lMithE8cpF5GmSn/
	JEEOYfI7hgaM8VPRSfQi3DUcHGY/yyPtxmWcAWxKJr5dKB4sa4b+K7RS8W1sXhvjzfb/rqUodmQI1
	F+0cG5O3qSGON3qxQCe8ZdAHjXmPBBIO0Wi7fhfpxu0NjIQA+GixqH53kxSTgx2UPmFnuf2WMzr+K
	wZja5oDcEIzjwG+70Aojk/88nwU0YswwHR/EmawUk6Ex0w2LrIVTPze3gHNKggtZ7XFKWdN+4bsr2
	39ASM3pcKsKWeZuABrDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3VuA-00000006NlX-3ZSi;
	Mon, 07 Sep 2026 09:44:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Vu7-00000006NjU-3WHc
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 09:44:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6879bV3n3189567
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 09:44:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tsB9Vj+XTt64+OVf4kxojZVD84CZESJvrBN7JqUuMIA=; b=ADqQI+Rc9/PByyKr
	oqA3W2qgI8GFRt5Vm/sZ/IfoqfXK5NyZUeaVmbLWnYDF0LbkofGkAJAy2HFl5c4E
	a/YMUUQQpCbvrn30v6BfTEnBxlQxcMmy/tS2+Pz7KRLyDTjYES0nnr/4nlMDeEk/
	W/mhyL/12dR6dJX1LIfnVwfEoZ9P6+v2dlb7kSMzN/FIQp4mfIZy7X+ohGKGLK0r
	wJTfAeoeraGL/kO4nACcCgWG6yQynq7TcQCouNf7XZIeLwqNydxbEUEtfDhsJyuO
	lyPCDkc3ZL28acIZr8JvRrHqis61gtzNgOpe+bEjhZWks+AnL2EDPtLqiPgOqwWl
	ifdUnA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghtfx04n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 09:44:43 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc21bc2923fso4183383a12.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 02:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788774283; x=1789379083; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tsB9Vj+XTt64+OVf4kxojZVD84CZESJvrBN7JqUuMIA=;
        b=JgoHEA4XgUYKwuxQ46JjAMBNaCob23so+/rdEZULMWGgMFuswnWu2G8xLlWZlvHnr1
         keXYAfZ623b0ICuiHut2mMKWMb7Szvwmt0HpTjJhU6XUBm3eY6MBiBKkL9GFdi/OaH0q
         IsWlmCuD25B7x607psd1GIEdKRiJ9OHibZ1F1Vvqg1/xfpe9P6lof3liEI0x/GsPqjWU
         jS/1Iy6nhbyTHxOA/1EPtlGve8YJqrtHoHAUNV2invy0LFmaodLPrVyVCHPREfvLJYU5
         xG/q82jJ+bZShgntIKdsZvM++aS1KoAxu0pFgtNrFwIdxfI1AnSHtDc/G3qAxvuZvwlT
         6BvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788774283; x=1789379083;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tsB9Vj+XTt64+OVf4kxojZVD84CZESJvrBN7JqUuMIA=;
        b=T+o/4NrA2GX8CimXZZJbqnYNx+cAPG2QYBlLGkKpRuoTmqNBaolR2GCdmvkgTHy+Il
         yUKEGm8lDWK14WOE7goTIk7egWZ+RORq/I/XZxitFNEPiCJ6wKDnyUZD0L0a4rQIDiiN
         h8rR0XOodm7CQFPuIDAbaafGNacUZao07DpUTHYQ2o6WprE+vN5/nVge+0IgGLLBGdEQ
         n7X9oQgBZfDnqCgWj8DpcBO0cKVtgqEHElOUA0IpmfmpAlkri0eNsIcFYRCnNTTddWEh
         yPoSgPD1pMNU7641tBephl74eHGMPB4RBFPVkm44om4gYIMmrf8Cfqm8+3a9D9gt2Iea
         AbXA==
X-Forwarded-Encrypted: i=1; AKwUvBzL5Aw/NNKbDzY68xry8siVCgGk8TwToUUbUUS5MXa0+i6dqiF+eukOkPb8WeFcYf3wHJM0vfp/YZM=@lists.infradead.org
X-Gm-Message-State: AFuF++n/z2ETjej3ykKmeuv50WinPpmcXU/UAeG+AZ54Ex8Ge2L9BTDC
	yPgEl9bUQgCvd5K89eaAL23XzDSdcSgorA/9CRKYH0AlX/doHvzcltsSLGqOxT1tUf0+cOidK0l
	1leeyFNAutePsXS/zU/Bv7ixINVk5mW/I8lgAl7dAwqCkIjFKEUdj/lwnvJo8XC17HAFO
X-Gm-Gg: AYBFou0VoYDsFQk+kzh0wlLvZN16f+sDis4tQN8zh5bxrMvEVqNSSDuKMaFYH+AYYiv
	ZoYZ0odyLg/gUqZqEYyljjKfSIHS23CMAfjnkReRi0vhspQtVoMU/9MWXDoR0P1z5ye+WMS3j1I
	FQx3kOhFPRvo+Dd0eT14B+OBElk9JrV37AZH/wJVmOC/62xykpIoFXHYzf8l43mTzBNIGOuslTw
	PBDzAKd1s/TjJ+x50CxK0gBjsNUQUTVM4z+7aHIz472xPX7n5/flACHraV+wQr93dePYbl/zOVt
	Icn9qOc67n1OQZUPztgY7DiFU2WnTJssNQ8rD+2GPJxq4Ltzaznkkw2eubaHnLT844Vrf6F3dah
	p2Y3Q6bBakqeH6HRm+Kw09v+Jdg0C/wE=
X-Received: by 2002:a05:6a20:7290:b0:3cd:9f99:3381 with SMTP id adf61e73a8af0-3da39878551mr32148265637.0.1788774282508;
        Mon, 07 Sep 2026 02:44:42 -0700 (PDT)
X-Received: by 2002:a05:6a20:7290:b0:3cd:9f99:3381 with SMTP id adf61e73a8af0-3da39878551mr32148214637.0.1788774282034;
        Mon, 07 Sep 2026 02:44:42 -0700 (PDT)
Received: from [10.206.103.40] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339ac24d7esm41820620eec.15.2026.09.07.02.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 02:44:41 -0700 (PDT)
Message-ID: <fa897e53-2ebe-4322-bf73-98788854083d@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 15:14:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/msm/dp: skip LTTPR init when no LTTPRs are
 present
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
 <315db50d-6553-412d-8fca-a4b4441f881b@oss.qualcomm.com>
Content-Language: en-US
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
In-Reply-To: <315db50d-6553-412d-8fca-a4b4441f881b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Weg8rUhX c=1 sm=1 tr=0 ts=6a9e878b cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=RZhGKP1uXM2L-Qacb6AA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: _cm4xze88pg_x-oFaIMSrOpY-mGH7CWc
X-Proofpoint-ORIG-GUID: _cm4xze88pg_x-oFaIMSrOpY-mGH7CWc
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDEwNiBTYWx0ZWRfX+1iRp4SczteI
 Nf52hPd9JZWq7m1EeXTpp0BzkUwzf1gpSJdcInjhQulE2v3czDTbQ5VwEqZA8/ysP7c3BakBuXz
 bWGW89ZLH1a6IXh4vgLcqQPsjyAEwso=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDEwNiBTYWx0ZWRfX1y2me+7j3U+i
 UNLZICExTB506mdsBkoIrk4KeZieJ6Km54ilNO9egXqVEvGGWZZ46x7d9k64C/EsM14xj6TW+JJ
 YvWkpXm/DqxipkGp6/SFOpQI6LCkpZUDXuGqQ4V3vkaQCvmQ/kVupM59OuRem53YZZ+7LXh4Kv5
 pg2SPyfy/v3Y6vaJYUpmO0VmlJxXRa3+kiX24+SMAdANy/KzWpwspnrNxxAbXcf/NwGzoq9L467
 31b7N2DaoPMb6fPA1PgNJFAQnKtq1G1lv9p6HxMnxZnsDR41vovVS4u7jPaNk/cHtSiq91cbfAZ
 XTnUZXPcZj4OzKBSpO/xWN7qjDN5ZTlcu8HHs9MW6qiskc6Ftfr42RwbtE29HE9oPlmGJ8tknU9
 VHC9zFkRTZ92AJvicLyNZ8HQgRaPn9ay+eM5oSMMPdl2kKN0gry2ekhYasYqOgG29TwE03mk0E0
 OWBd4LwH6FP5AymqKQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_024444_081808_3D4E2F45 
X-CRM114-Status: GOOD (  12.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 24-08-2026 18:45, Konrad Dybcio wrote:
> On 8/24/26 1:28 PM, Saurabh Anand wrote:
>> drm_dp_lttpr_count() returns 0 when no LTTPRs are detected and a
>> negative value on error. The previous code passed the result directly
>> to drm_dp_lttpr_init() without checking, which would call into the
>> LTTPR transparency-mode setup with a zero or negative repeater count.
>>
>> Add an early return for lttpr_count <= 0 to skip the init entirely
>> when there are no repeaters in the link, matching the expected usage
>> of drm_dp_lttpr_init().
> Reading the body of that function, I'm not sure your statement is true

drm_dp_lttpr_count() returns 0 when no LTTPRs are detected and a
negative error code when the LTTPR common capabilities report an invalid
or unsupported repeater count.

drm_dp_lttpr_init() already handles the zero-count case by returning
early. However, when passed a negative count, it still writes transparent
mode before returning -ENODEV.

I will update the commit message giving more details.

>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
