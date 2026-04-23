Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E64B6F9935A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 09:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjAK1qmY+mGDPyCOirGFJgAWSGT7MnfDz43COgM7AYA=; b=PYIVNiDSQgGBNZ
	PMWFlgqyJpKdyW2LPd1aKpdb4VHRrTXPdmpgsdNQwH/byi/9hDvlmNWqMV8VfjYn3AbZSiAvjBS+z
	9WuWMDVkrHRSfBnRisIh89PswJEmdoEHAnOEHhffMd4u/GwWxKolxJmHh4poO2cYg41cmP2Qaz4gN
	9DDxtshE5tHEhmGmUSlJW2NxKsBVB2WBou8VvbCVhlCPbJADnCzPGNA8fZc7d+TRb8uhkYo4toOkj
	vlCMsJ4z4v+xXdzDvyqchzI4x8sJjVJhiYYC5PMRYBGy7k3oFseJXaxgPUyGuuDD00vpPOe0OfTIm
	8dcDEqKz+wKgYdjv9IWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFqPT-0000000BOyk-1ftC;
	Thu, 23 Apr 2026 09:31:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFqPN-0000000BOyD-26dL
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 09:31:45 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N8u2PE366240
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 09:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sZ/xeSGjBxCBJLxIsRC02trYohcTKqRfx2FsyvqufKc=; b=MI5jUi6FTwLB+v8c
	EOnmSw+1dUtpR2hX+yuxELbmgCKYWmCB7aTndj8+DakigmxspezAhAN3Cd0t5t6O
	v9tLsrqCg3lYqv3nqsGR6ZROvj4aDqg/3/A39OxcVHoFYeUw+luTXT2yRowczKns
	eJzsIyu+uDSX09F/mlUCcC3W9wtWUEZHcFWoRvnN6F0XhTrszUVBklbZpkn2tlAi
	uXFfynLv4zqYWjdVmTXuOXoVGhGvw0ppO5VtdjpK0u2cEayfdD3UMPwUvnlk6y4p
	QsgiJ1KfQZMxi1FIxcu8y6XzDq1pQWNB2sGdiAZ/x2CUU9kxpbsmNbFvYFKamUUn
	UEtlLA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq35rasf0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 09:31:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d9f1bccd7so12374511cf.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 02:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776936699; x=1777541499; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sZ/xeSGjBxCBJLxIsRC02trYohcTKqRfx2FsyvqufKc=;
        b=DBZr8tEDVD3i7+ChqNNYc9DPf9FdcqRumkZSyEuCD6NHrBhTiL3kiQUYniotN4n2fX
         PomMPvKFzpAlkGXkT5N2Qz6NFlt5xVP/D165xRmIJW+3JMCFPeY1uAiylA9i3uQfcYnk
         Kkt5pGefaFGfU+iR2EBP3PsUA7m3V8uoXYRDbL6MQSv0Ugxtpz/FQHIANOGrrJCUBZY9
         BUyKJJ0zgjbfmBZINtl5TY7PHCbo3DW7OTMGwOT9px8XFomuuGi6QGQuZXQAHw+exKQw
         qzgUcDYlYN/dLbc9ka7DgLkhgMRDuRGTph61m2Qz78C5ZnMIQGrGpcdTpZKrGeQw+QG4
         6gdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776936699; x=1777541499;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sZ/xeSGjBxCBJLxIsRC02trYohcTKqRfx2FsyvqufKc=;
        b=A/JIEeNjCG+Sl4mMDN4TZ+TyWsLAhvCr1uLBRmGKlD6qSNb3lu/TeMF1WZRizeEmqM
         fHrRj4RZV5Xx/yjaM1p3BTV6SH1u/GJOafyRhCjGEOhPgeZmf8IJjYVNBI03QqPCtete
         lQAG1PPeOmFBAP/za9lw3HF2HAqAMpXbgHcvyYBvdYLGCTxveV95t6dcqyrwp3xKaxAE
         uzqhP63uvtEmdqXi1KyZiLigMKB/SZHW4RHi2l3GNdzeEeeaTaftNjcgGYFHNgA7ZWCQ
         xyg3truh20lXBookgxYzBFdynsOwCuGO3Il5Dgcr3mQnFGJyVf1ADOr11UT9WgFM3Ffw
         BIhg==
X-Forwarded-Encrypted: i=1; AFNElJ+otw1Z7GOdFF6C8U3rP4kHdePoV6fGgsU+8+TRJtYaz5JVbhLVn14PXEjBPy4b7y6b9zjpfzk9SoA=@lists.infradead.org
X-Gm-Message-State: AOJu0YygyIpE17f4xrcYJQB9g1gOMjFYcNohxy8d+WAUELRESautawMc
	A/diqRNPnADSpTavottlENLIG9XEJ6KAkx+Ch5iimS2Cs7EzyP62PYdqoeMQsWYM1Eqr7GyBgsM
	9GWb8OzWSeHjV94AA65u8MtiZRkYq6mtgs3h4ub9wEkdeP8PMOiYF9Cln+jx5GZNVFV5+
X-Gm-Gg: AeBDies7FDGiTOtErVLROC/79ch1NaQ8Plei2shPBRFe4etP3YakFXNGoLv63GFOTLw
	tPc9U6TX700vYDutTbL8ECC5zAUSMgXG2BA/a6aq1AlQXbp1svcBWr7J/MZUdn6OguSlLds+JAF
	gYjVCY6PotPQD6N6Hc5ciQRo3nxoJEOKanob6fRPBEm0tAuIaW0t6F7jwyiNMCoMGO7jAwuPx9M
	f6brvXN4RbgTk5ctub0HFiKQOFPwo9PbuzTQFL5ncSgWhvXsGXfJleUNHDxKvwBBfXCIOTRgOiB
	WPm9do+nDgtwWr2nlP31OOf2CDBInbjHcw5HBNJHkDM670kDCyfL4T1/kfjpLtLHVe8wAkpQeXO
	kF6IZQYnjWU5xG/6NysELIuhsedHY3MGofIm0lOIROZT925ZLecOsrGBimYKoQCC3+RKJ+x0dAy
	3w95Npdp+xTIc2jw==
X-Received: by 2002:ac8:5741:0:b0:50b:5286:f757 with SMTP id d75a77b69052e-50e36c140c7mr245205161cf.4.1776936698897;
        Thu, 23 Apr 2026 02:31:38 -0700 (PDT)
X-Received: by 2002:ac8:5741:0:b0:50b:5286:f757 with SMTP id d75a77b69052e-50e36c140c7mr245204871cf.4.1776936698416;
        Thu, 23 Apr 2026 02:31:38 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-672c4d508e7sm3710498a12.20.2026.04.23.02.31.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2026 02:31:36 -0700 (PDT)
Message-ID: <43a6ac95-8f6a-460d-bbf3-f8b1d082b8d5@oss.qualcomm.com>
Date: Thu, 23 Apr 2026 11:31:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
 <dyyfmgpxzpdlrutxi7gy4fudhpwvlljiylbbcirq6tgs2zr5yt@lpkrehmzgqpq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dyyfmgpxzpdlrutxi7gy4fudhpwvlljiylbbcirq6tgs2zr5yt@lpkrehmzgqpq>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDA5MiBTYWx0ZWRfX3/GJ3U2Tk5gV
 xvabfod9Nh1r8DlS6MONG6/Tc2a/1HeK0d9KF6ZpQlVfH+qj0j0doNFTSM8I8EdSUJOaVJOjxcW
 qbMv9Kwf6roULRIRCZha9bkzZwDUOWI8WpxsDq6NuDGPH206YGj52XpPKJIH7d5J3qGV3uIxkfR
 h2GwCCBIkiPYLwes264WdIky/QQ5k0V6wNDxyO5KN4ybBJAd9ukvXsae5QhvhSq8/hfvEcmpLY3
 BEhRnDJLIcM1kPJGIPpYMq/2cvaGhHe0CkFkCCN4s8vbwmSe85b9YeIoFfTBBA4itR/QkFFAzx/
 l06FflrC2n7k9eaZxjCY/8l3cEAHzbJ4QwPf5bMPyKLb4ND4DiYAacqz3YhvkmTtak0a9rAio8N
 JofwbFAO4QIC25Jym9nfAnd2oqPlRFED3IKaLAxiP00v9MJhlu+p2+U062UgJigZenjEEPR/w20
 jBZXmZYPyFfilEAb/RQ==
X-Proofpoint-ORIG-GUID: 7TrsAaq9uZygS-vtvjobfMRcyttExZRn
X-Proofpoint-GUID: 7TrsAaq9uZygS-vtvjobfMRcyttExZRn
X-Authority-Analysis: v=2.4 cv=f5J4wuyM c=1 sm=1 tr=0 ts=69e9e6fb cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=9M6qboyCHJ9uvjCUQIkA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0
 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_023141_665241_AC536592 
X-CRM114-Status: GOOD (  11.23  )
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

On 4/22/26 6:33 PM, Dmitry Baryshkov wrote:
> On Wed, Apr 22, 2026 at 12:42:56PM +0200, Konrad Dybcio wrote:
>> On 4/22/26 8:01 AM, Yongxing Mou wrote:
>>> SC7280 and SC8180X previously shared the same cfg because they did not use
>>> swing/pre-emphasis tables. Add the corresponding tables for these
>>> platforms. Since they have different PHY sub-versions, their eDP/DP mode
>>> tables also differ, so move SC8180X to its own cfg instead of reusing the
>>> SC7280 one.
>>>
>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>> ---
>>
>>
>>
>>> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v2 = {
>>> +	.swing_hbr_rbr = &edp_swing_hbr_rbr,
>>
>> For eDP / low-Vdiff:
>>
>> I believe the RBR swing settings for 8180 should
>> instead be:
>>
>> 0x07 0x0f 0x17 0x1f (matches)
> 
> 0x07, 0x0f, 0x16, 0x1f

Yes, you're right

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
