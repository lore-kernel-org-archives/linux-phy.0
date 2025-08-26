Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C4BACA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 09:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvPODSBF72lfBcj9vunJF4GMSEadonxtKJAJHJObuV8=; b=q32yiwTNXX/0Oe
	Uwi0u4bgUvNi0hIlwQT3oQFIBH1tnu7Ka78OhRlrDPmaP0+yFEQ5FB25+5pZD8TDiK1b58JGXu3c8
	yQP4lmB/FhFQSjm+9uQrJr5q/A+deUbYoVBSRJyhmCNMJajy4VPZN/eJu/KifWtV1hQZSn6SpZDN9
	W5IeyDhVVIQqxa5KbBB6iVOaspsuhugTTb/YlRmTHe0mz+AtF1nVklDb6VXc9jP/SGzlZGR6CbiIT
	o86+BvKKYdBa8fTO92t2MycEKyv1yfAEfEOMi5X96h0Nls168/nFOZNiBDc/+dEW06db0iocrmMy8
	1JxS1bKa+WOjCDnVCosQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpav-0000000BCZ2-3Cie;
	Tue, 26 Aug 2025 09:03:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpat-0000000BCWY-1Tou
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 09:03:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q59vY1026863
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 09:03:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3kvnIpYaIhAPbwlvi0dXbhefeFgbqaAlt1t2ncj8BLw=; b=d236II26bVcjXaPc
	JiW3QkPR1qy8gmwZssbR4IQsrKGBqufL3K6hWg9ecioUqjvgHLld/0M5Il1i88kJ
	TQ6c1OQa+tXjgt2XNnj/9bD+PnM7p40m6O6xYhiiTyxkEuKDTeq3JrLDyW5iDcvA
	MjfQUVCP3cpJwzy52HAsLeZ3o4gFg5EMrLCzaj4foQu/jO9dmu6AQ/F0l0pDhsIa
	ti3jz5WjrKPXqfI8Lo1RAmwJ5M2IOVu28GtS3bBWsvCQ1EfU7079ksl/2fbPUPzf
	sRyVrEhK0DU+GY3lmWo7JdE8dWHld5OAPPMsKjAUfUPruAw7s/rtqL5zd12bVzY1
	lqcjMg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6tj06p7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 09:03:54 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-325228e9bedso6985482a91.1
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 02:03:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756199034; x=1756803834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3kvnIpYaIhAPbwlvi0dXbhefeFgbqaAlt1t2ncj8BLw=;
        b=RSJ1P0752UjTprld2ka5j12CBGFAzR66TDBaZoCcnoUcnXFGJrcrcxu4DrnmLaPn5b
         rMHZvafyEpwhXbeZGEWHqWATpSLYJwQ8W0a4bvIaN/+OrU1KayqqPaevZl/qAofPfase
         PLv8yaUmtzMjAdIhGD0Om0ePJUwshYdt0T6gZyBr1KFbHh8NbwbZE5nD76lNoJq8C8uJ
         1v3MR8gWZd/iCZdLPstYwdLG5z5pIi8C7mFwhpMioaBwRvFMrElzCF/c63KAcfMrOUvT
         jq+h5xdXhvlLr58yWWLbSrTV5H2n8yyfPHU7+VoZppCJZDZu0R2hwKtbJmMcx3USsic0
         j8gg==
X-Forwarded-Encrypted: i=1; AJvYcCWfT9C55xOCt4PJBjzgtvW3bE8ZHK9sT2UZPukhQ3gcPGa+Q98I0rzExAGg6ZUNpjhXN5aaLP2hegM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJegU1r1/zYR2rANKuhiTCgdE+iPSOv4tOs0BKfyddumr8+Kwg
	ejVZMVaE17H1vOvm7BPD8kMsW+RffGuRDpn9aw8hKFOCthrU4A0k2enET6WLvrH9zRiBF6E2dWt
	8NWVmgWvrZqhL3frvuUcyJLTf5HhlYjJPhT2OfiVH48bP5W+FmYDGMrw1mAWIIOi+zog7
X-Gm-Gg: ASbGncuMupZncSr5JogZVTgOJSNLL4R1jP+1PMlW/fqlP/G+7EbAXtPppMIiIehwQJZ
	hrUJVzEvwQqnqxdYhewUah8fLjKttkoulRRdfbzjCr4hMAeOHn+ZTlqC1qUCmfXRhsqEoa+hbAg
	CGLoXsVjsP3WJC9C1PlOhwSWmfsLYbjjGDyZpv22CI2TgddWrALINvfz5xqJ4PzMDHiR1eWBuAY
	7yU9XprcIieq/a8shKXm39eAmRjkDA7vdwm82KPI5255pFoit7NGSq+/8l1DBJo0OC4AbzQI+t3
	MPdJGvsNzTbaENTpU2wn8bCR1SB7jYot8+rAIEaDR3lsVk0ei7Opkhj1MDUUtbEedGB1meh/
X-Received: by 2002:a17:90b:37d0:b0:325:6d98:dfc with SMTP id 98e67ed59e1d1-3256d98121dmr11898269a91.14.1756199033914;
        Tue, 26 Aug 2025 02:03:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa938tockH71GPIpyoO592wnzyXoNF3Ptho2VIjZN7GrxlXvdRpZ4Fvj3uY5yE/wnOsjtSbg==
X-Received: by 2002:a17:90b:37d0:b0:325:6d98:dfc with SMTP id 98e67ed59e1d1-3256d98121dmr11898041a91.14.1756199030665;
        Tue, 26 Aug 2025 02:03:50 -0700 (PDT)
Received: from [10.92.199.10] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-771f045b687sm2926609b3a.109.2025.08.26.02.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 02:03:50 -0700 (PDT)
Message-ID: <e2d23d22-de22-47ee-b715-e7b6c36976b1@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 14:33:44 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <4583bf66-737d-4029-8f14-ce6d6a75def6@kernel.org>
 <0c732ac6-2d1a-4341-94d4-dc6734bfb959@kernel.org>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <0c732ac6-2d1a-4341-94d4-dc6734bfb959@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0MyBTYWx0ZWRfX49+zsU+MmIwV
 1jo/koHMGKpqfrfnK52EKyUMJJINownOTtr0+FBzvS3xIymbZnJg2IZkqPkq71lydHK/DuXI4hC
 1kXyBRC7qtZ0K0MLIlw5GFSMDSwfDE54WIib8cGYDkI6zT1a1hSUyHpfmxGlvsyRUq74s13XVZZ
 pfm3m8wFgrWoEGqxSwyLaf1Sofq8fdvVm+X0y1Za0z0IUbUtm/Uq968HUwNh4R81kt07WS6Vf9y
 T4BGIeFsmd7ViL3QIXwAZJvr5v0+5MaZbmVYS9NDiJeNhO1nH8k8I+WCJfT+lJNosJ/7hvg/8kz
 jHeXHGCf4TkNbDsyUYjOmKFk5JBwf5+6iqzOhtPoJKHVk7gI0/QB2CgQ1efpS5+rDY5Agy+P0JA
 GYJzEzCO
X-Proofpoint-ORIG-GUID: f-HwyPV2vnNOPUs1HnX4M8A6sBVa14Qb
X-Proofpoint-GUID: f-HwyPV2vnNOPUs1HnX4M8A6sBVa14Qb
X-Authority-Analysis: v=2.4 cv=W544VQWk c=1 sm=1 tr=0 ts=68ad787a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=vYAcZcmFI8d52SuQJuAA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_020355_399552_8154F4AA 
X-CRM114-Status: GOOD (  19.26  )
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



On 8/26/2025 2:02 PM, Krzysztof Kozlowski wrote:
> On 26/08/2025 10:27, Krzysztof Kozlowski wrote:
>> On 26/08/2025 07:18, Krishna Chaitanya Chundru wrote:
>>> The qcom_pcie_parse_ports() function currently iterates over all available
>>> child nodes of the PCIe controller's device tree node. This can lead to
>>> attempts to parse unrelated nodes like OPP nodes, resulting in unnecessary
>>> errors or misconfiguration.
>>>
>>> Restrict the parsing logic to only consider child nodes named "pcie" or
>>> "pci", which are the expected node names for PCIe ports.
>>>
>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>> ---
>>>   drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>> index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..5dbdb69fbdd1b9b78a3ebba3cd50d78168f2d595 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>> @@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
>>>   	int ret = -ENOENT;
>>>   
>>>   	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
>>> +		if (!(of_node_name_eq(of_port, "pcie") || of_node_name_eq(of_port, "pci")))
>>
>>
>> Huh? Where is this ABI documented?
> 
> I see it actually might be documented, but you did not mention it at
> all. I doubt you even checked.
> 
> Please reference exactly where is the ABI, so reviewing will be easier.
> 
> I still think though that it is wrong - we don't want device node names
> to be the ABI if we already have compatibles and the children here
> should have them, right?
I intended to check for device_type to be pci, my mistake I went with
the node name, I will update the patch with this logic

if (!of_node_is_type(np, "pci"))
	continue

Thanks for reviewing it.

- Krishna Chaitanya.

> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
