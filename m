Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE1EC5DF66
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 12:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtiiW+TQu811wPkWEog5/v/XtaqU+mNbeGxvDp7+2o0=; b=chZZHe0Od4tt/J
	ZIolKk05efRXBf9z5oT4SZNOeVwog1fr3bj1K4EsasAxXKoZMr5YhMIYkTZdhx/BqfI6zm/bRc8Pp
	N65/CNJeSsGJQVnhS4bbMHWb/yn52z8Gwxl9Cq7ISHErKhOZDntStSm7IXQnNVyo/m1QU+apAPWeS
	biXApVmIsNuLqaKk87h0I6kvALYdi5JKKPbeQWFWUmLJp500eudmgYCzVzTf8wfOMTPwFtBvBXjKk
	YVYejjvESfPRjLGHtvgYiTmBizWaJud2PeJ8mu/UZx+anIippxbhp2lOnwWQub/DPVqsYaMQ5s6gL
	2VdTUV5A/kG4kaSX/nJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwcA-000000068YD-2UBQ;
	Mon, 17 Aug 2026 12:38:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwc8-000000068Xn-3mPS
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 12:38:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67HCAAXi1871640
	for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 12:38:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zzZHJBJkIIxfrqdLYm/z/DMmA8vst/cUsQ96Y/1xjDg=; b=EJho7w71vafwzMhR
	3ArrlxASDAsklAfAiIfKUsgBzQ8g7XpcZ9bmPNijpyDquj5IOGQAbWFdHwcQQaCb
	NxxIsaF+m/49zxIptgMlYU3N1Bqs0Dm9dZ/+2LIrLMCqYpdJC0LKnURdBZbIde8l
	pfYnMgeF1jTeUPjyBrLUGjIBB5D0AL2EbR+A5IUA8UKfI5jqayfwp85Vb8vwiRWb
	BVeWK1+AKyNBYwrVTXMFji4fiz7TQ9m5N05umRocXHRAdn0/IWEdMkEGeuZ11+vF
	SkLlaC3c4EpdE093hNSoQvpfDMYh+lDjIW8pdHTlCPmiVsPcgbfSlB7SyezZiLhM
	1g/4xw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g3xb1h0sp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 12:38:52 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c9d953b71so3317011cf.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 05:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786970331; x=1787575131; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zzZHJBJkIIxfrqdLYm/z/DMmA8vst/cUsQ96Y/1xjDg=;
        b=B4yYTbL1dHfBgXrjIj8x7O8PIYnLeEebMz9qJrpQP6ntrGsdRFFZbi+MUEoj4EFXRQ
         DM0c0+KrZ1rolgxvocsaDACkAxb0tJ0oArmxxS0y86btDmp2koRbloZQMToo8MGlufmq
         35vqCKrpV6zLblojGUgRnl3o69l1OTu2IBqBlo6U6dWAM3OIhN2pr7fehW9bY+2oi04y
         zbfM8LuvYZNVhsHNCk24q8wrZ8tcWWfXK6svOiKOEnoANkZl5u+SF3qH9qZhLHCBjhZh
         n0RueTSm1QJ36UQAgrVHcWWUuHVflrip+qzFWJxGMXqqQdK4/qKqlwEOwwpgTire44mR
         SFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786970331; x=1787575131;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zzZHJBJkIIxfrqdLYm/z/DMmA8vst/cUsQ96Y/1xjDg=;
        b=G9WEE4bC8D+kXuweBmXlsJAKmJz0i471Y6YgfnTFw+7gt8EBqi69Mts7aL7ayYKjZl
         eX1NCMMva2pyjGwDQUJLVrd4ey1Ma8prp+xW8R67IVPZG3IRZof40VFDAABQ7r2urOmp
         VFk1KQYLsrOKxo3KrxIjirwZQFkVneJQ1ClQq4efktJPr6vPl4l7ImIsdvRnqMGTqtGM
         Q45JwtZOkj5ZNsgW+F39sqH+ACwkl/PuEbx2eIkC7M0eHf0cz5bU3ZcqKVmI5l+nXAb0
         1A5kHt5/6m3xMqaT4hiEADiI3PKlP+E9WICFPbcKxFSOZwy43aagXe3qmEokZV0e/QgU
         XtUQ==
X-Forwarded-Encrypted: i=1; AHgh+RpBv8L5gTc2+wRkiY04ii7VkI3yaTy2ITC40oIwR7ku1TY0PQ2ky/78wp3k1GizeaaxnG1DyuHF2XE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzoibC1tn+NoOJ4KqtK3C9LnAbWFp/k2JGWVfTSH+XXHO94FoOM
	kmbTtiaoguJXyrX9z67ynN3nkz+yZ2KqWn1thTppzk/D8/+6WlUL3Fo3ZMITiiWTtfapP4t7tKA
	Ov+iuBaRBAf74uFLTOri8qUQK3XBoPoUZZqv+NgSTV+mEXyGzCisETiJUrTj3Ecs4Nia7
X-Gm-Gg: AR+sD10z2s/oYu6BhEoxPt6nw/dvtgf1rfMB1b5EkFfSH5LTRGDIVbyBKqS/ttcg8Wh
	a7adabt/Y8jEzU7yE6kohYtwB5BoKtxMyJl1VNRBHhL/BVvz7XrFzC/ZcCTvrhXP/cCLBEIg4hh
	kZqI8W6p+PIES3+7DfZDagsmrc/kR2rq8H1iJowXSbtUBqLIQED1ibZJgYhdL5v4LFzQ6woMzFD
	TH+69Ww3MTgK3igidp/8i5CwD2E5tVI1ZwtAAD8ziI6GAUPDuWrTTC7tV0alrV8QiM2jt6L+94E
	L+ALUu8Qapu8Wy49hvnAtY3aI/Cw4uA1F8nA1lx7K0hLo6l0AV2e6HUCZGWUDWqFNlVs0ysrH3X
	ehPUtFtcFIZIpnybYOohnuzKj
X-Received: by 2002:ac8:58c9:0:b0:51c:10e9:ec47 with SMTP id d75a77b69052e-52d85529b51mr185899141cf.5.1786970331287;
        Mon, 17 Aug 2026 05:38:51 -0700 (PDT)
X-Received: by 2002:ac8:58c9:0:b0:51c:10e9:ec47 with SMTP id d75a77b69052e-52d85529b51mr185898611cf.5.1786970330791;
        Mon, 17 Aug 2026 05:38:50 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a16b1bcdd7sm4280841fa.33.2026.08.17.05.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2026 05:38:49 -0700 (PDT)
Message-ID: <f13b0be6-bc1f-4024-9881-59f522566f64@oss.qualcomm.com>
Date: Mon, 17 Aug 2026 14:38:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm IPQ5332
 UNIPHY USB Super-speed PHY
To: Krzysztof Kozlowski <krzk@kernel.org>,
        George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
 <20260813-alluring-advanced-jackalope-55e5c1@quoll>
 <SN7PR19MB67369ED27F676F6197A0727A9DDB2@SN7PR19MB6736.namprd19.prod.outlook.com>
 <71cfe76b-ea84-47f8-9ff7-945d69efbdcd@kernel.org>
 <34503ae2-9c89-4773-af80-fa7b7439ff23@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <34503ae2-9c89-4773-af80-fa7b7439ff23@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ua9hjqSN c=1 sm=1 tr=0 ts=6a8300dc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=UszWgs0Efp_EzN_vPCIA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: Lv1x7DJkIa7dwqjbseA3OiZB8rHeV4uY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE3MDA5NiBTYWx0ZWRfX2BvNmdDza4ig
 RAIXG8IcBm7Hwso1+MiHhxMAEVs2EEnsMQ5ZbWsujyCcqNtkvhg3+aR047U3vfPCk09WtgehokR
 88OXtaXYOrGBdbarPFC5z/iZHICJyexxW8JyLhdtQ7IJk7x325ISPY8NWzFTRTc+J9ZT0R5H5U+
 w66Ldfahla4W5truupjyZFrd7x3RSSaYpxSs9XauehdMsGmtEJhiuZfifJ3nsns17JM4iKK/N4a
 6Ir5mvyPwJZDkBxroqqVnspM1RyBSnUGeqZ7ZaOjNZqL4QkTTj2bgt4Hba5Fzhwipkv4Z25RNN0
 /29yf3W97kugYQxGWu1JuKk7VTNLZxE2Y3iNYjFs6e2f8s3Wjz9j2BHT44QmlDYKdszW/SdkQ3M
 vlbWSdoSjppGQ+Am5OBNv1W0gkr6anR3ShXnxQjv8Q3MOFs1/yO5IbLEg2FQvs4nHNt4nNxoB/v
 VSpTUxnwWNA1BgTpMBA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE3MDA5NiBTYWx0ZWRfX2zVjRwCv8Ms0
 FMZKzpq2Bf8VabBmyg2igKSMkOABtFPPoaGX3WJhsXNhcS4x8Cqb9B9sNInNg2TNgC84aXacYUQ
 SViUPa5IhLfaP733aaRCptke9Qfoi6Q=
X-Proofpoint-ORIG-GUID: Lv1x7DJkIa7dwqjbseA3OiZB8rHeV4uY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608170096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_053852_972771_5823FC23 
X-CRM114-Status: GOOD (  10.86  )
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

On 8/17/26 2:37 PM, Konrad Dybcio wrote:
> On 8/13/26 12:48 PM, Krzysztof Kozlowski wrote:
>> On 13/08/2026 12:28, George Moussalem wrote:
>>>>> +examples:
>>>>> +  - |
>>>>> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
>>>>> +
>>>>> +    phy@4b0000 {
>>>>> +        compatible = "qcom,ipq5332-uniphy-usb-ss-phy";
>>>>> +        reg = <0x4b0000 0x800>;
>>>>
>>>> That is the same address as PCI PHY, so you have one device, not two.
>>>
>>> yes, AFAIK they're separate PHYs (pcie-28lp vs usb-ss-22ull) sharing the
>>> same MMIO register space in IPQ5332. To enable USB3, the compatible
>>> string, clocks, resets, and related USB3 properties override the PCIe
>>> properties. In IPQ5018, the PHYs have different register address spaces,
>>> hence representing it as a new devicetree node.
>>>
>>
>> Same MMIO space is same device, IMO, especially that you have the same
>> registers (looking at the driver).
> 
> It's indeed one device, fittingly named "PCIE+USB COMBO PHY"

so the implementation, matching prior art for similar cases should be:

- phy node with #phy-cells = <1>
- consumer takes a reference through phys = <&phy FOO_PCIE> or FOO_USB3
- new driver in drivers/phy/qualcomm to coordinate the two modes

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
