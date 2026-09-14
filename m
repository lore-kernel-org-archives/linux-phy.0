Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E122C88E6A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 09:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YyNW4fBEGei/EAtjOThG3CPVFRcV0/fCUF0hOEfUR8=; b=4s6i+HYaume3Sf
	l9q9vK1qYhINGoeNcvjccH/P0le8BekqYrR2/M0aVEJ6/gcmbyNxMebgK5sCZ0Wrghth103Gzc7Hj
	oK1ajnopljCT7bnDsSn2YHefUp47xIDTIKj4Xvd6FQ76Pf8/5OpzX+smUyNFUQeCffAZY7VUqFBGe
	PUXnxSjzP6OO5qDJ9ngc3upZzSE8LUiXwwytbNxO02eIp4NeSj5yd0QDalWzLOba4pTmPhhJCmJrQ
	hN7oQ8FoTA/ooljlZgQDhnajPTXXts9MUG5NUvEGamOpt71le7KsiEQ0SfeJc+YWfVBvNbLIt6uob
	tLBuOQxFxu7cu5MFOWxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62lu-00000002svo-2MmR;
	Mon, 14 Sep 2026 09:14:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62lq-00000002suD-1L3J
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 09:14:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E80C8T3490686
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 09:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	apiWvG/cVrKbyxPjcX7GS2bKLCGReZfKKJQBHctENrg=; b=M19LdAgePLsZdUaK
	opzsXgh4h+5ZMcsGZ7O4Bt4OVn3Ka4VZpUPBxdarzu35WQ+fp0aNzNPNOqs4ljwe
	vulXr9ttHkE8R6eDV6XqqVMqPnI7xnX03dX6wm7fVg+GmrgcBsVyy0DLsSLSZkT9
	/2mB3AnxuBh5psVifZHwnZXfEm17wSd2sGLmMCZziuxq9X8iDDwFtbuypi82oPHh
	i0A3VHjNuhev/PrDd3xvmd38ZbpxhEw95EFauqiPy5yau+kcvbf6k7LeZqbMNZrU
	OM+ER/NouQW19n93wQIGFprUNEENpZ3J7HBttUb5GF0MycyH0pO+Sf1iFiMTSc+o
	o78QzQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpd1f0868-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 09:14:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9349ba88188so50502485a.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 02:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789377276; x=1789982076; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=apiWvG/cVrKbyxPjcX7GS2bKLCGReZfKKJQBHctENrg=;
        b=UFEYd1ucb6cextsaIX1J7BTCBP+44O48ovVBBrAmP1xYQ4fXEZmSwl9sOUFDGgMS2F
         4Q/efzYWeZAKHmmbWnsWA2vY1AFeu8Mu1zUsG9TmvPdRms0y8EFZryFBTpYl0OhM0mzX
         wXSNgLeRyb03X5cuzMGgUGd5/qGSpe4l84FUJZ8lEhjMXxLr+f1eO8U6jnOn2Zo6D8tP
         1qmVrylJ/h9gNjSVyz9XCfUj2/69cnLT3ENza6i16/gSZ6OUBvW3bFAYvbinrYzz32LD
         4s/7bxh37ilo+ZNVT40KcmWXQARdxtNWg0Evbm3RvFJndjijOhqCyccJObmxBosqeVHg
         MQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789377276; x=1789982076;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=apiWvG/cVrKbyxPjcX7GS2bKLCGReZfKKJQBHctENrg=;
        b=KYG5s67lgfUwOYoenMFihTnThKbwb1T+QIyJEElVJXod5bkKlASFQVwl2RlVJeYUOs
         Ha66RHrDhDlqTEBPIWULMMQA1iMkt/kNAedtfYU+odoYEzxAS3nkrAjSpo3G5fk0OxD2
         RexFYd7qymNinQQLy0k0T4/2Alt+1e2oW3018pw2QLWYp3BfNenx1ddwEEdQ1GRNUCyv
         sX/9ITO2JhDfoQ1OSflFlKKkPVSqMaCv5TReb6+toRGbtnTxsu6ei9K3LZYW5friMKNY
         ip/H2lg0QF+Jj44vZzMAqI2l7cLfeYVOmxvuSrYLc+qPR/0BS0ylpbxKOmBw1IEq/l8f
         PZvA==
X-Forwarded-Encrypted: i=1; AKwUvBymip2MEsDhvNeFxHc/apTMgjvb2il3ztY0IcCGDTmy7Oc2FtBf74fVPpOBt6zqLdUuTjG+21OC5cc=@lists.infradead.org
X-Gm-Message-State: AFuF++lCKzrk1TPMIRaIBMxWhVUAmUOIiuerDor672Knq7APdUMe9xTp
	VjWeoewy/MkU08cL0mhOlY1kggQQju58K8UTQ6+RxPG/bjYCQGX4ElDc3FhCOUIJJHNsaF1M2rk
	ILd8dvUSRj6RZx+8J2s2Iv4tWruU5AWpkyu3MWcsUY19G2hw8UF09KTcZinM+BC9HFp8/
X-Gm-Gg: AYBFou2ry0cPZZljxa0aY7rsSbZYwZNhsbY7+LUz543k6jwB8JfKNTP9nHlsWtidtc8
	YgPqm1Xg4H9eJhKTzvzRX8GGcq7g1naqr4CzxgBFUM2daHY30Cm5Vgbw9QdChrP0Pxun/JjMXhK
	bMjYljvsREETuIhIarE09FOpnHhdS1eICrhjHsrtMzeksO3/k280vZ8OF1s34SoKEh57QKwxtzS
	JKURrjvTPuJt9RKqaPmPSeOaKH4IdnDTP5eTa97blxKwHKveuYcVE7tBtlmWB8Mzk9fKurQbqxc
	hhLMwS55GW/GjHb6nMB9uaHiqJJjUZPax3jv2nOuxa19rdN8ilL4obAG7DTbDk5WQWrTzf4HWe5
	/7is3Bdz16AiFrPV/3v+NXw==
X-Received: by 2002:a05:620a:8394:b0:939:eb09:4458 with SMTP id af79cd13be357-93a29bad63cmr164414385a.3.1789377276442;
        Mon, 14 Sep 2026 02:14:36 -0700 (PDT)
X-Received: by 2002:a05:620a:8394:b0:939:eb09:4458 with SMTP id af79cd13be357-93a29bad63cmr164409485a.3.1789377275991;
        Mon, 14 Sep 2026 02:14:35 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a9b5960c17sm3831428a12.27.2026.09.14.02.14.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 02:14:35 -0700 (PDT)
Message-ID: <c3bc5b6c-f929-4576-9d7a-d5fb9cc80aef@oss.qualcomm.com>
Date: Mon, 14 Sep 2026 11:14:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
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
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-4-b9fc5e2ee99a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-4-b9fc5e2ee99a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: HXUlD-AEV5KU_ZmUF53Z-GMrar8EVRhm
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDEzMSBTYWx0ZWRfX2yLXXqNuPCcP
 +pfFD7iI4mBr4+kFi06A2q5Yu35NNySwLahdcMmJwSuejoGt5KDB0DJLdvgnDTgze/ThheM+D00
 MG/fIvbXoSh5UH0EIUbF5zrJrpUV754=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDEzMSBTYWx0ZWRfXyQGu93ppsHka
 TztECp6TqZGRNzpMcVs8i6WiQRVg+p7idgmnYNz5uk2PTdlFW6XM4l4qQ/WQ8yyUrwC5dQneR9V
 430gICLYutwBeznVtmUdgTkIj6tCauB561BiGLqQ+mLOSkgLSRcz5kNzEOH1vuhhkrJZMXcE+wP
 TI5SXopSM5tCFcqX/KljVJ0EVAhHdZpZyJ+mx9l1Q/a8YX/HWG0iT9R2JSEumX8QqAai8pAJO62
 pJg999Ipm3OVJ+ZmvKLDo1MOz549gEFPZIJIj9HYlI2slQoooad82QwvGE3eBJbJgYgCv/SFgpP
 YEaod4Zr6sLw0NJnn2Kbd3S7TVsYuyHnRGkn18M+UknDAQIfUF4OjpRbNP2ysPkHMvi7HXuP7Q3
 Mou106hlV9RD5vpAgfXfU7O29L44dGjzRwDsiTA5mIoLOQp8QwekpD3dg46Yefo2TnUHMl3VcOT
 r0+IoqsPx+l+eSwRv4g==
X-Authority-Analysis: v=2.4 cv=XKel2ghE c=1 sm=1 tr=0 ts=6aa7bafd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=IZYJNoHwoc_Ow-rSWkcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: HXUlD-AEV5KU_ZmUF53Z-GMrar8EVRhm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_02,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609140131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_021439_940514_85A84F54 
X-CRM114-Status: GOOD (  14.77  )
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

On 9/11/26 6:47 PM, Pradeep P V K wrote:
> Enable UFS for glymur-qcb board.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
> index 17d8ff3aed23..b6e384024dff 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
> @@ -697,3 +697,21 @@ bluetooth {
>  		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
>  	};
>  };
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
> +	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_hc {

Please keep the label references sorted alphabetically

Konrad

> +	reset-gpios = <&tlmm 250 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l17b_e0_2p4>;
> +	vcc-max-microamp = <1200000>;
> +	vccq-supply = <&vreg_l12b_e0_1p14>;
> +	vccq-max-microamp = <1200000>;
> +
> +	status = "okay";
> +};
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
