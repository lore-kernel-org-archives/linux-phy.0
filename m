Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1FD1CD98F2
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkddluzhj2fgcN/CK3YLXQhjtvPpdjlhZ3Ja7rzyAO8=; b=Lu5CcyanS3UGZv
	WMmQU1eds7AxWbwGUCJgwdlYGyAi/7Ipj9ybjld+KlpEthplnehldMqKn3qCvCCGgCAaBiJjF9fWv
	mOZD0MmLAWjmpm1xV2x7RFloFKLyy1z+pD8FpIeR3YUKckaVpChW07Ms10A1EnYaQrimq7uL8uPf1
	EKacumLGJDq201ZGuGXmTCfvKmQA+oBdyuqWtYKRQqTtoR+KbMlgdzZJnJjVr/KNOkOv/dPsLQHpk
	il3HzYEUFpfrU+lc1Un1+dCcR2FdG9Oe2VD2NJyv+0rjufaLgLUeqDUiRnkb06oY1ofb04jkAV4df
	tcHfTDWxk5RVcdcnN4pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waatl-00000002cnh-21Kh;
	Fri, 19 Jun 2026 15:12:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waati-00000002cnM-3LWR
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 15:12:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65JDC9lA556795
	for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 15:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h7yHqNvHf7zsxMoKY4S/aHvIz1bHIGx2ls9sOtVtBQE=; b=YEqPUls8augKfigE
	aqLZFa2egqWqhqKUNoRWF9aU8/R+a6S1y8pX9bWShu5UAFWtG0b8Wb6fNjfhPYIp
	dVqbm4bA8l7Os0XSZx9TmhNoES6pZwe/SkYUGe0Q7PVrOeHZmLRn2vbn9h72z+ZZ
	O08j+NYonIwsw5yYlAY7sZCMSb7+rQIbdlGthqJqmOVXIkgAS5Q/cYOKJCfZUWx2
	PBQPef2J3RVxNnChf1Q0US+07rO5PeL5eRi7KGTuSAlD5lJCeOKax5p6sp1dGYT4
	wyJ43C4uzcUTU8h7Ts6BxKz99Jel+C9XLDg0N2d2mHHacVaBaostBnstVW7tNcgA
	akcPXw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4evpyuuem5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 15:12:45 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7270ec494f6so104404137.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 08:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781881964; x=1782486764; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h7yHqNvHf7zsxMoKY4S/aHvIz1bHIGx2ls9sOtVtBQE=;
        b=FgTX7T1nq/9ByMz0J3xGW4/0d5VuiTQa5pLqJs3V2QyxG/RKlTsCDcauMEZ6+fODJs
         mrBKO8ZFDZ95Y2gf6UFx8rf56G4+DOWUF5CnnTVqybd7FMo7VAxE4r/hUyVEEkSpBIFF
         4SyzDsr8CRBV5/GQq02s8T9hW4EuNON1Fnr/B9zElhbuYX8kMz0EeqctxFwiArvg697y
         2OyShIcu0d/FVGMbIGjS4IRRKssk/dtmbfhSkea4Bs7KBZiqHr8i5WCJoaKyTFuY6SKz
         p+gVw+c0qYkajP/NhCg8l7ulSjszSZU4dE+rq6EXncR3dxjPb83k5A/JX8fHVCHNkRz9
         5QiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781881964; x=1782486764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h7yHqNvHf7zsxMoKY4S/aHvIz1bHIGx2ls9sOtVtBQE=;
        b=aP7mHcxC/TA8Qhf0QqqNZKYBGwALIfzWe6lTwl7lagogMABsP4xGcEna/Mg5SLXy1N
         ZG/3ZXP0xxPI+kX1CEvRwJVk8JN7sW/YMVCein6y6ql9AIBvbcSHI+ps4jCRoIZXt8/e
         8TzkK8I83dIW0i61OBZnKCwXstPDnKS99FsrwcoFWAulDtpR+i69V7o4h+wnYfx9tVWp
         8o6xUQJc6eJC2aPObUJt+lBBSkJia/me8TOD1km8+ks5oHq+6wDaHKNjdA0Slzi4xq2D
         U6ClObrEqvU3IIKYMMkTnQLxSJVe6qbCVa8NMDr0S2HTojUxXb0gh2CmuU6pj+hxwBEP
         JKHw==
X-Forwarded-Encrypted: i=1; AFNElJ8Ov82AfZyFxuyViml7+LCi8BkcWOt5TekcUJfJkZK+oZZ8ojYYuVoQt/TgnFlgdPQX3kBnzHkgPgM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwK7i4oMMQe5xspC3YkLLAPo/WfoLuFD+LeubuvKCEljqfS6WMz
	mAKvN78qsLz51xVKrRZ3+dui6DG52qoJeS/oJKul+Pgdw40QH5cX/ux0rNXFW+P111djzDthNow
	eM+o0cHp/82iPQZ21v4Bo9sfFqpaQuRiHexOgAa7s6jZGvTtDWWW4Bv512/T7cFMvT+vb
X-Gm-Gg: AfdE7clABT4Axoa3NmdffWpbuh7i16Pmne1Rq+XjN6UYDYKTfMzOdEQ636AC1kt3S/K
	k06j0stKeg8SDG0IkBqz5FSo5jxyXkBNFNcWIRqmTAzBXoo99P3VbaQ/y2w/8oCAxOTeKNqFZrm
	MOwIx/G/7fqgUFtw2bwmyDrBjeosR7a7yphDOn3lVDNNxRDY+1BBWX84oixSdaMZcXtoe9Ngfkn
	KrtVnjKgazTCuDMZdCH0ppJ+4JgtKheyzmYx+NOxpDhpOpp8oQh9XBAs6kvRr87fXLw1+d5G5/m
	2ebd7k2EXwJpNRkQqlZ3JqG5GfVYW/NECGmdFn8S5FtDrfnygmhBZPJxduA65EmQYH65YzoISrd
	f2Xv1ogHDt/U1ysHnO9u4JDg4tl2EefU11Os=
X-Received: by 2002:a05:6102:a4d:b0:633:7c8:37aa with SMTP id ada2fe7eead31-72a010296bbmr1121398137.2.1781881964407;
        Fri, 19 Jun 2026 08:12:44 -0700 (PDT)
X-Received: by 2002:a05:6102:a4d:b0:633:7c8:37aa with SMTP id ada2fe7eead31-72a010296bbmr1121367137.2.1781881963829;
        Fri, 19 Jun 2026 08:12:43 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-696fbcbb9d8sm946703a12.13.2026.06.19.08.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2026 08:12:42 -0700 (PDT)
Message-ID: <044c0fa3-4793-4907-9058-347263511232@oss.qualcomm.com>
Date: Fri, 19 Jun 2026 17:12:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
 <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
 <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
 <d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com>
 <5baeeeed-7c18-46f7-82a3-5bb299ba05ef@kernel.org>
 <42ba6ac7-306a-419f-96b6-3427c51ef567@oss.qualcomm.com>
 <9ed7c714-07c1-48de-8d27-cbe24356c606@kernel.org>
 <34586ed6-4f78-490f-a916-baf7657cca7a@oss.qualcomm.com>
 <xw7f24rvxhkfntui4jjswyyabb5be4cbkfgh7fico6vlhfvf5b@d4axfyz6gds5>
 <0947e485-4619-43a3-a127-5b887780190b@oss.qualcomm.com>
 <5vfu3h66pelbhzyfqnagxg2j6r5mn7jupx3nmewt2zsggfa6sj@ttqr775cybxa>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5vfu3h66pelbhzyfqnagxg2j6r5mn7jupx3nmewt2zsggfa6sj@ttqr775cybxa>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE5MDE0NCBTYWx0ZWRfX96skUylTyThA
 c5NIHrZU50BmHcEqKtFC+webfxPSfJ+sOaY5burnTrUce71G38+/w0yNDscflIiT//zMsorI+mE
 sGmdKEAqoGqSjPUOkil0a3EAl6NMLQY=
X-Proofpoint-GUID: _z1lqq9GEUX76omFBwJ0bMK2DgMwsnWH
X-Proofpoint-ORIG-GUID: _z1lqq9GEUX76omFBwJ0bMK2DgMwsnWH
X-Authority-Analysis: v=2.4 cv=cY3iaHDM c=1 sm=1 tr=0 ts=6a355c6d cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=OOGWXGrbggnT5pNHG1IA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE5MDE0NCBTYWx0ZWRfXwuRdmNtZg7Ks
 Q7Pme0e/NUkbxYymOvbsYpmIJl4YF2aaItcxiLkmIDFkKEvfrbLshuwRkViFISrIPHVivcH3tPw
 LrrHja1b/IiEafezYm9VMNhz2wUxlqylrg0tmjVxtxAG/Zrg7BlG+IjRshMHCOQCSh4lh8nRSdF
 JFbXkRNhpeCaAdGdSkHxxOjCiFc0cCZA2iSZtYBhQYC4LDKaeeX3ipqdAlbvLaqQ024J7lbS9LD
 ruU5yLSbDzFa3MOUagQvW3FkDWHbP933/Cyy4OYf+iUEQyAKKxTnrEgTcbZ9TafhnWpwugCXfpi
 stYK0pEREllHbwjDxbvbvotPPSLtQIKHxH5juVTPsL3D85PidW5Ar4wRwWdl72JUGh7SQqP90Cw
 BZ21PTcq/OaVUvnhx37iGCytZBFyXt/poIF0zOfQe1XDw0m/Ym2h49aMXYcav0rqZlxKegbMIxw
 +3U2KHY2wlJQl/opwJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-19_03,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606190144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_081246_986000_DE17701C 
X-CRM114-Status: GOOD (  28.23  )
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

On 6/12/26 10:00 AM, Dmitry Baryshkov wrote:
> On Wed, Jun 10, 2026 at 03:36:20PM +0200, Konrad Dybcio wrote:
>> On 5/17/26 9:16 PM, Dmitry Baryshkov wrote:
>>> On Fri, May 15, 2026 at 09:06:21PM +0530, Krishna Kurapati wrote:
>>>>
>>>>
>>>> On 5/14/2026 8:07 PM, Krzysztof Kozlowski wrote:
>>>>> On 14/05/2026 08:22, Krishna Kurapati wrote:
>>>>>>
>>>>>>
>>>>>> On 5/14/2026 12:26 AM, Krzysztof Kozlowski wrote:
>>>>>>> On 07/05/2026 13:37, Krishna Kurapati wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
>>>>>>>>> On 05/05/2026 15:57, Krishna Kurapati wrote:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
>>>>>>>>>>> On 05/05/2026 15:27, Krishna Kurapati wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
>>>>>>>>>>>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>>>>>>>>>>>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>>>>>>>>>>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>>>>>>>>>>>> ---
>>>>>>>>>>>>>>>       .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>>>>>>>>>>>>>       1 file changed, 2 insertions(+)
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>>>>>>>>>
>>>>>>>>>>>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
>>>>>>>>>>>>> compatible. If not, explain what is not compatible.
>>>>>>>>>>>>>
>>>>>>>>>>>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>>>>>>>
>>>>>>>>>>>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
>>>>>>>>>>>> GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>>>>>>>>>
>>>>>>>>>>>> Hence, I didn't use a fallback compatible.
>>>>>>>>>>>
>>>>>>>>>>> This still explains nothing. How different clock makes interface for SW
>>>>>>>>>>> incompatible exactly?
>>>>>>>>>>>
>>>>>>>>>> So I went by the naming. AUX vs COM_AUX.
>>>>>>>>>
>>>>>>>>> The naming does not matter. If the clock is called
>>>>>>>>> "no_one_expects_spanish_inquisition", does that make software
>>>>>>>>> incompatible? Why would the name itself matter?
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
>>>>>>>>>> clock-names mentioning "aux" ?
>>>>>>>>>
>>>>>>>>> I don't know, I asked what is different in software interface.
>>>>>>>>>
>>>>>>>>
>>>>>>>> Hi Krzysztof,
>>>>>>>>
>>>>>>>>     I checked with the hw team here and found out two things.
>>>>>>>>
>>>>>>>>     1. Shikra is a spinoff of Agatti and its sw interface (clocks used and
>>>>>>>> regulators used) is the same as agatti.
>>>>>>>>
>>>>>>>>     2. I thought we could use qcm2290 as a fallback since the phy register
>>>>>>>> init sequence is the same for Talos/Shikra/Agatti. The difference
>>>>>>>> between Talos and agatti when checked in the driver was the init load
>>>>>>>> settings. I checked with the hw team and they suggested using the init
>>>>>>>> load settings which talos was using.
>>>>>>>>
>>>>>>>>     Hence both these compatibles (qcm2290 and qcs615) cannot be used as
>>>>>>>> fallback for Shikra.
>>>>>>>
>>>>>>> Then I do not understand why you are using qcs615_usb3phy_cfg for
>>>>>>> Shikra. You say that the initialization is different, but you use
>>>>>>> exactly the same initialization. So in a meaning of compatibility
>>>>>>> between hardware for Devicetree they are compatible.
>>>>>>>
>>>>>> Hi Krzysztof,
>>>>>>
>>>>>>    There are 3 things:
>>>>>>
>>>>>> 1. Clocks used:
>>>>>> -> Talos supports AUX Clock since it supports DP over USB.
>>>>>> -> Agatti and Shikra use COM_AUX clock since they dont support DP over USB.
>>>>>>
>>>>>> 2. Phy register Init sequence - same for all 3 targets
>>>>>>
>>>>>> 3. Regulator init load:
>>>>>> -> Different for both Talos and Agatti
>>>>>> -> Recommendation is to use Talos regulator load values.
>>>>>>
>>>>>> SW interface wise, shikra is comaptible with agatti. If we use agatti as
>>>>>> fallback, we would end up using the platform data of Agatti where the
>>>>>> regulator init load is not suitable for Shikra. Hence not using Agatti
>>>>>> as fallback.
>>>>>>
>>>>>> Coming to driver changes, I used qcs615_cfg because it has required phy
>>>>>> register sequence and regulator init load as needed by shikra.
>>>>>
>>>>> So is it compatible with QCS615? If not, then something is incomplete or
>>>>> confusing. The driver uses the same software interface.
>>>>>
>>>> Sorry for the confusion. The Talos compatible represents the USB/DP PHY with
>>>> aux clock input, while Shikra is a USB-only PHY with com_aux input clock, so
>>>> the two PHYs are not compatible with each other.
>>>
>>> According to the memory map, there is an (unused) DP registers part
>>> right after the QMP USB3 PHY. So, sofware-wise it is compatible to
>>> Talos. Having the different clock input means different integration of
>>> the block rather than the differences in the hardware block.
>>>
>>> So, the block should be compatible to qcom,qcs615-qmp-usb3-dp-phy
>>
>> It should still carry its own compatible though, to let the driver
>> disallow powering up the DP part
> 
> Why? The DP part is there, in the PHY, pretty much like it's present on
> most of USBC platforms. I assume it can be powered on.  There is no
> point in it though as there is no DP controller (nor DP pins).

I wouldn't bet too much on that sub-block being fully silicon-validated
given its of no use as there isn't a DPTX onboard..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
