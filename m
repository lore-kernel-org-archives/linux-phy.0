Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEC67E94108
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 09:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH1mHcjsoAfW+9dbHWcOboDyii3hqRdtEmkbsKfLDN8=; b=1HNooCS/GScDfr
	RPR10PJ0xrkPi9TZAkbjxrjM+jaEQ6U14l7qGMKrlXpzPJQZdrYN52p75ZfhvvKN2RNbnbYRECgkI
	Va5FQ+Gg5E51wmx/VgQp89l9hmTHWoBpRnxR13iYO//hIm73scjrrUeiDSMIJ4SGAKL3vKVKULqZL
	sqq4UzHWd+SJOSF/a1ETfgmOe10jLEwxGZm4JosVhKKHPcJ7wgt8pzJmFoQzs6ytoPtADBCIi4/Fv
	6/3bYEX2DcEwc7Nav7LotmEAU1t78NgXddL9DOv4IZvGtpTBfSX+UhHI0gizBaE6UNU4kqgcGq8AG
	MIXDROyH71jsERAIYvfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVfz-00000004coT-1bQB;
	Tue, 30 Dec 2025 09:05:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVfx-00000004cnv-1AeD
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 09:05:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTMjFXx2442276
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 09:05:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	viRDd6TSB2NyW57t9e0rKnq8mtr7/AeCGI2eS97q3FQ=; b=U8HrbxgIcSBfMdjB
	3PD8GkH+mb3HT/R3hY4JMxjXYXVykwAv+3Ju6VbXp7wlMMBUt9ZSgGWo3l45RPEV
	rJOZ9WJVAnEqcP0H+T63svUzcXMoyTkIIUUj6+U6UDT/tH6seBse34NWtI9sCOxK
	CEmAwfjqyAIqtP0kaf4dlQHBIuFv33KxgC+hwCt+wMwMTgfJSEQjDZdCPXzG8tnG
	KEgIF31sYpq2m+L3WcihYshLcpXE79XhlvkWXMy8U3qkn729rEFbXdz0SiCJnBv+
	ZC4KvDs0IrPmDl80W21ML5lMYLjQtvu+zkuMAlgaM57IVFRhVZSFi8uecajs2/oW
	LQmfkg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc8yv0kv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 09:05:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f177f4d02so223248485ad.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 01:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085556; x=1767690356; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=viRDd6TSB2NyW57t9e0rKnq8mtr7/AeCGI2eS97q3FQ=;
        b=eBbu2Q7Hl+EJoGSVm7lONhTWpBFMJ+oQ5aVuOu1NZPdf2Coa/URrrbrfXKO1fZw1G/
         HktBJvTmub/zrarRagTUKguL6NFCzSvpFC0txwVzysGKq8EnFn5hrzIjIK+F9NzdbRUN
         kpV/CmLjv7HgrJ9kOlJK77uhC/VE0Pn19IO/gl/wkDKizbPwvckR4oYyJc/AtdFj7zN0
         ZokV926WvzxGQP2K9HeJUlYNdYEkFKMV+BlGGnaGIfbyt7sYUk1yYT4SWMf3CezvN8ap
         9DN79e4JSwo4GtORhdzaXy/c/v/hoxe0XLuR6LimS0jqnnke4di70Y9nlxrYDLTTWw/V
         1Vow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085556; x=1767690356;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=viRDd6TSB2NyW57t9e0rKnq8mtr7/AeCGI2eS97q3FQ=;
        b=kCuWr/2FIXRnMY2nOPkT1MsLNor9NXBxBA3YA1cTd//XkAbrPkzDdOw4M/6xN1lwQ6
         eRpqI4ocLsyplpScseJL08FHF1SuiU/TkEZ7Q2Vku+z7CfaDQpJBBR9xaK5nF5zojzPR
         /HXuVtn4f2M4oSuK0KBtASzEZzwkciBNEsILLSckQDdFaJC8zm/77kc5S26mcaVWgurV
         myiV6NZnGo4eP6+7VfA+Yivgyj9AV5oVd4icZh1daHsbZcaRRSjJRdXT8BD2v0ysc671
         C0eNa+c6KJMZRIxHbZ0f3urDLtmGO+cegYiZ3Wz5jMepfpdKMJNAYzFwwvjLj6fBf7LR
         F3FQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAEJ2uVhDDXkUtAn5d/XTICvEWE/VeKM4L/irKlF5OKjcjJ9QtLwLztjIc/UjpC0LCi4Qd6FT225I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjAMwU362P+20z6F7RfYg/o/aRQ/LNy1IYBAFNTLV6qlGZOr8v
	5BFjleznUC8nYJrqQH3OM4y18FupKaVLDa4NXctBXhrNb5xtlCcWVBNIXWvQFRf2pVGmqDcuQPw
	uqIm/GbKglJn8gQ6lAJvUjnta3JX0LDIwrPxtb5LGZ57iaxrbM9RG1nMwQ+J7XCptW3aMG4le17
	EN
X-Gm-Gg: AY/fxX6hwWqB7EqonwxRnMGM2k3nYG1Qr4nU4/63QF0dVbE1RMP7K0Yq60IRP2oz2oX
	ds0hYpeDBtOpK/nSd34bHjvEoIu60OUVvPoGjufnmZIcc98HNtp87d9+1msJtPHI0SHKaSmooU4
	r6eKKgSymB3Mbl7O5aBf0Ty1iXC3eQcj3Z1Iqxgupmnv48EikzFgw2wySOEMj+FoOElriYhIsRx
	8nOGXndbQ4KW0YfGLi/nAR63Xj0rVbYz54MLm+K8a1A7R63f/GcbwJLccJGG4WucNSNuyWd1/50
	CsbKDsisLuUOU8RGBdWyNdbX2ufCmfuGg6/2WvFINsL2WPdpCpwR3Wp1wSbcYEr8k3LOEbfT3qJ
	rXbcBU0O95Hv3TnwyQbs+xWV7+rWdSQuLZf9zftdkYhirk4zyvgI=
X-Received: by 2002:a17:902:c403:b0:2a0:ccdb:218d with SMTP id d9443c01a7336-2a2f2214ee0mr292308905ad.17.1767085555688;
        Tue, 30 Dec 2025 01:05:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFlbJO0Yg7sa0nVvN5mfG82L6hyMbf7a1UIusHtFGqjnnAgGqR5DWD6lTmqGSeTvwTy1nKmw==
X-Received: by 2002:a17:902:c403:b0:2a0:ccdb:218d with SMTP id d9443c01a7336-2a2f2214ee0mr292308515ad.17.1767085555123;
        Tue, 30 Dec 2025 01:05:55 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c65d66sm290751605ad.20.2025.12.30.01.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 01:05:54 -0800 (PST)
Message-ID: <86c649c8-7529-45c0-be13-93ff8f05aa44@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:35:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] scsi: ufs: phy: dt-bindings: Add QMP UFS PHY
 compatible for Hamoa
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
 <f87a8caf-6c65-48b8-a372-1ebff95cb6f8@kernel.org>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <f87a8caf-6c65-48b8-a372-1ebff95cb6f8@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MSBTYWx0ZWRfXw0hKlfkTGvJ4
 fUQLP+oLi6j5dyyJcm01+F3qsmvJvgqlc6xxelsAZwKWUlBSYZFOzCzKe1J+343RreKRR1G/og7
 6xdqA85mbvtjk//qBS4Z/g+XvNG9D9eI249YFX//TJKy3gMWAY840SE2pJlNML8zxrm9TGfSgN1
 B+lJ2Hr71CBYBMkiqNUCWbsiwiXlef7KDEIjryxgg5B2QW2DaIhyQECCVurn9acUT5liySI2ueC
 WJ7VsoZGy0nHkrWEWKxA9g2/k7Is/xnTEluT2C6Sypv92rM8tYbeafnntgGP9a8vLIusKlU+2+h
 DQUF9ne79IkCn8RHvg2hQKgWMhisozVQ5rGINK/5ceBPi6qgboCdugOoYFGdzrTBA2zDTr834FN
 kBf96tRB5syDTzRgvHQHslvY1edVOQDlnnz2E/GdpKkwkA4BPIRIO4+nzzCZ1AARRpZBysGuodD
 Ro1PA6VuzfV52y2mE1g==
X-Authority-Analysis: v=2.4 cv=cP7tc1eN c=1 sm=1 tr=0 ts=695395f4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=YiUacr96smqfDrfpFg8A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: gm-GkO0JezZ_972sh4Yg2xb3CsS0Pi0M
X-Proofpoint-GUID: gm-GkO0JezZ_972sh4Yg2xb3CsS0Pi0M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_010557_324372_CEB70DC1 
X-CRM114-Status: GOOD (  11.50  )
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


On 12/29/2025 12:41 PM, Krzysztof Kozlowski wrote:
> On 29/12/2025 07:06, Pradeep P V K wrote:
>> Document the QMP UFS PHY compatible for Qualcomm Hamoa to support
>> physical layer functionality for UFS found on the SoC. Use fallback to
>> indicate the compatibility of the QMP UFS PHY on the Hamoa with that
>> on the SM8550.
> Last sentence is pointless. You keep explaining what you did, but you
> did not say why. Why Hamoa is compatible with SM8550, but not with SM8650?
i will update in my next patchset.
>
>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
