Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ED5606A321
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 12:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=siT+UqiM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=CQ1Atyao;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ObBtv92B;
	dkim=neutral header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=B0ZOqK6K
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AkD+ExssCBVnWfSY3XUd77amR7g6nSKvQT3mMYV3C7o=; b=siT+UqiMdHTTPpmPI5Agi1Pcb4
	8/EJ10kws9WfjGN8UagO537n1EoHbWWkW7wJNXMMKDTxOmPZdXRLeGo+nlaq2loKRn7OgMGopuRaZ
	Fh9h6r7KjpA3cPW8gaIkdvEcx1LjchXSwDAKs5b4DNt+uC2W9EWqoaIDWNl9tFL28tjt6X985TJhW
	LWTl15+uMolRvh3BB8aDPQfltatBKt5FkT4lo90r2SxyT5OBLEZTTVPZQ0c+N4u1CDHtHvRb5oshF
	tPUgXSWFL3PNb07rSuWY586AQfnVDDoDAPnub7savAOP6YV//6KelShVzS/OwlpmnbTmiYMTdrErR
	TlgxNntw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRq7H-0000000CfPW-0Y2j;
	Fri, 13 Nov 2026 12:10:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRq7B-0000000CfNg-0Sz1
	for linux-phy@bombadil.infradead.org;
	Fri, 13 Nov 2026 12:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4hEbvuDKTvq5Xc54WAfLx4GkA5m8TdMCxYJefmo5WTU=; b=CQ1AtyaoDuV21OIfEl6kokntBa
	qCSehlNzq5zAXRe1Mt18OwM/BTUXHqaVax0uDqhdwPaORJhRuUgKwrlptfjcyLC7IJXz78+eaBuO9
	fpgaMYZ8BM9b+zz/Q14pzZH2dDagQLksgDh0af3knI222DMtaPLKXgWh99H2I7uSonutHQtBvG1TK
	xZ37g96f/a41E+WzsShevRYuOmnmgbdMahqIAdIjknWNlyfsmf1kQXQogFcpJZ2nqBBHO4GtKgsN+
	FIxYxhqABf64POYUbccv0kWg9Ip9SyDVoe5TPgDyJk6DGpE8wH3KXzGhyAaGthUEk1DZQDHLcd/0G
	XAMGQvVw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRq78-0000000BDUt-16qu
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 12:10:44 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADC0jYZ632007
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 12:10:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4hEbvuDKTvq5Xc54WAfLx4GkA5m8TdMCxYJefmo5WTU=; b=ObBtv92BXUpOERJ+
	2WgyEdl4lbkD7pOLZH5GrGlE+98lvcAtyZbrkhFvxZIDGjJzZVfGGQmQjOzKKPqb
	9K3j6lvWgfinVvqZG47jlC4w4AXyt/jPlZVU3WapMHA5Sy+vPNw8jOIillPbbq6L
	wKuOh5azgiMcnunj/Z40CesmKcHwMvZhU5R0KC1cbbj3u36fdS1l5b/z7PXJ2iY+
	zLZIH7q5h76zuRurP7DnTiUTYFek03tFCNYM1cnBI3UTlIm+56yJ1kG7RpaJMMys
	1+TvvsDds1L1WqJ+1M8yRZjaLK3jgQVzjL33ANFBF7C2BLbiqj6+tEyCd7ssXpN/
	08SwdA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwqufj7md-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 12:10:37 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5ece1a3bf7fso59644e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 04:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794571837; x=1795176637; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4hEbvuDKTvq5Xc54WAfLx4GkA5m8TdMCxYJefmo5WTU=;
        b=B0ZOqK6Kvu+e9ycJoKEiB+N7F4Y5SWmblZyqSoEpf4geMCOIfPBLXj1dB4Kragkbji
         WffFGT+vBNLbpEWuTqYObkjzDaEdedoTp2FYB8SkpxM6oxtDg7eeef8B5Kmg4CZI+PBe
         pm+zztWbromr1n6ri5uWXcVDXPAWxJDyPLJof09S6zIIbzFgC2ZNq4tPT9NQADgZ+Q31
         q80F/H2ayXwEd3FoZmZrXkrG11GWWj5VxH1ptm5CZn9GDwrS7Ng0fqWuFiQidT7VoCna
         ZqDAwGKt7Ufy+MNaatG13PrCaMifH4LHPfswxBgr6HTcTQ3If1K9RKkH1CnAFcg5bCEP
         UQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794571837; x=1795176637;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4hEbvuDKTvq5Xc54WAfLx4GkA5m8TdMCxYJefmo5WTU=;
        b=C7AAtVkHcyW2MXXa/dIn4DTzxem+KI0Gj8IyDRvAVpTJ0ONZbT66OhJ5vjDwO7H35R
         0ApX5HMEr6Ypgl0IKE9vubqEECRdcaZ3SeIkCCAGLQrAp0J4PkoXLPlNF7zLE+eaXww+
         0bsoATnYICBVkxhfsLUrW2ctVJiZO2AfDWwnQiG+5SWx35QIUxSsFujPKuY2tsUbHkvm
         Iz9aWg6lb4nLKDfieGAhHRaExLyNfwYK2ttdTOkYam04JiyH10HfGzhCxiO44cBaNM59
         8gHd9EeKn2F1bksj1SeP/ySaaF+KXHcbFHnPIbMZkKhQk8S/yY41CKHZh0kP9RJfLxHF
         KD6A==
X-Forwarded-Encrypted: i=1; AL+hErGRYaoXGNUXEIL73gUv0OIFuK4bYWBO4BzRo7ticYTH/zOg1kEDXE1Fi1VILTeQwb4OA08Id02t9XQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z9DBomOCh5V9AMLLuPLBlKXyHv90qYNS4eqkpYJAXSLQQLAOqHo
	pEgkLYfToA+wdIjAPWVuceFQmheJgmykLKoAEtKTUf4SO482ZBRCaQI/1FV/kneBTfU/NeZXtje
	wlnJ9gvxs/wUtzYv2BsNTKE5sVEBUlVN7v3Pgf+XYxn7yyvy384HyzsOSaf8YZaSBSOjm
X-Gm-Gg: AYBFou1DiG61Z9enmjyzpRv+TX82bP3qTIQjRaACwapEy9rL4XWA8Y6SJm6UhWd1J/n
	OUEC9iToH5Bx2oNUd6gn2GUO39BzqjnJhZDSD0n6I+3uLd8f14GLnQ0kWXmrpgwzWwC61bPiL5/
	pANeTZXqQUibfw//l1JdX5AQZjrqMOjYsK1CkT+Lbtaxa9IZLmr0Nl8z0zrNAhIfPKIGlov4NWO
	VLT2WT3A+Mvw8ZhvS4fTMpjrd3yU89tCn/XCg0kpiOgxEX0inNHE8poWUu8iAOQEaLY0Q1JOBkU
	enj9MsUPYEqBrd5E9FYt4e6ulL9yshmzMvw/D+Jf/OjaPu5De79bOJDc5/6YAXu7StQzXF95f1u
	73+l6t105MUgAGpL5tBcaWoglrIR1gBmp/bwjXDKzUqoow3961iJgLYpHlIIWGb4RdaDd9+Y=
X-Received: by 2002:a05:6102:61d6:20b0:7cc:32ce:4c41 with SMTP id ada2fe7eead31-7d64d6c510emr550104137.2.1794571836907;
        Fri, 13 Nov 2026 04:10:36 -0800 (PST)
X-Received: by 2002:a05:6102:61d6:20b0:7cc:32ce:4c41 with SMTP id ada2fe7eead31-7d64d6c510emr550065137.2.1794571836420;
        Fri, 13 Nov 2026 04:10:36 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b7c23ddf82sm870968a12.26.2026.11.13.04.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2026 04:10:34 -0800 (PST)
Message-ID: <0cac5090-a135-4a6c-8221-846b34ed5513@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 13:10:29 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/17] arm64: dts: qcom: Add initial Halliday dtsi
To: Stanislav Aleksandrov <lightofmysoul@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Thomas Gleixner <tglx@kernel.org>, Radu Rendec <radu@rendec.net>,
        Lee Jones <lee@kernel.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bart Van Assche <bvanassche@acm.org>, Bean Huo <beanhuo@micron.com>,
        Stanley Jhu <stanleyjhu@google.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
 <20261109-halliday-dts-v1-16-289114ab8197@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261109-halliday-dts-v1-16-289114ab8197@gmail.com>
X-Proofpoint-GUID: mCJJmzPDSMDPujVVpld37WUilKBl3tOF
X-Proofpoint-ORIG-GUID: mCJJmzPDSMDPujVVpld37WUilKBl3tOF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA0OCBTYWx0ZWRfX/8vlfqhGBm2M
 BD+z0tcssIdJD8IefUP38JManyo7Z/h0qY86rfYX7yoqRZ+Yp3+0wFB9AvTWLj3U5y+pgWhgRjN
 vZlUOsib7TWg6EIzMKI6mCdMJiUrnRCydqutm+XwW7HsT0lfpay0WCmzgQtMN35qMTQI3Nmpn2u
 2YU0JMzShmYbdxzwmbWyZouRzVPHsys1CGVxPgDpr4nwviyJrNQ5T89AAWp/4g5hXhUyTVgwC9Q
 PwoX6x0gobRoS+6fFzZis4vXHA+wfexN5Z+UhzYJvPM1TmDWJx41iO3nDMc789/chqG0m9f++HV
 CEe4zi8U97+mt9xwughknJ5ZqTi9tkXEa55pBu8K+hi+ciYDq7+o92Jhc6IWUcT9cyWzuni4E+i
 NqhT2gRq8gTe7tAdSTnLcCdJQVi9yHQA5/wpYkrWfqB/buynibwjx1bQKSsP5ecwiBKKfmM+kh+
 inkVlqr8kVAUoiCsHWw==
X-Authority-Analysis: v=2.4 cv=XZocX455 c=1 sm=1 tr=0 ts=6af6fe3d cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=pGLkceISAAAA:8 a=U5E2jiqv92kUeAjINO8A:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA0OCBTYWx0ZWRfX2wtDrOtcYk6b
 yHLSso4rJ3aNOdGIU8Ly58qQBFbJnOWVVkVFVflbRvriUQTeko51vG20+VYIGlIbgRniptf8Cox
 VUMp1XgLEphnMUwbFUXKJBJGEchmf7A=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_04,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_121042_590409_E0AE748D 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.9 (/)
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/9/26 1:33 AM, Stanislav Aleksandrov wrote:
> Add the device tree for the Qualcomm Halliday SoC
> (SXR2250P / Snapdragon XR2+ Gen 2).
> 
> It describes the CPUs with their idle states, cpufreq and OPP tables,
> the GIC and the PDC, the timers, SCM, SMEM, RPMh with its clocks, power
> domains and interconnects, TLMM, GCC, SPMI, the apps SMMU, USB, UFS
> with ICE, TSENS with the thermal zones and the PMU.
> 
> Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
> ---

[...]

> +		idle-states {
> +			entry-method = "psci";
> +
> +			gold_cpu_sleep_0: cpu-sleep-0-0 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "gold-power-collapse";
> +				entry-latency-us = <400>;
> +				exit-latency-us = <1400>;
> +				min-residency-us = <2207>;
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x40000003>;

Please add the other idle states (D4 and E3) from the downstream
devicetree and match the order of properties (psci-suspend param)
to glymur.dtsi

[...]


> +		usb_1: usb@a600000 {
> +			compatible = "qcom,halliday-dwc3", "qcom,snps-dwc3";
> +			reg = <0 0x0a600000 0 0xfc100>;

Please use '0x0' for zeroes in reg values

[...]


> +		spmi_bus: spmi@c400000 {
> +			compatible = "qcom,spmi-pmic-arb";
> +			reg = <0 0x0c400000 0 0x3000>,
> +			      <0 0x0c500000 0 0x400000>,
> +			      <0 0x0c440000 0 0x80000>,
> +			      <0 0x0c4c0000 0 0x20000>,
> +			      <0 0x0c42d000 0 0x4000>;
> +			reg-names = "core", "chnls", "obsrvr", "intr", "cnfg";

Let's break up such long lists into one-a-line

Otherwise lgtm, very nice!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
