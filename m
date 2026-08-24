Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E8FC5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 08:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG+7JjHgYQQv1XXbpI9C9t/z9EqcdzlQC+pPGv9PGfE=; b=wfpfupYCByIKa6
	PeifynYqnC+aRtsvMhRoo4TFzAIwKq46WOs7mUlg585rRWhFtdGS9MBz6IssL0KBIt+2rUFzdexPy
	UtJtdaky138OYDxr8cUImfFEdmSQnDRmQA/gm6mTkPrTiueurDnjfOV/T3ZZ/Y1En0lSt7LWz7LpB
	iiseOAZReHdKpNhmTsJoXmRhMFGP6gJ9bSctGekz1YBTNcrZ+1PT8uE7NONPUaslu95QjauFgk7Zc
	gM/1foEoqBU9hdtUe9Y0mR/LBUuv6oyAlbSN1lwe8OgEJ5jZy65EsFibTUInPlMONTmWjKoWp+Jdx
	ZX5+SipPcYgMxgMS3cig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQWa-0000000GF9b-0dcy;
	Mon, 24 Aug 2026 08:59:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQWY-0000000GF9A-32my
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 08:59:23 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O5RRV13067164
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 08:59:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V6Uj6C5D1+nrV76LvOx+T31xK7JPMs+/Y3X09dKPsuI=; b=YdlAzuQVQpyMLmwr
	8zZx/r5jylDIESIHG7/yJft+Xi2E9KLzrKi1FRjZKAGGrY7ZvBshpymEhLnOw9Xq
	+MtQX6w1fgZuk5AqDO1bENgCyHpdT4EyNKlepIjE6wcB64k1ldB584NXWG3PIQkI
	JBlJ/NDxW7X1OX2LfFKYSUCDdIsaTAoo0KUqZlcsNvVKILb/sPecYkdZvSjw+7Nk
	4kLyODpIvZ1EyQiJ3XRwjK8IWtQW3NvW8G8N3IzZh/5jN8XCCt82sZSnAznOwo1C
	MPb59y0sIZUJ/OHH5IpC6JTxQ+zh1J1BYRBHPZOCioUl8R9ebcWzIugl2n+KI+eR
	jDP0+g==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g88jpht28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 08:59:21 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-97c3746cd0bso35991241.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 01:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787561961; x=1788166761; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=V6Uj6C5D1+nrV76LvOx+T31xK7JPMs+/Y3X09dKPsuI=;
        b=Dh+TLNxmUozBQJ3D09F5Sgs2RD2i1CUFCbHRQaiwNNAAPYv94pGrwJmOme0lTnVM0C
         gbLGwkWhWz3epPi97Slh57zeNU5ZS5fLfTFLCfTY0wEW8VIRs6JOj7FNi547sipGPTZA
         JzjEjXy0FQ2zyx5lhLf021zLTzG+3InKYq4DfXwFduBTsMMd0uyJ81TE/nRIIACs8W0U
         oaTCqwmDH076di9zKBTnb02P2qSmWlnxBxYbPkpxhOEQrYSWYB7B58r1SVVn7w4lp5i/
         Vjl/T1zpH8tWDe1xNctoK2mOaLdEBERm2MzcNK9lMaRBxawAWFglqC1qKb0zbJgaihkG
         8sxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787561961; x=1788166761;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V6Uj6C5D1+nrV76LvOx+T31xK7JPMs+/Y3X09dKPsuI=;
        b=I+qV5bqlTVMjciUg42Bgf1jc8tNkSgo+rFwJS7V6u/U9mKIuiDjYw8ZV3Vi5r8/02v
         iQE3fH8Nhth2LSAfrsJeXQtxrcm6zFqYvq1BwjGbww+yFs5okd6b6hsUk17yQz1cNVGj
         mIHhkGBz1OoY0/vA5fcmPUmPn4xcKgBvmv5/z3zvJex5USPpRTvhK77/3G0gznPZus4i
         gUH7wqabqwtAfizQQESXuQfhlWofYbSsoWcc7Ydm8SVto3h1ocPobG5DSWnRZRV3S73B
         HqjEHEFBV10eLfcl61wZNL9X9Nb24fr0P2QoTZcVuSDNeoHEmNnDIhaa0h+k2TdDkuw1
         xiBw==
X-Forwarded-Encrypted: i=1; AHgh+Ro/ZVzBE1R6WCtQHmzZvNVU2/ThxbgpXknFKP16AhMN0JO6IBhMACc0891N60lZiYwk5QTslBKLN54=@lists.infradead.org
X-Gm-Message-State: AFuF++mbgqki4EGYjZNaCP2coJHHOplVHZ5rRWvzHlrzubjCu8uUHaly
	6hW8tQaCxxSSgXFEl6mcjeaGziF29vtHkCBQIiWv3/GYXVRCH8FoY5A6Fpb0yupCTQoeBlRFKP6
	c4fJ/nma4Vwv/gNKXGLr2MVQKJgVtxsJLFOFF1YL0if3WnXOYRmddN4q9oo0GoLReSt+j
X-Gm-Gg: AR+sD13LZax+o/B5zzyFqqj2K64ZHgZ7beqBLZFHGGF8i9SJ5aTdSNsc9CdUd8ZPi24
	IERrHeyURgyUHukoZYMgrDDaBcrBTq3olO5tXR7Ek1kCBPUyiF4OXPWcd6t+xngznBKjayzQxUM
	uQI8C/04BEBFF4X/+UNYT0gulQPxe8gAs2SAmRHpBloUEHY5gn82klJNFcn3xNbJ8CvU/G4I8NQ
	/bLxsaADkhpqjfQwnS4EBAugOC3t3mswE7oUG3M3gJvwirXVU8MZpAk0Jtkw0UqkJ+VNidAUpqa
	ozMuuhtYBH7A1lw/a1RBbPjs0DUFqX5uZq1kGBZQXSd5bog7IJrVw6RA5kMtquyaq5z9/Mq/ghT
	68cnrhAWdyLXl9p4U4rEEn5JY
X-Received: by 2002:a05:6102:f90:b0:779:7d3b:1398 with SMTP id ada2fe7eead31-77a5edee8a5mr3657466137.0.1787561960768;
        Mon, 24 Aug 2026 01:59:20 -0700 (PDT)
X-Received: by 2002:a05:6102:f90:b0:779:7d3b:1398 with SMTP id ada2fe7eead31-77a5edee8a5mr3657442137.0.1787561960402;
        Mon, 24 Aug 2026 01:59:20 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a59e001305sm8088185a12.4.2026.08.24.01.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 01:59:19 -0700 (PDT)
Message-ID: <2febee95-3c24-4244-8a21-1b769e90b003@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 10:59:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/14] arm64: dts: qcom: ipq5332: Flatten usb
 controller node
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-4-8f355d7ff0ef@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-4-8f355d7ff0ef@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA3OCBTYWx0ZWRfX81UPqSO59tlJ
 xwn5oG/6BtX4m2nvM4swFPOHS1X1C0i74PoSiKG0Xu0UYVIGoL0i3SOlKJ7zH6ca5UudLrEmbTK
 SR1Bj45x9iYWfx2W8jKyipZGZzf0BgxlUJ9TWFul93jpJpotDxlXQCUmo2kiYz1DEPrhdMsfIaM
 0BU4h5UOMmuuU3Tcr1w8kqEXo/5O7RgKYon4kkWGmIuQVCJT9lFy2vs9siqP5eUbbBZZdUUbAc3
 yuxtBRHeFWR1poaXQZa/bLsCjKiJM5VWa0NTwytyC/ILK9nEwrfegk0xa6DhXh5FvZP9AsiTu7U
 FzPh0MKbF+WMhkHdeZrUwvkTuJ4fqBCpXBkoM9iinBOu2SxMWj622W9JloWfLg6Dgf6AnEEVxFr
 KgRBWdVp5DIJ+Qli9t+fDIpksodGXnS21s5KeBu7Ep21drOYNvFBsyICnqpxn8IroGk8JIs7uzx
 thrxLpiibc/8EKJoNgw==
X-Proofpoint-GUID: l-fzg9jYA8JjBnqr62le9__VvCmZ2yex
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA3OCBTYWx0ZWRfX3H2spV9BHSXn
 BjObrPzE3l3ZOm38PnTxWzUntfLL80zg2JpxBW2xTlJfTt/dchRCrTudQFTCmhQYJJHZt0KdHRM
 US4Pszb0Bj70BXo8E9HPfW18+mxcU7w=
X-Authority-Analysis: v=2.4 cv=Xey5Co55 c=1 sm=1 tr=0 ts=6a8c07e9 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: l-fzg9jYA8JjBnqr62le9__VvCmZ2yex
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_015922_786228_7859AD3A 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

On 8/12/26 11:34 AM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Flatten usb controller node and update to using latest bindings and
> flattened driver approach.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
