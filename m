Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF81F3093A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 11:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffvb7fNMzcJ5kw4bD67yaj3+/+LUECR0vIrou47cs7c=; b=Ow3MEilnObxx6y
	/4mk7d0AE85QOLBMmpXUPdcGE3VgM7lznMiv9abg7M7h6t2pQdhAL7NE3I8je3vsAQ9J3Vv26KkZL
	dh/0suWP3IjWEQONZr+VyGYNnpKofJivk6SLFVcn1RaXsWjRfKr9uVaS0gpYZ44lfOQtzyS3J3GAO
	+8hMdzb9Y1AWzZN0DbnxUccqdYdb08e+rkMp5NQoTgz+LnAIvuIRlwvrjAdVN+4gTFudticm3amo3
	kgOzSA9ApP2+hTXZzVGgSf6u3gGBqnp0mqyvXbtsvXRknzdF3JKxOpg3bLicQ4KUWmRvQNWHEffMt
	UOG0/j2xV/nVpwHCYXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy6qg-00000001g4P-1RUW;
	Thu, 05 Mar 2026 11:26:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy6qd-00000001g45-3ce8
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 11:26:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFboT2922186
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 11:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ikL2asIb5828chxodoMfcJf85JaQ/u87oXZeJV+vIe8=; b=h212qy8VEayL2FfF
	DM311BINSYf072iMHaoQK+kaw8sMsj0hY7VJer0qnuRwOmrPqoKz7XBsn6tNgX8P
	rUnKMUURYXK7YOvGKmF3uEekav15ZylqgcEsxMPxt08wKU648sCI4a3jpwcxCy+W
	NQ33rRZ+GOtBEahFE0aQ4tKAy3fd8PpqdQvsU5uXZEpSY1C2yKAxKOTnXclrE9Uc
	wM+IBIi1NopaajlSCDWtCCbnEUdXLV+Jayhdi8negVaK3INR2dI3I15hd55yoiGH
	z4+3MV1/nZry2YI0BtfJsWJ+86Pwaogr+DeTVu9a/Zf01s/JDrgYRmpo2vMFdGaw
	716AAw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq2q81ck0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 11:26:31 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a012f8ab7so26024106d6.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 03:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772709990; x=1773314790; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ikL2asIb5828chxodoMfcJf85JaQ/u87oXZeJV+vIe8=;
        b=YN5jQI3cLOj9ZuZkBf1CyWd2dfnOZ8Gpx1h6c9AFWzqzLlbmO9iJKUdJkKUVjjXbqI
         A7v2mX4B2rGFriwokGO9fbV/TVFzmQGK8wwLv20hK2ZoYMIm5epvt7p4Uu+i5eywc6hV
         ldrkv6V+u8mWKBerAX+pWM7qrDaZkZPKdSgMVrkQamO3ES5KEopIvsum6IPadaBxSEQ6
         JEbCH4Kr4Z7rj5ao3oPhQgOUjx5GP0AuZiPCu1XNkgPkeZO+BuNqdR4DvmpC+DEC+uou
         8pZOqGQGp1kiznO5rb9j/XAaumgOPGya9/AJjN6IA63rPvAwXx7f5Az8JzykwmH7l76U
         Xdtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772709990; x=1773314790;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ikL2asIb5828chxodoMfcJf85JaQ/u87oXZeJV+vIe8=;
        b=mli4QpOG3KiJrYFmse/mVo366zn+qlkK+T2i3l0xb+8Aa6LrXz62sSppOl9TrY3GgW
         TRdghInVDrriaGXnG9jFhVwJ15U+YyvHO5lGpU3e/PoWu44a8F7jRnMvnaTlMNTC5XGC
         HEQBKo6WaxJZMdZ/bB0T8DlGVzvxDu/Wge+g/JyMbOGgKPPN3jxMDqkYIdGtgmfGn+Id
         tsAE2YJlhXnI7oO9re9AvppRI07d/ryXJUIWN1RTY/cRTA/38cQMPhuldWvAf4jV93AT
         rF+eLlhjvfroXZ263gTaeEP5uaoCIPV15ckCIo91sRhGHOpAGc1NlOq2a+bIuPwsschw
         mizg==
X-Forwarded-Encrypted: i=1; AJvYcCW0hGTOZB94yqQnPXqFuBf4/CxWB8iOhRSwxf7v0cUHX2i/x83q7hgyFFhpv+GnhfbnECXPi+lMWOQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUkTdpz+qC10NpqLXcxN5XIlzcsUoYY9lUOv+hXEDinwszMNiN
	HiCsYsTbzYPBYO3prIBUxsKma0fiGvKRCSSZTIXbpDmgZ8NWrSzeoLGGWvg4coPoRQNnjLHTA5F
	txrdrCAkq3tVxVvU5ornWAcKF1BycoU/2uClCKhNTEFK315gPcconBLSluQQ/h/+d5kxNpegQ1Q
	95
X-Gm-Gg: ATEYQzzPMKEygV65xBHvyMCn9XnOEq11sLnJgzpZkjaIOF0P2vdKPvzSyE6HBKco8mt
	h2CHcf/Xgw81H9+yTIoXJnI8FbKErAzROipaTb1UHAxXnwwsM50CLgBrtZwb98iM1M834vd18xT
	y8fKpg+U4c6/IQJRb5+pV8WFlCsaOj4U1IzDkhM15oiWvf6h6is46NFVVUdI2JPLE7jqJhLgzAf
	BLOVS4BGPyoJtYi/G9CO7193Qzb7Ry2JSjY7W/B4Y6fP+E1FOBT7eRyaXOq686sX44aeyGEUF7U
	bGDH4tdjKhQI9jkUpjZg9+6flAkqBLBlgNy5+bAe3hpCuJMbVwvurx6e2Yrz6ILN2H7dTQLwTEL
	G+/xSQZVzSHigEmqmAOBjEr4Vgv3IoSl3RLZMEQbhSKOqP4ATZw9z7O2I+6eywFdAXA7tYscccS
	/I0bo=
X-Received: by 2002:a05:6214:4e15:b0:89a:150a:233a with SMTP id 6a1803df08f44-89a1998b7femr52277786d6.2.1772709990186;
        Thu, 05 Mar 2026 03:26:30 -0800 (PST)
X-Received: by 2002:a05:6214:4e15:b0:89a:150a:233a with SMTP id 6a1803df08f44-89a1998b7femr52277326d6.2.1772709988918;
        Thu, 05 Mar 2026 03:26:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b940d35aa45sm80322466b.16.2026.03.05.03.26.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 03:26:28 -0800 (PST)
Message-ID: <7416ac06-0af8-44b7-8987-a9990f30e6a9@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 12:26:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-2-ca8888d793b0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-edp_phy-v3-2-ca8888d793b0@oss.qualcomm.com>
X-Proofpoint-GUID: w05PatX3p2f9YV73xExFlP3jlAypPncK
X-Proofpoint-ORIG-GUID: w05PatX3p2f9YV73xExFlP3jlAypPncK
X-Authority-Analysis: v=2.4 cv=GecaXAXL c=1 sm=1 tr=0 ts=69a96867 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=82J-8U3TcAj4iTVDHMYA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA5MyBTYWx0ZWRfX93n7OAhs6ySt
 ZFa6lBOItvCb7AnSxi4tKZqUlRpiENlFKGd8VXbDmxPkW3w4ajr4OPcAuPktXQLHmTJiMx0BhJK
 n5kfxfBTKDodmyl8roFFV1rTDrcGsJd/SGHEWbe9nTH7EIekhI+jAI5hj6I+kSvdc36OHAFOEB7
 7kMAp7tJ+1Fxh2kNkqMFHogTBp2+xCZD4EGGnzpFbXCJxOjNgmyitiyMPZy2bKOMfo6xCiCStM3
 VaLmZBfKRnWleI5kZqPOO5HezX7wRb/7Rvsvr1k42QSFyIqBAso3v/3FFHHP9HFGY6d9WVEm0at
 a79P1Urb7oaXQPqU0CRo2KnuUkSVcakbuHXSntcsw2NViIHV2dU5riO2lvZhZM2iP71gS0hN+H8
 s9xeoFTzymv9+CdetKx96sIMQK2Y0MbMua2vm+Km7OhjcdttF82EcYc7aWnxujnm96B1zU5bY9P
 hbpOv3gP5I+PavkdX/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_032631_907024_077CD220 
X-CRM114-Status: UNSURE (   9.24  )
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

On 3/2/26 9:28 AM, Yongxing Mou wrote:
> For eDP low Vdiff, the LDO setting depends on the PHY version, instead of
> being a simple 0x0 or 0x01. Introduce the com_ldo_config callback to
> correct LDO setting accroding to the HPG.
> 
> Since SC7280 uses different LDO settings than SA8775P/SC8280XP, introduce
> qcom_edp_phy_ops_v3 to keep the LDO setting correct.
> 
> Cc: stable@vger.kernel.org
> Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> # SC8280XP X13s

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
