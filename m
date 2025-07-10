Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72834C83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 14:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5TRO0X+emGNhUczVsrGdk8cwlVdoYzP3SjpMi2opkg=; b=jMsQxj2SiULf5D
	j307MFqUP55WXbv4VGaLVZoypFHuJORiRUW8WTqXc9i2+V0Md39TKcbqDERGnGmwuLN4kZ0wO81ot
	VSZcsddwikEVuS5g9nJCMWQXEF/9uT14vyt5WbUcMxeMbIdF9TSCgcE16Wpc35pTLfihGrscc3Orc
	X/oeLsTUAHOHnwBtxiWdYos62S3PfB7l7BOPpbfWm0ZpsUhe8tvM3Nk4kRDZFDPMpyVGIRk/FOF/o
	cu4FBia/6d4Li7CFLwibpU43b7h4rkX7/KBf0S/PVUBVt0RUakkftnQYReOjDBmSxDC3duaE5ila8
	ySYtKpYrrho9L/vkoDpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZryG-0000000C4Tk-0VBs;
	Thu, 10 Jul 2025 14:09:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqPO-0000000Blvl-3DUB
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 12:29:51 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A9WlkW010092
	for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 12:29:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YMeQ302waQ/lVXch317TVOxg9bPEhO9O7NnF203imC0=; b=CJvsZi1q2495tCk9
	46Vx/lRJaGBGBSBROIyzMx+d79OA5D5UDuImKmIxj8N1mnV0JnLcCew72NyQkMrr
	SW8S+1Re4Xx45SpgGh3ysN9pN4WUZSARzaVfmlAY8rfifFl2U1+sj0oxEs7AgOJe
	+s1u2tRcBtvtfclseXQMyUF7RsgNg//DW3Ae+qXRKIEc6dHG4NLlKLo2IG+qQ34r
	OCBQFB14A7Cu2Rt0WVmrWPLsXat8FilyQKDZh9FgW/ySmthJrITPnyMAWVIGSFXM
	psxM0OH+e7CPLz3WKumov50EYpClIWZ+T2SprOBbJOQ9LcCE9iwvFG5vBV746lnT
	KIA5RA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9dvx0t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 12:29:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3eeb07a05so7923585a.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 05:29:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752150589; x=1752755389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YMeQ302waQ/lVXch317TVOxg9bPEhO9O7NnF203imC0=;
        b=mmUv+y/YWOa4z3kbpeIVuRX04oslho07h0pFPZkZcR0SkaI3JU/j+R+VRee/W8PJN5
         s0ychQLnupePf4Ai+8x/HKCfsQe06V5MCWx1ZjFGlVsg3mwvw+Fvc909R89yeZANl7Qt
         rcjv/5mAyjpiFDKbDZVApDkTGOmyAfesqOsSJUe8wLGXvLQe8AfHruuI6sSihlnx7nTn
         /X/ZaRgescDbMzVZsUy4Es1uaYLoATgxm7a9sP9d9Q5WhqzIywXPvakwUHdNqCUYENlO
         a8Ghc4JcLSe4J0dnoB5IRwct9go64ZBokXDKgIzV23jAP2AvlhvDdCNjNDSvmwnSrkiX
         TUhw==
X-Forwarded-Encrypted: i=1; AJvYcCXrCyIWtrOZ2POzkeZBj/zHpvC5ivF6BGdNZzLVmK99qB3QuBww4JIvKnktC9vOMsnQPQ8yBBl9vBc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRIRGsncp3/xce61AUyfh8lcGZY4FjgLq0SJTqs97FqWw/ZvOW
	aZTb4O4atZSzp9sFZdHab+4SCJ4Ts/R3SoSLGPNg9sDA4krMa5ud80khREMMBSLbn9c3v/J9u33
	/3Mfm/uB6RsbQAH/kdLzdVHkmKDd/DGd16P1p17c7/IXEx3AxrnoaBEol+H6y8gYttqwq
X-Gm-Gg: ASbGnctyvNfSy28ONcQ/GK3/HsDQHO3gf7zE97N5/O4PMwUOMbTjyzA7T5EiM1UPYCd
	y1X+OlHrsbTd4GMA9rHc5Vgy1LtkzLl0Jd0kP1Tae2bEkIzTrSINVnbQEPlA24KKVG4oacV2bA9
	1VyGME+H0TcAAZhh5QTj9UZbGyjqdYSG4sJFe1GqCVY0GtTN97S+DXi4NCFRkEtX7WzGeH3/oRL
	t3yTfwrctr6B/gn7+Y0iN8/BktA+F/6NoH6rbtnSfPgRx0ZcCLOp1H+ag6UsoLcC5jPBNV6powC
	pf8X2ueFDZT5aWz7SMzqtVEM2Aq8kEajMq2Xb85KbcLPkL3QREvpr0DOlToSjp697GTl4WaGUTj
	Xkbs=
X-Received: by 2002:a05:620a:192a:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7db7d3ad273mr306326285a.10.1752150588599;
        Thu, 10 Jul 2025 05:29:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoLijVe8n8HkS++sYfgSY4jCehRjGuNzgRewdZVKw6l0oW8rg4uJs1mwTv59gejgnKmNBoVQ==
X-Received: by 2002:a05:620a:192a:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7db7d3ad273mr306323585a.10.1752150587891;
        Thu, 10 Jul 2025 05:29:47 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c976f333sm803699a12.64.2025.07.10.05.29.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 05:29:47 -0700 (PDT)
Message-ID: <a2567891-1dd4-44ff-9853-6f9a451f0a74@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:29:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra register
 write for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
 <20250709-sm7635-eusb-phy-v2-4-4790eeee7ae0@fairphone.com>
 <7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com>
 <DB8DGDEN23D2.1GFB8XI0P3YLR@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DB8DGDEN23D2.1GFB8XI0P3YLR@fairphone.com>
X-Proofpoint-GUID: mXVzbpGuE1b7qRar9Vla_i18ZMRzS5LK
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=686fb23d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=RC4AtmPg6BGSdlR6CyEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: mXVzbpGuE1b7qRar9Vla_i18ZMRzS5LK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEwNiBTYWx0ZWRfX939L8vJvhDfK
 NJKm5Qx8dpBVTdkgKOGnlgoeEb9kbM0+8qV1Bfb8z3/3iX/8S8cy5O+uffRkM7nPE+vBNlJPQW5
 LIeqwuIxbwteHwpKztPbNdtQe+Kyw8pMameyE7KZL+C3DJD22igWtkfVCe4sYD7DEr0hsp1ZUKZ
 7IqxMvvI3CnPgWFXsH4ZvGyFu5uUtG69y4E/JLlmjaQoO2s5p6hf0s+50snzKD6d8Lcs7U3l2DZ
 4TtqUGU0YSVtZi4RkaLf6w5MpK4KwE6LsTwgnOrHs/v9QG0DWhg2M2S8iDs9LyYbkMDdnqW4PkZ
 cceDuvm97DieUSGW6XhpHNgEkuwoRGgJlhNIIxJ8PJ+mD4Etg62TiYZXxLZerQJX2Y9I/ZWqH4d
 4jiltLcpP2vydU/ZU5zNh8SODbYW3K+/PX0+P7XMmPLnc807wa98R7d6/HVo9ompGGVQ+qPk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_02,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_052950_929958_39E317EE 
X-CRM114-Status: GOOD (  16.61  )
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

On 7/10/25 2:25 PM, Luca Weiss wrote:
> On Thu Jul 10, 2025 at 2:10 PM CEST, Konrad Dybcio wrote:
>> On 7/9/25 11:18 AM, Luca Weiss wrote:
>>> As per the downstream devicetree for Milos, add a register write for
>>> QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".
>>>
>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>> The downstream driver supports an arbitrary extra init sequence via
>>> qcom,param-override-seq.
>>>
>>> volcano-usb.dtsi has the following which is implemented in this patch:
>>>
>>>     /* eUSB2 HPG version 1.0.2 update */
>>>     qcom,param-override-seq =
>>>             <0x00 0x58>;
>>> ---
>>>  drivers/phy/phy-snps-eusb2.c | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
>>> index e232b8b4d29100b8fee9e913e2124788af09f2aa..87fc086424ba4d9fb3ce870aa7f7971a51d4a567 100644
>>> --- a/drivers/phy/phy-snps-eusb2.c
>>> +++ b/drivers/phy/phy-snps-eusb2.c
>>> @@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>>>  	/* set default parameters */
>>>  	qcom_eusb2_default_parameters(phy);
>>>  
>>> +	if (of_device_is_compatible(p->dev.of_node, "qcom,milos-snps-eusb2-phy")) {
>>> +		/* eUSB2 HPG version 1.0.2 update */
>>> +		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
>>> +		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
>>
>> Said HPG asks to clear bits [7:1] on all targets
> 
> Okay, so make this unconditional and only update those bits instead of
> writing the full register?

Yes

> 
> Keep the write at this location, or move the code somewhere else in the
> function?
Let's simply do this instead:

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index 87f323e758d6..6c44d0366f34 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -392,7 +392,7 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 
        snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_1,
                                    PHY_CFG_PLL_CPBIAS_CNTRL_MASK,
-                                   FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x1));
+                                   FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x0));
 
        snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_4,
                                    PHY_CFG_PLL_INT_CNTRL_MASK


Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
