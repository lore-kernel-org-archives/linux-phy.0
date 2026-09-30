Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9567CA5FC7
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 14:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQDilu2fW0jRKvcizatxwL8UilWptnnINmKyp2m81k4=; b=snkzQnPdKaLg4Y
	rJ8cDQR7ARck/5X7lR8oFrYbtSvW0c7ZDZJ+YOgeFeuPomXpauoPE2QTGVGSpcHLrmOX6/14CMvaW
	VgZJaOTA8ncCy7idHUtij5bUWPOBBrccn+EVo3PMUXFqxxJ9riZAoFgQqJCx8At+bDtdq62EQF0RR
	wf6PSf4zvWir3FaPgWFJWo7YVBdyV0CevE12Ex/clrPpRCXOD2ted0L3wih56QfdzDdKJvA2Sla5J
	4x2RE2iyipirps+O0mgZ8mWfwRv8RqdoB1YVWE1D/3ZKAjmW2vmJp5ZRryxBufooXEoyLM4T/YsiE
	ODXNxPIBTJJyzYATjZkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBv31-00000006G8b-1a71;
	Wed, 30 Sep 2026 14:12:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBv2r-00000006G5M-3sAK
	for linux-phy@bombadil.infradead.org;
	Wed, 30 Sep 2026 14:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GmTEgmvcedeaRztRcqF8ocCncIDFUGQAfG0sHwoFEVA=; b=cXfNnIBpDouKidxSUv58KGKvg2
	9la9fATZ4PYhLYfhQ7RsRgnsFvNf1vQkvUvgC56wmGT1EBAGQGj35ksYH8eGuDZqDxa4BvJkxj79A
	2udKOBimA8YqGhiAwITdhA3E+3lSKAHQZT+HgmM4go4nqnNz0SDejgC6QgngT3v7TDq6zU8w1oSwo
	jQ+bu43CLds/+c1mcHGXiRfTAOrsUEiGA1xBjL+UtJWQejSgq4oCiJDpZaRdBE1bw2EJjlur2zyuH
	s7US0Qs10VYtJPKZB1nk4Fp4nPgmt7qGNmQQ7cyddu5ypZn+kKJQkkh2qrftcJTuCY3qYGngRBQ7B
	e6I1Bpeg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBv2o-00000003u3s-47VO
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 14:12:28 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UDxqhW3519842
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:12:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GmTEgmvcedeaRztRcqF8ocCncIDFUGQAfG0sHwoFEVA=; b=LvstrZ3FmNqKMCU+
	YOINyttxrcLdo6zYFXhCPETIYunbXuJyuTqRGDLu9Otuqgap/pqrgWd6vcZ2SZL3
	mjLol0XuWqD6dWusIvRgwWSAyxSWT/C+N+OdgjeV1jxx55YwDlHQEaVtafWpvXSd
	LB7tyGOd3O8MAseyX0xzFMsFgChrnqw70H1sDxyn2R9WkoTcUBatDC+U9nt7iYMD
	LEpIQCVeJFvzlH16r7yEEG/MEM5fOve+umiEgAmbMOhnOhR9mRT6jZ/eDpxzyYvR
	VSIc/Tc1+c9t99ivi6EW7dBsOTZG47ZhxGgG+ctpWAUNMlYReI7vHi3FzF06a5JL
	293foQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0x27hshq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:12:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2e2ebeaa0a4so3664745ad.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 07:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790777544; x=1791382344; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GmTEgmvcedeaRztRcqF8ocCncIDFUGQAfG0sHwoFEVA=;
        b=aoj+/lYz8/mK/8da4GHfoIuVYXiYxvRjnWSEV3sYebPj1YG5pTkB5mJBiDNuWsQG0K
         Kzk0leQz6WS7F04JHu/VYwipeJjt8y4ydQt/Y78Xm7OmYMP9QTV12luOrcX+PvdsceL7
         LkYAzEwz/MJX9hm7QwVvYvsIYZ39cWBzLeizxtmnf/u0QzpuCKSCzwO2WRidwYp+/FfM
         hNU/YqBj63YtgHPi5ZTDPNwYEaTLt/xH3xn8eKzO8Xgw7CYQJsK/JyEBf8zuN1gTMuiS
         LeUg44607lK+FfLzoaQv6LLVzmWGq38v4Wre9nb8a/cPrfnCT8AkLdiXDyMBxxi28vbe
         Itqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790777544; x=1791382344;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GmTEgmvcedeaRztRcqF8ocCncIDFUGQAfG0sHwoFEVA=;
        b=n2YI4UIVPjgD92tyrJ1o67gKudxbuFAiJnSLF7Lo9dVNIK8jA2m5H43QS0vsxLAe8P
         629hNxqaAHBb4yLpTo26uQXJ53zXRn2W+wjJLTJcJ/CJwDuU+cV6EolH186zKBQRP287
         xnlEuZbda28IYFYb7kCjRcikwOTywstgMWoY2QYcBypM3GlcRV2md+gZJk4EsVbeSY4p
         i8vL9yWibdnxTKUGkK0yxg/6hplMYCuQWDqxnkqDh4Gm0sM99ZifD4p4rEMmDk3cMWWg
         vPPEXkS3NlXoeCTyBy7/EKTVbMKy2egzphVDCIJqTwFpw2Ic6nvSdxod36YcSf53HM87
         8vOg==
X-Forwarded-Encrypted: i=1; AKwUvBwp6G0lsU0X3pchdBhHVkMRZIBXYFD8TnHE9YOAMVKkDdtquQlg9S8A8HQUWT0ux6FVYfzd6L+jwxQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYKlkH/BgRblq/QKTODQgZ5cxU6WmiqveBQv1aLVj5QGY3EzLZT0
	yad1cI7ZU4Y4DV+aFGh8e2H73OeItim09e6+sH7quZvctZ5jVewGdw9cvQCwKftcYBTe/aRKu8k
	oLADDRJycqgidjgzfDokXoJ3b700uwc+TRF0iTRJDEJKdHNjD6/zUeYzaP0gVQPYnjl+V
X-Gm-Gg: AYBFou3uUR1V1GXw636Ci8YOB3+IAdlVYwQig6boMwct9XMEN71Xzf9HfkhbAasMuHr
	/1dvHDxYz3WveaIC5RD2t7C+1lG8NxgnO+HG02r8scAm+U27BKnzW294nrJDyJooYW4CxuiAqwM
	LTW75bc41vyvFveL0apwJiYBQSQ3FY4sdFa9UBZ0G0UMuwm1hzllY840nCogppzkzoNIBMBu93C
	tfhvJwE3EzT/V53s16+rxgxkSrEUYB76OZkLio9wjM8P9V3BZdH2hkomZDMGsPmgt/lKbxBopZ5
	FSDd2Wbhp8afS98b5sddsP9dx9p4ih8fHvMHqmIc3omJ2V9DRUGvwCAcUoY1dclQMVnlLBPRPg7
	ey4SA0nLOKXkHMK/0Gst32cWTRLX/DukuQH7vDupJESua4fmn3kBfpJVsavVP7vk=
X-Received: by 2002:a17:902:f64f:b0:2df:8c28:886e with SMTP id d9443c01a7336-2e2e49172bcmr13489575ad.4.1790777543824;
        Wed, 30 Sep 2026 07:12:23 -0700 (PDT)
X-Received: by 2002:a17:902:f64f:b0:2df:8c28:886e with SMTP id d9443c01a7336-2e2e49172bcmr13489355ad.4.1790777543304;
        Wed, 30 Sep 2026 07:12:23 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e2e5bd5c67sm8402635ad.48.2026.09.30.07.12.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 07:12:22 -0700 (PDT)
Message-ID: <5286c573-1331-4bf2-a97f-e06fd004f6c4@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 22:12:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 08/11] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
To: sashiko-reviews@lists.linux.dev
Cc: media-ci@linuxtv.org, neil.armstrong@linaro.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org,
        linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org,
        vkoul@kernel.org
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-8-dcf3fd37f76c@oss.qualcomm.com>
 <20260929061248.E035C1F000FF@smtp.kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260929061248.E035C1F000FF@smtp.kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1NiBTYWx0ZWRfX/LrNN8p2sXUk
 7EABkbtVSV/aehtdUvVCyWfBZhG3xPGrgZI99fKVbhwVFw0vuGpIbRVm/H/gpx+LZghuL2Pi+4N
 QSE6+M5eEogqLXRg8T+71fxNmseFJ9A=
X-Proofpoint-GUID: -2LCkj7aUZeGhDwzqHZaXgDxlSRqjMU5
X-Authority-Analysis: v=2.4 cv=W9GtxhWk c=1 sm=1 tr=0 ts=6abd18c8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=N7nUT5zUQ4Ea-L6S4pIA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1NiBTYWx0ZWRfXyTFxz9Ut5z49
 bnj+sq+1cHamXLBIkRoeIc5Mt6bWeLGxClfIXFDcsVzeHSJCKey5KwJpRCFSn4czE6mgpwC4lbd
 IWh6hAb2i+VIZbO7PvWK+hSGJqC7rXWauqpKx/eoBH7WZ7QDtwYenw8kd40lgV6BIK0pe/OfGdW
 AamLb9RKWBImbD1750qkCPFUTL/IGWqlRWn6BZOc19g8TCx1PqwORg4O8xoONNUYOTzeNgzXlGg
 3wXKIZliEjLYdaOHS+0B5jPjpmDITKXG3BPWmIVXS7QW5MfqDBRXpBw2fJtTx5edx8uGen7pz45
 WZ1K2dfQ8vziBkRIr4GNI7o2akQIizvvEfzIK8BUi1arfC7DEqPjUoC/wn42B3DC3n40mDGoloY
 X0d50IUBdDOD1G7RC/4nSc29CiheFMnJNUAdT5dGM5ltT0XRrgmia+aWynkZd0Uoh1NCyLRf9hS
 s1OMkqA0fJuWRqQcD9Q==
X-Proofpoint-ORIG-GUID: -2LCkj7aUZeGhDwzqHZaXgDxlSRqjMU5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609300056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_151227_260376_615DE453 
X-CRM114-Status: GOOD (  26.02  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/29/2026 2:12 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] media: camss: uninitialized tpg->hw_version used in tpg_reset()
> --
> 
> commit e2a0aed20f3751127d25b2596032eac51d537c58
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> media: qcom: camss: tpg: Add support for v2.4.0 TPG
> 
> This commit adds support for the TPG hardware version 2.4.0 found on
> Kaanapali. It updates the configuration and reset logic to use the new
> TPG_CTRL_CMD register instead of TPG_CTRL.
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
>> index d29de5f93c18e..770a9e5d5ba5f 100644
>> --- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
>> +++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
> 
> [ ... ]
> 
>> @@ -164,18 +167,30 @@ static int tpg_stream_on(struct tpg_device *tpg)
> 
> [ ... ]
> 
>>   static int tpg_reset(struct tpg_device *tpg)
>>   {
>> -	writel(0, tpg->base + TPG_CTRL);
>> -	writel(1, tpg->base + TPG_CLEAR);
>> +	/*
>> +	 * On TPG older than v2.4.0 test-enable lives in TPG_CTRL, so clear it
>> +	 * first; v2.4.0+ drives both test-enable and reset through TPG_CTRL_CMD.
>> +	 */
>> +	if (tpg->hw_version < TPG_HW_VER_2_4_0)
>> +		writel(0, tpg->base + TPG_CTRL);
> 
> [Severity: Medium]
> Will this execute the legacy reset logic on v2.4.0+ hardware during the
> first power-on sequence?
> 
> When the driver powers up the device, tpg_set_power() calls the reset
> function before calling hw_version():
> 
> drivers/media/platform/qcom/camss/camss-tpg.c:tpg_set_power() {
> 	...
> 	tpg->res->hw_ops->reset(tpg);
> 	tpg->res->hw_ops->hw_version(tpg);
> 	...
> }
> 
> Because the tpg object is zero-initialized and tpg->hw_version is not
> populated until after the reset function is called, tpg->hw_version
> is strictly 0 during the first execution of tpg_reset().
> 
> Does this mean the condition here evaluates to true for all hardware
> versions on the initial power-up, inadvertently causing an unintended
> write to TPG_CTRL?
> 
>> +
>> +	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
>>   
>>   	return 0;
>>   }
> 

No. The version data is always valid no matter the reset is called or not.

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
