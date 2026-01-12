Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 855ECD2505D
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 09:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx108alWBWxpsl4wHokG97BWdQaSr3xssO6WDRT/jJs=; b=kTDmiTrEjsMw+g
	DqH5zIdlLoBuMi02tAOzQbKq43N0+/7QKYwYiUPf1nyG0tq0NXHClQ9KBi17ZWc3FYQIMPW4C+pF5
	rwexbJ3JW+2zccrykArQh+bnPvCGBk7K9G1ZgvghAj2cEIDSSstnzYs/ElCKFx5izdMLZwaokdyPT
	hhWzvZCyMNYBGMoVYgJ/xC+yGluinYWvSKn80CG1UMQ6HbjpfXzkr8zOWvMktv6BgBA067ajII6HS
	Yjgj1Z7r8pR+cmlAKvD6fYqCcwkeEiVrnW1X0HCJKEnuHp8ebwmHLK8xgpzdl8EpKTiKs/N/MMGfZ
	tiG6EMMfT2Ywpgz930Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfEBb-000000055Bp-1Ils;
	Mon, 12 Jan 2026 09:26:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfEBY-000000055AW-1Z0K
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 09:26:05 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C846em2828640
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 09:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Adek4ZbZXtqJMRXQzKdnewMwSvLDcDg3vBsFEZpsDFk=; b=RNVl5X1GAw5WyxEq
	9Bw+vVL6ka6hshBWhdqnnKHDwckZhZkE6JzBquyMVJp16sSrC7Ky+dSiL8vFvR3D
	CNzMtHMAGzmDKjzIiNsSIgjsSPptN3cN6qCcqpFfa4QCfDZ43ZAgzb2t1JrEBQvX
	xdTREYkuGpcqAJVFOOXgmkh4iXdV6noP/CpmoDl1aV/JYuBgFf0nvvR5nSWNSFBd
	fw9pgyHWF/XoJlf1qu7as3vRC+nyia7LFLyz8bPWlMnCYvWn5tYw5gSv6r9pGZjD
	iIYX5o2xJknmfg57pMVSUWy3LcsrEh0z0IWmGITfpql9eu2GaJsSfBJN6oxuJyJn
	xuZXjA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmkk41kqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 09:26:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c231297839so232140185a.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 01:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768209962; x=1768814762; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Adek4ZbZXtqJMRXQzKdnewMwSvLDcDg3vBsFEZpsDFk=;
        b=Nw5xsUSbaXfjvtxZF5jCxJS6FEp/Q6NaCDSWMrfa0RPgtOzc0RURNecgc6SjMLB28u
         9orZCfUjlCtgiwfUIf8Vu1MDHjS8R4nnuaReIv4Td4E1jCaC+YQHBa10P4hxKRSfo3uJ
         AapeeEwXQGAdDkU4ZUOO5Bzf+u9t7F1Unm64CLTS0hW/gEb4V8UHh68XUssNZIRAdHZE
         +AOhIKnVIAftlm6ytUwxX7/da0nU24jxI4Xi1NTy5eMCPVHjGNQcfKpSawaCveAqwik8
         anm92VyX6scs/bBXqny19H3FYaYITAvgLIjD9K9E4zNQQwMkINeCe4Z40BvAV9GM4Z5i
         +2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768209962; x=1768814762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Adek4ZbZXtqJMRXQzKdnewMwSvLDcDg3vBsFEZpsDFk=;
        b=nshz8ZYW+c7CERBJ4JNIagb6bTNXh3T4sByJCjxoHE6lpe1Y9C9orYHzDP/LiJbgbL
         UTzNkvgMf9A0i82wjqLBFuw46uoZQUp5J8bklS7m1dPHuZ8yL7nrbicJPGg2m+RHT29w
         u8NsKi2toxfgLopwH0cTNLZFX4xO1v7GVjDVMAPIuDAOldeulT9ubH6eP9EysnlOqbrB
         4Jx3zQoDUsUfBnHfSxS2oQFfFz1bzqBkI7VdvTUQhsoMDDgX+QEhaYrYSJMkcZNTcWQB
         ztRZOnh0GtsS6nnTfkU6ps8J4k7BmjbKwPj/pT+/XwVEEkUVttm2szjHpUDHewgjplvi
         shRg==
X-Forwarded-Encrypted: i=1; AJvYcCVOhUgmZQNCNXbPJzLlTcsBPwNncMnqNWszzL1Lu6mnotrnJaBk4l+ufyj1CbbJRCE6wNtKC7uVWRA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrbRP3scZiMeCCb7Bx8Px/63I0H8f8WLl8VRlKvtmyt86KJN6s
	caVbI6/DCvxTiCE5owZqHEkJLy7F6OGEzn7lritmwURGuYybve4qmINiy5A+F24iwkql7NSVDap
	DAxyrUFTrw2QzSbPIBfw/l7FdnVe+Esfvr8O3orYKOM7LDTOKoFblB3CF0EUngReevue9
X-Gm-Gg: AY/fxX7myYIJBZ5AU1QJexRTgZ5nivLqP2C4PDkJuVrsy8obU9dYlP+4kKpdf71k4dQ
	XXqmmsNAYijOkMY1BWEaBA06vlyFyEpHPLM5ktN/brV1S8D99ISyUYp1wrqK7FSa1DwpzPoIm4h
	fqCBt/8b7/Oa0N9iWbgtxL4ZdHecp1QrDxri6g8eraZQ3pGD50KFpQU5XETayrkKk6qv8ra4vDs
	GqdXXKZWZDxvN00FDSogb1nn7GG+oDQ4L1mwwfR5lZM+uszgR0UVU3I/IaP2UN1Df4RvyHqxDeO
	qdIVOi6IYTX2A2TxCRSZ+holY7Hnsbo9U6Xhg9PVLCmLPSQ5ofC8ziDCDENQ6/xBFfXW105J/CS
	po6h9OI7Uhyf9/jOPN8JXeicpTosQKDOggAuIJC1Wun2MuxpVjQLyv+HyO1qG5vkL+nI=
X-Received: by 2002:a05:620a:370a:b0:8b2:1f04:f8b with SMTP id af79cd13be357-8c3893e7e43mr1786300785a.6.1768209961809;
        Mon, 12 Jan 2026 01:26:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfupqTRxY8QV85vvnHKSvYdncZ+1eCe8EbZMZs3pmrGvmHpxMorDP+NAwXs2sxddYq1zN7mQ==
X-Received: by 2002:a05:620a:370a:b0:8b2:1f04:f8b with SMTP id af79cd13be357-8c3893e7e43mr1786299285a.6.1768209961303;
        Mon, 12 Jan 2026 01:26:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf65ca0sm16788595a12.24.2026.01.12.01.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 01:26:00 -0800 (PST)
Message-ID: <763a5a4d-e543-4799-bb9a-44c6d154c929@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 10:25:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: edp: Fix NULL pointer dereference for phy
 v6 (x1e80100)
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260111083317.604754-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260111083317.604754-1-val@packett.cool>
X-Proofpoint-GUID: tFnKR80E1drgOm4UgxS7kK8JJrPjZoAP
X-Proofpoint-ORIG-GUID: tFnKR80E1drgOm4UgxS7kK8JJrPjZoAP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA3NCBTYWx0ZWRfX8vewxOq0F/5l
 Y8PhMXTB+9Rs9Y8BkcoI0iPD4EVbqshREcmNP7j97sdn8hVgjDYhmJbT/E9CJKYjveNfMslMkCF
 /eO3vRE6Wt9wcT7oU6naRX+Kv1NWZn4XqOtsbe1B+eCgdKEXjxZNRjWTxzjH+JqWes/+0g2gOuZ
 vMwoNZE9S9dgV1HI0k5AUMihuUlDW4hHrgoYBZp+iFh+ITVwF299zLX0Wo5KZz0qVHAqj184C+a
 WIMx774eHLK8vcPrSkgK3j5QT0AUYuRw++yBN8XQDneJoOv/nN4WpqZSarAT0CQfjOMZnyM2gKz
 tDkxUVax0ZrFGbj73wpcY7WTjXARqt9LceDmLRq6UWCC9vVfq/VWD/wddIEGcGb1ctkVQ9M87Ic
 hd+7hfSMi2jUOjXkkX1FLX1nAVN+dy4YHOklkRf94AyPeoHDUtavK6LgiCg9Iid2M4gHrtJL89v
 yEe5rcNsRrd+KGPkhAQ==
X-Authority-Analysis: v=2.4 cv=cs2WUl4i c=1 sm=1 tr=0 ts=6964be2a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JlKCqTmyOVKnn9NiQ40A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_012604_545196_A0E6DB77 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
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

On 1/11/26 9:25 AM, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Val Packett <val@packett.cool>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
