Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A17CDB46B
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 10:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jccpBOM7aMrR0Y0jpZWEkHDAbIqzpHGYal+CBjA+CzY=; b=mc2juNz7zIaHsi
	AFNWSBK8Ou3Go2Rv5JVgV6bvd06cPkRJM6YxFfZ+rJ73+iv8Q6aALkmb4foVTLWMc1nW6QbZrs+wc
	JphS1ngDO8tNuICUGEvE66O/mdRUxnTE0YcPV3i8Y5cj01O7ydf5pr2wkcdjJmmBqFhoiK8uRLYC6
	9oC1u6MtKGaXlsXaFiznIl1LwKXpqXH5XWZNnmlGh+e9ocJPf24W3GCP5SXtcGGZrWLUKXR8HrJqw
	5mMw/n/sOljr6KcNxlFzvCsdRCv3O8XRl4D2Gyij5ckVOgSa+unl3+8M3ulGqmRy3cqQvR1MkRiNQ
	7ckvxy6E6bc9UE9A5lRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbbhi-00000004ofO-0IAX;
	Mon, 22 Jun 2026 10:16:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbbhg-00000004ofC-12qk
	for linux-phy@bombadil.infradead.org;
	Mon, 22 Jun 2026 10:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=6FJhL3VDk/UNBfVNQ2ufDXFDqR1nuHCDXcTIhba+JZI=; b=FKGE15NRKFO89tr3sEVKtwMzV/
	5s8wHdVlQ6hYnrLvKnH8YiMB998kQ8DMiT5MldutvuvaUukRisvCFFQAIK04TFSFeafXXbUifIGHR
	ZX/E422Pq9KtedFNNZ0aO5CrS2lZHOXZqMbe/951KHuedFCYS4RmRy6fXjF+bvaMpTuZY1I9Dn46L
	GvGplqm8uu1An411aXUhjKqBppatfvNl5W0XxdPF6sqXZvggq4GecSyMsqLdAuDdqQjpkf9yjGkbs
	Axb8FJDCIhDK4MfJVDCv52qSM/+TVjdSjfV1RH1m3W5HFO6is2a1UVhGaarrnMo5RjGwS/DsTwgbr
	INVPqSJg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wbbhb-0000000HKJw-2T4T
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 10:16:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65M9pakd3880484
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 10:16:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=6FJhL3VDk/UNBfVNQ2ufDXFDqR1nuHCDXcT
	Ihba+JZI=; b=N9PrwAKVbQ/au8VgZTRySQGW08DP7FSbdNpqf9JGyZSFLMZjjT2
	XAbYeFc55jCtDPuKSZ7hDKvbeRhVnJTg9Z2bUvShMubs2GD2d5FAzJtUBNdqx9Xr
	hjlWbtPGj7Or5VQAGEPOp+X476rAz6gkBeqiWej6dQOtOH3SUDl2cEUrr9UZM8Yi
	lVw/yqLjd+3k1Z0tumlUqpW87zkTBU8grBYy2junheIRRgn9f0Aafd9wGV4r0Rrj
	1U/o3AO1XewqQRVYD+wVLdj79o1DXU2kjbvTTSAA+xr2VNybR8VJzK3PyMcoXcCt
	wGKyut72TtEGFJKSItP0dgLJIRXjYYgTX0A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ewgjee7xa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 10:16:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-915d1d4fc5aso775272085a.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 03:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782123382; x=1782728182; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6FJhL3VDk/UNBfVNQ2ufDXFDqR1nuHCDXcTIhba+JZI=;
        b=gBbFEaFIrNsLZOYqyRA0pjYSlv7zvKWc/Z/TY3ebEN4liwz+Utk1A39kdhmzUqQhiq
         qL4LsE1xeZGjzmBbJ3lkwBV+zYUSJRTCkNImiW5TqllYFaj+TKsyvSko3Vem9qgJQZtN
         pPu3O5doVfDnFc4GhGsu6qRGWhuByt4kRjGw7Ck+h/jFCilvGdXDOyMi9qpG53bID+mi
         dQ1SEBLjLOSpxqVkIHje8R/VcqigJl8TbN7CK+mgiVW0joIBUqqT48tZx7ZYqvxf3XLi
         McC8ZLdTzZbnLHXawNGIM7ExIicP1Smt12JXRDou6YuW6KDLuZxB8mw02TrgKqcNu6g9
         u2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782123382; x=1782728182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6FJhL3VDk/UNBfVNQ2ufDXFDqR1nuHCDXcTIhba+JZI=;
        b=OPZdO+PCfxc2YWA+/B0bt/iVz2yJOcb9L4FyH69gMfzxVrug9c/mT7sUFfH94gCggL
         3rDeJtZ7RXHlqlV6oLMoYfLyVXvYEhNZKs6yME+Y2t5HPXD7fvqrZws1IzVN6ZM0Xtrz
         YXAusRVJXt95l6XapwuNCINIOlwKpyXHRTm7VRVJlQCJz6/v6g8uoX6dxpkVKeCkreNw
         XhHPKVRaZeEm6xNbyoVPXyX5CZLiMwdkYpxnHDzCSwcPHomscLL5DsN5ZUAnFOJ5kI5t
         4ScOknhTNLLEjTd0anPeWKLWEAK4g7dhCORgHNQUljpEYjyhsPaDyz0b3mxSbzCN9r9z
         QQVA==
X-Forwarded-Encrypted: i=1; AFNElJ8xPsdbFgpH9qoKP8Jy+1fck5A8/CJ4ikIfxalggKaKOzzP8gqOw/MSzcXIwEqXOqq2mv7T5B9kvio=@lists.infradead.org
X-Gm-Message-State: AOJu0YzL0T7Ww6XBNOsLxcxwR7dVK/W9p2FGmkskw7Yn7qwAVyi2qaAN
	jkZxe3eKnrlZJS8PAU+nQAg1sp34phxVhabbYa69/B0VXGz15Ay1DaarHGGtOLg65kEyKPQ5yyo
	/VpMU2r/3V2KuHzHdW2HV7VKQsZab00Ouif5kAFE3Pt3HqA+lKTN7m6MUcQW7HPkgoaAq
X-Gm-Gg: AfdE7clG6a0RxjelSSBJ2ijAoiTO4yPZevYyvDXuXmCOJPBPhcO/dnBZ/zNehwenKyw
	NsuUQ7nVwQgXArT06nadF+loB/a5rf4Oaf3hFnjOfjYPftb+O9Pu/HAXnx68pd3dwEC83qWAFZ0
	Rr3jUvtNeYyVCkdhytm0qKde72h51Cfau91JT/nwDNviAajEn9uA2zN37L7Jm+lA+LTasdra6ln
	gv7ROlA37KJOwQjQT3YHXVNXEkitLo80DIbwRg6+41OxDXV2nfmq00hJV1Z8RzvepsUMYffajHv
	OP/CKsEdRDzX20wIpYPij9+RVX+ZLIF7eaIUnkg9sDQm2q0NdxSDcFMwxL+0eIBQ9NpClAgZOlz
	MDe3ThezPw/o9NdhU/BmnFH5Vr74=
X-Received: by 2002:a05:620a:198b:b0:918:42b4:2c9a with SMTP id af79cd13be357-920d40386b7mr2013636285a.29.1782123381290;
        Mon, 22 Jun 2026 03:16:21 -0700 (PDT)
X-Received: by 2002:a05:620a:198b:b0:918:42b4:2c9a with SMTP id af79cd13be357-920d40386b7mr2013624085a.29.1782123380509;
        Mon, 22 Jun 2026 03:16:20 -0700 (PDT)
Received: from quoll ([178.197.218.240])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-466643f4e3esm23796860f8f.8.2026.06.22.03.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 03:16:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Andi Shyti <andi.shyti@kernel.org>, Georgi Djakov <djakov@kernel.org>, Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ulf Hansson <ulfh@kernel.org>, Peter Rosin <peda@lysator.liu.se>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Linus Walleij <linusw@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Sebastian Reichel <sre@kernel.org>, Javier Martinez Canillas <javier@dowhile0.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Jonathan Marek <jonathan@marek.ca>, Taniya Das <quic_tdas@quicinc.com>, Robert Marko <robimarko@gmail.com>, Christian Marangi <ansuelsmth@gmail.com>, Stephan Gerhold <stephan@gerhold.net>, Adam Skladowski <a_skl39@protonmail.com>, Sireesh Kodali <sireeshkodali@protonmail.com>, Barnabas Czeman <barnabas.czeman@mainlining.org>, Imran Shaik <quic_imrashai@quicinc.com>, Sricharan Ramabadhran <quic_srichara@quicinc.com>, Anusha Rao <quic_anusha@quicinc.com>, Luo Jie <quic_luoj@quicinc.com>, Tomasz Figa <tomasz.figa@gmail.com>, Chanho Park <chanho61.park@samsung.com>, Sunyeal Hong <sunyeal.hong@samsung.com>, Shin Son <shin.son@samsung.com>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>, Marek Szyprowski <m.szyprowski@samsung.com>, Alina Yu <alina_yu@richtek.com>, Andy Gross <agross@kernel.org>, =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-i2c@vger.kernel.org, linux-pm@vger.kernel.org, linux-leds@vger.kernel.org, linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-serial@vger.kernel.org, linux-sound@vger.kernel.org, linux-usb@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: clock: Drop incorrect usage of double '::'
Date: Mon, 22 Jun 2026 12:16:07 +0200
Message-ID: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=24353; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=NDaHKfRYeKfH9KSFCkCV8GfjdvyGVZCqLxjnCOc8TeU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqOQtm6WKGQQ181DHzIGUVHvwo8ajomwaG6945F
 QbSd+QsWE6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCajkLZgAKCRDBN2bmhouD
 1ymED/0Zrr0MZA7Wk7JeTATGkIdH+/MqrZ9LiyKRkRT32/hXc1f/Wk0j9cM34nJsYSNWqAgTOBc
 oRMG+KeeXtJVG4+a9gVoeoObdaQ/Q82Ajb7WR+XHPlCxx02HN4s++IE/7UB2oFUp6zVb2HEQGBB
 zoBtvkEBz0qTIzDDaEvOT4sC4DDAtPfVk3cw/A55/WkSsQi9jBlVl21m5H9W+Ua91ycCkoHVLix
 nNlsbQZLn6batIZXN3+hPnZy0P8+X9otRXqu98vLFmipFm3+ARqHKe0nZfYEE8l2sm/0+UTh+KR
 SLcDTVixSmIu3zRepCRfQPPxpKZ1+Gfu5k/GK5ppnzJ2nH1KcV7ufc0qVI+FwW2vmlutrZHQQdg
 jpUrDkLk+PYVyufoFp5Z4cRS7A4zb9ic9jCIpvk7MSQJl2bdkHVfDlxRphCA5RwZq1k8f4CfJuQ
 6jcMUoLc5Ko4VA5nfnI9qoBrhvsc4ziDCpbhYUOWZu1mROBjNbdkj3SURfXJXMp0zlku1sXPfsF
 QQf4mVAHgfZXNA6bo0+KCUg42tQQ3wStlaSQvvuZhrYJCTXDGNBDtvTi6YNL4hIaSTUc2x0at97
 W6vVjGBFnZl3jTWTP/0/0rJnp2kBOtwadkk6z/wo+35xYc1oXifYabU6TLkBGxBrqiVjCLJ5Xf3 eGsLFDODZA5606w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: I5hhugyz4bz-2-EH1bDLcHwimBIZkiFK
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDEwMSBTYWx0ZWRfXxOcwgoVvEGap
 b6nhjntT0c92Eb8vCU9nANmv/MqzLgiulOQZ38Wi8f1Y6poM9b94iyqzWwZXJ7ff0PoS/PelnkG
 xxaxWcm0V1376IOnw7/li76V2rmGa34=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDEwMSBTYWx0ZWRfX1RszoUuodTKF
 D4jnfwl2F/eCgCX5GXwAMONbdX7xEcLKzx0XfSaTVIqaDz/h2xXurPLr185hSjZKiFgnMJAD3hA
 JwLuNQMuKtbiC/fzk0Bql/eAxh2mbpkyRwVgdspxqDi4uPW8NYDbQUnt/rfw0VgIgC6xdo62vcv
 jZBbo9IfEm4YNJb/tMTRrYovaqwxJcvo3zU8tZOKgPbeRJ0Ef1OJh2vXNXKwVMsc5aHFSoOV6fQ
 TWQxYUvO1rViY08oWbK2BiFAGH5Ytk/s8zpmnQuE8TgXapQfoKB08mCTX+9acHrOAm4uSFZiwdq
 6WVy0yeIOdTu6CfP81QU8kDthvMcOJCw3T3VbZuH2S1ICYsRZ5yx+TNXE/nKseSKz1FLDQCvCpJ
 OtgL3FdFXEUE9yOle1rLVzbXKkKH518c9vwvGn76331q9NLn0mv9eu9Q9sIKa0Q+q6pF/ZxLsX0
 DXJm31s+4c4wPeWBbNw==
X-Proofpoint-GUID: I5hhugyz4bz-2-EH1bDLcHwimBIZkiFK
X-Authority-Analysis: v=2.4 cv=TO51jVla c=1 sm=1 tr=0 ts=6a390b76 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=qMZSjPy+XpteAuilWfML4g==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=fqWYVyBuAAAA:8
 a=EUspDBNiAAAA:8 a=J0GIerTWSdZY7DC3b3UA:9 a=PEH46H7Ffwr30OY-TuGO:22
 a=3EkFFxAVN7Xjp7FSp-fE:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_01,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 malwarescore=0 clxscore=1015 phishscore=0
 spamscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_111628_050090_AEE59B85 
X-CRM114-Status: GOOD (  17.06  )
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

There is no use of double colon '::' in YAML. OTOH, the literal style
block, e.g. using '|' treats all characters as content [1] therefore
single use of ':' in descriptions is perfectly fine, whenever '|' is
used.

Cleanup existing code, so the confusing style won't be re-used in new
contributions.

Link: https://yaml.org/spec/1.2.2/#literal-style [1]
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

I split the patches to avoid bounces from mailing list due to email size.

This can go via clock tree (no dependencies)... or both could go via
Rob's tree.
---
 .../devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml       | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-apq8064.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-apq8084.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-ipq6018.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-ipq8064.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-mdm9607.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-mdm9615.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-msm8660.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-msm8909.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-msm8916.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-msm8953.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-msm8974.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,gcc-sdm660.yaml          | 2 +-
 Documentation/devicetree/bindings/clock/qcom,gpucc.yaml     | 2 +-
 .../devicetree/bindings/clock/qcom,ipq5018-gcc.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,ipq9574-gcc.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,qca8k-nsscc.yaml         | 2 +-
 .../devicetree/bindings/clock/qcom,qcm2290-gpucc.yaml       | 2 +-
 Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml     | 2 +-
 .../devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml  | 2 +-
 .../devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml    | 2 +-
 .../devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml      | 2 +-
 .../devicetree/bindings/clock/qcom,sm8350-videocc.yaml      | 2 +-
 Documentation/devicetree/bindings/clock/qcom,videocc.yaml   | 2 +-
 .../devicetree/bindings/clock/samsung,exynos5260-clock.yaml | 6 +++---
 .../devicetree/bindings/clock/samsung,exynos5410-clock.yaml | 2 +-
 .../devicetree/bindings/clock/samsung,exynos5433-clock.yaml | 2 +-
 .../devicetree/bindings/clock/samsung,exynos7-clock.yaml    | 2 +-
 .../devicetree/bindings/clock/samsung,exynos850-clock.yaml  | 2 +-
 .../bindings/clock/samsung,exynosautov9-clock.yaml          | 2 +-
 .../bindings/clock/samsung,exynosautov920-clock.yaml        | 2 +-
 .../devicetree/bindings/clock/samsung,s5pv210-clock.yaml    | 2 +-
 32 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
index 53a5ab319159..6863db9bd092 100644
--- a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm display clock control module provides the clocks, resets and power
   domains on SM8150/SM8250/SM8350.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,dispcc-sm8150.h
     include/dt-bindings/clock/qcom,dispcc-sm8250.h
     include/dt-bindings/clock/qcom,dispcc-sm8350.h
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml
index 27df7e3e5bf3..68532244901e 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8064.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on APQ8064.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-msm8960.h
     include/dt-bindings/reset/qcom,gcc-msm8960.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml
index 0a0a26d9beab..1c022e75fd71 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-apq8084.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on APQ8084.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-apq8084.h
     include/dt-bindings/reset/qcom,gcc-apq8084.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml
index 4d2614d4f368..c7fb84438db7 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml
@@ -15,7 +15,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on IPQ6018.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-ipq6018.h
     include/dt-bindings/reset/qcom,gcc-ipq6018.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml
index a71557395c01..b4d3175780bc 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq8064.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on IPQ8064.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-ipq806x.h (qcom,gcc-ipq8064)
     include/dt-bindings/reset/qcom,gcc-ipq806x.h (qcom,gcc-ipq8064)
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml
index d7da30b0e7ee..0a7be7583bdd 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-mdm9607.h
 
 allOf:
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml
index 418dea31eb62..0656d5ee448d 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-mdm9615.h
 
 allOf:
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml
index e03b6d0acdb6..70c9da1f35c2 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks and resets on
   MSM8660
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-msm8660.h
     include/dt-bindings/reset/qcom,gcc-msm8660.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8909.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8909.yaml
index ce1f5a60bd8c..2edb6c251d99 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8909.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8909.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on MSM8909, MSM8917 or QM215.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-msm8909.h
     include/dt-bindings/clock/qcom,gcc-msm8917.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8916.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8916.yaml
index 258b6b93deca..af4b639ea8c3 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8916.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8916.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on MSM8916 or MSM8939.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-msm8916.h
     include/dt-bindings/clock/qcom,gcc-msm8939.h
     include/dt-bindings/reset/qcom,gcc-msm8916.h
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8953.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8953.yaml
index ced3118c8580..fc0360554f68 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8953.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8953.yaml
@@ -15,7 +15,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on MSM8937, MSM8940, MSM8953 or SDM439.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-msm8917.h
     include/dt-bindings/clock/qcom,gcc-msm8953.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml
index 929fafc84c19..378dfe7854ac 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml
@@ -15,7 +15,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on MSM8974 (all variants) and MSM8226.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
     include/dt-bindings/reset/qcom,gcc-msm8974.h (qcom,gcc-msm8226 and qcom,gcc-msm8974)
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml
index 724ce0491118..72aaf699cf70 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm660.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on SDM630, SDM636 and SDM660
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gcc-sdm660.h  (qcom,gcc-sdm630 and qcom,gcc-sdm660)
 
 $ref: qcom,gcc.yaml#
diff --git a/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
index 4cdff6161bf0..3ac4419009a9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm graphics clock control module provides the clocks, resets and power
   domains on Qualcomm SoCs.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,gpucc-sdm845.h
     include/dt-bindings/clock/qcom,gpucc-sa8775p.h
     include/dt-bindings/clock/qcom,gpucc-sc7180.h
diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq5018-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq5018-gcc.yaml
index 489d0fc5607c..9925b931ecad 100644
--- a/Documentation/devicetree/bindings/clock/qcom,ipq5018-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq5018-gcc.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on IPQ5018
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,ipq5018-gcc.h
     include/dt-bindings/reset/qcom,ipq5018-gcc.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml
index 27ae9938febc..5b128fa841aa 100644
--- a/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm global clock control module provides the clocks, resets and power
   domains on IPQ9574
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,ipq9574-gcc.h
     include/dt-bindings/reset/qcom,ipq9574-gcc.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,qca8k-nsscc.yaml b/Documentation/devicetree/bindings/clock/qcom,qca8k-nsscc.yaml
index 61473385da2d..3da10c364a85 100644
--- a/Documentation/devicetree/bindings/clock/qcom,qca8k-nsscc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,qca8k-nsscc.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm NSS clock control module provides the clocks and resets
   on QCA8386(switch mode)/QCA8084(PHY mode)
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,qca8k-nsscc.h
     include/dt-bindings/reset/qcom,qca8k-nsscc.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,qcm2290-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,qcm2290-gpucc.yaml
index 734880805c1b..bedbdabef672 100644
--- a/Documentation/devicetree/bindings/clock/qcom,qcm2290-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,qcm2290-gpucc.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm graphics clock control module provides the clocks, resets and power
   domains on Qualcomm SoCs.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,qcm2290-gpucc.h
 
 properties:
diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
index ab97d4b7dba8..b6c835bfd0d9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   The clock enumerators are defined in <dt-bindings/clock/qcom,rpmcc.h> and
-  come in pairs:: FOO_CLK followed by FOO_A_CLK. The latter clock is
+  come in pairs: FOO_CLK followed by FOO_A_CLK. The latter clock is
   an "active" clock, which means that the consumer only care that the clock is
   available when the apps CPU subsystem is active, i.e. not suspended or in
   deep idle. If it is important that the clock keeps running during system
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
index 99ab9106009f..fd06ac9bceb9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm LPASS core and audio clock control module provides the clocks and
   power domains on SC7280.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,lpasscorecc-sc7280.h
     include/dt-bindings/clock/qcom,lpassaudiocc-sc7280.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
index 273d66e245c5..f235b4e24cc7 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm LPASS core and audio clock control module provides the clocks,
   and reset on SC8280XP.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,lpasscc-sc8280xp.h
 
 properties:
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
index 8cbab3fbb660..d7e1938b5e1b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
@@ -14,7 +14,7 @@ description: |
   Qualcomm LPASS core and audio clock controllers provide audio-related resets
   on SM6115 and its derivatives.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,sm6115-lpasscc.h
 
 properties:
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8350-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8350-videocc.yaml
index 5c2ecec0624e..a986ab4ce7c7 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8350-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8350-videocc.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm video clock control module provides the clocks, resets and power
   domains on Qualcomm SoCs.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,videocc-sm8350.h
     include/dt-bindings/reset/qcom,videocc-sm8350.h
 
diff --git a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
index f4ff9acef9d5..124d259fc85e 100644
--- a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
@@ -13,7 +13,7 @@ description: |
   Qualcomm video clock control module provides the clocks, resets and power
   domains on Qualcomm SoCs.
 
-  See also::
+  See also:
     include/dt-bindings/clock/qcom,sm6350-videocc.h
     include/dt-bindings/clock/qcom,videocc-sc7180.h
     include/dt-bindings/clock/qcom,videocc-sc7280.h
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos5260-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos5260-clock.yaml
index b05f83533e3d..56ab972c3da5 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos5260-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos5260-clock.yaml
@@ -14,17 +14,17 @@ maintainers:
 
 description: |
   Expected external clocks, defined in DTS as fixed-rate clocks with a matching
-  name::
+  name:
     - "fin_pll" - PLL input clock from XXTI
     - "xrtcxti" - input clock from XRTCXTI
     - "ioclk_pcm_extclk" - pcm external operation clock
     - "ioclk_spdif_extclk" - spdif external operation clock
     - "ioclk_i2s_cdclk" - i2s0 codec clock
 
-  Phy clocks::
+  Phy clocks:
   There are several clocks which are generated by specific PHYs.  These clocks
   are fed into the clock controller and then routed to the hardware blocks.
-  These clocks are defined as fixed clocks in the driver with following names::
+  These clocks are defined as fixed clocks in the driver with following names:
     - "phyclk_dptx_phy_ch3_txd_clk" - dp phy clock for channel 3
     - "phyclk_dptx_phy_ch2_txd_clk" - dp phy clock for channel 2
     - "phyclk_dptx_phy_ch1_txd_clk" - dp phy clock for channel 1
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos5410-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos5410-clock.yaml
index b737c9d35a1c..1d907dd8fbf1 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos5410-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos5410-clock.yaml
@@ -14,7 +14,7 @@ maintainers:
 
 description: |
   Expected external clocks, defined in DTS as fixed-rate clocks with a matching
-  name::
+  name:
     - "fin_pll" - PLL input clock from XXTI
 
   All available clocks are defined as preprocessor macros in
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos5433-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos5433-clock.yaml
index 3f9326e09f79..8a289f1e2ace 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos5433-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos5433-clock.yaml
@@ -14,7 +14,7 @@ maintainers:
 
 description: |
   Expected external clocks, defined in DTS as fixed-rate clocks with a matching
-  name::
+  name:
     - "oscclk" - PLL input clock from XXTI
 
   All available clocks are defined as preprocessor macros in
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml
index c137c6744ef9..a51cd4fafb41 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml
@@ -14,7 +14,7 @@ maintainers:
 
 description: |
   Expected external clocks, defined in DTS as fixed-rate clocks with a matching
-  name::
+  name:
     - "fin_pll" - PLL input clock from XXTI
 
   All available clocks are defined as preprocessor macros in
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
index cdc5ded59fe5..68c2fd318765 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
@@ -17,7 +17,7 @@ description: |
   Exynos850 clock controller is comprised of several CMU units, generating
   clocks for different domains. Those CMU units are modeled as separate device
   tree nodes, and might depend on each other. Root clocks in that clock tree are
-  two external clocks:: OSCCLK (26 MHz) and RTCCLK (32768 Hz). Those external
+  two external clocks: OSCCLK (26 MHz) and RTCCLK (32768 Hz). Those external
   clocks must be defined as fixed-rate clocks in dts.
 
   CMU_TOP is a top-level CMU, where all base clocks are prepared using PLLs and
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynosautov9-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynosautov9-clock.yaml
index 32f39e543b36..e9d17d48b4f3 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynosautov9-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynosautov9-clock.yaml
@@ -17,7 +17,7 @@ description: |
   Exynos Auto v9 clock controller is comprised of several CMU units, generating
   clocks for different domains. Those CMU units are modeled as separate device
   tree nodes, and might depend on each other. Root clocks in that clock tree are
-  two external clocks:: OSCCLK/XTCXO (26 MHz) and RTCCLK/XrtcXTI (32768 Hz).
+  two external clocks: OSCCLK/XTCXO (26 MHz) and RTCCLK/XrtcXTI (32768 Hz).
   The external OSCCLK must be defined as fixed-rate clock in dts.
 
   CMU_TOP is a top-level CMU, where all base clocks are prepared using PLLs and
diff --git a/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
index 6b1fc61a2ff9..475db824d4d3 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
@@ -17,7 +17,7 @@ description: |
   ExynosAuto v920 clock controller is comprised of several CMU units, generating
   clocks for different domains. Those CMU units are modeled as separate device
   tree nodes, and might depend on each other. Root clocks in that clock tree are
-  two external clocks:: OSCCLK/XTCXO (38.4 MHz) and RTCCLK/XrtcXTI (32768 Hz).
+  two external clocks: OSCCLK/XTCXO (38.4 MHz) and RTCCLK/XrtcXTI (32768 Hz).
   The external OSCCLK must be defined as fixed-rate clock in dts.
 
   CMU_TOP is a top-level CMU, where all base clocks are prepared using PLLs and
diff --git a/Documentation/devicetree/bindings/clock/samsung,s5pv210-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,s5pv210-clock.yaml
index 67a33665cf00..b1617d96d3fb 100644
--- a/Documentation/devicetree/bindings/clock/samsung,s5pv210-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,s5pv210-clock.yaml
@@ -14,7 +14,7 @@ maintainers:
 
 description: |
   Expected external clocks, defined in DTS as fixed-rate clocks with a matching
-  name::
+  name:
     - "xxti" - external crystal oscillator connected to XXTI and XXTO pins of
       the SoC,
     - "xusbxti" - external crystal oscillator connected to XUSBXTI and XUSBXTO
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
