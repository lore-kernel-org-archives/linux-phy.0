Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E81CD0438
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 05:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmCUerbuJFuYwg2Tr8yR1T4+i1X+aDvEL6t66i2Eufc=; b=s/khbkfENB7LpH
	0WtTaJAP+JJJnUF5l1e0edOIVRvcCeHEMf1wWOQi6ywrPMzlOs7Z/CWQusA4jU1nrFlV2+d/7sEYt
	h3Qys+F1mjsXxqGDBHGXLzGw02UDMJV7h/5e0ewt2QF8lpdDSsNLYcztfnucLIMxuI5lCUbkIuvor
	aqhUMv2immDWbnlKAyN7GnovAE79Ili+B3f2LwHK+0s5B6i0va12kHCjcjVilvGZenDFq/QmwGf0e
	S9iF8bjqtMOUlfQ+cTX1C7knPWnuAvQEnc2Npr+nLxFjN8tGdrtLIi2Gh011Se54fxzQSjUqIYGMq
	WiRyMra8+osnhCBlGh4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vczK5-0000000CQsz-39KE;
	Tue, 06 Jan 2026 05:09:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vczK3-0000000CQsb-1Ceq
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 05:09:36 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QPUn2922946
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 05:09:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2SOD3/kMNlfHRzbXU46DK5ZMa8EeIhEik++3HN8TI8M=; b=oTYb+aAgfp2A9v2J
	orEbkKgpTBwvRdFlaqhGnsrOvu11w6tIS0w2/5KJ0819eaGHV4lGAhjw4MBiYjSS
	r+UPeIyW4T5LZjLcvRasq/kcGBUQOpeolPhpqUmd2sNJ0DrA37bU4Q3nFmnTZpPi
	/oH4j+aiNqoWJzs62DiaqObqZ+tnbNvu9uK1mnVKcEv7MowI/ET32QqdgJt1mvT6
	QrUoPaJbpKkL2YKzC7oz6y3CbzVwkT/1k54es74bODoqLgz0v/q/J/hptgauJWNm
	gi6gCLwQfLebAwmMhOiwvI8VWpW0ycMt7NigMWgWFh2eTfjYd6b8uBiA6wPaoW9P
	e1qpng==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgscy8d18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 05:09:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so508469a12.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 21:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767676174; x=1768280974; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2SOD3/kMNlfHRzbXU46DK5ZMa8EeIhEik++3HN8TI8M=;
        b=J2Exm0XGQZ4zUVNXY+PyZuUPKCdjnR2AOv5Z2gi3g70QLtWDErhiuXwIymX3Z+Iqdz
         ZuE3qIA2d/dX/9lb9DlsYAHzEeuk/HGt61+k4NbKr1xNVRlYe6pvqMLWa3VSI9xl5kRd
         bIELAz3TM+O+Pl+Ewd4DkHyaaW7rKznfTnrXy7fLmpvhm9LvmKVV7/wYKhKIAeKwHD0/
         ys+KgMB57nEq8aFAcB/3HwV1CDA4J+vGeMADEzJPbPSrtb4lvl5/w6O2YIqYm/MAyJoI
         CjtdAGXqMv1zXCSXvT9aau3W2ZueTeoqE3pMDPLtRQVUEYEaMkjfkqJA4KWbATewvFJ5
         TM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767676174; x=1768280974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SOD3/kMNlfHRzbXU46DK5ZMa8EeIhEik++3HN8TI8M=;
        b=b4wAOQbHDCzogZwPBjT77VawtK4XoTfFU3Qz29/RYrxXO66x2OanH1MnmjRSgkCL+I
         SjgYZXxsCHyba2FfUTAvCUZLgNlTKY+cSwL2hMh7rnjdqFVymbnkbTU1GQdDR/ewRH7B
         rEJU/yM+bGSseF2PMfKc2O3wBCO1hjeqPkkCrT5QcJz5zlkAKRrUTYHVYHT+T9ArudPp
         yYTAwAxyLDkB397BJHconglb82IjQp5Z4E1g0vf9QBaGWmuh/igezIsrIObz3NTEnHR5
         JnpKq0WE7oJUF6ruNbl3rEZrugs9zK261zluN+DcjydeiYStJqW983XHSyQvIWzmd5o3
         PUnw==
X-Forwarded-Encrypted: i=1; AJvYcCUvwwd3CwlfG29OkFadb6LTfa6uh5PR0I9VqHDk7R/KkQK8On/Ie0Ks4xt7R3JvGV9EKzFsWKhvSUk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1Gxrpg9qI6ar0KHgRFP/hm+cPBIof5a2TDZqb8kgtGvSnLkJ4
	Ry+q8bthHVOlr3YIvZtHK9HBYg5a9iq9PW+TxHudV36/jDhmqIfUmhdzuwnxr/SI738H2bevOSX
	92hI/qftIHItV7f1qoIktICiUf/GMLCtuVpvV2UCfeNVLvtC9W5ug3z01PkYzlAOcXYlv
X-Gm-Gg: AY/fxX5AX2BCbebtEKwX7LZqfw1g57zG9Ux8Ju82j7Jy4j+LuIwVielTZ2797p4a132
	mjGhzXapdlrgBN+v4D2pCfx59PkXUyBm7OTqGRSqf9Tyl91ZQZs1wCqXuJATqnezyFN2O8jwdqf
	F8jRfHl7rzD+3ItelGVbsjAt1RvGrYygFKHYNz7y93vEm9NuRbgHxQjCPEzmQ32Nf8yLrR4OAd6
	3zBFZbb8VO4l65LLzdCqWUP5QULpS5m0KSHyYFH5+YKWWgKqsQmHaTv261e9QAyG2CNoWP3mFy8
	qxGRw2289J0/Bi4mmktZzsroADRfgmlf1NyznNmTdTBfoKovEEg7fbgoTw0QzlC6yadZpbrXlFm
	QTAxrKWnOcq71XcFuACX6/ERzFFQMCuS3hX3BQYGBr3nTOg==
X-Received: by 2002:a05:7022:61a6:b0:11b:baa5:f4d1 with SMTP id a92af1059eb24-121f188c67fmr1608364c88.6.1767676173660;
        Mon, 05 Jan 2026 21:09:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFThhMjB++4/K7Cfub+aD0s+vY0i2Zl9hrVvNzgeOKOfo4k5ujmMqUBKzWI1psutADRpneDZw==
X-Received: by 2002:a05:7022:61a6:b0:11b:baa5:f4d1 with SMTP id a92af1059eb24-121f188c67fmr1608336c88.6.1767676173072;
        Mon, 05 Jan 2026 21:09:33 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f248c239sm2032747c88.9.2026.01.05.21.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 21:09:32 -0800 (PST)
Message-ID: <bdf65a65-baee-4afa-a4ed-4dc51298c304@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 10:39:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
 <20251021-knp-usb-v2-2-a2809fffcfab@oss.qualcomm.com>
 <41f71be9-595f-4a81-b089-27bdcc778c8a@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <41f71be9-595f-4a81-b089-27bdcc778c8a@kernel.org>
X-Proofpoint-GUID: 4Khq7GHZelIX1Cv8tNAsHkwcDLj77RQQ
X-Authority-Analysis: v=2.4 cv=fOw0HJae c=1 sm=1 tr=0 ts=695c990e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=ocyYg2yDLqSr0WdFaBIA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4Khq7GHZelIX1Cv8tNAsHkwcDLj77RQQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA0MSBTYWx0ZWRfX9HIEqj3qXUVT
 O4OEGcXWJuDFrkVsscU3lEjPpLQHti8YIAlHVEpDXcGX0khfkwNOQwmNN7+hnNccLLnVyDWugcr
 v8w6Hpa2kI18aum9M5cWTFrAxhQxSwwaoKfZ7AYrMv6PsGVxH0acXOjn2sMy5x+HjOfrMHgvxVW
 y6HmeOxB3GN3QS/xXclbiB7DzUErX3XdsqhndE43qppUBQptjr2mG8CFKxp7LtiEtfuizZWZdjs
 jH9lAMdnbg55t0Xl2gjpIw+UKdjN2kZYmJHNN3c/X2/1dzOqteXX1mxVf2UUghDb8KjLa2VNLt+
 nd2EmmqCP5r4oEaFYlYXXGYiBgtQ65HMgdFU8FMXnYORYDNnOWZWS8QvvRlZtrCkXOp4YfZ599x
 MPPkzJvIYCPBJNi/QL5UsvGQeP5ISxB8Ff60/6wMVsUM0H6FhJh1hmaXxn7G5/42YG3An2YsIbo
 JffS9ImfEbiUlTSIYIA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_210935_350979_71D86E95 
X-CRM114-Status: GOOD (  13.37  )
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



On 10/23/2025 9:09 PM, Krzysztof Kozlowski wrote:
> On 22/10/2025 08:50, Jingyi Wang wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
>> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
>> Kaanapali with that on the SM8750.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Hi Krzysztof,

  Thanks for the RB.

  I was about to rebase this series (phy binding patches).

  And wanted to send the following after fixing conflicts (as glymur got 
merged):

diff --git 
a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml 
b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index 409803874c97..cd6b84213a7c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
        - items:
            - enum:
                - qcom,glymur-m31-eusb2-phy
+              - qcom,kaanapali-m31-eusb2-phy
            - const: qcom,sm8750-m31-eusb2-phy
        - const: qcom,sm8750-m31-eusb2-phy


Can I still retain your RB tag ?

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
