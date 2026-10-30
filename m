Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0463060A381D
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 10:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sNbY1VTf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mwuk0mC1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=XJA4tvQA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CyuU7rEuLgE7DNpYW2y/V2wbgI6WD1RZJMrAtAVmjo0=; b=sNbY1VTfaTXQHCmaufGrlTBehF
	haIdecFCief0DllmN18QQ+Cf+Yot2BlcKcADeRQ5Ypc0v74Mp0EsOmX8KXW+qg+UhPMrPOZdguMxP
	/KYD/AispncgWXDZRVMbK//jqN3r/pdv/N4MAHCdZgBghL5n+7Gy1AiQp7kdwpBjNkLATtg1toa9X
	hD+sEEKrykA9Vx1Fj/IQ+J8dFwADtwso2HXxJbEh25Y1j0C8jb5pSZsRINw9CuAaeQmUOeLaPCl+e
	TrorlcppDenynY1TqDlOBc0eirruAqQe46k/KKiPbo25AJzp/NKG0Ygm+rLjlkMPRwHFcwxiptv1g
	gzGnVNiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkAL-0000000BRhl-3AFO;
	Fri, 30 Oct 2026 10:48:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkAJ-0000000BRgx-2fNf
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 10:48:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69U8FF7P2374381
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 10:48:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1JbE8IqyvSCxx7mA/NYNAikqwGpNh/7qxainvvYoN/M=; b=mwuk0mC1E4xSYA2w
	XB9AdDf89gDZEqSrzDDCy6FZSeTeZnknYyOg8BgCrIryBgPDDyWqIlnxwIp9vBV8
	OTwPAQDZNsU3qKCivnlC9fSuOuKzjcl5gVqqOwC5v2H9GtpZZCiI8tv7tuByN94j
	YiZRzLAkVEarR6IizCccFRi/QwTKE+jzi88N91Piwk+C9HaaauaF5qIKcd/NJTSx
	RJ1V7LFFjbdcD/Tf2ijMDoqK2o5cZOo9+x7/TTPzFeuNXUqgc3K0lY1esDOPV/Hv
	sujG4wL/PBdzM4eN35x8YXqNh0qTCqgegzmBB98tn/0sl5eNNCtLAN6Jb+OmdBpk
	4DE/bw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qjj3a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 10:48:54 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-35c5aef2a74so2624035eec.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 03:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793357333; x=1793962133; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1JbE8IqyvSCxx7mA/NYNAikqwGpNh/7qxainvvYoN/M=;
        b=XJA4tvQAF80b8IFbmY/q2oaV8jn7i9q1KQMrNyK6KiWwYZIn/d8Sd9KG15zx99//9E
         lXihHWXWEcMczdOPaAlUPh7JyqZvSui9jtAzGg3bg8C3AeGb0fSs6srB1Ld+CQIzwmrG
         tZPIiGpZTm41YmBCU/M1ORsL4rKfl0RJtmj8uMVPm5pZG1xyiTESl2e13TrRzQeJu18B
         bu6OfyaBxWy5aFNsuBciL5cf/KoPjiGQM/qXGb34tCCWYjquWyqiDACaoOg1dcvoVlIX
         fm9wX0DxZjSevSVF1JJfOmhR5HfP+GeSI5XCzrvyRpbvDUGL//qcKEgsZr2TsPzEyHnF
         bw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793357333; x=1793962133;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1JbE8IqyvSCxx7mA/NYNAikqwGpNh/7qxainvvYoN/M=;
        b=Jf0RZ6MPUT26+IfqzjXFFTWXlPlE8jhBjyb0auACS/48YKAgCO8M2ul3jRnHupRy5C
         SVq01ulhbMMeFSQf0IaBWkc/j1Pn0n8+4LUxoS0aQhgT+C54DFLvXzsR7wQTEO4MRP8D
         spg9nIz6zKlpj2IR/e+PV1QwrDvJ75yFn+FUqvcuSZ4MTEZ1tXYnvlr6p3Q9gFC59IVD
         e/YLuTFrkPcTdqJcje+AiLUP5R5h2jXwfORXZL6GQhgq3PyfXrt4YIS3v4iGEakatZA6
         XhddjLy34llxjsdbGKrLNsc8O1BWCPi7bNA6rz/dTpkiLDYVbekm30Bj7skmf1UE4iTp
         5+3Q==
X-Forwarded-Encrypted: i=1; AKwUvBy0K9cuChMYqSh16ghihsw9mB6IOAOdLmOJ4cVE9AeuwHTKCajUoADGqvgXwc8CzTaQpUA5NX2j1X8=@lists.infradead.org
X-Gm-Message-State: AFq9FYKcdmqx9Y94/oEIleGN55mQgGz4B2WklmxT1JErhbhmH8+sMuAi
	ESiLG5NFbn+K8jbbMiW2qrhHyMefczRe6uC6YB65Kv/MBw0nCpJOq27l6eFTC64dPExAczXemL1
	wFfUnN5hpFp5MgAnI+b1etTTguAoyWuppAseKcniV4lqs3y7atuhE7C6WHVNsOMxE1fO/
X-Gm-Gg: AYBFou0p2y5grFeUBfVBKPS3zptHhqrrhmTl3r23I1fg00FwlsVha17A0DKeBZv2nAs
	3aXQKmDaxBx9ZPk1BBUUzpq3aaBY0YpU+To7KgEMNHedWk0sI03Hdlhe6D2Eibf9QB5meqvcre5
	pe4Aww0Tyucgzhuo9MBy7TH73yMjs5GYezT7n5aBHtqP2RKSUcI1GJcXcFHgKhljtgGfa0W7gOl
	y2sVIl6qwLorGemLbZ9slfp2lAGt589U8yJJ2Mshk7C0HcQtLajK8qmF8N5nKiwf/VkG40DoZJZ
	5HCFod7fxHYmTEt4+n13purJVVyWhElEqJuWWq8BMID8kf+jPkQ+F3EFOk/32XECfBq87aHaYRR
	4lK4S397Ui0wsxDFTeWqzzeorvppCCclpuK2vnYN1Bh1FOd660c9NCXwqBH6hlk5fV0NSU/efEQ
	==
X-Received: by 2002:a05:7300:a8f:b0:368:4c93:544e with SMTP id 5a478bee46e88-36a422084d2mr3133296eec.1.1793357333154;
        Fri, 30 Oct 2026 03:48:53 -0700 (PDT)
X-Received: by 2002:a05:7300:a8f:b0:368:4c93:544e with SMTP id 5a478bee46e88-36a422084d2mr3133255eec.1.1793357332452;
        Fri, 30 Oct 2026 03:48:52 -0700 (PDT)
Received: from [10.218.27.35] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42a504c6sm6808900eec.21.2026.10.30.03.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 03:48:52 -0700 (PDT)
Message-ID: <dae22788-8534-4b82-ac49-c75fe3b180ce@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 16:18:48 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: update offsets table for x1e80100
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>,
        Tapas Rana <taparana@qti.qualcomm.com>
References: <20261030104404.1945160-1-tapas.rana@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20261030104404.1945160-1-tapas.rana@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KsrYSmWN c=1 sm=1 tr=0 ts=6ae47616 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=DHid641ov1PBkfMhs8sA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: yFSNxpRJJdXOh7Y1ExRMSXbtwAbiwefM
X-Proofpoint-GUID: yFSNxpRJJdXOh7Y1ExRMSXbtwAbiwefM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA0MiBTYWx0ZWRfX+BOTryZUnh3K
 kRto8AD+VBWNuXwubGjoSR0NQq2Qr8rkalcItaef5d1ztpu7ELm9IBjGN2bpUgMu/OhQ3TGkSMP
 cClZj2kQJpdKLtio6KUF5o82tMghJ8K9S0pJTcYhENXmkP/ohELZPDy+VC+avfFBqX0IN1skYmc
 UPcubODr1gvvmAVbYolWb0lFdEEwX8D/5b3LyaMzjV+RieEFnFUX/03IcdXAAT89pSD007UnuHJ
 MKqwaez1zwHqv8v6bCuHegtnrUkEIWvqsjObL3d2IvG5BNwzptHX4f+tJXzNrx6rsyp4BKHfcj6
 DkeapLv24qPf86LDGZe62zoFoR28JvaNcrv7VqcZj98is5uL2wKYIRK9H4svQk3RZ5ap3DDFfgE
 A70noVEjfrIvWUBqpAyCooKcNiBauZ+6pvb4T95XQ/RxsjrVPNfrp5c5aBBWhkHDuxeWbPLv8wq
 xdOHrXm0RXh+aGS2YGQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA0MiBTYWx0ZWRfX5rbzZLAuwGUG
 J/Tqp/T1OF+9DketASAumosgcsscZVlFC+HRCVplt5w3phampa7fYm8Td2amuCe0s7vkcl1vM8D
 EBUBQFwfv1hFoKQNCY/TdR0xzQQv1ek=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_034855_811416_75FB410A 
X-CRM114-Status: GOOD (  18.10  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 30-10-2026 16:13, Tapas Rana wrote:
> x1e80100_usb3dpphy_cfg uses qmp_v6_n4_usb3phy_regs_layout, which
> places QPHY_PCS_CLAMP_ENABLE in the PCS_AON register space. However,
> it uses qmp_combo_offsets_v5 currently, which does not define the
> usb3_pcs_aon region. As a result, qmp->pcs_aon is not mapped and
> autonomous mode falls back to pcs_misc for clamp control.
> 
> Add a dedicated USB3+DP V6 offsets table with usb3_pcs_aon included
> and use it for x1e80100_usb3dpphy_cfg so clamp control is performed
> through the correct PCS_AON register space.
> 
> Signed-off-by: Tapas Rana <taparana@qti.qualcomm.com>

Sorry for the spam, I used wrong email on my SOB tag, will resend the patch.
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 ++++++++++++++++-
>   1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 187f0cd11f6c..aa9dc9716574 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2762,6 +2762,21 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v10 = {
>   	.dp_dp_phy	= 0x3c00,
>   };
>   
> +static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v6 = {
> +	.com		= 0x0000,
> +	.txa		= 0x0400,
> +	.rxa		= 0x0600,
> +	.txb		= 0x0a00,
> +	.rxb		= 0x0c00,
> +	.usb3_serdes	= 0x1000,
> +	.usb3_pcs_misc	= 0x1200,
> +	.usb3_pcs	= 0x1400,
> +	.usb3_pcs_aon	= 0x0100,
> +	.usb3_pcs_usb	= 0x1700,
> +	.dp_serdes	= 0x2000,
> +	.dp_dp_phy	= 0x2200,
> +};
> +
>   static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v8 = {
>   	.com		= 0x0000,
>   	.usb3_pcs_aon	= 0x0100,
> @@ -3003,7 +3018,7 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
> -	.offsets		= &qmp_combo_offsets_v5,
> +	.offsets		= &qmp_combo_usb43dp_offsets_v6,
>   
>   	.serdes_tbl		= x1e80100_usb43dp_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_serdes_tbl),


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
