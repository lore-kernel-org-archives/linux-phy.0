Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1E9606A31B
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 14:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Mqz+Dy/j;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=aUcMW0tU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=XL7NDMYP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qdcBeUIOo8ZZXCOf0I77pYIxUqPe4X0MHrGqadcSV10=; b=Mqz+Dy/jr9YGvSl4laIvHidINy
	f5h/9RGP6kuVpoN7VTnKtLcuEnO5e9z/RjSsy/h5H6R3dlMbZwqd97js57nPatNb3YANom0IUsknj
	/VJn+YsDeRMcNtFtYiIOGBtemjhojRY1u/oINlCKiArProsmr/GObXWWF27rqCGW/ZJpEJnBmU6ti
	Tb3EfIRF3r2WjS/+c0Ct+z5KOfbTpvuynNJ4JJh85p+nHvftzNS5Rm+8exssEgNSuAep9+Yr/Mthf
	4Ty15/oVM4WHfIqYzT5f+ZHxGVFvZphzV3pF8xUbPtjjZLfxDyoc6N5WBnO8Sia6tAJdoT1MdfQMV
	FODYPE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLLO9-00000002fMT-2MUQ;
	Mon, 26 Oct 2026 14:09:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLLO7-00000002fM7-3vgk
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 14:09:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69QAssZW4131453
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 14:09:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kjExBJFPJ8m4Vc88gOC9yuQ0s1tBLMjZRS5SoMRwaFI=; b=aUcMW0tUHWN8HD1W
	dpe1Bn6fpeQNb3U7MLe1+zdH/rGccWVqU+ga8nwyjOnD4at0YsDtHtIOmGUdA29o
	BUgmkfZ5bIn+xsqujuniL9U4ku9o2N+Z8u6HfFabm6Pa3f2AM05l+Q6fwvzFuAWf
	ZeQTNutR++4ilP/3IBmIN56q/LKITodwHih4/EIpBjgsX9fo1XP/iwN/DCNndISE
	M/JSu93FuyH7PQABjBC4beCuBMwVpvgSLFj3RZhFT1a8GHir6PNaqlKCjIkfdkO2
	gYRanFWHxQyqe83KBybbi7vLKFruTs3vVulAfWfYi3rrPgiBTPbh8SiCAwPC5n5P
	jqyCDA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj53q0se3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 14:09:23 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5cc87885c6eso57700e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 07:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793023762; x=1793628562; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kjExBJFPJ8m4Vc88gOC9yuQ0s1tBLMjZRS5SoMRwaFI=;
        b=XL7NDMYPUWVJwA9DRhqwkTwWIaFyfjaR1uL3AMt82RH+HULQ68A9DP+kgtGD3w3zYW
         GYz+hco+RdOTXJxSTWi1b9mtFtmTXjN4MNLySoxItzlJGigyCv4W3ySr3Hu8MZzXxCyY
         ACcxd0xenfkKTtA0C6ZUpniEMfCRLSZx497bG35ZyhTClnupdFqIiH91fH4bKjJ2hcPw
         P0NrG84rDPFCmuQ6wMBoYm/iXuJrsjttXP/xX10q4/Wpk7za1Y8IXDx3nlTwMyerpCBq
         e2s/mFhjYSdoLrvQT1lv/oDEae3HSNdWgjAoPCRNczba8zo9JOvFNsc3E1vcYLC3FTOC
         KYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793023762; x=1793628562;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kjExBJFPJ8m4Vc88gOC9yuQ0s1tBLMjZRS5SoMRwaFI=;
        b=Lw1Nr6r7YvwRJoc1+0g0yb68192SMQFxOnAYKodig+nk7oTubJFA+JduTxznoy778L
         0fA9rmKGc4A/21uaWs0Ndi4CdZQeGXjp/ZQTBe3rXCtbW9jp1tKBq+14kNL75I7OrNkV
         G5gNANNCJ7eJOSgGfLYwSnklZM96nKGRTgh//1hDlC2zxb9eTXWcCQTrju5yaKaP1ooR
         u6cC6EWH3soB+MTIsJmrR2c1QyOe7VWauova10sKg3MkaZm4xy1TRSazF25S6zgXzdhB
         WaIbnX6gqWgt5+2rJ1Z3KUlbXnKteasPfQv/u2pV+J8dU84qY7+5TNkUtCrCLcDsjc/f
         yZrA==
X-Forwarded-Encrypted: i=1; AKwUvBwTaNYcisFAVIxY6Jh8Dv4zvWq9IP6/Imu0TZr9LzmAlEpKS1rb7hwzMDqui3top0qa94t37eU5828=@lists.infradead.org
X-Gm-Message-State: AFq9FYLeEswkrfzNEHPmURfGJ7kk+J+e05SHmjmXFMpP5ftP/cnQTwmm
	tfv0oG+ys1ReVXjmTc4gy7hcTFYIhWa8UulTaZyTGCEdUvPD9R7guMPdR7UcaUHoln6KQCboVOx
	q1KTA2jhkVUyPeOCPFrQuwTuVG+XqHFgS8sjopcHeTGeb1zVasng3Fic1z3tyhIl/lzxy
X-Gm-Gg: AYBFou33mdVW3mhVWGKALOa9YkW/8OmbLbxEJbPwpwMqixBigVCADKR8bDw47fwNzbk
	YbYtGvGv4tNAiX+y+v4NAoKnVwDLtLja323GJM7kokwaljHRjZ/rdgpteEbwCl5RtDkYAHq3f5e
	G+SbJ0bW0qH8z1TSeWLHBQQ/Y82biv+MuNtixfi/knslb16b0t5q9yUzhiN12vlHmL0HKOOIH4b
	gsxoTzzvAIVjQyyqgqnt45aIv+uidSsY9DSZbW6OnE7qtcoCca6HaXFVpOPsHXhYHly5m/FgpOi
	G3vthlDMsfRNxVWj30zZLrH8hjWIQooEKOseXWl4DAMqJZ5KQHok5uHGqhHU1xZf+4/eUhzmSCg
	GvkWcMqqko77zyCIKybmKpw==
X-Received: by 2002:ac5:c8af:0:b0:5e9:397d:b197 with SMTP id 71dfb90a1353d-5ec232688d9mr2052710e0c.3.1793023762372;
        Mon, 26 Oct 2026 07:09:22 -0700 (PDT)
X-Received: by 2002:ac5:c8af:0:b0:5e9:397d:b197 with SMTP id 71dfb90a1353d-5ec232688d9mr2052661e0c.3.1793023761845;
        Mon, 26 Oct 2026 07:09:21 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd7b5d54sm321487466b.86.2026.10.26.07.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2026 07:09:20 -0700 (PDT)
Message-ID: <14fabb77-ab9e-454e-86fb-e5f8d0d686e6@oss.qualcomm.com>
Date: Mon, 26 Oct 2026 15:09:17 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sm8450: Add description of pins
 with MCLK function
To: Vladimir Zapolskiy <vz@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-6-vz@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261023163057.775917-6-vz@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDA1NiBTYWx0ZWRfXys+MKVepfUBC
 SJB8U3Nwy7ZHdh+TE1RqOV67A9i77EIKw19zi+NlZ3dcUDpYvQfg8iKBFJN+v3HM/b0E0+vJKfz
 PT1L3IXXHGVuiCoQF5cqxyahnCHvEW0=
X-Proofpoint-ORIG-GUID: yatcpQ9Wo0HJkDxqFrN0p_RhSRjJTOcY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDA1NiBTYWx0ZWRfX6bNdG/8rkO9d
 X7xu58XC71k4MGsQ6Qlx6P84gXHWKNfInyX50nkDx7/9p8pcO4yBFaCaAZlyfGj9yavrq5+dRXX
 AU5Ygfl6zMECOalPa4NJFuL7OhjtxZQKST1iPTaO0ITQXxvj4s9TaTvZXxO5+IcTvkbuuQrc89o
 QmZeH3LvGMU2OHjXMGMaqcgBvu7+L7TysZBMlYBtTc+vqDGu/mTt6QTs+AK/i8aCbuj/J69ezxb
 4PXcdx5smBiHvOgXvlrBjkbjv/2GX+Ys5LvLpLdVmr82bTOZQL7Rx3/zzP5UlIRGkil3LKJRK9g
 PKdor3dHxdORjyifeOP2KmTQT5jwC247/6ax/RmL5RuMLf47cRzBXilDciFFrI9N0IlePWl/CGm
 XOPvMy3UrzAclRKOk5D2/xAMq5g6ewrJQV8FFexhO260juSOAszYUHmhIfx7zgN41gz/dhlbZNU
 NRpSWT/6b5ndn055gmw==
X-Authority-Analysis: v=2.4 cv=D93SufRj c=1 sm=1 tr=0 ts=6adf5f13 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=euT04gI7HyjAtzR6ms8A:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: yatcpQ9Wo0HJkDxqFrN0p_RhSRjJTOcY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610260056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_070924_006585_1716A9E6 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/23/26 6:30 PM, Vladimir Zapolskiy wrote:
> Qualcomm Waipio SoC provides up to 8 MCLK signals on GPIOs 100 to 107,
> add the correspondent default and sleep pin configurations.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
