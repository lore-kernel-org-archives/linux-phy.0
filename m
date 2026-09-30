Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDF20CA5FC7
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 14:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSUe2XtdQo3rDrX/aUJ6/hh/+c88Q8YcDLbziJsxb04=; b=ozLC/QKObvPRH/
	fGlcnqkCHalkfiGDSkCI9JLJQ/E1EmgJIpwsvqZttclFWE2T/tgb7PbdiLECVvX5WfiiIahyyU0lL
	a++pcLQRsqASiMWOuOLKkj2ZE6C5DI8GhvZGrVh67ml5Qbvw+uHsGOClQi86z0ekRHzPSuWHifVpM
	ZL0D7I9vrQhoQAVSfhadMEvS0DShNXGzNRVaEjJY9HLoLZDhI9YWv6FHvjobEQpDbH/4+s/T3lgLz
	XF5X5Udj+d8x+7YDHoaY1RNeHIAqRYVFtxacg+nsCuSvyefeMKiJtjezigv/SJ2dgLMT+37aYhVUG
	+BlTXKPpF80FiMmb1g+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBuye-00000006EBm-3kHS;
	Wed, 30 Sep 2026 14:08:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBuya-00000006EAm-3GqD
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 14:08:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UE03IX3942313
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:08:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z5/lWtloNnIfNbXA6QSNEOy67CLHeyzL4Sp3AyQejEA=; b=AFZgrenaxIKYQYHP
	eIAPyxWdOBavkYQMZ3yZJunIvi/wwGAea1kGZQOUwdyutlJ1/iLazEtabuUIv0on
	25hSZhX4tCnskI1yUv/RqFrqbYDlVfMK95BiXxjdYdkhj1oPIjBM7+AuUmZ1yRm9
	JG4+3rgzUxW8KlQGlBRdfNAkVMGoJWSwfExmX9z6a3JDnmWVg61MBVfQghnC+pma
	jvCEWIOZu1GZFiOJiIRlLJ947UrTGZ5dCwUJHPS3p76Lmua8K3QrDbPoXkaHOmZW
	doezSkwPKo/Mjk0LGzVuMMyawvTR16Y2D4/AU5vSmBUVNYqAyw26VnMCz/3srj7e
	ZMygZw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h10bk90us-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:08:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39aee9b4cf2so8910032a91.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 07:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790777283; x=1791382083; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Z5/lWtloNnIfNbXA6QSNEOy67CLHeyzL4Sp3AyQejEA=;
        b=e4GXM6CDOqi8/G2IXJdC7IrdnXYZWq5Qi2Nq3DWeqvzxxIEJ3wi935P3FouGQyDcfi
         E2gAq53olx2UbjmBuer7PSZi4Ssv0os9iPEiYmWSBxUAAFe/V1pmScFZWpFC8CvXTzNR
         q+W1wjl9DSE+PJvVTGiBmvsHqnWKiqW1dyHMlOf4SDVvwiUPT7nUAFxomL9N235W78EI
         lDuNhE8EUKTk0qw1qeL3Z36s/SODal9cQaTgoOUIjZBWt6yk3n1izqeZktP31+xhpQNj
         jeGlB2StAlfjflGPy5DToYVFQHBeco0JFMf3oTaWNFFTKDFO6A0sJA/gd2tyBuq/8YQ/
         X6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790777283; x=1791382083;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Z5/lWtloNnIfNbXA6QSNEOy67CLHeyzL4Sp3AyQejEA=;
        b=Hdun6QKR2kPBUiQJKOAyjOTFZRlT5A7H2IJcI9BvGDwQ8V3u6swtDW3sZaMcg8Wi9d
         0W1d1K8xfTniTWPb4sB7NNfGdi7CZ1lSVPT+3K6+i1NEgrltcnPXkyGRpsaA+CrbpTb9
         Ak8d/fpv+PyPfZ5Y4a176eXrunLFfi+xvRrm/bM/V9lUC/iMojpg0uBujZJfT+eHCT2q
         hFjeTL5MPHTla5HWATFkQwyYatWpB6lG75mlclF76sI2M0hMqMGtiMxk+fTf40AU0C/g
         PdF3ZGHTXHsi4rBTTtkuFQngR+olrFuQN5/OayU8Xor4zVBOEm0F8a3bY+j2OxVdo1PW
         lt6g==
X-Forwarded-Encrypted: i=1; AKwUvBxY8z5ERVW44cSzHdGF997Txu51Fsv5E8DdJ70gV1kidwop4I/wthopkUHR543exWXvz4Rl9SHgPBA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIn0IQeWdFrKYV6vg2a3NIzPSXxIIBO0Q+oikEQB0yQDMNxmk/3
	1Sc7Wg126GfxiBbDRZE5jAMIi9h8Cc2aX372pqPaz1ghgFk7k2i+0wPyKzo4/toxVj6U8SLsOGt
	5BDuRaXvEOD4EGseWKoWhzYtKVyJGb54zDjTD6ws6ttRQxtuR5Z6dCN7WtizN+SOMbZ+0
X-Gm-Gg: AYBFou0D+OYb52xbCbWDIQPIL4Pp/WZ1UGtclUfHM8XYenIm4WMUCJ4LALbrYpI9CdC
	8WsMhO5ZsZg+PGqgUfxF2/hy47YwQuoMq8WAeXAGn42X5LYPiKVWduApMDojSJnsNj0FMafQEgn
	5I2h+1w+8UE3ww87FAbwatLJTcuhHqe+cFMnKAYXQis4Zc6RBmPgfCeG6tXc5XBacQjERwXwqEv
	Nir9hicZ7bup+PX3kjJXqMogxOlkeRr2BMBkNvrMGrdQDQkTiuk6zdxHWaV+hcN2aT3t9YyHsuR
	TdsZ08FQtCz6tpFnTm2ZS+sQCaIq1C/99Cmh/WI09QhJrrfiKUSLfzg54iKjL+Lbj2xqmKlMSqQ
	NWINd2EPp80DYu4xpaQJ4A+Mub8dg7OjkZGS0xV/w+rJYl9JrtdNpfD8LFQbK6vU=
X-Received: by 2002:a17:90a:2cc5:b0:3a4:e635:a8b9 with SMTP id 98e67ed59e1d1-3a4e636a641mr365457a91.32.1790777282552;
        Wed, 30 Sep 2026 07:08:02 -0700 (PDT)
X-Received: by 2002:a17:90a:2cc5:b0:3a4:e635:a8b9 with SMTP id 98e67ed59e1d1-3a4e636a641mr365426a91.32.1790777281916;
        Wed, 30 Sep 2026 07:08:01 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4e5d9adeasm628557a91.0.2026.09.30.07.07.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 07:08:01 -0700 (PDT)
Message-ID: <a77004e6-c375-46fb-ba32-bc6f34bba2ab@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 22:07:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 07/11] media: qcom: camss: vfe: Add support for VFE
 Gen4
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org,
        olteanv@gmail.com, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org, robh@kernel.org, media-ci@linuxtv.org
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-7-dcf3fd37f76c@oss.qualcomm.com>
 <20260929061755.8BA321F000FF@smtp.kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260929061755.8BA321F000FF@smtp.kernel.org>
X-Proofpoint-GUID: bKwqWnWgwshaYD5nvJyMRoQNn6vsVHf-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1NiBTYWx0ZWRfX4wS+zdzYI0fj
 xqw0pU7ZevNgax+Cfy6OOMM+oy1ydTPSABm4GpytMJHYl1ChkKfBBTluGPfN5lH+LgIaiGZpWex
 mZC35vJGJt+brpvkkAzUKIc+3a0AMdJ4oLVsC5tlD4QXLhEoFJYtduuasTAk8Arpy+FC4qA6lzv
 nffmPsEhVPkJEPnKtYHj2wxJtFmwkajokJ58QZVk6EV158wfwQvHwccJykxxWUKrpRl1sff/k3C
 UWQWQFZhqBRJRmf34+Kvrijh4A3I26BFLSC2e2E8Wko8gnRuqA22zgCb8BME/23qtPYVXXKgy3E
 zUefdW9UT9TWUCFbd1i9IrP/wDIUhtfOwftUN8QVRegugt1WyWc8s2e1QOndTIFH8q3JKm0Wpgj
 xW1zak0waq/GzDpTJw9Xbf8ijEKzDz42uvUxvhzl7DDJ0zEFZ98PiNcsUl7SHmDRXsXCDLLw3Df
 p9c+vUcw22lMIc98oYg==
X-Authority-Analysis: v=2.4 cv=MZn5KJ/f c=1 sm=1 tr=0 ts=6abd17c3 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=aJ_sJalLn2DonVaVJ1AA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1NiBTYWx0ZWRfX0V1QNbtq+iGS
 syhmoufsGefxODBoxpxb8E606MLOpWrMR7uMUlnigEnn/15AqqTMVp1UcbjTh4asfJsgzN/VUto
 ytQkLtP6/fuvn+7LgPmX2WtQmNgQKKI=
X-Proofpoint-ORIG-GUID: bKwqWnWgwshaYD5nvJyMRoQNn6vsVHf-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609300056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_070805_675162_BEEE059E 
X-CRM114-Status: GOOD (  26.65  )
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

On 9/29/2026 2:17 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] camss: hardware constraint violation due to unconditional AUP_UPDATE loop in CSID
> - [High] camss: subsystem API violation where IFE Lite's 4th RDI line is incorrectly configured as PIX
> --
> 
> commit def99c6cf972d2305c4c27701233f42e411f7857
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> media: qcom: camss: vfe: Add support for VFE Gen4
> 
> This commit adds support for the VFE Gen4 (TFE) found on the Kaanapali SoC.
> It configures the hardware blocks and clock requirements, while deferring
> REG_UPDATE and AUP_UPDATE until after CSID configuration completes.
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
>> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
>> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> 
> [ ... ]
> 
>> @@ -552,7 +554,9 @@ int vfe_enable_output_v2(struct vfe_line *line)
>>   		output->gen2.active_num++;
>>   		ops->vfe_wm_update(vfe, output->wm_idx[0],
>>   				   output->buf[i]->addr[0], line);
>> -		ops->reg_update(vfe, line->id);
>> +
>> +		if (!vfe->res->reg_update_after_csid_config)
>> +			ops->reg_update(vfe, line->id);
>>   	}
>>   
>>   	spin_unlock_irqrestore(&vfe->output_lock, flags);
> 
> [Severity: High]
> The commit message states: "the number of AUP_UPDATE requests must match the
> number of buffers queued to the write master while it is being enabled."
> 
> In vfe_enable_output_v2(), the VFE loop shown above queues pending buffers
> dynamically up to CAMSS_INIT_BUF_COUNT, but breaks early if userspace queued
> fewer buffers. By setting reg_update_after_csid_config to true for Kaanapali,
> this defers the update to CSID.
> 
> However, the corresponding CSID code at csid_configure_stream() in
> camss-csid-gen4.c blindly issues AUP_UPDATEs matching the maximum buffer
> count:
> 
> for (k = 0; k < CAMSS_INIT_BUF_COUNT; k++)
>      __csid_aup_update(csid, i);
> 
> If userspace queues fewer buffers before starting the stream, does this cause
> a mismatch between the generated AUP_UPDATEs and the actually queued buffers,
> violating the hardware constraint?
> 
No. The hardware accept this operation and no issue is found in tests.

>> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
>> --- a/drivers/media/platform/qcom/camss/camss.c
>> +++ b/drivers/media/platform/qcom/camss/camss.c
> 
> [ ... ]
> 
>> @@ -158,6 +158,157 @@ static const struct camss_subdev_resources csid_res_kaanapali[] = {
> 
> [ ... ]
> 
>> +	/* VFE3 - IFE Lite */
>> +	{
>> +		.clock = { "gcc_axi_hf", "cpas_ahb", "cpas_fast_ahb",
>> +			   "vfe_lite_ahb", "vfe_lite",
>> +			   "cpas_vfe_lite", "camnoc_rt_axi",
>> +			   "camnoc_nrt_axi", "qdss_debug_xo" },
>> +		.clock_rate = { { 0 },
>> +				{ 0 },
>> +				{ 0 },
>> +				{ 0 },
>> +				{ 266666667, 400000000, 480000000 },
>> +				{ 0 },
>> +				{ 200000000, 300000000, 400000000, 480000000 },
>> +				{ 0 },
>> +				{ 0 } },
>> +		.reg = { "vfe_lite0" },
>> +		.interrupt = { "vfe_lite0" },
>> +		.vfe = {
>> +			.line_num = 4,
>> +			.is_lite = true,
> 
> [Severity: High]
> The commit message explicitly states: "Support is currently limited to three
> output lines, matching the constraints of the CAMSS framework."
> 
> But line_num is initialized to 4 for the IFE Lite blocks.
> 
> Since the CAMSS framework hardcodes VFE_LINE_PIX to index 3, does configuring
> 4 lines cause the 4th line (RDI3 with id 3) to be incorrectly subjected to
> PIX-specific logic? For example, in vfe_try_format(), this would force a raw
> RDI dump stream to use PIX format tables and validation:
> 
> if (line->id == VFE_LINE_PIX) {
>      struct v4l2_rect *rect;
>      rect = __vfe_get_crop(line, sd_state, which);
>      fmt->width = rect->width;
>      fmt->height = rect->height;
> }
> 
> Is this initialization to 4 lines unintentional given the 3-line limit
> mentioned in the commit?
> 

It's acceptable to align with the commits. Actually this is a CAMSS 
framework restriction which needs additional efforts. Will keep it the 
same for TFE Full and TFE Lite in next revision.

Best Regards,
Hangxiang


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
