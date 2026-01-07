Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27345CF6BF2
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sx5h0qG9YkHmqUzyTwCWB9/W2KGvAGv8PYg8N/SD0PA=; b=hQ54tubwEiHVMn
	6rwcQPokSjWz7reKrXUUo+Ib0bMOyM8SJlOc2y7yYZdgLZdNfKfkKrF3GLW18PMT32fRk6ftdunyC
	FsuTibzcjka5+XtFlRCqyPOqvSPQoQ6p+/94/7KGvcYXi7bPW+T/kMqJJEFBW5tVXhs7VgDPWx2Ns
	u+vC+1mMn2DsGsJIofSrtE2cAbaVZ8Wkp5/fe3Ibj0W3TiKM2eSrazjOynQpqTlQP959hXkqn8vc+
	Hai/34LT+tmXnZtAgddIM9EGlgv7A+BgxZl509+rnbRdVOTYQ9sL8+MlBbBF9wxQ3E8RGFTp6tZN8
	GfbnKkZwLWCfyJ/nTq9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOhR-0000000ENQO-3cR5;
	Wed, 07 Jan 2026 08:15:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOhO-0000000ENO2-0iDP
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:15:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6070rXZd1981768
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 08:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7/ORuAlUmALvoZXoH/iZ/MKI
	plEqAlG1ddTTqoZoxos=; b=mEl/JXNFxLJJvE6uxbB87fe1H11fXhwYZABqNSdQ
	fQZHlZA2lFzIujLrYni+emdMKWB7lomO5QM7nTIwDePkkHx04gkh/1z74aN68BBl
	n6lSD6YQJrHHBHeSyr9N8Xq5a0TL1d3fir8O7TDoK/flHn58qy7H6rlWu9awaWUd
	e0Lyh4RxC5c/G1imEB5MRiQR8oSEmsrUGr3gQgz2GMti3g1iqcYGZedS2TSAJpLx
	0jqNDf8AQGyhAjjGmha1HGfZAvoC8Gp656ixro/deU8BzzjMCVD9lLgMrpLuGkqw
	H0LhIegKAkE1Lnn6M1ixT9ewSIJFEl4wppR39PP+LY5L1Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhdavh75d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 08:15:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f4ab58098eso51205851cf.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767773719; x=1768378519; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7/ORuAlUmALvoZXoH/iZ/MKIplEqAlG1ddTTqoZoxos=;
        b=afgLO+SwLSVwCD6gjXvchnukvPDeQeHr9fu9SzIOaN2L3AUWjy0UtLdNrMH/ydDBo2
         ciTQg6aEcyz8T5f697xyJ8v1UoBAwJHoOY+WdayVhGO42Qa83giPiqTI5Ouq6e/1h6dS
         XHBzjhYEBZwXCm6GWOrnVhbao7MATf6aJJU2V2SpC57eJs8qiRxtjBZacf65b8Ke5La6
         avvaJPPbgiJK+d3aF4z57HxIsKfkJevjITpoG+lClZi9dUTlSzZF8KXeZyIfuXVKlRyL
         b8ZMaw6nP3bKRCY+wraqL3FBKng2p7QGcz6mmnJtEsQp+s5XKQH9ok2GUnkqq5TMh/fV
         s/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773719; x=1768378519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7/ORuAlUmALvoZXoH/iZ/MKIplEqAlG1ddTTqoZoxos=;
        b=L9yWLlemCtjfDadgKUpt9hE/Qkyf0dCh3cMnkPbF41/zpgr/4yX7iMK4RVHmH0Bar/
         X+wz79VxS8uspxpeAlsxGxb/qrrPoDowTySyOlEDWRURQqywFLwYSepEDfrq61ct7Dx8
         bh9XGmvnjTnJaPthJ6JvtqYsvUUZJ6a5M4qqxlA8/2Y7UxFt60Sbpn5jKMEtUwD0EvxT
         WNzHSMwwIbxoLou0v6zvp9p3mew+uMI+TOYKbrFzqpmjS22cTIm1JMIzb9WXppmiksN3
         EGXpOQxL4MzcLmX0P82FldwSU+ic4Hb+bprk9OZigbms4X4dkVR7it3070Lrsl7WMI/1
         vL4w==
X-Forwarded-Encrypted: i=1; AJvYcCWHnJDICNTR2oRKp6907UZ4rRxRx/uwRO+5N8uMLmX9f+vrhlnMR2ds3zFNw3oE3hTrScVpl6YTnnI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQmc1pjalbQQuuNfzlJGwYDrbbUn9Ft/raU3uj+Cbe8dKKeuHv
	VgyFWNQoB2w6pB9Q+14iyFXxnAoKg3++Vvrn4cyj3bvSpfJfxaUT3KldRf0FBv8DRcWu3OBfaHi
	UEjK6F2wpNWpBqIhb3ZbIixPObpCO2NlL40pAmKzMRtLxvEox1O+DruNGCoF60Y2QOgF7
X-Gm-Gg: AY/fxX4oLYza4F+tcMI4EKnv+lt1y3lNzpJ8lEv3xVg2x2dWZbOL3PKIlj+sEBg153o
	Cja+czf5k3hBrTr/CHi2gVpghNCP/beidRZU/uSbOnCt49Pim+1Na4PLZyAjO/WccXcCfP3WTvd
	+3CI5IFGPxsMtOGCv2ZlDLzfltIFvsc2OZyZj22Pim7GD8JMCnFekJ1xXdUUUe2WAGg9FYmIbCv
	hN7LPBDaYVP+reXPSpOcNcyFBoq8mvMMX2wxBvldECGX0jq8TrKqwZK7xrdmYwyuzEfRG4kUa0W
	3OPngtxSGq73ADPT0jrXYI9IczI0652Ko6qZgFFUSKvTZPEe2dNpoeQ+arHv5NMhrYFJUUHcc7f
	ACFnOFTRtA7HhBXVym0tsVdRz6Qj2YB33XolK3+kj/97tnaHz1bbYDxzDXz6BZNNaPDTkAPVlna
	W7gpfUzqJcHuzwHc/yO3hxI8s=
X-Received: by 2002:a05:622a:4a18:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4ffb499ba21mr20710721cf.41.1767773719521;
        Wed, 07 Jan 2026 00:15:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELXjesdvAHb2vIW4ryLhR0dlhPdZd4yFCCjpn7vN81UbkGeRCeU9w+cIz6186R1d9MNEBuTw==
X-Received: by 2002:a05:622a:4a18:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4ffb499ba21mr20710341cf.41.1767773719150;
        Wed, 07 Jan 2026 00:15:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d699d2sm1125644e87.87.2026.01.07.00.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:15:18 -0800 (PST)
Date: Wed, 7 Jan 2026 10:15:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-ufs: Add Milos support
Message-ID: <aubnydfer7ffn4wfezrbdsw3jov4rimswwtxkwqb2ojdkvpvub@yxxqxcg4tlsc>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NSBTYWx0ZWRfX06MITMxQQ1Kv
 qXaMKFs4TPWquvw3J3rwywuHPdsgCi+AofIBV7Wfonv8LtYx4wJn1iVDRaVaICpdUtp0L4GXovA
 Utf5Xy2qqfAVhF5pbvZuNjING1c1UCfrA6wiL20wvYu4Cvd9r32u+W34TN6/FH5pRH7mRWNPPqd
 aHgGuwdAATlZh1t7B9xp9MSt25tsyY6e/FyEQfbllUIGso/3aGn97jmsqwxNDAZ+KThq/sV8yfl
 k3AylEZXe8iEePtT3tQScMLN6jvtdtoBt1g7iZio4alfiTxDh7vU1QHsNSWv3afbwXsaZQ54CZ9
 bI8+TxEBGUR8NiUnuAELTGoi/OQMJG2+XP+Lc06ZpcSbjTO7PZTSZhtIS+2Sr+r/Lr5jnSW3Nnl
 YZe0DbnZyxm2H5cI2FzMGWVlLXhGUm1TXx2LrUKxS5ipBC05luUR5yXiYNzfzBj15di+09b6O3o
 z7mbsDJn2Y9Af5SAMGQ==
X-Proofpoint-ORIG-GUID: eK9Efz_yQlMgh0KeENxP3HswVUaGsK3R
X-Authority-Analysis: v=2.4 cv=comWUl4i c=1 sm=1 tr=0 ts=695e1618 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=wMCEmTFnA80afR0hZ2sA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: eK9Efz_yQlMgh0KeENxP3HswVUaGsK3R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_001522_325719_F2612DF6 
X-CRM114-Status: GOOD (  13.36  )
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

On Wed, Jan 07, 2026 at 09:05:54AM +0100, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
