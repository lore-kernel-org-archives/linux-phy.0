Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78609CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 08:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfNLEHxR3PscI86EtggscdqOlaAPHwjDMfr7JrVLUG4=; b=XgTLzNfE9girRj
	AZbvLrirZc3EeNWY6NJrrewLb3x4hmTgz122XiPkjWPr0PAyffNXp/7WVs8IItxwfDo6CC2HE9PNO
	ZF2FH1SF/fwbD0tq4EhYuRtG0Q5KIHQnHTYRR/2dBYy5LeaZNP3bCc3tJn6/SZH6vhISmJw0j/Av9
	YaA8aIG8dDU6CuPlgYEWq/0mmBnxC7uNoF02iVdtwlZGhzjyRxhlp/76c2F7hv6V2C46ln2QfAZg6
	/KsZ11Elhfgot+hRjSh8SRvAIKRAPsygesZaBT/RpBqU2htqOtciYvY7yfNUkSBj5O5c/RHw+Y6U7
	BHpKM5lowieXCucngj3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lR-0000000ANql-40cZ;
	Thu, 04 Sep 2025 08:56:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu547-0000000A7EJ-1EmW
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 08:11:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840pCij022320
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 08:11:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L7t4dwQgkA12CDBLO/H8GwQ2txzuPeZic7pjO4qLBo4=; b=PAyrJXufetwiSgVz
	uAdzS+qwhc3dwJknZKxoaGTAS+xCPuTAIIoVT2ZUmCGZD/mIlEkCe9snuoRBm53y
	/N0daTcncnqxhGRTJ0qDB1TfUMCyJXFooAVkLKE6X8stOnVO6MGvOvMP9vjcmuZA
	Z5+CTZQ5KNtG7+FDlSHessrX60NHta3TYynN+kcjyjTM/9UAiD/FxVURjzXGTPgW
	FxFYtRn/7iBHcXiZ+Qi5HW3wDSnrSRhcX4cNPcWJBd09kqLClpPabkkpMFuak1Xm
	xbHPuwTAaNlrmmB3LLoMz5G9Q4BXBPwM9nhtEj0CVOW1DhmP0mZO7qBJdomwTKZF
	vSGHBw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fpkrx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 08:11:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so1641721cf.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 01:11:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756973489; x=1757578289;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L7t4dwQgkA12CDBLO/H8GwQ2txzuPeZic7pjO4qLBo4=;
        b=afwf0wWa5OVUd1EMf7NyqNn30bPnP86IiPs0UyVp+dyTKOQusgyEEvLGKquoch/Cbo
         avTdhBpMiY5AOaqmldQviu3oZonwfJD6ogIKvxfIVF4sdNm589grsqjBTYipeZ3eIbW1
         Ncgas6eVOKpYQ1/iw5JEyxGq4nJ6Y0tqF8m5u+mmC/42ZU2YM4KMDtXARw9K3VmLfuGH
         qm6UBzB2p9eMyrqSVHypYwUIH1w1zBxgUnGX77UgdrhPpeSY8RjQzuxOPt/e2iltP5Rn
         GtsqN1QOxkIyXQayNOMXEeLxIR2zCDUB/Y8snNalckYHmFYpOHDCUah6fpttbfC+mVQB
         EcWA==
X-Forwarded-Encrypted: i=1; AJvYcCUClsXNPvMgRVyKZdBM6+3se/PWCoxCfFVSbSIFyYjsPahjE7DP6wndv5uFoxlyCME3sD3LKdZT9Qc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFZGKc2fxUhkO4FmA79lN9RjPUJH31cJox6K+RRTw1YlK/QmwK
	dz46C3tEyIaXc4mJTiIeq6wrVll6NCSoWt59EGEdkn3u3FTTvYH7cXI05uAEiHsKVk9ndiksnSc
	a474RVhDMlZU5QJby5k6/u6aydi9/em25KaTaCDBJjDsswP77rz06SpqnEe9hpgB2/mgH
X-Gm-Gg: ASbGncu33z1XSGsrSy1GXlOgHb1x+sbECPoAzF5mhUEmh0PVGruaccFZ+UpoqJcKe6W
	7Wso/5k925R0Jx+AJcdZtPj9c+kexZMu1DphGjEek1caSSRn6+vY2nKE9VZlLZk+Q3ea1UiJLhA
	EAsUWDrkpcji64pBT79wXzYVQhPeVIPNOGbrLifi5uJz5ZMc6z8LZWH431XU3fFpZYr6XSUrVPZ
	w9skn9bGaCgs+t19OJo172XqKQv9MGx2sa2GsDAUSZcY8S59zvULUlSJxdMqrSyL+X5FwpfBhfI
	jE49P1ggomjMwXe8AEho12jCEtsARUaqSFyDRDteQVUzCgt7CYP+BUcRRAldweahKiyDBZZoCfP
	LabZmZuCt0pKGzy5i+c1FXQ==
X-Received: by 2002:ac8:5d12:0:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4b313f0e6e7mr174090961cf.8.1756973489285;
        Thu, 04 Sep 2025 01:11:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETRY11wlgI/tWg0eDPS0dRUFiv1L7olBCrkOPdcF5xbIyJYVEuM11SwnRqh3KhtLOSUAXIXw==
X-Received: by 2002:ac8:5d12:0:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4b313f0e6e7mr174090681cf.8.1756973488627;
        Thu, 04 Sep 2025 01:11:28 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b041770913fsm1097170666b.107.2025.09.04.01.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 01:11:28 -0700 (PDT)
Message-ID: <1b92fe18-67bd-4fda-b7c2-952ed96aaa61@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 10:11:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
To: Rob Herring <robh@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
 <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
 <20250903235138.GA3348310-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903235138.GA3348310-robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX10kWWBB9FCSb
 XwAnsW7AdRvrMtWQ07TDztJzpbD3FVZDUIVeuq8vCLKtnRCb6fINtRazUgEXL3hm+vAtCnabSzs
 GPM/FZrYstPxJECUODyWEwikOfg8YbeCU8CWJSr17oVoUbZf9kSgDMsKtg4sC4XvGolE5ingp7s
 cwwN5QpksD0pafzl02QsT+yi69Xy5xFOZBfSsQk/6lEpKGsL0RBHSUJPjNAqyiFXuAcvjzzyZFx
 E1qpZGRsKJ4zPfmy3897DtfL38H7Hf9ezTZCHn6gGe9LX6nln3gpa6PZt7Dr3C4YwhF7W/bUUmj
 TPdoJD7LO24nmZ4TihkZLUbD57F8pSPZCGrDkh4urxcrp0Q8DvrdhGPQgBkmEWrJgqkw3RNr7Sa
 d9lcne1W
X-Proofpoint-ORIG-GUID: moN1zgYNs749MRWdheGUhY5g5OdOo9pv
X-Proofpoint-GUID: moN1zgYNs749MRWdheGUhY5g5OdOo9pv
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b949b2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=_W-1yxQpv4NGZoZ9-g4A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_011131_345691_8C371707 
X-CRM114-Status: GOOD (  14.20  )
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

On 9/4/25 1:51 AM, Rob Herring wrote:
> On Wed, Sep 03, 2025 at 03:37:25PM +0200, Konrad Dybcio wrote:
>> On 9/3/25 2:37 PM, Abel Vesa wrote:
>>> On X Elite platform, the eDP PHY uses one more clock called
>>> refclk. Add it to the schema.
>>>
>>> Cc: stable@vger.kernel.org # v6.10
>>> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>>>  1 file changed, 27 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
>>> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
>>> @@ -37,12 +37,15 @@ properties:
>>>        - description: PLL register block
>>>  
>>>    clocks:
>>> -    maxItems: 2
>>> +    minItems: 2
>>> +    maxItems: 3
>>>  
>>>    clock-names:
>>> +    minItems: 2
>>>      items:
>>>        - const: aux
>>>        - const: cfg_ahb
>>> +      - const: refclk
>>
>> "ref"?
> 
> Certainly more consistent with other QCom phy bindings.

That, and the name of a clock-names entry ending in 'clk' is simply
superfluous

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
