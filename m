Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 731CACDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 03:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQ4/Neb/q/+nvxSDwISRzcTNhyGVydd2hd/5mcXXhlY=; b=JffQ2eZtyaDUb+
	2wMf1uveAmSu+yCU1wpTja3rlyo03iO/Vh1DawSQ3l4hxCOyrQp9/3OPGDy0TmIlKprXH5yI1onjO
	p7aGr1ont1hVl1v9Hl9Ja+2hYFmFBP5hz8WYXR5geNCUokfTuwJvK3h95cBM9bIVG95R+hdyyRMAL
	xfxVLq/ls2wj1P91Jca8/7wxiKCSOa+Xbyf1EyrIkkD9l4kvioWt5kyt7kZ2EQGaO4Swv2XxvK5mH
	2mNSTyE9v2b/CF4ZqZoOhFrE0I1aaA6NtVtkD1nHL470+WoUeg5JWhRLvapw3E3nAgtxlnN2zekny
	ntOGKCJYz24GsOAgGmkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbrZg-00000005dkQ-075J;
	Tue, 23 Jun 2026 03:13:20 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbrZZ-00000005dj6-3ecc;
	Tue, 23 Jun 2026 03:13:17 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260623031303epoutp02488f852023875c7b097a7427dfb11950~7l0ExemEP0684306843epoutp02R;
	Tue, 23 Jun 2026 03:13:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260623031303epoutp02488f852023875c7b097a7427dfb11950~7l0ExemEP0684306843epoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1782184383;
	bh=xYWvnYzx61MOHShrICO4N9ZwFKzGqTfE6OdZqCfXxL4=;
	h=From:To:In-Reply-To:Subject:Date:References:From;
	b=HSBXm6WralSrItnUo41WTp4Q9bHEdBGeR/ktDAbhDUX4jHkktSgXl1qVmshH/Zbfz
	 HyFkrFLLFUikPIvVZvLN8hutNjgoW819TbAeR9N1Fg49C1AhVAoaidIA6WQL6TnjHz
	 ZebhsaMkFvMv6aZD8a/rzkNbslvDGFU7faVRYhzM=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260623031303epcas5p1fd11dbfc745aa99f18d960e686705fcd~7l0Ec3mqg0166901669epcas5p1o;
	Tue, 23 Jun 2026 03:13:03 +0000 (GMT)
Received: from epcpadp2new (unknown [182.195.40.142]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4gkqrb2vfDz6B9m9; Tue, 23 Jun
	2026 03:13:03 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20260622114230epcas5p3e590b84087d9879e30d604f89ce938a8~7ZHlpxa2p3249132491epcas5p3i;
	Mon, 22 Jun 2026 11:42:30 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260622114216epsmtip1ccbcb97431d34878191527dbce3b94b6~7ZHYxKdLA2526625266epsmtip1D;
	Mon, 22 Jun 2026 11:42:16 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@oss.qualcomm.com>, "'Bjorn
 Andersson'" <andersson@kernel.org>, "'Konrad Dybcio'"
	<konradybcio@kernel.org>, "'Rob Herring'" <robh@kernel.org>, "'Krzysztof
 Kozlowski'" <krzk+dt@kernel.org>, "'Conor Dooley'" <conor+dt@kernel.org>,
	"'Peter Griffin'" <peter.griffin@linaro.org>, "'Michael	Turquette'"
	<mturquette@baylibre.com>, "'Stephen Boyd'" <sboyd@kernel.org>, "'Brian
 Masney'" <bmasney@redhat.com>, "'Sylwester Nawrocki'"
	<s.nawrocki@samsung.com>, "'Chanwoo Choi'" <cw00.choi@samsung.com>, "'Sam
 Protsenko'" <semen.protsenko@linaro.org>, "'Rob Clark'"
	<robin.clark@oss.qualcomm.com>, "'Dmitry Baryshkov'" <lumag@kernel.org>,
	"'Abhinav Kumar'" <abhinav.kumar@linux.dev>, "'Jessica Zhang'"
	<jesszhan0024@gmail.com>, "'Sean Paul'" <sean@poorly.run>, "'Marijn
	Suijten'" <marijn.suijten@somainline.org>, "'David	Airlie'"
 <airlied@gmail.com>, "'Simona Vetter'" <simona@ffwll.ch>, "'Maarten
	Lankhorst'" <maarten.lankhorst@linux.intel.com>, "'Maxime Ripard'"
 <mripard@kernel.org>, "'Thomas Zimmermann'" <tzimmermann@suse.de>, "'Inki
	Dae'" <inki.dae@samsung.com>, "'Seung-Woo Kim'" <sw0312.kim@samsung.com>,
	"'Kyungmin	Park'" <kyungmin.park@samsung.com>, "'Andi Shyti'"
	<andi.shyti@kernel.org>, "'Georgi	Djakov'" <djakov@kernel.org>, "'Lee
	Jones'" <lee@kernel.org>, "'Pavel Machek'" <pavel@kernel.org>, "'Hans
	Verkuil'" <hverkuil@kernel.org>, "'Mauro Carvalho	Chehab'"
 <mchehab@kernel.org>, "'Ulf Hansson'" <ulfh@kernel.org>, "'Peter Rosin'"
 <peda@lysator.liu.se>, "'Vinod Koul'" <vkoul@kernel.org>, "'Neil Armstrong'"
 <neil.armstrong@linaro.org>, "'Linus Walleij'" <linusw@kernel.org>, "'Geert
	Uytterhoeven'" <geert+renesas@glider.be>, "'Magnus Damm'"
 <magnus.damm@gmail.com>, "'Sebastian Reichel'" <sre@kernel.org>, "'Javier
	Martinez Canillas'" <javier@dowhile0.org>, "'Liam Girdwood'"
 <lgirdwood@gmail.com>, "'Mark Brown'" <broonie@kernel.org>, "'Greg
	Kroah-Hartman'" <gregkh@linuxfoundation.org>, "'Jiri	Slaby'"
 <jirislaby@kernel.org>, "'Srinivas Kandagatla'" <srini@kernel.org>,
	"'Bartlomiej Zolnierkiewicz'" <bzolnier@gmail.com>, "'Rafael J. Wysocki'"
	<rafael@kernel.org>, "'Daniel Lezcano'" <daniel.lezcano@kernel.org>, "'Zhang
 Rui'" <rui.zhang@intel.com>, "'Lukasz Luba'" <lukasz.luba@arm.com>,
	"'Jonathan Marek'" <jonathan@marek.ca>, "'Taniya Das'"
	<quic_tdas@quicinc.com>, "'Robert Marko'" <robimarko@gmail.com>, "'Christian
 Marangi'" <ansuelsmth@gmail.com>, "'Stephan	Gerhold'" <stephan@gerhold.net>,
	"'Adam Skladowski'" <a_skl39@protonmail.com>, "'Sireesh Kodali'"
	<sireeshkodali@protonmail.com>, "'Barnabas Czeman'"
	<barnabas.czeman@mainlining.org>, "'Imran Shaik'"
	<quic_imrashai@quicinc.com>, "'Sricharan Ramabadhran'"
	<quic_srichara@quicinc.com>, "'Anusha Rao'" <quic_anusha@quicinc.com>, "'Luo
 Jie'" <quic_luoj@quicinc.com>, "'Tomasz Figa'" <tomasz.figa@gmail.com>,
	"'Chanho Park'" <chanho61.park@samsung.com>, "'Sunyeal	Hong'"
	<sunyeal.hong@samsung.com>, "'Shin Son'" <shin.son@samsung.com>, "'Krishna
 Manikandan'" <quic_mkrishn@quicinc.com>, "'Jacek Anaszewski'"
	<jacek.anaszewski@gmail.com>, "'Jaehoon Chung'" <jh80.chung@samsung.com>,
	"'Marek	Szyprowski'" <m.szyprowski@samsung.com>, "'Alina Yu'"
	<alina_yu@richtek.com>, "'Andy	Gross'" <agross@kernel.org>,
	=?UTF-8?Q?'Niklas_S=C3=B6derlund'?= <niklas.soderlund@ragnatech.se>,
	"'Wesley Cheng'" <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-clk@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<freedreno@lists.freedesktop.org>, <linux-i2c@vger.kernel.org>,
	<linux-pm@vger.kernel.org>, <linux-leds@vger.kernel.org>,
	<linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-gpio@vger.kernel.org>,
	<linux-renesas-soc@vger.kernel.org>, <linux-serial@vger.kernel.org>,
	<linux-sound@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<cpgs@samsung.com>
In-Reply-To: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
Subject: RE: [PATCH 1/2] dt-bindings: clock: Drop incorrect usage of double
 '::'
Date: Mon, 22 Jun 2026 17:12:14 +0530
Message-ID: <1050065615.01782184383398.JavaMail.epsvc@epcpadp2new>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIwXoGyyqYeRyJ4JjkgDeaw0zOZjgI6ZcaYtZHncYA=
Content-Language: en-us
X-CMS-MailID: 20260622114230epcas5p3e590b84087d9879e30d604f89ce938a8
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CPGSPASS: Y
X-Hop-Count: 3
X-CMS-RootMailID: 20260622101627epcas5p2aeb4aad096395936c04cb563eb226b83
References: <CGME20260622101627epcas5p2aeb4aad096395936c04cb563eb226b83@epcas5p2.samsung.com>
	<20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_201315_359688_6CE066F0 
X-CRM114-Status: UNSURE (   7.53  )
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



> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Sent: Monday, June 22, 2026 3:46 PM
> To: Bjorn Andersson <andersson@kernel.org>; Konrad Dybcio
> <konradybcio@kernel.org>; Rob Herring <robh@kernel.org>; Krzysztof
> Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
> Peter Griffin <peter.griffin@linaro.org>; Alim Akhtar
> <alim.akhtar@samsung.com>; Michael Turquette
> <mturquette@baylibre.com>; Stephen Boyd <sboyd@kernel.org>; Brian
> Masney <bmasney@redhat.com>; Sylwester Nawrocki
[Snip]
>  Documentation/devicetree/bindings/clock/qcom,videocc.yaml   | 2 +-
>  .../devicetree/bindings/clock/samsung,exynos5260-clock.yaml | 6 +++---
>   .../devicetree/bindings/clock/samsung,exynos5410-clock.yaml | 2 +-
>   .../devicetree/bindings/clock/samsung,exynos5433-clock.yaml | 2 +-
>  .../devicetree/bindings/clock/samsung,exynos7-clock.yaml    | 2 +-
>  .../devicetree/bindings/clock/samsung,exynos850-clock.yaml  | 2 +-
>  .../bindings/clock/samsung,exynosautov9-clock.yaml          | 2 +-
>  .../bindings/clock/samsung,exynosautov920-clock.yaml        | 2 +-
>  .../devicetree/bindings/clock/samsung,s5pv210-clock.yaml    | 2 +-

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
