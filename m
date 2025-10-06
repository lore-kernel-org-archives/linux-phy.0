Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D61FFCCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 10:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJcHM99BI9Zgy5F3Tay2IciDriIm+GOsNQuiIJmR5OI=; b=4tScCLiF17soZP
	oFzJEjwUS6OsKjKr6JPN3NZIrhXduiPhFaLBoFBbovdFb1m1MBvn+exfwMMNe7Spk8M708CzK6xLA
	cQwlhXMFvHTXcinRSgibNS+pnV/PaaOIC3Nqcg1VjnGG4WJFdV2FbTJo1GgNC8C9fhzrlIXupooJp
	Q17rvtGx3J+DSZC5lecbwCgXwdIflIQB4y8hsS1yimXwKxC9omrzUb3aCAx3itnJRlw66y+afYRO5
	5LiYtNrxUO60ylhR4025WXZBaoN153VdJ94HGQcbP35J2cPn2qHd7phvwkgcx84AaO/6+4toTRbxv
	fdZ1qXvWl61I8VIUECEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5irO-0000000HRCR-2hpQ;
	Mon, 06 Oct 2025 10:54:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5irL-0000000HRC6-3ZwZ
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 10:54:29 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595KUT9b006173
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 10:54:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VrVUbIjlJ3CooIYoglFiSW0iKQJSrhBTHl5HZw8oVPc=; b=phSh8dnPXr+6MFoy
	SEa88ezC5puLTmkRCMug4bwHdgrVtTVynV/9+kKEO9Hw1tdFmK7drUX0RLVxFvII
	PIPguTgvUB6YxnSGMOBybd2Ax8Jjj+YTYP0ujTXpoelU2S39wD4NyHQM1Km2snZQ
	eJ6paMY57Bj2Ab9uTkG91DXkPoPIpp3h8kmU7TSxpCLSbsh8TE5BP4o32eNFjpVa
	wMkkyZ/vSOZfYdjVEPAZOzCDr2RTb5W4xSuXD0aN8E9mtv4mrTVw5ZlnnWairn6p
	PMAmPdydUQKYmNb8CiECmwP1R7sismusOY8Vcq8yLrtBPD/j7/yLCweoXPQ7agx1
	7iNW3A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6uq3f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 10:54:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-819d2492a75so226118785a.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 03:54:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759748066; x=1760352866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VrVUbIjlJ3CooIYoglFiSW0iKQJSrhBTHl5HZw8oVPc=;
        b=mXuIlBWnU17snzTIcJohIt8SwDNPjyB61K0cD7NjP5Idfw3xz1WjleNPFhlpVM4pSn
         FjoqmI9jQ3Jfn8U94++SVX/FDSRzrMo/zkBpLUVRcOwdGQXCQzC4/A++BxiC08eKPQ/9
         Uyfivk3bTYcyU3npdl0T7Q7jufvfEl0iYh/1LwfeBVpm8kxJkIjmOdSG0tAJGIwP7biQ
         oEv1GTc1Y4xHY0+xGOmPnLRGxHBZBs+Rj+19seeu0EdNl0nsoMfJmal34AiTNHU81bdn
         rwZovVQ0ZoUz7weo+rQz0zeQ3B9igBOnBKtyEZp9NzbS1gqBm2QwbMpLlyMU4D2uFwVG
         c/fQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4L/LVm2+vkrvdW/p612e59TT84XHUjs5zArTq014TRIvXSFWXIPTmOa6X+h9oTN1LOepWqrgWF7U=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyLmBlvwrnzIpzuddyPRrSULdcWKYO10y3vbNf+DKH1xVl6ckl
	kjhT6Z61TQMX+W8wwd+/HK8Jd2pf+D/DxugIerGP0tUdckjB9aKoX+p+lsw4lrYcExJUzRKstMW
	KH2/hhO2X7W7s1LOoA/rkKfO9PfN7DQ2R+YPw1g1WJW/Fe0Xahn3zN1wMRnAcZq0SJx+k
X-Gm-Gg: ASbGncveb886z3iDn2jusPzXaaNw1afEFwih/AJ5jkb5Zzz8n2EGroelkKvUqGvCgtr
	Xr31oVt/0Dbq75HbEbQXP9yO4tC0hFPGWzXvFplaDWLHWb+kQlY6eBEa8MKxPy6hD2Vjb6dLDMM
	rbbSDnt2kcoL1RYZ46Apk97HZQqJwEYNeaHTGgUWcFp9u4sFXsl9N8r37F9Af3v6GowGw8SD/jW
	R12yMeUf8CMx0fAfwS4N7X95V0YYdXwNYJFaFignf4A9B/eiXUgkvXoYouLJQkfMVTNj5FJF1Wv
	CXiBciEC+ovfXxpVs5NxhHP9UhT843VTAGdlk8j8C22ix4vMIF3Q5A+csMBKHJeV4/4802ZdXAN
	RR4EIn4tOtfp9bp8HqLjh0ReVWpU=
X-Received: by 2002:a05:620a:7011:b0:856:9348:fd74 with SMTP id af79cd13be357-87a2e796bc6mr979239685a.0.1759748065751;
        Mon, 06 Oct 2025 03:54:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeDw//D1IK4m3cWB7mV/guegNe2+DSX+asskT8jKYrvQ7jiqqsqAG/hluBT0+bCJ4tzcKZRg==
X-Received: by 2002:a05:620a:7011:b0:856:9348:fd74 with SMTP id af79cd13be357-87a2e796bc6mr979238085a.0.1759748065120;
        Mon, 06 Oct 2025 03:54:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a786sm1151338866b.46.2025.10.06.03.54.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:54:24 -0700 (PDT)
Message-ID: <c4e12751-678b-4941-9e35-c7d904d1b128@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:54:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
 <v4oxbjc4jho5uuz2k2ou4rvycdwifu2wuvbhldgfrm7ord4yqu@7ktz3a4233ff>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <v4oxbjc4jho5uuz2k2ou4rvycdwifu2wuvbhldgfrm7ord4yqu@7ktz3a4233ff>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX7l1oyzJHLB8Q
 21m6ERc74fjVu1/Dh2aFTgAjQCFy6YSVC0edCOTO22rFxYl8aXPvl7UzcfLK42+oFKEieaqRGYr
 fs8qFT+nyKnr5q8faJ3Ablz5b/0p9ZxD9VEgD/UiE1bUjNnqqBDCHgoRYFklC8R+3cwowh9dLpU
 ZlUcoD59EjsHW8JS4PAX4P3SpgJot9zESHFTwXGJlOrh3CdIC2CCiGS5oly2VhmYix0qLr8UyJP
 /Zl/zs8ukc6/uDgufevhJwr4fM/CvbpHO8kQU6eSZ7i4MJ/lvqWBvkceXP/3Xb5Ve04FztTiMLw
 WHdZGT/bnnSeBWsjwox5p+nG5kULWdqFAZ/BdWEqs1rw/4Vywr50+LjQ1zA1UK1Ba3j4rUfiEJu
 0xnwzvBUOk8flqO/SoCOkp6XnsQVcA==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e39fe2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=vM37AREu1tepbhpWv1IA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gf4jROUjSOMiapRAx1zzEs_ElwXlTMUe
X-Proofpoint-ORIG-GUID: gf4jROUjSOMiapRAx1zzEs_ElwXlTMUe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_035428_015841_23C56C18 
X-CRM114-Status: GOOD (  17.41  )
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

On 10/6/25 12:35 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 06, 2025 at 12:08:22PM +0200, Konrad Dybcio wrote:
>> On 9/30/25 9:39 AM, Neil Armstrong wrote:
>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>
>>> The routing of the lanes can be:
>>> - 2 DP + 2 USB3
>>> - 4 DP
>>> - 2 USB3
>>>
>>> Get the lanes mapping from DT and stop registering the USB-C
>>> muxes in favor of a static mode and orientation detemined
>>> by the lanes mapping.
>>>
>>> This allows supporting boards with direct connection of USB3 and
>>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>>> USB-C Altmode feature.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---

[...]

>>
>> [...]
>>
>>> +struct qmp_combo_lane_mapping {
>>> +	unsigned int lanes_count;
>>
>> "num_lanes"?
>>
>>> +	enum typec_orientation orientation;
>>> +	u32 lanes[4];
>>> +};
>>> +
>>> +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
>>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
>>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
>>> +};
>>> +
>>> +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
>>> +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
>>> +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
>>
>> This is not corroborated by your bindings change ^
>>
>> I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
>> would be TXd on
> 
> If we follow the standard, it should be 3 (RX2, TX2, TX1, RX1)

OK, then 3 it is

> 
>>
>>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
>>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
>>> +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
>>> +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
>>
>> Would it be too cheesy to check orientation based like:
> 
> That won't catch weird errors like {0, 2, 1, 3}.

Sure, but you can then drop the orientation field from the struct

> 
>>
>> static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
>> {
>> 	return data_lanes[0] == 0;
>> }

and the compiler will hopefully nicely inline this into a
compare-and-branch-on-0

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
