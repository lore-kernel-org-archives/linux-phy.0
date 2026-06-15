Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FA2CD98CF
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 19:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x44DR46GU09DPhPILDRhV/7T9n6XhTFLwSKghJyoRBk=; b=WiahevestFrGTt
	uzZKDm5CZCW6qRrIhbsYNXr7a4Ba5hwrgynrJkoh1fsHF16GqNpXi5AfXePdg/lC2lYc2JkZxzEiW
	hOSLOqtDu7ksKnQFXsLCfyn0zi2XjSximAFX/BDvbiWQogyS1lCllU53rfWcQ+Bmef8tcJJ/WdIeI
	I2vjN43OEArWDkjlMh/z/NpVzG7DlHnEvtSTBIF5/DHoNpmpRF36HCE5ip074kpjfsFbg6pr6CtKK
	dOvYjoyEqjuUVdDOyy14faL87rt7Umw9uS4yRnGSFaa8jWaCZTqjDnd0J7ZkE/sc+VQK/52mia7cL
	3yPMakbLaFLmKGM4/3xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZCa5-0000000ElHK-3uXa;
	Mon, 15 Jun 2026 19:02:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZCa3-0000000ElGu-3uqJ
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 19:02:45 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65FJ1VCK1220673
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 19:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LCIFI4ENSoLpkomFqMplNv8XY2zjIcdh+jKpROESdcI=; b=MXb6G1hN8qxZzW+u
	znsZ/w75fufoCLHLgjLOOblNrlx167+HjgU/JFD7gZujQhx8jVXMK6b0bKdnUd8J
	OhZzKxMP1Gi0PdMgGmTpMqF54XprE1aUk2xyZWYe6hqBpNzDiFYSou73NHZOZ7vG
	a21friFRpoekX3D60ysB5pgObieyosfot+1G8lQ0ke+J2NBAasM1GlAglWVVh3GI
	Tce8x1g+43BPvZ2Zn+NHb4PBfKF+IrFxEJfbQV7EK9KLkFS9pTx3CkYMN1qQC/pe
	zSapHwSLhnYKkqU2oevDgNOiiUGKKCXSrHO0MbOKB44rSeMPFWBgB/J311aw6/MC
	YldLOg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etevx2efe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 19:02:42 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-3075fa5a407so6779300eec.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 12:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781550161; x=1782154961; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LCIFI4ENSoLpkomFqMplNv8XY2zjIcdh+jKpROESdcI=;
        b=fipQ3ihcOT+Ix8TKzfdnAzm89zOyXtZT9e4006NpDk1dywf1Z/OP1aL1NwWfmZTDxE
         veJ+QD07sFjjDQeI9Ad3PByNtdE67q16TdMwIkTV8Jiouj+uqT0JGVFxxd8g1Y86ZvUT
         2orBQzlwO0Ve05fzEqvNxKaDLQ9L3Sny0JDpjIvEtm7pnAmW9EljNXxSSnP1mBYV1j6f
         fm7YoWHvrWmuJ7evcbYUOQSIq6kfxd4xdlUIQ1vvsDkhLJhtkmj+rw3dij7sewxxNFhe
         ThAJNEUGzi26+O79y2C0ztX/KiWc6/LKFzGtQweuOZ0ai8RM848ZM43KWj4YvnbY10gB
         jMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781550161; x=1782154961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LCIFI4ENSoLpkomFqMplNv8XY2zjIcdh+jKpROESdcI=;
        b=ZGnT7bpkuKyZ/aSjRcWxgJmE8PdKL11DC75VfLYv+zymSPwLeIAxvsAhjBnJD+ufz4
         9Qvoq6nO6xCLREsvmfLH/dpSwkVOTE+YLLeNNzKAgQihFTF3Fj3UaBeoqik7ICuCahtz
         ulSH/UZj4kWvT1/kNDIyuRdokfrVAWLGTkifiGeaE3Wi7gWkHoHoJ/2oU4ZX9frJFF90
         19Z39QZH3iATkpBws5oUQetOG0C+fDSEOAHW7YDwYWTX4LGEofhJTmaroQvhCQ+5F+ii
         MpjqwSyRUBq2VaR61/Fieb6ruTFytBGc+noTWSf6xesKkP2aQNy+zisQNzeyh55yoznv
         v6cQ==
X-Forwarded-Encrypted: i=1; AFNElJ8ZVFBNI+swwS67sCkKD1Ib8N/bTbrQ3w5fJYdMbs6DKpgh+OupEM+PU2OYG1xecLnikLmxE1AxNcU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6L9TH+XNjJ67ARXnHxFYBOs80PHMCjlNI8bAJlnwCYLnwsx1H
	9Tq5Z5ZbvOwfaUe1J3315KTFVdd0CzA6FYgieY9Bvg+VwMvFupdn8ihroOyZyLNoYbUvIPA7WIB
	2gmIw3ZsNGZj6bepGbW/oYUT5g8TWwj6FRn9uf3EVsrY7GwyGR2bnUDovB5ehwy56impccazcYf
	y8
X-Gm-Gg: Acq92OFhCaCfELOvdhwvaCGATVmCWdzkyHd1lx+3WoB4pbVoI+RJgG7josSLmtsSUYo
	kdmrUJ4pEyOO87X/g+dOc2YYJkCqdEbB6yYfHtwjrEPBxyHJ49w0bdnYTM8sK8ZRCXcn4wl1Rh1
	H8gBJwGji3sm3amtnH4rQj+DSWi4AmrJQDelVoQ7Rzr6peO4jYW3Iw/0WdtgBfGgcURCZyn2+QU
	bsfWuQ6V43OnVa/C60uZrwXYYdD8wsypN/V1eAFFi4jQXZ6mbRpOwI2f+1l2zY3bkQye8KHFFhm
	2oyp4YRLDvOvNtjnQk9KNSORqDvRBCksnR4+T7vi5PzW2q9Uxzi6M9K1gdk5PBNhDuK3XX/uoFL
	Gsr3npoNMmqnmlzplCjXcmOXpJP5PJ+7MCE9xpzQLvg6RTOw3lZyPWiF748/E0QTZaNSFTD+edc
	96Q0rFv8WGRdkp9g==
X-Received: by 2002:a05:7300:542:b0:304:d8cb:8413 with SMTP id 5a478bee46e88-30940075f68mr7135064eec.24.1781550160562;
        Mon, 15 Jun 2026 12:02:40 -0700 (PDT)
X-Received: by 2002:a05:7300:542:b0:304:d8cb:8413 with SMTP id 5a478bee46e88-30940075f68mr7135001eec.24.1781550159656;
        Mon, 15 Jun 2026 12:02:39 -0700 (PDT)
Received: from [192.168.1.7] ([122.177.240.180])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081e920243sm16062283eec.18.2026.06.15.12.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 12:02:39 -0700 (PDT)
Message-ID: <9569b594-a4b8-4e67-ac61-5eb2914bfc76@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 00:32:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qcs615-qmp-usb3-dp-phy: Add
 support for Shikra
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
 <20260526184401.3959717-3-pratham.pratap@oss.qualcomm.com>
 <20260527-lucky-porcelain-bullfrog-185f1d@quoll>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260527-lucky-porcelain-bullfrog-185f1d@quoll>
X-Proofpoint-ORIG-GUID: _7y7e3GBiJ8C9cdMlIDwjQpS8WMhFQwS
X-Proofpoint-GUID: _7y7e3GBiJ8C9cdMlIDwjQpS8WMhFQwS
X-Authority-Analysis: v=2.4 cv=f8t4wuyM c=1 sm=1 tr=0 ts=6a304c52 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=6oJ3Pe8WsobediNJCW6FeQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Uytp2g_U9kgvtl5AwR0A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDIwMSBTYWx0ZWRfXzq/J6MTMOJ4+
 YV8q90B3hAJrjziwt/j5JkloiXgUSu1gvyH18KbqZ8uc1I499tOtrIPsCqwqzA4EXIJ6vuLeoLn
 ZEb96ZYFbjVAMeJKNBsUZ9cZ/XM8LBs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDIwMSBTYWx0ZWRfX6nriXf5530+g
 r7tDm2+N3+y2ZeP560VYsB966luYUlEC8ehix00kz0wOwYXCQxhPcTesLAR5a+AHBmIoYUGQj8G
 bInSnMy2IX5+gEZSKyw9Tyk8+cdQ5MxBzYU5+CgTFz7R7Ec7/UmIc0C15zEdVG/JAhX2JNhH0gm
 ZF9iPohuoYu3zgtKz5v7KntHO6z9QEmCoWZGO09fhAKwv5asZvIzvJlVq1L9y3WCXsl0O7z9eXx
 TU/RvWezMeQY6eZaQIx90sYADHWRzC0O1TB4fh9MPClXgPnMk9t7E14XPDbQ2LMuuw6x6nJWbCW
 caI1WfuAAILguWvH2TA34AhtaT6CUzUsjCH2PH9wadV+2NBkk1WtKc22pt4UfI2U+i/vBty4ejg
 eJ39rE9U3tQkDCaZv7MePmUG8iMivh6RXK2Tqy+OmVjsTmL4klPKBv8Un6mlYT9pDkUOLKc0cuk
 PVQqd4qF1pTvKHz7Mrg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_05,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606150201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_120244_104421_21BC3C04 
X-CRM114-Status: GOOD (  19.85  )
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



On 5/27/2026 3:16 PM, Krzysztof Kozlowski wrote:
> On Wed, May 27, 2026 at 12:13:59AM +0530, Pratham Pratap wrote:
>> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>
>> Declare the USB QMP Phy present on Shikra SoC. On this SoC, although
>> there are DP registers, the required internal pins have been removed
>> and hence DP wouldn't be operational.
>>
>> Shikra needs 3 resets (dp/ phy/ phy_phy) to be asserted and de-asserted
>> as per hardware recommendation. Extend the bindings to accommodate the
>> additional reset.
>>
>> Use QCS615 as a fallback since the software interface is compatible with
>> Shikra.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
>> ---
>>   .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml    | 13 ++++++++++---
>>   1 file changed, 10 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> index efb465c71c1b..65ae4c6e09db 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> @@ -16,8 +16,12 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,qcs615-qmp-usb3-dp-phy
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,shikra-qmp-usb3-dp-phy
>> +          - const: qcom,qcs615-qmp-usb3-dp-phy
>> +      - const: qcom,qcs615-qmp-usb3-dp-phy
>>   
>>     reg:
>>       maxItems: 1
>> @@ -33,12 +37,15 @@ properties:
>>         - const: pipe
>>   
>>     resets:
>> -    maxItems: 2
>> +    minItems: 2
>> +    maxItems: 3
> 
> So QCS615 has three resets now? This needs to be explained in the commit
> msg. Or fixed with constraints, see writing bindings.
> 

Ok, will separate out for Shikra and keep only two for Talos.

>>   
>>     reset-names:
>> +    minItems: 2
>>       items:
>>         - const: phy_phy
>>         - const: dp_phy
>> +      - const: phy
> 
> Not phy_phy_phy? Joking aside, you already have a phy - "phy_phy" - so
> this is not correct name. I don't know what is the correct name, though.
> Please consult device manual.
> 
The resets needed on Shikra are:

GCC_USB3PHY_PHY_PRIM_SP0_BCR
GCC_USB3_DP_PHY_PRIM_BCR
GCC_USB3_PHY_PRIM_SP0_BCR

Hence named the third one as "phy".

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
