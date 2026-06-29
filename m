Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 834FBC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WEoYxI22KSZOozdMTkqZ/w7bVp+JEBD4NVyoWgzN04=; b=WOtb4ictBzCMjQ
	DFNOdcyzNTbch7sZIzzw1RqYhl6Byw7hnVCsE7S8/Vteyq6tp0G2ucmJCdmTflD8RCrr1MqWyqfF6
	dpVuEHpcwToj8wPTyUJ6jRhhylVDX/QQPSkom+q98270G0nXwVrd87zyzNXJsPhtK9yDobGRiwd1y
	XHp2ATnoenuOm41GWz/m4TNHGTi6xwnxaNPk8q0q3uIw+032M1dhzzyYBp/PLPhfJvgO1dwIxyCkn
	lYGnKzgnjQwfOEVXg1vgXkxObBn4hQGIyWjVznuvwihfEwyim9fV0k8HSrsB6zSg7XKhxP6pI/DL+
	udbelGl3GOpxasWJsoeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8Aa-0000000E9DL-19tP;
	Mon, 29 Jun 2026 09:20:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8AY-0000000E9D0-12S1
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:20:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T8xiUw2431986
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yPzczu+eMoK+AhKFw+6RWhjrnWJ3cdjMxPb/PrzxOiQ=; b=R6Uu/ihY3Y7pCEUg
	KNxOH4hXyZTmMaHQ0QofRm1CzoHB15YAgv1DEVn5BG23o34L3UmRnJFshdDsnyWm
	HgECAljnuSImwfRW4qZcWxsiqJ91wEXCoc3o9oyk3ueJo/RW9cwf+H6Op7V2C49e
	pWiq3FnyjtPckDje+Fr+KJg+e7KdBLEzH3BwDtcNbIKnIVaSyh88N8S3DA7rD71i
	Ay8mdPFuZZHIx7gBa9pf85UdOVVhl22vHZljQRR52RA9nnJKzaPAd4/d0pdwLiEk
	ZkT/AkLH8VqrAElG9Ysg5hz+O0pTmqMXzmFZCJnj/zuBamI+nmVGE+s0wkqytAgQ
	dXw1RA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3nper3bf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:20:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51bea07880dso3811741cf.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 02:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782724845; x=1783329645; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yPzczu+eMoK+AhKFw+6RWhjrnWJ3cdjMxPb/PrzxOiQ=;
        b=HQf/MGC8G8R2eH4BBGzolo7BQ+jFBXFOQpgG0GtDzXYERSYsRmtUt0mJpnwZZqD1/G
         Kw+0qMPyRElzx54B+lk/+wNQh0NZm5KjBaUQSZD8+bv4ntt+Gq8uzohbll20jLjNnZP/
         yfiux0Zc/H7nShUkKd+IrkujzYCpb6//Bb3JANh0GcvQJH3zTNj/IjVM1iXsT5GTVQNu
         RS4waAVSGNL2U6Srev+MuSK3VCEK7Ntdextq4KKkZhx6DYweabfhd0Z/ZW2rQXEGrCBX
         nBmdZnwkEnoI+5G1+r39kpK7Nbb3b9tvaEQm66nJ/XBZhgYMqV4XWfSLZ7em6QT0WcrD
         XXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782724845; x=1783329645;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yPzczu+eMoK+AhKFw+6RWhjrnWJ3cdjMxPb/PrzxOiQ=;
        b=LWJRA2rGNkozLV12PLbgBNw7dnkIkENTZY5xSoMnVhDpoTkZaM6e5/uhf4wuU7Qtzi
         03HxVOhXbXiw6hO34vt1ko6N4CX1RfwUZhxPt75HurooIi6Xcm/Oixp3Hpd4IytAOpiZ
         5lRf2aVqH7ddUAE4wxvirMSYb9Qr7yRRVgJjrDLEkFp/Ys9Wj0FlrZrdMi//VMPQzOQu
         cAp+FrDEGsEdBFJz8AJp46OktmJANgiLjZI7K3zadRTztgqkwLaq7B6F0gUSbSPm90hl
         EbkDT0OavEBQ0hoXFmq3/eS4RvUBH2URqqTH/vcz34rMSHv36EOXXlaw16C87HnwSaLf
         sZWg==
X-Forwarded-Encrypted: i=1; AFNElJ8xrtY6IbY/cBrlVlZVsTz3C7riHemoI2EGBvCH8/SVCkKyB7s/DcjHzMY2mF9BHZczCFftC7ZOYSw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7fT5Q27t9r2BzOFNHL3h6N9l/xPP56FAyYrf2nyjM+XqKxCWj
	/C3Tf1UXvozN/OrtZufNOGgfsPePWtoo/9Pjou9mtLw3sq9d5OBofuR+DzzVBrY+1z6pmAcSUFw
	2huK5L1cXdIB6swpOlfWl/Zxmf4SqpCFlv1N8cGlIEbwnaWVc+dKLwHhfXjzdE1/JlI4n
X-Gm-Gg: AfdE7cmT8uOub9eo5K/Y/BZLI751ZcpMcm5pV6+mGPXd2lO0Y5UVccxlm9klvw0krNd
	3tF7n+3s6x6xjIw+SqftgUEWHMh6vAFyOrswznFj+UOH+QSIDav+NqN5QUlPyiACTBwiuc5ZQZ9
	01bU/01tFusNGr6FKajM31wN31C3Cgoh9W5W6X+9Sf0nhGv1lY1xXUGlF+FnIhNxjj11LMsZl8W
	MLfo++5FjWCYs1dgSpjxrvL3pgL0mwwZfivcN8BoQt1JFsRumFleRkNUyifsuzwSapWr68KSBe/
	Eu6T0YFTkA73K62tEyjvU2V784D/O848nBQPzLHpQj8++uckCNW/+j0bXZZqvj2UfHjQHw01Ao5
	Po+zm4GXZw/r8aprhz0GVUl4Uk7cMsNkP8vQ=
X-Received: by 2002:ac8:7f13:0:b0:51a:8c9b:64a5 with SMTP id d75a77b69052e-51a8c9b9539mr87799181cf.9.1782724844509;
        Mon, 29 Jun 2026 02:20:44 -0700 (PDT)
X-Received: by 2002:ac8:7f13:0:b0:51a:8c9b:64a5 with SMTP id d75a77b69052e-51a8c9b9539mr87798951cf.9.1782724843963;
        Mon, 29 Jun 2026 02:20:43 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c11fbbaa46asm745789766b.10.2026.06.29.02.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 02:20:43 -0700 (PDT)
Message-ID: <c2f16272-94c2-4c28-85da-f9e8ca7027fe@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 11:20:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Add glymur-qmp-gen5x8-pcie-phy compatible
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-1-269cd73cc5d1@oss.qualcomm.com>
 <5dffdbe0-cbb9-429e-ba15-0afdf6f20fba@oss.qualcomm.com>
 <akH/N/ZwnSD5BkIj@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <akH/N/ZwnSD5BkIj@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX/I5U1paW0rDj
 In6DVkDJivTVzGc2WC0L6zHgTUYg5+raaFUqMPeoO7Y4SG/X9JrnyrULZWiHtzP/7KBa18Id21R
 qEZbCS5LHTzQYdqxXmd5Kc5oLg66ZtiMQzkYR3bRIwHnz4mW7BnP+iksCNw5H5rax3nRBeLymR+
 /odRKMSdLVbnid+h0+8kCC2hbfWHael4x1EBTnfYqeOmZaBpfc5J4BVw+hQgak6XC4x+YX55BjG
 uQnEhVkrIACkPe28hKr3Ba1A69JLfeO7MqxINnma6f/pxekQsWBpOYKvlEcmBhgwYh6WVpbRh/b
 NSXEMBG2e2I7V2Tkf1xTJxL3lYl6yBXqgnnj8Bh8dhB6ufHcN5S0sxG2elhjaJSD5grW11GCVv8
 Y6eMYIKwnE6MqRs6luMqauRXBsmsTa71QGkZppwqBRkm7J61Rk80awDWKC2LHk2vS6vHuX7Y90O
 7Y4pDY/8q2U6VNpfs5g==
X-Proofpoint-ORIG-GUID: tWoXp8Zui9JA7bKioo4fy9AXdf44fLy0
X-Authority-Analysis: v=2.4 cv=T6q8ifKQ c=1 sm=1 tr=0 ts=6a4238ed cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=p_8c1NbHuTntNjfAQcgA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX9xcG1/HRKqwA
 yERk5lC4WUGNM9zV5H8AjtrTr+jNji/Qh3yeZU3B1dQYfmndi3iiOgBXEv1i8xVrI5Sp/x7ZRvb
 VhANTjzkB3Nn/tNmmAvYFm4Vw0TVOcQ=
X-Proofpoint-GUID: tWoXp8Zui9JA7bKioo4fy9AXdf44fLy0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_022046_295163_A161FC58 
X-CRM114-Status: GOOD (  15.04  )
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

On 6/29/26 7:14 AM, Qiang Yu wrote:
> On Tue, Jun 16, 2026 at 04:03:39PM +0200, Konrad Dybcio wrote:
>> On 5/19/26 7:47 AM, Qiang Yu wrote:
>>> The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
>>> PCIe3a/PCIe3b controllers. This block supports two link modes:
>>>
>>> 1. x4+x4: two 4-lane PHY instances are exposed
>>> 2. x8: one 8-lane PHY instance is exposed
>>>
>>> Add qcom,glymur-qmp-gen5x8-pcie-phy as a multi-mode PHY compatible and
>>> document the new link-mode property, which selects the active link mode
>>> via a TCSR syscon register.
>>>
>>> Document the required clocks, resets, and power-domains for both PHY
>>> instances active in x8 mode. Use #phy-cells = <1> for this compatible,
>>> where the cell value is the PHY index within the active link mode.
>>>
>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> @@ -68,20 +69,29 @@ properties:
>>>        - const: ref
>>>        - enum: [rchng, refgen]
>>>        - const: pipe
>>> -      - const: pipediv2
>>> +      - enum: [pipediv2, phy_b_aux]
>>
>> I'm surprised to learn 3A doesnm'doesn't have a PIPE_DIV2 clk.. it does have
>> a non-div2 one though.
>>
>> Seems like it's specifically not the case on Hamoa and Makena, so perhaps
>> it's better for maintainability if the Glymur list was separate
>>
> Do you mean splitting Glymur out into a separate YAML file for the PCIe3
> PHY? I'll add a new file if that's preferred and Krzysztof is on board.

I believe that may be the better approach since Glymur seems to be an
outlier with the clocks I mentioned above.  Krzysztof?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
