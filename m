Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3C5BCD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhvtKFg1MHNs9e9oc+n4BqQd+gtTip/rK4w6Bn/rtuY=; b=oM6eIEaZFG718+
	PpHtbZsEOj9Q/z36tYVKxqdt6jHWDjeoRd9kIFUSACDVNriXU3zObiU0NgMuJJp+n54qgiFgaf7wy
	sSlTjDzZ4xcxY+NafpjH4RYvF2AQtIByrE103KiW7heiwaR+W22YwJVYkrofBaFtmcvqRgdTDWyw2
	HuJlkOWWs1NkRFMlIrJH693xpRXQSyOJIM1/r/7CY1HuPACI3IkA7y9PxvTl9FtvaX2AMH+pfmqF5
	c1bJG1STWjCxBo95No3haS/TCThosPozxmyFDq6VBIqBQEfgLUZKTwRYjI9vYfp/+/Lt89/44M8OG
	mek1MAo72ZIoXEv3JzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIzB-00000001NvU-2Dyj;
	Tue, 19 May 2026 11:51:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIz9-00000001Nuw-1b9I
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:51:44 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J8ENmc3612521
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:51:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8886y9OK7rLNEr2zlaE8SlacINuysTCFqKQRD3SXm8g=; b=KQ6smCqCRl3S4GLo
	oL+Guj+g0A7gNDWly4GVS3iiDLztIRrXwGpR+txIWbKYvVgXy3j5MJU36QgqkYdG
	Dvtge95w5RUfAKhT/t/mkGJf5f4X/We4YVBhPZUtl4xT3Gs+r3RcmX8gKrZN+DZz
	3lnZK1ytX4FYhoK3dvJUHiwr1MQsMhVDDEovCmzohqmca1Hz7xkAd4yMLyYUoIUD
	0m71A7WMIpAvYeYHarzElfnmr34YXwePzqEtAoC4ySz5O/nP5hpFT4GjnwaNMHJ4
	7AmMa9mqBJ/ciqFpEWwfWKnuLfX1nK27d1UQCmN9a1/WFIM1ecmadUDv0YSOmcx+
	5e7AHg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8m64rvqk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 11:51:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-90cd2fee41cso44832485a.0
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779191502; x=1779796302; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8886y9OK7rLNEr2zlaE8SlacINuysTCFqKQRD3SXm8g=;
        b=EKmP/ME+zQn67wj3j7dyyC4IFWYbI+bbh4zLr9aCcKDZoL78qSQPyD7pRMLlWsUEdW
         ekTl/YRcIkVW8nbooPzYWmJrpm9zFjAoZh6RiBVF8u6qTMJlAsKRS/ewNR3wcIR3jnOF
         +9VkOdOTj8C04u+b2xwJTAkzAyicer5gWakwn7UuAL4KXMdtDStUK3+xnqZsC1EYMDFw
         osm30CNRilwOu19RB/Onuh+h1GmJ4MF5Gcui8AmOmAmjT+CvMKayeDhd7gBVdz5iGXNJ
         yr8EgSpAOUZDxM7ExWUCn7YvCZLxe2QfME1nyu/IX/ql/pYIv1ZEwP8jlphdtl/8ViwZ
         88Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779191502; x=1779796302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8886y9OK7rLNEr2zlaE8SlacINuysTCFqKQRD3SXm8g=;
        b=q5wIXCvS3V/7clsLROMVGuC1N3Sh2+BCo/CFTbXhsT67sZXYMpoM82NQDJGz8InTWX
         tTZH/eVm08pniAKs/2ZqYdKm9fbxJoIhikWTVr018VQuLDT2wox1wUFeutLj11jryXz6
         rGAN4mt60wDBcMuIBBtMwycnv5F4I5bahKHWWAGlChNmjsidQmLyb2VD/Y9OTxfFkVp4
         ol5Zsf+bIGgoE5LiKs92X1lQxGliRfUCZTgAzSKJqKlp/HgTMVSlgUzhtnTIUMFrf0+s
         sD+e29Dy1iIYl+/PpHt1xUULz9Kfz+RgJYF3wlIVhOHwbEXHXq7lF5/RfKTw4DEmVhig
         Vn+w==
X-Forwarded-Encrypted: i=1; AFNElJ/rilO3ziGx6b9+45p6B+icw4Z8j5uaPaN9FAYMmqWlu3R9HBgW/ZgKkCUBmVcPWocAFReIZ8IkBf8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyE68nmhFywkAPZW+6W/dzqJplnUWT4xTiTE/irJsxiJeZtXYa0
	TmhvNpEDdplSP7LaZZLZbml0LqEz6awkKUNG/yll91aRlVEw1wkG5iGLKgsBi22MTpsjA05pEEa
	tnuP61RGm8+zzehRcYZ934jrXue/gxOzm9QEln5DMOk+8pSnurSGFdLNTIRYPcFehX5Mq
X-Gm-Gg: Acq92OGIcjeVbJa1ddADtxitWdR9M6RHuY9SZrnf7vBOxA0tDF7MT89bvFg2lVx8YLe
	0xl5rAAJbt+IklhphkqoM0T8CxNfBJ1jcCr17eIEzXOY6bxfezTChq4yVPSeVO6W2+LQsDLP7ps
	ARRpBUnJtWzdOuLDIjYSLNwS0LNk7o32FO/umftpphUrhwFxwE/KzQRKiycA5VHWgwfZelgp5MI
	nxgaZ92Iky0re/IWxYurEfRs0epraO/jfG4TAf6JLcyWxffCOhxcQJYrHvTThVFvlJhyMPyJxX5
	GRRWCWslRZy0QxbV6EwB0TXwr754p4Sia4VJDt220bdfW7CS7BR0qjJzFOHP95m62V82pqalA2W
	GsDtuoT18KPQhESmem4TkaJFeubPWfQfzYbExCxpEmmeIfHj6s2rAeLY7jDSKafjMdC87n/H+18
	UN36qOw5XO0aYfjQ==
X-Received: by 2002:a05:620a:1996:b0:8ee:7878:af34 with SMTP id af79cd13be357-911cda511e2mr1962909785a.1.1779191501619;
        Tue, 19 May 2026 04:51:41 -0700 (PDT)
X-Received: by 2002:a05:620a:1996:b0:8ee:7878:af34 with SMTP id af79cd13be357-911cda511e2mr1962907685a.1.1779191501253;
        Tue, 19 May 2026 04:51:41 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68310d58df1sm6536454a12.13.2026.05.19.04.51.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 04:51:39 -0700 (PDT)
Message-ID: <0b1c66ba-d841-460c-b702-8b4530d56f73@oss.qualcomm.com>
Date: Tue, 19 May 2026 13:51:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: Add Shikra CQ7790M SoM platform
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com>
 <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDExNiBTYWx0ZWRfXyKHl3u3tUyCr
 hC6JNZC2rfGGlOHScyLDGu9T8OKyXrbZn8vM8GpxLTHyrPLuXMjnLQN+N83MkSO3ibbeMloYohB
 h+rHlWQJbnSUcxlsrcX9KlL5XGZE1vuIQrbWxhB46QCeimKNeFKrySsm1HaBSREa7BypQ+ZTq7o
 nUGiuUBqZ3kXv8TeJ3eilSKYxkH0piVrKAtY7ebkel9rvaogazRcRnNPTvfB9JdCEWvzT1x1Ud5
 BjMsBD+zVAUuNPvzC6+R4D7OZXmGb7gzHNswYYI3a5tjZErs1McmIRhmmtbDC3n6ACOrgiXjDU3
 jSXQkThR4MjGvWUDay/taG8v9hhcAKFROUiKqQqfsQv2XVja3RpB8TFMpk99gLhX1w4Q38CyIuY
 Ta47ewNDBMiRgJYDo0xydqTgmYrmsKvCSu0CHKq/okLhqXII2L3xDS9uHoji44Br1RtQdtkw2Uc
 WUZiHOBh1u0B3WugNzQ==
X-Proofpoint-GUID: Q-CO6Q620V1gwMQlW8HLyNZLtiZ5Oypf
X-Proofpoint-ORIG-GUID: Q-CO6Q620V1gwMQlW8HLyNZLtiZ5Oypf
X-Authority-Analysis: v=2.4 cv=J8aaKgnS c=1 sm=1 tr=0 ts=6a0c4ece cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=INWPgVgdgEZSfrFqjaAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_045143_562968_F6B1CC42 
X-CRM114-Status: UNSURE (   8.20  )
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

On 5/19/26 1:21 PM, Komal Bajaj wrote:
> Add device tree include for the CQ7790M variant of the Shikra

I don't think CQ7790M is Shikra

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
