Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F45FCF6C15
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 08:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brK09eXk5XqmDerRP+MMMzMl9Q9xcy5hgVhqnC9weRo=; b=ot8kVDCwOcPF1q
	S5MILSRlquVmeMbZpfzKrQ6wdPrqTY1tiVFIUbKXNjwLIxh1eDkKZ7XJw4DwSXrWcO83Vc5HJRdCk
	J8S6Z1gZwQjVIen1VrRGTTtQkfl8r1pDtsHXVFjXpS8wFB8QsDS+UcECP8f5mnn7zmQNdrFMPyVBa
	LxGPC5DKsXfFDkuvJfxgL/N5PohbS4RSY6t0Ec2atfjN69K0Jt83JoRbpxFvInxmJofGLxIKOLlbA
	fY016riEdX7A0mvKDPBYjSOc5KcbDjqHF8LnXbnfO+JJ30bev9Ym0Hf4VMznpc716xxwAtD+VUprR
	XRampOVfX8WsAYtUr7rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlAS-0000000GFPO-0k6L;
	Thu, 08 Jan 2026 08:14:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlAO-0000000GFOV-44um
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 08:14:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607NVbWw2239380
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 08:14:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oQmhOR5VTllw1N6UBG/MNA865KDu2tZfzbbQxCoVIro=; b=JCctxsx65nGfdt5N
	8d424nzFqNmB51Avo9nTyZU0jhQVUC3Z/IezpaNMldfmQmHtP4FNnPUoqt9L8Hhd
	Knl8Js3GVjVBSVeJ7WTgwy5B8unDC64gRVWM/T34sqfja+aOJM8/ukCCn+zY0BPG
	p+vyrDJRSAfSE4Oj6EKu3AodtQP8VS49c7txrwfRwu+X3MH/VjZLoxZFN1SCQ4ZU
	65j+p3GWwwiod5UDkN3WO+TBUP4EL52fQMFCSG8Nxamp81vhIZOYDL79Tl2w16/Y
	SxSh7565EUxZbCUtWZNdj+lheOAfg7nwQZ/g4Y1ZWs07n7rwDoy9My5tfFfAo9rv
	5eAC0Q==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg36qs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 08:14:47 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ae26a77b76so2501199eec.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 00:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767860087; x=1768464887; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oQmhOR5VTllw1N6UBG/MNA865KDu2tZfzbbQxCoVIro=;
        b=DGYKQw+R+e1oICgibCN0j8l9mQJvhWPcx2aS8lz4GR8G6KeXdjUBl3fEDvR21ggaR+
         4D0XQrqyHjmuo7AR6hWHN0g3cVTm48a/Tz3P14m1tOOUcOUcF5DJd/5RL7j5gWlOiPgd
         rQps8A5U49mEjhbValb3pJ4lAdxVZOBHFtrZ+90q7CKZngLOIJuGsM4MzVHoW+niK9AO
         0TrPf/BP63xxP651g/zrdS1CZ5y2rSdzWfuDvOpGL88cbNh+0Zr4fk+87GNXkKYwEcDN
         DTC0yQhVmZDPfzOURC05LOTB9s/6uneC5klOdw/o/tuemt3sGeEFBI68mU+j+Qa77XzS
         uf3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767860087; x=1768464887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oQmhOR5VTllw1N6UBG/MNA865KDu2tZfzbbQxCoVIro=;
        b=StV6Bj/diP2tvwqC661V4BqwqjlLr85fXIG1XWE95mpCrr8C4V4P/vczY+hbG8qD8g
         rx+0jwRPeYxvRA3BCJAKgVhAzoUfzkpISgXcvnVLbUGORL5DOm5YKKN37Wq1TAzkqB1t
         hEghJQee73F21igjzzxQMAizeZrfNfuj8knMqu25Fp+5hXYJdqj3zizhMzrwby3GzPF6
         aeyaQtnOUzFxE+S8+NgGTDsnN/5H1SME/7Om20ueCzPHKnMXv/SrMywAlh7AX8AySgTu
         1BnVcEWz6Jwt9JpXx2nKjXKH/ifnNtA+Qrmmj+bXkf4l3XkqyB/EH/m+ycyDX62AkefS
         RtmA==
X-Forwarded-Encrypted: i=1; AJvYcCWHVKCo/fLZDRHqRnZNLKy0zJje9ixFTQKZ0pDmmKX5C7Cpjx2Fs84NZg0n/LUf1sSd+WE2p2tN7uc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbC6FWV/BuzylzDvEh3FHY3Bp6ByOzoV46c7oTYf6ZYqvS6BTs
	THcHQTqtow+VyfIG26U+PqlDZuHLkTI2da2l7/t1JAHuQ4bwHQ3KKgYM7Pbpoo/QDjIA7CBP3tW
	Cgae+Q+qlxM2HRSNQLbF98J9r7GXuFts1sbNrojemR3TbuH2NPr5aNPzu4VlN1/S/JJ7x
X-Gm-Gg: AY/fxX6xEEx/AssMM1drGYQT1lOjfG0Csjghqmuisbeq5d4fAWanuMf0e/Ya7fjcEJa
	Jb7rk7iJJQ158yc9qF2iHO972tgtZYrqXUhpG/J6wlh2hCmua7NsQczMvb1Rh1tPTw2Fo5rUBu1
	7AKmS4D/+o1vnuQu41Z/8tCcDXO27Kj4tzVj7npA/i9B0G/ocer9mAIsuANWEniO5XTA2LrGBTV
	+C02ulHD5hyS+kZf+PccD1MpzX9TRlLbMzCzCVkKgTNw1JVVIgaekFFSfoRY5Xqg68ItNpvZ/DN
	6ACa/TOWe/KVs9ep0E7C6NjnoBAE4kmM2qmi3b+w1ceZI3wUuQaNhhHZuOMRHQVvxGxCtqQZlIg
	jOILKgG3hZ4cRLyegLlrfklKVxlljy6cfK/PbS68meOyJLw==
X-Received: by 2002:a05:7300:2286:b0:2ae:5092:935 with SMTP id 5a478bee46e88-2b17d2cb04emr2879936eec.35.1767860086780;
        Thu, 08 Jan 2026 00:14:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMZz5/2sK2+1cn1w1LMbXfHAiGxF+jIuIHMhcw3bspcPT2dvGLJ3N7V2r7bE8lhoxii9SUSg==
X-Received: by 2002:a05:7300:2286:b0:2ae:5092:935 with SMTP id 5a478bee46e88-2b17d2cb04emr2879922eec.35.1767860086169;
        Thu, 08 Jan 2026 00:14:46 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b17078cddasm8379618eec.22.2026.01.08.00.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 00:14:45 -0800 (PST)
Message-ID: <027842d4-cb5e-4f89-b7fe-345d68b68d55@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 13:44:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
 <20260108-congenial-bonobo-of-lightning-5ceaec@quoll>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260108-congenial-bonobo-of-lightning-5ceaec@quoll>
X-Proofpoint-GUID: 520_wmaeBdxszYMna2ltm13r6OToUm3w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1NSBTYWx0ZWRfXzhRHPF0LXASz
 LL/X1JX12xP5khxlg1HKoxUxJA+Bbaee70CFIKp64Ht9fTl0RBVEss4BMcAL5mxlTI7YFl72Wkd
 bBIiwGnAnz+CXJZzz575cRwpfBz4K43MM2XhRdWD77HiJCLtcyCooOKW+8QMRN3FsH1GJbgcOz5
 Qx6jbFm/ek4yNnQu9w7FSBUVlmrAoAkfeE2ds57FFOkri7ExY1r09D8z7yyhePfIpLZUBMPO/Xx
 Vu0WBS5rVQ4AD9qxQOGMjon6EKCseRE01Q5wO5CtNMLnr0RhhQkFRw41uG6lkvltTwQZvtyWkwr
 KqjpqfJ3bN1fezoQkceQ9L/NLewcBrA+ZOzDF24SJ9WT1hrJ1CzvBXPZVoeT6huKR3eeGqQNm++
 GEQpf+PGlsK8pazRwE8lrIY57CLRgU7kQlQTdtIS3aUQgT5fcrjkXvuBAT2ABwNYVyh2DpA9C8P
 7upB2pZq2gvrI3G8gLQ==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695f6777 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=I_mDRuPlVTlm_7miLhAA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: 520_wmaeBdxszYMna2ltm13r6OToUm3w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_001449_151672_A6374C59 
X-CRM114-Status: GOOD (  15.80  )
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



On 1/8/2026 1:40 PM, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 10:54:59AM +0530, Krishna Kurapati wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
>> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
>> Kaanapali with that on the SM8750.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index 409803874c97..cd6b84213a7c 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -19,6 +19,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - qcom,glymur-m31-eusb2-phy
>> +              - qcom,kaanapali-m31-eusb2-phy
> 
> Huh? So you did not add new compatible? It's exactly the same code, so
> the tag should have stayed. Really, do not overcomplicate things. There
> is no need to poke people on multiple channels to ask them if EXACTLY
> same patch retains the tag. It is already explained in submitting
> patches.
> 
> Keep the previous ack.
> 

Sure, will send v4 retaining the ACK.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
