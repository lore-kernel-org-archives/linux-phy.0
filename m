Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8809C624D5
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 10:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxpu63oIAk0v2qvDTAyasFrY8AJiWnolCiUoZ9DsYC8=; b=PAyju6M2RLyWOm
	SBAMQBAk0twWRjTmLWsH9AjOR4aTr/St9WW1J77RNRQXLpTfpoy4K77u5h2Qb4E0Zqwg3/29yl9Jw
	sEiSoSz6drqj+aAdtJlZ2QMK2yWh4VPZxdqe4+OHSFbjziPT4D8zMcC4fVGklXyjKnRQuMjDrkFCX
	OViaWwToK+UdpEUC0yL56NqzrHFAkt4ly2FQYYkrnalXVUeK2LgKqcf6lrxRLUOAA6JDkOzsSbFRG
	n67kb89YiP/UBB4c4Yi5hXPAhJQZfVDT9nwQqc+04UizVhmANp4fGnGiLcxWjhegAfYOGLjYMwipY
	w1xDHb+DOfo4G65GCITw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hwZ-0000000EJiP-1nou;
	Wed, 02 Sep 2026 10:11:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hwW-0000000EJhx-3xMR
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 10:11:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6829N0GY1590060
	for <linux-phy@lists.infradead.org>; Wed, 2 Sep 2026 10:11:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hGLV8ocmkLX6cUaKfIwRziMPYkvvnBHHmbRn7IWjrAk=; b=UeK5KfgL7e9oD8Tz
	75rNoo3ECYfgWQ+mPypX+A7CArwBHs5szY51yvE9FgFobhIG/n+2GPczqYA4VsN0
	5A4tDVM4LXQeO9L0FOakPDUsk6rGpplqZZee+VKQnVYW0ai5C9Ijyi4mk7YH7oDn
	VpwRo4SZA3n+BkXwrmQFr7k3iSDF/fMtMy7LbpYfojxRuGiL+w440uDaGCGe7SZM
	8V9WH6NPROUqd/poOoEwHu48LnMS+ZxTn8AwbNzqC/5a4QExKZB02NKfnM/zLOBM
	IZFlo7S5WWnYmv6DOzdZogTaT9Yrt1s1d7bpkBben7SViIxusEwwwMog5yngzMPB
	D/9CYQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4geguy08sg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 10:11:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93494b1e35cso20871185a.0
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 03:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788343902; x=1788948702; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hGLV8ocmkLX6cUaKfIwRziMPYkvvnBHHmbRn7IWjrAk=;
        b=kONGJvnXCvdl2JELIiTudd072fuCbHVdrwUNdT0mUMoyXJIRkWyw2Uv1QJ3OJt89/b
         2nvQpuhG3Xz/DPXih+oaB/+EBvbVidUfHp+HjTr5kvhfqJ0G0GJImQSk9TC34+PchmKB
         bNB/bkkp1hACnDnmCoMxtOPhOXrcOcERdyZ4I78Kc9kF6jYCxlJW7zNpcpm664+YJUeP
         q7MSZAq0iKnlNPudxHxrXoKrIyJNwQwuBArrUsunWG1Ih/XGeePia77UH4W58tmcnQrb
         ned9yoPwhiCeuJTGlJBNCUd2e6AhOLuYnvd20AceGohGDidWBGM5v5kQIlExJuOhAjIn
         NqeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788343902; x=1788948702;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hGLV8ocmkLX6cUaKfIwRziMPYkvvnBHHmbRn7IWjrAk=;
        b=CCnKfdJSk4g+HGBmaQ6Y407rO6gRM17i2deRvmQA5o/6nUEhlMdu9w6UD01OcXWQm4
         2Kt/VXSD8iYMPYVBH7RuuS1HTzSxJdG78hJaF6sWOJDKg+HOkLKYAkRt44LZcnqKa2wp
         Mo9p/VSN3HEoWWXyblm9bkcZzTat6zCXPlBzIBBwhD2Rs8CO9rITNd5pe9UMgntWuPCD
         H3lRQf4Wl3XHMIVTt8vf5DqhYdET77DB18k9ajPtpei7CXfcPL2yQa3Zj5ux0RVEqSKl
         h3TsIIlyiTLi9yqmR4IM0PvIMuvOPb7H/0grwzY8DOaiKmNZw+cL3Z/DKALCa8Nlr+in
         3J/w==
X-Forwarded-Encrypted: i=1; AHgh+RqEctFLO5slYKshLCiiHxFhPocMkkr/sKPDsCrDiWLK25JturJtcHBj7kro+Q0lxxrvVlz3vi4AH7E=@lists.infradead.org
X-Gm-Message-State: AFuF++n0PHZWuar5NqdVnBBOOjwxcRb9o5B1grUIArtKKFsLS0Fxo//z
	MA61oOJzArHlzgMH5g0RRRq2OFhZnH99VFGOeVOKbJdWn08YQcNh0iXOGj0LvxynXA8HGpbdPy1
	PW+pbKZ2B07UhHWvjCArLiJJuE735UGxWuvzygjYaJnusrCgqM+ytIzc/Hqs2xlEnIUu9
X-Gm-Gg: AR+sD10WCbrlT35vfN1K1Cc06XpyWFeA13NXcVkANVNeAhX5tRH4heW+1dr41I9K+P+
	BIV5N6BKvG8+MttC47hpwCMWBz/z1o0iJf8WzD83G5vWc0f6yX2ny+GLq7YIKSiN/H84vBeU48d
	thq+M1mfQoieUwAhDs7JCXeIfF3fRvhCgQ8DpR+Tod6qFWHuNwkiHxTC71vrfIroaEZ587jzgZF
	tPqL7iKCEuweokaOm+45CvVQkqj239MJMwj2FNQ0mIKUiVvJ0vpMNyQpssOZBvTd+2PwCSfWZ51
	N7YhG3PsxUJZPAuTVx7IneStW9/UtZJyoAFXm1zSah8L5nLmwOeeM3gjEnTsDKD00Hr3ita76/k
	Hj4LfWji+OA+Dgelq1gAJ6g==
X-Received: by 2002:a05:620a:1729:b0:939:48c8:656 with SMTP id af79cd13be357-93960cc57ecmr241759085a.1.1788343902137;
        Wed, 02 Sep 2026 03:11:42 -0700 (PDT)
X-Received: by 2002:a05:620a:1729:b0:939:48c8:656 with SMTP id af79cd13be357-93960cc57ecmr241723585a.1.1788343896176;
        Wed, 02 Sep 2026 03:11:36 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c25d039c9fasm105678066b.31.2026.09.02.03.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2026 03:11:35 -0700 (PDT)
Message-ID: <18a73f51-a535-4cf2-a4da-d7cd4fd2a801@oss.qualcomm.com>
Date: Wed, 2 Sep 2026 12:11:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe
 multi-PHY support
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-4-18bf59d19d6f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-nord-v2-4-18bf59d19d6f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=UZthjqSN c=1 sm=1 tr=0 ts=6a97f65e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=uUvTuc4oTmGzQ4V00ZcA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: m1o63W-x4pptfTIdtBLVf41FhraFV1Av
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAyMDA5MCBTYWx0ZWRfXwx37a1iPCQNA
 aN3Nu6zK40X4xS/iw8JIQ0JX+S51MRG30er/PKbKXRvL1tAc9yZQcxgzgwzJHNEMo8cH+adqKxo
 c9MrTyBl+uxhTZiTd6u7e0cgHRxRwVs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAyMDA5MCBTYWx0ZWRfXxuNwuShsFwEu
 yjBoInBcjanyOe//kPxSROlMw4gKXhzp1YT/LYVOeu+cJiGZwIaBPLxULn4SuEU4w5XiGhUfh4H
 1z1ig7+eInWbsPz/qJ6JIcgT5Hd1qEXRDSVSTZ08ISUBhDaJqqS8+SRddVZKqhvyVw5qa9sBIwU
 OLwkep7kWq612zPi7aDX1G8kj2AexCV+ZwO68wnPULNq+CyItm67nXJ+QLUKiPn+fRCEYN3QUti
 ZXlwDRiDCL+RqxKPKB6tTCwQNpkY6syCLWldpAtyO5Y/4zEONe3aSoD3QP4/GUn5zrRICzhhVnN
 /vGA3GnvLlqCcgRjV2J1bXOgUfhunqvVvNiYZ59+MHG4EoPADeqE6nTccV+Z7DSD92Be8EgmyIi
 4I/afXHBPmrZOy97XWHneuLP+aq6A8QphWXV//NJGwDqTeNA1w1QULk3CFJLxXXRef6AedFPD3M
 Lw4Y58BtCGAEv+B/+Ug==
X-Proofpoint-ORIG-GUID: m1o63W-x4pptfTIdtBLVf41FhraFV1Av
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-02_02,2026-09-01_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609020090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_031145_102716_5138E6B8 
X-CRM114-Status: GOOD (  15.19  )
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

On 8/28/26 10:43 AM, Krishna Chaitanya Chundru wrote:
> Add support for the Nord Gen5x16 bifurcated QMP PCIe PHY.
> 
> Nord has a single PCIe PHY block split into four ports which can be
> used in multiple lane configurations: x16, x8+x8, x8+x4+x4 and
> x8+x4+x2+x2. The active topology is selected through the link mode
> configuration register, and the driver exposes the corresponding PHY
> instances based on that mode.

[...]

> +static const char * const nord_pciephy_port_a_vreg_l[] = {
> +	"vdda-phy-a", "vdda-pll-a",
> +};
> +
> +static const char * const nord_pciephy_port_b_vreg_l[] = {
> +	"vdda-phy-b", "vdda-pll-b",
> +};
> +
> +static const char * const nord_pciephy_port_c_vreg_l[] = {
> +	"vdda-phy-c", "vdda-pll-c",
> +};
> +
> +static const char * const nord_pciephy_port_d_vreg_l[] = {
> +	"vdda-phy-d", "vdda-pll-d",
> +};
> +
> +static const char * const nord_pciephy_port_cd_vreg_l[] = {
> +	"vdda-phy-c", "vdda-phy-d", "vdda-pll-c", "vdda-pll-d",
> +};
> +
> +static const char * const nord_pciephy_port_bcd_vreg_l[] = {
> +	"vdda-phy-b", "vdda-phy-c", "vdda-phy-d",
> +	"vdda-pll-b", "vdda-pll-c", "vdda-pll-d",
> +};

Can we only list a/b/c/d resources and then take a union of them
as necessary for combined modes?


> +static struct qmp_phy_init_tbl nord_qmp_pcie_pll_a_tbl[] = {

The abcd tables are identical except for the last 2 writes. Factor
out the common config and create overlays.

[...]

> +static const char * const nord_pciephy_port_a_reg_l[] = { "port_a" };

We already have some of these symbols in this file that shouldn't
carry any SoC prefix

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
