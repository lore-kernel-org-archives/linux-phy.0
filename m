Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87497CD3427
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 13:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGihJ7fY63cjwClcTO4+VIAIPz9grP3kHZHycVBQ+VY=; b=tAFxVMMiEQlDMp
	bXX1YAxFbwNM4k/9lqZ4lKbG+CEADNWpV41l4+bkgc2FHR8MPQJgB4ci1aSMJ5F7lDEK9K3KJzBIY
	9CoIXuSLvFUSU5BqvmuGy5eqgZIisX/k1nrrNKhPpai066IhHEtRTZ7gKsVS2+0dDtwWAjG7ewUyM
	BJLrLW4HyW+ZgzI72y1Z8/9AXLIYQ7E6PGO9vEvBsWQZ7IE7dbi21YD141HCyIK6lemLPdTa7v76N
	HgZ2d5ozjuJYCj63puYiNL0CimKgiDrkbzHIgCzUt5F9UuVFpthgT4rptFgVSkl8BXYSJjjC91f80
	aWVYqZ9I5s8bQCQoZ0PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKGH6-0000000GPMo-0SMU;
	Tue, 05 May 2026 13:57:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKGH4-0000000GPMH-1YRh
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 13:57:23 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 645DiLBp1961285
	for <linux-phy@lists.infradead.org>; Tue, 5 May 2026 13:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h0RVLE/qSnm/P09xzKEIzQY2p15aCFp93vrBJQ6M7zY=; b=Tn8GXoMj4m7fmcnO
	OWBAUFznqkPVw0GeGafLrUbyX4O7fAFIKI/nRzmorbY2qwT0+3l3gOtOZ67jl1n2
	C5u2nYtv+V47IfR67l9Xkk5YqGfHJmCC9hdL+JdmsFNqRnBHvEB7CL6C/isw6zPE
	N5qN5+AqpxPDu4GfL43OwtlajZwGlRdjgVije1mrexJ9IIrXkDcpXEtY+kwd0n15
	7sGrinXE5k6yySahlNSBDE8/Dkbx5LDRVnZO8C9NSzEDW4SRtffy60itHVH6tWd7
	XM5MqkeoCCOwJLbUB2wiU0ClRqDA7pXMmFSwMoSQVBpIMpeOY60oPsZAup2IxqyZ
	leXscA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxw5dvng2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 13:57:21 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2f485961555so1302288eec.1
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 06:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777989441; x=1778594241; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h0RVLE/qSnm/P09xzKEIzQY2p15aCFp93vrBJQ6M7zY=;
        b=PxUYnRSuREQvuHFp/NTtQpOEK7MW8GWMHLlFvwoggfqYntGQZnwDOBPYp7U1qt4O2X
         LgXqVXjGDnM3v0k9ceToNpio+w7gxZXKsMCXdYj6PHunp330rtoZVMmGaYZJfxz14cGu
         mP8sO+5aciuWoGJD1UvlTbqRTCoW8mPZlOJD/wRQzuiX6A0gARqZyfx3Cx3b8whvw9S9
         x5BhJPZD766Qy3sggFQs/jHHsxPUgk7QVtNO8hNac52pgb013FaAtzSWKDKPqfWIo3OP
         7ja+47S3eOIVd+JKvJL9r45sQW2dFA1GVs2Necrv7OAOnBz2g/g7YRkovGZ3pkAIl7NT
         cBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777989441; x=1778594241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0RVLE/qSnm/P09xzKEIzQY2p15aCFp93vrBJQ6M7zY=;
        b=LFjj0ggx3+jf/6+kGFPZdmn+3kwb+XQ4Yvt9SFC58+7/RxWO+wDD3Gyuhrl/4jW3s6
         iNTrhSWChiSeZpYMS6bSxXh2ek/ruGZpKg4l6Abh9F6xTzFt6Vwmxyorx0aKZBIZz+bW
         92bgwwmqsmwPkvnvn1PhM4b3sFqpqSH6U6ePZKTErfyLbNU6kTR28KqbwvvqqJ+DLVow
         fkDll0Pni9MbEY8q+NTBEHjzo2d7Z1sECd+JZ6rf//XPecn6gWNlYLb55mhsSayQYpd6
         YxQH1J4fJd8Z94KMAPh1ojG4bMKL3GYOYdxPfDfuHSG8USgYsZ13wEjDEwOxQnYJNBK3
         Grjw==
X-Forwarded-Encrypted: i=1; AFNElJ+3dggYE/mEXmX0dP4zBW58oUTCuN+T+uGgwG1q4LOluoHsBrM6HthmnkLKYCuwbpjRfwPxcEkniS0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWUDLhPLVcWdT0tXVYo3Vk6Imb5p3NeFASw7pB3b9BIRczJCR1
	ycDPr6JfbpHc+PCQhbhq+AsanGj1+FxHUH4/RYucykAxEGEvZdJsS4XTMxUDVDGMnBYeR2OlBJY
	9a10km/OlN0rNLFbioKPXf4zvKBwo4TZH8Ad5saY1vxsEZicu0+5WYI1AFQV8sZ14apAo
X-Gm-Gg: AeBDiev5xqiQBMjlo4hcSRz3iuogOxt7dG6kcPCkxv7tLRWWoW0y/MV25BIM+6yifz3
	av133YrDewD6O59QZqfJkAZCJ8kWLdDg2Qor/uJ0heG4xEPb51i1nKmkaoAg2dCeG6SxlymTf3g
	J2/0NTJr2eeRXePfxBkSQMQuNH5SEkKmYK4MkQBPS2OPlJ7w0kQk04163vVhpjcJWp1N3QXo1UA
	c+/QaA0pQYTbxKVkyTIMoLb1Mgnv1A09R521Wfdlz/WRHLmuUb+n4LR/eAM0q7BjoAniTScA5i/
	A3WQuO4rF95MnyImh5q4vyuRU8mgGg1ddxRB40JV7IZzZQwot9bLjblwqwFkeoJSsQu0CwUlzDm
	Is3EOa22U9Xrj6x2SSsorssNazk507wZ6rEJE7oVsUObc5CJVKj9s7Io7xgUZQKg3y2NohDFgaf
	Jt1nU+AHCGITnHDE4SEGLt0bEG
X-Received: by 2002:a05:7301:2a05:b0:2ed:e17:d50c with SMTP id 5a478bee46e88-2efba7b5047mr7274291eec.31.1777989440956;
        Tue, 05 May 2026 06:57:20 -0700 (PDT)
X-Received: by 2002:a05:7301:2a05:b0:2ed:e17:d50c with SMTP id 5a478bee46e88-2efba7b5047mr7274258eec.31.1777989440393;
        Tue, 05 May 2026 06:57:20 -0700 (PDT)
Received: from [192.168.1.2] ([122.177.242.135])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ee3bc6a79esm23836987eec.26.2026.05.05.06.57.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2026 06:57:20 -0700 (PDT)
Message-ID: <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
Date: Tue, 5 May 2026 19:27:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
 <20260505-gifted-salamander-of-prowess-5107a6@quoll>
 <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
 <95b567cc-b83c-4154-9520-e624555f1882@oss.qualcomm.com>
 <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDEzMyBTYWx0ZWRfX53/maE/7b/kk
 niRmbV011meiq46BVlUGw7FJJZUAcQLpqsE7Pm/H1yNB79VNwtrX8uJ2J2juMXRvUB4WD2Poi1f
 otjiozfALQgqXD2/BPMkgxDeVvENczWoFXW5CyrSFL1VM5SgbT/ENMAtdeRXHsy6sSevcDPANX2
 KLUWet93V4D7EGLAAhZFDBFtsIobvvKtS8/DTWNRWlGMsATawLc/zpZFxATtikhHpc4VMi8Xfc4
 t95eRXDkrDwyDSNIdlAhxOumchjkJe1kAo3FO2BnKAf8tE7WAkg96B58bXH+PP0xExkp4ek5s8f
 yhzLOBrT8z4XX+hKEa11Bl23Bl3thnJgSNOLBePvetRJ/BoC0C2JN/KBVFyODT8o7ss3X/i1l9y
 Xts3jlA16ey6+IQArKJxZITJlcQVuE+rBPd0F/UP5dBRLbanpcj+yEp//fbwL7ZsF20kZrwXiep
 UPngBeKiEx/jtUFlStg==
X-Proofpoint-GUID: KayHE40t4BBZJGCLbSA9kg4jyjW4d00R
X-Proofpoint-ORIG-GUID: KayHE40t4BBZJGCLbSA9kg4jyjW4d00R
X-Authority-Analysis: v=2.4 cv=HpJG3UTS c=1 sm=1 tr=0 ts=69f9f741 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=1ETSEvoV01wl5CnlN8iVEw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=kvxTIm3NsnwSdPV13ywA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_065722_438171_5B0DC693 
X-CRM114-Status: GOOD (  13.76  )
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



On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
> On 05/05/2026 15:27, Krishna Kurapati wrote:
>>
>>
>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>>>
>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>> ---
>>>>>    .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>>>    1 file changed, 2 insertions(+)
>>>>
>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>
>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
>>> compatible. If not, explain what is not compatible.
>>>
>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
>>
>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
>> GCC_USB3_PRIM_PHY_AUX_CLK.
>>
>> Hence, I didn't use a fallback compatible.
> 
> This still explains nothing. How different clock makes interface for SW
> incompatible exactly?
> 
So I went by the naming. AUX vs COM_AUX.

Can I use a fallback compatible and in DT vote for "COM_AUX" clock with 
clock-names mentioning "aux" ?

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
