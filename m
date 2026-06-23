Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E8ACDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OPZP/WCFnekbmaI/FrFeedafIktMZrWsZ9xtQANVkSw=; b=Fe4o16lrE+u5L5RAG5jF1/L7hA
	lUe8bjrgnpkhZDk3v21arCHnwyEF5v0R1KP5Srif1sBahfROwdRP0X7MzOghYs7G9Vy4dghOCtZtL
	CwivT6PXfp+QHtKlV+j45VaZjzBf5yLi0kJDySjb972+ktoRpGBcVh8BieKur4PaeK0vUiCkDHfEE
	UR1eGd8KlggfWPhQPWx0VEFtAZM6VhIQm31L6zqb+nJfoibMBlkzyFBkjsSipKJLvjl2VNoCBMw+v
	2Cp/P79jVgTzMOYyUJOrN8FU34tqRV23P44JZoYRPwg/nNkyvUasW51AgHNHHzrSSRMzsS658+YT2
	lJAXgykw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzZw-00000006CUx-2ZFe;
	Tue, 23 Jun 2026 11:46:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzZt-00000006CTk-3MxX
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 11:46:07 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBXj892309198
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:46:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m5U5jjEW9F6IsBKiOyKcfNkewQXQpsrvSh1PrEY+JBU=; b=exUMlBslb0malfKz
	wCVTsgbL6sHO2bs58FC2dSO2vcOdObXhisMaudGZqA+tvxqLVcxYMqo53yM5ZR3k
	XgaFyf1xh5KgV/PPy3y70NVXa1uNxhmxw94+fRE5kzc861jjNTEkp8qJDvUWoR6K
	rDO5jMbVYXVvf1I3jovyjDvZPXW+MH4biNZK3cbEceK9vZN4EZC304yp8g+n68sx
	TbW5Sgatnbk8GjPZq4FkVYvsrOiIeJJyG9AyJpWJkmjeU+4evg7ol9N4Qb8sRU6Y
	oR5lhUn7boKNCCKY7S/c+dL5/L+QKMpvL32nAU1kri1Ox2Sulta97j8lScjbM9h8
	9+z2Gg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyp1gry9b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:46:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8e3ae05d649so20112926d6.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 04:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782215164; x=1782819964; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m5U5jjEW9F6IsBKiOyKcfNkewQXQpsrvSh1PrEY+JBU=;
        b=LN7UZT2bXrm+U3ccJuOAyAPvJk8XKpszaMf26qxCP1qQ2K3BIIM7SRg5lIJzVLJ5bZ
         ss7UkSfrSVpvcNoTXj4vMx/VdjT7yozUBCEhlmMs9N3V44qj1jEbbOypp8mlJWHpe93H
         BAK9l7kavfymHxb0F2/7nJIWx5/v3uRUB9UebNjzTYSeNx6rLgJlGybFmMbJ39a4zDFY
         znJEsLZBJxuH1s2Zfct+VBiX3kWpnCUrfg6jekP81Z5iUrc5K7l4K60urdWF0iEUQ5uM
         YX44a0HuNBlW/yJ2TPtedQigMzPA5Y9zDlYYdgpNN5MUZvrg3pbWLhc5SC0RQN9R7QdD
         rNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782215164; x=1782819964;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m5U5jjEW9F6IsBKiOyKcfNkewQXQpsrvSh1PrEY+JBU=;
        b=YKgyRR6xI0gZAqm+xjEL34s7TBwlf5mmnrTPKPG3T2T9R7H8cpOm9qewSU7OAhVaem
         MGT5iZgf9Q2BXsEL6ivit2J+sLhhf9hjXSESi+IBQR/Dvv8ZoBPSnwnIl2OS28Da7/oN
         qZd/zBfPyLbtXZZSE337j8zlTbWD55KNtZ8MtZFmhK7fpyaiaRn/ElLTlxlivzm4iL6J
         SvDELqIqtM/nuajzj8GoekNtoQt4h2rFjFssM3BcHAJr81d+aNoNAY3by/o5D8XrvzBa
         uIb9z3eMCHs/Jskohhk2XdlM9bZ2M6L2TjdsbZLUzFW+/qR0b6rx/o3a/4q4s24iJZIe
         9oyA==
X-Forwarded-Encrypted: i=1; AFNElJ9JRIbTtApzWRQJo54P64iWqSZTlrhwX0+950269Pn3wl8x1vdAvK31K/w+fypqB6g94YB4d8q7v/w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz05NCQHZwpNct39SP2SF+meHjsXhZxxnUBgvbPrJ8GLlt+h+WK
	ra9Ux1rcjmAsN4TA980hMGeKJTK9VHC2Jht6tdEqWkNXk+ohVup2E7sF9ykyHM167ycgQIC5pJj
	7fTKoYc8Gn3cLlG5bl4cUAz/byNYQIqbH4v2VJg7zx/l2h4QBorun4E5qrfI7AxY3HDnM
X-Gm-Gg: AfdE7ck1wl27k/2s6OM0QYlSXcw3whyuCy4MXSSqRyfPyvgB7cinc+LL75oZLUBp+2o
	sbqAuHJLrnqyZlRTRSHeo6bJyqr1HBDSo3yVygw5yXWkM1ZaoyqT6EhZV93crZxS2XBQSNedJxl
	wd7OU6op8WUDxhaBkgWrgUZYtty4Y5eTeab28nqRGuZ0Y/0yFtdsMb1PjPWhYtDM0fhm3PiPDID
	FKvyYwqFSQ3bSzbzTQHmhS3HLuMZoDqXf7RCJ5rlF70xEf4zyDgKFGsYIHotxW4yVZdidoSAOPD
	fK0XaTEjwHEBxvB8knNt8icZf4Gc1lCMDTG+JRjBrIl2FAA3esYOueg+5f0Q3RHi9k7rZy9IEdX
	Os6ZG7YN/djQjDTEqhAGOmSn6iTRqAgJzkehgsT2LS/b5FY5L3fWYQedtdqLwWPxAHi3ub5T6Fg
	==
X-Received: by 2002:a05:620a:4625:b0:915:d322:c47b with SMTP id af79cd13be357-92645aa5b4dmr405209485a.13.1782215163898;
        Tue, 23 Jun 2026 04:46:03 -0700 (PDT)
X-Received: by 2002:a05:620a:4625:b0:915:d322:c47b with SMTP id af79cd13be357-92645aa5b4dmr405194985a.13.1782215163149;
        Tue, 23 Jun 2026 04:46:03 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:21db:9254:19d9:645e? ([2a05:6e02:1041:c10:21db:9254:19d9:645e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4923fe7ba08sm370702135e9.11.2026.06.23.04.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 04:46:02 -0700 (PDT)
Message-ID: <b35abbd7-f06e-4794-91a1-bdaccd63af50@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:45:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Andi Shyti <andi.shyti@kernel.org>, Georgi Djakov <djakov@kernel.org>, Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ulf Hansson <ulfh@kernel.org>, Peter Rosin <peda@lysator.liu.se>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Linus Walleij <linusw@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Sebastian Reichel <sre@kernel.org>, Javier Martinez Canillas <javier@dowhile0.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Jonathan Marek <jonathan@marek.ca>, Taniya Das <quic_tdas@quicinc.com>, Robert Marko <robimarko@gmail.com>, Christian Marangi <ansuelsmth@gmail.com>, Stephan Gerhold <stephan@gerhold.net>, Adam Skladowski <a_skl39@protonmail.com>, Sireesh Kodali <sireeshkodali@protonmail.com>, Barnabas Czeman <barnabas.czeman@mainlining.org>, Imran Shaik <quic_imrashai@quicinc.com>, Sricharan Ramabadhran <quic_srichara@quicinc.com>, Anusha Rao <quic_anusha@quicinc.com>, Luo Jie <quic_luoj@quicinc.com>, Tomasz Figa <tomasz.figa@gmail.com>, Chanho Park <chanho61.park@samsung.com>, Sunyeal Hong <sunyeal.hong@samsung.com>, Shin Son <shin.son@samsung.com>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>, Marek Szyprowski <m.szyprowski@samsung.com>, Alina Yu <alina_yu@richtek.com>, Andy Gross <agross@kernel.org>, =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-i2c@vger.kernel.org, linux-pm@vger.kernel.org, linux-leds@vger.kernel.org, linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-serial@vger.kernel.org, linux-sound@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5FyVQ6t13sEvoaG_0xbZ5cm4GwLsSQpr
X-Proofpoint-GUID: 5FyVQ6t13sEvoaG_0xbZ5cm4GwLsSQpr
X-Authority-Analysis: v=2.4 cv=QJhYgALL c=1 sm=1 tr=0 ts=6a3a71fd cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=fqWYVyBuAAAA:8
 a=EUspDBNiAAAA:8 a=p1VIHm5NO6eVjb5xVX8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=3EkFFxAVN7Xjp7FSp-fE:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA5NiBTYWx0ZWRfX1/cbPAV+vYFD
 X2fQjCODH76ZtcMn21w4B8zY2A8egL47UDK+API4lV714TkZduWtIiCUylz7iy63TZRReZDDTQv
 EmiBQeIiY6vQZIYNoI6JVmT6FX2whjU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA5NiBTYWx0ZWRfXxdiJ8AzSi8Zp
 hoiZ45wriBJb0UpU93MjAKtGDF8eALTtgRPWKBPD9bbZUoPDKakafiGhfhEM1AiFlkYi3s5n2LH
 koQRuAxT+9v/R1nkwxBLeF2Ijjp2Yiy6Oxl2K/N1gnYglRTq55EsJL4py/SmRgZJSHx/UtjEZPB
 q3we+6y7Ec3gbTLn2/HwY/RWWW98nrfqBqwBvk0n+grnaozXeRbHMZYFtISrk4mukPeGYmp5Y4H
 kmxHss8F964HAj0RKZIBs1zqXGMqwBN5BoaLlESGpCMRWqj532UwlBBRkZK/tRu8j9paZ9RfWm4
 n5vMWdB9H8+v9i5prcV554SlLzzihPV62M9dCP98IptbmMQrooHjoZ1zVUL7wMynf/Qin10pB5d
 XEcEzsV+bOo85KhD5RWwl61O1nJ1+RZeKDguHW2YkLqoSdmB6RKDOF6uZH1uNS8kl33FWFV5MRq
 WyNAupgcjsUMTiiLwZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 clxscore=1011 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_044605_883856_CAF784E8 
X-CRM114-Status: GOOD (  16.66  )
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

On 6/22/26 12:16, Krzysztof Kozlowski wrote:
> There is no use of double colon '::' in YAML. OTOH, the literal style
> block, e.g. using '|' treats all characters as content [1] therefore
> single use of ':' in descriptions is perfectly fine, whenever '|' is
> used.
> 
> Cleanup existing code, so the confusing style won't be re-used in new
> contributions.
> 
> Link: https://yaml.org/spec/1.2.2/#literal-style [1]
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Intention for this patch is to go via Rob's tree.
> ---
>   .../devicetree/bindings/arm/qcom-soc.yaml     |  4 ++--
>   .../devicetree/bindings/arm/qcom.yaml         |  4 ++--
>   .../bindings/arm/samsung/samsung-soc.yaml     |  4 ++--
>   .../display/msm/dsi-controller-main.yaml      | 20 +++++++++----------
>   .../display/samsung/samsung,fimd.yaml         |  4 ++--
>   .../bindings/i2c/samsung,s3c2410-i2c.yaml     |  2 +-
>   .../interconnect/qcom,msm8998-bwmon.yaml      |  2 +-
>   .../interconnect/samsung,exynos-bus.yaml      | 14 ++++++-------
>   .../bindings/leds/qcom,pm8058-led.yaml        |  4 ++--
>   .../bindings/leds/skyworks,aat1290.yaml       |  6 +++---
>   .../bindings/media/cec/cec-gpio.yaml          |  2 +-
>   .../bindings/mmc/samsung,exynos-dw-mshc.yaml  |  2 +-
>   .../devicetree/bindings/mux/mux-consumer.yaml |  4 ++--
>   .../bindings/phy/samsung,mipi-video-phy.yaml  |  4 ++--
>   .../bindings/phy/samsung,usb2-phy.yaml        |  2 +-
>   .../bindings/phy/samsung,usb3-drd-phy.yaml    |  2 +-
>   .../bindings/pinctrl/samsung,pinctrl.yaml     |  2 +-
>   .../bindings/power/renesas,rcar-sysc.yaml     |  2 +-
>   .../bindings/power/reset/restart-handler.yaml |  8 ++++----
>   .../bindings/regulator/maxim,max77802.yaml    |  4 ++--
>   .../bindings/regulator/richtek,rtq2208.yaml   |  2 +-
>   .../bindings/serial/qcom,msm-uartdm.yaml      |  2 +-
>   .../devicetree/bindings/slimbus/slimbus.yaml  |  4 ++--
>   .../bindings/soc/qcom/qcom,apr-services.yaml  |  2 +-
>   .../bindings/soc/qcom/qcom,rpmh-rsc.yaml      |  8 ++++----
>   .../bindings/soc/qcom/qcom,wcnss.yaml         |  2 +-
>   .../bindings/soc/renesas/renesas-soc.yaml     |  4 ++--
>   .../bindings/sound/qcom,q6asm-dais.yaml       |  2 +-
>   .../thermal/samsung,exynos-thermal.yaml       |  4 ++--

Acked-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com> # thermal


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
