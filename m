Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F500CA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 07:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mThHS+Y+wCcExr3V4Uh1s92yJhugTBYmcDr3u5c5hFs=; b=Hv38p25UHkPU7B
	aREUS5qNIAwdI97+scq0cIaKYDIVordiZn9VsAqdGEWC73eCsmT48Td74xqeW31B4YHuM+MR2myex
	HmZ88KN4btgonCWQz9vz0DfZZZ9giqeM6e1dAr0PgZH+OnVetYDekWYtaWUVy4QWjq2m1WSnKhKK1
	A1TM8v6e/tMgch7URF6HOAT/s+KLB3ftfdutr/iISf46Uo6oztqCRAgmXU0xs+xB8MN4qUKtXIEnF
	z/43KdLJ5C2JJpMK/DzwlRAooYq9Qyh7AbVCeBxDkrnfL6fhc9g765kz0slM11d6M4P0vMLpZBFzl
	SGGSAvg9RD3IhQQ9LoWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvt8U-00000005Lgh-3WWa;
	Tue, 09 Sep 2025 07:51:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvjPv-00000002TAX-2dKe
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 21:28:52 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588HI0jT017237
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 21:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ScGHARm0oECuOzEJcN01KKnFkQXnrnAhZVDiz2pnvYA=; b=g8yC9GTPjmhJQMGT
	uUOy5evnTxnRCeX/AW3qA+wqtjLA3UcDTti6WGQhYyYVP3SjtYwOjdbw/jNwvRc8
	z4J4KyuCwIf+ecjX4/jgHzZ8rq6hQi58KAhCGOACxwphsb9IpPX5J/ZG2QUGcwyZ
	ejnw2RjRXmK5PKolDX7IPGKCx8+vip63cL1N6NVPi7Wceh10oGuFGWOptdX0NYmZ
	lq3CXecrNQqcfhnrT3Dzoo5Stzy9IYRxSzbF4ZMR6tYANZ3q800QqFUX9KL+9YvG
	pjiEl1FXmL8v5UG3vosFRGGazLaW+0Vx/vF7/iyW50dUTE9QyM2BJ6VeeozwF/kP
	ZKTqNg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws6456-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 21:28:51 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-720408622c3so103187646d6.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 14:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757366930; x=1757971730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ScGHARm0oECuOzEJcN01KKnFkQXnrnAhZVDiz2pnvYA=;
        b=eTiYQLnB06vRl45lquLQ3kRpgXeuRKUYtpolmu9qmyQoHBAvJbyvsPyOHDTPrmYMnF
         3IP+mvCPLzQN9utw5L/5uvDZsock6qEN5jBKA9hneKQV0/IZ+hvRw6daKNMrIKCINaem
         hPYDY9QpoHe6ykRLztXHhXwoHDPU6whM0rmqhNo3rgpo7zHY2h5dBatVgUqWxAzwJM/r
         P1OFVqchex+hTA/5C24Njtfi4gJlOWTKr9dXqQwaAowi66BIMudGmT3mOI5303Ms7gjk
         XOXHvCi8IMeoOhQcWDDnGg7fkqdgUt7AY19ibT39xlgTCrk2tDXp9x+hYZTW3fh1MzZD
         Tqqg==
X-Forwarded-Encrypted: i=1; AJvYcCXwkemoX1yo9BoDh7C/fvpeBqTNcOesWdcYolhqlcmJud3PgyY96qcZarHj/p+gyeAjPYA0K1MBtic=@lists.infradead.org
X-Gm-Message-State: AOJu0YycbtLkEEVB2YeW7GtEfr3uIMXkvb0IStNjXq34CKl27/QnSIIR
	8bgSGA7Gwaeo3ioamc+jJo2ZjLwCcLlWvngAmvZoGaL5XjAeJ++NEwSQLnxrr8MsZ8pKWDYuELd
	DnpTBbgmJlPnFySFGevAhKJbM84Gh0+959la6Mfd+M1BAdIJ3Rh6B5HHyTjYH0V//WiFB
X-Gm-Gg: ASbGncuYRpgSKwQFW1TDgnvnW8/TKSQ4vmHeegHTnguRUTQB+5/ZbMv8EniUS8sJJI8
	I3exJLMOrMpUqxAUPbVdr9jXMKpt9eepotKIPi2VekNOeQOV2KpI8hKto81H5G3C1mITaAcCAsV
	zDyDBNdRCkmGCBxm3RTgLfxrBvfT+Oe2Lc89oRCG6yIPHa2NDrSmSmP/oBVig9u/ZgfELZpWRuh
	pkswNIedkPRZpl1m77F3NcQM+SLukdfrcVb+hsWtJNa4d2Jd1LK13WA9EQI1oIpa2p+5rEKKVA4
	nKrkzyt/2hq1ysOGYzAUUHeFPcZu0L76dD2fiNMhQKqiFiDQegZtejQNpXajN1venYV3vjdfvjb
	Pk6FVnEAAojaqTQRRvxwyFcxCz+cbuOhg07peUIniwUa1vHudlU0G
X-Received: by 2002:a05:6214:496:b0:70d:fec6:494a with SMTP id 6a1803df08f44-739258aab01mr109441906d6.17.1757366929566;
        Mon, 08 Sep 2025 14:28:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFvWg9eRYub8/7m0Za7JpIIl4RD41FM6MBXJkA7gLyefolZO08FSmz7yplGf9/6bML7UCQDw==
X-Received: by 2002:a05:6214:496:b0:70d:fec6:494a with SMTP id 6a1803df08f44-739258aab01mr109441656d6.17.1757366929103;
        Mon, 08 Sep 2025 14:28:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795d445sm31486e87.71.2025.09.08.14.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 14:28:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v3 0/5] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add support for HDMI output
Date: Tue,  9 Sep 2025 00:28:46 +0300
Message-ID: <175736691957.998930.6661595469735181143.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Rc2hwKAkshFlcL0u_FXSVhmDjwg9ITUj
X-Proofpoint-GUID: Rc2hwKAkshFlcL0u_FXSVhmDjwg9ITUj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX8magTEZlqkVH
 CUpEaVEfgrvToVhVUmA30IPQoICJZhvO2IL1ObVbJDXtTswwgbKqIyQQlibIVVd5g3/spaQiXQA
 b+8WeLsLAhb/34/AzooE/j/rNrL9z0r2BB4QWqDsIobYkctv7SmQoxTynL1JnDk/RYX1p8wU7ya
 ++M8vdWXgs/p3ZKGzdKCXPDKna9R56NdoIzGPB6pMlkJeuxAhlZBcAJ13Uk+C0XHPNq+FFioe/O
 q4h1b5yuF6TUlYhrfJo40iUTpzKMGaUmWBTZWRNCQ7qPkarO6T5px1d3AeGfqzluSrMDw4pLJXk
 aBETBypPK9XPB9MeDtXZOfgKv34pDTH/rzBlZEzAW9u584czEmWMFvbm2Rtt1Tx39lkTQIz3Hx6
 lD5S7yqs
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68bf4a93 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=mli57nIQh2RWQkMICy8A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_142851_669042_66FF10E3 
X-CRM114-Status: GOOD (  12.82  )
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

On Mon, 08 Sep 2025 15:04:17 +0200, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> [...]

Applied to drm-misc-next, thanks!

[1/5] dt-bindings: display: bridge: simple: document the Realtek RTD2171 DP-to-HDMI bridge
      commit: 2c4f536c75217476baabbd557a44e8d4c3a2a23a
[2/5] drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI bridge
      commit: 7156602d56e5ad689ae11e03680ab6326238b5e3

Best regards,
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
