Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C82C44500
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 08:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqp0F0vsziLDh0jK+q4jeUYgQGEJtzyINy7UekHEhlQ=; b=2pKFm9Ts3ausDX
	sRu3TkTo2DXOZKMQnPjYiYtuKCZTQhh45ajQMatjGbtG7nsHycT/nChzR82GM5s11mzS2ctxRJaZn
	R21TQ6Jd1Jk7oQk0w27bafrO1W+X6IBnVyV7gxIvl+IX1JLlmHuJ6UZx3rLHCUWulM/ipvI9xt6Yp
	q60IZsxrOsiGpM1uuM4efl5lKcBqvMnLIMFNL+0nJV9REm2H5PXLavx992ysxyERJ7qNNhj1oE+Tv
	S4izJ5v3MG6NRFmRxcs4faHaYKrxYubji+i8pY0PkFwlFnXdIrAjk3gugLxnzBSoQVr1qEFi2WH0Y
	n3Y9kToIy1asVjmnxdLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqU3-00000006gxn-235Q;
	Thu, 22 Jan 2026 08:56:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqU1-00000006gwn-0BBa
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 08:56:06 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M87OWu4057305
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 08:56:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XI2H5e56tHmM8b5yVgBxgJ1Fc1KtkdHABVn4ocaEfcQ=; b=As8jBQuo3bb4Ttla
	XHIc66frrAQOaZwxtx2wRqTuOM8yeKKqO7/2jFx9HOqjiA5a1nXhDkB9PcWz4+Di
	EdyplU+SdRednlWk/CmIiOP1vfK3wJTgNB/Te8ZXXLxYW/+tjo0DI2rPg5/WUgU9
	cxGdgNHCfCJnKptcUeoedNdy9KGgvskTuv84wBo/yCb8ICkKfqoOICaqrECP5nJR
	Mnza+GGcBVUmwnEJCIp4vNZJVPzjUcou88HFKq5wNweka2i6VqmXgbJOgCgbQeC5
	6gnbBkf4pXs+oBc7pUM4tHyK2VRpxo49UWVr/P8dkQNo/Xw+8+V26PlsYMzuGIf+
	mNE07w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7nbsm0k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 08:56:03 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7dd05696910so555117b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 00:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769072162; x=1769676962; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XI2H5e56tHmM8b5yVgBxgJ1Fc1KtkdHABVn4ocaEfcQ=;
        b=V9e5EP8LsWFwFavXPdD+bovmbNtwGBzof6HXg5/0cYBLMAwWkZnl878dZUxVZiryYM
         gTMdvgD4oti8/oAng55AplmJDQhz4kJ3yCn5nayNi3z6j2JOW5R+d/KwVYTbA2SAWi/X
         BsJ2rUysU3qwq3j5NOzrm6+BI86AWlkbMTl6QQz1CKkIc/UvjxnOZsVugdS0WHcis2WN
         69rFMvPvds8tM74hu8H+L5SvZldzkbNO2Hw21hJ3qLn2z9EhGV9wxr84GBkpdv5IuhIi
         DwPOamJQMWQ6nQ5OFIUIT8e5UUW1TWCgTtu1Pwry1XVl138bProgCrSg5nDQ7QMz8qda
         tr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769072162; x=1769676962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XI2H5e56tHmM8b5yVgBxgJ1Fc1KtkdHABVn4ocaEfcQ=;
        b=qt7Dok48fbVjB2LcetfMetuGSDB17RwKbtJ9KonC/p/BSZTdkuh4rrC0lDQQBVY1KY
         02frHhTOohKAfhzqgY8N9c5juOJ1pOzyFQmkQLmJWROjoGpM3HMravw7Kxuf3zdh4iSm
         uLaLr73pua4BCmPJC/5oh5FrUAlW3N7ophJmA2dQzDfdm0qgVHqmI+MYjeDXA4Q4qR9B
         H4H2l/m2gL4E6ULehWUsBk//aoCHc1xtToiYmYrPQkgQeTj5bEQ7BCRxX+N/JNc8P8/A
         vXaBvfE2/zzvJ6KsNEGtxUMj7Ag5Dx6H7emyFktcMMI+TF4XuR7dg3Eus/wla8Rf15px
         3Tvw==
X-Forwarded-Encrypted: i=1; AJvYcCWWFrue5Uc548ASFhlISPLo/7rQBw97CLwQw3LRIrB65znMUU+miv7hAgy6DjSMt1DTIQoU1Y9zWVQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXUyZDILIcRjOaQWCIF6arV5R+mcoUokrpb9JUVIICfO3hWsuA
	bKqXR6d2n6DSlslup4X480uNgt2+2b+M129xk38lIwqKR3j4/P2F9EGK+nxDZfzM63Cj7TNyE1R
	7rLDtH37FHQIZJaXkj24a+8Dlwak4Vd3Vaz4sjDNPLjIdxN2PvmbPYHfd8vJok2hQ6PJp
X-Gm-Gg: AZuq6aKzsChDEV1hoKi2DPvpMx4ahElq9/sjwqixhFOBuP2l4ie2FdiP4D4Sw7p+lnY
	D4Tw33DoFBGsZ3VXUw58sETyTz8SG7xPQ7tlcGJEUIsDKYfVJnHsD4MzFsdVpy0RrhtOdL+Vn0I
	wEF7/axW+GVn4Xf99l+iyzQdPEnOJaVUMkOu4C0OlH64MTXHtqnEZLc4Yqj80NO9NQBJdjYI+mt
	5H20kD77MvD3E2ciuDxRE/+M0Zd8zNC8H2vR5HwdwE/tsZuAoUyANKZVo6O5wKw+lls6I27nXrA
	BjxIVP30acSe6AulJr/eOwumOphS8fUHl1J4R6fKBeAyj1+A0UB53ayRs9blVZ9WxtGnZ6inSzk
	YbQXWmqMSq2yhvsni8zJormkXA7UwfnGXG3IzyTKXoA==
X-Received: by 2002:a05:6a00:1804:b0:81f:37b2:5657 with SMTP id d2e1a72fcca58-81f9f6abac6mr16169132b3a.17.1769072162436;
        Thu, 22 Jan 2026 00:56:02 -0800 (PST)
X-Received: by 2002:a05:6a00:1804:b0:81f:37b2:5657 with SMTP id d2e1a72fcca58-81f9f6abac6mr16169123b3a.17.1769072161927;
        Thu, 22 Jan 2026 00:56:01 -0800 (PST)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa12b51fcsm17343898b3a.68.2026.01.22.00.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 00:56:01 -0800 (PST)
Message-ID: <acbbd966-2406-4b25-baf1-7fd9b5720bc1@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 14:25:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] PCI: dwc: Add support for retaining link during host
 init
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260109155350.GA546142@bhelgaas>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260109155350.GA546142@bhelgaas>
X-Proofpoint-GUID: gTVn0yF7QC58L1OppA0I8PwS3ki5v0Yj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA2MCBTYWx0ZWRfX5XBTIyBgJldr
 t9JbYk+mWBsbTJpsL2/TXkMKLtHFVRQaFxUoPQQp3zTrO65pUoD1/GIpOTTLNH1TqQehLmbNLYF
 0nKywYPuiKXNwmGMBF0fiJrKUm7RUdwd8givKvTFZIpnua3QHojRP6aXoatSYOdR43LzX1T0TKq
 bzaqqmpT27k10CTRZID1hbKjtKOeLeq8FcRAmrVPfSHX5n9HAn9jlCJuS7Jwdd4Q0dA8ETPKUn8
 WTJaqI5bVu/2EvEemi+FoNrelkH8CwY6y07Y6x5iIPpgrLxhTzBRtfmTNMA3nvbVH0Z499mwOUo
 A/Ya5prIHwNJns1+jYn3xQlMusv+q/kjZAatRb2THBZGI58wPbiP9j39NoNFZq0Jb4nqM6Dt5lH
 +c3doczIFgxYgq9QYlNaElVpUkcmajhAmirQH+IpGT/f/e6juiRqQRoybchgTe4ILlGe8onjzcR
 AJia4MvjFSdzguKJplw==
X-Authority-Analysis: v=2.4 cv=dZGNHHXe c=1 sm=1 tr=0 ts=6971e623 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OE-RsO10cNmVjs9PPLIA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: gTVn0yF7QC58L1OppA0I8PwS3ki5v0Yj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_005605_212409_22DA6DD0 
X-CRM114-Status: GOOD (  32.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/9/2026 9:23 PM, Bjorn Helgaas wrote:
> On Fri, Jan 09, 2026 at 12:51:07PM +0530, Krishna Chaitanya Chundru wrote:
>> Some platforms keep the PCIe link up across bootloader and kernel
>> handoff. In such cases, reinitializing the root complex is unnecessary
>> if the DWC glue drivers wants to retain the PCIe link.
>>
>> Introduce a link_retain flag in struct dw_pcie_rp to indicate that
>> the link should be preserved. When this flag is set by DWC glue drivers,
>> skip dw_pcie_setup_rc() and only initialize MSI, avoiding redundant
>> configuration steps.
> It sounds like this adds an assumption that the bootloader
> initialization is the same as what dw_pcie_setup_rc() would do.  This
> assumption also applies to future changes in dw_pcie_setup_rc().
Yes the bootloader is expected to do everything what dw_pcie_setup_r() 
does.
> It looks like you mention an issue like this in [PATCH 4/5]; DBI & ATU
> base being different than "HLOS" (whatever that is).  This sounds like
> a maintenance issue keeping bootloader and kernel driver assumptions
> synchronized.
As the devicetree changes already pointing to different address from the 
boatloader,
I was trying use this method. As changing device tree properties now 
might not
be good, but no harm in doing so. I can skip this and make device tree 
changes.
> Is there something in dw_pcie_setup_rc() that takes a lot of time or
> forces a link retrain?
I don't think it might not take much time as it is few register writes, 
Just doesn't
want to do redundant register writes which are costly in general.
> You mentioned some clock and GENPD issues in
> the cover letter, but I don't see the connection between those and
> dw_pcie_setup_rc().  If there is a connection, please include it in
> this commit log and include a code comment about why
> dw_pcie_setup_rc() is being skipped.
The clock and GENPD issues have no direct relation ship with 
dw_pcie_setup_r(). we are skipping them as they are redundant. I will 
add a comment in next series on this. - Krishna Chaitanya.
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-designware-host.c | 11 ++++++++---
>>   drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>>   2 files changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index 372207c33a857b4c98572bb1e9b61fa0080bc871..d050df3f22e9507749a8f2fedd4c24fca43fb410 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -655,9 +655,14 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>>   	if (ret)
>>   		goto err_free_msi;
>>   
>> -	ret = dw_pcie_setup_rc(pp);
>> -	if (ret)
>> -		goto err_remove_edma;
>> +	if (!pp->link_retain) {
> Use positive logic if possible (test "pp->link_retain" instead of
> "!pp->link_retain").
>
> I suspect this would be more maintainable if you identified specific
> things *inside* dw_pcie_setup_rc() that need to be skipped, and you
> added tests there.
>
>> +		ret = dw_pcie_setup_rc(pp);
>> +		if (ret)
>> +			goto err_remove_edma;
>> +	} else {
>> +		dw_pcie_msi_init(pp);
>> +	}
>> +
>>   
>>   	if (!dw_pcie_link_up(pci)) {
>>   		ret = dw_pcie_start_link(pci);
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
>> index 31685951a080456b8834aab2bf79a36c78f46639..8acab751b66a06e8322e027ab55dc0ecfdcf634c 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.h
>> +++ b/drivers/pci/controller/dwc/pcie-designware.h
>> @@ -439,6 +439,7 @@ struct dw_pcie_rp {
>>   	struct pci_config_window *cfg;
>>   	bool			ecam_enabled;
>>   	bool			native_ecam;
>> +	bool			link_retain;
>>   };
>>   
>>   struct dw_pcie_ep_ops {
>>
>> -- 
>> 2.34.1
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
