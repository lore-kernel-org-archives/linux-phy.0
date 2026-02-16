Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9343E81A28
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 14:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oake8Z5PjbNBk9Uvad6ZFVwDrQuqakn27iJ1TzWxSo8=; b=zCu7tWCE4u8UfJ
	vv/m4tUDRxaksJToRl9BnTkN4xEmg9ytJ9DxrRpHV8vUpGxR6amTfCTvBAnSkVBAbQieCnCQoDY6v
	PlfvxlGnsRMK1JBJrgPEVFLTIZGOLn3RvuIWuRJB6gJCZQ3MWsssoTkWZXAVC1Gwmn1pdmrUQYeb4
	ouMDJjdeEBGS272noi+KhfIJpAy/cwkiq6/nL119ZNNe8ZgU6GdmStNGwJhyO1wuSHUCIF6dT3eys
	4Giu+4/pNNeZXuzEAmKiCMgUqdedc+g8zcUIuGX/QsgogLxkU5aQSSS7wN3ybNYjIh881jHykHg17
	78GzQSVoNTzb2HfNK5eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs03S-00000006ppP-2V3F;
	Mon, 16 Feb 2026 14:58:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs03P-00000006po4-2DwS
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 14:58:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GAYLxW1586867
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 14:58:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TlPKEBv6IQ2bElkuTOfHR7LP
	ZVbnNS4TJYo62QJXTrk=; b=gDCUIQJHDvPmPLc2Qo8VfZ7mqC/TUf6wxVzRXB5A
	yS1HtSTB8Y3Tn4oLkg/37nM6zp93QE/WFRS+bJpBVlRVRkL+N67aafT0VS1TFrqe
	N7fgir1bkG2RMX1L7d3YPPTlt6I639iaI18YSxadXX/FO+OW7GEySUv2peuSEbFe
	+fV0xQzOXEbOqyXUMKUZsYFuXx1b4jFY4nqLv1nwhSJZIuJpmCCwnKXEyCKskjWj
	njdAjvHg17/MXVhHCQRboAhQP+K5Ji0OCy9pTIGZjkClHQQVViLRRyPo3eToEsG1
	ChClK87FopGK7H7uiuDw+wO2NL8kyh6O+gNuL4h2EEMHeg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbnv9hy08-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 14:58:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3b6b37d8so1897176485a.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 06:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771253906; x=1771858706; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TlPKEBv6IQ2bElkuTOfHR7LPZVbnNS4TJYo62QJXTrk=;
        b=N4ebCyQQr0wsMzMQ7x/iHZr+ogDJ9LNQr2KygVwqYx0Jtb74yONENkIaWVCmSOV4dR
         xcy8Wn3Twl97xeAGKyMKWI+L/GS0TLwV2T1pdqd2n6HMGgeYh9NPhFFMgBP4p7Hy9EeB
         PPspoQXr+4u/p6/k7c0CF3Z4qEw1JjLP9tb6C8hslB05qNNOir9Efzhv6gZGE/3wVeoo
         u4sx3/B0ecxy/prByHP0Up6zb8kM/EzJVVaSR0mnICWyE6h9zvCdoWjJKMiKcIOMYLYO
         sxSG5cgvGPZeaz8yhgyV8dKNnxOX1yMxl40oejEg3gG8uphCVY0qfyzb9D1sX8a51HnP
         Vupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771253906; x=1771858706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlPKEBv6IQ2bElkuTOfHR7LPZVbnNS4TJYo62QJXTrk=;
        b=fsLWAW9AK6nof2+P4tIvJpgR55kW6i6UoYmKuZbZs0lg6gXC01XHOlv/FTEpUSweYh
         HloAwKPlBGkWXNio7hCGY+HbjY/4MNLzm+Yfo9uEaxt5jqsqR/gD3Nj0HE0CcWZ8wq6z
         X3V6L/bVXcnuGVQw9lLwsqweJ1q4NWz94W6SAOUcGJ6kbmfyNOxYFFoJopu1nWibxS8s
         Xeuqn9ekM1hRX4JghCO3Z5VEixb7sJa90wU3gk/RfnciQz8SIJIIAaJ7bN7XShFBclPn
         tQMExVsehJtWy5neB3MYa65MYJ8DKxMS8QJh2jwauiuQ4awQyIJBMHacyou4HhxsM85K
         ubhA==
X-Forwarded-Encrypted: i=1; AJvYcCWV+5bqWBXqO6s/S92tq/koJNN+U5T3K7qYGajXLNVD3a+a6agpQQ+aiCw8xWEefhCC6rVZgSurkOE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWncEHq5EvFgmHJIfVd8LTouXJfKFfRIVvFL5wDKI03xlnXDBY
	lrRo/UjD5fkIwY4uwIGTt60bZHd7kE67HUdbCK8UKXiSsLQlH0Tf77mSGrFJvURFcwgsTcMOlQm
	VdwysSyuYjjvxikmiRFAq4DLyZqzyw3abgDrDN2H6oEzsb8ykMNW0bIyoc+AvsVIBWvYB
X-Gm-Gg: AZuq6aKuo4ZsilqmTVlrRyvykZLDIjaLDCeQ0numGAmDBa4xfd5XeZ8DKTSwhaerkgy
	8EamyejBIoXyklmGhahtJvbm9tDeDKtUzMw869S4zcaEgc/kdJ6+Sdv6sTaGdz5J3529+WAEpOU
	G7MKsRG84+y0+VETzsrrGboNU2eREjhlLQFaQNNxLtWQDOfd6bUN/cOwTmK5OViYXS+S6gDF0BD
	r8uNSy6iHaKw3Gl038Pve4ZBjabKB93MW583HdpBes2KT2GwmqVHlLX1MHOn4Ss089Bll5C6Qh0
	bJyJYXIbBh02fD++NHLOI5F4Tfaf0Q8pkAxBXwHiUY7hko4o9tDEFEKYGze7Im/OsGert+Tfzwo
	yQT8VBZx9hCmpRxTOWi1KH33csZTYjT9lC1WX
X-Received: by 2002:a05:620a:4407:b0:8ca:2cf9:819a with SMTP id af79cd13be357-8cb423c2ea5mr1237438985a.40.1771253905460;
        Mon, 16 Feb 2026 06:58:25 -0800 (PST)
X-Received: by 2002:a05:620a:4407:b0:8ca:2cf9:819a with SMTP id af79cd13be357-8cb423c2ea5mr1237435585a.40.1771253904844;
        Mon, 16 Feb 2026 06:58:24 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abe3b3sm32479964f8f.18.2026.02.16.06.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 06:58:24 -0800 (PST)
Date: Mon, 16 Feb 2026 16:58:22 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom: qmp-usbc: Simplify check for non-NULL
 pointer
Message-ID: <5k5i7zpr7y2wa5o2odkfyafhoiqk3ch53mwxt24g5thft3htxf@zxz5u2hobcmp>
References: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 4mOhou7IEEmist2n1uBE-Glk58oD1kfE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyNyBTYWx0ZWRfXyGh4gqZIHWzE
 aKve00/kO4//DkMzwxix7XkRKRw/Txw+Gc6IT9UMDvBWnT1XC3/PDH+o1ui7asV8NcUtjga4VRz
 //veIV9Zjs1otgHzdb3ddNgSqG4GBGAERzqt7U0XZGOEv9DzcHMlI/jJz4qm8wMvTqzNaG+nUlB
 25NzfkwaF/5psS5PMJmQJkKjxLwdStPrbuiOOsT8M99gU2q60Du2L1B94mcEdJIYdqvOM5+uAQN
 K7ZaAlzuDx8pxPemLlNG/OSAN6SeoiW61HITlo7LST16fwOjfO/gZjClYi7yuVQ3xseB6TvSDTM
 3Szfwg9ASyMAxmK4DOgOgeNK0kPf27KgRvYQQJIaozddvN5Pvb3PpKkogTOULkS3xMh+vT6b2cg
 oRR0i63Pebglsx85z0qEBZT6JMEhWps5tyVZi6TiXAg+uvIuBqLV2vd38bjW925a/RKHieeE41c
 k7rCA8JgrP///rLrXRA==
X-Authority-Analysis: v=2.4 cv=b7K/I9Gx c=1 sm=1 tr=0 ts=69933092 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=rQXAbXeZuVbgsyajZegA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 4mOhou7IEEmist2n1uBE-Glk58oD1kfE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_065827_688657_CA665EFE 
X-CRM114-Status: UNSURE (   9.41  )
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

On 26-02-16 12:04:16, Krzysztof Kozlowski wrote:
> Pointers should not use explicit '0' comparison, so just use standard
> evaluation as non-NULL:
> 
>   phy-qcom-qmp-usbc.c:1682:31: warning: Using plain integer as NULL pointer
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
