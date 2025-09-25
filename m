Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F914CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hChCfhDpjRzt+AaxEyQwDjq+7GlvdMz0SjR1d3kY3Y=; b=3rnwaZQ0w+M/2a
	YN+UDO6Hh+LI1E1RZFZx2CEddXvSj2BnAgUczY8zu6SQECB/s4rXfS4F0vmJOzqy7FhQhoPc0htRl
	L8+FaZJ2uAvPSaXTwQ9Fj08sAEI0qwZ2cd/2wdH1gpSAzMhXxP3qQvKkrwhbxSgLAvb6npMYyrJiL
	COe3ieL6IQxgwUf51pG/OL93Io7s1F8XZE+8GHESwEJaQXddpIjtA+LSaH6k2Z0FOe95uAEq10+lm
	h3LL/WV6ASd8pVDlKP2JALF+Xcfi00bDuQC8v/QL3c30yKnT5ZLSSvbbfJLNVxk6TK483QBTvykxw
	WVYCkF9YRq7K0OG/xAkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bVQ-00000005H5I-3eTJ;
	Thu, 25 Sep 2025 02:14:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bVN-00000005H4u-3wK6
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:14:48 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0mPGd029712
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:14:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qYb74ctst0DsXsUARWUIqV3xVpP3o9baTa7sSWce5hQ=; b=kKhpgsH75HlNeOxk
	JJu+Dp6XTSisBBn8B/4goRuEfU7cfMca3PCQCbxShW2KngxSRgOn1b8xjr/XRVeL
	DYS9pW9gt5fIuC33/ewU4hQ8RDGSL0QorY3dFngQDl7GAPtdrj3xq+xrOZf6x0BJ
	+g3iaggg9LQHiyF//c3vWCXNIyX29dOtykoQASiuKOgE8hwdKRYg+wZJeEZdLT5a
	1JUBIwlXZ1MmGhrfn/B/BKDW1/jS7cCpSPB332QXjxCw0m+dNIA9qTw2uEWkgSEw
	Tlis3v3S1c1spkGgUdJqD3tEZhhI1l/XBso6TIPdiLPZxGajhpF0Rx6iIGfZE0fB
	rbezBg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp9md-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:14:45 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26e4fcc744dso3306715ad.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758766485; x=1759371285;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qYb74ctst0DsXsUARWUIqV3xVpP3o9baTa7sSWce5hQ=;
        b=ddOLeH0biO85pfWusalPKgTAkEZIpP1w1pq2ZWxQE0vKho952B2wHAc8yeeRCO+wmW
         W/tT3RkKhMsAtiK4gdBJ3b/FNioA1/WiXoEXabrutYD9qiLwDVWLIfM1ABXydNd1qJ97
         cBChMwIuiq7TqeSARuGqxaJ+pzDe+1F1nNcTtw5UPD7U1wUdWex67fsC4kQHsCqBcY38
         W61gdzF9oBaW8CQhkVX0uh5KpqpuPzmYOirRx+IgyShzMu9wbD+5gWD5U3gs9R+WzDTm
         gneioZJx6YKCoW5TU6QXu+2i4Whsmo6vYDPCZt2pMQaB99qIcf2lA2ut3DMXC8trUpRQ
         rGEA==
X-Forwarded-Encrypted: i=1; AJvYcCW6T+sBL63S6xRjf092MT+pq68xMA+ssxcnA5On7Er/9gqAk1UFMnQFGyPgoCA9dNj5bhZUUOnMWg8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj8Td45nAAwSeu/s8Q46oKDrnmQNbZYRGZgWCzEW9Td63uIpzh
	GiqgrB3ngjup6WWh1kLPnuBHk7xhVQcKNVWf9GHh/0lZuJsgCXG7//94eL81sH7Tm3ebdlV54dV
	88nMkCaoQ8UHtLhgZxCnQTWHVZoFkHHfXiQ5bTfCGjPwuECAg7RkfJ0fpMmwVdUHCzOoy
X-Gm-Gg: ASbGncvwRRgJHvWklRc9mNMIDs+Bq9fpuPt9WS6/eKBlJhRlsHP+yiElPO5EN2A8xgY
	oedQqpbUsy69RDsqbUxAfYk3SxstNZUFLleg6hYxhuJo7U20N0/oMzyTellOtU55Afw8VuR6IxQ
	DfAiG+tihi5WfrunYJ8J0+5nFSuctxPqt+aPE1s96/ZWdXPmUE4ql6Dq9dp2jOXptouUz35zQA7
	LfKwS501n04gUqq9brS9etVqzM+6aqAck462SE5NAvxMM/gDA2bC2U7MgwHoDnxlEymHf7prR2c
	qx5cxhw7GijGQtwKZUUFb8kppKpJHwMCulalKXXOEahHVA8OXfHWGEIn602zt2rRCYLcNfxqIQE
	vxiZf8Q==
X-Received: by 2002:a17:902:c94d:b0:272:dee1:c137 with SMTP id d9443c01a7336-27ed49d2c42mr16317085ad.13.1758766484487;
        Wed, 24 Sep 2025 19:14:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyxJuLNtLq/o0cb418AiMSRh+W0XoH4JxAaKBFGhkZ92bPDHbrLdzEVGWl23fcg0V3B8oWOQ==
X-Received: by 2002:a17:902:c94d:b0:272:dee1:c137 with SMTP id d9443c01a7336-27ed49d2c42mr16316785ad.13.1758766484006;
        Wed, 24 Sep 2025 19:14:44 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed688226asm6880855ad.65.2025.09.24.19.14.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 19:14:42 -0700 (PDT)
Message-ID: <5a6b3a3e-c6f6-ba39-9edf-eab3e1815862@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 19:14:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-8-wesley.cheng@oss.qualcomm.com>
 <un3pulyn7tv3qihdnqmktsctped32am2eglxzfpwyz3u3tqspf@fnieck3i67j2>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <un3pulyn7tv3qihdnqmktsctped32am2eglxzfpwyz3u3tqspf@fnieck3i67j2>
X-Proofpoint-ORIG-GUID: k_alnkqfJ-6M7MrikqjrlWTHWQikv2oU
X-Proofpoint-GUID: k_alnkqfJ-6M7MrikqjrlWTHWQikv2oU
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4a595 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GfICSpz_d4rxbVQ3OkEA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXzyVYWOxTts89
 qy7twKNOFjgrSgCFYesRiOc2UB9RDt4okHrP85p4W5ShZUhgHJ1gW9/rQ+2XUzgogCmVzsAY9pL
 mCg3hJkh0EHeRTAZEnvNsmtwK+cXXfLIPljE7yQ1DXfzGmQCqFOEji4RleYJC5SBc4ppGZCrQ9J
 6qJ5vNuv0YrPjQMMQxqSN1A7kyEeG6QVUmwVvmrbJtbk0by9edR5ZgveunMQi/3eaFEhLYO29/I
 ILh9cfAqPqlYmABQ1hBoUlyrrJgi6GRG7u2+87jE6LLGdv9HF5U5ooumM6RNyNhSpPIXmsSAP+L
 OSuemZnhbPG2wp9NPNxRZg6z98CMOjx1D5o2v93OEdVYYYoxurRQm1y0HXxt7952b91XWc7WIUT
 NaS3ki5/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_191445_991094_0236401B 
X-CRM114-Status: GOOD (  19.55  )
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



On 9/24/2025 6:30 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:52:25PM -0700, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 311 ++++++++-
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
>>   .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>>   .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>>   .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
> 
> I think yo've squashed too many changes here. V5 and V6 headers should
> be a part of the previous patch.
> 

Hmm, not sure what went wrong there, but I will fix it shortly and 
submit as v3.

>>   8 files changed, 1251 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
