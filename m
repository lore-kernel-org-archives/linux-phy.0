Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0196BC624D3
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 15:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0ssiJ7wBuVXNg2wGaVOIF3mlonmvnuC08znOdxwXIw=; b=riKHgMCA3CDLiJ
	SFYcRg7CG2rGMGgGydNsspRDgYQLg18Lhr+xqSF+sG0mEULUHKXNIdS5f/VSMzaoMVSxHjRrjAiil
	IR61UJQj2m0UA1Mb5o22O9mSipwV8QXB6oadugzN7ivTiuFnk9LHECJ4kFyI3gvQAfUgdLvQCAz4H
	FT57pPr2C7kcpc505fhm97R9NfFB6ibJqx8GSgqSAvuZ0eMBiMGBo6H+xcxZTxK2umfd/pCBZK71s
	9ycP9rBqMeiC+8vd4NUWcabOIjHhFrMZ0z7dYHo6RwgZhipso0JToUJfZVXzXSFVH4Q0Tn6Gj7jtV
	ob+XjKbYFOtLWI98lokA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1mhm-0000000F3sM-2Ctk;
	Wed, 02 Sep 2026 15:16:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1mhk-0000000F3ri-3VnW
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 15:16:49 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 682D52wS1076660
	for <linux-phy@lists.infradead.org>; Wed, 2 Sep 2026 15:16:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x6YJYhz6qJkR9ol1EGjcREszafaafwzYWX/LvB8sgIY=; b=MqZmbgURP5B9iTcU
	+127h2np+UJ8c0hYXMDLQM4bKzN3SnO6lfUy8MhW26zEhwQQL9o2BlVuIkzjESXl
	7YVEB9TTe4pWjR0v0s0tupgKP60kAxpW34IlcrX23tAwAEJ7ZGNNHXW8st3WqqP2
	zS7LlsNmt4+VKEiMnG12pnqMIFMzMas2MIAr8wNyVlTyZFS9Ij0AO7dQhsobz15Z
	6DVzNOrl0kps+EAIbgCtvNvM7GzKsrLhDQZZABujXG9aTUBEIRcq7CdRD6iKKVyQ
	XiNIUSxfgj0rvaCwgvX6IBimTJ6lUimS/vNIliqyFp60GQaWBhBiENR7Thf+jm3Z
	1mqAWw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gemce8hg9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 15:16:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52ea38b1e7eso2708261cf.3
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 08:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788362207; x=1788967007; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x6YJYhz6qJkR9ol1EGjcREszafaafwzYWX/LvB8sgIY=;
        b=awPJadt5mZvnshE2VjYRWZv7a0qqvTrcLuRGDpzIGjgRWM/361HNAUu1unhUtSon8D
         KBrzMFqNF4ivpSVPS+TM6wy+ZVNjm53Wwq0yjbXGQxrbSeubznIGW0O3VEN1fphQUqbT
         fNstZR8Jd3iqDl+suq2A9uDaH2PgyNgKUIsYoXo/8Fs7t/+++GJFCS+PgrhI8Zpi9job
         uA2MEcT0OH/agwZAmr++HURP1w5it3Lv5yhLrtdFi4zD+klDQAzHUDSRZKgLIMgJ0QQf
         A9shPgqwxPIiLmtuY49ke2b4sMTIsIQokejUVcrBs7YAh2gfF7kv3tMtPky3LQA3THm6
         g0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788362207; x=1788967007;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=x6YJYhz6qJkR9ol1EGjcREszafaafwzYWX/LvB8sgIY=;
        b=KJ91owL6DHhcfe4rthXwc+YQlSs9+ss4i4fVN2KC7cmypAFapahjZXr1wvIdxKM9Vo
         gixm4tsBgkCryyn9sTCL0BJyi0VX1xTtqpQnoQjRFBa+2NoiXBZK2mloDtSsSk3BECbp
         yksU/VFMH/B7URyFikCK63KFcQmUBQafI+EUknEe8lKDycIR04UmvLU7xWtGztWhZ7Ko
         2LXoyRr/sn+CL9xQExKsHv0pbca6K8XAa160mfeRIREkOdScB/ee2HWEKpOM9Op0iQ1Q
         KCGVNcMIkE/0auJvmulaL03KnaHnbSfL83ujSDlpTioyPCZvGOgKvGXqbHL3AwYOa70K
         Rm9A==
X-Forwarded-Encrypted: i=1; AHgh+RpX6m85+dtO8Ql0OMFIZU0tHByxB5as9l7/YrcMoBmz8lbKTfe3rvn3PGpaDe808OGkpkn1+zaBJPI=@lists.infradead.org
X-Gm-Message-State: AFuF++nJdnFxw2ZjYckPt7tVz0xcB80FIaO82RfemMrGziWa1oC3WbHx
	4GnP/lb00bi0+Q5fogHmpD9oslzZsfFvo4aGGFjYKf6fLFlk0GcY8Vz5HM+2XqijM/4PB/Jf0CU
	oLA1ZZM1oVVdFV9j4ziCTkLWvxjD08+efOpCcS6l0amO4AUmlADUkwq79XDzcoY4/yDA4
X-Gm-Gg: AR+sD125Ih++WaBwa0r8Marg+B4LjPEg1QqKoE+KyfvXCAQ3PcGvB4GzGkBTkXH3n9C
	fFYnOPUeJp63j0vcVvP/BAI4g7nMdjpMBCwVuCHxQ6FVKXO6Gojo9tjl7JkR2ikTuSqpwY1cS2V
	81HmuKOzROkGBlJMKw9oRsC+DsUPnw8XVfJ14XLk0A3T+Qgk9bZZ8FgZdGl0BdCJBx0JSwUo1bK
	+rYp9WFB3l5EjM4jYe9M5dbv7JO541LHUCyAtglM01kF/c7flNA33P6iMA86ah7svO16to7TMCs
	eWHgp59rQtLBWn/tQYHBnzQxDzc6YSSt7wDWv8UzrtSyplmFVY/L9wYRQcyIj3LPAQeoRl/06WS
	xyRMAZFqe1i4pjOWsyRxRKQ==
X-Received: by 2002:ac8:7d44:0:b0:52e:3b7d:df99 with SMTP id d75a77b69052e-53036b4e8cdmr38544521cf.1.1788362207286;
        Wed, 02 Sep 2026 08:16:47 -0700 (PDT)
X-Received: by 2002:ac8:7d44:0:b0:52e:3b7d:df99 with SMTP id d75a77b69052e-53036b4e8cdmr38543531cf.1.1788362206529;
        Wed, 02 Sep 2026 08:16:46 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a67f941dd4sm1212684a12.20.2026.09.02.08.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2026 08:16:45 -0700 (PDT)
Message-ID: <8237cae7-0a3c-48ae-a85c-8521cda87015@oss.qualcomm.com>
Date: Wed, 2 Sep 2026 17:16:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
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
 <20260828-nord-v2-3-18bf59d19d6f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-nord-v2-3-18bf59d19d6f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAyMDEzNSBTYWx0ZWRfX2ea3rZg0rchy
 srZwglUqz94+3G33hdudwgn5tuy+mxq8I+6QmElRJZC34qobAQNSbehCwpJbxuosUT8jRhDvWyC
 WD3RJvS0CyYrWP6CCH5BEI5bHjH128ejzrDNPEi9F6nQhfA+6RSuCX11CIqhU6o2MtsaUYGicKQ
 FvNGaPDL4wf2AZur4uSVulVnOHgCF65kPi4xNnfBSm3DCWyUpHhJk+qEZkz1Mhfowe1+1rAmdQh
 q/a3oHMWxxlOwDK+fi6UHadaokKaEDr15kt6TBY6hYzOb//5X5zaJasDIEqxZHpHgUM8IlE8QGk
 ZOFatZOdM6foVPJSeuk1BIt0RF0UoUwvvnb7Lfx0sHoROf+ZX06rwy3vpOND3hNBxZ2WvxhKC8Q
 /9HeXeoOtCPG37/i7XZpbYnmYf0aBfy6QykYdnWqhteEMNpihXIhSStxO2vLumWMjaqerLu/leB
 VL6mZ4ouHInTKzjTUtg==
X-Proofpoint-ORIG-GUID: jlz0g3qBN7AhCDwu8MYWlStctwJgDMLH
X-Authority-Analysis: v=2.4 cv=QfpWeMbv c=1 sm=1 tr=0 ts=6a983de0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=6pHcnep46kEejBPVP2gA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: jlz0g3qBN7AhCDwu8MYWlStctwJgDMLH
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAyMDEzNSBTYWx0ZWRfX2Zc9/9RteoVY
 C4X4iWXCEEKK0JSzFoxsBiJ9chhDeFo5sJdSeFtnXnqmzdZpS7fIaH+HYobPVH1LJ0rXeFnW7Te
 cM2vejzR2PZI5bmvrpmfUPZ7v5NFqAs=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-02_03,2026-09-01_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609020135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_081648_894289_36862E72 
X-CRM114-Status: GOOD (  11.51  )
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
> Nord requires a workaround to address a timing convergence issue in the
> PCIe power domain. To avoid the issue, set the CORE_CLK_CGC_DIS and
> AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.
> 
> The SLV_ACLK_CGC_DIS bit is already configured by hardware reset. This
> change adds the remaining required settings as documented in
> QCTDD11972446.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
