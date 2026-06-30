Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96DEDC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMBFhU8UphpjvnM2Csm1yARlqBcuhdt0vRSPobiERyI=; b=SCkBATg364TQGT
	6tnd54ctiEP+uSsfaPK1rV3piTVrtlgPeYIiDpcOccmWuzc3Jz5JCvuG/QyvY5evq1LdnE2R/OGr2
	IF2pppAo8NnakPC42fLlVlcUNeglekZUoELnChu36cdT38p6joCpMSc7jJi3TR+J18nvbps4AjdPx
	4i0zXVX+go9TD3vdtPYABebKmX2iw6QV+7ttrAtk9VQvvFtDiX5xf9zlCv7MCU4DTo9kv5xtHCaBK
	fSf2z7/faY54F+nhmLsBbzOYry7Nb4I6E+4//agC9YAeuyNgBT0by/4nMeiZ4DyiaNdf1Uv85ZJy+
	+kHcBneUed3U1MPG4X0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYxn-0000000HEED-1Ss7;
	Tue, 30 Jun 2026 13:57:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYxk-0000000HED7-2XUG
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:57:22 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9n1Tr1573447
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:57:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jHHiZ1G2Of8CDq7sIn2bONVFdln4OQz+K/2zgUurUOs=; b=EQ/hQGc5r0U+JEjJ
	rwXLZDRjg/yJx5q9y9n8AmOTYjnbhXszb4FUElud33w78rD93Eypmp1NnCYi0W6q
	PuEjUGmqiLeRE9r5VakI8DKVA9qkbxGoiWxoQgzq0Ww+J5ZjOB4c65f2K9kb3ssG
	A1QTZJKj47eZ/wB/oH/FItolhwmG2rIGD2vnmfjGl4vnQKIyyKuzKLZ51eCCII6a
	onPKtqM3y4gk72zTUDXV4o79M4E7WHnpEIL5mcr9ADcFSSg2OxNW8MWTuQmYrrA4
	eGFAEU+Yvict77KF8ItlALa2KxSnXLj8DHL5vKIdvejhUMfUSlmLpP2meIsjQJVi
	+R3+tA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f46862hhc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:57:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c1857417aso364731cf.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 06:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782827839; x=1783432639; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jHHiZ1G2Of8CDq7sIn2bONVFdln4OQz+K/2zgUurUOs=;
        b=eGqAV0Toz4wIhfbn2MoNhe8wMWv3c7deAUcA7RiqLEI4Y67u4BOqKIsk5cnL6KYZ9u
         0hed5h/IXoggvVQvYS1Nm9TvBlqmOsef8s+YKIBPtz4ev7NbQaFWiDsbejgLeOb6GsPN
         S7cj9x4OO+flqVBDIUBlpxKYO8nWwRf7CsTC+kJxm95LOtYvbx+fuzuqShJ/idT86ZqA
         JQgA6fQj4gfSnmMxRE0yyqQ7vXrG5A/DDiVlGbYWRcj2JUu8HiCcAhixv7jH3LKEL2cU
         6yrcZkuOXfW9h2fGm64c2smIy4gzWxb+DBrTXMSuiofN59XHzdF8UULk+ULakm2jOjPU
         WG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782827839; x=1783432639;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jHHiZ1G2Of8CDq7sIn2bONVFdln4OQz+K/2zgUurUOs=;
        b=csUGlU9lAaOvGiCo6Zq7nmeiBMGHEza7BmUKWMvq3mCEsKwmHZv50LyZjkC7muRP+Z
         juGPXjBMBAWPJtzGcqmjX/pmdNT3RbGJoe070uG2KujUY7/UNWfYkqfSjhoZqSC3nlmZ
         K9st+f7nd7xGLJ3H/unFZTLrWCelKvEfyfYTxdGxgeylrPBujIZo37o8InwBfjNC9Sk6
         g07d4Hfz1Q/s74B403IwVJmZ0qlvA0yu0+nljbNPNnXNT5SlDZbwfY4XVINPF+51aRDt
         zvfg0GZkdoJHOZq9Q9pARYZZcv8ZnzdJ/qG+V57UlrN7rcFoR02iV/mN9+Ef19Ue2k22
         QUZA==
X-Forwarded-Encrypted: i=1; AFNElJ86lGgiUBvVwzgeJLx0sraCkT3A/JJTDx6wLHyUjHPXR/gwzx1QcwLwyzirUCDx9DHqahjr3cwbOok=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfdJgOfyXEeUaG+DAfLFo+KzBHQWTCEqn2G7KsCvztYqD4KgJo
	zsj1ElCzccvbZjndlQQPoa+iRZN5ESEXGGZmGxxgwxZry8a+OoXNtJAj28nRCSx8k3MMtUAXe47
	CGVo5E/Q/11mKVmcjvVGVC7W33Dil97F4QhNK4Zt/gEgfkLVPs84zm2WFsLm4iJ45j91V
X-Gm-Gg: AfdE7cm5qkiKzyNkoNird+adVAELgXjs0zhbF05c90BLh3qZrKImaowEA94fYDg1xW7
	UKNRNxebAfdCbxEcT0UrkcerWYwv2758FOvsRsXy7GnCtUOzbGfnD+8+jseKZ1XW5EVsmdIDCd9
	/td8tcuIyuFJZznjyXJiWOBHMR1t8uBhYB4pJONW0eMFIJlENAjjaDrErBmQCU+alH5Aa2M0n8O
	3f0GJffAam0v3pFopVc+SFmndawZB6ZVX68VY0sQCUr1C904MTjt4WDIexaL2LiX4RZfl7Plw57
	Sm+xMEcNz5GSy/Dp5s5mFDXrQEFBuLOHSebdbeuGhvlSr+7v2HFuaZzCNGY2rnK4dwI2UGufvbE
	e0slir018ex9GBLWHDNaBFoUqPNKoJNR8B8c=
X-Received: by 2002:a05:622a:286:b0:51b:fe41:4764 with SMTP id d75a77b69052e-51c108197b3mr29499251cf.7.1782827838855;
        Tue, 30 Jun 2026 06:57:18 -0700 (PDT)
X-Received: by 2002:a05:622a:286:b0:51b:fe41:4764 with SMTP id d75a77b69052e-51c108197b3mr29499051cf.7.1782827838397;
        Tue, 30 Jun 2026 06:57:18 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c128917594csm132716066b.59.2026.06.30.06.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 06:57:17 -0700 (PDT)
Message-ID: <359d3d95-4756-49f5-8dc4-f24f24844f3a@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 15:57:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
 <20260612-shikra-dt-v6-4-6b6cb58db477@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260612-shikra-dt-v6-4-6b6cb58db477@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: QYBsgSv6RbM27oP_zjB1RBwQL0hQqbT2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX3QisDbo3Eoxp
 /XiRjuQxDDxcBqN1Dh9uYCH4N4esmpetWq+j0vUNKmCUl+Jc74F0912FrdR5/kKFVAj8HopVecv
 f9kFpJwJBNVaqofi/LRAqURTSjK8JXdGf2cU6ikjLcaFlnGJuZVYH10H5GUqASdnylpkWwyjhpm
 FPhG2u17rniXgbHN4YhN4djU5BFXtaGz1ZliJEYB/CrTTAR9X/fnXM1rJ3TUXeGipLR58s0T21f
 SVmjfvp69PbF+CXgS1woGz0pyKzofUKvWRW/Ye7x70Z19p83ZBQctnGiWSNCRn1asV7NS1LJVQg
 156ey03FIg9Luqlu86Q/J9KE7dmsmk6jU1k+3dNkaR2xXkUoj4fk4vAy3ipAHBiocu6k3+ygrAP
 JvoT7zlxYaefDJzJkxyAi3F7lyNRvaB7FeiTQUVu/Zz+28oBo9/vD/JgctmIPq2uGij85Wn9/pq
 hlolmbc20yluj3TB1Sw==
X-Proofpoint-GUID: QYBsgSv6RbM27oP_zjB1RBwQL0hQqbT2
X-Authority-Analysis: v=2.4 cv=FbcHAp+6 c=1 sm=1 tr=0 ts=6a43cb3f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=MSeU50jLikp4iQrAx_QA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX5lRXtIfGxBhU
 tHmHT6uqrBBXTkkLQO0EdlOSu44XRzIlcS567mMRnqriLRnRzWahXemT4d/41v5GTvv44PycD2q
 frz1LNl/fMjTrR5Wk0Fc8IEzxqAj0gE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_065720_764690_0041599C 
X-CRM114-Status: GOOD (  10.79  )
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

On 6/12/26 7:27 PM, Komal Bajaj wrote:
> Add device tree include for the IQ2390S variant of the Shikra
> System-on-Module, an industrial compute module integrating the Shikra
> SoC and PMIC for industrial IoT applications, designed to mount on
> carrier boards.
> 
>   - shikra-iqs-som.dtsi: Industrial SoM without modem (PM8150 PMIC)
> 
> The DTSI includes the common shikra.dtsi and adds PM8150 PMIC regulator
> definitions specific to this variant.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
