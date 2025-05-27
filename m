Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C8EC54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 22:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QizTIwSxKq8kLkPIg8m1XjUV7CUqYP0bU1lcXzAp8Zc=; b=0fAoNHZ8BqCrpi
	JRhPnwyl791EliRaGGSpp1EiwgyIXY3eTobmf3t22Oj03y1lE9uRRKShASiCV4EIZpaUrVBRMHyaa
	y9PUFstPMQCXmJjrpsPRnTg0Ps4Hl7/EegJ+5RoAtPUEJozek+tsbxmIuOl8T5/Zr1I7ymoGlsTyp
	ssSuFvRYRih+2T7CTV+3A76tQDw9xQSY5x22bQrlmZnjPNnw9GdczdnU2A7kF1+JXU4BEE322XE+E
	Y8eX5zBt8b8/7Blac5MbvioalgX1gKk70/zeZs6EVbbGRDio9pJJAC1EvuDvIOllPsZRPE0QnhRNu
	Wqalx+/wFLtNMKA5RBzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK2uH-0000000BjEu-30Ri;
	Tue, 27 May 2025 22:36:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK2gS-0000000BhJr-0AFF
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 22:22:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RKSeGm018926
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 22:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	co4RwX7fyamGEB9Zn9Nbjwa2/IhbSm6IfT1PpDPhJZs=; b=B61rgfbF7Hxrv/HA
	U859kjzYiEU2h8YPkR74d73ZqKG36WRePqQKoyOQZwy+gkNs63KJLy9QiHf/TE0R
	2NgKKdLreoDJGbiUtY2QaSP+49ahCE6kBVxbk1mpom15XqxMBukMKh9DVYMxr4x/
	Gz0IyJZPgho44gSsK/PDGba4rdo9Ox0GUoraT8Vtz2JQTMyBQCJhbEewMrtusbL/
	pkDpQmvai8DFSjMFh10nuKlkByF5NAEKdKf/sBdnTl0RMY/LqoXArhLOtY+pmEhO
	tW2mqZoMEBf7WmfFTfyJnwkViWv5ZWvk/pQM/shUhXpgMXKuQwy5ytp0o/LSnfdc
	R8WgoA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcvu5p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 22:22:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f2c8929757so11582816d6.3
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 15:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748384526; x=1748989326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=co4RwX7fyamGEB9Zn9Nbjwa2/IhbSm6IfT1PpDPhJZs=;
        b=MAIrltyrNZFXFPNT1Vprr6vT88wMZ+5JBwxh8iMdNGUOhgavLTrfJ4hKW9XsUgM16q
         cbdKlP5O0Cdb5n7XDx428jcrgosQ6SoTQkXUUbk3W79RnVOp5NxkU0n1LoRGHNU/Tc4l
         wOFiJ4HKkSG8FHdo7D4dCfI9xRbxr+lXH7gsdExXsYQwXDEbkUvpCDOf2H53TmAcbyTN
         Y/O8mWUYskdwz4OnnMmz/C9mDxIiMHMeNc4YDSAET2k8awh7VOxK24oXwr6zuE9+Z66g
         CHw42dsHsVlbWwXg0chjk5qpIq3pjzelV/EDvh0ClT8K52/r6630MwmpaI6nHLdXwjIY
         I7pQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdZVPOYc/jnhDGZ2BJme7zL4dSzcVMQOSaYUmPsaf3yerqjiTf95TcnmIZfcA77U76B8Q6KIdjDfw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhPeouPgbn0OcYCAcc6Bsn8EdRgYZt5x6IFszrCnHiG9uQMUnz
	IOBVmhyJfYXv9t6eKWbNle9tu/Uf6QSccwdgWJzoWOAMPiXbv44mJM1HodiI72i013ayx1bKf4t
	VX2g036q8Oo0B5hoDUTZtMF23pS0+RZ17IB9Y0eat5qOEmcRrUPMdBdH1fAjfwT4VM3Tv
X-Gm-Gg: ASbGncvpNMpmrHOX/QKK7n1T1G7fvCnN9cPva5L9WKynhkh2mTgx6HA0HCyS5KR/c8g
	M15lZocEeE48WTgDRp+6gSlWM8kh0A0oVGaibDJRtEQ3jdLcPErs642X0L4IkDKUfPUMh2DlFKZ
	H9g60Q0eHQIZt1LpHUc5SSt6mZ0m+fh7psmux24ucElA4+lBo5gxyO5L2x/VEQBxRgKGPwBFKts
	0w22SkMOl4gghUg+f9CKN5JHb4pSviwP+uvpnNPzc1sLbHQQf8ZKKXjiIDafbfgAC5K1cPkZ8Az
	UWY2w4p7Q4QLr4AnYqeslh/QlJcXAbr1j4tpludN7iLNUeoYZ/cn0G8kUPQtqgcOpg==
X-Received: by 2002:a05:6214:21c2:b0:6f2:c9dd:353d with SMTP id 6a1803df08f44-6fa9d2baa17mr114438596d6.10.1748384525594;
        Tue, 27 May 2025 15:22:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPdM04AdWocnf2vMjTqsH3Hq3s8MdMYiX5o9329a/ATt3+6/aInv+e1DqCUlQfmpR8ii1oeQ==
X-Received: by 2002:a05:6214:21c2:b0:6f2:c9dd:353d with SMTP id 6a1803df08f44-6fa9d2baa17mr114438206d6.10.1748384524734;
        Tue, 27 May 2025 15:22:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f225f7asm18968066b.117.2025.05.27.15.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 15:22:04 -0700 (PDT)
Message-ID: <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
Date: Wed, 28 May 2025 00:22:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
X-Proofpoint-ORIG-GUID: l8-b0lVyWbEQHNI5MGFlbm4iVcmTh9Zp
X-Proofpoint-GUID: l8-b0lVyWbEQHNI5MGFlbm4iVcmTh9Zp
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=68363b0e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=L9oCjnS6bectiR9KkwQA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE4OCBTYWx0ZWRfX9xRtldw84W6K
 YEAQ9mmWEPbSRGPllrCeo6kYnc3PuwN3MQAYWY2MkGD5q2QzIi/MRfdFSM4Ad9gkXORxn8NnU37
 wC9muyhOBjIA6+e4Cs76URcCyP3S2xwXLsTy8PV0RwVCyrmcnVyvInXdv0vz5Nl9UqSzhtGAhtQ
 cHo9L2JNy7hIPefvniH65iDm5i48HBMmft2MCkYyXknau8MybrG/CYm3nmLce4iXfNlHxCv76fH
 vE5el7ZrwsWXBXtqYcllhDAVGrKsB2+jJLqAGcw75l0bO0mPiaOcMD26vr4hsgpRE+vzkvR8E6n
 rloiDpehXpRECw7LsXOI4BLiH7PBTSrC3LSXejcuddAEVuiE5jkfpNC9ztM9Wl2aSCv/YEr9HNK
 KLKRc0HyOocg+Or0A+4P1RXVBRPRFeubmwCfeAf85BtLF/Sso+gD3ke7bvr1wwlCDgc5VeUX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_11,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_152208_206244_718BE7E1 
X-CRM114-Status: GOOD (  27.67  )
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

On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
>>
>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>> will be set in between of USB-Only, Combo and DisplayPort Only so
>> this will leave enough time to the DRM DisplayPort controller to
>> turn of the DisplayPort PHY.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> [konrad: renaming, rewording, bug fixes]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---

[...]

>> +	} else {
>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
> 
> Why? if the SID is not DP, then there can't be a DP stream.
> 
>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>> +		else
>> +			new_mode = QMPPHY_MODE_USB3DP;

To be honest I don't really know.. Neil chose to do that, but I don't
think there's a strict requirement.. Should we default to 4ln-USB3?

[...]

> Consider the following scenario: connect DP dongle, use modetest to
> setup DP stream, disconnect dongle, connect USB3 device. What would be
> the actual state of the PHY? Modetest is still running, so DP stream is
> not going to be shut down from the driver.
> 
> I think we might need a generic notifier from the PHY to the user,
> telling that the PHY is going away (or just that the PHY is changing the
> state). Then it would be usable by both the DP and USB drivers to let
> them know that they should toggle the state.


If modetest won't stop running even though there was a DP unplug
(and therefore presumably a destruction of the display), I don't
think things are designed very well

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
