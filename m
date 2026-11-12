Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EC1606A32D
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0MSsaKVE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=PqDq8bmM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=FAo/josp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dhx4ZZJTHyt7yKNArA7X/Cxtaeqt5J17nErz4XU9SlU=; b=0MSsaKVET79B94TayI36+zLcmF
	He74PYYcmCOI+wqYlY6MpH50mdjHzAsDZnFOGJDbyvg87GqAwdkRXh0gk/p3FF4yNT03m0LSGblTL
	AqJN6DCDNcLxFluA2nOCCL0ldmRVeOD5f3v4/k8ea2PqvBhePTio2CpHoBd5bMjTC3nSAGQvuR8rm
	wRxcj8uIlmNwjwLyjAyropRwUXg+/qEyk6OqhHhbfEWPsQnhweWOnPjLcRJoeIpd50++iSh5tuT06
	HcuZK0Ui1SegDxUNXLN+qpSdriiNOBsdoBLQR741yFwKWP2Ugypt3OuY9H5d0d4LrFT8TZYP5tthB
	MMt4ygFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQua-00000009KU5-26kj;
	Thu, 12 Nov 2026 09:16:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQuW-00000009KTK-0Wi5
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:16:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AC7omdk2819624
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 09:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MEnoxCVc3mFsHG46MOit1/TCAB8kmZyxFDbzRzr1Hwg=; b=PqDq8bmMBO3nXfxg
	aSqmeUQiTKT/yujxY7YIbp9ISBVRoCWHUkhBG+ZQW4PKPkfKUY6STNVS/L+1cxYz
	SNiRyHQZsNJMbiALMTPbQ0j8zArDup57HdMCO+HOUWfiN22b5FdhaAf0DvFgvzpv
	npm8GB+mnNKP2Oh217jLN4ZDXKYtAUvhGbgEp55P/JIwbYxTgO+tLRs4Fg4hn2tQ
	0p1/xxlVKRcr+K7krvBTRli16kzrU8MMVPGSiYH+051WDMdIWNTTOiCgnpPLm10g
	a/gRG1BV0URfMYAoIzlhvxcauWH7j3mxXieU+idb2B0ulluVgS5fGMJ3Kr8Zg5sF
	Sz/0Hw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw9e18ahw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 09:15:58 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cdd48746a49so2355028a12.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 01:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794474957; x=1795079757; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MEnoxCVc3mFsHG46MOit1/TCAB8kmZyxFDbzRzr1Hwg=;
        b=FAo/jospoyDDGEcjzP9Hgz7MNf4YunJ/fOXkyShY2Puv5yGfour1H3PvWP8FZGde9p
         F27B+iZ1RLzpOXTddpc8WTWjA2HZngYnMIb9KsXRQS7vxp1L+nk/rwkE9eVr0mq5oS+A
         dDTOipiQzoNw6ITKDTtm5DDz+S6qOFPnu0JXSC4Yu09En7oSsfOhGSrsjCvSZDST/5HU
         DYe3In/2bG64Hzqz6Ron3V1YYHYhIUdHmjwHwgJtWvsoSKd9mvYesAtfWq340U926HGC
         M+L3suDVP9fUNPkoQ63OBZnXlGOfD3njjYVdaFqKNdkzECfp1oWHtR/oarDJhuLD86Bm
         +MQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794474957; x=1795079757;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MEnoxCVc3mFsHG46MOit1/TCAB8kmZyxFDbzRzr1Hwg=;
        b=O+bY85eu7TWwtpCU2drqoDe3/eZva4c+8TEzHrkaZrzJyZXwLaPJfUy3LONJ+rV3+u
         7jw20lqQqoxH9DyF38bGheuoqFrLw+pHXUVqH5F0y6Gkddnd6OGRY96FX9NXyf7HH67Q
         g1ln55tpo6T06Q4vdoTLhSHOZI6n0Mvfz3Em32pT6jjoYl/pl1+oE4wB8N6UbK3ft53M
         c+5JvcnOmJl4gKkiGNKsFdNKhi1PsJoKLrLfQe8aLSEVhE1kb8e/YwZ0jCPg7leU+Qs6
         zb7L6ndc3GLdICnpz8OahDdcrqmlXplPyIBzvRNYyLCAxIXJFIvX+UvBM+VyWMkztqD8
         7LYw==
X-Forwarded-Encrypted: i=1; AL+hErFeZpf6DScn0OJ5B+LzIV62ESmjNvWUIYS+BbK1usWUWwrb43DudMh4z2sTs+fovQSh4juCzU6vsNk=@lists.infradead.org
X-Gm-Message-State: APuU4Z+z+fpIJ/Xc7zCV3cjPPlNhKUZ7KPZcQCX/VIm63EqIW7s+aYox
	AKwl6UpT7UUHr0GR4Ha8edvGiuiiRECwDZOBcdt6XqDX4bQLuHHY6EN4svB1QuDDeArZYFuFcin
	cuFn9mdMGVoZj+Z3atL+AXjaS97oOqeNvnOLCKDP8WClWyokDz20zHeKu1Rr+OKdr2MQf
X-Gm-Gg: AYBFou1eBOeqHc/U3bZOnYRzK2+fLi3CX70uckD1vfx1X/quyI8BeFpp3SuiKea8gWZ
	5tv0uRQaKiGGsOxxD1EIqkWUKCUnNikHjZjTETzOJzstl03qRht6tmxYVd4o3Kew5t9loepzU1g
	XFU/+9+jsgsFE7yyun9395/rscxH/3d5ySfENW5SABf0huhqxgBFJiCe0FYWmXtcURFjffWgv2m
	6wXjccSVJj2pLDG5mXcljU6sNCtKwrDYq4PSdUIZjqesX+sCOLXZfoBQ4HsOQih6zsYQQbAtjaa
	Jjwz8PdYbnpTyUYZTCusdW03XfVnUlFdurb/LDQOk+q88ed6Ildmeld0A0ARI2xVlTVUju4vatH
	ohUyeskOYmPUF7B0LiKyiKRi21i8niCxUsOhRKWA2HKuu87pUyaCwB4QuoInWBtHf0nV0oQJnFu
	Fry17WgiZAdlxztzw9cDHOb2fvPjF5ifr4BnT1FXtC
X-Received: by 2002:a05:6a21:498a:b0:3e2:b295:7678 with SMTP id adf61e73a8af0-3f2fdfa38ffmr4070796637.50.1794474957481;
        Thu, 12 Nov 2026 01:15:57 -0800 (PST)
X-Received: by 2002:a05:6a21:498a:b0:3e2:b295:7678 with SMTP id adf61e73a8af0-3f2fdfa38ffmr4070779637.50.1794474957003;
        Thu, 12 Nov 2026 01:15:57 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8bd30c8e6d4sm1051351b3a.48.2026.11.12.01.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 01:15:56 -0800 (PST)
Message-ID: <6ed0793c-76ce-4d04-af5f-8987311c5c0f@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 14:45:51 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
 <asNji2_GUda8x245@parshuram>
 <3a3cf540-816f-41a3-b31d-2902e7f4cf01@oss.qualcomm.com>
 <033c8432-4a03-4f38-b0a3-28f5d551b0ef@oss.qualcomm.com>
 <avV4B4g-NWtZbLuX@parshuram>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <avV4B4g-NWtZbLuX@parshuram>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDAzNiBTYWx0ZWRfX78B86f7qi6Gw
 fir6rseD9W+llZ9jCBUQJplYCzEGGjKBsWqn37QRjvPYnazK2x/b0OgORSU9mFugM5jz2xVMNKi
 0c8vcaSECck6cma0Mr+aZQaduSsdPEHHfveXrk2m490t/4ARA5ig0R9oknNzdkyNeQF3gfFUI1P
 tl+r8Edhvj7LTvwPFrw62M1/h4OsBYX+moBQQ9isfp7T1RECscgGdpLeFUcQIjlOFHTiTuPOWqH
 zlVc5pfdv+fCI+TGh/XgVyUiVn/J0oAmrXGSkvys1efriv9zcxwZG3kIysY7ohBmnfbUfarVVhC
 Pqcixr9QxIzQNFXqLHfi6L3V1LLIuOqfxgGgg5xsQ5cl0V16qPL2+HoYbkNpY4j6ERwDgtPFqcn
 IQNXDUiaeyQzANL/28SJKct0UocDdRrg81+sma6yeqyMaERFv+AngnHeYaYu1sphRgmutXEou0l
 eUnSOiZlW7RP8hFDMrA==
X-Proofpoint-GUID: NIoMVrk3eHFOSgRL8zxsxQclo8sZfBZG
X-Proofpoint-ORIG-GUID: NIoMVrk3eHFOSgRL8zxsxQclo8sZfBZG
X-Authority-Analysis: v=2.4 cv=F6fC5ahN c=1 sm=1 tr=0 ts=6af583ce cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=DY95BI2w6Jwo1tMKFB0A:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDAzNiBTYWx0ZWRfX3SBw9K1Jr2lL
 tNPw1ApApNiJkS9i+3qgYCoWoCZXbrDQka/LTqYiw2YiS0DQcT6PWQbbznm87sDbWFH6k4hrn/S
 11j36Nm2W8TQgjSg+8LZs6eVXj1dMqA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_011600_290287_8CD1D0B0 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 11/12/2026 1:55 PM, Vinod Koul wrote:
> On 27-10-26, 13:37, Krishna Kurapati wrote:
>>
>>
>> On 10/9/2026 10:29 PM, Krishna Kurapati wrote:
>>>
>>>
>>> On 10/5/2026 2:14 PM, Vinod Koul wrote:
>>>> On 13-09-26, 20:10, Krishna Kurapati wrote:
>>>>> In cases like USB High-speed phys which can be either USB2 or
>>>>> EUSB2, it is
>>>>> required to know the type of phy (rather than the operating
>>>>> mode) because
>>>>> DP and DM interrupt lines need to be configured differently for each of
>>>>> them.
>>>>
>>>> Does the controller care? In preceding patch you defined the EUSB2 in dt
>>>> type, so this describes the hardware. So phy knows it is usb or eusb...
>>>>>
>>>
>>> Controller is agnostic of whether the phy is usb2 or eusb2. Phy does now
>>> its type, but it needs to communicate the same to controller.
>>>
>>>>> Add support to cache the PHY_TYPE and add the following helpers:
>>>>>
>>>>> - phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
>>>>> declare what type of PHY they are (in this case PHY_TYPE_EUSB2).
>>>>>
>>>>> - phy_get_type() for the consumers (like USB controllers) to query the
>>>>> type of phy connected to them.
>>>>
>>>> I am not convinced that this is the way to go... Driver already knows
>>>> the type and should use it...
>>>> we alreayd have mode, i am inclined to not say yes to adding type here
>>>>
>>>
>>> "Mode" attribute describes the current operating scenario of the phy
>>> (device mode, host mode, high speed, super speed etc.,). But it doesn't
>>> describe the type of hardware and hence a new attribute.
> 
> Not really. A combo phy can be usb/type c and we do set that mode...
> 

In this case, the type can be "QMP_COMBO" and the mode can be: 
"USB3"/"USB3 + 2 Lane-DP"/"4-Lane DP".

QMP Phys can be Combo/Uni phy type but the mode they operate in could 
change at runtime.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
