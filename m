Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D2F8C5DF82
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 08:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRuug77gBcWCTVZjaLDNcMD3RYc2+6J6w28umjLYpLM=; b=aEXqvTmPmox8Lc
	WaOVmk+j1iBLsxEsZZOWAScIJMB2K9m1UNcAlnDfbfuJWbfKSOx34bkRNVnYeYYkIIz1K+ua/JAGN
	ugMECYYXDSG22eZHibI6/mfl9ku5f3VAqaGzJ8u5Fbg1JRC9r39bc49DcvuuQaiNW/TNtgb36fxWh
	64XnKNVNxg1PKeRFjzEeiHeSYzwq9BMaWwpLNKTdf7ILsXjrGP5abGtGwvC/ixTB+PsQOL3ysv4Mr
	herquMdUayANYBYz6fb2X78XiSiJxvvTER8hSYewBNAqqAwfoKjxTktE4S+6sAmBdz5ydH0k2kGTK
	fXqc4t8kLse/IKkPqx4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwy4o-0000000B9Ht-3bd0;
	Thu, 20 Aug 2026 08:24:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwy4m-0000000B9HG-1FN2
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 08:24:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67K6iVWK491350
	for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 08:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tx3cBEJCJNmhBvYLSTPoH6tb
	pxzqlnwnHOBsIUd32DI=; b=pVxTZkdTM6PNoYSvxz8XPpU1yOKNTKRQgfbI5drW
	uZmB6b9/y3U7h7vvS6UVvlfWIrKp6l67LN6n23kg/PAFrh/kXmPbU83byOAs/WOX
	p0evbQAYZTLQZ/vn9T6NIQzGCraWBm89Vp9o+Dd6/faOZnt7DzcJ5kYVOQr1dljL
	vG6MkYh0LDuyQXeuILV9+McWl/5HZeXBEL6UJ+hpPXFgYlkJbXeLsm+27vB2v4Xc
	3BR/WKFDjtcWdYoArNm+I73WGSy3YhZ63SL9pjDImtYkujElRgpTXC/F5vzAETvF
	SOCWZeQ5Dt82HvKrUMUJdP+xZb2hbpIAocgpL7+EFfJ/gA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g5ervky5q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 08:24:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-936708f129aso171809085a.0
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 01:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787214279; x=1787819079; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tx3cBEJCJNmhBvYLSTPoH6tbpxzqlnwnHOBsIUd32DI=;
        b=WuMKPj0QLBNzJhZYY9Pd+vbcXgK2KoiRyTMQbwialg3Rk4vFMekhtK67lKZYsBgaNq
         jpJcU6HsjXesDPNLw/Y4j1RXgtixYvaYR4iftQKrbmzv7//jqd1gcbDeYkt2sNktDQsq
         jbuXkGiubxe+uxyq6fK6AExAOpcEXlJSWQoELv+4WzFDvkl8Zlu08s+yPrpNXAnZrvLk
         c/EB8WHyxHS43r/YQKu3LyNu6cIzdVlmRWwCMTlBZeMIhTmaJk/N9pQrc2gb5m31XRIl
         e0VzUHRfRnE8GMap495DQ/9QJhQGGqA463i/2rQJ7jqqmGiqZbC+TPczslEPpuHKzj2p
         LojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787214279; x=1787819079;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tx3cBEJCJNmhBvYLSTPoH6tbpxzqlnwnHOBsIUd32DI=;
        b=LQskAxax8XlHSC3Wyqjex0LDxnoMCqhETVjesQABa1MxmsPwxyP5v7huibRcm3Sm0b
         17S+iVdgufXXUnb2/hdJr7IMrQLNCLdUFUbEjhgXPcfsGIDCwS7cnXMAE6hfT1YfTe/H
         yTiSjfMFXAWvTZHBmqfYLbAhuDSF9Wd+Y2/IAg8RukFpknr3VfCa+LkGI9uSP+W6z7IZ
         vlLBXS+hSRrHA6/IXPST9b5da+WMgZP6lYaq41ToUqdJ49TkqPSeEKDoCnhEzNxT9nCP
         u+0F4cfwKzPhM3Q+DdF9dPVmYzYNbItCzx/BnzOYHYlNY3jVcCDBgozL0cDFlAwV6Ul5
         9y1g==
X-Forwarded-Encrypted: i=1; AHgh+RrYvd8b9wneVUv/bvN+b0IUsqdEweDO0mKezMVFWbUb6iIty2uknbaLTD5lREHWs63v0ZLvjFs6o34=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxV0TkMiJEkrqmX+71FjriuMFLkyemMLVJHqJRrpO27OhMnhXy
	2VPBDrkulSZIN0iZrn2XeoT4oM/OBLSuQSekLwBfYx3Sxkh1nrYE3DxmVun7jnMQyLf9otutkM5
	UbrNV05kxhJs77Jfp3Anfup9KCN2SeWLQGLrm5Hd09W7Wr0jO00l/ar63FJjOQj0TUK23
X-Gm-Gg: AR+sD11hfVgzCka6nKqjW4c+obCtiN3SuI87RckffX1kHruLUcpakN77PCMTgC5S3St
	o2Olm0bPtC+m1tYDH7AcNHoKRIELtVbPYYZi8oV2408HlHt3Jt3G3VLiEbbIL25MsZubYZKy7M4
	EXLLYz79q9piGY3j8gafntarGtnwtv1kadYooj0GvGTMBF3D007MA0449LWbWRuFfwHHGCu1So2
	FKZRh74e/BoXLE4xJpjCwjZSH7XhDQFtNtnRhkBk8R2TbM4AZ7eU7TvfpgQFfzBGylgq5TtWSlS
	w6ADJKrFDHU0JfTJtk24PTyaf1Og/hm/I+O2ZSd/vTJ1Tj0F8TZwifMqPVqUjBXeoWQwgBXk1zI
	E8ruXD2QPh9SDUeU=
X-Received: by 2002:a05:620a:458d:b0:936:d2a9:1dba with SMTP id af79cd13be357-9371e204e3emr846861585a.1.1787214278638;
        Thu, 20 Aug 2026 01:24:38 -0700 (PDT)
X-Received: by 2002:a05:620a:458d:b0:936:d2a9:1dba with SMTP id af79cd13be357-9371e204e3emr846858085a.1.1787214278101;
        Thu, 20 Aug 2026 01:24:38 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.240])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482b14c46f2sm12926289f8f.29.2026.08.20.01.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 01:24:37 -0700 (PDT)
Date: Thu, 20 Aug 2026 11:24:34 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 10/10] ARM: dts: qcom: apq8074-dragonboard: enable the
 HSIC host
Message-ID: <unxuswp7lghhaa64rcerxdxi3n3sc6oz3iket6mf4z7hqtji42@7temhlkxanse>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-10-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-10-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-GUID: G1DXzsCncN8hxeFzGHKR_DIoQ19KHpCb
X-Authority-Analysis: v=2.4 cv=VZ3H+lp9 c=1 sm=1 tr=0 ts=6a86b9c7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=wUpz7uCjLrEXi01cjX+DLw==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=u23MIztejtzZNv9v5ywA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODIwMDA1OSBTYWx0ZWRfX7+0o0mmTRm+F
 uPXsjcGfES3GFj5sRMof4BBD/BptNcniUrY7WY6fd9JQZfqrPIEgxhmABkMxaknhyJv4e7qP4ZB
 JvmdCEFEq/n3YiuCqd3Xvxfirf2F3zwtbfs7ogLs0ajNvmbRZ1OOLv3ga7LIV+lCg9N3GthX04W
 0AwggzyRk45xvX3gWpD0LESwLKQoHT+AO7GSfpMazTE9HcFcVkz66LUlC6lWDChr+GQOmDMXWM3
 L2b3grP9QbmgsF98jFr6YGNMwnkswYUpWI3RKHgZ6AmrG/HDY5bQ8jp/vuUcNvl1Ch6rYqRTR68
 Q9P0xAuBDyRBjyrVRxrkKYLviJdheoA/HD26hYB/raQnLqmgOQjlbEho+ROv03MVFJw/z5uhowJ
 JcylGHgZsgbXQAEarNX7DvTQMWnLpRStzBmnC98231KDcKpHjURpKLdowvSlOkPXEWWh56Sd+2F
 NA6K4RpM17m4Yb3LCqw==
X-Proofpoint-ORIG-GUID: G1DXzsCncN8hxeFzGHKR_DIoQ19KHpCb
X-Proofpoint-Spam-Info: AW1haW4tMjYwODIwMDA1OSBTYWx0ZWRfX0t3yzPgssLhr
 1UB9gk8sIF4MB0eB2hBN7cGfuYjkDoVQeIW9aXw2WWE1AW2oeOaSFBDhjoANxhuEGiDV3hQ0Y4D
 hU3UkfVQXDiOAT0XMlpSj8lkjz1Lyq4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-19_06,2026-08-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608200059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_012440_348069_85AE22F3 
X-CRM114-Status: GOOD (  13.18  )
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

On 26-08-10 18:42:14, Dmitry Baryshkov wrote:
> The dragonboard carries an SMSC USB4604 HSIC hub, but with the HSIC
> controller undescribed the whole HSIC-attached part of the board is
> dead.
> 
> Enable the HSIC controller. The USB4604 hub isn't controllable through
> the I2C because of the board design issues, so reference it as a simple
> USB device, describing the reset line.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
