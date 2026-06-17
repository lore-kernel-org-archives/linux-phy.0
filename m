Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B85EBCD98E2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUTjcXnQYvUxyTe339G5Z0AQ18sXHJYAhezKA6YP8jA=; b=LPwRavujKKzQZT
	hHj13UMUELumKMLHyKJ46QVCFOTy/4bD2o9+ZIEDTtaFJCFU4i03fzQ5TLzf2MRQgM1IuC1PNPeEp
	vXZ+MpNUAjR86Zutx1FDxRnHnRQdx+MSb8e25rYz78amcyO4LbjEFsH+mkGDK55m0jZC8D7Jfk1Kj
	hKcfeqLa01tlh9wj9cdDEKBLDK9wBvuEXaIfgrXeys6pDetZWRgxIvShrEIyIq3D84Fkcbg6dQt9C
	5TZ8/jB+u+CToZypr7yH0cr3SoPhSSf1mBJPiWYfKixMYloBwdOQnEIKmB9GuTvEQ4PhTvg/6bBTz
	v+cOFQu9DbQ2gz4zvz6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpvt-0000000HOJz-28oR;
	Wed, 17 Jun 2026 13:03:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpvq-0000000HOJH-3Rfo
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 13:03:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65H8UFQ01735148
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 13:03:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+oNFtPh1I858ThMD4359ZKal6EprR4daQKZRbaXsDx8=; b=CfMnS92kg9tnBUtb
	X9V7iumsmtCnjURVwW1DcA/XTS6ej6Axea/Klb2bhVLcixe8nrGTkhrY4RAYVLVi
	pFM7xNxzOhfTWMTtdJKaguyNEpLX/w0wpsaoJ0vtKnQ1aE7LFZYCIPilBxNL3iqz
	8Mk8bRT44BQh2+gKNH0bIOzlgp68DvJ8tNlpTCzhEf/tNSWu9Nk9sw4JFoVDb9wN
	mgTal8O1G8xPSm0eM0+MBkwl63a/2udap/XBgk+kmQm4ddY3pQmaJqRg22/5IeAy
	T2ulnuUyAPmENfjLmwsPBK/n+TCb2S0AKUzFceeqTFvZg5wbSai3sedstuPu4HNL
	XOpfxw==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eueemk854-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 13:03:49 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7e5f56b8b91so2633534a34.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 06:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781701429; x=1782306229; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+oNFtPh1I858ThMD4359ZKal6EprR4daQKZRbaXsDx8=;
        b=S4I/LalNFj6/jFegAg1IAqcgxJjF+qpYH72E14EedTJ+E0JbFwxTKTVO8aFp/yP+nJ
         Xwg2qceWZleZXfkX4Ig4DUJGy/oIdZp6N+IC+pjy6sbkdVUcnBJwYVp5sC9I66BHdFpc
         ihzUIdKspuwzoAS1N/3RvbE6iL2t7oaGTYnifj8W1gr37mRtyZNMIvNeyRMO6c7laAIz
         BvO3gVlcfs1XqC7lzhkPcgwoynoFL5B+pHEllKF2maraYOcRbFW9f9bndlgOC3tEszVa
         155aGpXUdLSxhKr5rJ4GKMXPVFJA5KYeUVzjyU7TJWNZz4Gtz/38PGl47gkSlDfEMbyz
         oH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781701429; x=1782306229;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+oNFtPh1I858ThMD4359ZKal6EprR4daQKZRbaXsDx8=;
        b=qJNeFrmvUkRFAsOZxEzbFp3M4sATLjpixF4L+jSENwnc7QdPuAgwaeG7J3PDHuMoTp
         vdrk/K0OAa/xm4BSt94+KWjVMq9X40jsBL8LB9tiOSj9ivVAwb2iKb6mjaGxueS+TNcp
         oLfxFEvdOGkXi/ptLWWpkzqBqKTXX/imGusUEK8eaktRJdPbGPrGNGlc+JilWRF/J1r5
         H8UpURU/D7CWJvdfZFdg6kxwb14MKmDMGuh1n8hza9FawRiFVER1u/YTPk9xZSEs70O4
         s+Yvw1r+adoBQwrfI+xs3y0Z3wWKS9hKarg47e8RztPqNv4yRzIEhhoY02B1ypgibeEa
         I8Ow==
X-Forwarded-Encrypted: i=1; AFNElJ/2gUB7xUte1lkiDDC9o/M/dK5j9G2T3RjCbkgRc/1WyUfgzRFSSWEmGXpT3UkuCnDA08O7cjh6l8c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI6hbeFBZPSEY6WPlPpcwzVBcuJMHEwEKOO5wU8obn19bE0RLV
	Sa1AAU4ASkrGwxHOrga2P8sDKObxDvDfDt4js+NiRfI4eok4H3opZscSc7Qube2mArCFCr9Xwn3
	CZuCsilorY6hDDxrM7ArJXMVcU7mnb/MKqooCNdtZrPlpBJhMrP3DoDY/DxmDePNajbWk
X-Gm-Gg: Acq92OFt9kIEtur8usPCdRUcHW7KHRxuVqz6uWRPlxJD95wY/Eb6Qwc7oxql2T4viV0
	QPLdyITgbLdF7bdKaVL7BnLkMMONOKIuEDZV3jJZx8pdwDl0NKNQImZsRisKfDm5pOMgxBsXy7K
	MXB7fBWYJOEAscs18rpC7f+31mhC+ye11n8TiV5saG5BDvrQNP8fchMfPqvKrQxyIIWzv+EsA7N
	v3QZ2ovTRYz7oaBwrgXoMr+XxnFJzGuazRCRwMqiUTsHa0wL6eO+vT8HVGPi08aj1/9njzpXY7R
	qBfVCLo5J2poT2fOLToJzU9/kk4Xtgl1LbE2C0ufixHVyiyYh3cxsmDjlCw1SFRVA7TyASTGygP
	g6f1HSVwoJgiivIM2GVE5A60LomfAmhUEa+k=
X-Received: by 2002:a05:6830:67f4:b0:7e6:cbe3:cbbe with SMTP id 46e09a7af769-7e90b4841d8mr2219600a34.7.1781701428967;
        Wed, 17 Jun 2026 06:03:48 -0700 (PDT)
X-Received: by 2002:a05:6830:67f4:b0:7e6:cbe3:cbbe with SMTP id 46e09a7af769-7e90b4841d8mr2219518a34.7.1781701428207;
        Wed, 17 Jun 2026 06:03:48 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c063f9b2470sm75913666b.62.2026.06.17.06.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 06:03:47 -0700 (PDT)
Message-ID: <5ca49c34-d0c9-441a-a8d5-6a334b6be58a@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 15:03:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] phy: qcom-qusb2: Fix SM6115 init sequence
To: Iskren Chernev <me@iskren.info>, Konrad Dybcio <konradybcio@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
 <5b474af3-f651-4a64-a5b9-c18136e589eb@iskren.info>
 <a51b6333-cd5a-4a38-b748-b6623c6a1078@oss.qualcomm.com>
 <6fb6f805-aea1-47e7-bb7c-bc5ecb2201ae@iskren.info>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6fb6f805-aea1-47e7-bb7c-bc5ecb2201ae@iskren.info>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDEyNCBTYWx0ZWRfX3PuG2Dw/fIIQ
 /IJRjYcCGt+B8T+FWdonZd6PIEyEbZGjNVwcSf9o5tWc6xFWFqC0GgvDqcfcSZeQD+UDu+CPsAk
 H0kpZH3m7mVkGcu0WIRMtSi398dxgpQ=
X-Authority-Analysis: v=2.4 cv=D4d37PRj c=1 sm=1 tr=0 ts=6a329b35 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=H8nO66aeAAAA:8 a=sh5-wexBAAAA:20 a=EUspDBNiAAAA:8 a=9_hlcAaISHj5Px0iC68A:9
 a=QEXdDO2ut3YA:10 a=Z1Yy7GAxqfX1iEi80vsk:22 a=29nWO70QIcuf0NxZitda:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: fGyFGB5vTFLO6Aw_EvKWkb8Xgv7xz7H-
X-Proofpoint-ORIG-GUID: fGyFGB5vTFLO6Aw_EvKWkb8Xgv7xz7H-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDEyNCBTYWx0ZWRfX3Fjv1GHnniHL
 3/YdV7eR3AlO9ez0jCAs2H5TU2lGDFBwWZPSpprdsQmbFaSzdJNiG/jQCgBEmg/ifoBihTkJ4ag
 FTL+/MXHCeYR79zpxlR0RMak4ea0GVDd1BRP9kYyURpVn9lj3iTvB+O652kOxU5QdsXj7UC0q0s
 vnNlKZf2kVKqZYxAmZKkfg6hcbtJfvGZVyVkYxdGWFGPbaj3/DyDBiCIpAMNgKZGL4SDbEl8mlb
 znS3HCVO35qe310BsF9PefJjMoJCl/0vGqhJ1Xpb1dH50kyc2vRxAX7VayyNRkt8g2k1AFwwDp3
 35TY3vxACTpvY4S70kEcAigEGf1fC8YnMrd8F9Rd/pvdXX0XoKxX+lWyFPsiFWdO45XlCp9dU6B
 ikihOKwrJzGDp1aZA+3c/HK+rbob/0HLr7YTQmEnMlguuutfOYeLqlTkfjEPZUf8joEmugVzStM
 8LMNQSlOMfcRFBhcaUA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_01,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606170124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_060350_868311_2D93B132 
X-CRM114-Status: GOOD (  22.41  )
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

On 6/17/26 2:48 PM, Iskren Chernev wrote:
> 
> 
> On 6/15/26 1:44 PM, Konrad Dybcio wrote:
>> On 6/14/26 2:29 PM, Iskren Chernev wrote:
>>>
>>>
>>> On 6/10/26 3:04 PM, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> I don't know where the existing one came from, but it's apparently
>>>> wrong, according to both docs and a downstream DT [1]. Fix it up.
>>>
>>> They came from DTB extracted from a running billie2 (OnePlus Nord N100):
>>> [1] https://mainlining.dev/wp-content/uploads/2021/02/03_dtbdump_Qualcomm_Technologies_Inc._Bengal_SoC.dts
>>>
>>> The phone was bough early after launch, so it could have been wrong/updated later.
>>
>> Good to see you're still around!
>>
>> Looks like vendor tuning. I see that even the initial commit for
>> 6115 had the init sequence I posted. And the OnePlus sources have
>> what seems like a project-specific local copy of the DTSI:
>>
>> https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/qcom/bengal-usb.dtsi#L145
>> https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/20882/bengal-usb.dtsi#L148
>>
>> To support that, we should add a new property to override the TUNEx
>> registers - like e.g. qcom,hstx-trim-value that's already consumed
> 
> My 2 cents - I never understood why init sequences are taboo in mainline
> and widely used in downstream. I guess if it doesn't change (but across
> what and who decides) it should be in code, but if it's "tuning"
> - whatever that means, possibly depends on other components around, it
> should be "configurable" via DT.

The PHY has some electrical characteristics of its own, and then atop
that are the characteristics of what's on the other end of it. Making
all parameters configurable (i.e. raw init sequence) leads to duplication
and pure blob seqeuences, whereas making everything constant leads to
polluting the driver (if every device-specific seq was to be in C files)

I think the current model of "override as necessary" is OK, especially
since we can use the upstream leverage to require describing what the
altered parameters actually change

>> Would you like to look into that, or should I take this?
> 
> You can take it, the other option is to mark a TODO, and if somebody
> feels strongly about the binary value in a usb tune register s/he can
> take up the task.

Seems like OnePlus does.. actually, a number of vendors do. Sony
does/used to do some tuning there too.

> I just wanted to point out that the number didn't come from a random
> number generator (or AI).

I'm sorry if my language was too harsh. You used the best sources
you had and had no reason to believe they were not the expected values.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
