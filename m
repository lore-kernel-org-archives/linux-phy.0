Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9E6606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 13:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lXJnZNV9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cIeyKeLP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=PR9QQtVS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ehPBCTAFISFBIHU/bqxvSw3qQ9kGhE+AjQST+xSrQXw=; b=lXJnZNV9XeLcg8LeQKTIpUSzPH
	c469Hrvj4M5eXP6gosCb/nHQYcDv82HJfySsJXEoHnKf+TjtyyCTAZSS0UTGauU/xkbbAbU11O93a
	+zC11ASBfOf/ynZL5LlH3pzQvlRx/VURtN+ptVRQJGsnx4neuPP7VsemllJl6vURRcrosHfkJpe7b
	1V4ag58Z0ydvnZEPkzYWdLoSo2aqJ2d9v2wsM18m7NkFU6WJtUaSfPtTQqfPU0ibjKyzQbeAqVCuy
	RIzOLBrl2RQnVIzrwCmxx9jGyPC1eDdpE8+xXlU+nBJhOpmJD2WL1qFXQP7blssSAptlWPAUi9/Hx
	10YfZmVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMmb8-0000000Bkcx-2Ygj;
	Fri, 30 Oct 2026 13:24:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMmb5-0000000BkcY-2LWb
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 13:24:44 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UD55cD3025698
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 13:24:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ythtGg0yG3+EAqvIqVWKcfK+BPgVlTfwj66J1QFf+cY=; b=cIeyKeLPhNEgstoP
	wPPRXFTKXYqqc0/UJUjoWSR3xQH0JER2i1Bn7R1eFj6lvctaNFU++mbkp+CTSNIJ
	oehmfXmG3weqfEKvrXsnSC/D7Lc8KjH9XVWsuWcRHP/zB+OQXpGsUO7TxDtNvIFj
	Ya4ObHq7Q51EOd3q0MNoiVTsPuJw3RhzrM9o6TktsisYk0h5n2Uy+7Ugx8e7g+CN
	IaMbJ31gY2lNJAh9FPxCluD+JH9nb6Tom0qsHJwxZzVQYIWIJi4I5EfuXe9g5Flh
	q3Qu2W0cY2ZMJmDZbIu33I3u5+2x4cz5Y9n9pYG9JlUp8EBzczTbZnYNANdCUzch
	LkPE7g==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qk6rb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 13:24:41 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5eaabe26601so48570e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 06:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793366680; x=1793971480; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ythtGg0yG3+EAqvIqVWKcfK+BPgVlTfwj66J1QFf+cY=;
        b=PR9QQtVSAm3a9pgoQStlPGeoNhLoIaKiHObTXjAONDfBTenewHa3D6Ai7bgO1UCrhZ
         oT4MbNgyBb3Qi1QlZ6kHGCgjeXSQR+e9YAjp4ZxzVTAATEi55N4NsA5tCPy74hXyrilk
         Z63VRz88kr/xgF276kovwvxVuFweF529woTAUZAUtlN9ED7yxkTyVUlyQ2UPdD4VrvzB
         BKx4XfejRZGjpynEzxTlvi4zo5qy1Nurg7WFtL7I++5bXufMHYDC9GdNGh8Gu0wJwUrp
         LmfPGRBaoAcm2JXXGkOsUAgoc+45DoYEtNghd5w+Be/pXkSrtIXfQ/eQwLovLJoIsy9l
         cMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793366680; x=1793971480;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ythtGg0yG3+EAqvIqVWKcfK+BPgVlTfwj66J1QFf+cY=;
        b=ePP3iLijIgMOydY9erLHT9MBr5qiuxSVs2H0o8o7QKh1sHsUvhetNLvSlB4M+ulbMe
         kSAMEcjK7F7w6Pm1bRbZ6qNfMEfYSAswuwDXfNBgZlAWT5hG7QO6jO2Qk40CNWWGtebg
         EejNrjV5LsjEQExCQBFoOl6NUgvjyxYhRdkccONRmb8FCaKfeQE9yobI2wrcCzrcJVEu
         mVgpgM/iVoEDOmHD4wXPHJTzFT7r1tgjJWNbYvkf259sqQ9TU25BBe+tepJlsm4LIPWl
         8LYeEKdjMhwOZPetAA4cg6MSHK3lkTMMsICIZRCGLYSTGSXukvRjRL2iwWqEKKcl4hbN
         1qcg==
X-Forwarded-Encrypted: i=1; AKwUvBxMNbrDQdpgA8MM6pbvNLdfsO+BgHULQwen5nJ9+dNtyfrqBcCvloaABttfqk2/Mu28tqUvGOUr1Tc=@lists.infradead.org
X-Gm-Message-State: AFq9FYLtRTnz4nZlUHe9G/d8IC1q2BKgngBmhMGGjBgBX18yvb9zc9Iu
	DgHRB/d5auYjVCUigmXN2H7mfrC8t7gtDrGDb6ev5OD4W0OXPgmpjosWkRvX8YNejlzzpj2Gyau
	AbFlBGeCjovXYSZaHgbn288JzLkfg2LgC8mTBWp8LVOzfd3cMiszYspMzJ0sHkoRBgXOx
X-Gm-Gg: AYBFou3D3vNC/GiwjtDretalqKzu6O67zKTl3Z7B0GfxaaN5x0ErLtM96C8zRFOl9vB
	T26c1VRKgq0/L3T7mzPfsBxUAXi2CMvg86XtzodRYNipbYHDREvDZE72qg8jb4yzQJ/N3DCBfEz
	20S3OC9UIx2w9aKY2AcrabxGbsAjLlGej5AjpSzX2kOZ7G3oOuStQPQ2CGSPu6S6Pa7nhYE4Ids
	CFWmCOpKcs8ddMmqL//yxCZDScMrPd4zyXEsFa2PYVK+lUe1lzdLh2lMzyyyWT3CbqX9C0HZJoT
	7k7AD68JgfJuLhf34ZfLCd3J1SPDx81OYpKL63zS8MWYDiEoTqby3bWBkVOoLTGJly6vZBqoXe5
	fwBC7a2mKlIpHf0ZDpmka7AGXX3oADDsiQZrDkhEzyPNpzBUUjXAy7HvhFm3lm+G7MosjJrLp
X-Received: by 2002:a05:6122:8487:b0:5ce:bde0:9b53 with SMTP id 71dfb90a1353d-5ec6881cab8mr998194e0c.3.1793366680590;
        Fri, 30 Oct 2026 06:24:40 -0700 (PDT)
X-Received: by 2002:a05:6122:8487:b0:5ce:bde0:9b53 with SMTP id 71dfb90a1353d-5ec6881cab8mr998149e0c.3.1793366680110;
        Fri, 30 Oct 2026 06:24:40 -0700 (PDT)
Received: from [192.168.226.248] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4cabf0d1aasm62841066b.79.2026.10.30.06.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 06:24:39 -0700 (PDT)
Message-ID: <a05ddb1a-a84b-4db0-9806-918958f3a962@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 14:24:37 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
To: Prashanth K <prashanth.k@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
 <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
 <de3e5baf-dab5-417b-a9ed-225cbc56ce1a@oss.qualcomm.com>
 <a8104e92-990c-4e1a-aa4a-c97b9a801935@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a8104e92-990c-4e1a-aa4a-c97b9a801935@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KsrYSmWN c=1 sm=1 tr=0 ts=6ae49a99 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=2hzCyEILiIFHTW-stH4A:9 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: 5Pma_lA6rgJzphoQ4W2cfFPb4gj_Z7bs
X-Proofpoint-GUID: 5Pma_lA6rgJzphoQ4W2cfFPb4gj_Z7bs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1MyBTYWx0ZWRfX8Gfkq2Ddt8Wn
 nDF9kur0jvc0DBFdT20rTKTjxbxmQHdjb763CIAflYj754Zd0oW351cCbRlTO8/C2DdeoebHLYQ
 48KWD882NnOxdyr8aqgsoMGCv4FM/6CtXF2mgnYwNsIaCfBIjy9rps9yX/yN1RLWvScM+ikqmAI
 073mV9VDzjF5q9atW68PKl2j/nGN/idK93x72FaHsZtM7TzBJ2qmfAOulqIA6t7mMm9dO0lqjpg
 VWECrOdoYS0k4QaCvt9XmgXQh/YCYA67vsJIvxlm0N7sin0uoU0TFeQWMAMqmtQVGVGaLP7UngQ
 lsrQTs8TQnBB5UqjPd26jj+JL6GN6sn9Ggxp+YYyJyi5nXeyyZ8Ja41c0DHQU7sHNVnoPP58+L1
 cocpeMRNXevWYhDtLWxn2RbwTQfRnr2tb+DGoZaCsEVZUZ54h0CvQbrq+QINY38PVvdlki70nvI
 U5FIpByIQGsQotJD6BQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1MyBTYWx0ZWRfX5Hg8BTfI5VW7
 FMuLhVPqny1t8T+psPBJ8LfAeoinsNPO7G1ZTW+xJ5WDaGj7sBGmrxCQ/RkpDlD7CTeWjxqueoG
 EcousSJrPqkabI4ixXqgbYiIOQrK7HU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_062443_745409_86AA00AD 
X-CRM114-Status: GOOD (  10.88  )
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

On 10/29/26 7:11 AM, Prashanth K wrote:
> 
> 
> On 10/23/2026 3:53 PM, Konrad Dybcio wrote:
>> On 10/22/26 12:43 PM, Prashanth K wrote:
>>> Currently when we perform system suspend, the phy clocks aren't
>>> turned off leading to power leakage. Prevent this by adding PM
>>> suspend/resume callbacks for the qmp-combo-phy which toggles
>>> clocks on/off correspondingly.
>>>
>>> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
>>> ---
>>
>> Well this still leaves pm_runtime_forbid() in the probe function..
>>
> 
> Not sure about the history behind this, I assume its for controlling RT
> behavior from user-space.

Long story short it was an opt-in because it was broken.. can't recall
if the issues were on the dwc3-qcom(-legacy) side or somewhere in the
PHY code itself.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
