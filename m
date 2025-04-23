Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7986EC369D8
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic3//Z+YpLrY+XS3R77UBuAp47p+VqFQW0uIakB9W1k=; b=1F/ws2RB2iWWIA
	y69p2r24hxOnTlShkT8pbGFkv1Y50kTWrEvBUEbv29A4RY6rXwownqVbGjqDDApZk89M48eMT5fuw
	zQjcw6SnnpOujo67LXM89elyy1nOUONHGZjxwl1iWbhhuV4AVBkSlzCz0Ka5idVg90VCnSk4XaO5p
	Yg3/oNe+U2aj2cvSPUmZ1mPDipiGANvNm25BqRqU0E7ReiK0BZsUmOj5Q86mxj9Uawtug5z7NKV2r
	/9TrcN9/XEADqNVVoGp0dL3iQRwySU8OOY8+0iOfLac5sYFo9UimzztmA8kDY5ZrD0GwIlJZYOhOP
	khitqRb6WhJykODgUf7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aXb-0000000Ai8q-0Q0w;
	Wed, 23 Apr 2025 13:53:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aCA-0000000AcG6-395R
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:31:24 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAlasr016858
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:31:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dZWmP9gM06dWmEKtYYm5mxy3
	nQnWFD6fy7umPVrKHi0=; b=aRFmbBeByAGZvNocZKi/oi6Wq9yS71NB7meeiNC5
	6VkTz4uk1rAlDwQDYkckfe+r/03dNhtgy7dh+2+Iin9RD7qbRHx4v3mwbz8Ow97h
	ejZTDBqmtXWtDK+WEkkHf15QK+jfNOnAAQXhFkEjaaxpfGWCEyay7Mt/FAf72jw0
	F3IeOZ8obV2qKlRVtyVqR5wLUIBRsGu+Q26lSN1UbKtQkAYB9rBL2DwdnrGHAgnc
	hTIHQdArOuO3M5xjZ5odE/21yDszB7JUx3h2mWIQSALFgyWOlqgUKlB804XHgytT
	avZVqKi6iPhVByNXlcHdavlosu/o2JgNgovILUgMNI6MHA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh028qv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:31:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so188781185a.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:31:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415081; x=1746019881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dZWmP9gM06dWmEKtYYm5mxy3nQnWFD6fy7umPVrKHi0=;
        b=i+FcK88ZvhYj2Nvvs1VvC//sE4cvNhAJyFx5Rj0stuVbAWEEJyMa7Xxb5l3Ln+4S9v
         heu38okrZbm0ucpliFoEG3lz4AGQWxolSAnBl5LDR0QArcfBpWBJggifbXPTVeX8XV7d
         c19lki0//+ujVmWIEZjKX6209BX7TCvuwaBM+gHszm05RRdkwEVVV47c+OxRADTwHi1u
         YiqgjnHKdAmk7z0ozrxv7y8R1PSKzyVJ+1X4nlgUBndQ2klEvU3bmxYQfgDkBYpAUglG
         WnD4ec41s0ToF/3GqCkjrjHVvB2gIG+CG3cCBOEGUSp+bgq9f+QOIX/DF2Bu1hMkqUo/
         MCUA==
X-Forwarded-Encrypted: i=1; AJvYcCWIUm0Ve2oszYkNE/xCMnXrcSXZLKIyrLewMSqUM9xt29e1VmIkwnF4d7zFs+hG4zTU71NXkhOR73w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjmjHJKE0fJpicAoZEcTmy+MQWz5s7ihFsJniCxO03K6i7Fiz9
	qtmRvuI5Jlgkv7ZY+uh4D0bWaecFqzqbPhuhvmy8d0qI/h6fO33U/SFif+JSqiNUMcRkupwQoi4
	2MACdbTxtuFwPnL1AG7vehywhoP2PR8LbO2oCEfgKnpbvcqix0EEz/4Vu3qa7PXvz
X-Gm-Gg: ASbGnctV+AeM7NkmsQhunQId/0FhRxVXWh6NTk3gH67RqUQBreHzFqdohqJ3zDWzS5F
	B8UMr8+KTJhIpdmaElmT+1WnHxfnVK+4ZoDbV+Lh1LHUM2BemajiEr7Ezw0bhazXzGw6QHz/zHM
	Mcv6wAbMdtw5rYQ7X4m0/hQu/kpVmEWZCAlz1k0JzwdMh+OXWdtDUodcZVtlRuV8FwfGh1Z7/i0
	RvoMZSiFvopqj2A3ot0Re57eWjPyaHgMaWgLvx2oamWMF+AdFGnoI038+bwg6nIHjc8Uk+ni+F3
	PDeLfFkdysfeoRFFNSRW/qZ5TggsyiVGgXrOq1DoQKG/sinnCpuN+6IE5LwNauFhDCpEd33ugZw
	=
X-Received: by 2002:a05:620a:24c5:b0:7c3:dd2d:c0e2 with SMTP id af79cd13be357-7c94d83dee5mr484767485a.13.1745415080673;
        Wed, 23 Apr 2025 06:31:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpfJbI+AgBKtKkvkNrS86sfl4ggqkejOcLK4vPJLKCGSN66njI9kIk5rDo+YJT0RY1DWgIxg==
X-Received: by 2002:a05:620a:24c5:b0:7c3:dd2d:c0e2 with SMTP id af79cd13be357-7c94d83dee5mr484758485a.13.1745415079978;
        Wed, 23 Apr 2025 06:31:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5f61afsm1578477e87.246.2025.04.23.06.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:31:18 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:31:16 +0300
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
Subject: Re: [PATCH 29/33] firmware: qcom: tzmem: disable sm7150 platform
Message-ID: <3skwipkunn6dw4xtzyx4vdiqiwtu2qgezbel3vcu5k4cxk65yi@csi6xun5nlyj>
References: <20250422213137.80366-1-danila@jiaxyga.com>
 <20250422213137.80366-13-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422213137.80366-13-danila@jiaxyga.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX0AQgJfXMjVeD g9fhmabPIaoIDiNF3id2IVnHgiw6xDgwqkgg8t6aJ90s7+LeXIcXvc2+Lk+z7uAUq405cgjHd/i ilnz2z0ZPysQAmTTviAssa6gGibltV1CLMatGxvS4IdGT/BPiGVmxEj44JqApoKwGjlSXgxckm5
 zPr4AxvfCuTA18LqWJ0pAciEWgjBZiuFysdYu1QtmfUisXoVxQjNdxxh8gOHDZQKliUYwUdTc3o Hh2Oqd+HZa9VqWsoeFjPyZmG7mxhi2RPbdfk2Rg3RkqFcnkjjUtWMqxwDjXti48URAdHVOzVw9U tDes0n8pZehHSBNLgWPZIbLPEsy8Fb3okv+FZQtBh2jQH/x3l633Ok4NInlvbAT+jIIYdL3gArM
 wrQyw0BZo0D2m47MKxoTr4s3uDdgurnoFTmWibEv9jf3oN7VMLDiv2gBspr0d+n9JoZkXPwX
X-Proofpoint-GUID: 7D4FK9Ootvqit85KWuVJ82MzAvRWHUTd
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=6808eba9 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=7ibcVnAUAAAA:8 a=EUspDBNiAAAA:8 a=UlxMoeSB6LsTFmt9i7YA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=HywIFdX19-EX8Ph82vJO:22
X-Proofpoint-ORIG-GUID: 7D4FK9Ootvqit85KWuVJ82MzAvRWHUTd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=910 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_063122_923124_E20FAC3F 
X-CRM114-Status: GOOD (  14.48  )
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

On Wed, Apr 23, 2025 at 12:31:33AM +0300, Danila Tikhonov wrote:
> The SHM bridge makes the SM7150 devices reset while probing the RMTFS
> (in qcom_scm_assign_mem()). Blacklist the SHM Bridge on corresponding
> platforms using SoC-level compat string.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/firmware/qcom/qcom_tzmem.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
