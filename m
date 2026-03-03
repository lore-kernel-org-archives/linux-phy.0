Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93BF8EDEBF7
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 23:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5yMBp17gUokBxSARV7SfAKp0AAXjbpFVtFlT6A7PUY=; b=1hg3ZhfvpqJPtb
	zW9jEbocaS23oSllyU1vPQRog0B2pTeZ9y/ZXe+VgxTUBWdW0VQIH07EnN52sup/NEkzEaDCW/9yG
	20rAHi3LjZzDaYi0+Z7ptf4stVk9s7jdLMF7LI7CKMe+CQ3a3d43Gy4mvUfnJ1NlVyuu8QX4rNhU+
	MJJy5RJyqVXoPCTrRRq0tINX8xPKu3KV6jmZgppsisxw6VpabJawDe51ORZjDTE6/orSOiSl0/RUJ
	hJIlIoSA2I3wRTXTpbeS/qopuu5Vu98fT8exaL68cUfrJeTOtjqW/pnlG7i87E+euQFvCHNbCk0/z
	a8/fBMLeijhK9Xaz0qOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZWm-0000000G7EX-1NPS;
	Tue, 03 Mar 2026 23:51:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZWj-0000000G7E8-2fXD
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 23:51:46 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623KSuXo4011702
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 23:51:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tek9uhlm2h1k7JiB2+lAHLOsL/qiE45qQ/vw4e2qztQ=; b=FW4I5nNOHeX38DBb
	ebtuRtObFnn08Gud4xSSYdXxcXUD3qZh7f+H81wV1O4e16nhbJDgGjs4L0LpGo0i
	fztZ6cb7TnC2i7xXUrpAbDNepfblgTDtS66L7ty6TXE1+RgR06a+7e4XGviKHb2M
	3/L++RrL6eW76Tuj8AOnvAzgGZ2O2AxGy7mPelTwwFehMFZ2P8Yea1svqpKBGB4B
	YHvp7sUCNbCQ3JddAjEz+m7pl3J2cDx68VnwzP74Voh4nmBsdIKHr3PxPsc0mWZx
	Jh20L9FU8zy7mDZGqpSoOgsIkkFDhAXfeDE3dsqPmU5Kc3BKFDJWRXNFKRELCuvo
	b48utQ==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qg8kpv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 23:51:44 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1275c2ae713so10334158c88.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 15:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772581903; x=1773186703; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tek9uhlm2h1k7JiB2+lAHLOsL/qiE45qQ/vw4e2qztQ=;
        b=Z5Odriw/jmItSNi5R+xUnMQclyP+dZ66ItSPkmhUtYUu9eGtAf8UoUIYE5T8KZnfrY
         qBT4zWsie6BPBav/a3oaFEiSuBjK9ZzYivDq/SfxsSjIFSDwvYPPBd4n6Ziv0rmJQNe7
         YxRTwkz5dmq4DDGRspLHF2SL3iR1vwglDaurMWBpEO45M/DWtteG2fivIIDcZJA/HR7d
         MMQ9pID+vejcrzxE7LEAoiZmGpxHVEN67NQOOtCbDt/WILH3UrdMGdX+H3h0ZlXfDO3v
         tNVO8iK1hWGN4Edqth9RDWShLP6krrWxaM3RxbHidgeKNrvWu42dTIMSbNH4JvhK2LrC
         nQBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772581903; x=1773186703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tek9uhlm2h1k7JiB2+lAHLOsL/qiE45qQ/vw4e2qztQ=;
        b=eTpesCADwmhXMc02h8yjbzXIjcvjjk0fJ/QNQzZ0kee7peE6twBRvruNYPQ+8u+UZN
         1Mv9brMppsSJ+CyknLkx/G4OJw8O+jQXBkhLHLVFRR5jv6sVLnJdXLEEY6ErvIaussUj
         VIJ7ywqz2zCxexrNZudAtUj3O5J+M1I+VUanVxSfkXpjBdLXxIrklUDiuzcbE5Rjy/zE
         NwbOSPoNvaJtSYceuIP51Mja7AVcNg31k1bFle4toeELYs7OxYLtIIu/dNxAThAy6zd0
         HmppEWxwQYrmLkme33MyaW227YZpW23hirhSaChWWfkjTaQEteRUym5PoBDtZ7EOu3iU
         +yQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJAb04VheRD9B/8QfOB0a35yzyzskKacB3y66L4PuZqwfP4DKcaAyAcql91TqzBFOhkDUvDxdRZdg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLBg3LdqSA/Wk+RExl3LteD+/11DS1lForLoC7b6JJQVHtXSDs
	kM88ivRBT7XYEncj+mDGzx/UNuTfUN4qQk9IVI/XBUkgsKcOwIbYq3AnxHup0iAcdcAkx4N60MI
	YVmelwzwuUkjGKAmd3JHabvfKEA7H8aLAGWL/yXwAe31MaOnipt2b32pdm+/9lxhV0ayP
X-Gm-Gg: ATEYQzzCzji3iJLBgak20Wgu/5JgP55/1bjsc1uvqdqRY79LjeOQ+laFqyjA1Wvqi/f
	I+jgVzXbRIhgF6ZY4CJrecGlimvWaGZRTBRMB9A/RYQe2dRhyenED+HRUnSm8cNrX0q+Nd/RM1E
	YcXJ55zybpqKNvROAbWcBGALECxW17V+8sfYTsU9VezYyR0OOTHDjxOySjlsvOYVUvHFobbmqWL
	clpX9EANRAtGxHUkGluRzd3c3E0Sd6j5LpXq7hdcyMF5EpDy7S+jIyGam1FbPaoLcQzb66r2tJa
	RoSHSVdC8vQ+c49ZZ228gbo4+s0HFaWNLSbIawOginE1Bd8o2WWpzEe5xx7P+M/IjYpTHG9VKeU
	3gQoKQUjXN74/ig7ZnKVxyoIBJ06zMj63n6Jo+bJ9Sr4Qpv3llnVbg/HC5eL25XdWeN+GkHCqlR
	Xh
X-Received: by 2002:a05:7022:78d:b0:11f:3483:bbb0 with SMTP id a92af1059eb24-128b70949f3mr23937c88.19.1772581903400;
        Tue, 03 Mar 2026 15:51:43 -0800 (PST)
X-Received: by 2002:a05:7022:78d:b0:11f:3483:bbb0 with SMTP id a92af1059eb24-128b70949f3mr23910c88.19.1772581902816;
        Tue, 03 Mar 2026 15:51:42 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be249ed6a4sm1984701eec.11.2026.03.03.15.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:51:42 -0800 (PST)
Message-ID: <b5d41d1c-1856-4155-a0ad-36acfe29715e@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:51:41 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
 <f83f616d-9114-426d-bc9b-42ddc839686f@oss.qualcomm.com>
 <qcrwodgyayhyd7rpfglsxkefrufgqxjcs6n7druwr46wmkojvo@263ooobucj2c>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <qcrwodgyayhyd7rpfglsxkefrufgqxjcs6n7druwr46wmkojvo@263ooobucj2c>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5NiBTYWx0ZWRfX1fiBl2itbG9g
 ZGdVvyrh2M8DsIhuld5fkGnSPVXGk7hHHHR8lS3w5Qt7u4SOv7iFYAjm2LtrYQvyHqL7VTMbKuK
 LQ4LKCT/lEFqfJZuy1LbzHRmDrcxiTgwkHScrAIRhDgbxDYP0SS4+5lsehDkkTw96zcmixg7UUv
 6PxocjO4GSh8Ek9GJsZiC+UVpzA8sppzz86bNx97KmMYq8cegKp55IOKfEYBKlXZPPh4Yx4jy8d
 N9fGcf04kb3o4iSo95oT9ufCd63y/SVLpblABdWnV8GvIhDq2PIA+Xuq0uvc0Ig+pjNk5WvlMyA
 /Y0ni5gAbCSn4Um/O7EhB/i3cS/TG61/pqlQKNFELFEq++5muDB3bp8tnM9LfNmgDm9L31A45Gb
 NpLzD9dnFlew6wB/kB1E/ovHjeRiwNRWeVDo5bPtMDLIgQOlZQfE0rHvkPKJM6TlA8Rx2C+yxcT
 7c22ax8hWnk5AXUl1Lg==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a77410 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=xyu7nF3SspGO5Dy-1yQA:9 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: KiiLBuA9vEeEu9tRGyRrtyRnG9xkRiWi
X-Proofpoint-GUID: KiiLBuA9vEeEu9tRGyRrtyRnG9xkRiWi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_155145_799953_6D0FD1F3 
X-CRM114-Status: GOOD (  15.91  )
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



On 3/3/2026 3:49 PM, Dmitry Baryshkov wrote:
> On Tue, Mar 03, 2026 at 03:24:16PM -0800, Vijay Kumar Tumati wrote:
>>
>>
>> On 3/3/2026 2:31 PM, Dmitry Baryshkov wrote:
>>> On Mon, Mar 02, 2026 at 05:51:24PM -0800, Vijay Kumar Tumati wrote:
>>>> Hi Bryan,
>>>>
>>>> On 2/26/2026 4:34 AM, Bryan O'Donoghue wrote:
>>>>> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>>>> As we are cleaning up the PHY device nodes, we should consider fixing the
>>>> power domains as well. Although TOP GDSC is defined as a power domain, it is
>>>> not the power source for the PHY devices. Rather, it is the MMCX, MXC and
>>>> optionally MXA based on the architecture (Refer to 'Voltage rail' column for
>>>> PHY clocks in IPCAT). There is no
>>>> parent-child relationship between the TOP GDSC and these in the clock driver
>>>> and it was just working as the required power rails are getting enabled
>>>> by/for other MM devices.
>>>
>>> Which domains are required to access CSI PHY registers?
>> PHY register access requires the PHY core clock, cam_top_ahb clock. So in my
>> understanding, we need to trace these clocks in the topology backwards up
>> until at least the RCG, and all the voltage rails powering these clocks will
>> be the required power domains. Having said that, just register access works
>> even if the voltage rails are configured to the min level, which camcc does
>> already.
> 
> Are they not gated by the GDSC?
All the Titan CAMCC clocks are gated by the TOP GDSC, yes.
> 
>>>
>>>>> +
>>>>> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
>>>>> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
>>>>> +    };
>>>>> +
>>>
>> Thanks,
>> Vijay.
> 
Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
