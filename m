Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF26C982C1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 02:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OojbzIMcPUftncRPitNzUUuPgZxBoEx46E4lwQpWkjc=; b=NqBUkERG371mzy
	bSUYo6MaiVWtIEPkqz8nvv9hI64coccRa6+E3SXuuZICPOEYvmx5hbR/cXQITJVFP1ED0klxx+6oL
	Z3BosGGBqGZ7RohKqj+xo3sLCfc8lQbDkmmvsPEkFAxHj+sLRCsF7ULMClB1NGwWOUogJJ8KMH1/y
	4ZoOfU9VY8HzENqDERqG5d54PwZ2c1fOhmDkErv/N3S3qBcVK2hyIkO6NyuIlqrreKx9ApW3akMmP
	ostQJ83EMMWAoGR8zdZm8ZFS4SgUgebzYOT3GMkvghaWozpgkDMDjbRv3l3uQKbEQMF3BxRo72Av3
	JtFw/0arpGM+XOrFYqAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x71en-0000000ASB0-4B7x;
	Thu, 17 Sep 2026 02:15:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x71el-0000000ASAc-0AdZ
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 02:15:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GMGKO02600969
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 02:15:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0nkxLnWGJPKpLZVwfcJxb6ow
	WJd+MOMDPY4c/u0ORDU=; b=oNt7axBKVncjEHFcBh7gJPyYy0nDVJrzEWF2NHRO
	//10oKhbUh+MxVooNlTmJTI4FXkKAAZr94XsRInA0sks0QOa5kCSXEZGPLN6Cjr3
	F1w7lFS9dAABj1wPoRKUil2E6LDvFoUVh/6Co/rlRsLjiDlsOKkH7mXLbN9Xhk2h
	/CTjVTAH7cCjiVui2nSSLKEu4tIWFOwdrxuwtum7aOKdA57uBlUpnFS+yz4R4ib/
	hX1XgKVoxAhqmvVAZ5jwrDH483+tKTu9iPWcHQKygMHp3N5nDjUeHJow5/Rv2k7q
	nsbplCiHZLXTWaG2sFGnVy5H7/JoLGJgNS9gLu9LqrnqhA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gquwb31ut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 02:15:12 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39de4a68f7cso623483a91.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 19:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789611307; x=1790216107; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0nkxLnWGJPKpLZVwfcJxb6owWJd+MOMDPY4c/u0ORDU=;
        b=dgUdJyWN43hdgbgt5VYOgbZC8F0EDRB7hVFduEonjzV36VcvHwVRIKQ4n0du6IIM9u
         no271z4H4oYjG78E2VW/lVfLcBRSq4zArN5BtPghJdDOsZc4B2FPUaNVdUlZCw3Kr/YR
         cAmWiIl+65Qq+mb1jxMEa+hb+tGwof2GcucdZfOal6m3IoCj9XT2aSnIgrWG4/2+2b7g
         JS58Qw0RmBw5RELF/zYXSfov7WdxhV2TZn7wC9BGf8M5usBaqeGCwsdx6G3X2DjNrUWd
         ocdaCcNf4qaHN0tWNMLwt0LzfL/QtG4S5Ahe0aG+FVWH6FWXSzlWEzWpMb9dKf1ckNL7
         c2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789611307; x=1790216107;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0nkxLnWGJPKpLZVwfcJxb6owWJd+MOMDPY4c/u0ORDU=;
        b=uWpAQFgmcK3e7IjnkhWIrNyEJbC1IShZagUKWFv6K50+n+v9j36fjiSoDHTuE4StxA
         qZs8vGeosGqCaWJlD9PE+xL2fpd4+8TcmLe6oumrWtCB2LPTsjqhk3QlWPNE+0XBG/jQ
         D3M/xNfyNvzPP0rsm8ScLnyhXrX14Ko3k7rC4N9lJvGi1Yp1lL+57Ia6v2nkc7WdeRV0
         sQD3HE/cXcCjLYy63y+hcld3iWthNa//T1jpv82rqpW/Eu5lWkvipkQOPj9QriBb97rP
         d5EsemrHvnS4VCeZFHqRlqOgPA26p+mVjtgfD8lFkIh1o5GyjmpSovPikb41Vona/iEq
         ry4w==
X-Forwarded-Encrypted: i=1; AKwUvBwK+5fvBiQfY+SYHkmmLssTSOGPYJVj/j69DHK8kEomkZCxw7EswTFExotiVXSEovBzBGcW7kpRr1g=@lists.infradead.org
X-Gm-Message-State: AFuF++kXEHydb1aHG6Q0oZGporYKgzhGq5Unu0Q+CEbiqabKB72mGcD5
	VaVDmRLoU/lWMX+/U8tY9mer35H1bLWgfNonhXWK5mdZMz29tqo/4TilHLSN1yli9osAx0nepb0
	UXk/Ol82tP6xjAyFMEGaZGk2d5Ce6A1j9AL8S+insgZgVvSiqw5WnO71pVcQ0c+cb11Pp
X-Gm-Gg: AYBFou06LOP81xmEB1b+bAD3NvEt0/nUKLHugsP7f56LDBLcGYfodisHIuye3tHncr7
	Xw94X5Jr1RStr3yVn31wtz3kD1Q8wiQoECd7BAv5Cw5/cp3TZQxQSUZLpcTIHX7jhR5CNsZ8RR4
	4fc10pE5D6W0lUOTY2FkqCm3nIpEa7eQe6OwXcdCd8tUCAL99HfpotqfjSyuosxZtl5Y3k44uj3
	KlKKv+X6d/ixgjD3Elgwci5XL/yvgy8qrNVtf6WRgkYgrZYPf5/mRfZ5Sr7ZFzUj7CiZtk1Yeuj
	mzqnbG4jSLV+5NGscjY/6XF3AG8ZKruy2Xd9wiWWctZKG9+EcdBDJr2IBaMBdJsaSFDmJ4hevOv
	3b9e+EuA29lSYc5mRQqb5tQ9CZa5TiMHl7evMb+rU5Xw=
X-Received: by 2002:a17:90a:f09:b0:39e:218c:d47c with SMTP id 98e67ed59e1d1-39e218cd674mr8456847a91.9.1789611306703;
        Wed, 16 Sep 2026 19:15:06 -0700 (PDT)
X-Received: by 2002:a17:90a:f09:b0:39e:218c:d47c with SMTP id 98e67ed59e1d1-39e218cd674mr8456782a91.9.1789611306226;
        Wed, 16 Sep 2026 19:15:06 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb19f8cesm14368985eec.2.2026.09.16.19.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 19:15:05 -0700 (PDT)
Date: Thu, 17 Sep 2026 10:14:56 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 00/17] Add Qualcomm Nord display and eDP PHY support
Message-ID: <aqtNIFXY2OcL3SPB@QCOM-aGQu4IUr3Y>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H4JOUOYi c=1 sm=1 tr=0 ts=6aab4d30 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=NcJHP3AOhwWrRdeD_j4A:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: ubGvJlPRyHlfYPKnz4AL2N3KX_xGyH-a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDAyOSBTYWx0ZWRfXx+BbZRPKYfTI
 uZVRx52ihVODjr+qgtUF7CdbMOhpH0BRnnqY5GtEQm5IKXdTaKrlD5E/+mQa32bgafPCx1zXnM1
 RmiMJLoaMMlKETwpBp9+RF0GsPNJWjVhvTkFsuztTjt77HsvvKEM0iid+yokOGZ2WRm6wWEnUFT
 Fqioy8HP3q8RzwpJFz+hiz5WiqhsriQDkrey/Y/qFp4bBN1dqTS0OCyPt/28Y3h2ezr/PO3t4hF
 ScQFpf5cNJzJCW67smIeoLOBeDYuzyb4q9v6CU0ZUTapl6gv358PQ4lPj4gOojdm0bgsbiJWqzm
 KI4oAr0pS2rgRsbtUJlKkwKWZuaFbA2pQZeQMdmhyDlJwKDxjAO3rypodGdMFRdKP9jxiy6ciWt
 Kddu7lOty1lr0mUbOV1ioCiFZ4rsAmwvwVUNOtrFdz3lM5CEf+7+/QHSOAFR5CIh6tQmZrI3xT5
 KuhSqUdHeLwCW2MFBnw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDAyOSBTYWx0ZWRfX+217Z4vciwPM
 bCsZCzps9v2G9G1qwkEw4++RtZPOH6paOBk+WVW8SAvlmIUmUb7S0ZWaYB2i0BMqaKqxx2138R4
 wEGnFipIgR1wZCnpk/KBgdOgK/wmIUo=
X-Proofpoint-ORIG-GUID: ubGvJlPRyHlfYPKnz4AL2N3KX_xGyH-a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_191523_085413_1DCEAC9B 
X-CRM114-Status: GOOD (  13.94  )
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

On Fri, Sep 11, 2026 at 09:06:31PM +0530, Nabige Aala wrote:
> Nord is a Qualcomm SoC with a DP-only display subsystem
> (MDSS 12.1 / DPU 1499A) and two independent DP controllers
> backed by eDP PHY.  The PHY uses a different register layout,
> PLL/SSC coefficients and TX signal parameters compared to
> all existing SoCs supported by the qcom-edp driver.
> 
> This series enables the display pipeline on Nord by adding
> DT bindings for the MDSS, DP controller and eDP PHY, DPU
> catalog and driver entries for MDSS and DP, and full eDP
> PHY support.
> 
> Tested on Nord Ride SX board with one DPU. Both MDSS and
> DP controllers probe cleanly and panels render correctly.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Hi Nabige,

May I ask to be copied on Nord related patches? Thanks!

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
