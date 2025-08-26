Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D968BCA0FF8
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tjan+OIlIWJKwHidda4TJp+YYM/a/QH94VvLgs9UHG0=; b=G3QbNhuUsW2b6H
	799dpvJu4nEV0fSkBqXTqdO0XNdTDnvJlgHCJcwFJ265HFoRJ23X4w82YDlJFmwgo+Dg9R1kH6ZoA
	j7MWF9n8i9o33zbOB+rJ8y3MGOO3M157iHgOC+6PQ6vEvhdWq0BADDZDnrA/BHiEWXNXBt+CzKacV
	w5ono+DTKbYwWIUdWlBWxzBnWQbwwI07hxxeR1AJNuowlvKz/t5PO3cQmzNWKxSh3W5mNxShbJGPy
	bRCpJsQl8JNSOkrMg/qxafWs38mUsqW/vfDPQDleYfrq8rR0r/e3bYSn5HdB2ii750wqquhUBIHXX
	k53WQqvPfTCXmMMA9uKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqnZa-0000000AlXb-2a28;
	Tue, 26 Aug 2025 06:54:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqn6K-0000000AgvN-2k4k
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:24:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q4jgSH019595
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:24:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aP57du5hI5dY/ksSUGXf2FChqaV+/pIdZ8ikNR5OOB4=; b=FufYbW21/Z4Nxji7
	s7cmCrjLiJ3DMReKZ9VFLLWTkvEcUuPPAFCj/JNLILg70oAgWKnwrsEqQzPgPAsb
	X5tmvr/D39rsUP3kJjnybP+xIzalZKyxxsOrolzwVA8gfiKKpH6JayWVPtzcNqbh
	u52IKh3dbNTe9Ub/MgLF4OKbIYEUNy/14xlerCZLvZbvngMAYw+foYTbbExKJQvi
	qv0Jx1rD4QhdhqQTDowmPLuKKO4OaDWytjcD6nUKVpE/W/ope0TyZajXyds/hSk5
	3fEHkJXj5ee7PhqANeqsqyuWG7QmNvXiuKrpWbUCFGqDD6BQ9N6HVVlCR/Ru5Wl3
	rAxkig==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615fk0j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:24:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-324e41e946eso9669490a91.0
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 23:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756189449; x=1756794249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aP57du5hI5dY/ksSUGXf2FChqaV+/pIdZ8ikNR5OOB4=;
        b=wEAlidpq+vmKSYQeuLDg0cpWeUPBOuHBo0eN+8cL19TVba3kR+XiJe6ULqQNJz7UIU
         g97QZgi73nE5Bx1dvCLVtO7zMEelZqF/ktkqjKrPYbr7Yq7gHQp5Mjh/Zz+AE/VLY0+M
         xrk4r2n4HMubuL5LTqI7FKNn3RfwbQyUJzAcOv7SJOSoMp3E4keMhs1Qsp1zpnWNe1+I
         ZcE06EHFzggOdUISciuF0bOSGja0UOdx06mqq7RC20UCnmdgP72wK0ACBmNqxuLn/q0A
         DVXvisfl5QcZKCkFhm1nZVHTJFNBagriekDBTZmO8lX91PdqEOgugWvanYFVOGmWI7kR
         qb+w==
X-Forwarded-Encrypted: i=1; AJvYcCWWi01iYW+i2PHxGY9cIyICZq1MFQBBeE7f7zPTGF1Am79TqwZDGsPJz99aQKn8/1SGlcLwjhk+XOI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzE/yn8PtJ3I6lISVaf3tV3ZzZZGGIe5HqiVsfqDvsT64Kb0DR+
	cOFRzfpxAoV049iyFzdvFswLnU8TEu/fhNb6aRIOYn02BXjAb0qb5w79RfVzzee6B5VN6qAPv8R
	qWWw6p3br5CWaKGUn2LGxQgU/MSL4Lmq+XFD4iRTyf32n48gpN0TMYr7FQ4HhWP4Kv9fL
X-Gm-Gg: ASbGncvdngXn5LcC89szKKMfrY2fE5EX0xW40U0DRjWFiKoYUKWKyx4M1VCAA9MYNWe
	RnNKbBxrQTw6SKiGuY02sQ09RQIjUgLQorcizxpa2b8zdhXJ6g8Yg5KH2pA8ib15IXrZvMZSmBS
	MnKpZKdWHtD0lDYHrcE5lE7jcYhbey5+E6+uLFUBHy5KLUTs8DuQVfVT+1RdjFZd1TgAJ75Ftlo
	RxbS8rQ6uaaW+1O181L5ZyDLr+5w2veTOL+22YNas2GIU5AvgZLi6A/UpBSE2YGCzy9CXGNLKkk
	swHRzVuiaPCeF6ogzRtqHVS/qZtVPT+bmF7oVMcoNxatyCa6Wq6K7od/qavySVgUpFx9Bhoa
X-Received: by 2002:a17:90b:2f47:b0:321:87fa:e1ec with SMTP id 98e67ed59e1d1-32515ef197cmr18057504a91.34.1756189449191;
        Mon, 25 Aug 2025 23:24:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7DCRIKcIriYxv1vDQ4/mgZOlve2e/tBHGMXP/jORooseUlG1Jd2+iZHB/A+lalVnxpwBTHA==
X-Received: by 2002:a17:90b:2f47:b0:321:87fa:e1ec with SMTP id 98e67ed59e1d1-32515ef197cmr18057469a91.34.1756189448603;
        Mon, 25 Aug 2025 23:24:08 -0700 (PDT)
Received: from [10.92.199.10] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3254ae761casm8785891a91.1.2025.08.25.23.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 23:24:08 -0700 (PDT)
Message-ID: <65755189-09e0-44f3-98d6-94e44e9b1dca@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 11:54:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX1MIs3RKkTZ7l
 8EH/tp1LvMm/FDgoP5o39xgg6Lx+WFs6vJip1yatJTrB+9IF1rqaIROlLu5HM8I3DM85z/K/5Lp
 TrplLdV9NSJvUN42LH9tEyvup/JwKG3ffogl/0P/0dnYd/pwJ/zzyKiFT54owoQCXNiLhg6z+nN
 dvKdbNYphTWkQrkY0qyb7UtzzS2iNTQAM5m0xwzsZLMUwxWFVNqljDX509mZvUEDQHzL9JvRmvN
 8LUm/EAKU4jK24OQZ8/CskCbpDH6fwvmhei1cRu6sDvVdt4p4SEscIxZsLC9mBeoWB0DQh65muw
 oWdeoEA/CG5btm2Q7mvkkV1f4dbFSXa9p8c4Deb+yPYEhUZiaBuJJMMKGeCpm5XjJHsj0cZh27s
 1W9af0Sw
X-Proofpoint-GUID: FeRmj_M-ftvkOrlzF2-0kdgLLaFmNWhS
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68ad530a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=Mpemr54xhKQ9MbVj_C0A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: FeRmj_M-ftvkOrlzF2-0kdgLLaFmNWhS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_232412_841180_E7506BF6 
X-CRM114-Status: GOOD (  21.50  )
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



On 8/26/2025 11:47 AM, Manivannan Sadhasivam wrote:
> On Tue, Aug 26, 2025 at 10:48:19AM GMT, Krishna Chaitanya Chundru wrote:
>> The qcom_pcie_parse_ports() function currently iterates over all available
>> child nodes of the PCIe controller's device tree node. This can lead to
>> attempts to parse unrelated nodes like OPP nodes, resulting in unnecessary
>> errors or misconfiguration.
>>
> 
> What errors? Errors you are seeing on your setup or you envision?
we see driver is searching for reset in OPP node as it is not able to
find it is falling to legacy way. where there is no phy nodes defined in
the controller node probe is failling. I will add this in commit text.
> 
>> Restrict the parsing logic to only consider child nodes named "pcie" or
>> "pci", which are the expected node names for PCIe ports.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 
> Since this is a fix, 'Fixes' tag is needed.
> 
ack.
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..5dbdb69fbdd1b9b78a3ebba3cd50d78168f2d595 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
>>   	int ret = -ENOENT;
>>   
>>   	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
>> +		if (!(of_node_name_eq(of_port, "pcie") || of_node_name_eq(of_port, "pci")))
> 
> May I know which platform has 'pci' as the node name for the bridge node? AFAIK,
> all platforms defining bridge nodes have 'pcie' as the node name.
>
I see most of the qcom platforms are using pci only. for reference i see
it  in sm8650[1] & sm8550.

[1] 
https://elixir.bootlin.com/linux/v6.16.3/source/arch/arm64/boot/dts/qcom/sm8650.dtsi#L3699

- Krishna Chaitanya.
> - Mani
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
