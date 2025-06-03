Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E1F0C5AD49
	for <linux-phy@archiver.kernel.org>; Tue,  3 Jun 2025 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcgJ6jobRParRClJ497W24oWZWLaqemaj4H81rKp2S4=; b=nW37l4n7fLHwKh
	GO5jrQwzCyHkBv+X9EYoZZXBCBghc5S0K7KDYEvisntBm82r7mRSkTZ0lp534J+ljVt+5xQa3zcCE
	d0ZMUS/twcnvG8jwPMFfhA5qOrwt/gz9Wf5hBWi/oxaG/hiEY8B2UtKpwj06CR5//CfkcWuJwXZs9
	Dkod9MqJBnmeo2rWGBmltMzcOjw8UbDfymnMfov+2JiTX9KxO8/Fc58gVBF3AlQK/C3WdkQSoX311
	gPHL6j7r3F/XSSNkCfTfhX550OBBwD/XAuFcFCFVsYvLMOtHjLlWgdm/fwEtGNNdn/R7Vovumc9BU
	ZrOlwybhvcJKLHy+k+mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMRWh-0000000B0jE-1N0g;
	Tue, 03 Jun 2025 13:17:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMRWd-0000000B0ig-3fDK
	for linux-phy@lists.infradead.org;
	Tue, 03 Jun 2025 13:17:57 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553BJa6n011546
	for <linux-phy@lists.infradead.org>; Tue, 3 Jun 2025 13:17:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JXGMMgDR2GMRgvSQcH/bx3rG
	d4l8acpfk7Qd16JoTBg=; b=BQMBemuQF4dBmNLN6f4xYX27LftVRJZ4ntFZVPvT
	FbR2s6NAnc8ID8m0sOJ5xURsYPiBILlb9WHsjdzq3coeOQp/SLA5Lprd3bVXteeD
	1fYThUZZzomTy2IgV9mCX41/02ggPVuj87Bqn0QapEhA3SDoX/Pl+UDVjgWCIvI/
	D9nAyj03JwQLf6olY1tNuu7RtGbLZgL0LUbM87RNsWDo3U9IVrdyqiLp7hREtFnh
	0fh+zL4Z2F5NOkWSH5+XPm9ECZq3vEte8cYtKXEUOCXMF1usrkX3VT2R5vqfCJJ/
	hHuvmNB+sYBaLDdcSyfcU0b4RkT74D1xF7OaeM/b2G1JiQ==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47202w899d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 13:17:54 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-72ecb622e02so1542514a34.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 06:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956673; x=1749561473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JXGMMgDR2GMRgvSQcH/bx3rGd4l8acpfk7Qd16JoTBg=;
        b=F5NedzjHVRhKNDetgctl0JEqbWhFiAURd082sPJjVgacn6DbUpfAvi7RrM1rqdQBdx
         I5AaMSc7UT4T3HoXdEYowGhtWQHlwGKVJRVb5gBS/GIAe0akzIYAi1ZC90Z0RDeazdJ4
         O81QVpyluDWUm8+0iPoYKKCHTKfGIP5IJbKLhChkzMzeveJNGgqh+mYnLGAo243DuBiW
         8ZQHQIK5pi52/jxME0DT0CA0IeNV7XwVhvQ9KJphae79KqMgiAbOmSBTh0/PwD1fH91n
         FCIlYw2dbdCNk3JQrvhFi0sbhxGj+lCWNDUUSLca4Z0W6A1rFquDRpW8MFDRDVADqZEQ
         79fQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBNuOV98whyDsN51bJHzWTtDuIRrncnyGhHwd6DHog9P5bG0xQS0vMar6qXWvCfMi4BxgQelkSaXM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxliGLu9Rj9qtYW2WpQoJzWfBQh89Erg2w/gWcJIftY4OIZYSo9
	mq/QGJ/BL1JYKwQ8qzIe3F9ubZziuDBQcGahgKLG/loGVHahNGfoE37LMElcXrEW9ib1hfXKjUE
	DPLtmQzeEzO3zN9ylzBAi/ZxshGCvZSOCXTmJyioTk+Ca4CHkJDGCDw+Cif9MpByiGEd3
X-Gm-Gg: ASbGncvURCmL6iR0w+FkVTKRLVyfyfgu31/lmLql85KQ5/wv084AsOhCqA/h2zmxoeA
	rfvg5sfJ9zdrPq/2QC1GTLM0WT9x06FBZCX3eO6igFal6EGMd1Z64PiOxW/9wrxkGga9xlOAwOS
	wvRdn4iZiRqx0Ulfd3OzP9bjVGgkgY0X4HPrepUatRXLG8+g7I2ARvD6kGXur/CRUlGtsdule/K
	tYh4JFit6IZI7prxKF8MVrYwSQJh8FXcHqL3uSOjbzDoa9Bp8x/Qu1V7ApNlgDw6DWbwDgMoJax
	QP83vWOv6mCWN6hZHuunYPUfFV5HKsAALdsrom8HF1YyWgkbhHMZZho2RGEvyTpl8b5NSkP3OmY
	=
X-Received: by 2002:a05:6830:6484:b0:72a:449e:2b69 with SMTP id 46e09a7af769-736ecef9188mr9330718a34.28.1748956673520;
        Tue, 03 Jun 2025 06:17:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJzNn7xzYSZpmDzRz5bR4WkPRFG/MM1S0QGnUE/tMoDRu36FwucQVvMhTGP/O7jMEzHNHQUQ==
X-Received: by 2002:a05:6830:6484:b0:72a:449e:2b69 with SMTP id 46e09a7af769-736ecef9188mr9330676a34.28.1748956673048;
        Tue, 03 Jun 2025 06:17:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533791d105sm1905969e87.209.2025.06.03.06.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:17:52 -0700 (PDT)
Date: Tue, 3 Jun 2025 16:17:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <fhzdhzxdwcoiuhx2eogpshwt5cxagjkrygrefqikmfbx3cfcov@awmhgrvurnfi>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
 <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
 <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
 <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
 <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7Sxlv6rcLNew9I6wm0Ty9-Oa1BHlsKGD
X-Proofpoint-GUID: 7Sxlv6rcLNew9I6wm0Ty9-Oa1BHlsKGD
X-Authority-Analysis: v=2.4 cv=Y/D4sgeN c=1 sm=1 tr=0 ts=683ef602 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=G_5p7y9kmCDjZpQMCqIA:9 a=CjuIK1q_8ugA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDExNSBTYWx0ZWRfX9C/nxrKGU4SZ
 3mLWgD/HbkppksvXtU1zwAmWm3nQZXA6Hp/Vtn3KciAjkyBF/1WUXq2wKXe2I02/hvHYXPnl2SL
 wj/4YevYHW/CqzMje7mG5wyLOVQUanl6iSh9SMACDbuAcllSLaLiHoYqE7JLAR4QYYcTWyg97VO
 nkgVSPrpP2Cgwv6XlHT8t6DZ9O+lAA3pBC/6V50hvonWPN0Bag9icBINsGJkNtMrhPAnop3BpYm
 eOVC7q/v8w0+dP0BTT5TiFeOg7kvK3vkEQPPhNWZ4Ld5/w78uDVLhhuX5GICYk+7EtXHxnz/42K
 /lSkG2ehJrpQ3rD3nyWtmHqXwMZhCqJjuaTAqpbGr4jGc7BAg260Hc2G2XyV0H0leh5uMlQJmuu
 ujdKyCjWTSEOYIqx7UfTGZJj/1dHUMaicmu8qVy3QtnM8W8iG4YHGl7GTt9mngwMh+93mnDA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_061756_036268_37A9BEE4 
X-CRM114-Status: GOOD (  47.39  )
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

On Tue, Jun 03, 2025 at 01:03:11PM +0200, Konrad Dybcio wrote:
> On 6/2/25 10:55 AM, Neil Armstrong wrote:
> > On 28/05/2025 18:56, Konrad Dybcio wrote:
> >> On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
> >>> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
> >>>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
> >>>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
> >>>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> >>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
> >>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
> >>>>>>>>
> >>>>>>>> The DisplayPort phy should be left enabled if is still powered on
> >>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >>>>>>>> PHY is not powered off.
> >>>>>>>
> >>>>>>> This series doesn't seem to solve the USB side of a problem. When the
> >>>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
> >>>>>>> clock, so it needs to be switched to the USB-2 mode.
> >>>>>>
> >>>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
> >>>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
> >>>>>> the USB thumb drive twice for the first time (only in that sequence)
> >>>>>
> >>>>> Might be.
> >>>>>
> >>>>>> But there's nothing interesting in dmesg and the phy seems to be
> >>>>>> programmed with the same values on both the initial and the subsequent
> >>>>>> working plug-in
> >>>>>
> >>>>> Please try using a DP dongle with USB 2 passthrough (there are some).
> >>>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
> >>>>> devices. Would you be able to see the USB device on a bus?
> >>>>
> >>>> I only have a dongle with both display and usb that does 2ln dp
> >>>> (I tested 4ln dp on a type-c display that I don't think has a hub)
> >>>>
> >>>> USB3 - yes, USB2 - no (but it works after a replug)
> >>>>
> >>>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
> >>>> at runtime?
> >>>
> >>> I think so.
> >>
> >> So after quite some time playing with that, I noticed that the USB2
> >> device was never actually kicked off the bus.. and works totally fine
> >> after connecting the display output (2ln DP)
> >>
> >> I was looking at dmesg, checking for discovery/disconnect messages,
> >> but the device was simply never disconnected (which makes sense given
> >> repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)
> >>
> >> I also read some docs and learnt that what we call
> >> qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
> >> and is unnecessary to set on USB2.0-only controllers
> >>
> >> The USB controller programming guide though doesn't talk about DP,
> >> but I'd expect that we may need to set that override for 4lnDP+USB2
> >> use cases (which I don't have a dongle for)
> > 
> > Yeah basically we need to:
> > 1) power-off the USB3 PHY
> > 2) switch to UTMI clock
> > 
> > In the following states:
> > - USB safe mode (USB2 lanes may still be connected)
> > - 4lanes DP mode
> > - DP-only mode
> > 
> > But for this, the dwc3 should also get USB-C events with an addition mode-switch property.
> > The flatten DWC3 node now allows that !
> 
> Yeah, I got even more confirmation this is intended..
> 
> I hacked up something that boils down to:
> 
> diff --git a/drivers/usb/dwc3/drd.c b/drivers/usb/dwc3/drd.c
> index 7977860932b1..e5a0a8ec624d 100644
> --- a/drivers/usb/dwc3/drd.c
> +++ b/drivers/usb/dwc3/drd.c
> @@ -464,6 +464,11 @@ static int dwc3_usb_role_switch_set(struct usb_role_switch *sw,
>  		break;
>  	}
>  
> +	if (dwc->mode_fn)
> +		dwc->mode_fn(dwc, mode);
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index 7334de85ad10..ea56f5087ecb 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> +static void mode_fn(struct dwc3 *dwc, enum usb_role role)
> +{
> +	struct dwc3_qcom *qcom = to_dwc3_qcom(dwc);
> +
> +	if (dwc->usb3_generic_phy[0])
> +		dwc3_qcom_select_utmi_clk(qcom, role == USB_ROLE_NONE);

This part is a hack for devices with no USB-2 passthrough, isn't it?

>  }
> 
> 
> It was easy to tap into because there's already mode switch handling..
> But obviously it's a hack - should I register a typec_mux in there?

I think so, we should listen to mode changes, instead of host/device
changes.

> Should it go to dwc3-common or dwc3-qcom?

I'd say, dwc3-qcom. Not all dwc3 controllers are USB 3 capable, not
talking about the USB-C.

> 
> Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
