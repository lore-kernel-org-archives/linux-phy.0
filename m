Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1704ACA6007
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 14:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xKqoCabIE3qCqi16cMZOFyPr/erEmXwj9S8pf5GGLI=; b=Or+PJ7v3dTtosC
	xF1ZqylAPl1Hqe7xmy9WSI+zvwsCZj4kl8I8y+HbY/2+E/AdXIqbJqm5ULC9xGPEDPTJcZKl0y/dm
	qRgYoKpy+59UsPmDV6HHPnfOGLRMOHGsGYDqXH9pCLSEk1CnDg12k3iKoMlStVi5O/cm0rk6Mf5Uc
	/7K+zvVJyKCnTWbNiNq1jl1q8Otq1v02iB5ibeXmQXaKFjNFViyE6eEhV1u+wXLPvDbyj1rv34uh6
	KtoElK3reNq1Q/qtD34xJZ/N8RPrq1yAw+PS/eAO2uxwl5GJaR1JYw0uu5t0iH7UfznhvPLcuzexD
	rxmVnFPgEhZ5wLUHKARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESu7-00000002e4X-1lwA;
	Wed, 07 Oct 2026 14:45:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESu0-00000002e1F-14kN
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 14:45:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 697BVEPR609967
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 14:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hwrc6Fdyj3kg7apwdRECnQhAgQVLP5Jp9gBIka1O4mk=; b=Cy3PintirSGHPd89
	K2D4o+5vHgdySYaf/qVBLcfDWzZbHPkdhfA1pn0Kbv3Gu1SedWHBO0yPQYAYylCy
	LB8f1NECds9ReR/crXT9RBMehtKGMeVHgSeOYzjFTau21Gj4ahOqkMmY+fhjV7Hm
	0/Ate2+AFpNXbijo8IkLWlLoC8XsvbACw+9zkOZ5+FEYJI2e5rRLB5Q7DNFTmGbX
	gIjfPVWLWnGyKkUPTC1XkWXCd9DQKvHQyKcfz+5eHZErivq5+8LbJHN7o0sahWjI
	Hr9OwKtW+vB7ZyVp/K3aH2IBARBdvVtAnSW7/sGQdYMWs4v66CnRPNF7qoyLqw+E
	6x+IHA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5fc59ymc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 14:45:51 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3a8af172664so686822a91.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 07:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791384351; x=1791989151; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Hwrc6Fdyj3kg7apwdRECnQhAgQVLP5Jp9gBIka1O4mk=;
        b=ZqNjOVUnPgWM2UdaDOQI0B37XXsvoPXJY0okef9CWBbRy0Lag6en+IDEnToV1le7Gi
         StMyw9BfmoysGk2yLcUBlw+Jo6tVRokItBFO4IjmvRf7rdF592sC91xvOwkqCv4eq8Mv
         caS+GcOaYPYOUaL5R64IS9pLT2qJZXTt72F77AD2ARbVq4w1fw6LMTcWCKN29S/x4VjJ
         wPmvR9X6Chmm72OVjXrdNvfbGoN5bVob2O5Ys5sHE0CI72SSs4EOeVxWwLr478aumWub
         iFrwMO7GJAr9lRQb8FyhLB6KHpV3kE8K/cfDOYSEQcbtL6Fe0V+GZqT8HTyyjUCUD4wa
         VAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791384351; x=1791989151;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Hwrc6Fdyj3kg7apwdRECnQhAgQVLP5Jp9gBIka1O4mk=;
        b=CMbq6oD7cJwWgtcD3E3mDafB3LFAIfCPp5TwKsdYZw2M45NrQaJnsmvXWodLFDp1G7
         ftmJaEi2srNaKeqSIXfT6jT6YFJoHKYHpPoS58gd6dE6mziz3WDNgkaJcLI+S7PSSYaR
         Qzfg6TV/jjSYjKcPbuVtlGKSWpbGYDM/b1Of9nAVoT1I+TvaUJaTD2MAFpb7tj1V9doY
         KRyVXgfhaNoe+lg7tmcDkZt4PUYajOq5rr7nklBm8CLw9xhhKj+8O5jGVC5cirHe0fRf
         HSKBBmFllRau0G2mjHPzxXTt90jKNePAyck2Djb6Kx+0cJEY4S0358Lh8rck548j/5yU
         pgsg==
X-Forwarded-Encrypted: i=1; AKwUvByYfAv31y5V/MzIvAU/gY2dPnyupbgYytLJNE66CNL9XSN/ZJejh/2wLZU+7YmqOrWZXHQQymqoKFc=@lists.infradead.org
X-Gm-Message-State: AFq9FYKZLoa+bJoIntMmL93Ivu0Qr5J3BAKSWHbqeQruBSSV5KdfOSIN
	dFFq5v/e7fnJ4CW6cJweL7bqmzdEZW1pKDAoxpWf3QAy0xwnZ45WFxte3Q7ypQxfPQEcnpa/qbg
	w4rO3Do+0+uCXbOwgPoEs/Liknx85OYpAkPmrDLv06+A13n3G9k35DUEAhF7a4Ph5ZrUpFic8nF
	VC
X-Gm-Gg: AYBFou1UWR5N4PAZhIaeFf//6/i8sktjNVv0fEXysQdEIm1YWOroBRALpwhcq3xfHSL
	I/0tE3zrhMFHELlWo4iTy2OiycuddY1ZQ2rV7HVmJ/JdN8/PHITf+IdQpdqN5woLn9HTd2uuCTd
	SxVL2LaW2Sff+uZih7Kqzgr1s3yyraMRn0RokCUq2Wgr8hkMmraUqKaZnYAJjwZhAN3Fo+DGt5/
	C0N2S51UpE/npSOQ8DRLAcMw3sg814O8szgMPrYSwrdV3/zzlSWdIhGhoOwa5lTCh8lUOMxtXVA
	rfPCZa/x15oAterJwMBUgLoC/9Rg3Kvqky/u3ycHGoYcdNaGTsWgUkIg6qfjVeV66mWC8viV8p0
	ChNvc/3GPxfr9q11l+1CGYATAZ0VsR22EBm8vZnTh
X-Received: by 2002:a17:90b:4f44:b0:3a9:9f13:e960 with SMTP id 98e67ed59e1d1-3a99f13ebafmr45569a91.60.1791384350781;
        Wed, 07 Oct 2026 07:45:50 -0700 (PDT)
X-Received: by 2002:a17:90b:4f44:b0:3a9:9f13:e960 with SMTP id 98e67ed59e1d1-3a99f13ebafmr45527a91.60.1791384350133;
        Wed, 07 Oct 2026 07:45:50 -0700 (PDT)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8987b09e2sm5347940a91.2.2026.10.07.07.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 07:45:47 -0700 (PDT)
Message-ID: <7e8ea792-2336-4252-beed-7345815b0b90@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 20:15:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] phy: qcom-qmp-ufs: Add Glymur support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-5-84cf4f861415@oss.qualcomm.com>
 <zovl7lrhlleflaewk32o4wofr4bzm2bmkdnakev47peijrnkfe@p3ixrxltdpcm>
 <f9c7bd4a-2e97-43e1-a9bf-295b841ef0a3@oss.qualcomm.com>
 <p76qp5bhijenec2ygj36dd47uxkeyk6kztccbuhblte5lqn22x@yikvkbipjbae>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <p76qp5bhijenec2ygj36dd47uxkeyk6kztccbuhblte5lqn22x@yikvkbipjbae>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA1OCBTYWx0ZWRfXxB4Ae/X/bmNQ
 90h0MVRWYHkDhibJT3d4cc758bqcvIX6nkm0105hq5DeN5CWxPpYy9HVVTmMIGAFUmKoLRkuvzO
 ImhTqmRUjn7c7rvZKbb+5uzxmCe5IRs=
X-Proofpoint-GUID: 4BGwpBzz322vRhSWwleFGoUE3h_aQbCF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA1OCBTYWx0ZWRfX60hcEhyNKVN/
 WfKZ3xpu9jQThlrYC+m4J7J+leFtZtfn+yvjZB4OBNcDlJGmwsoJ+da3Qd/EwNjKMycal1OFggF
 RfQdNd5NGbiIeA+f5qreOHdcrBJGZ2XtCSh3YgBWXSXfnsHOTzMUVeCFn9YHfSMMa4MJ9ot8ATX
 AChzmUOJtig4QFZnENI0EM5a53Q+HM2M9I2Syu0eb71iM8igUUrUXO8Rf04DbuFiPyq4xt0Ntan
 dMx7kyvoCnykiIYi5c/WlH5GW5EAo8pLRb5GajMU1Y8JgssysuGs2v+KsFnKIYaCekc5rvgP8y8
 AifsQQww//8u9u8Dsv955e0IE0KfbrM5D5tCgRqO8PB5WjdnNr/5EBYtAMBuAqGv3YVK5S7LG6T
 m/+dqY2SbO0rxQdGgaPIxLT74HTdTMixD5aXvfv8/FCcadQnB2RHxvh7yKVchGTeWXaU6zFwDHq
 zMtv4QqgZUoyhMaZQnw==
X-Proofpoint-ORIG-GUID: 4BGwpBzz322vRhSWwleFGoUE3h_aQbCF
X-Authority-Analysis: v=2.4 cv=a6+lZkSF c=1 sm=1 tr=0 ts=6ac65b1f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=arnyFyO8AZpeLAH_8-UA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_04,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_074552_788086_604ECE68 
X-CRM114-Status: GOOD (  15.98  )
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



On 10/7/2026 7:13 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 07, 2026 at 05:03:02PM +0530, Pradeep Pragallapati wrote:
>>
>>
>> On 10/7/2026 1:18 PM, Dmitry Baryshkov wrote:
>>> On Wed, Oct 07, 2026 at 11:59:38AM +0530, Pradeep P V K wrote:
>>>> Add the init sequence tables and config for the UFS QMP phy found in
>>>> the Glymur SoC.
>>>>
>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
>>>>  1 file changed, 99 insertions(+)
>>>>
>>>> +	.offsets		= &qmp_ufs_offsets_v6,
>>>
>>> So, is it a PHY using v6 offsets, but v7 registers inside?
>>>
>> The QSERDES RX0 register offsets on Glymur SoC are aligned with the v7 register layout offsets.
>> Therefore, the v7 QSERDES RX0 register offsets are used for Glymur (similar to SM8750).
> 
> Mention in the commit message, please.
sure, i will mention it.> 
>>
>>>> +	.max_supported_gear	= UFS_HS_G5,
>>>> +
>>>> +	.vreg_list		= glymur_ufsphy_vreg_l,
>>>> +	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
>>>> +	.regs			= ufsphy_v6_regs_layout,
>>>
>>> v7
> 
> This still holds.
>
Do you mean changing ufsphy_v6_regs_layout to ufsphy_v7_regs_layout?
If so, no. ufsphy_v6_regs_layout contains the PCS register offsets, and the 
PCS register offsets on Glymur are aligned with ufsphy_v6_regs_layout, similar to SM8750.
 
>>>
>>>> +};
>>>> +
>>>>  static const struct qmp_phy_cfg milos_ufsphy_cfg = {
>>>>  	.lanes			= 2,
>>>>  
>>>
>>
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
