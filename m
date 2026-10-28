Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF45606A322
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2j+dj5d4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LkHpxOTO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Bm4T6ROj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UjpWPI18ZG5QFCNTrpIp9sevpJ46Agst/p9vZMe2sJk=; b=2j+dj5d4d06KIW0c0PWdNHEnc1
	C+Wl+ZbP1u38eFBxvzH4QR6b6/axM1Sgwfg/ZXz7S3rGDhIP+CegSQBXmuaa8W17N6W+QNsRwa1uR
	JLdANP16ecUvswyiAvbC/DC/RbmpHFOKhkRh9EeOwDHa6MxUQph+OV2gVo4sjxyWluAeBlkX5qkMy
	c4tOpaQr4I50vcbrayj2uACPlgn5jIRJs1s1EcT/8Sky4OKRldHVC6eRNhQAqi0OEdU0Q4VNx12O/
	CzLfRHqwBsFob6tU2kLulGtxYJS9/VQbM//d2y/A4KD8LJa0+tzzKghIjShE5x51mL7dgSnsdvBrN
	WDMC8rqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1JF-00000006oRM-00J3;
	Wed, 28 Oct 2026 10:55:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1JC-00000006oQF-0zaX
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:55:07 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K5SD1667599
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:55:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oRSwszkW8iD3xY0tmKtYtFhq8IKTNKbbXaSkFyhF4NI=; b=LkHpxOTOYlUHfJx4
	m2pWz2moAC8FSgKdhWL8dLH9HZH063WrDP2GJVcoYj9j+G2e3MiWdtAKzZ3jANtN
	nrPq3kHzAO+v18Y8pSVPJwxR19WGifUpF6k9ODQpKeUX6qDZnWsX8wkKag3purRG
	fR0smHR7DNQJvnVx5Iz0k+jjkLABZewOxaRG6YxuDdOliubxiidVvi9gojGoAZ0F
	95OgeDRQsyv2V1gH0cnBp40QUNe9FtKosmIb4m5eZkxSa33jbYBE4RZIqw/VEVLf
	JpmqGfMJz4vYAY4NZpDk2jXHorQtKHOF5FEDD2UI3IyAazoR0dl5xBim0awNxSPu
	uMBaRg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk12pu6aj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:55:05 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3662e7a9299so3519707eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793184905; x=1793789705; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oRSwszkW8iD3xY0tmKtYtFhq8IKTNKbbXaSkFyhF4NI=;
        b=Bm4T6ROjhHdAUQwVEJWR63Mzg9rC8rPnsMd5PpAgPi9GsK/S2MwI9BO9+Z0q3b+uU0
         iDwC8ntwOwUGemGeXJaqBf3No4n0FMwb7NuekrEnzdu55TW2Vj2p4ip9BAjHRFPlVPYY
         aZviWXKV7Q45ysNQNLf4vMmjD2YqqMTNAE3gXh41DvLYOeu5HcOSKreedJAJ80nW7EzW
         iW20QVmXljDeVRnpfCzibXvcaKGUQw0NXGNUanSiSnLQjeFhQNGd224qBJoKAzb21F+j
         PUphGE1qGRBJL+O7ybQvTMiYSnT8e5aqNE5a7BNY0Jvt1B3GhVBToAultzpsXLYxwduY
         gZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793184905; x=1793789705;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oRSwszkW8iD3xY0tmKtYtFhq8IKTNKbbXaSkFyhF4NI=;
        b=bXdZvelRWBrSaYqPV+ijOIg0ZlPsHxxHVCjNfdyzOMseR9lLKlJFf18W7x4p+Vj3gv
         XTVc+/T49o+ugd1sOLWVHr2a94e1aiax8jBu/7eqK9kPepvSgvH7mjnxdJ4h+H7ZHiLN
         5CqRBaB7/vQvmolfKf2eJaq4y9d20bBwNoxVrwKTSl7pyLQNNO1Eh4eazVpawzgVh8yO
         2nETbR81teCZRZEqYpNs2IRxYm2E07df6ZZ9PYDftNLFMdcvd+OakRlSK81Q0Za9rlsG
         v4XtRGSoqRIBo6rLStPV06orMdzGZwtjEjmuVbaw/+3laktrdNqiYRJiro7/WEY+i9sA
         P6aA==
X-Forwarded-Encrypted: i=1; AKwUvBxtrGNA4dFnWw4+aBqIpfS38Ks5qAsi+t5GorHGSVOAUyUglMJVMC7HX584NGrZAxM4a5+OJ7p/9io=@lists.infradead.org
X-Gm-Message-State: AFq9FYKm+i8zhQvYswUCoOwv61W35CT+ozyeMNG+kwLyT37wQxLkoSTX
	EVhuK/3OXEdUsy3Xzu+soSmeyxb9arkwW6KSMglU3jxrRPicvC46KklsiXYwSIC3w+TC6JsgVb7
	ULlPhk20rz9MRGw/ESlcPuR04BqlqMHKSDTFU7iJdNf3VNdQOc1+yQMo/RJy3qVsnSY8/
X-Gm-Gg: AYBFou1G5q2utlFrgB8tekp8mVel8kfRXibwbEzpGnNLXAgKEk73r2f2Z7lgZ6ZxPAY
	Bkox/MwoJ/yK/sNWyg6ynqK8s1/FqZKie1JapsF6XX81KgxNDQhtCI0u8mtyWx2CmAGsfYI+dSW
	rbilaPsXoahRTbuKH2NASMQrnjy3gk0gmy2zsqouiTVpQ1wQFfaa7hDD3h77ZlNYYWVa7FBlKc8
	RE9hlwZnDbnnetGRjYuYiT/3NRA0+TNzMDdqLY9mzLTsz5bjKRcS3osx+8aLf5n0KjOdVF26uHP
	K8EVf6IWJ3W5ghlIriYiXWaYJ/Dp0/ayqav3AU5e8kuAqTbWqOnfr5aWC9dbrClDyY4z9hR1TBK
	zpfAHzMQF30l5txKyDUM+tXc0GJ8GAyDE/QAnNutA/ay/CDjNb+H83BeGzENEd2oBTA/iqAdBCC
	9dhJBqd78iHzLhhik=
X-Received: by 2002:a05:7300:f894:b0:368:4c93:544e with SMTP id 5a478bee46e88-36a202bc3f0mr3393215eec.1.1793184904741;
        Wed, 28 Oct 2026 03:55:04 -0700 (PDT)
X-Received: by 2002:a05:7300:f894:b0:368:4c93:544e with SMTP id 5a478bee46e88-36a202bc3f0mr3393162eec.1.1793184904020;
        Wed, 28 Oct 2026 03:55:04 -0700 (PDT)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a238dc80dsm6335086eec.9.2026.10.28.03.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 03:55:03 -0700 (PDT)
Message-ID: <1dad9241-45c0-4405-8d8a-2437125cf8da@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:24:54 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
 <20261009-glymur_ufs_qcb_enablement-v4-3-9a6ce83195b7@oss.qualcomm.com>
 <feb43c1a-9f1b-4181-b663-eab9e55e4831@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <feb43c1a-9f1b-4181-b663-eab9e55e4831@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: F1NkAtnn0D7_l4qE-QDhZFegwBwQ1mxR
X-Authority-Analysis: v=2.4 cv=DtDDa2/+ c=1 sm=1 tr=0 ts=6ae1d489 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=VHdet6GdWXRFFbjuATMA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MyBTYWx0ZWRfX6UJowBifYkZx
 21V3hZhbGvCIgvgS99XbQCtk0c+7k7TMEVI+su7UO3q+yAkLOdmoGzjUwJ4BF/r2q3NbHHkg9Z3
 A26jp3UBHupr2zvv4d0LQPCJqMjiShECiz7O/myX2bDNjzFWJdMK8G6UPm0za5mfuJA264yoGFO
 nVH0mu72/teG4f06npjehMAUw46lO78jNT8ho6O8Ke8+Xay+8RbF3/Gm5Ex9oCeLtLrzLnDXpxL
 Vt5Bp2OTpwgp5pIhcUG+j47Tfej/j6hP/z3/CV+8GtrVQdccx4aOl7DeUp/K3dS4e+TOb+4LGFf
 zcd21946TUvF4UWgWGewk97meUB4parbiQTuo0TJJ2g0WWgaNfY2Oiy/LAjy1rYCww4+6DL9RN8
 G3xsIJWPhxLpoxaNJ54X4zovMCh0EsW7BuJt6BwH/JR7lHn4Vn90lvz7u1bp08ENSb18UiGnzyK
 JIopXz7VTTfurh+0DIg==
X-Proofpoint-GUID: F1NkAtnn0D7_l4qE-QDhZFegwBwQ1mxR
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MyBTYWx0ZWRfX+Lr4OD0iyc+8
 uZEgHou2p1DKf9fYG3ubKbxbrC4FgwCAJwYNn7LDiwjkZ05UkwMufCeD0L15Us2te6kes1hRy/Q
 3Sx39jFSanazAZjqTB9MxB3ZFd7X/uw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1011 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_035506_287622_66C11F91 
X-CRM114-Status: GOOD (  11.06  )
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



On 10/23/2026 5:25 PM, Konrad Dybcio wrote:
> On 10/9/26 12:35 PM, Pradeep P V K wrote:
>> Add UFS PHY and UFS host controller nodes for Glymur SoC.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +				opp-201500000 {
>> +					opp-hz = /bits/ 64 <201500000>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <201500000>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>;
>> +					required-opps = <&rpmhpd_opp_svs_l1>;
>> +				};
> 
> ^ this should be svs, not svs_l1
> 
sure, i will update in my next series.> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
