Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FC4CD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 14:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ds/YBj7IiIoN3qmNjTyuGB1CHguArgHAV8XkfsoOtu4=; b=maCH/Ci5zH+ipE
	TcAUkGRaZjJWdMNlnc6U7uoButzdcfyw0m5iSHyFtRVXD/2TuYq9y5pHht5vTw+NN+djbzligwDhd
	oVGszTN4R5lOaLCIMXohC8Tj86IU98OQFugUulScul2oSe75v+Ph77ckALq3oNUx2JEIwaxqf7TjT
	QsehK3/BVLN+SE7GyvVSkd/4sBC8urhmTswVpUYP0P1mxVHWpPqZZ01zWUg12Qmg7DgWpslaiVmOy
	Iq8rgRsavKhpB4fWsmae70gapvJGGTuz9d8wbh1dF0lPG23INFDp4BN2VrdiG0+hjscJ9C9fJ5VE1
	XOU1U9C9VheTjVLYmCIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZUOK-0000000Fsx9-1Tj9;
	Tue, 16 Jun 2026 14:03:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZUOH-0000000Fswm-2YNm
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 14:03:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GE05bI3314724
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 14:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ILLa29a1him3F6rIENk8jXqD7HDozP0gg2rbGt8zmMA=; b=GqHFBSfSERhNjWwq
	zqzYOC7u/tCyvVkh4r/rD+u6WU0mHxFtihCHqa4sTzb7VHtAiDkGuzVep18fBJpT
	/u+zu9kzjxaYyKw0/Tpgqdqxuxzok48ht/wVlkOzQZvXz/8Sk/cUVPi5e4uBCfPd
	QqtHkk2CO8bdZhJvGoLGEg/JTI99W5V5wgucu4cfKYWz6a5JORl0MHUF7+3P3WWH
	OwnXb14GBAoM7UwjF6Nr3em9rLpv28gP593am8+L0Cefyk6p12NLClob7mMrwSj1
	470GIhFPznzSHM9H+HJJpZTPV/ghRl3t+v5lVHDF92HcKaVM2fDHD9bZHwXyCdVm
	NqfZzw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu0a7t8f6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 14:03:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-36b9e886821so1057246a91.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 07:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781618624; x=1782223424; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ILLa29a1him3F6rIENk8jXqD7HDozP0gg2rbGt8zmMA=;
        b=PvovPDv9p4jwuO4LRVHDFmIPH1ErrU4k3vqqD7UfCaTM/1A+8LimZEPKYchirFOAyv
         9XjxOilqeim3XyPfnk5y+TehETQWXI4q6Z3iSqKp2Ca6ZJcepnGq+FJz9LQkzW2elA8O
         jZv8IlJKoy9W9oMo8a98RLz7jpmR9zLLqPM5FwVl4HroHTZPKLZGQRwPe4r412WCjGcN
         HqopxJsOd/X7ba3g2OsRTu1/zp9sYuTIMu7ZdPEq8qjVI3/uYsMiYQlt8EnhoPCy+lz8
         u8N0druzx90T8MoofcsYEGDd+8r9Md2VWpOd+aj/dsPHleB5H0/5ZrNS7tPlcSCizGrd
         RMsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781618624; x=1782223424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ILLa29a1him3F6rIENk8jXqD7HDozP0gg2rbGt8zmMA=;
        b=hCR73gfdFjyfX8jNc1rOYB5FzAxo4ZrnTaZhdNtcHUPLeqxtSy2qwiP8NqHj88f5qv
         20fUH5NCCvFk32LpAEHt4DHupqBSGicpqKKn62qBAKekqF2oDTrJY9jlLtzNNCKmT+Gj
         BxSttEqgIJevcPFCu2phWYHmtCQYJIQBvnQLHPsfYsx8uU1bVbx7+yxcyzZigTzy6QNo
         1UAjBjtkay0/pgI2NT/kty3asKcY5AiWpcxmlUAnctwWme9x5iWvzM2l9HJ3Nz58wDBh
         WciMOVZcIAhlCfD83mAM0K43wsmAv4XEd9uYdq63dbUZ9pKUq1ObmmjnmX57Wk7Cy+iK
         xoDw==
X-Forwarded-Encrypted: i=1; AFNElJ+1p+xt6mvZAk89JxMsVuuNZ/H9y6tKhdMx/eWaRO7ZsfE6yAmvqWFj3KfKjldd8N7a0db5SM1kUIY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzY4tRnWdtA9Z7zDIjEJES3Kk5jAJwDdhTqACqIfigkoHjDpgb
	qs3uXDVu76OO+o+E2lRzuTms8XOWRBpqyY7YvabMcTBUK2tFnR/Pb1r9y8olac7zJn6WpCGKTkW
	K2xIp6XGGVNyPkGsPHjjRfYZ9vD8jbFRbWF8PbJIAMxan1gPC90DX4DaR2MJahJTTki3V
X-Gm-Gg: Acq92OGjuUpW0+a4M1r6NbduZKSXpVPUya9ilKW8ZU5TPA3l0mL+EH1yy2RoZPoqMeN
	JhSepSDz/JKkFhsqvox05h22NFGBFeAm8/PTH+010MEgflUVHtJTMXyk6ykXsnMzH2lAY7h9U8h
	BNL4HYsouv6oIybf4/4rfq8BUtmhHPZ+nKs9fGeQ/RfBP3VASrj1ATP8Ls1JY1hXWPGlcxNG4oz
	gIgpx9kz8byy20P/8QZmH6NpT0DeY+IiJMT2wGjHR712JdrxzzVHS4Nf47jzqw4O2cOuHxmuFbU
	mUDbDLZonFryx0y5VYDAq6jBd41Lqz1d0Fhi/ocGxP8IQYj5E9BkWIqNAAfLQNtaB6ED8QBf6bG
	8N8vweMSmS7aa257+xPNcKlDDylpFvs8Ej753mSfLGw1fhg==
X-Received: by 2002:a17:90b:3807:b0:368:e6dc:eee2 with SMTP id 98e67ed59e1d1-37a036e9f9bmr10217628a91.3.1781618623396;
        Tue, 16 Jun 2026 07:03:43 -0700 (PDT)
X-Received: by 2002:a17:90b:3807:b0:368:e6dc:eee2 with SMTP id 98e67ed59e1d1-37a036e9f9bmr10217602a91.3.1781618622921;
        Tue, 16 Jun 2026 07:03:42 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb4d1b856sm650766766b.20.2026.06.16.07.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 07:03:41 -0700 (PDT)
Message-ID: <5dffdbe0-cbb9-429e-ba15-0afdf6f20fba@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 16:03:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Add glymur-qmp-gen5x8-pcie-phy compatible
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-1-269cd73cc5d1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-1-269cd73cc5d1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDE0MyBTYWx0ZWRfX9xbzd6Z8KAxS
 NAnDGzrmrOXawzvKUSNVke6DwWQyFdx4xXTfltDe8cZsoWCp9WBrRIHB7TU666zAjg9SQVYDfZ+
 Z6Ihos8QGGmKpIJzh95eEQq9ZOcdUtq5X8SRalWpgeIwDM9rYxkhb+feheatJOdR95K46U2Vu6t
 83HZD1WSlocEx88zDYGLXR3eGhQaCON7Vym4ODN5SwoxBVEIhLd0fDxYFL2wwvtLxEG8L5iA+1U
 N0fWFFwjpsrxvhqjktLt/0zrLdhMyVOfBzBCps0tXt/52xsasou2KSSJ52h6eBuId58HnHgR3Jb
 Quw2TLcF5JTrqzk0iiUiC2OLooHaGXkiq/83k6HblR9RoD82b3NiDJ8FsqQBYfFFx+QhvfGQXPe
 aq7zTfjg7qj9+2dDcF8c1YqdhhFmhehZCRyyWddmLAnwX/0+hiRO05kCFh9vd6u+DLzBBB3rUW4
 Hb6iyklEa/KwOA4PI7A==
X-Authority-Analysis: v=2.4 cv=JKALdcKb c=1 sm=1 tr=0 ts=6a3157c0 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=pC5mqZ74STFJzzCMHh8A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: sFN7UHijwok3Pn974uhP0IBFiTLGAVcd
X-Proofpoint-GUID: sFN7UHijwok3Pn974uhP0IBFiTLGAVcd
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDE0MyBTYWx0ZWRfX3zSduZyba0F4
 a1yFgHZb+KHaghdr8m9BEbXt5/JWJg5xNkYm+FBXkaKpJcIxeunvKF2jwfr+bh8Jylxb4pDPEY9
 pfJ3HQOJSX+9TBdxvz1ppj9QUWA2uDk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_04,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_070345_676740_0936F006 
X-CRM114-Status: GOOD (  14.44  )
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

On 5/19/26 7:47 AM, Qiang Yu wrote:
> The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
> PCIe3a/PCIe3b controllers. This block supports two link modes:
> 
> 1. x4+x4: two 4-lane PHY instances are exposed
> 2. x8: one 8-lane PHY instance is exposed
> 
> Add qcom,glymur-qmp-gen5x8-pcie-phy as a multi-mode PHY compatible and
> document the new link-mode property, which selects the active link mode
> via a TCSR syscon register.
> 
> Document the required clocks, resets, and power-domains for both PHY
> instances active in x8 mode. Use #phy-cells = <1> for this compatible,
> where the cell value is the PHY index within the active link mode.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

[...]

> @@ -68,20 +69,29 @@ properties:
>        - const: ref
>        - enum: [rchng, refgen]
>        - const: pipe
> -      - const: pipediv2
> +      - enum: [pipediv2, phy_b_aux]

I'm surprised to learn 3A doesnm'doesn't have a PIPE_DIV2 clk.. it does have
a non-div2 one though.

Seems like it's specifically not the case on Hamoa and Makena, so perhaps
it's better for maintainability if the Glymur list was separate

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
