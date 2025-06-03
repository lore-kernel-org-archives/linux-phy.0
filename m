Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A2BC61CE5
	for <linux-phy@archiver.kernel.org>; Tue,  3 Jun 2025 11:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYg1Sef0+mWIkD/e0AgfWgURxGoUm/SB8V5bht5wGHY=; b=GxZ9L2cADO6U6O
	2baAsv9FHivgDNIVZrG1GVoBGVMMChgVGtiomM7+BW+So5GWZFCD0/HnRzHTCdMw57mFaNM7rbb1N
	aSAlPPYTHlxn53IWa6uusawRcLdE2JdQ0VAnqHzFFVvWwU+h7D6jIswTHTiJvlQbJV4fKTdZXrdT6
	KHjF5uwQsu8ZpVPtYwi9hBav3ERV9u1jmcLWUn/qf2qffgqpmzzqG3mbwU8rC1gty7l++iu7wQ+xC
	5KXJg+Q52JVLQPVD6fozVK39xSLif8hGeJI/K+e4nWbp+dqkoAhXnm1wQryOPerDt45AWPpU1C+KN
	yg9wBU8E3bRW2gTTcapw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPSL-0000000AkEP-1ZiA;
	Tue, 03 Jun 2025 11:05:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPQL-0000000Ak2D-3fqx
	for linux-phy@lists.infradead.org;
	Tue, 03 Jun 2025 11:03:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JSYS006669
	for <linux-phy@lists.infradead.org>; Tue, 3 Jun 2025 11:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a2budbtX+4GkxY9SWhxoeQY782u0Eld2myTPNaaYLuY=; b=EyLE5II0ILax67H4
	W/gdfBC5jJBckiaZZVLSW9VSZBTl3+IyZ9B70+SHVAeS/iCehQ56S5q2nzDULJ0k
	/HzVOnJ2XQJEWi9dnQxpZsGXTTD1YYjN/IthTWtQS8vyDCfOgXDuNg85mvrfMIyL
	TF8uqtZ4e2iaZ6+OGBU99s+hsgkSa7ONBf6vgU6d+tMn2oT2hTjNpOOvYvTkVBmw
	gd6j2tULjZoSOlr2P9h/Rc0wo10qp1zyAi1G2MbhNiCb2wnnHZ2iaZevq1GXE0gl
	il7he6D9gLBiEq5e57Vqnt6hc8laxcSYafh0oKdWRj5Dbpk5jY0H+fG6YLOde0T3
	zKXSTw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8stagj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 11:03:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0a9d20c2eso94380485a.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 04:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748948595; x=1749553395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a2budbtX+4GkxY9SWhxoeQY782u0Eld2myTPNaaYLuY=;
        b=PCl28hWff3kFDs/ZyqpLGoyk5EUXO4HQTalfoN5H2Jaz4gEd2fSyMkHR9ej6VWY/iK
         2uA5Mqcd3g7n8S3zxwKWSZioey/ln2/5gFTMEmMEwMBDK1Mj4+KBZFywsN4P/KG4FMpH
         BxDPhHOfBPW2X5o76jPg44LatH7fZyMbpWEvAhD8xSsOiHZKQ3yWsgAmYKgWgyK6TS6K
         A1Nln8NbwMIEW3gpCUzPyQ4CZP8m121EQs49lpMkF3X9Q9iXhKUSf7Yf4TjT68cXN118
         1IUNr+FkcmBCMmuvb86NCbTfTWX6XmxPwxMMUWXplGBRH1YhhkinNJvlW0g1eB15ZanZ
         Kvxw==
X-Forwarded-Encrypted: i=1; AJvYcCW53yhf7JahtDA2GcWr66avfKZ6Scb4V02Me7C23Lf8D+ZQCX35lCv0qBUqMdtayudB2hKfAE5NDB4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHvvWRpQqBNnsMTDtk5NojNFFq/McpD8Uuhk1h2GCxP/cgWfGX
	mMGqcm/tEDVFZwm4oznlj/MJx9Z4Tb7dWxPybT+5lsozDvSwX1YivJa9eanDtD1lyzTI+ZmnCSW
	9GUWxP8ul2W5htbmidMUIJuLXETmU8BynA8u7hyWwwXF8td3U0yGM6Uk5TV/yzj9E7jKI
X-Gm-Gg: ASbGncuv0IWNA/WcRJ+eln0+vbaNdMGseM6nXtSb8P54SW3gf1l6Os+73d9M+pWBYr7
	egegTZ09I498PABJY/QcS+B70p7nXE8GgU4Rybbrtr8ug2mrVFYFx2iGkpbh1YoRsLJPtViabeO
	9wj2pm1vBa7rbq6uqNoYfH6qFh2skinaptTRtAblgoSLrTre9tTChvMbv+9CNCn/miuvDJl0wih
	Pmk09F/X1U+iI3YXeks8STcp1qADDwZMQxpjJUZHU+kGxrfOBVLvy2T49fq92RZNnzZI2xcSRag
	vxAMVV9ldPcbd4aGK4wEuQB/+R8rj/bEw6i/xuoZMRuWaL6SuzaPNGU+9cLncqmdGg==
X-Received: by 2002:a05:620a:2a0b:b0:7c0:add8:1736 with SMTP id af79cd13be357-7d0a3e123c7mr844828085a.13.1748948594713;
        Tue, 03 Jun 2025 04:03:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtm3NY/DZn1SMjFLRCGTSWpBqboxLE72cvQfLTvFh8ut5ZIK3YZpupNq3/K2W1eMBtg4xfDA==
X-Received: by 2002:a05:620a:2a0b:b0:7c0:add8:1736 with SMTP id af79cd13be357-7d0a3e123c7mr844825885a.13.1748948594192;
        Tue, 03 Jun 2025 04:03:14 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7ff080sm948391466b.11.2025.06.03.04.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 04:03:13 -0700 (PDT)
Message-ID: <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 13:03:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
 <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
 <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
 <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
X-Proofpoint-ORIG-GUID: noIaNR3Nq8BwGYIH0zcHVFygTscW7-4S
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=683ed674 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=o0_FNGaLb_2qE7sTdK4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: noIaNR3Nq8BwGYIH0zcHVFygTscW7-4S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA5NiBTYWx0ZWRfX3Q9vxzvQnEXK
 1WuzOj6VYgXjEe963uIEPk27yrg6FT6XAU7RFNl4SlEp/hVuGtYVRHNuLE+XBdE//KIPq3zUOxE
 H9vA7PRR2vkZwmAQphPcYpY6lgzjRoGvel/fWUutnXve0wMFMOBm6lXrb39OCIzPyVh3ntXDv08
 3OeCWR98ANcXO64Gyldj8aOqP6ZEICGOdREA2b9BWB/HYBK1t+pH16ST/mmXjaVPQEbSsFsZhir
 VUbYM51PfVg1Q0xd2tIFfyFG75ZZacEvwNsRnT5EgGMFwq2NtFMNuV4R3z2uelz5RXCoOONAuMU
 t6VLTBiudr8hCJxAbW8NVFfnJRRaOZmw1ugurPMWhQkQgxx1rqdtloZDS30k3XQj4mP61MQU1vH
 UQmMbLMDEsOLuVl6jBELdbTFFzFGDyNOhLDV+WZ3Y2v5Ad9kG6f03nJUc5w4jbmFVq9liifG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_040317_924381_12121880 
X-CRM114-Status: GOOD (  31.46  )
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

On 6/2/25 10:55 AM, Neil Armstrong wrote:
> On 28/05/2025 18:56, Konrad Dybcio wrote:
>> On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
>>> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
>>>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
>>>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>>>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>>>
>>>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>>>> PHY is not powered off.
>>>>>>>
>>>>>>> This series doesn't seem to solve the USB side of a problem. When the
>>>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>>>>>> clock, so it needs to be switched to the USB-2 mode.
>>>>>>
>>>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
>>>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>>>>>> the USB thumb drive twice for the first time (only in that sequence)
>>>>>
>>>>> Might be.
>>>>>
>>>>>> But there's nothing interesting in dmesg and the phy seems to be
>>>>>> programmed with the same values on both the initial and the subsequent
>>>>>> working plug-in
>>>>>
>>>>> Please try using a DP dongle with USB 2 passthrough (there are some).
>>>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
>>>>> devices. Would you be able to see the USB device on a bus?
>>>>
>>>> I only have a dongle with both display and usb that does 2ln dp
>>>> (I tested 4ln dp on a type-c display that I don't think has a hub)
>>>>
>>>> USB3 - yes, USB2 - no (but it works after a replug)
>>>>
>>>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
>>>> at runtime?
>>>
>>> I think so.
>>
>> So after quite some time playing with that, I noticed that the USB2
>> device was never actually kicked off the bus.. and works totally fine
>> after connecting the display output (2ln DP)
>>
>> I was looking at dmesg, checking for discovery/disconnect messages,
>> but the device was simply never disconnected (which makes sense given
>> repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)
>>
>> I also read some docs and learnt that what we call
>> qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
>> and is unnecessary to set on USB2.0-only controllers
>>
>> The USB controller programming guide though doesn't talk about DP,
>> but I'd expect that we may need to set that override for 4lnDP+USB2
>> use cases (which I don't have a dongle for)
> 
> Yeah basically we need to:
> 1) power-off the USB3 PHY
> 2) switch to UTMI clock
> 
> In the following states:
> - USB safe mode (USB2 lanes may still be connected)
> - 4lanes DP mode
> - DP-only mode
> 
> But for this, the dwc3 should also get USB-C events with an addition mode-switch property.
> The flatten DWC3 node now allows that !

Yeah, I got even more confirmation this is intended..

I hacked up something that boils down to:

diff --git a/drivers/usb/dwc3/drd.c b/drivers/usb/dwc3/drd.c
index 7977860932b1..e5a0a8ec624d 100644
--- a/drivers/usb/dwc3/drd.c
+++ b/drivers/usb/dwc3/drd.c
@@ -464,6 +464,11 @@ static int dwc3_usb_role_switch_set(struct usb_role_switch *sw,
 		break;
 	}
 
+	if (dwc->mode_fn)
+		dwc->mode_fn(dwc, mode);

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 7334de85ad10..ea56f5087ecb 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
+static void mode_fn(struct dwc3 *dwc, enum usb_role role)
+{
+	struct dwc3_qcom *qcom = to_dwc3_qcom(dwc);
+
+	if (dwc->usb3_generic_phy[0])
+		dwc3_qcom_select_utmi_clk(qcom, role == USB_ROLE_NONE);
 }


It was easy to tap into because there's already mode switch handling..
But obviously it's a hack - should I register a typec_mux in there?
Should it go to dwc3-common or dwc3-qcom?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
