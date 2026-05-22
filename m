Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D592CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 15:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8JEanLwmMU6Ritlac8RHDtqFCAEv2CkMi3n/uOu7H0=; b=UfUYBbMAyhs635
	VQgpg5f5lS7gLacQmJ3ImH+jVfdJ2DPljgePLMffWlJv1kcYfu5Aa+4uTxBp37ak3oI7JYBZ2rHiv
	kFhwhuu1XRpeAMZXMO+zcDeuXMlrNB+BMieebpyvT5Hn9iP8DgnYbNhswOVpEL7a76ydeFk26KC3K
	Q9E0uPFUhc6GcBk4HeyGyI0s0M69jIcxG6NYlOFAgq87huJDqS2OAwB0gJjMSCoV81HKe47/kdrt8
	p2iXSqt0uxlBVuF4zf4HiwaE8cr9oqmsD4HtrIr3pDTJQMU91whP4IWlzUgceqBwi3H67JQXq6rji
	fw0bwbBAK2s485/FxRkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQRdy-0000000BEQA-0WKA;
	Fri, 22 May 2026 15:18:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQRdv-0000000BEPO-2O2F
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 15:18:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64M8sCLI2765182
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 15:18:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g9xwrB635o2Tco+xITvF9/6o4dCfeeIrZ/2XNZN3wKc=; b=TSG/Aq5ZLHvsdsHD
	uddgC4ytLcmrJ9zxb6CWJrl/4JCe0eOAsgxWUSU0h38S0G2YRxhVtVrsEqngZVhx
	qIvT2NJ61XDgX93Kfy2JyAZLFHXmsP5nGvRXb60wofLA8iContnb3ZChpgRjAkr6
	gIwzGb0PH1CpIh6LjoFQn5zquOrW5noolIh0y0TjLzoBtDiym2FDQKivU94urFhD
	0r7JQSjBOdMo9Qd2iTx24aBMJssbwHr9c807cvkU2wMHdNS3oYYSlaNMQdBGgajD
	kWRCE8cnV2IrpAWO8VGT50HibeJ3bbb+3Vk8TXkUEMuth/TJp/yzf6aQt+IteVf0
	4tnuBg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea3u7wmc6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 15:18:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b2ecc96a9aso83883375ad.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 08:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779463109; x=1780067909; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g9xwrB635o2Tco+xITvF9/6o4dCfeeIrZ/2XNZN3wKc=;
        b=ZDYCSSfXVw614NlnVOBss3rOJ2ThrrRSptsvfh1jZYOTL67bbM7Wu9G1509S0UDs9d
         +pV17ONfg3oWbmhbFzgGM2kv7LUc0ALuauj4p3ggxM3IubLpiSWWpcRlIu1bdq/4VWG3
         XbS3tzhqHpuSoI5Zh+KEze+DWgYFZfJFOVNocHpucN5dJ8RAW52ZrptojlCBYKal8dHN
         TRjZP1ubacijt5JB3rIxLyOkvck1HgEu9RyF+UwbOwf4c8ofrSLBZzYtsQ4LKzW26CIs
         HRa4WcX+6MONxnXjuH4j2YpjFkGgCB3mUtSGaO+i8D1B8Y51cGplp6wqS8vYZfx4qOCM
         LkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779463109; x=1780067909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g9xwrB635o2Tco+xITvF9/6o4dCfeeIrZ/2XNZN3wKc=;
        b=JJq+UmHj1oO/YDjymgLVuMF+0HWZc8MYBbdagFEtMydo9/zNsKrZ9DJrpYZJ1qQB0E
         wA0ifnjrLgBEYDnGeePlqDTjgicHbWC/CRS2imNQqVzVfVc7Zn7bMBdZiQt2Y6U0VSXP
         t9wqXNw6IXs1KeUsa2T9S4986SgSdPylj8CSDD0womjg3Cgv5H8lth+f0UQ6x2HQz9CX
         9OmVAfaiLqX5ltSdepYC0wbVa96EwzI0EApk5BHdL/QXmW7QJvEkjhHlMeyjzuHWE7JC
         23bi4xxDdzi8ngXmvC8ShxuSop5+icoxhURkbZ/DaeVmOotbMx4pdehUyaEIVi5zW+Rk
         GJzA==
X-Forwarded-Encrypted: i=1; AFNElJ/bEvuOks9XNe83oO8F1i9O42x6CM3yNqF/J3GlxL2hQ4sWDhLTtwtE88ARKGDtrZJ7DAipWwkQbOc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSnpc1o0p/x2S/4zKYdPvZFO2ZdwRkVOE3qXo1+ug+zKr9fIEg
	3QJwi6vGMojr8V9vuOPZ/Qwbs7S6VMaKlXY24xoGqanZQhiWCUDvTYD+2QC/ZI4nQ7lbht1FpV3
	grMqVFK2NaI5mluwf/pDOGieYjrRbQeCGTTz6jcGFHQJ4HtiE8uSd4PcfEVWInt0Mu6Zv
X-Gm-Gg: Acq92OEGTRbEb4cacVH6ChEWiteD61TSLbHduW6VKlrtma0jee8WsdqXrJVlEy/ZH/w
	6hvnu3DMEx5aiBcDIKRNd884bIygNGfIAiUkytItYzaDRnOZQuTpPQ11vY476+3PbAVKjwvWb5/
	7RoaYKRxwl+bhKcaNsafMMCIHit137VcO6zqz4086GD1cQd+Hz7j0VLVRoE3d+vdLFinA4l/ABO
	HEeHAaEq9toRh/1OF4jhVlYAJIGo9L51wKLUXXhM+SMo44dcc8ukEJbbExMPXivr62vn+oJSCgB
	PUddmynZAUkJNeJ2qz/x4X9XqJbed2VDjYtvvSVZWnAt8UdrBxxbuDUQNMy2bFWbNL7mzdtEXvK
	TudfYuj6RyfjCgEwdPWjPmIdiqnE3qzu+TGrxstjJM2B9CUSiic3rvQ==
X-Received: by 2002:a17:902:e885:b0:2ae:803e:6c12 with SMTP id d9443c01a7336-2beb069c435mr44303145ad.6.1779463109029;
        Fri, 22 May 2026 08:18:29 -0700 (PDT)
X-Received: by 2002:a17:902:e885:b0:2ae:803e:6c12 with SMTP id d9443c01a7336-2beb069c435mr44302585ad.6.1779463108467;
        Fri, 22 May 2026 08:18:28 -0700 (PDT)
Received: from [192.168.29.82] ([49.37.133.141])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb5695b2esm19652165ad.4.2026.05.22.08.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 08:18:28 -0700 (PDT)
Message-ID: <e39b9326-1c19-44e0-8d3f-a299ddad22c9@oss.qualcomm.com>
Date: Fri, 22 May 2026 20:48:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
        avri.altman@wdc.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
 <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
 <uut3u6djc2dc23aznjxdqvkehpx3ooa7eknzjzubnlmylwvxxb@aow3lpjurhnt>
Content-Language: en-US
From: Palash Kambar <palash.kambar@oss.qualcomm.com>
In-Reply-To: <uut3u6djc2dc23aznjxdqvkehpx3ooa7eknzjzubnlmylwvxxb@aow3lpjurhnt>
X-Authority-Analysis: v=2.4 cv=aIXAb79m c=1 sm=1 tr=0 ts=6a1073c6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=p6nWuE1qLcVxvtXth5uE9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=nJdWcSulx8WbVkVVkBoA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: X2ixHisJfrLk5EszG8BCQcAXudFadnZl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE1MiBTYWx0ZWRfX+BaUeYk49QWL
 Ce1BfSPpyrTfvMp2V3wbQwtWvhPfCmjEbGxZ6fP4FWjrE2V4CKNCU991isNxYecVnFx9EaVlnZk
 aFbe/TvmTesG1LulZXDY2oweWYnwQgDxUC6GAZVFmwNs2a4E+7MVppjn5CayhD3jaTL0LD71fJy
 HKSxojvo1YZW1w5Db1gdCSBMUWDDHdXn9C6Fa7G/G1Op39ciccQAJoiAGrrza4mziS1ilAI6Z1a
 poM9jCKzMbpoEhbLuZRoH7cnQ4+kPQmz4dgHfqAo/iByOE1mMc+gHv/vCcTVTRR08hgWZSJ+uPO
 kYCtv13laor6SfMfs9bC9DsQGX9Z/hey7b4WygHi/SgpH+RcZVC3tfSJV0Z7aslh/vKW33YTdzd
 Z8NS4OwhQu/xGzG1b0Uuy6RMX7RaluOqaD2n17nLipAWeXCoOy3yGAF8LjQbsjpISpuP1VaYIi3
 BhtVJu+NpavDPqhVXQg==
X-Proofpoint-ORIG-GUID: X2ixHisJfrLk5EszG8BCQcAXudFadnZl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_081831_728623_2FC42E0C 
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



On 5/19/2026 11:35 AM, Manivannan Sadhasivam wrote:
> On Mon, May 18, 2026 at 10:23:44PM +0530, palash.kambar@oss.qualcomm.com wrote:
>> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
>>
>> Document QMP UFS PHY compatible for Hawi SoC.
>>
>> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> index 9616c736b6d4..2326dcf38a46 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> @@ -37,6 +37,7 @@ properties:
>>                - qcom,kaanapali-qmp-ufs-phy
>>            - const: qcom,sm8750-qmp-ufs-phy
>>        - enum:
>> +          - qcom,hawi-qmp-ufs-phy
> 
> Don't you need to add the Hawi compatible to the below check for clocks?
> 
> - Mani
> 

Sure Mani Will update. Thanks.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
