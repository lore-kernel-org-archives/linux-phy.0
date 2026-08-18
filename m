Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3D2C5DF80
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 08:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aup6KPMlnsh6ukO3No+nX4QZJyAslESoCU/OW/U4aX8=; b=l4kISwPZjX7sBC
	hwrKAF821ycy3rArOOFQOVOalqpO7REmGJSoMweTPUpVtvmHtNNUIsle8TQhtkKx3KzbPUwmzAPTp
	wKdKm/wlh3XU5yQRwbNcqeHPllNWrzeaMFMkpX0t560as/9RDE/Xcb7hItfApgwWwvgiuOFuVtcs8
	19Y2Mi+GYqZn+rYkL3EeHooLRmbtWQ4s2RXSUcRBVGpCV1gkdzprZGQaIx77TUg3ovOpLbyUpwsdt
	YxEmG769o2I7ek40vrm+Y9aAqvkPaKFNd1uhEOj54og7zBX08S8tLKOaRHyz7uqE1AaB2VnCwApb2
	8p61JF0hkWmHRiBcaRfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFdW-00000007YfF-1uvM;
	Tue, 18 Aug 2026 08:57:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFdT-00000007Yet-1NLU
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 08:57:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BNJW722899
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LWoV3r+YPiscKAy3H5JzA7RjIekZzVMMLL5OXDd1iD0=; b=h1YXZb/apjm+o+yj
	D6/wwFQ+XyMLCBzqrCPZ89IVFPd0h+hrIPReUhWaX1Y9ILspzdYjczNngWvafd4A
	jHJ8MQl0iaTXzw4mqPw+LQfgjdr4EaawzIRYNaiEPGf59azu2DG+PIEzWs2xbadP
	jFiWIxXRm4EsKbaySytz1alkgyPbnS/u79oYPeDDcRnK+fhnHoFeI0nIT2BUXSgB
	8t2sC2j+YV7BoKTCwq6YUoAPoO2+HrrDlGTcu1EnEr1d8WNyrXDty1rLmmrNjjb6
	LscySl1vtsb1GVd0BzojtT+Ai/eZQfWIRi3UnEZel0Ovrg3wSRQOszTZqdRY8PWn
	b2TvRQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4615kk9y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:57:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9310484c005so2631485a.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 01:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787043449; x=1787648249; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LWoV3r+YPiscKAy3H5JzA7RjIekZzVMMLL5OXDd1iD0=;
        b=kjZZ0aRD9CEfzRIT+zLQRDOeL8x7dB4SFa6LJ1tZJhs/Hro7XfhVpR36rpZIDOhXdS
         RQK8OhWVnyjuSWhNrR480A/a9wylANQpsH/T5RO4zvQLx8GlAIS8TcQsoDi694fcFyKJ
         O23q+wwLCCfZC/AI8eGZa+V7LG4IJ4CYrndaffq8fAHzc3LtY4l/F7svtXyPkeBv43Tp
         sawODUKN7PH4fB0so3zZ7b2/FWTWDYfqhPhkyKgNXAp68177iSsO3vTY5oPaoAQroWIu
         VkrwqnQOMqrAGjDvdFsfqULERG33me6wcmT5zy93K9L+8dpQCLbldNXYmWF5HT7chJPh
         fTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043449; x=1787648249;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LWoV3r+YPiscKAy3H5JzA7RjIekZzVMMLL5OXDd1iD0=;
        b=QfHK1iyu2upqf+XJjMo/4vXy9sTnOitAHbAvyml/gqEuarkMtfOO5TKhn148Kwe7oA
         +n7/TET8p2PfjHEQu46x9vM/O2Un6yt3YZbzveuZcvAJbzo11He3Mm8IvwI+Pw+UR7HS
         EwqeQSeWhhirKPkTMFzUrcMkHUp1Y0Z/+wWMa2Ccfc7Q+coMsNlXDoM52DjFy1+U/Xua
         YtVEMnmwvoeRJOKohSvkyAVqSe+iE1XCDdoVeRO37O+YNHmektFvlnBDFFq+TVR0/yCk
         w+Bf2aUWfXJzQa2XHJ/g7FitVnhehEF8ZojvtF2cPJo4o78cKglJ6qwErw6PD9iTuNQD
         DGBg==
X-Forwarded-Encrypted: i=1; AHgh+Rp0hjU+fTEfqs8OwpqVaFQkPuFIY7Zabcr5BoRxtsRyyGl/cPxv9s+bSWad7UeefWZ5aJT2XT0cBAI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywce1uDvMCmHL17UpDOiaXzp52t2mqW1Uq5IU4iS7VVdMUr3xA1
	2UUsSx1Be5DV5w71hZQW8sPUYv8lOtRL2BxVuC1qD2uPE0AoHG7ZNRD5hqtX1B37DNyjPI2fUS/
	B5Vxl4T2lnOBK3ShuQkDzK1EtWObLEXAgTlHyVoZRydePDDPw8WshZ9gpbrWqT6rZMs5pnuaYv/
	e9
X-Gm-Gg: AR+sD103z+sN6uhW0glQ0TPYnd5rtJogpWbXqH10BogNlzDTnx1G+OhjoE/HLKlErO/
	OJJKUjBv4UXpt+9UhSVZZuHtuvO43Oi8klvGp6aDk5j92euk5f3j6fky+pE2ebog0As4TXSiH4O
	6osTtM0T4GD5A/B/JBU0PeLFLKvZlpTCtgcRiP3Rp/gNDWNKN6dRfOf2tL+Ncn4EsQfuVs7Bv9a
	UisyDu7XUd2OKztK/kz6GMPknab2YfLcmLs1Tj1osBqDDb2oTBwLRG04snjU4+3PpUcvn8Otujw
	MjfpYKPcCpLzYUTMYcTy2ASdPjlcm3KHpW1dUoPeuuDYj4VriPQ9nqkmPKocKTGMwVWrROz9k59
	fFxLR0wAhY4UG/mH0yFMgIIMl
X-Received: by 2002:a05:620a:45a8:b0:92b:7420:bd58 with SMTP id af79cd13be357-936d1ed8aa2mr2213171885a.0.1787043448948;
        Tue, 18 Aug 2026 01:57:28 -0700 (PDT)
X-Received: by 2002:a05:620a:45a8:b0:92b:7420:bd58 with SMTP id af79cd13be357-936d1ed8aa2mr2213169285a.0.1787043448574;
        Tue, 18 Aug 2026 01:57:28 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185bc9a35sm117355966b.63.2026.08.18.01.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 01:57:27 -0700 (PDT)
Message-ID: <17cbf5f8-c23f-4b97-b971-6b6f4f3226c7@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 10:57:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10] phy: qcom-ipq806x-usb: fix the SS PHY
 TEST_POWERDOWN bit
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross
 <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
X-Proofpoint-GUID: izhAJKgG3GGIBgk_61iSiZ7mwOhr-Fj-
X-Proofpoint-ORIG-GUID: izhAJKgG3GGIBgk_61iSiZ7mwOhr-Fj-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfX0i8bf2sqFE5n
 zrPeen5fDcRgj9fx3z6k6EzduqxIwppJxFuIrCRjOzPA1/EywYSDPWJ+3PPDUX1ALpC+vQbolAd
 z5Z2Prd07CH9qQkCLZsMBghr2j+J08LkEZKxDHkvKnsmJB5qdf5mucAXyYgNaYhTZo5RUmK/uF/
 gstmMdAuZJvgHeFGC1Pt/o/irtaEmHNBD0oprLk8xgtb0Gb6HhiFrJDzkbkCf52cw/cnzjIh/0N
 WM4atzz1Sz4k/cydey2hZq8oX3HlCOhh0rfy0JRFu8RVxrrHlZk0qVvxZI+lsKo4LraopvThzu+
 yKalguo68iBavRb1GzKKQBke1lDLlGjY8zxwPdtz4sVnogIyw5OyK7lPUYcd/rLWCE1RQe3LJ6a
 4m0O06LhQF3T0GX/pkzcH7UnY23CYofGmTCqUNqQ/Fnm6bVUEQAmZTbkHEjnrNKKHQ3aNhZCL2B
 4aIH/FA6UnMCpzQd4hQ==
X-Authority-Analysis: v=2.4 cv=Ruf16imK c=1 sm=1 tr=0 ts=6a841e79 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=zhQxU6SgEyqCUrVtDRsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfX2nPNDGV+Phdz
 fcq0KUXTYqBB7NoZAzIb2nCHY6qAZcHJka8EIwLRET+vCrnMMHsEJoUfKBqv0AMmubbDRJ0ikiP
 5y6MHzWIuGYo/RR09CrKtg7s0wFOOg0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_015731_381246_FD9B79C7 
X-CRM114-Status: GOOD (  10.70  )
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

On 8/10/26 1:42 PM, Dmitry Baryshkov wrote:
> The SS PHY exit sequence tries to put the PHY into retention via the
> TEST_POWERDOWN bit of SS_PHY_CTRL, but defines that bit as BIT(27). In
> the DWC3 QSCRATCH SS_PHY_CTRL register TEST_POWERDOWN is bit 26 (see
> the downstream phy-msm-ssusb driver for the same IP generation), so the
> sequence pokes an unrelated bit and the PHY is never powered down.
> 
> Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
