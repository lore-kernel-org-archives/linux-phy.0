Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16DFCC5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhoSmx9q/tbmlZMfZJIL/7xCGeuI0zJfRSDVo9YdR9I=; b=4yH3Dqp/j6n0KO
	lVKmMnq0tPv3qq7NGTTThFIJiJx5yS0lt3BBqciDMzyPe7IjIe4bb44j8ra72O4G24ogePxgkc693
	xS15dL/MjCprHkRTXMO7qGnPf9LvoZi0NJXF3ZJkIhUhwStKDDJa43rTQjDHKEPC+NVUrjStZGNWo
	CDaKfe0eM5KWr4U1tk6tywbKFZgDJRqCul/qdTkZ6jyUmAVCmp+W4uxXZdQ7lm/JWJwkEYZ5r6huE
	Ru3pb+7ftWd95tP0f6MziPiFgTJFXpfF/1UuPDYJ7mwE/7J90xLIWRZidGDE2kKUW+Jd52ojlfcRm
	aBEKdKSUdAresmEijfjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFmY-00000007ZVD-2XAH;
	Tue, 18 Aug 2026 09:06:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFmW-00000007ZUt-14i5
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:06:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BKG41061753
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:06:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q9xW6coXHENj8pGdnUFBq6uIzAz9ShtjyQGjynV6M8Y=; b=G345N9gh/SFKyB4U
	SVhrtb9xePJszi1CVrMpyXPWaCMaoHoMJmL0etlaE9gt8oUi83kFV8fZGq50WgeY
	JhQZsQ4yheYCfcwNibUm/ASYX2MfA06Pmhvwe6Qux3C2fm8js3mo8roxjDpVvUNr
	MHdDc2NRR3fneCEhJnLehXNCBrZHRIY4M/i3ouvMJfQv0h8bHxOp8HsnyjfVvj6D
	B65slKFoPSIVlOdY1ls6+6RPPL2pQGKXaHfVhlLluvHrFz4h44ZFahpcs83u6Vzj
	H1EJdj5jOJG7ewaSjXg6KAO5UCFt4F8cH149SRFVwPpPQrEnXueF8QXf1dW1NPlU
	bI7RdQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4fvp17wx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:06:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92eebb130dcso42587085a.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787044011; x=1787648811; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q9xW6coXHENj8pGdnUFBq6uIzAz9ShtjyQGjynV6M8Y=;
        b=E19JqK0LZwYRyx7cxmIRNr7BROvwXiH9ydmmZYtQaTsbIZlllObZdtJZ5Dd8H+CQz4
         PwWBpHu4pkbtLrYJTb6jGSK6EbmXvuq1XnZwipKIJHtFLX7Gc/Gjkk18g6dkSvtiphNP
         v7yystsbWvgywY/IIeQYqqm3vJGzpiWiHd/ag/cPfTQIgRS8IVkYgUlXMx+t0f1BIICl
         nNBcfpbE6QUvqMMDnvEQhGwGHTB4cQjg8NC7Q6pXB9aM1SwPltqgnfZiDBEOgxN35PwR
         8Ju0Y5vHCDR+hsM59596aQLGbzB5x76frvmLlSHv47VGRVDpFf4S1uAtxpm9JzxLWHmd
         +70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787044011; x=1787648811;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q9xW6coXHENj8pGdnUFBq6uIzAz9ShtjyQGjynV6M8Y=;
        b=FIal8zA/gAVtClyA88bVsLmNNtV4lUrhFj8Tiuv5muw2n0MkbsLFniT6m50/dCSvhC
         E/R0oRt3kvz7I6sBVtFoZtFmWtMXCWJ60YF/97mAPOqEqc0hKvFdtT0yOeVdZ8CJcy+R
         l17EkWIcgpqtxGr9qbNaMHvniAMpNR+VaCCrqn3nTFNa9flQEQF8EjW7UyE3UV3FX2AV
         sW6+HkdgnWF1Y6d8Bl6Kj/yKO2yEaIe853EA46cZfwVCsv9IO8lTZfqmb2B5NHqvu9e0
         GA4WJ4VGZihV7oYuz6QYo+Ub5kHnZHN6tLcLvHttVN7NI6OVYdEDywGnvGktOrq7qu/D
         nYLg==
X-Forwarded-Encrypted: i=1; AHgh+RpWAL9fTvBdJA3VBdvn4Zia5PhRFy3MrdhHAX5DDvc0rj5iUdi6XbHK/8HiCc+IWL+47UB3lcWWrEo=@lists.infradead.org
X-Gm-Message-State: AOJu0YybgKh3hTygRhuGYUgXxvwGRV/Fyp1jki04PNR55YseVuNSLFkk
	43RfLzSp8g8H0aGFDHfJxlv2uXPz8Ss+CDRNnYh2dQ2vMsVWTbxsvcch7bCTUpxOv6c/ObWHyCz
	rRRwdC94unBT6huFh8FA5xq9bEC3rgMHqm5bZeBkKz6DfOOvj2ug1s977FTW+nUHTES5u
X-Gm-Gg: AR+sD13n+cqv48nS3/XWSCzdJwPWrqBvu6cgF8TKdvZbMQhjm7kw1uwcxhZwg3b9p0Z
	ayfnV+gKLBn7oAhldf7Elow2Usoh2R8vOx9ZseEcZtNscnU4k1823qerrG/FYAKrcZjXt15Ne3L
	vINRobAWTFPAt4tFanFeEiojGG2NxVQ7MMiN6M8xRVZfR8kLrB0IDMPT8X4ZURaqcFALPPN40Or
	2Vz6pok417+m+O7+jhgUCRiBVkZq6D1JM/qyfyfWQ2eJbLWNrkHrs/y1xcv1dFENgOzEO7G3Rno
	qxdFnGMKR9Funnd5LGyo/qOdD5RRkhvqrhfHDrpKSpZPMTkHOgGRyGQWz+4EAmvFAFUqKVq45Re
	Zr5XPbkL3YxFENvd0GpgEHf6z
X-Received: by 2002:a05:620a:6910:b0:936:2f59:dfe4 with SMTP id af79cd13be357-936d1edd4fdmr2349733785a.0.1787044010691;
        Tue, 18 Aug 2026 02:06:50 -0700 (PDT)
X-Received: by 2002:a05:620a:6910:b0:936:2f59:dfe4 with SMTP id af79cd13be357-936d1edd4fdmr2349730885a.0.1787044010319;
        Tue, 18 Aug 2026 02:06:50 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c217fed68f9sm155764166b.27.2026.08.18.02.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 02:06:49 -0700 (PDT)
Message-ID: <dc555512-3161-4c4b-975a-7ec60a8f1a48@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 11:06:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] ARM: dts: qcom: apq8074-dragonboard: enable the
 USB3 host
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
 <20260810-msm8974-usb3-v1-10-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-10-1a47e1185524@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 1WgR_f3pf2r4ewmOMZNWVllziOd5VCB0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NiBTYWx0ZWRfX4Sm61e4iBviz
 xfZy5JhDSkf35D4v+dxdwXB23ABaXycSpZgsWHzY8F/J9ZsE8gX+RWpAcGPCBd3gUHxc/dzZfFb
 757q9GEPoTLp2yXCxDBojCx3EWgiAJVpWey9lJ747uFFqjTVruWCzBak8daV0+7bE0FZy3kj0j1
 1Ykrj43/0vPxAr131m/hJ1b45ARpbHiI2f9521Ml5eBvudr92dFPOAY6+ft55BadCuAu7bvlnvH
 GYkTkNoXs8vxUB/iHaECytufP7PZuJfFamphBhCYVsUOWvtfndODIpZLqH8O8f/9gOpXZP3VwIp
 QaXGaM5rsuJfejsCfy8yxTIwP9XQtokcUthwJJB6VaIvybgcu/Y4l4bxpfU1U6+jDJRk2c1iv5P
 OiHkhYo1Fd0WJwonHpU83zZsjTkJzuKi13heX5uJS9H3onOF5L69TqsR+yxNhfaPYytuO34x0LR
 7c9c4GnutstalYyb7IQ==
X-Authority-Analysis: v=2.4 cv=K/IS2SWI c=1 sm=1 tr=0 ts=6a8420ab cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=LTL54F7UJFTHhO7zyW4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NiBTYWx0ZWRfX0sF567+RGOf6
 pS5WfodQxbWbX/qGswZ1lsUhZGF7IHAM4hsymx6OioMoJrh1H1kLlWO73LSHd54BRazTLX8EhAF
 PHqMwnzt5+g5XkcscBIIvCTLmAfHdeg=
X-Proofpoint-GUID: 1WgR_f3pf2r4ewmOMZNWVllziOd5VCB0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_020652_419816_42B6FB88 
X-CRM114-Status: GOOD (  12.69  )
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
> The USB3 port of the dragonboard drives the onboard TUSB8040A hub with
> the AX88179 GbE controller and the PL2775 USB-SATA bridge behind it,
> but the controller is disabled and nothing describes the devices, so
> their reset lines float and their supplies are unmanaged.
> 
> Enable the DWC3 controller in host mode together with both of its
> PHYs, and describe the onboard chain as device nodes under the
> controller: the TUSB8040A hub pair (with the EEPROM-programmed
> 0451:8041/0451:8043 IDs this board reports), the AX88179 on the DN2
> port and the PL2775 on the DN0 port, each with its PM8941 reset GPIO,
> all powered from the always-on 3.3V carrier board rail, modeled as a
> fixed regulator.
> 
> The SuperSpeed PHY is required even for the hub's USB 2.0 half to
> respond: with the SS PHY left uninitialized the hub connects but never
> answers enumeration at any speed.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
