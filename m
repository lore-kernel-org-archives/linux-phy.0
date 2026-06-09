Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B1ECD8CB2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 19:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzUEwlTiEhEUsJQDM1ZMCJaxGyGkNPYGzbpOutGgedU=; b=bS3DEFTn6u5ibA
	P7EErqDcCHxTrpUbQOOSV55AyHGXEuvccI4jGHvp+xt32tUbcRBRpxny+67PHx29/TLRMMx9pC30e
	1V4yqP0hqqMfE8jF25i1AHrfYXFSIWwAJKD+YJaZEMzPuqvy56hh6mA5NPgKZKYcF3QPy3TnlDuz0
	o+cczzIsmElAhqE1UkYgKNhGud79nCDGZWVI09HbbNDpV//ZusMPIqE4OfCqHdVHn3AGmGmC7ljJJ
	po/eYYpYD2EOchs3SF9lL9ZYlRbrsVAOpOILcilyx1IaEyQzaYHEMJ7FKzdShttuNkZLsoRNzBRyQ
	jI1TyX8FBF4GXAVOI/FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX20V-00000006GyP-021s;
	Tue, 09 Jun 2026 19:21:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX20S-00000006Gxz-12Xx
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 19:21:01 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 659GOKNm1155588
	for <linux-phy@lists.infradead.org>; Tue, 9 Jun 2026 19:20:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ny3CGQUHsR6Aa9iprwNBovoybcOVuDeB9t/uu0E5158=; b=cdfxPZ8Ly7A4SM9P
	71ksJT0jS9uDaZ2wrd2YFi4o6OkwwiJo8KRAUGtdAvCnAetZBlUDBnEzmaAIIieB
	hPJLr7/UKFfBurcUZ4F9Fr4X3f268F3YEP52JMQBQx2FdZQcYVKDXUX8IMeSs6zH
	kQ0wkTVUd9w4Vb4mYR9wIHn4v5imVIGHWQjQjSPkJOzulX+ZvFR/NwBuSJ3VXHQ1
	TCaruBsEcc1cemtD/RRNhlu5Q5HQwb64wQ6qVKtxn9JOrzXIr4W3b/FedqOK1sGO
	AnoidGzAh7XqO1Ax9pKmtrs5od6abmflzt27c6ZIzCJGNh2AMFtFwdIE0//BahC/
	9xrm6g==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epf0su9nu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 19:20:59 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30761ab3483so16234540eec.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 12:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781032859; x=1781637659; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ny3CGQUHsR6Aa9iprwNBovoybcOVuDeB9t/uu0E5158=;
        b=I4EtAOFV1MBTVRglC+gbSdM13I21ZHsikOA/zxSScJe/VHASkMt1VRfVjxBKixEpmo
         8zMcWRx2q7XrRHCnyyOSoMpzol9/bjN/rxVwC88kLJuVEZlHRcAKqPwheG3g5ZuKUVi7
         tetRY2IPV0nVmZ3MbRSpKqhiIkjqhpwMAtdfP93Mzs4uC1C+5mPAqCD92X3mZMmcPIxO
         Q/ZQTMayARPicI+I7GVmuu/WrIX3//RwDYdeEuowR4uJYX5EYtnwbA5ZAOqVBC8wP6nX
         EV8hMzH4WEXJ2FNfxjqqIEBCnoW1CcnT+MV2gC6TT3hby4V7OQG3gqgZ6QQIP9xC+xlh
         Rr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781032859; x=1781637659;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ny3CGQUHsR6Aa9iprwNBovoybcOVuDeB9t/uu0E5158=;
        b=T0UC4YHftWlatoarTA1F1Xqk7BQkC18wjesRCwa7Uoud4hrOLTpUUiV8kc9ebQVXA5
         QsEjYZz0kujW+KzuBG9k9kD4Rb4DaZ+yXscPQ5CD+Jf7/fEoF1BvTZDKkWeyEUXmuJC1
         cMqPQ+Gmohdu5eEyiucvauOuUxXI1loXIWq7BUkBfjFDUdIyJ/13zjqz4adsGPRdsWob
         ci4U0sUYcg22ActUU3aJ9M69qwpawI139ujFwALsGd/JVxYNtFC5rjCFpjDY2UEjFwUw
         Z+P2LOw3MVXoIGeL/4Dg5hBQPoqq5Kutr7kTExUoRlJBXYgXhA7T0x8YKIPg7gJ2GHJU
         2fbA==
X-Forwarded-Encrypted: i=1; AFNElJ+hYOz9Xb18VYLPOFHKkyFIJvZnRP42FTiFDSpsgP8zCLTUDQwwPLExh//Z7j/jqsrztQSJei+V30Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqEOEcioVVqK4D0WZ6neGWW+Ei8z8C7clr076qaCOjSOOJyPlH
	lm2FjWhVTt/diOX5bpUzVXr9AKQz95chmvI4Ed7GkXsLiVMZyf2X66hJ4jukNDjsjLB7gOblSO2
	iuKgNz+pZ3R29FyoaqZuX0g0ks+GnwaSUWuhy2pjzoFbGE3jkNI1mqNaNZZeqDHICtM4TXSLbZS
	GP
X-Gm-Gg: Acq92OEooa0vg027YmvvPwMlaL0xR3CrXojfGX2wBULg2CkJ45vjbgbOs7mhvCm/bkq
	UzaeK65i9DVmkljDXmQE5veouySVPeWroTjaCCriMFuvaJI1LbsPaH6ETGEpgceQiw1qoAJmN/d
	Uv9h5MR2QIeJ3QMJI1l+QQOPs26GvD1yW9bcI+MCmCFks2ta5cprbtJIX3rlcAkSfou9zuuHTjX
	oerDL0SpXKc2zWwqjBBpu6ZLziWwodIiIDuhIzL8f6yTcUrW5G22ggVhZYuKFApmbFGzqEYT/82
	VqUR75ymECDEmxBoDozIeEqK39qHF0pAeCQQ5X8fUiIZ2w6OYFQrC4H7lEa/dubrhLpuWY4koEa
	lflMBJUkwNvb0+iDRdoi0jRbODtI9qeBIMczW+7ffYhz8nDhT2GQMutJ5zwGHPNsn23l0pLNmxS
	RiIZJ2JgUl9V0=
X-Received: by 2002:a05:7300:8b9e:b0:307:d4e7:b16f with SMTP id 5a478bee46e88-307d63171f3mr3318280eec.23.1781032858606;
        Tue, 09 Jun 2026 12:20:58 -0700 (PDT)
X-Received: by 2002:a05:7300:8b9e:b0:307:d4e7:b16f with SMTP id 5a478bee46e88-307d63171f3mr3318260eec.23.1781032858046;
        Tue, 09 Jun 2026 12:20:58 -0700 (PDT)
Received: from [10.62.37.26] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074deaab1asm22261217eec.17.2026.06.09.12.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 12:20:57 -0700 (PDT)
Message-ID: <04479989-8aca-46bd-8153-1dd033f1fdd5@oss.qualcomm.com>
Date: Tue, 9 Jun 2026 12:20:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
 <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
 <335238ae-c476-40e6-8639-44258fefe988@oss.qualcomm.com>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <335238ae-c476-40e6-8639-44258fefe988@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDE4MSBTYWx0ZWRfX2/RaWno9mxZ0
 6oOZYQMYLBA0XbMwvgqDxYSgQXEsZzvwskpunDytOk1E6SlIW+e/FT0afAcjom8qkkc3X5J6N7h
 tGzT5LmKSQaCbzlndgfZ1DMngs/9sseEXGETUANvwxYSdn50xJfwdzliFABHbvbxoUygAwkJeqX
 6T0fHiCgxRy9WNBdpsLg+iUs1ASiz3g6EeszF3We0J+QbulwFzaoqEEewvNmKd0U6J7u2FhWIK/
 7H7EJWRE2nNJCGOjE2HehBv1qvTXJQ1sYYmk05iiDDW4xH0mXTA/z0MoGuJlcByzUfrDAQ1EPqu
 EdDbtXiQusWnSLqiJt0qYFRxul+7r/WW1lAcSFpTnPLCR//4PQ+zVhsxdQNCjiLWu3Fu4UXjT75
 It8ICRUg7ek+Mz6L9SPE9Kkg+UKP8Yj0crJw9XReDSbsGaoxpvaOs2gKHxOJYaBrCnQ+5861toR
 8CnAJ1m4away68wL8CA==
X-Proofpoint-ORIG-GUID: gxXOlVTHU4mciQI7uEGrT6MzVYMHcw87
X-Proofpoint-GUID: gxXOlVTHU4mciQI7uEGrT6MzVYMHcw87
X-Authority-Analysis: v=2.4 cv=GeonWwXL c=1 sm=1 tr=0 ts=6a28679b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=qIjKha6TCTV6UgnzlqcA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_04,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_122100_335135_A054C7BE 
X-CRM114-Status: GOOD (  11.76  )
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



On 6/9/2026 6:56 AM, Konrad Dybcio wrote:
> On 6/4/26 11:06 AM, Bryan O'Donoghue wrote:
>> On 04/06/2026 09:46, Vladimir Zapolskiy wrote:
>>> On 6/4/26 03:30, Bryan O'Donoghue wrote:
>>>> On 04/06/2026 01:07, Vladimir Zapolskiy wrote:
>>>>> On 6/4/26 00:18, Bryan O'Donoghue wrote:
>>>>>> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>>>>>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>>>>>>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>>>>>>> described as subnodes, then likely none of power domains are needed
> [...]
> 
>>> CCI is not described as a child of CAMSS, here the situation is different.
>> CCI probably_should_ be a child of CAMSS given the design we are going for here.
> Yes
As of now CCI is an independently usable device to configure any I2C 
slave that is connected to it. If it is to become a child of camss, it 
should be self contained, as it is now, and camss may have to become a 
simple-mfd to make the CCI independently probe-able? In which case, we 
may want to follow the same protocol for all other sub devices like PHY. 
However, if we do not have any requirement to use CCI independently (who 
can confirm this?), probably, we can stick with 
devm_of_platform_populate() model with common resources at the CAMSS TOP 
node and sub-device specific resources (only) in the child devices.

Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
