Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BC5C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 10:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cj8Ei7YXOK6x+eDIel1iYBmDENxiPu74z5D2A2kDZ8Q=; b=nK6F1vr08YF2Q7
	L6w34T/KR/oy7b5b8080ZB+trmR/hcltG/mHCVeNf/trIdbk+OJqalnfg8tvGPi+EXdol7cKwuAkd
	asTHaObA64Ndy4IZrPmN2SfXYXR81ZEGEogHdMO2E2YP0KwO5+AUGe2ZAP0eG0L2u4rrWUZdIkwRU
	8BXiISb4vmrmY4I5EouYtXI5I2+DkbHdsD8tIjLz/eGNwVDda2a3cUKhDXyiqethNQaml3VxtGcyO
	MVeGGIyEWDPlMmigY20kkkjro4xxfZpZLldws+GWSib9zwRLMuCIZ32mo1f+DlZkUh94nCu+adPf5
	FCJAr1iiCdwnfPfNDHmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9au-0000000ENU0-1RuC;
	Mon, 29 Jun 2026 10:52:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9ar-0000000ENTU-3B9H
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 10:52:03 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65TATKBd2656155
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 10:52:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kj+mCYqTD3MrXFTYCaumQ3xi+dZUnCc64AqDHiFZ5qs=; b=bGzGpZVppks/rbye
	8Evtcor0yVvrQtO4fU+3lzK+neZBBlllWAE1vjQRkpcBeqzHu4y0q2VOgNbAL4Vl
	/oHEvpKP1pC2CRMmVpM3V+iIFY/J/byoQsiZArSc59HnGl9gaQ5Uan7s0xiV8NgY
	ZJsjuPGSsIYdvpKUwyZw3ozAbiHEVH+8V9vhJB2eed2gHEFmltN8OPFPxdKHNc9S
	ExcPebUQFcXZM9yRyqGurrmXELN7FjEYp62OmXekDSXZ4LBGSqoZ+u5rccO6iBhI
	edYNOr7YlNGRwFZwPER5lH61NQnTA1k6N+y3Y9g6exWQtDlxDOTJcwYtLJu1YMzF
	xpcIjQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3np7ge57-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 10:52:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92b79cc1f21so74321985a.1
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 03:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782730320; x=1783335120; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kj+mCYqTD3MrXFTYCaumQ3xi+dZUnCc64AqDHiFZ5qs=;
        b=WxPBOJWbTJ8+TT0fpYWQ81InLLDqQyxkcAcoHIPu7DvIil+EAh65DPrxqtm2rHKQ76
         ak5VoJITyKW5nOcNk2ToSkMTVMIRAId6XdnoOzJw7NfvHtWiNNtIYq1VTYy6Xf8qn7ye
         8sQrZYe7DKVu8NY2xl7ZPVqYrBWKryIGEL8r4a34TWZ5/GYrk2k54ZnN2xNGnHiiX70l
         uRqvN97jg7XQyn3Mqaapy4A+6GqEpRbmQliYAUfq+Kw8Tz9vNlV8dVby5vfqiM//coyn
         r+zknEsNghQqCCpjK0DDMxwJ9SXdZptq0p0D4UIoGBZ/EiyjLkEGVnH1taOnUg5cHcFo
         fA7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782730320; x=1783335120;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kj+mCYqTD3MrXFTYCaumQ3xi+dZUnCc64AqDHiFZ5qs=;
        b=Jilh9202bZHzjmheYW6G0ZMoa9A8rdWrp9vXlJjJMxOzPKYIlm8vx0E7ilJloHv1e5
         /YIvdARGm4p/THRwaMJwGnNdCckFdt79J3mihfhkEJpt8xc2GjOySM3Z77sP3+2X01X7
         7L+BFXY5ha4+AYLFldtsr4BtZwq5nuqR/N4d5eULsFnzZFSeaxFDBG83QujBn6lS5228
         epcoCKYofOF0rwhqp7BCw/IXsQq3DU1LFkhGinzd6XzSZxx7F8/k6dD2TrWwH1VLW2LD
         hJEZr5vt117v05DsP7KcoX1+s9NCn2UbQE55OvWaLdNNU5N7x8hdrpR3xOo4hxnqsgUh
         vOug==
X-Forwarded-Encrypted: i=1; AFNElJ+L7QzCi8nXea4y2HOk2/tCraw7W+N84oyx6kXoWvUqpnW2TOsGUJQ6TiYrJWpvjytgaeRn3Tx47tI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSF/KjVVt5L6hwZYdchG0zo6/tgwu1Tsed/8/YrxPqCje475X5
	f3tUSw7g8CJ0tIHwDfYbO/X3eGR2jVc5ITISBjO2iU83LDaREwG1Xw4h7sbXNAqDCOgtei9hsIW
	+hQZfXsy83QUPzNgv/nIfu3XYfv0STlW0CDFrBupaMgWbOSmY6WKo+53vPAI0TMRtuhjx
X-Gm-Gg: AfdE7cmtFrWDkKqBbpfgKbGO4KaNZSfdplTgqR93GOxQuhpHB/2ONEo0sLarUqDwjdX
	zEE+XxMKha+ARuXTSC+yi2nlZXhWW3IcniW0IvmtTl/7ePwiTQ+NLN1kWkFK/Gcr9b2Q9UJI2GN
	ZZIr/Rcc6TVQkacqMdGmYaoKpYtGUwAoUftA+cyAb71bi4QnyNlcp847IC4QP8qXbLfFHGuAQsn
	Zupo0iZtapyxiGm7PXDU3phUodDuBWwig8mvQDWJNFovRIhVmWOthKsqYyHP/5OSKaxvcma3A0e
	wDx/xr3fxFw5wHZs9Cpy0NOvu/93ZdagYOz+YT9Idu50Hy9q6IVYJYHE40olZbsIAxn0RJ8cvVe
	JqfrTk4x/AjIPLI1lhZfp2bB6SbMcSTDgOd0=
X-Received: by 2002:a05:620a:4493:b0:915:7d6a:4f99 with SMTP id af79cd13be357-9293c7e9bb9mr1395779685a.5.1782730320060;
        Mon, 29 Jun 2026 03:52:00 -0700 (PDT)
X-Received: by 2002:a05:620a:4493:b0:915:7d6a:4f99 with SMTP id af79cd13be357-9293c7e9bb9mr1395776885a.5.1782730319428;
        Mon, 29 Jun 2026 03:51:59 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c126bcb08desm120592366b.51.2026.06.29.03.51.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 03:51:58 -0700 (PDT)
Message-ID: <8811c181-9caf-4797-8e17-52311702e292@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 12:51:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply
 support for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA4OCBTYWx0ZWRfX49NiwHQRkIdo
 holaA1jLShA+u1ishH35bVcg+pISZhQQYQPRWs2AjUbMqMEDP2FVjMuqSoopprx5UnahaNPf7A1
 OwLd1nV4yXD8mDvLfE2is9e4aiFJp4j50ek4U/S8cXRtly+Kp3opXtzD4LTh2yNLCbHqr7dVyXk
 0AIkl86+IlF4VNDxoxGmPkBh7LTnUulaXNsVtdkp38Gf8DU6MoDjI38sljn30uNA/dNrYJEKchp
 SFOHghOJ6cyxe07dOaxyKjO9Xy9944sw+tp5jcGMY9bPSipIP18UM0aDpw+doD45/rAoW9X4yxx
 hhjgRZLz4Pg+eDG9mnFjFxyB+O+WnV0SXuq/m0NEQC3bufdoeXeH+6rK7o37rUvIBXZ4fIsy0R0
 TVM8cnTykzIxeFfTs4tUrgG2jLJqAkeF5OffbgfIN0UviMD5/R7MN2ErY4uX/VFbw5FfyigHBX4
 WqiCruDf+Q6eMsCnXyg==
X-Proofpoint-GUID: TCb96_xI51nygnPMM__FrCXNsTOSNiBT
X-Proofpoint-ORIG-GUID: TCb96_xI51nygnPMM__FrCXNsTOSNiBT
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA4OCBTYWx0ZWRfX82TuGudjS3Hp
 a6E6bnpF63JXtIDIzAR5xdVo4N9o32B2Bc2TDgPEySBXFuJQKegTqOtw80J87Rqw17MVO+IbNQM
 RYT7MJCYl2ZSzavxoZ6KxzIST+hCNZ4=
X-Authority-Analysis: v=2.4 cv=OcWoyBTY c=1 sm=1 tr=0 ts=6a424e50 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vCEpQpMPtrpGXR5ZkIYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_035201_914080_C9463AB0 
X-CRM114-Status: GOOD (  14.57  )
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

On 6/23/26 3:05 PM, Qiang Yu wrote:
> The PCIe QMP PHYs on Glymur require both refgen for stable reference
> voltage and qref for stable reference clock. The refgen requires two power
> supplies: vdda-refgen0p9 and vdda-refgen1p2.
> 
> can be extended in the future.
> 
> This series creates a Glymur-specific supply list including the refgen
> supplies and updates both Gen5x4 and Gen4x2 configurations to use it.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Changes in v2:
> - Add dts patch in this series.
> - Reword commit msg of dtbinding patch.
> - Link to v1: https://lore.kernel.org/all/20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com/ 
> 
> ---

Is this necessary (for Glymur) now that we correlated some of the
TCSR clocks with the right nodes?

Perhaps this would be necessary for Mahua since its clocks don't
require QREF (or we can lie about it and handle them there)?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
