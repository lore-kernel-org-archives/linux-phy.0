Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B38AC83F25
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 09:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSErWHDEQBU0ICnddYdMqotoGzsAehpUV7PKCm+yMRo=; b=F2KF/8jJvE6Juy
	WfRtoeVmr919HPs7HKCj4vAM3GLnU4mBc7kCnfvCCJ991hAu8KLgJnDPlN7YlERPRBMGUNpdwRMnd
	AFDS8vrHi/dRCVGgcJDeEAH3wItLKE9ht2Y8jeb9qOgLBNcALLtbXL7nbpbNGBaDQPYBCGblrIbT6
	AV4XxP0nuL2vjK9pMpX0FyE9808KV+cvn+VA5WFwqWh7RCP2RXGE0mlBDRMW40QuMNW1PsBwZxcGf
	SgKWpMveTEPPeBJLRbWX01Kkfdn85idimHr38/+QX849QGyGKCzJ1MM/EUOCyFU3e+CAx1u6NOouE
	u8WG1lFUBdOz6YcryJ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue9OQ-000000021af-0Npw;
	Tue, 22 Jul 2025 09:34:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue96c-00000001yM6-0RT4
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 09:16:15 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M5IuKw015997
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 09:16:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vj2qVmbFMaIyCB4fFcjZkvN3Nf3AmYPVWBGkIQJ88BQ=; b=hfCiDfZvIX5K1oa8
	ZKGwkG+iLpv25X/t+UGqea2KZQr1b1s+QNuuYavYNmOzcUWtA0ldyS+kVEo+JzVC
	uODsV03E18gS7vRZV2+Dl1QFWP8S8czhRHiyattAwdYqpDvFIgtIjdPaW2tSOso3
	ZVoDUNOTvWvRxIFC31Koif+uPiwSgBGVfa2b1aYY71OVnxEBa21lygIS2xH2n3R+
	xIrkwmTUh+Rneaae0QBuP49qwsEAKXUQ3QMCYBIzeD0SW5dlJ1dYVhl8xN7Jhl/j
	my6GdB3BuL5q/Xkjiw5bC9c4S01ykE6k2LPajI8P3xM/V/jCaQuYx5jIi91On/r5
	BWTC4g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480451gqan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 09:16:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e33af599bcso828525885a.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 02:16:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753175772; x=1753780572;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vj2qVmbFMaIyCB4fFcjZkvN3Nf3AmYPVWBGkIQJ88BQ=;
        b=H31GJN6quxgtFA9uAQsQomwK8zyboLlNW32XsFH/Tqobj6XOQSkRFe+rRKxQhVBvxW
         vfY5UdQzC93AaLJd+yDhwgZLCv0e5uxW0My9D6mQfXN8SN7wnzUt7kPnM/7YCzFbrkfU
         1QZiMI0uaxBWKKVRpiFSwzDG0AHug6Rd+BBmseO4O2ukVhzY9BTYU85tYRmGowmqWozQ
         CDmE1ykkPkqiLSHxtx5hjrm3bt+x7wd/j8fgJyZGAyl1WSA5Uu4+tCWD9wtTrSQxJX7a
         UvYXxkzApmL7GPevdoKQSbad2M93pImVkCD9IbUDHsHNPitzZ6MbvbzD3bysvXVveGOv
         VWBA==
X-Forwarded-Encrypted: i=1; AJvYcCUrq95VMu32JioD/rGx+iGcIMs5uByH3K924LUFkBQo2MDl4vEyBKBmL9uVsjSQ/M0WwkOEWGTw8xo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxW5CWdrOK7mKQo/WV7hWv+W4+wwWKYwKjk67W2sMuJaMEMDL6b
	JJfbsO4wYNQqYjFk20dNhspA/PIkApa/Nic+cS/RnhmtYmq+2SK0kW+55Jv2Hc5IfQPmV5WcbZt
	K6DIBQO3QL398N35W8H2Tdw1oLSGGBuAlxeFd3WftwrC166+j3RMH+WyVEEbB8MpLnchN
X-Gm-Gg: ASbGncvULC3t9XBzMitODMIFysXNA1AuIOHJywe92OQ8tLXe8AiYae8verSZpXL/5rJ
	smDwzaJxo6aY8AVRhFWtIuHanImKZEeYyj+Rk48qF4SRcf5KGYwHmsW5RSmXWps9rY282P4S7/u
	qWIgJRsssyr+IqW19LBHlNWznD0kBwW1rYypxyHdpSpJ2U6dLmhUe2W+Knitkxrn46W+L0YHZHq
	SpT3VtOz8ytWUky1CruvGeTbm6cGECzGpubDH+O7V7JwRRW2giT/8Z3TfUAPxhx8IT4qzkCAwO4
	OmuqHtWIJvbHTGNeWMbhJ9AeJeNlCwBZKjwrrOEWSaEmBOMa713hBxyE6vDRxWCKWAm0TVOHsif
	y/X+tc+UD38vk81RqPGVLzey9Hy7Tkm0HYHNmlgIia30=
X-Received: by 2002:a05:620a:6284:b0:7d4:4d55:98fb with SMTP id af79cd13be357-7e34d8bfd12mr2927130185a.3.1753175771796;
        Tue, 22 Jul 2025 02:16:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSkMXJjSdY+QbXyPowudZre6Wg+1jtRGLZBt4d77vKPTpJ93H01at3Dm6Ol/RmdyOnjJl5Ew==
X-Received: by 2002:a05:620a:6284:b0:7d4:4d55:98fb with SMTP id af79cd13be357-7e34d8bfd12mr2927127885a.3.1753175771347;
        Tue, 22 Jul 2025 02:16:11 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::55f? (2001-14ba-a0c3-3a00--55f.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::55f])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d91034sm1867648e87.144.2025.07.22.02.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 02:16:10 -0700 (PDT)
Message-ID: <5ec480ac-ee60-473d-83e6-c2f25d3d30d8@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 12:16:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] dt-bindings: display/msm: Document DP on QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-1-42b4037171f8@oss.qualcomm.com>
 <e15df8ba-f058-4eb2-919c-bc327290e66a@kernel.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <e15df8ba-f058-4eb2-919c-bc327290e66a@kernel.org>
X-Authority-Analysis: v=2.4 cv=EIMG00ZC c=1 sm=1 tr=0 ts=687f56dc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=730OvTMgWo7gkawVqJEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Kvlmai5MC-1jxfnKNrMmKOMh1smN5HNA
X-Proofpoint-GUID: Kvlmai5MC-1jxfnKNrMmKOMh1smN5HNA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA3NiBTYWx0ZWRfX01RtXcL/PqjW
 Yx1rLBC4i0vruNOarCBKUL3pp3ARWbw7LNo8vxK0qzYv+pjpoGD38CToyPCZx2DNXzBjkJ+hcrH
 4fPwph5ysPzIUL4rXSU5F0wOziXMyIIINpuQCUB0apW9N+A80EzW9O4/SVgK9pjxqAji73V58ml
 wOAoHGvTn8o+5fuz7A7ja0ZcnkbGj0Bu1vlI70GFfEyH8F/gvinqlQJK1Lx6TGDBhMG2BQXu8BJ
 yfQGnjX4ZRXdl+oSPRmMyeiIXByfYrfR7JUCyOgtpY6T6QwCM6/2yHta7uyKg3BlZBMNuSkmPc6
 nzHWqsFv0x0sAngwbL5brA3K4zkfa4HmMu8gW1oczEJlgaFhww9kCP2RJrdnMehbqRfkcX2pJmQ
 kXRSgXUv0OeTNaiRPPDX2Gf/uN1HKU+yXLfhLRn7kyCtRTHYVwVxpZPOhs/g2jqNKVtxwzHM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_021614_263988_CE5CF79F 
X-CRM114-Status: GOOD (  12.77  )
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

On 22/07/2025 12:13, Krzysztof Kozlowski wrote:
> On 22/07/2025 09:22, Xiangxu Yin wrote:
>> The QCS615 platform is based on the SM6150 SoC. Since the DP hardware is
>> shared with SM6150, the compatible string qcom,sm6150-dp is used to
>> represent the DP controller on QCS615.
> 
> 
> No, you cannot use other SoC compatible for different one. Look at
> qcs615.dtsi and board DTS - there is nothing saying that this is the
> same die.

Please take another look, we even have renamed qcs615.dtsi to sm6150.dtsi

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
