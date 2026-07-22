Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E541BC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 08:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gnirbojGI+5KEmnH1QDJ0Y4ZcmdhRAsAEshdNxP9VQ=; b=TVbo2icBZiPkXt
	o0w8uTrghUR5xFUnDtW6IBWrVXl+0PnK5HrBLZYKsG3tZvUbjbQZXKp+oo/AJieEDx/YD1/th+zDp
	TBTXvdc3/10vYR+d6mZc+oKEVt5r5sq9jENWi1PNmxClK6SGuiA/xfMGfzvSNQdGFuQYFFtUgOAqk
	B3moe5/D3UdMpjuMyyBw2HbA7fWRMFZZ1giTx+rCvCYFcK6nN019mY7wYBnfwumwaGTitsCttZG6n
	CmXL8dzL4rEVg2DYycgs0mmcasq8+wLUT/KLWGgUDGc5oqZgz0Efz/BJB2qmy9R21dV7O2w2UuL4O
	TWr2wNSEMKlC5rwvEo4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRv0-0000000BCQK-2VEu;
	Wed, 22 Jul 2026 08:03:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRux-0000000BCPy-2wrw
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 08:03:05 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M53glD3883047
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 08:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3YLza+Mco6SqiShSL430kfFXyShTCFaucpwzk2WswoE=; b=VVwZCkgOwPI73iOZ
	ZbPgmLIwFIVHWIXa/2KJp7Iqw+SFOKxZuVnj/pj+BW61orvH2LQ5kTzZcseDxsRO
	bLIhflkxG9josLydQtbYv6M3cjJw/5NhjGTCXaVEwXPYciBMb52pbtL5XCrDVyQD
	U+AauV8gNp5s6f5PbA84eU3i7YjmFTbnP3F5njFgMgjifH0xrlO1teSjAg4LlQVF
	O1m35X2jM76qk2/hv+xcQlBPqdZUd9po68TjF0P2e3LTqwkqwkfL7S03DbwManOU
	wILyfcsU0PDJ5zTSoPoroRIgztNKV0zyLigmx79fs2SvvfXtD0Syr883WLbrzAuY
	5QQ6Lw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjntn11bk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 08:03:02 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38e7621655eso5459735a91.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 01:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784707381; x=1785312181; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3YLza+Mco6SqiShSL430kfFXyShTCFaucpwzk2WswoE=;
        b=IAOXSNd86lvlu19Pebvewn4KWdspCBv8d5g/lGDB0lIRJh2tCi48kjj82bHcviN8tP
         5h66qQotF5X11OGJtyhEzpYr3DuroFiLfi7zKEwJvwrutcONRPYK2y52ikxJaCfKVXC1
         mCwwFti2wqBEAYIVKM1FlPx9weBxrKf/Jc7gejoy4q+22CQida/U1Yp/XHqOXEENSVsD
         CkEFmb7VfCy2+HcG7+FmUVItzWKCbcvJlRf2TpcMxh2VK2oKSo5Md7xS4t2FmQcS2JPx
         a9S5apY1Ts6EzMpBcbZkjqbyT4ZHII+ckFn/mqIERr8ZakCDlVNZldp3QYI7TuuI5gdd
         RFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784707381; x=1785312181;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3YLza+Mco6SqiShSL430kfFXyShTCFaucpwzk2WswoE=;
        b=NKSlhZL811SfHtt+8afi02r7nG2YWpyLtIWZ6yS4UNepEpnPSjX7W0s/JYfozZFRwi
         YsRHRs+Jw0S80h3NPojAsp4Pucfe4qY7Wt8oRWsNgjCaqWf7RdFEXkkvhPAHPGtHcqh1
         lBZ/Hb/nfRRvEuIDsH8co5UIsIMTJIJdCkT10rOk4r5XV8evIPl71lVQnBcSS3vjtlG1
         wmsnUu0RceJqurFPEE68+72oj/qs/rPcrS8xp28oIUqEdvm6lAGN3OZEpnO5p0x+OULO
         C4eriffKH+wd5tl4FLU+CEKx/lnA89p9xsfnIuQyXM9AYm+Q3f/64jkNaWTQkLyPM10u
         tYFg==
X-Forwarded-Encrypted: i=1; AHgh+RqXOmsMkCILTHsheEIdTdJXBJybOIZJAnF3IdDZDG3GC3/qdTbZOveCC64mIYc4Uit7hkg4LHGcEvs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDYd0sB4m3C9NFCNsBZoJoaq7tDKjRrRu6TIhTzYm+XQYM2AIA
	o81rKuIjfWJnPddmUutg6ziVQrsQLiXmbeEqOZ4YyvAIFlRMjiGyMYNjiw5Dg8piM2uwdsJ7BIa
	rRES6uJCckJZhk3AKAUwY2AUCML8v8vOLDFLQqAoj3tIcHCp/97f7E0m96ge2Q69VfQNe
X-Gm-Gg: AR+sD11BrAqDBwDn1uGu/Y9sBE3J+dMYX79OwPhDGKLX3/SN1pM71ukJfbge1QZW93D
	mjSU9Gj8P1msChc0uA6VLguSNiu7Um7dY3HO3803BQxrRItPjdetdpExEWJEBZ9zUTVGZ9dcqUV
	QfY+j4CVkZRsdnDYOYIZVdqcT2f2UVZCul9EzhI/w14YmGhQnotzXVJ6FCTC4EfjUh0L0JksdtJ
	u+x5e/8euA6psU54L+Lwa3ryYgkZcxoCap3+VrVNU1HIR/LZAb6k7eutHAp+kv3ENUi0gJrbqfn
	ZGLjTD1yWJ3jkC3gCw/ac8FsTs6fYd36H/eNnku0rkvjqAMDD8PXR6YyCv9WhDpGZM2Fz+lEAYi
	9d7RzdHQx0QB9rXlVDhSYiD8CZJE=
X-Received: by 2002:a17:90b:3f86:b0:38e:7297:a931 with SMTP id 98e67ed59e1d1-38e7297ab8bmr14046155a91.43.1784707381427;
        Wed, 22 Jul 2026 01:03:01 -0700 (PDT)
X-Received: by 2002:a17:90b:3f86:b0:38e:7297:a931 with SMTP id 98e67ed59e1d1-38e7297ab8bmr14046084a91.43.1784707380728;
        Wed, 22 Jul 2026 01:03:00 -0700 (PDT)
Received: from [10.233.16.34] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38ea7aa85c3sm611869a91.12.2026.07.22.01.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2026 01:03:00 -0700 (PDT)
Message-ID: <515b04a2-b595-4fb7-a72b-2885121e0066@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 16:02:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/7] media: qcom: camss: Add SM8750 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <quic_vtumati@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
 <20260722-real-diligent-pig-c97d3a@quoll>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260722-real-diligent-pig-c97d3a@quoll>
X-Authority-Analysis: v=2.4 cv=AJsSZ1gA c=1 sm=1 tr=0 ts=6a607936 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eB01bHF-wB_RgGLiRNkA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: KCmgbkb5hP5vwyP47nMCXO7Q4PU0AcDW
X-Proofpoint-ORIG-GUID: KCmgbkb5hP5vwyP47nMCXO7Q4PU0AcDW
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA3NCBTYWx0ZWRfX4LmZHZumI2wS
 DZmfDgtZvZW/pYB2sax8H2aiA/SrplDLb4sfkCIloFgZWgAXdF7rK1Afc6iJy3TPvae+zfBCSDO
 qepibxZJ6RRYyHgGadjwhpn3ALfUZLg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA3NCBTYWx0ZWRfX3yplAfdMmK6L
 /mUWZoz40YLGCPJsThjzQeO6/mLjoIwvz9AIKlDqe2kG7RobirLi4qqa76tSvYMFClv3PyCssYc
 cXjuPcOc5pOE7cD7p8eiy0MOJsaJID7gBkmA0dU1oF7xXxNKTmy1KDs+cQP486sxWctwljOba95
 MH4eZ8KAyTUOQmO5lIjclcVYct2Bgj54laOT/bNAHAShl2tsGDzebn5M0qHDT41goxCTQiB/Hjp
 xdjeLEcdeSJJYlLWpmormWRsgwWblhdDzbjEVq2b9HjVEY0q426kap0mYtB3CztYLjCJhTBtaHX
 25Tl3ZWQKPHJ3AsRcrWv4O4Ns1DOg9qCkpb+BGC+vXd7bZDdk+GKdPZkauaAU5tk0OHZZuUerOV
 ZZQhoNYDhfCOBbJtB36RUXfP0ZKAwMAdGnHlcW07wzaoLP+PgmvYloTFGpsTbbgwm7aI6sJRcKm
 srI2SJ0tJ1Txdbq62KQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_010303_972429_15761F7A 
X-CRM114-Status: GOOD (  18.44  )
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

On 7/22/2026 3:00 PM, Krzysztof Kozlowski wrote:
> On Tue, Jul 21, 2026 at 05:45:59AM -0700, Hangxiang Ma wrote:
>> Add support for the RDI only CAMSS camera driver on SM8750. Enabling
>> RDI path involves adding the support for a set of CSIPHY, CSID and TFE
>> modules, with each TFE having multiple RDI ports. This hardware
>> architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.
>>
>> SM8750 camera subsystem provides:
>> - 6 x CSIPHY (CSI Physical Layer)
>> - 3 x TPG (Test Pattern Generator)
>> - 3 x CSID (CSI Decoder)
>> - 2 x CSID Lite
>> - 3 x VFE (Video Front End), 5 RDI per VFE
>> - 2 x VFE Lite, 4 RDI per VFE Lite
>>
>> This series has been tested using the following commands with S5KJN5 sensor.
>> - media-ctl --reset
>> - media-ctl -V '"msm_csiphy2":0[fmt:SGBRG10/4096x3072]'
>> - media-ctl -V '"msm_csid0":0[fmt:SGBRG10/4096x3072]'
>> - media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGBRG10/4096x3072]'
>> - media-ctl -l '"msm_csiphy2":1->"msm_csid0":0[1]'
>> - media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
>> - yavta  --capture=20 -I -n 5 -f SGBRG10P -s 4096x3072 -F  /dev/video0
>>
>> Dependencies:
>> - https://lore.kernel.org/all/20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org/
>> - https://lore.kernel.org/all/20260708-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v12-0-f8588da41f16@linaro.org/
>> - https://lore.kernel.org/all/20260720-kaanapali-camss-v15-0-c0b1c1167c5d@oss.qualcomm.com/
> 
> None of these were cleared for merging. IOW, all received comments yet
> you send work which depends on it.
> 
> This is exactly something Bjorn said a week ago or so. And then a few
> other maintainers re-iterated. Exactly the same, nothing learnt.
> 
> Best regards,
> Krzysztof
> 
I understand the concern and agree that posting dependent work before 
the prerequisite series has been fully reviewed and cleared for merging 
is not ideal. The reason these series were posted at this stage was due 
to internal planning requirements and the need to keep work on other 
dependent platforms moving in parallel. The early review is aim to 
avoiding blocking them too much. That's a dilemma that I was asked to 
handle it in this way.

However, I understand that this can create additional review overhead 
and confusion regarding the status of the prerequisite work. Will 
transfer your concern internally to try to avoid other colleagues 
posting more series that has much long chain dependencies.

Apologies for the inconvenience, and thanks for the feedback.

Best regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
