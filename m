Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B7F606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 11:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W3+Ou+7q;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cJKj8NvR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KOyaewCO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LPK87Z/nC+Oc+1Mdq5vkQrKd+dJzk7Opnm6AaXoN0pw=; b=W3+Ou+7qrfUGYJkb6OF8nYAKLN
	wzTRE0whDVxuAposdh9gpKJUCak+liLbmNXGoy4QQeSYnvEcQXhg5jMmO5M3YJ7YVKgll2XMWRgtG
	ACcReiomzCIEyu8sfYB/khPW7V4nStUI85buafDrTyNLbBu+A6RR2VlBuZGsbSC73dkj8/IC8wGKI
	A73wFC8utBnmYT6VcKSKOV9V9ud8lT5lASEq5S2YchHeTcfHs05IQSwgJ9+FY6fC1jy6NncLbVXP3
	vn2G3iVnGnGDzHVxwL9uqwUVYtgVwx+E7pY1/Gd+gwfmbL9Y0SXFut8nxePVBlrOXjukV6yTz36cB
	r9qZsslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKDsP-0000000GG2W-3QiC;
	Fri, 23 Oct 2026 11:56:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKDsL-0000000GG1x-0ffW
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 11:55:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69NAAYFW1948474
	for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 11:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0lfjro51D7Qg6x2xly6IGeYnaVRKofx4mi+Gn179GOg=; b=cJKj8NvR2w+BX3vH
	+aQ4/rwe4iSgxxjXPyYptap1oi8ylQ+JWRjwFhCH4f9p/5hzCx84yZ5T8WByfr3e
	hQWOMHlXMxxAseNvApfRTki+4bd4EJdrAj3jXjQb8sQORdUov5EK7MjlkLWbTgwa
	QpiMarlh6BIUdOu0PEYscJ/j8oJSVXisuCa6qiy/kCYiGrbopZOO9f2Ms4l6NUYy
	TdsMKwQ+jb1mQHAsXNaTaIf7HMdv/DJqAaDoSWJ/RXOdbFCS86TyZo9VyVQKVWtH
	GPkL1L2LjaALQUBqeNw8dNZs6aE8f3UFbku/7kyiyq6P+IUCizodMfx4ZjYACj4h
	s3YbHA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hfqmtuhx9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 11:55:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93cac495d99so15478685a.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 04:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792756555; x=1793361355; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0lfjro51D7Qg6x2xly6IGeYnaVRKofx4mi+Gn179GOg=;
        b=KOyaewCOC+VmrUUk8ZVNXFGlY2wtsVZsTu/41CypN1PZ+b3sPFQ+C3FUOBnuRScCbN
         C2nnVT1VMPqYD2XieyTC0ACGUAjzmqRXMpQk+SMDsJYDVxvIOvsSVPP1Pwdc9YSi4uIl
         CdxiNEem9YW1zGxvzSflyp5M7qgXAtLKAZ2Htz8hg5A5AGFlYJWTU6N4f+dLv8zadw9A
         L3S5WwyP9TQ7BOXuhzcbp8eSI4VFxiDJ3C6yT13aLrJPcM6zv6qienqRnrWQnJSmoOYG
         VYGSBEoWbk1w1dUmsho2BDaN0lttGM8hN3Rq3lf1ZQt8ciR1VYlGu1Oc/Hh4OL+zDRf9
         13jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792756555; x=1793361355;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0lfjro51D7Qg6x2xly6IGeYnaVRKofx4mi+Gn179GOg=;
        b=0nIkvFokO/7mqfa+G7rhKr5tZagqJ6i4Ye5y0ygRohHs78otYHz/rr1vg2l1ngHL4R
         9dn9EFgVlX7FYLuC5ydnxcX5SDbCYI6q9LrZ1xeyxpON39KQJUi+YDYY5hMp4qciLNUl
         2dwmDjh4wf+iWRsPbXga4RZ1IwjdcuMfObOw8eeEEmrR5P0jOAbuy2bMoPr2m+nL5UAo
         AxkdAVuR5kdEB/JsINs1CmfQLWANQ7pOgNPeAhF2O9RP+Xhq5UgJfnegi+/nvLjHDpSV
         VytkhAb0oeZCBXkWUnye+G1m/VTq2125S96TCmBdaIBNF4PwJzpsQ0MRl8MJDLfdrb1T
         qRug==
X-Forwarded-Encrypted: i=1; AKwUvBxCXYpW/BqGLhJOzVa0fwHIRao++ZUZfippoQRiKRrPSu17Auua+q7VpnUbobcFHwim/wtjCku8CLs=@lists.infradead.org
X-Gm-Message-State: AFq9FYIgMqDTulnDiGTTncGj3SGGbAMkyMqTTQ3xM8HJUHpF6dlM1770
	6o3rNtNHAeSQ1N7j2if3RXnUacyvwLtqOdCSPJGmN75gLvQEzRpMK/MSS7Zd4Cfs6j0UeozJCUZ
	mUG8E9DKTgIUjweIfapJXFwqyv2zDAxxtL2aIJaOiX8dahH1+iotpYJrRMpKegXc6TLeuOmp1rB
	IK
X-Gm-Gg: AYBFou3F1fASnnGsIpaWbxpIgX62xnosvsY4J51tH/Bmt/ezp3c51vFwpyburZLrePJ
	6lQY3W9I7bNXkmTkSxVkW0s7m1pNooaYw8GHkIyzUJjbEIr38taHIXIZJhkBAIlciHwhRMVA3pp
	tBEu65yLek0nXQWASMOK6lblB+hh3X+njXxsEMqfyDNE1/LMNNMCdxl+2PvtPIR2NvariJ2X0yC
	tJ8ROdk//Ya229QiRv1+MpaKsj9daHQYVZwgGKmv+eRBPqFQvBmDy/UFFVCALsviGYqzQ5yEEQO
	UyQ2OfUu8orsuA2EbifZrH6M6Bz9gjB+wAYDce88r4fML9JUQLbVCk3JkDv2TZhQf/ozH/J5PWP
	2Li+qwu3tEBA3roY6TaQuuA==
X-Received: by 2002:a05:620a:a8ca:10b0:93e:5a3f:ac13 with SMTP id af79cd13be357-93f6f54812fmr372792185a.0.1792756555413;
        Fri, 23 Oct 2026 04:55:55 -0700 (PDT)
X-Received: by 2002:a05:620a:a8ca:10b0:93e:5a3f:ac13 with SMTP id af79cd13be357-93f6f54812fmr372786685a.0.1792756554732;
        Fri, 23 Oct 2026 04:55:54 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46a5c4d67bsm95403966b.14.2026.10.23.04.55.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 04:55:53 -0700 (PDT)
Message-ID: <feb43c1a-9f1b-4181-b663-eab9e55e4831@oss.qualcomm.com>
Date: Fri, 23 Oct 2026 13:55:49 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
 <20261009-glymur_ufs_qcb_enablement-v4-3-9a6ce83195b7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-3-9a6ce83195b7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Gt3XaU1C c=1 sm=1 tr=0 ts=6adb4b4c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=BBNwevgwxSeHGHzN-EcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: OzxA0AegcjfvtKVlIBsZah4bHOS7ptIJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIzMDA0NiBTYWx0ZWRfX2B4R3V/coobZ
 o7eq3UkaV6uZJFDE1q/Gfv+iPikcW1IXAYXJdx+spgR36j4GkXdlD6KQDc5pwU6kbFjV4ZNPmK2
 qawUU+0iV3pTQDzb8fJ798w+zl4ITGiaUkOrg3VCuGuE4v74gzTtyBrW0f0cWQYVBJBy7T3UVey
 ch68365pS6NQ2OkiznPGPBrXJIRtibM/4yEd2zt2tCzhydDk/EiMLu/7dlXGkj0+oFkGObnLUYn
 OUu5o/k4TTaHODC1VYGnxUJES9CG8AEvPJVllYzaVycKAiBqkJpgVW1iMCqJomObl2RijrU9wj5
 V87cMusMIGag7olHYiBymHPz2LaOYnv31ultXPAQHllVi4pYRpWKWMBS2CM+IBGNpZdsHIJ5UUk
 +Hd6agOJMGYXiIXMbSgHbE/cpph6zUEdLr/7dXmzpsjkLQcc2YDfJYcieNu9vdoDo4AwK6J7gFW
 H5Pfd85XZdAF1+5LpMg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIzMDA0NiBTYWx0ZWRfX3/316pt4e8cN
 7fSZrGdhF0xzxGQAD4ao0KZF/2luRruBQfFq9w1JBBEvj4D51Zbfx5/32TH7ZJ87wxe9txGZCHh
 qDRbxQr5OFg2oVZzvMB6eOHEHL02bos=
X-Proofpoint-ORIG-GUID: OzxA0AegcjfvtKVlIBsZah4bHOS7ptIJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-23_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610230046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_045558_641614_8B60D502 
X-CRM114-Status: UNSURE (   9.11  )
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

On 10/9/26 12:35 PM, Pradeep P V K wrote:
> Add UFS PHY and UFS host controller nodes for Glymur SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

[...]

> +				opp-201500000 {
> +					opp-hz = /bits/ 64 <201500000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <201500000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_svs_l1>;
> +				};

^ this should be svs, not svs_l1

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
