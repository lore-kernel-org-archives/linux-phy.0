Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 756E0CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 07:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zoxs99Ap8ZpXuHfnETvgLDfMeqeakFk5CNOKPWTqzo=; b=YfaNwUMGDPqqwu
	wysVEl8KgjenltxtgSitaHAHS7fTEuETVehHYeARnGiK3qWEYvxBmn2XD0cyD6UvcMUrTNL/OryCX
	NGR3TJqeP2Urz/ALfP84VoXQz8/4JzXHXUb18y0xbVB5xF6Xrv35Dtw/dZejD9mVj8Jf9ECZA//P6
	5E5Pmapw1kCq3kxL59uOh7FTc1UVvmTirb3wTQHPRQGltfPyxAac3V2bpkAEfX+NGPdVqVZI68RHH
	AfA2oSL2HMj/q9RHArfv3qM4vl1cwPADVbBIHqtbGycUh0/CY0RbZ/SBxxCfM4l5sh+u5Nqu8+H8U
	/dVsql41ErVQOHfEg73Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGAKS-00000009pUM-03lA;
	Mon, 12 Oct 2026 07:20:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGAKP-00000009pTt-1lIY
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 07:20:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55vTZ4068720
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 07:20:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3YLFp7Ql215BnyKTwtRM0IX48xqWM6YYgDQenq2aqPg=; b=QENyWS4Lwkkys6mI
	8IZFGH/Jmjd3svjCWNDhw1w4we0kDzS5xJ8glxyXBEZjYYbeaJXqWCGbVWl7DHxK
	90eaFj6dD0bv1mCgDkhhBaHPIeO7hWZArYkHG3HIjhds4DW2ZP+1Lmb2+epxnJ0m
	Jyj9o1I2Y6fvkmwCvj2Mon4pUX/uhmJv65nA34EsWdtmoyLSVPGz2ndcOB87tf64
	bz62YpSpzix63LnMdAKhF2q8skRTL5yuiYNjD27U22+CjR8hu4UPE+2jYvS5AAv/
	kGsA01eU8WCGLZdjYov6WlfafrNM7fHffa9siBKtJWBqhbI4T1HDfKPOdmAKXQcx
	dqY+ZA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7ehjnauh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 07:20:08 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3ab868fe362so1479355a91.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 00:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791789608; x=1792394408; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3YLFp7Ql215BnyKTwtRM0IX48xqWM6YYgDQenq2aqPg=;
        b=RtIHIuY2Fx5YwQcy0cAlDmqNn5COVF2hrx6AZskt4pI4ckxPdTG4neZuJhqlVxPsGz
         N/K9B6mSRrZ5i6WdlCOVt5tW/rATBG+VCo7yVxXH4oPY9+pgIMQsDgFqyi0QtTbc+MQr
         SsuwMdguXaoyretSh1V7XyRWlA0JsSOzwBdnleP3/s+mz2NqbwpzY3DQO51csvDHEO8i
         QM471sOvq4oCDHf2YOTmJZxPmdeCo99iHy8JPxG70h+3JyNg46cPhl3kQRif30cihUw6
         G28Qhf2Hw+A6nibX8H9Z1AKNQs0+HsLsxU5Qg8cnmKMHU59KdnuDVUvzqYm0FwoFMSIg
         Zh+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791789608; x=1792394408;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3YLFp7Ql215BnyKTwtRM0IX48xqWM6YYgDQenq2aqPg=;
        b=BDyou8Ln9NSF2N4n1liIuL55BunKllMdvIIVdeA9/IOyIMs93xFjt4cxjCFDcOfobE
         lq+5PMlgQ2nFD27bGpTmV463uO3j+vfjicRfQI79np+xbQWSEiqTf/BFMpuVGsjyBjLC
         jMxkyJh/kksRmFA+8+CbqPo+zizGE0CPG+AEz1F+MoyuQrQ20YhNBqQvQLQyUak77hp8
         W9PDZpfQLtjh1nfUPw6OLtnY6nI6c3g4+Hf3F8aeKkaRF6HJ4HgGl4xwK8RfjiftPDrH
         yXyCHPoeQreCj+Dj8LgNIx+GuFejqRF9PK9HaZV/3/SwuhjZPJauG7UOA2vLdhWoAdfO
         ENIw==
X-Forwarded-Encrypted: i=1; AKwUvBx+hOjUYsTps6mkxw8jsf6cLa3LeOdf/wg4J4EL5wEhVPCAGwav3JcWQaFBoKHS0RMGx4ADxK3OUFk=@lists.infradead.org
X-Gm-Message-State: AFq9FYJbnAHGDbKMh7RlHBmdjVVtkYL8WOYHzthVQDijlpOMjw60MmCA
	xinSlum4IBUmal2YsrlK6QvqBCemMsg654HyTg/DrE/rwA2955qL8dJYfPxNAT/N2xHMbjdimbm
	cThxOaWePMsJJQBNFjVtaSD+WUhozXnzWx/KpV249bSAHKc7CMvLH0OWosxJwvijzqndV
X-Gm-Gg: AYBFou3arD5IYztMMm/CcUZmjCm5xTbS3/uRON/BFDTimKfUPYrCwqB6X5CSihKDMey
	MNrN9gxPLPfr3BGwrk7xyrfQ0xCcqUfr+1zgl/6YpDFvSQSGyM+Vy+lDFUF+wcsc1EDmIPhonL5
	vh3tEm6h8qnrll6Kozu7cQGUUyxZQ58gbowgzAISbahhc2+FsWh2FTzhQiCJklG58k5i2128Hyp
	GCAlJok3gVbplqLkIkfWU0E7o38AgOQaPlNafD9viVU+SH0I9MLNxYWBlxk4ayix36WDECauhyC
	YSXLtKSVV3V5mCBGkRLxyUlBH9NucbSQR8Q63PBIQMnQzrfqU8zK5MoXV6V07voyIJb70PZNfdE
	BVFa8x1cKs07mrtACDm+eSdGoB2QpUeoIbwWYbgXK2+kSHkDM03TBUsreWFBNSno=
X-Received: by 2002:a17:90b:2790:b0:3ab:be66:ddbf with SMTP id 98e67ed59e1d1-3abbe66e03fmr2667653a91.54.1791789608131;
        Mon, 12 Oct 2026 00:20:08 -0700 (PDT)
X-Received: by 2002:a17:90b:2790:b0:3ab:be66:ddbf with SMTP id 98e67ed59e1d1-3abbe66e03fmr2667641a91.54.1791789607644;
        Mon, 12 Oct 2026 00:20:07 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab57c05724sm8573913a91.4.2026.10.12.00.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2026 00:20:07 -0700 (PDT)
Message-ID: <6074e2de-ac54-4af2-b8e0-ae3350af0cdf@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 15:20:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
        robh@kernel.org, media-ci@linuxtv.org, devicetree@vger.kernel.org,
        olteanv@gmail.com, conor+dt@kernel.org
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
 <sashiko-outbox-167768@kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <sashiko-outbox-167768@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyOSBTYWx0ZWRfX3y5cEaIPDc1W
 qVgKcWgrXY5wTh1jaPdlNKbE2iNdwxkR35mfmV52FMTmMP+/3nb4IThFyO1mm8GT4eJbiVmZ19g
 L8RAzaSUuD1YlH3Jq2amrOZRN3ibD7KiwLJqK1oNVYVt7wwcf6FqIHgXUONv6o5XhHcksIYcSJ2
 0v83u+XzQn1xlMplSZTZaWfoagjhpAB77Mjp19MS38ICFp/nTw+0AwDE7jHVHJ9RHC17zU1hYAT
 +vXWwSiupcR1PLlTkGhDeLdkZy/nvCAofiPSx7pCWL8HkKlBM1/VBe0G97j8SNP1/bVBicc9e91
 UrBPR1UG6iILfFuqBUf1AzRyDta2Kt9Qyk/wY2PqFtjHaHm0VIIJcIYwbi7WSmBgyDCJ+tFBili
 7z6InTndX1Bnx1fAy2HyDRxLW8eOFwbXM09WVI5+qnTaw5a3OJOf6pKC7vJmHf/nEfflX40LDO8
 PPcNW/oupUphaByjxaQ==
X-Proofpoint-ORIG-GUID: vxSRdaMDlXjHYm59UlQqpSEm3hT6ifUE
X-Authority-Analysis: v=2.4 cv=MpTHeGae c=1 sm=1 tr=0 ts=6acc8a28 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MsFtPu2hbo5vfmcse_YA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: vxSRdaMDlXjHYm59UlQqpSEm3hT6ifUE
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyOSBTYWx0ZWRfX0RE917+4yi2U
 hB1sTFhMt7E9ICb4ulmN5f8ea5kTYekCRwTOFQHbHvdmcfN+hYeS+xsRmcHdAffysAzPPrIcZlc
 DSHbr70exPO2x4edZyD/EDZ97mSsl9Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 bulkscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_002009_483353_65BC00A5 
X-CRM114-Status: GOOD (  33.02  )
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

On 10/12/2026 3:01 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] media: qcom: camss: lost initial buffer due to skipped REG_UPDATE
> - [High] media: data race on csid->reg_update in stream-on
> - [High] media: camss: cross-routing breaks due to hardcoded VFE ID in reg_update
> --
> 
> commit cb036f0b44cb6248a2bce2553092074a74c00d9a
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Subject: media: qcom: camss: Issue stream-on REG_UPDATE from CSID
> 
> This patch moves the stream-on REG_UPDATE from the VFE to the CSID for
> CSID 680 and CSID Gen3 platforms. It skips the VFE-side REG_UPDATE when
> the upstream CSID implements the reg_update callback.
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen3.c b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
>> index 0fdbf75fb27db..830c9c818d3d2 100644
>> --- a/drivers/media/platform/qcom/camss/camss-csid-gen3.c
>> +++ b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
> 
> [ ... ]
> 
>> @@ -230,6 +232,7 @@ static void csid_configure_stream(struct csid_device *csid, u8 enable)
>>   		if (csid->phy.en_vc & BIT(i)) {
>>   			__csid_configure_rdi_stream(csid, enable, i, 0);
>>   			__csid_configure_rx(csid, &csid->phy, 0);
>> +			csid_subdev_reg_update(csid, i, false);
>>   			__csid_ctrl_rdi(csid, enable, i);
>>   		}
>>   }
> 
> [Severity: High]
> Does this new process-context call expose csid->reg_update to a data race?
> 
> Looking at csid_subdev_reg_update(), it performs non-atomic
> read-modify-write operations on the shared csid->reg_update mask:
> 
>      if (clear) {
>          csid->reg_update &= ~CSID_RUP_AUP_RDI(port_id);
>      } else {
>          csid->reg_update |= CSID_RUP_AUP_RDI(port_id);
>          writel(csid->reg_update, csid->base + CSID_RUP_AUP_CMD);
>      }
> 
> Concurrently, when the hardware generates a RUP_DONE interrupt, the
> hardirq handler csid_isr() calls this same function:
> 
>      if (val & RUP_DONE_IRQ_STATUS)
>          csid_subdev_reg_update(csid, i, true);
> 
> Since csid_configure_stream() is called in process context without holding
> a spinlock or disabling local interrupts, couldn't csid_isr() preempt it
> midway through its read-modify-write? This could cause corruptions to the
> mask, leading to lost or unintended hardware register updates, which might
> cause streams to fail to start or stop.
> 

I agree but this should relate to CAMSS framework design and now it 
seems the CAMSS hasn't taken this into consideration. Future framework 
upgrade will cover that but KNP series will still focus on enablement.

>> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
>> index 2680a9914765f..16a0b5663fe2b 100644
>> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
>> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> 
> [ ... ]
> 
>> @@ -552,7 +586,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
>>   		output->gen2.active_num++;
>>   		ops->vfe_wm_update(vfe, output->wm_idx[0],
>>   				   output->buf[i]->addr[0], line);
>> -		ops->reg_update(vfe, line->id);
>> +		if (!rup_in_csid)
>> +			ops->reg_update(vfe, line->id);
>>   	}
> 
> [Severity: High]
> Will skipping the reg_update here cause the first queued buffer address to
> be permanently lost?
> 
> During stream initialization, this loop runs CAMSS_INIT_BUF_COUNT (2) times.
> The vfe_wm_update() callback writes the buffer's address to a single hardware
> shadow register (for example, VFE_BUS_IMAGE_ADDR). Previously, reg_update()
> was called after each write to latch the shadow register into the active
> hardware queue.
> 
> With this patch, if rup_in_csid is true, reg_update() is skipped inside the
> loop. This means the second iteration will overwrite the first buffer's
> address in the shadow register before it is ever latched.
> 
> When the CSID eventually issues the single REG_UPDATE at stream-on, only
> the address of buf[1] will be latched. The hardware will then write the
> first captured frame to buf[1], but the driver's completion handler
> vfe_buf_done() expects buf[0] and will return that uninitialized buffer
> to userspace, resulting in silent data corruption and shifted frames.
> 

No. We have tested on specific hardware like 680 and 1080 and no issue 
is found. Actually, this is a recommended initialization sequence since 
CSID 680. However, on Kaanapali platform, the requirement for sequence 
order becomes strict and we have to follow that guidance. The reg_update 
is split into two parts since 1080, rup_update and aup_update. The 
CAMSS_INIT_BUF_COUNT should only impact the hardware starts from 1080 
version. The previous generation won't be influenced.

> [Severity: High]
> Does this logic also need to be applied to the runtime buffer completion
> path to prevent cross-routing failures?
> 
> While this patch correctly identifies the active upstream CSID for the
> stream-on phase by traversing the media graph, it appears the runtime
> path still uses the hardcoded ID.
> 
> In vfe_buf_done(), when buffers complete, the driver unconditionally invokes:
> 
>      ops->vfe_wm_update(vfe, output->wm_idx[0],
>                         output->buf[index]->addr[0], line);
>      ops->reg_update(vfe, line->id);
> 
> On Gen3 and 680 platforms, this routes through vfe_reg_update() to
> camss_reg_update() using the hardcoded vfe->id:
> 
>      camss_reg_update(vfe->camss, vfe->id, port_id, false);
> 
> If a user configures a cross-routed media graph linking CSID N to VFE M
> (where N is not equal to M), this hardcoded routing means the register
> updates for new buffers are sent to the wrong CSID. This leaves the active
> CSID's shadow registers unlatched and potentially corrupts the unrelated
> CSID's state, causing streams to freeze.
> 

This should be one-one mapping for CSID and VFE. We have moved the 
REG_UPDATE from VFE to CSID since 680 and the BUF_DONE event can be 
found though CSID id. These two evidence from hardware can prove this 
intentional one-one mapping design.

---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
