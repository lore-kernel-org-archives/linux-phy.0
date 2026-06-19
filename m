Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A83EECD98F2
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 12:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0fJWkP+VnhOlPjVXJy/c++1BLMtqKM+EX50rzDahEQ=; b=sd+DxcWZXwItNW
	kvymvqDLJBsYJgFxOxXrjSq8OhhVgWJ34z97bLuu+DNSuLbNzX9UIvuWHunXMtc9l4eaossHuT9yo
	B+LyYQy+kqutkTgCiVdVFrI8CU5V3RYLAXWr1uBKMcjiyTyz+ngnHEoh+cIvaqK0oR7RPwt9MMo1/
	bD9lWK5cNHqmwHFGmRwabHxP0Kn8cXi1Vu2gyxfcjy3wNh1QcHVm09M/YRWlNfv5sDPMeTnRP2tSW
	4CpTB+4yrYBpEJekEsgIvnnvQSCXRliYLbHA8GNVZ7ibFHLGlETnhH0kIrbYjDdi8gSTSZXBkf5yC
	md47QEAlbj+NN10bmjxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYTw-00000002Q6s-0Oko;
	Fri, 19 Jun 2026 12:38:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYTt-00000002Q6X-2ddw
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 12:37:58 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65J7QwhM081498
	for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 12:37:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tH+KT6o+4/EXGYtJ8mk55q/zmuMFzZSdiVFyox+CC2o=; b=Ebjtth9s941BEZx5
	94uCJeh2tCqjIeQZz1ptplBLLg/0C18wtKYH7CNSAv5Y2KS+9HIj/hsNZLDbEnTh
	UWj12zNl8PYpSLYhCkSm01nMWaj7Wrz5a6A2YbKAGhHZu2rjdCgG2NT/M7ZT/WNd
	nNXJniWFlXsobOK6ZXZbDxdzU6p78wpN7sMtux6OfOAC/XR1TEOFT7hq+w1LMSsu
	ATyJ4rrTpbTQtcIz8jKoq1ZXfyClgBQbEoTil+A46vmCm3qo5S4EkiPpcPuUA67Z
	6DHrp13/bOmCMMHDRaX8uiEDjnC31OxgSIACuTBXM9MsKVf0Dt9g5KVp3GA1GIaS
	VkLgcw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4evmtjbkde-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 12:37:55 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-966ca0f25a4so110188241.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 05:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781872675; x=1782477475; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tH+KT6o+4/EXGYtJ8mk55q/zmuMFzZSdiVFyox+CC2o=;
        b=c8nQ75jXV1ho4H/r1gmyA9EKhbrQ9Z9eDgEcEQoKHHs4kZw0mpuf1iu+rRb4SKzqJW
         U2R5NOQVeo2BJqzgPdSQIWnlm0hf4o2DkGN7dXlh3DR06brPvBk9JJYDuvDmyKSJuAtP
         MqJQ1+uesow9T/7peLp3egz0843mQcsCxerCzC/a4E5eoWNr2gxfk4LraPD/YvnSlVDy
         egrOTxa/AEFsxGvQgpteZWz4xyyZIxbyWwIzu+yyHLDZERuOGaeMO/sOH6SWhYU8XqKP
         DLrCAVmjuWzTz5P2mOdaXwE3VqmswOI2Sl+958eDXoC53NDXzOoK0vgFxgYq5T06YNqS
         nkCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781872675; x=1782477475;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tH+KT6o+4/EXGYtJ8mk55q/zmuMFzZSdiVFyox+CC2o=;
        b=bDWkN8ny6xNHwaF8R7q8A0HCLorzhV6/6CpSj1zYsf2tuNPU7tQhbz4XglOzqKguNn
         t5YiIUNjzT6iki1pc7af8pqxSeyq3Wip2gHldxIfj4bGpPi+3r9S+oZGmhtF5ix51VM/
         0yO2tkJNjoDhtcQwwPE8VjRNzWcWs8JZL60n1IiBa5q+5SXMXUjETsKz2WBzOYnAow4M
         +4ueheSAlqVQMtvdmjJuWPPxKDGesxoDvKNI3Fxi9Yj9LEYs/h1kR4BD8V+mLdKRfHU5
         G710uoo8Lfu/Y2rWEQfrG+ak0xuHstA25TSukZAgwxYr39/kcwuQCTqM/d1asxrc8iU4
         AbNA==
X-Forwarded-Encrypted: i=1; AFNElJ9pvn5geudAr4RXAO0gx4o/CuBvhdPESpuvF4H8/ZpfJXqxnSMUVD4VXWZrZYbApvE7RPqe77/5dR8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwV18V+fVmG+NDn4bch2Wz81o/AG4wtitFScYVP0asqb8TWBZu2
	d4JUVL8+CmkAqwk0MrA8+9Cgg0CpHPSN34Ii4yrsz/pzzR+1k/XC5o+i/Obx/DWH2SybZy7muz1
	OH6y9hdoXtN3c31Ow3fk11ZGFjVsaioLy3P4Cwx8I3Id9A2AYwOP7enIBYVSTjR6WhNQF
X-Gm-Gg: AfdE7ckUIi91Z415TUZxynYW+UDYPxmrj4KGronG06004OYnfHJHN0XSeWj5adqvjNx
	PCO5KfE7uWNWbljIkyPxbPF/e9u0LH18fEG6kf1qrHPb77853rzvbK320eBDyorODzZkz0E4Qof
	m/3RS37k4m1VRuXHzZFBSEI61J9BPJhuEMcdr2QItfjKXltDlHbKPRA3paWPeMkRuGDxomKoOTt
	gAlZ1AY1yfjoZAjIQBoepthrbl+W24eAOATNLFGnokEQTXFLmZ92373jVk33CYo1QEFH9+n/AQK
	6h7l81dmVLoVY7ke+R/FwoVTKlOD3H8xjsoDifV3WFdzB8/J7O+Fv8u1HA4SvGfUXLjTEeUVSjy
	y9EhAQzeF6On84KlZuHDZMrb10qG6W6p0Y5o=
X-Received: by 2002:a05:6102:4415:b0:632:509b:e399 with SMTP id ada2fe7eead31-72a03b8d80bmr809964137.3.1781872675112;
        Fri, 19 Jun 2026 05:37:55 -0700 (PDT)
X-Received: by 2002:a05:6102:4415:b0:632:509b:e399 with SMTP id ada2fe7eead31-72a03b8d80bmr809953137.3.1781872674575;
        Fri, 19 Jun 2026 05:37:54 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0a9a1568dcsm84124066b.51.2026.06.19.05.37.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 05:37:53 -0700 (PDT)
Message-ID: <d1437b71-402c-44ec-a193-8296016575e2@oss.qualcomm.com>
Date: Fri, 19 Jun 2026 14:37:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
 <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
 <335238ae-c476-40e6-8639-44258fefe988@oss.qualcomm.com>
 <04479989-8aca-46bd-8153-1dd033f1fdd5@oss.qualcomm.com>
 <qt2d2anvwlubaicwhw3rur7u47v4swqbctapcw5qek54f2yzdu@ljd46avkfgy4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <qt2d2anvwlubaicwhw3rur7u47v4swqbctapcw5qek54f2yzdu@ljd46avkfgy4>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE5MDExOCBTYWx0ZWRfX/j6+yY4BcsbF
 ov47Nxl/Dmmkxk2NxVp20apoPzH/AU2yZWbwaXXdNZ4e4Fcs8UpHhEXW6zty+AEMLPIUMiz1sKj
 GkRudYS/qWfHcpoYQDJxqYVqBOyhjAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE5MDExOCBTYWx0ZWRfX17h+6Go2WTa+
 Hku13wm01XuDOr7WActuQ+C5h2n1Yhn4yRS7spB9I50olb7VIAhV5QrRo4lNDBXfFnLy6IcgVes
 R/vUrEncGa2zbWJpmoNv8vMjJR5mGeQi8Yzdubde3qBQRnwlFFCaolfvtAMpMZFINn+JA0vujZ6
 QtvmK63v0mzuCE42brAESSNGqAe9OJZ4qGCYPILiWVqCCYdWQP+wWr0foF2JsbzQqN1tje4S8xo
 ggwuFBqBLJ436qZRouYxHb4zyYxHjeJdkt35LXWj8V2uwA+imNLzwcOUPOONWhcrBNZpGTEFHEI
 OZcgAg/7W42rDkRSRSFg1N1cvMXPAib1v4Q0tZVtIIJP2OtNKXoE6LxqybjYB0F508aFKUBvT4Q
 gnIiMxAcppNgw7UCC5RvBrglyqz2A5BtMTaNF21L015dYok3DHSBTWcOn7Ish5cFKCT9tk19264
 2H7HU14Q1i8ZU5/ojSg==
X-Proofpoint-GUID: 6C6zyOazE6PcXCAljCobkpkc-SOnDuRg
X-Proofpoint-ORIG-GUID: 6C6zyOazE6PcXCAljCobkpkc-SOnDuRg
X-Authority-Analysis: v=2.4 cv=OM8XGyaB c=1 sm=1 tr=0 ts=6a353823 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=xgdi4esuw1k_wJbNTHEA:9 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-19_02,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606190118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_053757_793209_8999C6A7 
X-CRM114-Status: GOOD (  15.29  )
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

On 6/10/26 12:30 AM, Dmitry Baryshkov wrote:
> On Tue, Jun 09, 2026 at 12:20:56PM -0700, Vijay Kumar Tumati wrote:
>>
>>
>> On 6/9/2026 6:56 AM, Konrad Dybcio wrote:
>>> On 6/4/26 11:06 AM, Bryan O'Donoghue wrote:
>>>> On 04/06/2026 09:46, Vladimir Zapolskiy wrote:
>>>>> On 6/4/26 03:30, Bryan O'Donoghue wrote:
>>>>>> On 04/06/2026 01:07, Vladimir Zapolskiy wrote:
>>>>>>> On 6/4/26 00:18, Bryan O'Donoghue wrote:
>>>>>>>> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>>>>>>>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>>>>>>>>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>>>>>>>>> described as subnodes, then likely none of power domains are needed
>>> [...]
>>>
>>>>> CCI is not described as a child of CAMSS, here the situation is different.
>>>> CCI probably_should_ be a child of CAMSS given the design we are going for here.
>>> Yes
>> As of now CCI is an independently usable device to configure any I2C slave
>> that is connected to it. If it is to become a child of camss, it should be
>> self contained, as it is now, and camss may have to become a simple-mfd to
>> make the CCI independently probe-able? In which case, we may want to follow
>> the same protocol for all other sub devices like PHY. However, if we do not
>> have any requirement to use CCI independently (who can confirm this?),
> 
> Uno-Q uses CCI as a semi-independent i2c controller. There can be other
> similar designs.

CCI still physically lies within the camera subsystem and needs both the
TOP_GDSC and the AHB/CPAS clocks to be on.

devm_of_platform_populate() will ensure that subdevices will be probed.
simple-mfd is essentially a hack/shortcut to call that function for nodes
which aren't bound to drivers (e.g. because they represent something
without a top-level software interface, which is rarely true and why it
seems to be discouraged)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
