Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DD1FEC1430
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 11:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGmdWEcnN7Rx2IZnnPfZuCUPTNIzHXcNHk961vQrfio=; b=h2tNcBpNuutwry
	ksO70H5SJPCSq7bQWc9APK8H5qkk+TnbFm8tQHpF71q6bsG1SDjsIyiKBOQVQDxLdMiPNrpRRxlBs
	eNyMhxFMeBW0zADmdZteZv89UtnceD/4mqwVTPQ+sN75KPdPPXi47H+6a6O1fsTaASlq3IlhjCHXq
	mGMj7jdpWpJSt7w2m5/Js6fD7gyUkjZShFyJ4TYjSaAab0mLf/EOjxUAJa4O5MLL+jadpnUCCj8s1
	ilszBLwmkBUDYx3aAqy+JKfwalP2t7xUz+iLgJyqjswuiPrviw/RF8wJvOrv/lS4SdnhTbynZJ7Kl
	YfDsV8Vi3nQBjxUK9JDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxNi1-0000000F2aw-2nf9;
	Tue, 03 Mar 2026 11:14:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxNhz-0000000F2ab-0iXK
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 11:14:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n6bG582424
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 11:14:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r+Ehs/Uhi5NZO8CagwJStesS/5PmHPBsRm/ob87Fnvg=; b=d55Q8jtG8vdFCXlD
	GY7hkGNE3XZkVoNu/HOJ8dSJ1GUCXoszztPDv+ZB8lzLL90a5s5GSkG0y+bkVPmA
	SAKIZjbhdHP63jaa0+jJRRUvCITEKGM3w8PgfhJpgtS+ax6+C8luyOGIP3LrFuqa
	o0/4JJ6Y8ZC5SJkbx6LOcQGk/0TbJBy2jxSgdWgvgE4p6RMx0H1N6M15KK9AIUV9
	L0EEMeetb83qTbNNt5rYVnMVPYclqOXtAoP/pTozzMQRtR4kgR2wDuZt8yTbivuV
	s6Etk14zeKjnZ1ovO9HI3yDO7G4oyeDHSDolPb5rMHjCxCiKRaagE6AshB4yooW4
	KF9ooQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnh6uaq3m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 11:14:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70c91c8b0so488582185a.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 03:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772536472; x=1773141272; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r+Ehs/Uhi5NZO8CagwJStesS/5PmHPBsRm/ob87Fnvg=;
        b=FgwlTG9rb4CWcu2UvtosIDywFkMKcCOGS1SW5440aZI+i78XMblLwb1CS4zmupAQ3F
         5UTLtP6kFvvsnMz4nLhP047LHpgw+CZFgaY0WCEV8ea66MmO2O7y/ND6TrmRDNumIIHd
         LFJnBvghLNxv42lCnPWaqLMJn3X/J8NFi7wWl1DIELghNbhiMdY2gLLJHEAfHztSQlcp
         IN0fwc2pGHMWcoeubiA57qukng5NG8vzWfI+6YUvawZ4gMy9/+lS2rawTeZxeFawuSA3
         YSldv9yyXWnWoK6CWMbaCEnZ89rp+hbZyLK2EaHRYugSk2dIN1YByl99vCvtniSR90rs
         MsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772536472; x=1773141272;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r+Ehs/Uhi5NZO8CagwJStesS/5PmHPBsRm/ob87Fnvg=;
        b=LStm2stT8Qq/tl7O1c1QmEgTIiqnhSpUI6eiBfNbQdv+kczM5PkmJpTPaJeY1mUFrl
         b/+SXq/BMcOwaFNCjA96ZhlFVd5r+mCF/fO7FQd5AzBjK6tyZXRpkSIF2om26Wm71wq/
         8ykPiGXr+3PUvlDVz6o/BJTtuZii3akrauY5IhSzTyDr8A9e4oZHjV3fZVtl39q3Ea5b
         DM0Sr4LhG8sEA1wzDaPaZO4ZwGO6MsyE3r1RKD8S5eezDmHN+qHJWXguECa/57XkTngT
         a4GtKXDGBu6Z5DLpEezYsiW4ncZajaThwt/I90tOHk27o2s/w3KRKdFh2Im6JHSjezjH
         X0ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWnhxnVMopa/qTcwUrkh0aFMUtVSv4+QyxzIWOBCl+VyqOeRZWgVQKEtPPDfaw7S7GQwXh5p95TzM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2Gs1NRfe+eUAqvG0xSIL22vEiyOugxRXGjtK/4EDhaA/o/pfB
	8nQD2UmraAHowNLCx+HiIFcQwSkCsxfWvR9Jn3GxpcxeE/uprzbsgim3HXvVtxw8ojROS7W0+tI
	4uUTpmvvUhF8MpJ5ApUgSbwumGkIHAgnqE1kVeRg/WV/5HtzF9njDB75Iw/fxta6Hu88F
X-Gm-Gg: ATEYQzyp7ByRVfMc8C8eI8ZPj0XyMJMpIs7vfKvPnEn3RaL8t1IXKublrkOY+k3SgP9
	JUOMRq/nU8g18tZYFh8oqWeDHG+6rR2Y3vS0NiAVkxFLkNr7G2OhKSNLk1x+vKz4Rh/eFy8RZtE
	3onomcT7Shjie755lUb6aoBjTQENa+XalfYR8IGo8Ac1+KT2Im+JqvfIC7L2fjxLN6GhWIexMxl
	VQBlzrWH92cLXkXyk0eHq22gskhOjaiG0Eyibij0BD7XbPL5z/CEXAWJn5W91A8s5/4uzhospPM
	4bHFk56O2gMyQCSRq3TiO57wRPwVpFQUx/Up29XRnDVMxxj1Dko0mR8NmbQfVLZWEA6Zn9AuxtP
	lbW98AvRK7DH3xioTXPs4SG7bMlhcEBgyK7F/1q7J7/7FpSZOhszFqauv2cTphB7OAgMBrSKhZ6
	kPsgA=
X-Received: by 2002:a05:620a:3945:b0:896:ead2:a657 with SMTP id af79cd13be357-8cbc8d9542amr1415724485a.0.1772536472448;
        Tue, 03 Mar 2026 03:14:32 -0800 (PST)
X-Received: by 2002:a05:620a:3945:b0:896:ead2:a657 with SMTP id af79cd13be357-8cbc8d9542amr1415721585a.0.1772536472046;
        Tue, 03 Mar 2026 03:14:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935afe7d28sm564996566b.67.2026.03.03.03.14.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:14:31 -0800 (PST)
Message-ID: <578c485e-b7d3-4468-bece-efeb6db2b1e1@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 12:14:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
 <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4NiBTYWx0ZWRfX39Oledj7Wput
 4oUgD76ixsyhwCndqYaqtwZ9/Mo8zCHCUPnAcmYfuhSvKXqANxMR9bIg2WLZIsP1zm70pvMS9uE
 mPitzkyy+u6pqg921CaTJYi+nfQ/zLbKzJeIEdBcXEKVT1GhwBI+hj56vgOhECxzHmWgP9713sp
 QNfA0fFw3iyyvZGvlSORE/sLPdk6I+TGUAFWRXJWks7OPVisUqsujSm77K13byEr8rkxoA83xnB
 IjsTi63hT2Z47pMQ+9kWVNYZkbanhJ48cpZ07aRlqBOlJOXM3aBPbn2CmRKs122TA9gWGNoKgfr
 R/MJJKqN1lV1b9jYdtH4dD5VBJRhsXlDausJXZpB8qv0ip0ZYbOMewIX/dQMeMY4LxbQYT2qosp
 Kww5xPWBipvZSIO+gHG555RY1ZQHZFK0viuio7FjWVy2Ka9uM33S32LgeopOkfDe0SwOr0qkiHK
 Xh53E+KzHPAkEY2Yczg==
X-Authority-Analysis: v=2.4 cv=MuhfKmae c=1 sm=1 tr=0 ts=69a6c299 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=pnqVCfKAX2tXTj2rVogA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 1ErVCgUAFLmyJBk19SBRcly3PpSG3UNa
X-Proofpoint-GUID: 1ErVCgUAFLmyJBk19SBRcly3PpSG3UNa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_031435_251966_17FC1CCA 
X-CRM114-Status: GOOD (  25.88  )
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

On 3/2/26 11:21 AM, Qiang Yu wrote:
> On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
>> On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
>>> On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
>>>> On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
>>>>> The PCIe QMP PHYs on Glymur require stable reference voltage provided by
>>>>> refgen. The refgen itself requires two separate power supplies:
>>>>> vdda-refgen0p9 and vdda-refgen1p2.
>>>>>
>>>>> Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
>>>>
>>>> How does the driver matter for the bindings? If I add dedicated driver
>>>> for refgen, then I change the bindings?
>>>
>>> Yeah, I know that dt-bindings should describe hardware, not software. But
>>> what I meant to say is that the refgen is different from qref which is
>>> controlled via TCSR registers and its LDOs are requested to vote in
>>> tcsrcc driver. The refgen doesn't required register setting and it doesn't
>>> have dedicated driver, so we vote its LDOs in phy driver. I will avoid
>>> this statement in next version.
>>
>> I must admit, I could not find references to the refgen in any of Glymur
>> PCIe-related HPGs.
>>
>>>
>>>>
>>>> There is qcom,sc8280xp-refgen-regulator so why there cannot be
>>>> qcom,x1e-refgen-regulator?
>>>
>>> I think we can and it seems better because the refgen for pcie phy also
>>> supplies reference voltage to other modules like usb. But I checked the
>>> qcom-refgen-regulator.c, it contains some register settings and there is
>>> no LDOs voting. I'm not sure what does those register do, maybe Konrad
>>> can provide some backgroud.
>>
>> Those regs provide voting for refgen, because on those platforms DSI
>> block doesn't have a hardware vote for refgen.
> 
> Hi Konrad, Dmitry
> 
> I tried to model the reference voltage as a fixed regulator but the fixed
> regulator driver only supports a single vin-supply. However, the refgen
> block requires two separate power supplies (1.2V and 0.9V LDOs).
> 
> Would it be appropriate to modify the qcom-refgen-regulator.c driver to
> handle LDO voting for both the 1.2V and 0.9V supplies? In the regulator's
> enable/disable callbacks, we could vote for and unvote these two LDOs
> instead of performing register operations.

Wait, so you want to associate the MMIO-controlled refgen's driver with
a dummy regulator that takes 2 supplies? I didn't catch that part earlier,
that's not great..

Or do we actually have access to the MMIO of *this* refgen and can control
it (except we don't do that today because X Y Z)?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
