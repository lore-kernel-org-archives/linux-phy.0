Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1ABDCA5FBB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCzuVzc5SqzitAUcPZNleLmmaBT9WVo88d78OCyg2tI=; b=roK+qzkH5jcTHb
	0K2kfsfBqqbcHECSIVzIty0Hn158D6lGDRiF6ixMoW1wefvdG352we1L2+CxhPJqdMMUSq+660IVa
	PuzNWnfCSv5le9gw8rh15Fh4R3IQ8BFbWZE+D3tZV67RsXhNVey1AMKWdvcmRuYAha2Q19Eio1W/1
	De3ioDi/W4gPSa7ZmIjCj/Lt4v4hi6ExCKBFkQvDbpjlaaEL8qZ8pBjROtdZc1TwR4jxUkb+qWW4K
	jnZOhIQg8xdgUUs2P1lla9yHiPuC0IIQEqukU0So2nVd73dzPVHzyFNKMegtdx9KDhlAAh9DMwSju
	u2UE5OD0LjvHeZ+8SwFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBulV-00000006BoH-0brn;
	Wed, 30 Sep 2026 13:54:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBulN-00000006Bmf-04T6
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 13:54:27 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UDrbRA2957318
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 13:54:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2ilMQ1MePaJJxNUKIWbLqWASxBz/Hn4eNufkx/CW0Bc=; b=PCMLeh7yiWmm+35G
	zdZGlJW9aILRtFQYJdRMNoVpq1QSUhrim8lmHIpKSqUm+h5SgN9ly4c3RBaQn4Ls
	CiNvFbTbPyR8DJuQFDUcJh8OTKg9pqzby/Ot34U+tFtSDLWfrSc5lKjj1VhATrzJ
	YWl+/gIPsp79JY41V31mjcZoi5kBSu/h/ZVAxvvMLxxp+J+2FkTexgqs6xJGhVnN
	UGrufjfVFNk8LrLWWWhU61uUm9P8Xnl5txXKeaORAvqFRbafSuhyLyTqV9YrziJy
	CI2fBIjLJlN3nS9NzFagoF+8iNjUyhrGVpPwHI7AnmNREJfcXiNG4ITV0w4K+G4o
	buZWxA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0rhek4wu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 13:54:23 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-88629a452e0so1359168b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 06:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790776463; x=1791381263; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2ilMQ1MePaJJxNUKIWbLqWASxBz/Hn4eNufkx/CW0Bc=;
        b=Onoln38lu4MknnSXg8YtZ9UhXS8eAthPQZym2x/oV5PoDTBi5d+Um7nHYIZ/CkSRgM
         I4n2iiDb6KLn8knatZfQe8GSo3yzXaWKEKt+w2OXe+rAp0+Zbc/4MuUtD1aPl01+HG3l
         dbTCQGsT9ffVmIkZcmMtUTR2wlBZoEn0qz0BACI0d5uKhqPCG/61dyNItNuDjtd+QXXb
         Rn3qZVAxtmR75HS3ypfIMIKd1R8m2gB2nj/LJdJvdXNd6+fCPKh+7/fRxeh/BUlYzyvj
         66AecslWv3D7lrjuqEiyIhwG+M5bfRE7h6NeSYQCZ+uK1f6pHMx7LTAgbifBooXhbsVA
         /EGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790776463; x=1791381263;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2ilMQ1MePaJJxNUKIWbLqWASxBz/Hn4eNufkx/CW0Bc=;
        b=M+mMdXAknQlZJYpTv6VK0v/Lebfwmd+/NZeA01zqt0DL27m9MlNCrqb2zHn/kD/Mnz
         Al7M+uzMh5eGwoFAwGrgMvY5MUgiKarV1looudx70uZ13qWfXwq4xaJCkWTp8oUE5kEW
         OSlw9xIu2qnIzx5vHSrnBC/Cdq+9t/QGpg3VelHkl3OQCCuOaGsT+4DqAxcTexd44Nl3
         7/h8mpIWAe4r2kNMiqgpGtc106mCJE9UI3xXOMoO9WhKk9b7fzj4enliURNb7a62V8vE
         cAlc45vcd9PrEMMY4dApzaUHY1UcLMTqzxthKRApWN36b8u7+NmiMUm4ziZfBPj9jmSC
         +iIw==
X-Forwarded-Encrypted: i=1; AKwUvByicBsvN+SqJGcg/Gpwuk6nrKGDdq5KgmUwiZDeSSyMvbq0tqOGDplSz20hJQY8zoq/HRPVwaQukB4=@lists.infradead.org
X-Gm-Message-State: AFuF++kpNCm1mI+VUfbACaBwDQqBpJDrXdPNSnQBXIdylx5/p2erxfYk
	suUlLF+KSwT5zfxRkjA6RVNeYQno0KechIVhglgl10mUD5MdGn55DosUerAT4QD0yNAHTImrmEi
	gX/JWHQeJZlFJ/WUAmP+uil0d+sIU4V49tUxsN4AhkbsA3TAEWESRBtFe8xUm01XhzvYN
X-Gm-Gg: AYBFou3kTN4/MqUEFlpkjsLWT3e1BF1zFaFuVDbviPTNFg2bHpG8UeRhpGjoBZZJ59/
	8MH7y2RQTYcmdknjo3ET0LDXU7Bgkp+8zdXVrH4gZEl/4JG0+vAXr/knJfrnM5noqBBtlq/fKqj
	XVYSeV/VhNodpqgd2vJ1xHyQNv9wavKy3x10u+F8voZAJ2zMDF2qcwClOFCgUpxK7nSzmJti7Dr
	v/JQDrYwAfBHvE37zTMqI1s7kQ+RH2lHVJb00yNWKL5Qgs+eKfk8y05TVBwQyGVOB3l8o1UXDEg
	SsrjokUxAHAVskd25ZSemZyMHi3H44ht8T17/aEAmIAhEkwS68tfn4gl7M5w7QqAX5FXXiRkg1R
	3mYbkfitsXuo4dlVm50ma65QIviLjFBMcJytw+IHhafbBjCDwCPhD+8t1EcC0S84=
X-Received: by 2002:a05:6a00:4c14:b0:882:6836:25f0 with SMTP id d2e1a72fcca58-8874ba1e7e9mr1074371b3a.52.1790776462496;
        Wed, 30 Sep 2026 06:54:22 -0700 (PDT)
X-Received: by 2002:a05:6a00:4c14:b0:882:6836:25f0 with SMTP id d2e1a72fcca58-8874ba1e7e9mr1074344b3a.52.1790776461977;
        Wed, 30 Sep 2026 06:54:21 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8872587f784sm871316b3a.23.2026.09.30.06.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 06:54:21 -0700 (PDT)
Message-ID: <66b8dd1f-7aca-467d-9929-8598bea9fb04@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 21:54:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 06/11] media: qcom: camss: csid: Add support for CSID
 Gen4
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, media-ci@linuxtv.org, robh@kernel.org,
        olteanv@gmail.com, conor+dt@kernel.org
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-6-dcf3fd37f76c@oss.qualcomm.com>
 <20260929061724.7E52C1F00893@smtp.kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260929061724.7E52C1F00893@smtp.kernel.org>
X-Proofpoint-GUID: RtoLKpppi05aASyxpFKAD6VeJ8W4Yb20
X-Proofpoint-ORIG-GUID: RtoLKpppi05aASyxpFKAD6VeJ8W4Yb20
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1NSBTYWx0ZWRfX2hYUKlrz1MDo
 Z5/nTDWhDqe9ycGcHmbYq/4QPPnEkW1+truWq+VmFcakuDVJc1Bo6YSWUNz8eKrgPogjWATXkhz
 fVoWE9sMUnLFlAcXLNTQZgnNxEDSjPXQ9XADlcVPiOSvaIFAMMCnz1ED0J4OC1dVZj2N+whZ5A2
 pHkBCA4HKcQZM5nkBQJuS89d/eqYBdYy6Vzv1GyggRn1kDhQAJ8ssAhg3DW/StS7Irx7hfI+SeG
 /SoKxZr5YLS1gs6ujQ8FtaN6EnGAtQV0CjZx1n0aPqwozDK9LYnE6cEPFZ4haQqeDjAan3zctON
 1FuOpbj7MfpFb+k1ZERWz0BqCZoWYaUOvL4oFQQIrZAKiVSazbOTKRlKHqz+bR81u3MfdrKJ36d
 sFAfhIarCr9+q2PiMkRwt3VReLPzU1t+2myJpaqQNq9R6Tdb4A/xPBKuTaLXiq8DlHdVwJ4yrxO
 IaapvlzNqOn2hF+VawQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1NSBTYWx0ZWRfX4q/m37pTKkS+
 uI0S4SPplwODFY6rjZTyyb6oIMnUhmt5fh3zNdzIF/mu40Ip3ob76kSc4HCLh6pzOiHzhoV2H5e
 Fxr795bhj5H1VZNpIBncjVIi9XYUKlo=
X-Authority-Analysis: v=2.4 cv=Tu1zFzXh c=1 sm=1 tr=0 ts=6abd148f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QeBPY30dwJJEyPjSs70A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609300055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_065426_234792_872D6A46 
X-CRM114-Status: GOOD (  23.71  )
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
> - [High] media: qcom/camss: data race on csid->aup_update and rup_update
> - [Medium] media: qcom/camss: integer underflow in __csid_configure_rx
> --
> 
> commit 611abdeb4b5da574ae292d1ff736d0d71f2f4ed2
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> media: qcom: camss: csid: Add support for CSID Gen4
>      
> Add support for the CSID Gen4 hardware found on Kaanapali SoC.
>      
> Introduce Gen4 resource descriptions and implement the hardware-specific
> register programming, reset sequence, and BUF_DONE interrupt handling.
>      
> Gen4 splits RUP and AUP updates into separate registers and uses a SET
> register to commit the updates. Update the CSID interface to support
> both this scheme and the legacy combined reg_update mechanism.
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen4.c b/drivers/media/platform/qcom/camss/camss-csid-gen4.c
>> new file mode 100644
>> index 0000000000000..4ff2f41f70f7e
>> --- /dev/null
>> +++ b/drivers/media/platform/qcom/camss/camss-csid-gen4.c
> [ ... ]
>> +static void __csid_aup_rup_clear(struct csid_device *csid, int port_id)
>> +{
>> +	/* Hardware clears the registers upon consuming the settings */
>> +	csid->aup_update &= ~CSID_RUP_AUP_RDI(port_id);
>> +	csid->rup_update &= ~CSID_RUP_AUP_RDI(port_id);
>> +}
>> +
>> +static void __csid_aup_update(struct csid_device *csid, int port_id)
>> +{
>> +	csid->aup_update |= CSID_RUP_AUP_RDI(port_id);
>> +	writel(csid->aup_update, csid->base + CSID_AUP_CMD);
>> +
>> +	__csid_aup_rup_trigger(csid);
>> +}
>> +
>> +static void __csid_reg_update(struct csid_device *csid, int port_id)
>> +{
>> +	csid->rup_update |= CSID_RUP_AUP_RDI(port_id);
>> +	writel(csid->rup_update, csid->base + CSID_RUP_CMD);
>> +
>> +	__csid_aup_rup_trigger(csid);
>> +}
> 
> [Severity: High]
> Does this introduce a data race on csid->aup_update and csid->rup_update?
> 
> If a stream is configured in process context via csid_set_stream(),
> __csid_aup_update() and __csid_reg_update() modify the shared state with
> non-atomic bitwise operations (|=).
> 
> If an interrupt (such as RUP_DONE) fires concurrently for an already running
> stream, csid_isr() will execute and call __csid_aup_rup_clear(), which modifies
> the same variables using non-atomic bitwise clear operations (&= ~).
> 
> Because these bitwise operations lack locking, could the interrupt's
> modifications be lost, causing the hardware to receive an invalid AUP/RUP
> command mask? This might lead to broken streaming when dynamically configuring
> multiple virtual channels.
> 
Ack

>> +
>> +static void __csid_configure_rx(struct csid_device *csid,
>> +				struct csid_phy_config *phy)
>> +{
>> +	int val;
>> +
>> +	val = (phy->lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
>> +	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
>> +	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
>> +	       << CSI2_RX_CFG0_PHY_NUM_SEL;
>> +	writel(val, csid->base + CSID_CSI2_RX_CFG0);
> 
> [Severity: Medium]
> Can this code underflow if phy->lane_cnt is 0?
> 
> If the device tree incorrectly omits the data-lanes property, phy->lane_cnt can
> evaluate to 0.
> 
> While __csid_configure_rdi_stream() provides a fallback for this scenario:
> 
>      if (!lane_cnt)
>          lane_cnt = 4;
> 
> __csid_configure_rx() omits this check. If phy->lane_cnt is 0,
> (phy->lane_cnt - 1) underflows to -1. This would result in writing 0xFFFFFFFF
> to CSID_CSI2_RX_CFG0, clobbering all its fields.
> 
> Should there be a similar fallback or validation check here to prevent
> hardware misconfiguration?
> 

Ack

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
