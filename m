Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F49D10ED656
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 10:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=np+YljIXjMH2nHnDCRowxjPDYMek82b1Wb/ipH7LFJI=; b=TFZf3AwIkEXgGt
	RxrVYqP5y+2YF29cy4VYbq+BbOIcPMYC0nfHYjMCTJp0k0gjgblf090lUUH6wnHMf//iihfYkb9tj
	zAZGufG6nPbOaPSnu8p3N2o5Rfs18niKlIF/KIqkmLnbGkx+t0s/7gbo6NwLKgJq7BtoYJTqzYmgn
	+p/CqIGiM4ZHhwD2NBGkZh9bJ+N63T+NIG2XJbgSos3mXrTb4xwXVeDFzPwy+Lp+sDHzBP3Ue4kDn
	roq0PhyDjMkhzTZREyoYbrT2cdl7i7C4FejTfyIW3+8gcwwrZp8nHHMm6Mn0xA7URsqQKkGfh4dfd
	sodYTjCjQEHcu9uXsFdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w64HX-0000000796y-0urh;
	Fri, 27 Mar 2026 10:19:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w64HU-0000000796J-1e4J
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 10:19:09 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R6vwqb298714
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rQYr3AYKQwuRgXI9rkkXjVvvYljG41TZ7dhq0zRFpaQ=; b=F5jsLVqjeA8iQBfQ
	ADJGtH6UsyVMYJ056GyPDw2sGvOdbEpFgSSk+wqbAsCPV4qBzpWz5lliwQPPl7Ht
	crZU2SAi5T+uZbHyECEEuZ3algyGBN4GhoTEmMZvJV6OBHPwokpukVV+BNQi0D3R
	c66l7H6JQGzysN/xJIx9I9PupopDFK3JCvW+blt2yjTaSdngOZeRnyNVFflLf5Zp
	4XO+va5jR0FjOuRCjTr/U0eDeeYMpG4YjM+WDS893GygArnneiA2AGpjlX6WavXk
	SdmDgAXmVfyJS738mbqIZDB2WDhVtfKOGE7OSF8UpXCvHD+hH4SFyNUN0k9fGtOz
	BHmLig==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5bd8tn45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:19:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50947db2e97so5941731cf.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 03:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774606746; x=1775211546; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rQYr3AYKQwuRgXI9rkkXjVvvYljG41TZ7dhq0zRFpaQ=;
        b=VB6/aeaZDC9rjBXNfa5wJWsdeQTROlSyUaYys8TtRipNoS1kFYoVcUL+/eSDVX7Lcu
         iSB1/UMvMbyGJoeFAl9kFUFwA/5T0rYuTH0uwjdql+6pWpt3shz4E5rWFSAoXVtLMab/
         2fA6G3tvOfvVpfUVV34cA3L8n24eBlu6H89/Yu0J7Sa944OJoRfLq8jwJYxeDLY7V4gF
         Bc/b+6nPJYrbORFGH48awucHBDNdFVslleE0yraWtAW70wOoqhsgwt7sLNmiUDNjntdP
         4L4E0WvfU73uW1vXmSLaJLl4rsrgDij4ewSZRQ8bz9nV0XfqEBrosNKYoa0Ww53mCO0R
         guMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774606746; x=1775211546;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQYr3AYKQwuRgXI9rkkXjVvvYljG41TZ7dhq0zRFpaQ=;
        b=EvUyqEcgYHZoGCVaoCTnDCT8IQXZKclhFzOYBDcirDfA9ZPlstSNeUvBJrUhNxIeUQ
         WEbf9utuKjjfXxdrFO6RJSah8zpMKaeokg+kIzDAanW36+aLIrNU14f6jjaXwK16VHU6
         Yxh6X1xbsAYPzmvdRYbTKO7qLuP5T1LrC7X3ERjgdPgesFg8WrC2EC5gDiVsu818gTev
         sLQFVrV6IvzT3jG4TolVUptyXZD/8uKk0RfgY1XxIjHPrCi7P/USynx2EaBQuC9jCrh+
         40L7YWuxnByhP4ex4HmW6aUGEmwWkrj4Tjgs1U2yB+7l57RdyB4LHMHhckJc0uFa850I
         bjjA==
X-Forwarded-Encrypted: i=1; AJvYcCX9krYRpwFgFeOFiojwd9VElCgIE+E72FxYGgp3F+zroC/wIZ/iySd1L9dQDIvfSJKaylCGWO9jxII=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7M1n0oByxK7g4k7lhBmOYM+6WKIE9NM5Pwvhp3jUL+Wdj1m/P
	JMWcNx6GW2WoI2Tck4Zk7nAmUHVCMGWJ4sC6OqFDLCj8IghveBq3PtKNmwht58mYhKvKEZPztZ8
	+iF38onA2JQk0DFebbr2JTSN6GLXui7M1IRYqocu8X9TE13U5cVV4aBiiSBzPxfe0eRlt
X-Gm-Gg: ATEYQzwBfo6B9k154SRdWX9zXeIRRLzQmX1bYfnRnCjkv99x4K+Yh9O/mKvT7OjOnTO
	w/jPi+N6gb0vLwvYp2wYJ8cifvQ6XmluIULsR6yaHXOAAUs2PP+R1xhBA4j17tFArxP5yvEZQlS
	yKWnnyN7Ih9qAImbQMsFbUmZIgWj4nYvzxECFvcbOVFVuTuQDz1KT6xn7YbhBMOIsLUMudbYBYH
	dlgsD6/DKthie2pPOBvv/rzHNpkfKmR8jCawkMk2VdW+3K7Vz81W5+OvInUz5NNT41RKPy/eKQE
	FsHWn8MNHLmtfniyXTS8i9hR+n66SblkNuvsE1g1D6bu7lcoHvAqCZCQX1H3jesMvS289jiS1M/
	MCnkqJy0H89bwHFKPbkFTKsLXABIi0MOt5T/S6u6bhoDlvbNhEDliDBhUIPZdfOA/oPmWVxgtS/
	UbCXE=
X-Received: by 2002:ac8:5fd3:0:b0:509:1057:4a67 with SMTP id d75a77b69052e-50ba381931bmr18863001cf.2.1774606746243;
        Fri, 27 Mar 2026 03:19:06 -0700 (PDT)
X-Received: by 2002:ac8:5fd3:0:b0:509:1057:4a67 with SMTP id d75a77b69052e-50ba381931bmr18862791cf.2.1774606745759;
        Fri, 27 Mar 2026 03:19:05 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b2043add3sm234305966b.58.2026.03.27.03.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 03:19:04 -0700 (PDT)
Message-ID: <75f32587-b1e0-4a12-ba99-d2702a299142@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 11:19:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
 <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
 <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
 <7eda931a-f30e-4e01-a130-996ec7f450d1@linaro.org>
 <a42f837c-4b90-4e0f-a98f-793fbd20a140@kernel.org>
 <117d9294-87ce-4060-9c8b-71190b649e64@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <117d9294-87ce-4060-9c8b-71190b649e64@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA3NSBTYWx0ZWRfXzTjOGTeSudfQ
 4QRIgg7+4X2yY1JNZnFv8Xc2SY2Us9fPJRkogWV4VKBVaR8/67vOX0Nb14pDbxPT1/cHRlYUjFt
 0uopNES8QBdxEnExBnIby/uT+TqueX6s/trV/m7GbCNWAT0O6MogpBOD1ZPql/8lhug5y5vvG0H
 CyrH7kz7/j1lLY87ZNUSG6bCbTd7k4jheq8P4uY8U0AR+iA0qibu7Ledu4+Inl+WRslFk9jes0v
 MHL6FEkcxCZmL93W4V8KwY7JVAfHgzco5MkpvwIYGxT3q1j5g7Q0fYzRRFkuMs88+91cz2IAO4g
 Qy7to75ORCdPCoSYn4tD9ov0Y0safIlXfPZYvaA1BGKLoXfdEbvtrcsgfTHmV1uMydOFNkQ5q4w
 qLH2F7njwfgaAvaNDgPiqc01PXqd/0Ye33VsA+EsfWIIWbqEv2H2HgNHBxhRNuPC/WOFDfsEJzO
 tVQD6F6pQnlXRTbPIag==
X-Proofpoint-ORIG-GUID: Eg6zVggAXvL67XBBd3uiFnf8J3GGfLo7
X-Authority-Analysis: v=2.4 cv=BZrVE7t2 c=1 sm=1 tr=0 ts=69c6599b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=tOyMFtvu8Owbn7gLMVQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: Eg6zVggAXvL67XBBd3uiFnf8J3GGfLo7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_031908_581324_913B8185 
X-CRM114-Status: GOOD (  26.00  )
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

On 3/19/26 6:39 PM, Neil Armstrong wrote:
> On 3/19/26 17:56, Bryan O'Donoghue wrote:
>> On 19/03/2026 16:08, Neil Armstrong wrote:
>>> On 3/19/26 16:18, Bryan O'Donoghue wrote:
>>>> On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>>>>>> There's no reason to remove that from CAMSS - it would be an ABI break
>>>>>> in user-space anyway.
>>>>>
>>>>> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
>>>>> subdevices, then for the sake of simplification it should be done for all
>>>>> supported platforms in advance, such a change will be independent from this
>>>>> particular phy series, and vice versa, this CAMSS only driver change will
>>>>> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
>>>>> precede this particular CAMSS CSIPHY series.
>>>>>
>>>>> For backward compatibility with userspace a noop stub will be good enough,
>>>>> it's not an issue at all.
>>>>
>>>> The standalone PHY driver doesn't require removing the CSIPHY media
>>>> entity from CAMSS. They serve different purposes and coexist - its important to have a NOP from user-space perspective for legacy and indeed for new implementations.
>>>>
>>>> How the PHY gets represented in the kernel is of zero interest to user-sapce.
>>>>
>>>> That said, stubbing out the media entity is independent work that can happen in any order and IMO is a separate debate. Whether or not CSIPHY init sequences live inside of a monolithic CAMSS driver or live inside off a discrete csiphy driver is not related to the media graph.
>>>>
>>>> Happy to have that debate - and if indicated, carefully apply patches separately.
>>>
>>> So what does this actually solves ?
>>>
>>> Neil
>> Per-PHY voltage rails, per-PHY power domains and per-PHY OPP scaling.
>>
>> Using the PHY API instead of rolling our own, as well as separate nodes in the DT.
>>
>> We've been getting away with power-domains, opp scaling etc by sheer luck. The feedback from the list alone now addressed in this driver makes the conversion worthwhile.
> 
> The PHY API doesn't solve that, having proper nodes solves that, you could add a separate csiphy node, add a port/endpoint between camss and the csiphy and attach a camss aux driver to the node, and it would have the same effect with little code change.
> And this could be done for all the CAMSS hardware elements incrementally, and if you wish the move the electrical phy part under the phy API then you just spin a PHY aux driver controlled by the csiphy media element.
> 
> I understand you find it simpler to use the phys property in camss, but it has plenty of drawbacks like not be able to describe data link properties specific to the CSIPHY properties or easily describe new hardware layouts without having a fixed association table between phy-names and whatever CAMSS media elements interconnections.
> 
> My question would be that if we were to completely split out the CAMSS into several separate nodes linked with port/endpoint graph, to which hardware element the phys would be associated to ? is there a fixed connection between a CSID and a CSIPHY ? is seems the CSID gen2 & gen3 can actually connect to different CSIPHY meaning a CSIPHY is a not simple electrical PHY but can be dynamically connected to different consumers.
> There's no way we can handle that with the PHY API.

Because almost all CAMSS components may be muxed around (at runtime), I
believe the endgame is to have a central place storing references to all
of them (which would end up as "the camss driver") and managing the
actual connections (turning on the respective PHYs, programming routing registers
etc.), based on incoming v4l2 requests

For older targets without that configurability, the same logic could be used,
except with predefined boundaries

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
