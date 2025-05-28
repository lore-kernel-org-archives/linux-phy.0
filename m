Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 011B2C3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 09:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0VlA7XtVUDnz/502HaqGIFnJQHLHlx40EOn7pIRVY0=; b=nVFAQDj9+sSmkc
	rPmGlCyIThZUFrlLrAtXn6laCZG8fKZTTpLwPOXBIIcQHuNp6eLAZ8pwW/6+WzOmiQK6qwvvYHMc1
	Dqo6HAUuyhq8J8TdMtcFqi3HWVqzdeGXUgyF5utli1LE4Ytipn9cWLFRgVZKSuB3mJKxNACi/vcz4
	OeL9YNCxhrgH0SRhfkTbWHnE3sM6bGLb7ktKraz9eK3V6vlPx24i67UI5AKDesNktJ5QbUNkW8Jlv
	GI/8SP75hMe6RuyplEhgkcjUuuICE964+xHx1ZZC1FHSizHtrscsPhqbH815EkePszn3DOu07bIAd
	ihzihrOGJQvIdmpf18jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKDB6-0000000CjtS-35y9;
	Wed, 28 May 2025 09:34:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKCeU-0000000Cet3-1vZB
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 09:00:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S7eUgm015869
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 09:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2mjSi52VDuOIqzhu/+qC9OKP
	NQzrY0pozp35vNraDBg=; b=IzFiLyH+shV+iJP/3J1hkJzMfO30UPgQ0+qk+fL9
	YfPKixuF861DjqDdVb3hlk0/QbhWHenkacR79mqktciUjQ4ADO6rli/VM8YjyJ6W
	f/SOYwlCkF2DYSWDmCcpYiFHIZCchwjeUPZVnaLUVmYl8P77hwaw8OJqrLG/6FkA
	jGVMl/DznoQz8El065KU356ImUzNukp2Uhv+n4Gr+XcHAx9fT0MHyLHnGaVYrAbG
	CO3irxsgJcVAbHydZcYlLq8oEzI3TfBBWBbWjR+s8v7/JWubBM4unnKDO4+U3KG8
	k5GSuL0ubWyVoFr0JL6awKRfN1TqOKitIayCpztbECwoZg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79p9pxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 09:00:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c793d573b2so768344085a.1
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 02:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748422844; x=1749027644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mjSi52VDuOIqzhu/+qC9OKPNQzrY0pozp35vNraDBg=;
        b=N1g6YMg2IRAjKXpYUvm4CjFjGNoDkOgDBStCQZXG3LmuhOKPUw9RKEuQGIXurY1kOW
         kiJ6rIGWv2hF3CSH0l7kXXMpbi/0SeIeMPg9vvKnE+yWkKhpJDoG1lSVzfV90MRE3klf
         +ngGKLJDhwPLfuPbR25kMP7pIm2UEeUWJk3dFe7Tgvvb51Z4lQ1YVgyDixUNK1gufmh0
         prSDebzHdqZd/HVt+KvHwMbZHDiTL7o6uirLirIgM0u6f+VqWun9xv6ZM+ZyHYJfrgVJ
         V3hKqZqNOgPDxMSqCr0jr3Uc45Bp/CZ3MW+eFiwgDOYb8XMQ2fpuP0NXh8rTzRrmcXfx
         slaA==
X-Forwarded-Encrypted: i=1; AJvYcCUEK+qZQlfrMBiMJNXUfYr0I4SLUpjVTy5zTQV5dFxCAP8BwB/ftS7KBjQFMpViVGd9FeKMa2RdnSU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRqKcbqmBY2PNK4vijPy4IzrgK4Q20mXeNZ39DSEND7/RADqQj
	PrJUQPMIrun0rfk9B28OhWeMEmQV99FQ/rZy7OHSNWiYpBhyPf5hx+HAjy46yrBxAjt0Cmj6wih
	WMSZ7PcCjL9RhH86ZxAWasm19NFIVuvD1Sn88AkayU5trLNmng09TihzkLjjpakOl88rg
X-Gm-Gg: ASbGncvhRy7OC7rRYGzQDDuIw+YQRr2dCBdvpHgPZqs5wyCXVmdzZZRj6oRnAkToPcO
	wDFyqVumkfKVMOS4nkX14Rugq5YyNEAve0kfK0qUntPff/6zsxoup8Jxk+/qoKhmjF6vSqE0Ggm
	1e4OrCmbsgP70O3iZNmW001adDi8yetejYjLU7xCkbBSNwcdqTGP3buFyuqCPOJxPGsenvCQ6Ry
	Xop+2iBOn9cMySIt74jvGqCR4AdUMxt8yXx9h1A4FXAAlODoH3U5ZNiA7f7djVpK+O3YbiIv9kK
	bHGCm2LBuS1xpkiXZV+vT1Itmiirjp9DSZhJ04l5Dm0B/o5V41F1+vUaQoeoNMcMs6JqqOirS7w
	=
X-Received: by 2002:a05:620a:240c:b0:7c5:e92a:cba3 with SMTP id af79cd13be357-7ceecbf9a21mr2666638685a.49.1748422843842;
        Wed, 28 May 2025 02:00:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhps16AlZrh7lPu8W80Ph0izdq5w8yJZHVSR7lQDLdhfKN1GF6pR+JV7jBPU8jReMa0jILtw==
X-Received: by 2002:a05:620a:240c:b0:7c5:e92a:cba3 with SMTP id af79cd13be357-7ceecbf9a21mr2666633485a.49.1748422843263;
        Wed, 28 May 2025 02:00:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f69a6absm190913e87.109.2025.05.28.02.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 02:00:42 -0700 (PDT)
Date: Wed, 28 May 2025 12:00:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
X-Proofpoint-GUID: 57M30cIl88_C7rv0NcrpKWZC8m63gBun
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA3NyBTYWx0ZWRfX4Ywy0YrPIwQ5
 seBEUZ3ELOb/+tKPDpHsWdBzckAn9xmBSya9TluhffaRmxLb8UwlrPKYTjMs8H46TClS9wO6Z6U
 j/o1szjCLLWjqS16FrAhFjXxm69tg4Wn1A7CC0ofmWGrgyQAvDxyp2GYlKLag9HJBw5Nm9pbGHC
 53vcDg4F3tn/hJ55vn00N20A9upYZjHPjkgW6e7IC3egQi8bMvoND6+CNyCLo5G/etHplTSXwsA
 yurvLQymQam6vGuPL44QQHr1ik880z+lIoGyGYuksyrJnB0kx3JTKIFOnRJx5Js0cxndtRqRE6l
 DAEouDh/0KVJBt69AoXzaBcTHUp/gjqj/gTJeLTkoXrYfbQDAgsmFZjF1nUNzBotPvCnhHpnLfv
 70ZS6YJrc5SJXT8f3TwdtyFqILWZO7XAEcfdy2Ln2ngWfK9HRpV5rrBXBHcaf6oEOUtE7USl
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=6836d0bd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=6X5T8yoRJbxqCL-bSjQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 57M30cIl88_C7rv0NcrpKWZC8m63gBun
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_04,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=497 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_020046_505083_E3162F23 
X-CRM114-Status: GOOD (  26.52  )
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

On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> > On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> > 
> > This series doesn't seem to solve the USB side of a problem. When the
> > PHY is being switch to the 4-lane mode, USB controller looses PIPE
> > clock, so it needs to be switched to the USB-2 mode.
> 
> I didn't find issues with that on X13s.. Not sure if it's related, but
> on the SL7, after plugging in a 4ln DP connection, I need to plug in
> the USB thumb drive twice for the first time (only in that sequence)

Might be.

> But there's nothing interesting in dmesg and the phy seems to be
> programmed with the same values on both the initial and the subsequent
> working plug-in

Please try using a DP dongle with USB 2 passthrough (there are some).
Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
devices. Would you be able to see the USB device on a bus?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
