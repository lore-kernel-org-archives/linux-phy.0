Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D9A8C9EC78
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 11:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyCz5N8mQaNbBzumoX/4ApT7aYCYwdncn+IF7PLKwtI=; b=RCppZnEJJ2cIdJ
	6Mt0O+NRN4v6AbhzscA5EZTaRLux8cOdSh7cvLW8KhdrgRECPq4x26mIuux0NGZnB2vfaeJRs7fQn
	QFMkJHoTOf3PDbW/JjIuJMOwCXFkxWCGRDlqKl4oOoUsfyh3rEDfR8rescyR+WTIlU8q9r3RS8NDS
	mDa2nKLuS0JTCXvQ64KmOHpn2zvwm3jm4f6c4mBfMvrjaA8SfYpkPCHvTdlWmNzQvz1VJRx3Cj87+
	3rR7JBsQMb2IPHik96B/jhjZwGGnNB3i0Fvd3nUpu2kOQna2H75lhEOriQuvbic0fwyhKsjqqQokG
	K4LBB1qWWr5UptTHdAEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfG73-00000005G9G-3ypE;
	Mon, 12 Jan 2026 11:29:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfG72-00000005G8o-0DNw
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 11:29:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CB5j212822382
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 11:29:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tUtpv5e/gy4OU7aN/5oKSOK0w10MtlmNCkbBwyyRAXk=; b=NLT1KdOmayE+14m/
	zOO/hFHB0QrZ/45xcZrsL9sI3DBHCQFQGlOpN2hwDo1jvFUzftyKAS0HBs9ju4v6
	erf+KB6JSoFF7jeJDnFfq3cPd2md+D07jCxLIHXfyhqYLm6ZebGAZLj5zcw0unNp
	W4J8A3kUBcxtCW27fCvjO7r7y/opARCtIlthVtSc0/kyqQr2a4I3Q+uOr6Qp4SJV
	9ioVdHp3CsaADRpDB8n59SpWYkVI0OWN28UTKEkxnETBcp/mQcE9MRvl4mOxl5O0
	6TBCYpMojwwaT39RDKapZAaHNGS05TGii7z5qS/4Gn+DzVtN+6c/YMhSIFQ7s+st
	HjWt/A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmysag20j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 11:29:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f357ab5757so23101811cf.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 03:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768217370; x=1768822170; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tUtpv5e/gy4OU7aN/5oKSOK0w10MtlmNCkbBwyyRAXk=;
        b=PSi76uaEEB4w4k2SZdC9c7JzfPKFRhZKYql4dxJns6lEpgQatbqS671T6zKkSx9nj8
         uF4VL/fvvkNwqFdcO7EJCfyvBm3mreboVlclZTTpDijVK94LDZuPBaUR4Df9oyoXPU1M
         5x9QrXWcKBo0meOzvblJ95KuwYDiNhogSmngId48/WopVcgUzO/Il9yZyIzEc+gq1amR
         B7LP6mttGlf+4B5wBmdPlCqRuhy06iY1pPCmIYqyFKThT/O1ifpdvKsVsEsfMDAXB8Lq
         mTMQF0DI36eExjZkuvcENANY+uDEl4CJ9jgJLePobOFOAC5qeR6Dpe44x+VsP8jlHiRK
         a2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768217370; x=1768822170;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tUtpv5e/gy4OU7aN/5oKSOK0w10MtlmNCkbBwyyRAXk=;
        b=P1PTgH9OwUk6YtwBgymmQl9vlJqr1f6rsoYssIFaWGprShK6TVLnsIvA/qNiN1A07y
         HmoApt0K/V2Flnuqj9cS3fZgaPqQrJLfKQaUBCcr/X5b5XM85KEonpTAZseJGe50fSed
         1ij5jmI0MjJ12GAAfl3C40tqZVZXc9gSpuU2rgyHTjoJdBtd2CKL28Cbyimz9rLLmxNr
         0NfPmk4UMvLEc6BSHq2uuxBVXhdKw5FJTXihtv8MDFel0bojd+dBOpGX8tmw7gSZHH+1
         5g38+EAPHAVIDJ1Y6/qJpL+ZcwAVVoTJ6xTcb+xsG2zvyjesLon0tdn5kKcDP0rg/TVF
         OKkg==
X-Forwarded-Encrypted: i=1; AJvYcCV6MbaBcSxcgGeg+eJppTZQBqFdPC2IJQK6/CLDecWq5DKOEdaIekY2nYbg3GiD1nW7gNgWzpxvVq0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxjd6uVHGwFY8XJUtAQRsMU9VxzzS7PAB1yHf+5wUlpGi+N15nz
	bjh8B+hpGTcoewHSgoydw+TnHZCcVpdwZtkRrswpwjf+UK07NUt7qrp1qNXUh0mMZGBKPrOflT4
	7Yn+v4VS2FDVSs0TA3CJfzrEN8dVBIVHT3YRKN9aZ+3ii9TmcRbsN3NVlooR7U8u8OcLdr3BTAr
	Ol
X-Gm-Gg: AY/fxX4UeOPRaNHQpCAhaw3N74fYE9r9OAUxyAo5jTxmqjqC48djngUPLnyK6yfU2jC
	/mBoYXj2eYhJbakwYiUGJclAOlbcOgfoMvxWatP3DgVkcFNi/94bQKJBkMni25UBxdDLib7/N2p
	eG8nWMvYEoicecQWossPdpTh74Sj5kOYJMKuzr0kv1geIgbJ9JWAoGJLFCH7fU9NzRQGtkMeaEe
	DJedFUL1fMVNFXqCOPjYXlltEJenFCx8V9AYEpmigMVNE1QjdXW50fz4+x8X9Z3wu46NSqMGlMT
	nAOEWZmAvLgIIqaPg7qNod5C4SSOnoh2rEv8cWuw3hASmkFdDGofLRylywFAZVyy1G6nbproRyD
	V/M+FMxpXwELA4gc6fwJ2iGPVaf02MUdElTdPVHoobotWTrfVUbnd3khkt4GIwf2ptT0=
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr190431451cf.1.1768217370425;
        Mon, 12 Jan 2026 03:29:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEi/U/8coggZOauhZL/T7g+wAK5iJgcYMafFH0a6UdArjpaA3jBAYm8fDnA4Y55d2WDEEvi6g==
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr190431141cf.1.1768217369973;
        Mon, 12 Jan 2026 03:29:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87023a8a33sm538070066b.18.2026.01.12.03.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 03:29:29 -0800 (PST)
Message-ID: <816456c5-ad32-4829-ae0d-a0d09f468863@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 12:29:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] PCI: dwc: Add support for retaining link during host
 init
To: Bjorn Helgaas <helgaas@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
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
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109155350.GA546142@bhelgaas>
X-Authority-Analysis: v=2.4 cv=auO/yCZV c=1 sm=1 tr=0 ts=6964db1b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=sQDjRcaqkbB8EtgPkRQA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: KkZOcEllblSH7Ete-1Xy0tGxajc-vnCh
X-Proofpoint-ORIG-GUID: KkZOcEllblSH7Ete-1Xy0tGxajc-vnCh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA5MSBTYWx0ZWRfX32OlDwV+echN
 kYtIY3YUZgu6qSRszs32hWPOUIATDItiupGhgcrUYlE6V4GO6aYpx3nJnaldpBUNUtEewmIX6U/
 N+n7JOfK+toMHS2raqOU1nVWN+ENjPge7HHrGv3uvrREj2cPf+B3pCssCNfxsm4O11qxcbtZ4Ql
 8Odrdp/JuFjfpDm2iFuVCfREAzgZUx9LW1ZGtCFaxbMADZaXMGgUA9XjXMunK5KtwU7SD92y2bk
 X5f2on/lQUjO0A4kU+BZZr2/B5ApDKAiWHma7uh2xRFz757/fmxbAdZE+WRRe5jy6iP8LcgHF4J
 IrirsG7FVPrMNhRU25OV07ocsvYgbWfLXLK5BS6aigiq9rmNwZKv7ar6Jok/bmcIi8dlgsfc8HC
 azry95XjfgQtlI8Rt87X2U0RbY+KG09QKHPV888lKAl6AsWcSKby6xvKy8q6NjV6ZjGbD2SeZe7
 7mdg5VHu6zLq4vAm8rQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_032932_105148_49B894B8 
X-CRM114-Status: GOOD (  13.92  )
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

On 1/9/26 4:53 PM, Bjorn Helgaas wrote:
> On Fri, Jan 09, 2026 at 12:51:07PM +0530, Krishna Chaitanya Chundru wrote:
>> Some platforms keep the PCIe link up across bootloader and kernel
>> handoff. In such cases, reinitializing the root complex is unnecessary
>> if the DWC glue drivers wants to retain the PCIe link.
>>
>> Introduce a link_retain flag in struct dw_pcie_rp to indicate that
>> the link should be preserved. When this flag is set by DWC glue drivers,
>> skip dw_pcie_setup_rc() and only initialize MSI, avoiding redundant
>> configuration steps.
> 
> It sounds like this adds an assumption that the bootloader
> initialization is the same as what dw_pcie_setup_rc() would do.  This
> assumption also applies to future changes in dw_pcie_setup_rc().
> 
> It looks like you mention an issue like this in [PATCH 4/5]; DBI & ATU
> base being different than "HLOS" (whatever that is).  This sounds like

FYI, "HLOS" is a Qualcomm term for "High-Level OS".. which is a very
pedantic way to say "OS"

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
