Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1809C369D7
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8/x3PQTBLiPy4o9JvPBMsb3yiheVOi2N/d1L+uoTzI=; b=GGl4DhCKKTN5bY
	mLkLnohYwAWAsQc1Hff+LZ4fDBnr70gBRGIDME82XHjrMqMS4mYhhbfmjBxkZYHlGM3y+1Ly5hvg6
	AXm82OQ4yLyhTCNC8JFL9WDZh+zPU60+cbVRvBIinS4ub7XvNgl+UA0wXuM9l++C7A/tetGSPNcxV
	1sL/CwXccIMGR8wkY/wXsw+Gv5LBHJGz42jL+1iDsnQdIkzKem8Yfk2NplYASbaHUeSQ0rMXcm86R
	RDZMNNI70l25UhGscEddjrNpxJMMMkZ/L6CDqR6eUAw2sSI6xe3UYap4haa7AWFsWAHbJy5CzWQZI
	kG4Ei39y4On5Y3D9zpbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aXa-0000000Ai7P-1Llg;
	Wed, 23 Apr 2025 13:53:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aBe-0000000Ac8A-0p9A
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:30:51 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NB4bqE022448
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:30:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WbGQoV5TtWkaVGbUVN+WB0tm
	HemlYXyNkVd6UejF+r4=; b=cMs/EHWKfrAVRpO315acQbgZZJrzBxOlSGiIOMx9
	zwT6LIfesMxaap/QlbAfHn9MOEpnI0fRVwmxA4oyMrlws4IWwmii8eJ8i3ioCYtR
	bCdeaFMKpfQhh4Jc2CIWxvAda6zIw7ph9ud54R262WevDmyWjR4Asu9QKasd9UH+
	SdbCiI1VD5rM93gtiGwPgSaIx9azBicbu9aGd1zBPRLqrVmpPKYDx7QCElEmQaWO
	RIOCuQ3F8Bnb8HBTLqNL3juAHUqf5V7GEu0g6MkQqEp17NbnWznTx3FbsX/hBr6f
	gXq5Hrx5qouoGpzNHL6a2llVUK1gikagyits7xD3HpNiWA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh2a968-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:30:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5c82c6d72so1112970885a.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415035; x=1746019835;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WbGQoV5TtWkaVGbUVN+WB0tmHemlYXyNkVd6UejF+r4=;
        b=UyXI6euE5huub0Q67R212PZ7xi7h9GJwfGDY/alDUA7AfVuUllJ8g1CJmKJApC4u28
         5Como3iPlhv+25W5JEC9Y2UH6tX48YB/eEyeKfsUGYXr4m9tPn65zCaux5g/c6LFJsYs
         beoCXXsCCzX2jDJOe6PRgApIZZOE8Y9IA4KtZ/KrXjNIB0Mf1aWdlcsNxtlCI7kPSoZn
         vda4kB/bzydIkrSQlSet0jdk723EOP3NYfBqUwl1vMwAwmt5ZhJ5G3csEdYtt88V+mLt
         YBaA7zIYC2G+wCW05xyi8SDwc85iH2SLSyzPWMKhA/vOE2jeVW0pcvsH9qDzU0PIAs4c
         p13g==
X-Forwarded-Encrypted: i=1; AJvYcCUJahcyRoZMj0zz9smvWmBRB9S317i9mDAMXGsX7HLsx9fUJs6BFyEFgCq2+Ou513IFFr0LckQPj/E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2M82rVwb2YGpwNXfA5APyLfccs+d8RhUp+SwVE69ALb8FD/Ua
	f6cTcMddUPrBpSqRTR6be+lI8MoY8ppI5x8Ks3AOeSOQf6YRHIEswNpft0S1j1oO8nevGJbmsWw
	+9UpsvuVolubJQy3w+48SFWYrFMdpdheJ1ZLMTUqyxpzds6qHwPuW52FZf6Cqoiuy
X-Gm-Gg: ASbGncuIRg6DWbcp0VCikz9MRiM1t6SrPoQou8/fEQ6P4gRyrCOCW6TiCkm/Gd38PBb
	EmoHWpnftUNd1lumKQOfk1K6WoLrfgj09MPzANDQNu6L+vRJqmH83OKCthKLJNdZRE8PKnM5cvl
	JnWUaKd85qmJJbWT6/QEFlaNVzBfSIEL1KmAM1hdplrKsUxTJEr/Dek4OHLV1l6VN3OvzC7HGX8
	0d758rsLudSmG+zhwEDy0d0IKhM4RCf30Oe05S9blQ778jYnqv2VMBpL45t8dGD2m18zde2ZIsC
	kMfvBG+o39sj0N0CsL5C8XpzK4UtdvoNQobIIj2fX8r4nih95YVbOfuF801meyHO4IBjev8Md/Y
	=
X-Received: by 2002:a05:620a:370d:b0:7c5:5670:bd75 with SMTP id af79cd13be357-7c928038eadmr3337062885a.46.1745415034932;
        Wed, 23 Apr 2025 06:30:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXTfpWsbVAbU0ylBQYL51RHYlyc+81kcBQZEj2nboNhovZTX2+cu6ODjDZ2xy1hvKkUJMoaw==
X-Received: by 2002:a05:620a:370d:b0:7c5:5670:bd75 with SMTP id af79cd13be357-7c928038eadmr3337049985a.46.1745415034096;
        Wed, 23 Apr 2025 06:30:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5cf767sm1524502e87.129.2025.04.23.06.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:30:33 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:30:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
        David Wronek <david@mainlining.org>,
        Jens Reidel <adrian@mainlining.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
        linux-scsi@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, linux-remoteproc@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-hardening@vger.kernel.org,
        linux@mainlining.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 27/33] soc: qcom: pd-mapper: Add support for SM7150
Message-ID: <wi6azppohttfttjniktjsovstktalut6uhnxiiwekvqtjsw5gu@nstvkc7pv5bs>
References: <20250422213137.80366-1-danila@jiaxyga.com>
 <20250422213137.80366-11-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422213137.80366-11-danila@jiaxyga.com>
X-Proofpoint-GUID: Fj-0UbDnPs3U_baFGGp30xW1Ufv_5-3R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX+uR84CV/cuC6 FCa6J8g5B3NTi0aP4Dq8sQqQ1O0A85xzcJtumBH9M5igHyUG8kLeYyZ/JlgT9hVJVUavUeone2n hhuyJa4FuxWmFenaRwE+1vUUs7pwXtzKgl4f5PkuzLtJqQazK7bBLxXStUbP2zQq0gAyS+sbxBb
 BipJVEzxJoophn6iXjBZKOHAwrdOGik+rWz/uDrXKXHl+JbhICshgMSqVMaTsOkQ4L9ui+xK0AH FLTCURLlvijYGlwaSeUrNomcalXkW2Q3ooVmNP235JEG307TQxl9eINvZp2WvHyza4yfjwseoya ILRKx9VTjFg4N8Z3rng9TdcN+/uVlL+oEm3Xt8cr3IPuhiDUFPpsWLeTVXj7hveY8Bu4B7vooJG
 zKUJUJ237+K4xy7Y+ULCrpdFwjETsPJN1kRJ5EPM8S9fHNr/fOZcD0sSOn07PzzErFSBOufe
X-Authority-Analysis: v=2.4 cv=Tu/mhCXh c=1 sm=1 tr=0 ts=6808eb89 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=OuZLqq7tAAAA:8 a=7ibcVnAUAAAA:8 a=EUspDBNiAAAA:8 a=JQ2_29xaah9frsLSoU4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=HywIFdX19-EX8Ph82vJO:22
X-Proofpoint-ORIG-GUID: Fj-0UbDnPs3U_baFGGp30xW1Ufv_5-3R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 mlxlogscore=870 bulkscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_063050_235648_DA127D8A 
X-CRM114-Status: GOOD (  15.73  )
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

On Wed, Apr 23, 2025 at 12:31:31AM +0300, Danila Tikhonov wrote:
> From: Jens Reidel <adrian@mainlining.org>
> 
> SM7150 protection domains are the same as SC7180, with the subtle
> difference that SM7150 has a CDSP.
> 
> Signed-off-by: Jens Reidel <adrian@mainlining.org>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/soc/qcom/qcom_pd_mapper.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
