Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ECF606A31D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 08:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MFKm6S+J;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WZl00uNo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bm5ySP8r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=faB9y524a58ZeS0s8MEmavbNGiiMdnJsv0QdkFRus5k=; b=MFKm6S+JYfj2+qGskBIT9N45cR
	w6r8meElQ9uw3QRcdkwfRuPoVgUmlZAYbcaX7VUuP1rCSZYZebXDBoiADPFb0oBsPe/bCXBcVfTox
	WlOhZY/RzCL7XZrpKKmpbkxJ3+mKEO0RapJKaR4/jeiAkQH2HyoFKJCmR5ZzrZ/zBHTkt8cLyRr0q
	PmLWQGQcK0M0FARkk7/ZfQUgYkA8KFI9bSdcg+nsXUFCknH68PUCFRyU3pMDJiI8fD5G9VvX4Igfs
	5Zx9Fvs1F6nSfe/agRnSHvy9oheXkwLn1LNqVHbPoHIqziYfJ9YN6RbfYzlfHexCVQFw/PSGNlTTl
	dfek6Gbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcfA-000000042hF-3Oya;
	Tue, 27 Oct 2026 08:36:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcf8-000000042d7-0C08
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 08:36:07 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69R5Z2992350004
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 08:36:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XvY9IYbazDj5cgxSX575pRfs5F9okmqxLiTZfoAtW6A=; b=WZl00uNoBQdnt2S0
	YB1m4Tf03HlEr6meEzoF81gMDGwApPhtgPSv3aF87ZFDmgbZ/mNQ2gzyLEiVHOEq
	bPfMm4Zh39MH5BUxtJXkMcGhB045stMayepIYGKzNHNW9Y3joAWMT6MGUQNamCcQ
	7qFD8zUYqfJOMcKLLo1vdpaO9H0ovTvduOPHdQxX8i6Vd3XL1BzNUaKcnq5oTfh+
	k/0/PbOefWy343XxdLWC2eGjn4z1cxZwfFW1vgrkFY5sOBV7olOPaytGmxyEhoqM
	3YVssJY0pTjEVsrFBhQ00voYV0SA3Gtqb236AckrNh9ggS0ToxSl3jEc9KnKssiV
	ivTpxg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjh919hua-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 08:36:05 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ea381ce04fso9154875ad.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 01:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793090165; x=1793694965; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XvY9IYbazDj5cgxSX575pRfs5F9okmqxLiTZfoAtW6A=;
        b=bm5ySP8r+G6m/WWyKmcqTd/EMJ21n4by55XH7Fs7u4TYGfBEfoq34ZDnNXzH0UPF21
         ifkaaf+69r4XxkOAQ33KvNCzaPbkq2x7dCwuDszZFkDe8ibMVzpePThe847DpSt5CGWj
         34HWpneNlYL7JBGMGS9T6BqPesONUcleT+wWA3Q7ancjImaHlR8+TrAngQwgzqcD5AaL
         cGQmWzBpXmN1WQN9AD8kRSh79R70Rfl8yIL+cZ7Ej4JbTOvUVFUPZqPfLo6S8jzwNlga
         QrZ8j+Agrn1u0ZjEKt+Wic/22Mo6QXRWMuWxWuYxovd9+RBwdVD55tu5A7aqWDAplEEt
         jCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793090165; x=1793694965;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XvY9IYbazDj5cgxSX575pRfs5F9okmqxLiTZfoAtW6A=;
        b=yd8FeCNUSII+q8gRncn2RC/tkzvhTdi3S00j/ZdnrIZjmuLxJeQdO6tuvo+i9JecMj
         Nn6FlXFr60P+2wTsv2rjAfGy3uodT7dD4WIpWKP2Ep7EndDba4ZyX8r3XyN5OyFzK8Cb
         7U2Yh0HEY0NzFO5AOC0y3ZYor1FNRcTl+/gHy7/vrX7Dkjjs2zZoLeJdBOf2Dfr9NeQr
         MZSCJ9Yd0BYcDY6wWar2UqOpWEKk7q2ye+VJ1puFObkQ0+QOgbrbny1iKFweJKOWQZqe
         tUOJ5qp6QJgnXVsScPqBWH7zflwyGckeZwofieMVDg0NFRJtHS5/zbHaYPy/87hfiGB/
         HNRQ==
X-Forwarded-Encrypted: i=1; AKwUvBwlpuVhnStgmOY6J6dul3jav+xcFNuYUnpzi/Uo6idMP9pJYnvqvv2FB3H8N8Lzj9xpSCPONNwNWxo=@lists.infradead.org
X-Gm-Message-State: AFq9FYJWruRCm63Tg81+oU+ZcbZznmdPLrjRQksdY9Mkjb4nUYCZnsec
	sFtu1W9xxbP4tddTjHq+qWeZrYF0wwk8ctLJqd2gz8+jmRyUkWdeuXMqnVdhD5z/CkjRQ+Bb0bP
	7GVE0WOA4I4wuXFFPG1HlHkKTRnPFjoC5jcjeVqYDw0XPADQ5IkfIxBcJJ8mIZPLDBt2s5w6dUz
	NL
X-Gm-Gg: AYBFou2s+YSGUVfbNBFiKT5hjm7V5PktvpGcoH5pZV3nWT3S20ciJ6QR2QMwnZgs/Ga
	Z78JhN6dnfIIq/SPDJERPoOfq34bTg7iw6SZ8sOhYZZ9a5GXmPW2FGNY/up2x/EFDwQu0Sgf7vW
	Y5BzGiVqkdcZQOqTINKTbfwl0UFB/7tEhiZWxQwvyPssQdM9HIgux7twwmln9LUzxk2zkMHisOL
	+dLAFnUfWhLOolUZm2dxnmpclzCjQBguYIFDJ4P4IvWIAAzJPZ79TekNygPl6JgCtixRfhDTV4v
	FswDH8Xb7x1SR0+XGqK8zlVqXZww1WUwYRonHwOKTBNRsQxZs7Ml3InSRA1mfSvmsUjEAdt3DVM
	XHfQKxTxEfO5NKD1cR94Qp4GDqm0c
X-Received: by 2002:a17:903:2c04:b0:2e8:3a42:7edf with SMTP id d9443c01a7336-2eae3d18edcmr12346305ad.12.1793090164482;
        Tue, 27 Oct 2026 01:36:04 -0700 (PDT)
X-Received: by 2002:a17:903:2c04:b0:2e8:3a42:7edf with SMTP id d9443c01a7336-2eae3d18edcmr12346095ad.12.1793090164009;
        Tue, 27 Oct 2026 01:36:04 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6be65f1sm5508205ad.38.2026.10.27.01.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 01:36:03 -0700 (PDT)
Message-ID: <ce4edb33-72b6-44ab-82f6-0efbf7111617@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 14:05:57 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/11] phy: qualcomm: qmp-combo: Add v8 PCS-level drive
 level tables for Glymur
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-6-3848c2615d5a@oss.qualcomm.com>
 <08503be4-d40f-45b2-9f78-27f49125909c@oss.qualcomm.com>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <08503be4-d40f-45b2-9f78-27f49125909c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: L1-Ha438XlTHhPxiWdOcBM9upBsO5gj5
X-Proofpoint-GUID: L1-Ha438XlTHhPxiWdOcBM9upBsO5gj5
X-Authority-Analysis: v=2.4 cv=TuxzFzXh c=1 sm=1 tr=0 ts=6ae06275 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=fDIfHCVy3xMQvtPnWccA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDAzNCBTYWx0ZWRfX+CJ6zxby8+pF
 3mHzHAeODlQY/2HV6+BzVjY/y16foZ/IWNaoTlJwTVeFBI+feCfQQHdakfEQS0NXhRvGKfG+zN8
 LqtWqHAJ0aicFA/8SM5MSsWUAapcmF/dKJpWAB3+36zxUQ0NiSZ4u097iJWGAFwSABD/dikwGZn
 Li9EdpbRHab5MglNUsaTuLL7KksSYjskjf/oshjkKecF7y9Zi6E9t5+ais1qE7FBXwQR4EWiYxf
 6DMCMFa6cT9WwEMDgpEDOQc4bKvnOKOHs0I0NoksGmf4/mir0xBoa0cMtcaQkF7LkVhtV+i2Ugw
 j5VgmxRoOI0rXrpd/eqNZsrh8Ii3PqzUJPkBNfs1W1/TEvdb9/90Unc7mvuDk/oJecHtpqWFPhi
 lZ6IhgeOUdtwtaXJPC+OlKRERb3h2+UYa8GnSMX3C/O4oRUCMfeeLsBAmHjk1TRFQf2DFA+rHLd
 43DsmFuIVevWeelreTw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDAzNCBTYWx0ZWRfXwvn5uXnbPKjQ
 L3YR4O9Q9yGQDl6NJO+1d4aiehxTBuUdg6WX2PAEoHzUnyPUhRnyXg6dzPnnSzSlXcm3Oa+dQQe
 Ua50PHNJSUHU5NQpzqmph7INwKVVX1Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_013606_119539_C043CE1E 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 10/22/2026 4:10 PM, Konrad Dybcio wrote:
> On 10/1/26 11:34 AM, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Add PCS-level drive level tables for the Glymur (V8) DP PHY:
>> - qmp_dp_v8_ln_drv_lvl_hbr3_hbr2: LN0/LN1_DRV_LVL settings for HBR3/HBR2
>> - qmp_dp_v8_ln_drv_lvl_hbr_rbr: LN0/LN1_DRV_LVL settings for HBR/RBR
>> - qmp_dp_v8_pre_emphasis_hbr_rbr: updated TX_EMP_POST1_LVL values for
>>   HBR/RBR
> [...]
>
>> +/* HBR3 & HBR2: DP2_LN0/LN1_DRV_LVL swing settings (PCS level) */
> These comments are a bit superfluous
Ack, I will drop the comment in the next revision.
>
> [...]
>
>> +	/* PCS-level drive level tables (v8 / Glymur) */
>> +	const u8 (*ln_drv_lvl_hbr_rbr)[4][4];
>> +	const u8 (*ln_drv_lvl_hbr3_hbr2)[4][4];
> Why can't we reuse the existing fields?

No other existing fields are matching these two tables. That's why I 
added a new field

Thanks,

Nabige

>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
