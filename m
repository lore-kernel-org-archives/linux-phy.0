Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D3B5C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnVsPN0emd3EsXC9VLmYk51HZmr2w5gBwbzwvKIlAkc=; b=DTrVWPpVYTM+3H
	ofWZsnyBE8BOB69U60ZXZBAenqorGOxXNEqDnjC5KUDGaX/8/04U9en91XNTP68nk61brmChuLj3G
	Xq2LEn5/dUz4wegJ01y65uM3Db7OxGS1FVXuLnw4z1EIVteWT4AZvb1zhgakpwjT/jVqnkFLd8u28
	74p6SPSNMnleu/5wuu/xuNVTzpi9+Gweint398Ipm6DKWm9fzUpEpJNtukGlazSfSbGSvkmsBN7St
	vkvN4gkCuCxbHoa6lbuq9TI0NMXv6waK/a7K5IfOmJK17rLP1ynmvWHq3R6jhiQkkSYehzWwxQ2Xs
	/srPvMCis1Qo8FXX93Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8A4-0000000E9A7-0b6T;
	Mon, 29 Jun 2026 09:20:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8A1-0000000E99g-1udm
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:20:14 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T6rHXM2115290
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:20:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lx5ClSQCx2d7oD0iKrRpdI3v2HOgXCbOYzofJpTEngs=; b=KWVUTR5j8fqWNzfC
	Dux3lXOXIOoYhOAOzal0/KsJ/tCmP0uxuABO8Yc+qAUlZQm39q1NZznBuH/M6QRF
	mRIYXZ1eFXsnOy7ofXt5IaF3dZvj0Rpsv2edaBqGTzkZX4wALsFEvz7ytuSrzEmT
	VT6AjYycmvwFwm7eK2s+NT9EI1L+W0PaRradhrHvgKS3l7CoozxBnE9DU2w+1GwY
	fsSzRcoXfGJQqGkL7aakidDDMPi56PDHczXO66I5m6JcKIp7/SMCZQWI3JL4zXNz
	00z03GEps6Rgz3neW/zEKJlGFbiFCz0hLkO8T+qRqQHfYAs6BP1KPK3/l/Lg/8PN
	gk5ulw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f2734drw0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:20:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92a9777b04dso87626085a.2
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 02:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782724811; x=1783329611; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lx5ClSQCx2d7oD0iKrRpdI3v2HOgXCbOYzofJpTEngs=;
        b=kJK+Eep56WgdDMUx1hhVWzRGDV0RH986saM8xKCOpchHeJSU+loRToYPsRPa62vD9I
         e/5IgRNFwxfY5uxl5bPLSTVtXSg61/ObFrGdvUfAbm8Vhx7YDELq5Gkl04a+OTzq80tV
         F/5F3l8SQ9QNWYfvX8EzwbBvKSO7Bj05k/t+yS+QpDIHmJjQwuCAhtPE4lJHzWy8S39d
         b/h+TXJjyFuEKAmDl3jLfUI8kLItTmXbrFMDQ3FgGCqzls37KcxgsXWx2Op7SiSNKbgS
         zwt13nE8AbrRvPUmA3OlSjW8VChzozc+gREWuVpFzxW45BwqAwa3v7PWhq8SCWhOiCRI
         TUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782724811; x=1783329611;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lx5ClSQCx2d7oD0iKrRpdI3v2HOgXCbOYzofJpTEngs=;
        b=ZKrpQlKR47Kjokc0xy1RDxEzixisqtMjqVkFnBhbM2tPE6odEkr668ztEh5jzni0zF
         vpVCQqsOEIsK5vtl9uYPWS09NayT6DyjEJt9yjc1PoEsezwH4gfLAo9SuzE9eKwa8tkV
         CDN6UCzsQ45HXCSnUIkWjNKbWO/yQ5xfSqVZ8tnTyfcVlAlNAv6Jid8LA+cLG7Rw2B6p
         tFgV6jbYJ/s/LDHyymIZ9xjITlE/3Zf2myCs6JyO9hxiqxMDiDze0zpTjB8cdaJ9h3AY
         R0BGifoFUq6xdNC91h4jLV1vUSAaa28yUTklpZWfCi1wd5s6bKHPot2SUI2Emx68lQtO
         HIZg==
X-Forwarded-Encrypted: i=1; AFNElJ/3g2P90T+9YkyN31WU7gwy5dpB4rR43cAfQ2TKXdDNu74JMihcXO5yW6l8cs+VWWPz/t1xYTKa+QU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBrX3B8/u4LIKwVxX7j752LCGbDCKrNgVSHiYNEEZEKDlV2UPS
	0Mqx1Hh1CRPq3q24qsqH7WKO+SMf6GcYBvtHhxX2QqtIOLHKc3+ccKRmmNbwwhd9+SXGs027JLW
	EkrWbq2JHYqlq3Qo0P9+WJl/Uwfgr4rjRhEVGxVsbqs1ohDBdtf5MN3NXs2VpK8BhlLQc
X-Gm-Gg: AfdE7clTTxnqBmi/q83ESp96FMMeJR17MuxCKDeECbkLkoHDSfvbICZsJ3CePNp/YBt
	6ZhgKwEduF7RN+zSnnbG1jHPc4JCqN+ZJOUVpdY6fPx48bFPSu7Si0RMPnmaOS5maGvOJsAIVj+
	elRBB9ZGcOEpgg04rMUl8fWDgD+l1u8KsIZHhtSV3mOWieIE7F3d80UCDVVuKPlE6lR8mVfsR8x
	N2whDTvsxq128Pf3s7tzykK0Ju/clN7iVQ5BZKWEumjhIRgJgYRHn6/MAKB1T+B4maTx8sRlkyA
	nW0wRXFkTvo8zvOzf0OGULw0CGUoHRVJwqTHNX9HfYIeRGk7+UgOo6ACjV9blX8RDdj8Fh65Mje
	CC/DYa91f1WoBlfi88z+0qP5XFBZ5+x8KCyA=
X-Received: by 2002:a05:620a:2684:b0:90d:11b2:80f3 with SMTP id af79cd13be357-9293ccd5b89mr1496330185a.7.1782724811474;
        Mon, 29 Jun 2026 02:20:11 -0700 (PDT)
X-Received: by 2002:a05:620a:2684:b0:90d:11b2:80f3 with SMTP id af79cd13be357-9293ccd5b89mr1496327785a.7.1782724810965;
        Mon, 29 Jun 2026 02:20:10 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1276ec6c96sm49387366b.43.2026.06.29.02.20.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 02:20:10 -0700 (PDT)
Message-ID: <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 11:20:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
 <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: NT3aIuckzRh25J1_JnvqEOUo8r_GquKT
X-Proofpoint-ORIG-GUID: NT3aIuckzRh25J1_JnvqEOUo8r_GquKT
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX92AkumcVjkK7
 V9JGQ6ubcVotgiVlG734mXgKPNW630Bs6kOcnVsuGYmgaMKfxkrxz6jGL4II+HgOYvp7iYMDxkA
 azKlVJNHWFvG4AJJZoK3rvTguA3+BTo=
X-Authority-Analysis: v=2.4 cv=HYokiCE8 c=1 sm=1 tr=0 ts=6a4238cc cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=zBfHOgCXiaqlRJpMRBUA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX0NCHXngD4LMw
 7OXu/IfLlo1Q85RnMkLCn4gKtKvh9wFeZfUOpeujZhdy6i3L3NiD9yg7ASL+qgOAxwHg3dvgutt
 ZEX8SpcJAnv50veWXhFzT/kq598qEA/ZQ0BlQEx0dG+eXTImhiTCh5WG7R8lLsno2/Zqj6Sx6G9
 Xz+M8zvxVO+vxiBa91Tek6cJ8MQ8PvXVre/V2nsVl1Mh88bN+8/uh0znDpZ56qRlBqPgWRNXqIJ
 bmvGXDoZn0n5fP35pvx245GDask+PqnKwxWqR7NYbsruhYi1d8bXssuZGNN+SyUPHjbRgC5J6e+
 +8UzNEwD5boR+swZNtjXe5goA/pn8UyhRlWhiJ0f5mPw6XI0zqPLK0LX90Uy1cK4KCd8DXPAe3n
 cnedHusG0ylr2/qkku+i95ocoHxNgP0skfyO9E5uQqpk70pACrRU+lB0HEmJ4FHyi53dV4RvfAt
 Y6gCx79LBBdy9hO5Q0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_022013_618309_00DF4BC0 
X-CRM114-Status: GOOD (  16.03  )
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

On 6/29/26 7:05 AM, Qiang Yu wrote:
> On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
>> On 5/19/26 7:47 AM, Qiang Yu wrote:
>>> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
>>> PCIe3b as consumers of that shared PHY provider instead of separate PHY
>>> nodes.
>>>
>>> Update the DTS wiring to:
>>> - point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
>>> - add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
>>>   &pcie3_phy using two-cell PHY arguments
>>> - configure the shared PHY node with link-mode and dual pipe outputs
>>>
>>> Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.
>>>
>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +		pcie3a: pci@1c10000 {
>>> +			device_type = "pci";
>>> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
>>> +			reg = <0x0 0x01c10000 0x0 0x3000>,
>>> +			      <0x0 0x70000000 0x0 0xf20>,
>>> +			      <0x0 0x70000f40 0x0 0xa8>,
>>> +			      <0x0 0x70001000 0x0 0x4000>,
>>> +			      <0x0 0x70100000 0x0 0x100000>,
>>> +			      <0x0 0x01c13000 0x0 0x1000>;
>>> +			reg-names = "parf",
>>> +				    "dbi",
>>> +				    "elbi",
>>> +				    "atu",
>>> +				    "config",
>>> +				    "mhi";
>>> +			#address-cells = <3>;
>>> +			#size-cells = <2>;
>>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
>>> +				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
>>> +				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
>>> +				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
>>> +
>>> +			bus-range = <0 0xff>;
>>> +
>>> +			dma-coherent;
>>> +
>>> +			linux,pci-domain = <3>;
>>> +			num-lanes = <8>;
>>
>> Is it fine to keep num-lanes 8 here even for configurations with
>> bifurcated PHY?
>>
>> I would assume so, given essentially this is a x8 host, whose 4
>> lanes may simply be effectively NC 
>>
> Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
> never enabled at the same time. When PCIe3a is exposed, it is always in an
> x8 slot. But if we have a x4+x4 platform in future, we can simply override
> num-lanes to 4 in the board.dts.

My question is whether that will be necessary - if yes, sure, we
can do it, but if not, we can conclude on this early and not have
to fight over it in a couple months

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
