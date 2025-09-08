Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A24CCAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 09:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNxzuFqbKsESQ6BxRj6qyMmTxnps9dSBww0nI8ORHKg=; b=vsnMjW1GZB0n4/
	OPAz1s/uZV3TbW9F5hIkQiAtDg1t5FF+n8/RUiFduSmXv6C59DuMBdqBdFWwqRKr6KP8VR7d7QtKK
	uXP4XGT2pcNhzFmLNitlitabRjUmYclKn4HXqyl5BPeA7hXsDp1dx3c8Kjh5NSwLo3Csx10/v1m8X
	0d8mvSN95ZyRtbUd4XyDvHN+oYu2ty38YrnvN3jnFP2wvZjxxfFwYR81fBgqoSPoDmBXdPfPTD6oM
	rbxHsbbgEUkVFH/eqePB0p7FODMyvTyYQYu6dx1gv0szd2q+QWpbrsmKQvOyqdnKfopsnl7m4lMCP
	5SJ+/oZhxA7sUiSXVeoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYBc-0000000G29S-3Mxw;
	Mon, 08 Sep 2025 09:29:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXI2-0000000Fj7Q-0phr
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 08:31:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5883l4xg012763
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 08:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vDj4s3a98eQH3kjfCKPvSCUrdn86VZnNX6R4VUENK8c=; b=U7zy8PAJSiUcRkoU
	gH/HMI+/sYg3Kxqx1pCMXol22dL8e2fYakoZYSQV4pjqRjQaj1y643dpgVbVdSsZ
	OKZRLE3bEOHjnRSvPdpBNZhHQtZ9V/Me4AcOJSrTn6ogLQDQmnPBZdGL/isHss35
	jaI4xlF8/UEZeA/QHlfL4bpETikEpF1pyUCu7NCy/4Z4PxIhNoDMHgYuJ+k/BR5M
	8k5ygoxn1C7Ot/KnlbjRsdpUtuO5C5V7i6JPidkRZYigPhxMhhxehuFDzaD+Vtgk
	+NdJIjllD5eK42nE0kPTt5KuEvQ43m8jF8B0vheSx0ivmOjy6cTu2Q1wXOFhuIuA
	rFHVjQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdrp0j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 08:31:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso22697041cf.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 01:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757320312; x=1757925112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vDj4s3a98eQH3kjfCKPvSCUrdn86VZnNX6R4VUENK8c=;
        b=fhUWgTrwysXkN1ZuRAsCGWe4+xhnhpGUqAQB3Vq9286TLjKDk5yqyOeuL5XCJhyuM7
         owup/txBvbZZDgXv/j0H8kdjZyHQ3ZDdZFxo0p4zX/fLtEL5UwVzV62mJiL7kgeVL6AX
         ep2N6QvzL72GyrSAQpA26KGQwzCHF68v3jCeVu6RUcJn06dCtERLGs7tXzn+OXuAs5cj
         0XQYemOHu2AlGzN2m3UIFjWiWR1jwKYpQNO7l5TREG1TZdMktB/mEKRigQi8nuCQQxFt
         LQhn/85aXRxHE55QFK8JYpH+fvnCShEjnzicueO2/t3mkNCr5u3lO7y6i21yJEp6msSo
         daFg==
X-Forwarded-Encrypted: i=1; AJvYcCWQh46GQ+8KzF+rW0Su2fwSbD3Y9pNhMHJaXSZzrq6l4BXg3DxdPnYEj8BC9dttavD6YZQeoJqNrhQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQycdJj7xlIt9BRS1NT/r4MRdLr7XysgMlko8Y/6WrXybSCokU
	1en9OYxeamUYk2Gnaa8L2u/PiRBKTEGyS1dW6SrQ8v+YKnSkKOv9/TSaJFBHeAaMc+qCQdUNZgF
	Qd63lTeUv4B0Az7zHUjiiOsjBv7/jgGM4F9OtRBLUI64iZJ8zNcqyVcjZgeKJ9IjDcv1YxWXuxT
	Yv
X-Gm-Gg: ASbGncumgwGpUYuCtqIpmJhBzYCTGtH4cnpPi+2aLRhQ6ChLyfnQVBqSbksHw7veoEX
	fdiP1UEuMOAQ++XJ729T/9wpjoR8S9soTk8eTZUh1o8vp4eqqf4kE69FkZoMCl+X7Sr/7U9hmoa
	yIYbpVWz+KVacwqp7u9hhZs6Y+pfCJ7865RowHylk/3aRXX40Q7s3tO6HWSr9qCxrNz1/Yhgyss
	Kd7ge6OE7gwucmtnV6DbPqq+jFizYsURfHVygNBJgqSpuzHF0235NvQ+8Bv7quAmgRtgDfsACjr
	dmb4P3WJci4V2EH29Va6RFF49qh93c4PhLgGo1gjMkj5BNnrLhy5KmOguoZJajWJUllKwOpfjm0
	Vx5WibPmVnSYp7surzIeqew==
X-Received: by 2002:ac8:5acc:0:b0:4b3:474:503b with SMTP id d75a77b69052e-4b5f845df5amr53971081cf.12.1757320312288;
        Mon, 08 Sep 2025 01:31:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENfddQ3XkKBsMFx4ZOT6KiDbqO6YdDCzQfQfVOn7EvCvfbABtcsu0rhy8wmR139Hd8/r8kTg==
X-Received: by 2002:ac8:5acc:0:b0:4b3:474:503b with SMTP id d75a77b69052e-4b5f845df5amr53970981cf.12.1757320311763;
        Mon, 08 Sep 2025 01:31:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0426516668sm1906322566b.46.2025.09.08.01.31.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 01:31:51 -0700 (PDT)
Message-ID: <18c588b5-7b3e-4adb-bee3-8e7e445eb550@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 10:31:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: qcom: qmp-pcie: simplify AUX clock registration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
 <20250907-qcom-dp-phy-v1-3-46634a6a980b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-3-46634a6a980b@oss.qualcomm.com>
X-Proofpoint-GUID: REXOVGrtwFKg_SIuStsg2ilHY2LQZL50
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX2WnrN4lmzFes
 E6A06hK5kmY3IQWAlUFqKIttq5dWX1A1nDOca9gyPqfaN+FrEzix0e8Wqi2hrJYjsWd0kLPDko6
 St1xdbqTxqPPxc64lCCGrog/QBApH5s9gUdoCfFmNndIc/Z7ViLMFvIz9sLeTVF5mtuvAj+fMAA
 njzDTmM6HT3KmbjvY2duSiLsmSd5YM33gMmz2riiHzuRY8aFlu/vWWmlE4BubMXzdhaM4ppL21p
 RMSKKD+8GT7a344XUJKVPc1nd+Ygz4SbjngdRmGueP2PCVy1E9l28oak071/+kmtEwKnZ8PnGm2
 FuayXbwjnTziwLO5tK5r9xgiEb2wjfaGr+KsSmYNznjhDgebxlDEsFuW4YcaRiu33RL2tnGKhCi
 GboB0Qd0
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68be9479 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=IMqhVVJ5aANQV6WWCkkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: REXOVGrtwFKg_SIuStsg2ilHY2LQZL50
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013154_249751_AE1AC54A 
X-CRM114-Status: UNSURE (   9.05  )
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

On 9/7/25 4:52 PM, Dmitry Baryshkov wrote:
> Instead of hand-coding it, use devm_clk_hw_register_fixed_rate() to
> register the PHY AUX clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
