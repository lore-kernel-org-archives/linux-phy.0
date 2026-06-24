Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F08E0CDE002
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 13:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eZAiohDIgeZHHptCH53xliG+CAe6PpP51+PzzIwixw=; b=Wbsx4l3p7NLNJ2
	Qz8RtWhIx5eH68Zwz0IAbZNHMLNI8O81HgHvgpJADFI0qvIPOhGOiptLM/eH3V8O6OwCUAWJE0Vm0
	Kb1gNYxHl2j2bRVpi4tyyMUSV+EvgmvrQ6/JOmTWZH5wiqBtQ5qKqxGgK6w9LUZnwqNjAhwt1l7j3
	/JCV4HI1MfPOIylE5pbvS3PURfDupsqU5uTZAjzW3Pfj4CbraBkQ0R3w1VEFJAXHU++n941CWVtco
	kCJHnClY/bPOSY6CaqfyMR6DGgux5sKSonNaXb6s211LFKwDaOCDId5CVT7u3ylQpgzqURcUF3H6P
	Sr0RLhUT6NbxcfpaUHvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcNia-00000007pNB-381g;
	Wed, 24 Jun 2026 13:32:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcNiY-00000007pMm-1683
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 13:32:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OANXCR2503313
	for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 13:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dgs9noh+aVMYmMVI+RiZ548pHFrtQba3o3tk53GSo6k=; b=WZ4t5G6ukBEor6jW
	Ti7uDiJOoY0Fx4/D9vcg4oUOoEh+31mpxDiCC4gG3Ifq0IklBiSif6yGccNOHXsE
	LIzKYk152+ObLrTxvt79LqZUEXjzCauSJI9PjVlmpIeQCK7kYFDKDu8wsSV6595S
	pDBqcAZVY3Tp1SYroMKkBZzkwj067vLl8Huy3WgIZRU2XBC8ybEAeg2ZM6mCn3YZ
	/SLWedBJzbRch6WvT2i+4gzNTuJ6z6TYieyiGNYRhzJI+P2KsMCdkwHM6RrgWJwg
	dYe4mc1yqNSFkSpiykPmD1zVYHEmK56Uy6zEeFHgaC4WFJfx2T052aAbsVambpyH
	mT5akQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f05bfaeb2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 13:32:36 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-37de6edd915so722890a91.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 06:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782307956; x=1782912756; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dgs9noh+aVMYmMVI+RiZ548pHFrtQba3o3tk53GSo6k=;
        b=jRg6ZcR+HL/GZdpkQbMIUSwnSPCHHs53LfzBEhkhbcZZJGSfzv3SloW47ZbD8yXccY
         JzS4onRXrxncrrfyRt/XOFYMkDFvsPurr6L+m/fEhYWWCYn9TDGWq9wf31E8/oN1OcpV
         5I/PyJ1aG4qpdoSvkgHTFwPxJNPiuvCB1e8tLvazRGRUOiToJ7F96P6wOVjbQWy38qKG
         DKGGwnwigTSjGQf5daoUA1WUeqPmtlubxa5n5HGHmO8gKpymYNrP6L7Nl9WUtORs1/kG
         YOBmFRvqN1tvfKyShk3ajfK3NS/Uzt7U1j3khhkA5lYAkTrQ2/B/dclrs4VPalGePc07
         wx1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782307956; x=1782912756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dgs9noh+aVMYmMVI+RiZ548pHFrtQba3o3tk53GSo6k=;
        b=DVKu8lU6Xi5KeqYNVSebtPEf0hZRbHS5XdcR3G1LCSd4Wb0+8EKHopg7k7DDkUYkvY
         6QCx8JZ9c+bF57lvnJvmvQI5Cy+CyemtvqE6TdjS+mppg8gDWLI/5l0GKO57Uod2fGVr
         Un46o+Szo3UL8XohgOcANidpNRk8iVNwO/boiTYzibPd7QPmlCrN4vzTYB7jHlCnskk6
         MoeNl5mQjRHQN3eSZ6olC6ZTZZmPMWkX2dLDezkQw4Qe64ueIz+79DCgh54ChF9t9SK6
         o06+HxhrQ490GvMnTV9uQceAPveb0VuMnpnb7pB1zYZLgbEuYap+S1bX0KGfNRhDa9X+
         yIHw==
X-Gm-Message-State: AOJu0YzEFKuNBvCKjjFxxyUzLqvvpwby31+u7fkc8aplL28TpsvCHS0s
	0q21LKm/ncgKZcs4tZQdjJk33AQCui9N0k3A8dCkzo0OGtJsmcokARTTwEHTz+v25Cfp02n2H35
	xWgpmQez9a7SIfWWAnGH3ojXXWwIw6hMAO+ttRyj+cUVszdvx6anrMH147dn01XbPtqExkdGc38
	A/
X-Gm-Gg: AfdE7cmS1bzQp4953jWs0Dwibpv5uztv9StBJRpy2LnIU8EUGTpL22QnL9hTZwvf2lP
	F87UHNowT4zd6+5MUJPsm3WFesFM3WWZ9dhfFu/ShgMTDGZ9rzFeL0uRKJLZ1p3nbT/7BeCPJoX
	eMxfCztr0Z5U5Rgtk04Q1hBEPC9KZEB7fl24uL/rJv8k+BarsEJp5oY7Q/qjfAwS1CWDzMJpJEX
	HXzSBtAooyGa1auxA0xQnpZy8KtFc8toNak7gDR3NStAQiikXh+471pWWAiQuhpawph6Kzhhi6m
	H5Eu1/lNVPAOLg0Hf0uGuM7uIkiiTRHijqP+tVKy4i1P1w6GUD4RzZA3LHqylFqFM0p6Ysfq0CV
	/a6P/uG0WETYJvwMWcga6Nv1lWGsYJ67xQlWHPb0o6+0=
X-Received: by 2002:a17:90b:1807:b0:35b:9894:f6f9 with SMTP id 98e67ed59e1d1-37dd0dd1110mr9044614a91.18.1782307956210;
        Wed, 24 Jun 2026 06:32:36 -0700 (PDT)
X-Received: by 2002:a17:90b:1807:b0:35b:9894:f6f9 with SMTP id 98e67ed59e1d1-37dd0dd1110mr9044566a91.18.1782307955632;
        Wed, 24 Jun 2026 06:32:35 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3cfc92fsm1201836a91.0.2026.06.24.06.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 06:32:35 -0700 (PDT)
Message-ID: <475fe567-9e0d-4710-902d-a63470813273@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 19:02:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] PCI: qcom: Keep PERST# GPIO state as-is during
 probe
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org,
        linux-pci@vger.kernel.org, olteanv@gmail.com
References: <20260521-link_retain-v2-2-08ed448b081c@oss.qualcomm.com>
 <20260521134316.8B9821F000E9@smtp.kernel.org>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260521134316.8B9821F000E9@smtp.kernel.org>
X-Authority-Analysis: v=2.4 cv=X8Bi7mTe c=1 sm=1 tr=0 ts=6a3bdc74 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=N6vRwfa21d4p-6sfUasA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 9cBhntGqbedqr80rkRwz4qph-ULz2Xvf
X-Proofpoint-ORIG-GUID: 9cBhntGqbedqr80rkRwz4qph-ULz2Xvf
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDExMiBTYWx0ZWRfXy1+VqFMuxgJJ
 Eq22WlwBqraXr830Jeg+FttCov9gXczZ53/GelpJ7f+hYdgTuiEqhb8LZD+d/G0FR2G3IcLk0Xj
 svH+/jty+JXe6U3B6NC4woDbtPHASe4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDExMiBTYWx0ZWRfX8rH0CIfH4TSS
 YLbyD3ghslbVlbmxbxXji05115sFU8TPYbCskumto2RaToc/k4VBXnFH7qtRLFGpVN3d4gzwgPJ
 bHx+JcopbjFmbASMckCxdyyKLNJEnKBLRAwzwAo+P1qT+CDbgXpQaOGMviqQB726iDPErHgrTzJ
 sMhybO+AhatY1c7fbmt+UHRPZiKVym2fJfm/btP4oheQG++4rnh6PdaCi4WIDW3c9eLXlmGFRan
 vyC52EcxELOcITSPAqlLQIc9b7oftI9QwFgYkkvQSDXgxc/W8Gv/YE4LcO9pPx9PkW5OQzyJ+jC
 J14tYsOB5W+IoEEaTfHJdwyhYhwaAn+GMdtUYzZchj3vNo95yfYsn+f//mhY0N0zvIEBU3FxN1Q
 QFnhmRsphCbdJgEjKGYQWjDT8v3qOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606240112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_063238_311083_A00DB75E 
X-CRM114-Status: GOOD (  20.11  )
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



On 5/21/2026 7:13 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Silent hardware control failure due to incorrect GPIO direction when using `GPIOD_ASIS`.
> --
>
> commit b4b7937282f9b2dc2dff52265ec3936b1024af9d
> Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>
> PCI: qcom: Keep PERST# GPIO state as-is during probe
>
> This commit changes the PERST# GPIO request to use GPIOD_ASIS instead of
> GPIOD_OUT_HIGH. This preserves the existing GPIO state configured by the
> bootloader or firmware to avoid unintentionally asserting reset during
> probe.
>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index af6bf5cce65be..bfe873cbf44f6 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1707,7 +1707,7 @@ static int qcom_pcie_parse_perst(struct qcom_pcie *pcie,
>>  		goto parse_child_node;
>>  
>>  	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(np), "reset",
>> -				      GPIOD_OUT_HIGH, "PERST#");
>> +				      GPIOD_ASIS, "PERST#");
> [Severity: High]
> If the bootloader leaves the PERST# pin floating or as an input, will
> this cause gpiod_set_value_cansleep() to silently fail later?
>
> When using GPIOD_ASIS, if the pin was not previously configured as an
> output, GPIOD_FLAG_IS_OUT will not be set in the GPIO descriptor.
>
> Later in qcom_pcie_host_init(), the driver attempts to toggle the reset
> pin by calling gpiod_set_value_cansleep() via __qcom_pcie_perst_assert().
>
> Because gpiod_set_value_cansleep() enforces directionality, it will
> return -EPERM if the pin is not configured as an output. Since
> __qcom_pcie_perst_assert() ignores the return value of
> gpiod_set_value_cansleep(), the reset line might never actually be driven.
>
> Could this break PCIe link initialization on platforms where the
> bootloader hasn't set the GPIO direction to output?
There is pincntrl in the devicetree to make the direction OUT if bootloader
doesn't set
this pin out.

- Krishna Chaitanya.
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
