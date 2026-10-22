Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4D2606A31E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 15:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BWeskPXC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=dRAM0fzz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=YW3bDtHT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=duyQMyG/CoX3IXMSiAtWl44Ci/A9fqHFlHiPZ60pWxM=; b=BWeskPXCJRfodlkUYMFQ7DncJD
	6lfdHfjSDDtZLVvkQpmofFsGRa18eHnAUE5sMAh7D6whMT0OsYieDYscNryD8/47e3bLcvTefLaNk
	5QHMRg5nQmvUuTLvcyOwMMl3Sn32HOqxVrFeAgp2p3G8CfDPk48KGwDl4zW1HdHjCVCdW8hWVEk9S
	Pz8M9tltW/nIWD+ehzgVrp4lMaLI2tifSPlKwqr+Dy8NUC+pABjTMeoAkjbN3+8rxh2uxhUmyJyc0
	U9TioRw1sO0TYR2TuCeJvHwGVhIdcm6p7NfuvlauDxzZ98UMpCqDCDYem8H9lZrqKjzWtWdv+ijbi
	I5IHFxKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJv6n-0000000ERrE-2mRd;
	Thu, 22 Oct 2026 15:53:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJv6k-0000000ERql-2EKz
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 15:53:35 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MEFCro978746
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 15:53:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YnrR2nv+E++a1n7gcEZCRuy8BYssAp+zlEpZEr5SoWQ=; b=dRAM0fzziD+TMvKh
	PJUzQUWyv0qh0oUF62rO6FLa5NtPq8Mo+5cUp6Fecga9ufUdz3f2DuzSTxd+WJQd
	+dcn1H4zNUJZPuCbkU3aKF7JRLVOPghoFrAYMYe5PB/4COfnDIbiWSV+4+XGJXsA
	2+M9Th7ezgJa/Qe5e6/8fjeLK6BiULQt1E+7zjWoDWeTS+EwgvsMEEgtVKPR2HFc
	7dTUfKIUZQDgk2VAvEqZCzV0u71N47xCzFgbBoIZkiYAFtMBkXkSpfKr+r1FUK7z
	oPL0zzb7mhSqpAH6K/oscXLGeF29mzcAv63pPxeVfYjBFLrUfGpEXyltrdWTjBTf
	eAnMDg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93dc9sn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 15:53:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-934a8cd3a8bso27647285a.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 08:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792684413; x=1793289213; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YnrR2nv+E++a1n7gcEZCRuy8BYssAp+zlEpZEr5SoWQ=;
        b=YW3bDtHTR5HOl/v93bbSneK66rjZALIq8xMAVhi9ZfwvldtaDVSCPzyc8rYSeO46nR
         p66AsF2UO+HncOMXsFa5kvKVnWBdz98/Ts4mpVHGKGbASk+xu0AshBDMGhKvREb9396m
         DVZ1fqDT+20AlBeKG1NS7wISk6Hcb97Bzx/Jyc2O9ksDqINYBR8HA2AGZrEJqDXNZ3ix
         qOnoxs8uMlU9lhGgkApdPSINKrNOWjAmn0nsQ7bWSkSwBfe9hDbBiTmQ9cO4dNEzlCe/
         xhpqXL/9PstqA55tKVceDKowSv+GQgeoPbfdwWCB1+wAwzWfvFY+qTRmTj4X3hfmYdO7
         D30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792684413; x=1793289213;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YnrR2nv+E++a1n7gcEZCRuy8BYssAp+zlEpZEr5SoWQ=;
        b=bbiBoQU21QXg8Yv63QnUqNIjYGK3l0uS79nivbFTxacDdzxavQ6S6O0UCZ83MBRrcW
         vKA5dFAZs65Dwk1s+wkAFNEtLnV34ClrpAfzhLewO815lgpjkBYuNUhOJcdlenpY75I8
         X02FCnCBdDPcMjcwleWflXPbvINsjjnmJOVg2pWW0aOAs6zIpLDXKAOpiwqUfAetk5H9
         zv9FIpbavnOltZV1DEXrHX1hm/l0eoxg6NFrRgXuj/982w2x/kXe1bWbIiuCCzXDXDDE
         X3ASfwjp8yYLPsHcUN+OgAqL5SoU3mgLaLrZzoxjgeXh91uaXHS5LoYOh6yPo7GF1873
         vahw==
X-Forwarded-Encrypted: i=1; AKwUvBye7nKnwd6sUOpt1cyTM/Ar0Cl/ML2Jha+xfnmrMZrZ7qeYkbqGKdoC7uwo8bfdt54cMi5SyYzknJU=@lists.infradead.org
X-Gm-Message-State: AFq9FYJdbz/ja0Ayfea+iJOo7Dg3uKNpAX6q6XA+EVKgUBNSCkX4qx4z
	Xsa4Tb+dOKTp7mqOSvpzU/35Qdfb86rpFIZoY17UjFip8bEkUjI6zJX7dmbGUaQKPdK2bXJeScA
	sJ6VIr34dXTISq+YcqHiEdw5qr7UZ2BskqM72W7WRkAU7suZgiAMpEIC/1/i6mGee8AuZ
X-Gm-Gg: AYBFou0TTfPaFwGU06Tf5LofTnFz6y8jQRKXX8sB0XvfIJDx2haqH4KVdwYicMdUIv2
	/ldfWpE71gBOVSARVJYLD4rZGo1S47xZUA7PtTCpMOSnq3d8svanuPmRKPs/AhzhdRjdZWESh9P
	Y/MG5DAR/wID46lie9npedAPaGLk2vCs8K7Z1EvcIZWVvAKJRcFjwY4jueAaduvvmRPIpPFPFod
	9h/aVfUhULD8SDzgq0EvFIuWVvmxoNarRcaHK1hqC1+NiQgLnxwZH8PIpXavOQVR9KugMY+zp7/
	p3PSMtcRU7QYiVrMhbQUXLhuzV/CALEGJGTf2gmqZrqei/w0QJTq37FGZ61WMc0Bcbo9+x7f2Kv
	1jHIDn2N2hRSRvS5UYUU4zg==
X-Received: by 2002:a05:620a:172b:b0:939:8bc:8826 with SMTP id af79cd13be357-93f57e897a9mr1170113585a.2.1792684412563;
        Thu, 22 Oct 2026 08:53:32 -0700 (PDT)
X-Received: by 2002:a05:620a:172b:b0:939:8bc:8826 with SMTP id af79cd13be357-93f57e897a9mr1170109185a.2.1792684412062;
        Thu, 22 Oct 2026 08:53:32 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46a5ce8ca6sm1162566b.67.2026.10.22.08.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 08:53:31 -0700 (PDT)
Message-ID: <c78304c6-f553-4537-909c-de37c09e72c4@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 17:53:28 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/11] phy: qualcomm: qmp-combo: Extract common DP PHY
 init sequence
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-7-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-7-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA2MyBTYWx0ZWRfX5PaNdvPmfixf
 NxTSrzcoCzs/Gs17d1WaAscExAD9zRY3KA0NKC8kPrBJgwlA02dVKfASVahAZQUUwMa3dt2IlMp
 B0cVtdHdY9fCjrP7FBni0cosQzuRV2Y=
X-Proofpoint-ORIG-GUID: gXsnKbdmE8X4khKuw1bRpbJSmn_jHP3U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA2MyBTYWx0ZWRfX+GHYB1jWFtwM
 P37NRij7y/mlmCXJF1t6ZNOHMb/nh85cHLdwkgiC8hCLAtJdL0gEN1znOyQnjsMMMWOLjph4VXp
 cQaejic9/US9ne40O/PH5qaWsj9Ia2ebBa58/DF+pq/PhOorQ05FQwSKDirB++B8QCGshS5aNcV
 munBjOQ5Ud/iScrZP+4h3iZRFL3hz5/Y54CIv7MsNBE6lxR4CJt2Qjj+fxcu9C3ZirmVl8GMgV1
 NNYLEybm6CGuxx7rEAWSDIVfi8xGYIm62LCnsrFoh8FiyO1+5P3DGAcC3OqeJoAskOUL2zTFau/
 21xNRzoPwtFAvYTW2zXFssaMv7zEkEhZ+X4xcQKU3lOzhV8dC6ig5J1tCCdfzkSGoV42JmgtgFv
 h1kmJ2hMJ66uT4SjiPaYc8Z+WponaryR7F33c978ThGN/OtfFj57SNESdfYf/LQX6gCoKCsuIui
 /F/2h6c3WCAMy0+ZloQ==
X-Proofpoint-GUID: gXsnKbdmE8X4khKuw1bRpbJSmn_jHP3U
X-Authority-Analysis: v=2.4 cv=TIPQ2Fla c=1 sm=1 tr=0 ts=6ada317d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=G15zOZzxmr7XqyTgzFkA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_085334_607587_0EEAE18E 
X-CRM114-Status: GOOD (  16.73  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Extract the common DP PHY initialization sequence shared between
> qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy() into a new
> qmp_combo_configure_dp_phy_common() function.
> 
> The common sequence covers:
> - Validation that dp_aux_cfg2 is configured for the platform
> - Writing dp_phy_cfg1 and dp_aux_cfg2 hardware-specific register values
> - Calling configure_dp_mode() for TypeC lane orientation
> - Programming AUX_CFG1, TX lane control registers
> - Invoking configure_dp_clocks() callback
> - PHY_CFG reset/enable sequence
> - Polling COM_C_READY_STATUS and COM_CMN_STATUS for PLL lock
> 
> Refactor qmp_v456_configure_dp_phy() to call the common function,
> removing the duplicated initialization code. Update
> qmp_v8_configure_dp_phy() to call qmp_combo_configure_dp_phy_common()
> directly instead of going through qmp_v456_configure_dp_phy().
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 99 ++++++++++++++++++-------------
>  1 file changed, 59 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 5446b8333a1e..fc35da80e57f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3489,6 +3489,7 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
>  	.configure_dp_tx	= qmp_v4_configure_dp_tx,
>  	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
>  	.configure_dp_phy	= qmp_v8_configure_dp_phy,
> +

Please either put this newline in the prior patches or drop, otherwise
it's noise

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
