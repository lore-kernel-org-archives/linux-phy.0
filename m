Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203EB607BDCC
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 14:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W25w2I/2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=iKgJ+Bvs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=U6lNaZVF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PYm7JpAzBxQCpx6sx0w0ip7vyYW6Tvn2sCQrvzZhMj0=; b=W25w2I/2FXrDNPlw2DqitzD5Pz
	lINgICiMnxhZ30FpchRUelpdplbI3QKLmXXXxup4XOBUc6ObSjegvvrjazaKgDyv5fq7xH9aV4GrZ
	Fbo+dl+c8MgY9UdEwBXYVe7wiMLkWjStTayMxuub2rOvaw/UmYMdj+HgJDC0axQdREuLCQLPo+FeT
	++u22es0kGl53VhHmDxNHTzp4Y89FLrPh1JZ9buQ0hjpUrL+upTGfRBdn6gV4YADpL3d+CWRyI1BX
	zzAR38iWIfebe3dG6bAct9SnrYts+6qS8o/mD6sR5TrFkPZWzJ1mz1cft0ncVgcO71IgpqpuLv/LE
	E654ve/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtC0-0000000GrEe-3dbJ;
	Mon, 02 Nov 2026 14:39:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtBx-0000000GrD5-3jR6
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 14:39:23 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A2DpMlg4070512
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 14:39:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eSQPv9J+QlCFTNzamqkT43tzwOVTKcOK6QBTK/tnv2E=; b=iKgJ+BvsSJcCQgGa
	mJSVvfoMUao9w/aRtCvYNnMCnBDeW7YnEv84V6gfcPnAulp4PULt8v7TDDQMqVSt
	2+fBcox4doGhkA5V+YeqgOYxhvd0Vs5b7FRgP65/71jD6EyljLG59ksaTXV+YF2D
	zD8VSY/ZDhY74AQ6HAqyrXm6oZQVuhzBU1hK+/J9bMKjzJJNdahXXMeu8cBh2/j6
	AOwewqBOUUhEZESuJA7TOe9B0wjRj3XJlE1Po4i/Ymw9qtMLADp0U1tV75Q8lZAV
	5ZWebiOgf6FnbpY3iFZOw/sCVabS9Hvk1R9xNB6Kfl128DpWJSm8hzBHim7oqY7e
	adkkjQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpss5gphd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 14:39:20 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c97957d83bso171646e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 06:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793630360; x=1794235160; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eSQPv9J+QlCFTNzamqkT43tzwOVTKcOK6QBTK/tnv2E=;
        b=U6lNaZVFHGexQwoJAbVpwT4ofHhXK7iM/RdHveehWsN6eniqc6qM5eNnDgEWRr1dAA
         UmFyoVllWDo+4VJ4P50f3CorkXYBGmxbaMBBgzdp7atA+00p4wWQ5jEgjc9jR/Gne25w
         yvORTGb/oYZjKvCfsAXPO5V+GqTLYr4LL/gUKBXlqZI/34o9EFwvSFfXlqADOHt19nrm
         uduJ5cwil+tuJw94pQ2d1V06LRKe2tYaLJWVRldVxtmXdKdsHVD2KAk7XtdAg/IveLMN
         RSQEUX2Hn1Y0S3/kRt2nJQBbo1b2/+pEm5yXSu8oRz0s3lhnUQ3E1jqqcuAMIOjuz/d1
         orOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793630360; x=1794235160;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eSQPv9J+QlCFTNzamqkT43tzwOVTKcOK6QBTK/tnv2E=;
        b=1Kdv0xC6tTD8edXzr8ybMamIQ8LX7BVdcJiKqZGOPoGi7H6smy6ocggtxHfWrl414m
         4CUozT/Prsfey+YTVokTUMqnQr6GwllYRfEauj0iGbsvEEaGjYJlBJ2XY18JftMlLb+5
         OCngQoZzGKafUbzdFKxIj/ga8PcTQO0O6dvA2FDFo2RPoghVyreT+wcFpjvzh9/meKZ3
         3Bb17CX9pxbaI7kddtXD2vryBZ1kpYvkNKunILN+p1bX/P72RpI7YW2TB78jk4BpuzoC
         kJu3WTsGadxPKmiCCyTByHcL5VQV57jC5II2+NWvr7VvJD4jVHOrNviAcKw8vyzpXVvC
         Qgww==
X-Forwarded-Encrypted: i=1; AKwUvByNKvTNKGhwIseL2LbikE8WJfdNNX2QjxfzpgPcrcUYO20iQQQ9Adp7sYQHwlpgpOJiUpKrE9rU1YI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/O5Q6WPbDiX2uw/WsNaav4W5Lf2N+uhXNlo8DyGYyzHqJsLss0
	qs3RWuRePav2X18NXVYQcDvTd+O3gn65tJ6Em6TZKrqTjUQlisPHjEu48QP/uGXb4nCLLSA0od/
	YFHLWh3u+D/vkiC3TOVpLleJJqtCQrjfO8zMF0uofYIDT2sh5jagwIFvZjBHDrVUMJFEr
X-Gm-Gg: AYBFou2pdT/TrPyc4jG8HShl5DJ7iyXEIjFGANOUcGPGLrUoNZJuk1Hj1F3csLC/BBY
	cr1zmtdThP8cs4AnNZntfbCH8RUoceTyrVZ//xIZuoH048cs7/oetfd5pNMiQYLWb1miVsj4UjT
	Xcp2091c8inKm9g4Gwvz4Qer0gzFKjQzuHbTciARJfdzzqDHB5wwnHVY3fdJ9BnHl8rHCIWQP3Y
	C034NPUY7DFcRcs/JA7yM1L4+s8a3+xY863W20G3jysj18xR+G7hQzisk0xqqKrrHgw2LReA70+
	Nc19t+U4Edg5EF84/KI3ITnUReX+FgKh4RhFG0LUmLgBJpDPFYqelHzr7rUZmXXCX6t2zVU82da
	afhbERgfzZOr3AHde8Y8nIkRAbtnsJLBuMOd1GQrN888khuulxzaRbJLtOfxAyMhk+jKsjShepp
	W9lKy6qT2G4imYWNgvOUp+4UoUYIdOxw==
X-Received: by 2002:a05:6122:2b01:b0:5cf:ad27:3a67 with SMTP id 71dfb90a1353d-5ec6897ccbamr4412991e0c.5.1793630359977;
        Mon, 02 Nov 2026 06:39:19 -0800 (PST)
X-Received: by 2002:a05:6122:2b01:b0:5cf:ad27:3a67 with SMTP id 71dfb90a1353d-5ec6897ccbamr4412976e0c.5.1793630359426;
        Mon, 02 Nov 2026 06:39:19 -0800 (PST)
Received: from ?IPV6:2a00:f44:e0:8d11:8079:3a24:c57d:745c? ([2a00:f44:e0:8d11:8079:3a24:c57d:745c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4cabe3c449sm403461466b.49.2026.11.02.06.39.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 06:39:18 -0800 (PST)
Message-ID: <e23b0980-4759-430e-83da-52f44cff37d5@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 15:39:14 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
To: Prashanth K <prashanth.k@oss.qualcomm.com>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
 <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
 <de3e5baf-dab5-417b-a9ed-225cbc56ce1a@oss.qualcomm.com>
 <a8104e92-990c-4e1a-aa4a-c97b9a801935@oss.qualcomm.com>
 <a05ddb1a-a84b-4db0-9806-918958f3a962@oss.qualcomm.com>
 <9f7c605b-e7ec-49d9-85af-7dd9d00a9079@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9f7c605b-e7ec-49d9-85af-7dd9d00a9079@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=VORIDNPX c=1 sm=1 tr=0 ts=6ae8a098 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=c92rfblmAAAA:8
 a=EUspDBNiAAAA:8 a=TnnhYUFuctcyKAmn-PYA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-ORIG-GUID: gSj3IQ8dNyeltUxS4thKpzufDc57bgKB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA1OCBTYWx0ZWRfX6m8Ub1LeMWmo
 lhU/RwAxSy/JAq+qXNIY2Ce5KlhhFRIRtJ+y35WFe5B4wqpP4SHG7ybtm57An+fwzX54TmRYK51
 iAjivBdXkNfl49cUp52JJCXw5MJoIra4GXzCXX2Prs5WFvhMYrqEx/rfnXfkHbo9nBjtigpgnVN
 9pFBs6I5jjb7lZdmEMaZrP9GikYO+/yYu+gX3JIqWP08vXXk1r8+3NHlZOeyOi3SbQzKtV5QcH8
 8PG5sEzj/CTC30XQpgLN8s18BGH8HVECo9DaIuU91U5Yad2MmwSpxJmlcPr3tRdqAjRcW7RBfem
 QPjWsj5aZgmvSvHgEqc40CjrNzZmCYtP/qDtlp7uAotTk1yjS8ttIV5ykeafssG9iuUBUcCsTpG
 fu/pMuRrn7iFo/QZJ8RClz4up1PCfZ4fexXtQsLDU+awDlF81DoyYqHQPZgJL13eu3hEgsrrOK0
 iQN7Z1jjseQWm6oKx6w==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA1OCBTYWx0ZWRfXzxV5Xwds4o3N
 beMMmC+WHC5RDCzYgpjKh4OXGFENScTaEcn+vUUCiQkBMUkccHn1eAQHvGmo0G2SdTA1DBjX5WJ
 GHk1DfOC68PpRSL5K/IpyYj9CDNt5io=
X-Proofpoint-GUID: gSj3IQ8dNyeltUxS4thKpzufDc57bgKB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_04,2026-11-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_063922_047595_62DBAE43 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/2/26 9:15 AM, Prashanth K wrote:
> 
> 
> On 10/30/2026 6:54 PM, Konrad Dybcio wrote:
>> On 10/29/26 7:11 AM, Prashanth K wrote:
>>>
>>>
>>> On 10/23/2026 3:53 PM, Konrad Dybcio wrote:
>>>> On 10/22/26 12:43 PM, Prashanth K wrote:
>>>>> Currently when we perform system suspend, the phy clocks aren't
>>>>> turned off leading to power leakage. Prevent this by adding PM
>>>>> suspend/resume callbacks for the qmp-combo-phy which toggles
>>>>> clocks on/off correspondingly.
>>>>>
>>>>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>>>>> ---
>>>>
>>>> Well this still leaves pm_runtime_forbid() in the probe function..
>>>>
>>>
>>> Not sure about the history behind this, I assume its for controlling RT
>>> behavior from user-space.
>>
>> Long story short it was an opt-in because it was broken.. can't recall
>> if the issues were on the dwc3-qcom(-legacy) side or somewhere in the
>> PHY code itself.
>>
>> Konrad
> 
> ok, I'm not sure if we should modify it in this patch, I'll enable the
> RT PM operations and check its behavior. But this patch is intended to
> enable the system suspend/resume ops for qmp phy.

> While at it, you had suggested to add mutex guard on RT operations,
> I think we can add that also as a separate series since it needs
> addition of mutex on qmp-usb driver.

Please assess whether it's necessary. If it is, it's a prerequisite for
the other patch. If it isn't, there aren't any blockers.

It definitely is in the combo PHY case as Sashiko points out

https://sashiko.dev/#/patchset/20261022104321.306679-1-prashanth.k%40oss.qualcomm.com

You can also use:

SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)

instead of adding custom runPM-as-sysPM wrappers

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
