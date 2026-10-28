Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD14606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JmHPvDUQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pOaOO/T0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=h6YuOrcs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=38S3rXIJTBg2EM2jSjnoM3kNe335/ousvTSOE900NvY=; b=JmHPvDUQ/Fqqtu+W9ba+5xzbK7
	8+53undzaCRfWz4XcPYfHXQCA8rFC8/sFPsVRm9gTZub9RLoZby6K2iPq40U4L8j4ddUzWGWtJlQX
	zSZfpXVyNbV5slfw4yHJ0p0MLQ6CDo0kmzPuf/D9P1GiaX0hWqPbWB5PZ2X78H/LEgfyBeBULwevk
	DvYwrFMYmWKAzdm7m5B7dpw98J4opYfnabrzVuEKSRFJPVgvbHVoP+ZlgChKLLK/Y2IrInlZ6Qsf1
	yTSOLQoncA/zYsXnfFrMPyofhDRxfcQ073+jyDwvQ99f3dO9YM70ocvTXrUrPI+T4FXNBLpXkkysS
	zd5mfi3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2fg-00000006wsb-1mAD;
	Wed, 28 Oct 2026 12:22:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2fd-00000006ws5-0usY
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:22:22 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBeBvZ1606951
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:22:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	brKLgKngSq09tPGLQmAnTRQ0zrm22uVxnkQaVowBRDU=; b=pOaOO/T0HgaZH/vT
	HtYcfhXhEKw6MIkYznzm3wirdVr4E/m8kkVagoPKjErRwMLCmco+qqzAa0Pt1+MS
	EJbvELryzn+ybd+z17zdkGxwxZwlClJeY7b1l7PiwNd9uZPw+3JbB3tYL98wngp+
	4eeUNUmTBKr54z12w5Iin4i2P9vklsSm5YFK2FR/G4qE+CZEVQM3UM2r7mScKStH
	CGywrmVuZdYe6e3WQZuyzDCqbkT4RM0O644Q7pbnI+48dYKDlSjAjP9aFdjunjXv
	ZO4/LnoGCXT03fIQidg/ptIMPkNfWjAe7pFZBYB0qlRVevU65GBYr2WGuuchSggV
	Xg11vQ==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk7g7j49g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:22:19 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-9909853d264so17184241.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793190139; x=1793794939; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=brKLgKngSq09tPGLQmAnTRQ0zrm22uVxnkQaVowBRDU=;
        b=h6YuOrcs43PsbYaf+tdZTrFsmMToRukQ0y9qLKiJa0AS/Pu9GG/q+P24FFtSwO+aGS
         xmM6HeMNL8Yc3bArJjOku5tag0MLuOQYmEkXi0eVKqdad3qsAC70V8+zqNUWuHDn26Mn
         p+AfWauJguDUARaeqBjq+g/qGjBBDES0Mn4DBgepL8NsCvdyviagS2Z7l54eciJrn4An
         p2RCYl8BylCwjk7AOJcMsw8OWh/7aisaJAft3QUzYbUwrP2ZzRuyJxAwSLe4jBRhSwTl
         AqStuJpWXhbSe5KQ1Jcnh2d34XCQ53/6YNrkgnHxubTBMNTdbBQR98dkdVHkb2OmEY3Q
         uqlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793190139; x=1793794939;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=brKLgKngSq09tPGLQmAnTRQ0zrm22uVxnkQaVowBRDU=;
        b=BU5XENzGkIXMgJe3cfe1sxg+ZLpCDmb6sq+cfVDv5deVYfZOPWDT/HO6bveA3Grb3I
         3SojT5Twe4mkWFVjoVDWaJ+7jtGMi9hCsiaFZtV04by0uUSRvmK2YPz6bsiyWY1LdGMu
         ODE+DKJbpZV6NB88TMHVi1JG67Rrqcf5geXSPSGf06oag/uU6LekzgJ5MXrwXiUq0Gyr
         u/tfYk/S2oaIKOjjGIpmrOstcIXur19CEbUv8ZwX7a6bLbjXqrKS/V/41Q8wRwV5Wsx+
         zIm343QbfTcJZ29k55NMnCYICDibLqOFL4YqWFQ6VdeITq95P+zPkOYbJGt8VBtGIheC
         VZMA==
X-Forwarded-Encrypted: i=1; AKwUvBzPVgdE51IXH3Xq/aHK5vp85IM+rtGiqQ96KyLqIEnWcrFMvmELSDBrYlPkhLOjjxUqrTWoSXwT+Vo=@lists.infradead.org
X-Gm-Message-State: AFq9FYL8vdApZG/O6vLfTASEHSvlYkK8AGFK5RzKW79tJrhnsiZ/2wCC
	w5JTSzPqoCEYV45Q/92VH5KOp6NkmSkAlBHnR6Qi/tJ6ww4RR4K96RcKjRTKfee8r1V7E7Qc7q2
	IbRZmA5/GC8jyPitOma7R06kEipti9Vn6FTaA4e0fF5FmljuiUg6v8039V3DLv2NP4p7a
X-Gm-Gg: AYBFou2zmKAR7aFBYVed/+uIJBJ1KfY1OsCbILvuhneLQRgcz3Kie5tH8lVQjIrX9Sf
	dyG9tZpKt/M3CFMqpwidbqNm6eG8yyOEaprLuZNx58+njMNRa2vQI5kNPMokTy1dHokE/sppBq2
	pFp7/Qgj/g+Ym++xF7vBEe4NWygG+O1htmD1qzlv+yYmzCIIui+HfmeoirrfJ5PdQy1GEVxkCNn
	IVlA8Zg3JjhGo42Jr30dTV8mlQld7ecjs8BZADFdmgSHzcrQNP17a62uY5MtpvafAYHRm043uaA
	Bk/3XKjhYsxBKXZYE7bOvsiLCteEgBljhZx1RgjAcq42nSwwXpqK6LddxfqanaynomA08aVwJOa
	l5S+DgcM9orS3evcFZohW18xnhGQJOhABzVtEWNZV7DsWXWjFX4c0d4OoULYfQ2CU+H6UgW4=
X-Received: by 2002:a05:6102:8656:20b0:7c3:83a9:eddd with SMTP id ada2fe7eead31-7d03a2bb46fmr629440137.1.1793190139227;
        Wed, 28 Oct 2026 05:22:19 -0700 (PDT)
X-Received: by 2002:a05:6102:8656:20b0:7c3:83a9:eddd with SMTP id ada2fe7eead31-7d03a2bb46fmr629421137.1.1793190138766;
        Wed, 28 Oct 2026 05:22:18 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b4960232f0sm1285386a12.10.2026.10.28.05.22.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 05:22:17 -0700 (PDT)
Message-ID: <80fad9c9-4a90-447e-96cb-b1fb0ed98a36@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 13:22:13 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: phy: qcom: qmp-combo: Glymur USB Gen2 fails on one port (chip rev
 2.0)
To: Burke Cates <burke.cates@gmail.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <5b31ea48-7918-4f0b-b012-6915b384b922@gmail.com>
 <76e97352-3a54-40de-8ef0-eef0ca27ca73@oss.qualcomm.com>
 <830ef909-d0d9-4f4f-8b73-0fc0cb7b46eb@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <830ef909-d0d9-4f4f-8b73-0fc0cb7b46eb@gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfXwuIokk2tZz3D
 90nHGbDqIUBXTWqasVLAFR34jMhWGGt8mkXJq7VDPV3RkscuCNNdGI3b93VbbTtJwDJfTlCAS/1
 fmLNeYXLakrc4BKislPYsYHV9n4y/lE=
X-Authority-Analysis: v=2.4 cv=SoIFe/O0 c=1 sm=1 tr=0 ts=6ae1e8fb cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=hTJm5oL54bM-6IUA2lMA:9 a=QEXdDO2ut3YA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: xtWTRld_rKxmeT0FgDQGGgR9OFd_URl4
X-Proofpoint-ORIG-GUID: xtWTRld_rKxmeT0FgDQGGgR9OFd_URl4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX0/wocAjZkOWc
 /f4BPDyJdQM24MjuWSC3mC/pwoqbPcTVTaowkEh/8Bwy/t8qzE79UPQx+TqcO38FZWiiAWN9aqt
 hmQXeygOms7qLj7AAEwYtjPEp4aPHzq6v+Vt3naDPGFhpHIZ3r2lqdQoRP22tnexF5kvUJ7wKKW
 VDAv3SDvb2Kte9jCsfa+0Zb/jEgiO9LN4GR5kjGOC4AWC5KTgizdHGLZgJGFjuuT8Nhe4APRBr0
 Zkj/x9zzrk8MoJBJyVl5Ki22chchi05p5TjanAoDQ6Zm/isNh/TG6BjGRnlS6eFZi1ZJX0WY6/v
 qYH6ja1q9liBCot69IGPTfZjy7lSW66Vd6kQle9sGo6VPAgJC6QsY8g0XZDCS6hpeZVgW4C3wqd
 FUjAtykScU6qsZjJOZK/uLLF32k7DTAqGqiOKdboG5MPX9YsWfYjnNqWLheWGH2KvkjKx57hUep
 kXiVvC+ANvIoNUAYQQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_052221_377370_F3BB8315 
X-CRM114-Status: GOOD (  16.36  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/26 12:55 AM, Burke Cates wrote:
> On 27/10/2026 04:07, Konrad Dybcio wrote:
>> Please check the attached patch.
> 
> Thanks, Konrad: your patch fixes C2. With it, the RTL8159 10G NIC
> enumerates at 10000M on C2 in 8 of 8 tries (both cables, both
> orientations, present at boot and hotplugged, including a hotplug
> after a cold boot with C2 empty), with no regressions on C1 or DP.
> 
> I tested on the A16 (UX3607OA, SoC ID 662, revision 2.0, BIOS
> UX3607OA.312), on v7.3 plus out-of-tree Glymur platform/board patches.
> Your patch applied as-is, and I removed my local PHY changes so it
> alone programs the USB tables.
> 
>   - RTL8159 on C2: 10000M (SuperSpeed Plus Gen 2x1) in 8 of 8 tries,
>     with both C-C cables from my report, in both orientations, present
>     at boot and hotplugged. No -71 or resets during SuperSpeed
>     enumeration.
>   - Cold boot with C2 empty (my original failure case), then hotplug:
>     10000M in both orientations.
>   - A VIA VL822 USB 3.2 Gen2 hub on C2 (a third cable) enumerates at
>     10000M, and the NIC behind it does too.
>   - C2 stays at Gen2 across s2idle (no disconnect or reset on resume).
>   - C1 is still Gen2 in both orientations.
>   - DP alt mode on C2 still trains 4 lanes at HBR (1080p60 monitor).
>   - With the NIC present at boot on C2, iperf3 to a 10G host gave
>     about 4.6 Gbit/s each way (TX 4.58, RX 4.71; 4.55 + 4.56 Gbit/s
>     bidirectional over 60 s). The NIC's link partner is 5GbE.
> 
> Under sustained load I see about one burst of "r8152 ... Tx status
> -71" per minute, each followed by an r8152 reset of the device.
> Traffic continues and the link stays at Gen2.

Is this something you've also seen with your local changes?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
