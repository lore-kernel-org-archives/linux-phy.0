Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB92E7314E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Feb 2026 10:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BUWcOSQkuTEwEe7RgyKzZWIOfWHUgdBPerBf4cMb3s=; b=pPcORPL8T9cAHZ
	OGDqQ/PqtjKvQhq6j0JRKKMr5A8ML2iLf62ZQLOeLYxdRc6X2EkDxZuDcxQbIVxlrVKwx10SpU3ST
	AijigleELwtbhHYVZgmd7Gw3aM1h3btvfLtDJkEG4GLBq7GvgrEihjUWWBSFn4KNw+8sAgSqw5klQ
	6Gju13xxcbsZq/vuq06RHzVr4xnjs4R8mLXALScA+fLey4TBkViFQwcwG4+VX42X2krY/UZIP85bX
	e+f/vF2HC8JXudhAFSjqqLaxiuJcpAMudsa3v5lHER6RQ/iTmia7lZ7dJ/41CP50KYZBukfEqdR1n
	+W4khPpFcRRPTU+2hN0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqlV-00000004lYd-2UWv;
	Mon, 02 Feb 2026 10:02:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqlT-00000004lXQ-3KE1
	for linux-phy@lists.infradead.org;
	Mon, 02 Feb 2026 10:02:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61285c521305591
	for <linux-phy@lists.infradead.org>; Mon, 2 Feb 2026 10:02:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3tkA7AYDqhBa/hYNHbDMd5f2
	xgn5W1OlVmL2DSrMQrI=; b=bC3AVQkiG1E6+VmbGlbkWeu4aNe1MpCPBBggMkNK
	xr+KFaazaqBZVd98V4/hyEOZEcthr0bawlLJCg7x84D1ECMg9iC3xLdG3msG51N/
	WmqBeXSbkqCFj2Ez9tqUuUOfdFMNIoe4HlNDCIqM70g0YmRfzRNVjJPHb/nX3hLK
	0W8nGv3QGWFNxYEt2K8toEOChsErdAWNaTCkJjg/iLrjOpHoJjC6ddxckLKIg+yL
	/SWgi+ZIbNg0bREe+d0LAcALEo45kKDdx3HmVGuw5b1c9MBhNpFUo8bIqAeERFHj
	+Y/nVuVNLwfznpunQV6sf6YlL+iJKDDrRmVN2IFxtQkKjA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1arrvxkd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Feb 2026 10:02:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6b4058909so1158374285a.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Feb 2026 02:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770026557; x=1770631357; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3tkA7AYDqhBa/hYNHbDMd5f2xgn5W1OlVmL2DSrMQrI=;
        b=fBHNHUPgndqWiMUbyNSVQQUckGnPBkckYAIuZp3f4YdSFKkzlVr10GWyuBvI0u4kHr
         UJ1dVtSLjS25Alwxjud+vzz2DQyD6yfvVHEZEBafAPfEP8djie4RPj2v8bKHwsFvCqAy
         YM9CWWzaDhG7XH+f3KKMq47abpmNRvWsoQTNC9YZYGhaMo7V91GkU9DN+4jue+i4Sh5V
         d6pxTAwecYuk+uD+QKEI7YFQPB7SueG6c6PtNvuW9rlvYd+4ISJ/SWmLi8NvEPuGp2NC
         hUG/HRgmkb8DKEXJ/bIZTZXvHHW2XSCD4bgEne7MQuhyuvARMWgx77aiMjeIUKvBq7LP
         BIcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770026557; x=1770631357;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3tkA7AYDqhBa/hYNHbDMd5f2xgn5W1OlVmL2DSrMQrI=;
        b=fZuex61+DHz4chpddw7ZgXxLDPePXpWtGUJ81YnnS7GZ8EE+vPfZaOfknwBWghyG5a
         4eyydDKnPBxyXvuLF780mYiSr+t/zXclkcgL1W9CnKsl2VZ5/cUMrFxP1EQMdLLVDnN/
         oIDudXmoVM92w3lt7yqWniYCSG7rrtUvnSZqc1N24/qsvZaD/WMd/aKNAQzqfqpMvPM6
         LJowoCiHQP5OtZZ/TckGdud1zQ9ycbz8mCeuXml1Fo39YPIsdj7Gp3RNVzPDaqLytMJ4
         4CtFFQNdJ/08oOTbF7fLNOCPYUr7ZoWko0XiloASVW6av1GfHpURkK6m1kT0qJySAGmT
         GR8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVgL5tlCRbsL9Oxxv1UA2GOpmvUIafuKd7lMOtxIKh+F5qPnzCVVFjBg1t73vLGPvMJrbzUY0VjzA8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxumuyxpRTHfKCMhOI9SdH96eJ2V/7IjdkOsYOCuwvroXjMqwwZ
	e2bhiwphkE9RUHPq/GnyNntk15YOuFHx8xdKhVRkmbFt70bYtcv0fiJDQ+8hM0zKdsUhbioa98t
	aTbD4J3n4XIoTv+/4I0HnruAlJmPBF0RUFqn8eamAvzE0Nf026Y6p5bDHHAmFNmOLay6J
X-Gm-Gg: AZuq6aJYLaZBwhS/ExTJ51R1y0pVZ7M4hBv9+/+7QQdMQziP7GO2gvK/WlQNzqL1okv
	BkJklHRxbeiO/ZMWzIihLgAFTkWhl0HwSHtcYMeXgBbStxEzrHdzfb1EICwTjCc7+04PtTv80Ia
	zEcMSRzOOMqfTMGsTA9b2WOEZtpQxRcKEJQd2JX7XzrFO39HPXUALUI+eSb7I8MANWNci7ZBLCV
	hyt7e9L2jKJ/O2CaDLXkVdWHa3QLQggF66CR/tzJE/P5pJ1q+WGIvNDDCzIpIu3kZJMMglgWstU
	G6S/5BXsMW72ApzKdM8z8qMHzCegVOcwsEL8BMZCWhFTc+aKomklVnl9MHAWDMtxsR1riJFlrfP
	apStzcPYclKR9G/F3t++VW/uK
X-Received: by 2002:a05:620a:408d:b0:8c9:ea1c:f21e with SMTP id af79cd13be357-8c9eb21a77amr1378165185a.10.1770026556889;
        Mon, 02 Feb 2026 02:02:36 -0800 (PST)
X-Received: by 2002:a05:620a:408d:b0:8c9:ea1c:f21e with SMTP id af79cd13be357-8c9eb21a77amr1378161485a.10.1770026556388;
        Mon, 02 Feb 2026 02:02:36 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e2e3bf18sm91797275e9.19.2026.02.02.02.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:02:35 -0800 (PST)
Date: Mon, 2 Feb 2026 12:02:33 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
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
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
Message-ID: <eorqoqkpz5veb4qgq5o6ll6zhocn7tedfxji3le2ex257v5n33@pou5m7evdl5n>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-6-d3ce4f61f030@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-milos-ufs-v2-6-d3ce4f61f030@fairphone.com>
X-Proofpoint-ORIG-GUID: Be3QnrtNFS_dkH06fHuoPgTkP2LhyWa8
X-Authority-Analysis: v=2.4 cv=FNYWBuos c=1 sm=1 tr=0 ts=6980763d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=STFXn1ACf7ZPQ-DneOQA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NSBTYWx0ZWRfX+InVQBisykDS
 RkktpY6E0rmE/EPAGyuMmficRpWQsxB99xE8/LX/3Msv3vsXMwanJu+ii8vCC9QwpylS4mTnXtJ
 IPaHNLIwYWXueEN/5fp81eNG78XlUbwpCsDqH1J0KgTCft38GGkune6iV0UG/w1gmQIMmFDBYNt
 9MYpZHSbXJT4INE6UWnsnL5OVxXXQAe88ykboWcPFY1CdC4gxAatqvBMFHw6BKS0FsolAmR1tqm
 9uWzNx89KDMdt8HEJ91QPszNM2rq++97TFfggJ1zvifBKrIqiSvq44KKdzUOkY+5HxqEtoxgbBd
 bXOY+RDEn8JKCBW3M7NgBDyg2CH2nwv/iyyb/6mMy38A0UW9YKgd1g3GqFPBEanqlHBYN/nfl+y
 rGbGIO/qqaFfNthNEmAPFbhKOvUGpv7BfbjMVNUD1ozMqET1RipEWV9VfwqzwBm6HBK8dtVxAdX
 GfB8VwAxs45tm+EoqEQ==
X-Proofpoint-GUID: Be3QnrtNFS_dkH06fHuoPgTkP2LhyWa8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_020239_951742_DCF03CC0 
X-CRM114-Status: GOOD (  11.05  )
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

On 26-01-12 14:53:19, Luca Weiss wrote:
> Configure and enable the nodes for UFS, so that we can access the
> internal storage.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
