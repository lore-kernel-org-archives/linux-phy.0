Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9460606A321
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 14:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D9509536;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Mo8QKtvX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dJbLvtkh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TsIaveIHU98JeK+RDHejVtLVCFYCCwJYZU9Ddjq99p0=; b=D9509536YT95xMe87BDJDJ2TYg
	ezPv8rjoCEqB8h1gyKDUbLCN5pG096TNQIezWfq78FKELezg4uDW94n/ii7emXoehF/Z0qkZEribj
	gdIVrat+Z2JfTVEZSshTTqGNZBSa0sJAcvc77vkwygLwY2lYKhMqdDV1LS/cThI+B71JcDNPZXVDS
	qhl+wT4dpLlSOj+D+LPPDhlsLwzXVb0yBUE18qi+IsDjB47FLf0A3Fo4wTfwYSAZvfoiq7XGFmcmO
	zpux5qKqzIH+sBMkXS7Tf7cyegUWx8+ckgML5oA9ctRs6DpWFScWCw1ayc1tDrNfDCiVvKfvAp1lk
	AdcXiwFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4mc-00000007DmK-2IVF;
	Wed, 28 Oct 2026 14:37:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4ma-00000007Dly-0oWf
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 14:37:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBe9tq1539066
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vlUL5txdhxREUhLW9UqljJ3TVJiPo++T56X6t/sEh0w=; b=Mo8QKtvXUgWtezBo
	IWgLCX97eCdpRf5KvhLLQgXyUGqqhu4USHlsr9os0vzPZT4yazTxQkpCPbBXc3PL
	+IeVjF6rfpTjbph9MvQS6o2bFOp7JI9lmzmxuX2iCSdvFwKWpGSe02i7zpekDkUb
	Mr5/FkhfryENrc3GUBVX6Z0Zg3O5olNzQNB0YotlvbJSIoln9HY+icD+C6wMSrwn
	tuRz5oDtr8JqFoAM47eQPOycMCBHYVyhjYUfu5JEYV1uNAW/5nRGn1IcuUT2KgLD
	Zu1E3Jkty88q23e7qqqh+3tCyRtBNZcMASHztOD1vPT5lgJI69/wwZh16cA+VnrU
	xyVMMQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdf7sdq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:37:38 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-988bf286521so73250241.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 07:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793198257; x=1793803057; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vlUL5txdhxREUhLW9UqljJ3TVJiPo++T56X6t/sEh0w=;
        b=dJbLvtkhce01RMlVnS/6kXfsDmslgMTG4GL8tGh/VaYpbI/7ng/qqOtqrZKknjW8cB
         RJgiMp1LUyFkPQX6DOlH5zObYwtPGLJXsw2fhY6p7wqiURyxSFB5Y+hA80cJWv83pQAh
         Bauu13F0t+x6MVsC+KQ71Zvkw3ULkSCG3V7hVuQbabbLYKsWgX2MPEAP/bsD2MaMGuih
         KBzDMydX6ZT89YDJLuaAxIiYd3xSpZ8v9gQvreCHPX9Pd4F2mwuYoUzXASxftbsRlYDY
         rpXKSJ+OGJSZn8b15bbiC/g0OjdncgUPz6SBSewSJJZ0SY/BUO5M/C7Tfqn3EiErBr0B
         4ocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793198257; x=1793803057;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vlUL5txdhxREUhLW9UqljJ3TVJiPo++T56X6t/sEh0w=;
        b=h1cbRdbSo77uvssmHldJuNREwY2sUZlE5kfoEfgpmgxFeAuNV/aE64tg5QyN8X6hXO
         2jYhETR3bUR8N9AHBJcKRT+fGykjE1hg7v4KAZnt2V2FlMcalsIKD9njWDU4Ve13nqVC
         Ov4OL2dzG/7o+TPEq4lIkPNWM9uNvKBj7lVx+1XVN2XHmNWKZUs99UUteYyWD0qicqpS
         31jHsxbWyc4mQVEdAvhjGtjHpq55KlZIo/jAsSwL9MiCjKIdMFRmHpahG3vMgWh/1X8U
         42mua3LH7r18VPejB+bW4SjnK3QosEMdfNP/XtlXUYsGn4400Ave2pdqPkoQHEp3OtyE
         oLqw==
X-Forwarded-Encrypted: i=1; AKwUvByyLjUQfkZaE2xEJ3HB3e0Adw0OjI7GlYrFCM2enE+A8kNb3uv43YQF60fHuZkr+I3kvtzTWqZZNoA=@lists.infradead.org
X-Gm-Message-State: AFq9FYL4Tr7//+dR8vQGj+e0IH2FcjjQRXcfR0MoTcAvHGlT23iFE4b2
	pmcmIJCsrMVL5Vg0lGJOx8lN6qvh67sDnJ+t02o+eJ7x/e/3wPcAmSv3zeZwbvUoudgYtr+alGB
	Splttbr/WX8W/cfs054EF+anvz+3ox500BMVs1Som94fDWHpW10b6TdqQBF8rHPjCWdhBcJfB3U
	N7
X-Gm-Gg: AYBFou1Jv+IQ5H1Dl4mbSnF6m6aTpiWRWsb6Nm+kxL7XB+mF8DiM64dx5UtMX4DeceR
	DycraMAGXJSBavnkHrd+ZuScD4h0444F90TfYKXONguFvpLRSwCizHqr6zTooZK3/0J53dI+rbZ
	BeGXTpwEw7J2UELKEvxT2TTqNIXUulOJkW3U75aAfsOwMf0Xgliojh2llTTWbUFl/MmXC9lqamc
	vj4K+if9cW7VoQkdHliJTkqqXohfMwPwiaZKWwFU3uNYgnVq7nBXGt2To2f52OhUbYy2y4u+lty
	7k7ksPZnrz9ezurxSNORN+fKR1RVgkpMzvLlNzwBQAG1KjJp+mLRd/RuvQZqHy/07ddCoSG4B4/
	dWVkno04hHs3yropX9c+gXpxwTC7dAoxf88MndI8GZsQh0GM0mmEig5CFGqseh0+5LNVimUY=
X-Received: by 2002:a05:6122:3b06:b0:5e0:2ba:5a06 with SMTP id 71dfb90a1353d-5ec4cca1106mr1415597e0c.4.1793198257506;
        Wed, 28 Oct 2026 07:37:37 -0700 (PDT)
X-Received: by 2002:a05:6122:3b06:b0:5e0:2ba:5a06 with SMTP id 71dfb90a1353d-5ec4cca1106mr1415554e0c.4.1793198257053;
        Wed, 28 Oct 2026 07:37:37 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd4e784esm601408766b.19.2026.10.28.07.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 07:37:36 -0700 (PDT)
Message-ID: <5b27776f-cef4-4963-85d4-6d2f970c8484@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:37:33 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen and refgen supply properties
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-2-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260916102023.2054761-2-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=M4bYuCws c=1 sm=1 tr=0 ts=6ae208b2 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=PuOz1RSaosiZ807nmPEA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: vivaub7_5BPsuWuMyWQm6oPOmRcFP2zy
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfXwzoU9vprP0hN
 LQabMBM0Nyknp+UVWqQdAqXmGGYCJQ6juPY7SivCaezC8/XBNKYRaSQzwC38mgJyAImYXDFLXDI
 Py3sXZrcPc93gOcolKnDqVHsUuLC2f0=
X-Proofpoint-ORIG-GUID: vivaub7_5BPsuWuMyWQm6oPOmRcFP2zy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfX544WUBsWP8bX
 pdHNZJKD6gZVDU5RTQXxunW3eMXonu+CbDPIKxQPXoehUvSJSgzOx0/df54s8wsAyNcteiOBHGQ
 apBPAfuaiHGT5+McxzFH4rl2IYQ1ihKwFpoUA18MzNxE3cPprbjedd0DV52/prCtR1PwTVoQkK0
 wHKI6KZ4UEtGCp1kTuC+4NF4sbNXB1ymNtdLNejIowBD1iQpLNSNet4BmHyQ/Vb4jAJQX3lpXnJ
 ChXijOqbw+v46HaJY8+66NlWRMWEwwY7GrOzICAn89ny4SWRTUVZkAOoHkRc2L3l+F0vXD5Pj0/
 MwSRL/U+iSd1QwkAQBtYOutxxtj8tHprB5ltre4X0Sq0fdcUEiLpgeHgFM4IWSjGCKSIGTpQpcU
 DKI1ttAyHwRhfMKYNrzeI/o3yBvjqMRPkvtbuYwfHpnQD+n9KhuFt8w5maPHzc5vV5kNZL6kTyw
 xHbrG9DfpZOdjpJ8qcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_073740_375273_5E30D572 
X-CRM114-Status: GOOD (  16.14  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/16/26 12:20 PM, Ziyue Zhang wrote:
> QCS8300 and SA8775p PCIe PHYs require dedicated vdda-refgen and refgen
> LDO supplies for QREF to provide a stable reference clock. Without these
> supplies, the PCIe PHYs cannot work properly. Mark them as required for
> the affected compatibles even though it breaks ABI.
> 
> vdda-refgen-supply is required for all three QCS8300 and SA8775p PHY
> compatibles. refgen-supply is required for QCS8300 only, as a workaround
> for a hardware issue where QREF actually depends on refgen3 rather than
> refgen2 as documented, so the PHY driver votes for refgen3 directly via
> this supply.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index b353b7bfb839..bd4c98784142 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -94,6 +94,11 @@ properties:
>  
>    vdda-qref-supply: true
>  
> +  vdda-refgen-supply: true

There's 2 REFGEN supplies (0p9, 1p2) and the sister Glymur patchset
defines both.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
