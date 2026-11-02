Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BAF606A33C
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Cl3EfFV9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=P59XSVoH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=i80OyAfU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HrsbpjNrgXvzGjf7yj0tVN5l4+X3WyX2piBK4kXZMVY=; b=Cl3EfFV98QquCARoBSJEPhu1ZO
	UGj9cNlmt3LfbejmbBpsdyhizhUPmqNNeagcedMqeSVWZw2snRF+wNpHW8zZiM+EyW6C7QQzQdUDk
	ognnV4Q3ZA0glb3FhEACgPfCcNdBX5dIyL60d8bXtN/kWX8fIJQZ3Fvwg4w0vIUlFwxDZ1r7HDp16
	PRCEDhS/vzz4So5jrqhkiXIQ/05hNN9UHofbr/fQjqfNMaNfwjZcSvCLEiECVxgTcwWVkujsC0tBU
	J0jTfBd8VCxGEQ+JICt/Xt8sfqGowKa+L+RXw972kv+sSp7J3IDS19eRCN28IGswztazKnbgD3JL/
	/9DckcOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNs9Z-0000000GcbO-1Fr6;
	Mon, 02 Nov 2026 13:32:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNs9W-0000000Gcai-1OXJ
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:32:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A2DAbQY2360036
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 13:32:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tR+OZFxLmIVQc8z/P4BPDGWfdgglmzGmTKnECgqBzWQ=; b=P59XSVoHrOScgxf8
	JGN0AjrgGr6OODVYAzeCgr1p/pvq3QwDKplo1EDSSLQt8Cm4xW5VD9C949ZhH4B9
	C1P8FaxXatNj+Utbl1taKQ+7GamC1FPHchBqjKuHjOGol0sTs2+1GXW4GuIczrWm
	OAd9aOtPMfUBL17YDSHg9Sthv39ImYZ+RAAFJcYJzrsqe36CJUh2LcAkEvqPIO1h
	er5fdgUmIhjDg8rKPfByKg3MX5Rl815mwX3S0GvJfV2RfDX4rwY9pw3BJM9T6zpP
	lIdUMoDG+cSW3F2J0LFzdbE8nrcdvW5EQ5+WFpoKrYa03mc758EIRwCiNPO9HG4A
	XLuqJg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpky4hv9r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 13:32:45 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5eacebedc9bso62083e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 05:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793626365; x=1794231165; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tR+OZFxLmIVQc8z/P4BPDGWfdgglmzGmTKnECgqBzWQ=;
        b=i80OyAfU0hmGTAPz+1vMpkgdIptr4JVptpWM48CyKinf3M6xO4pemPjv0LUt7+E/rB
         rKrgrre8z2CFl/eZ//5KxmF2rshPpjlGv/K495sLmjj3JQzM3S6JMNCteeYe+Y+twXiZ
         hrnEVX5+JUOD8/8lWzGC/ZnhzEt0zAT3LZKF75ifMKZnGjUx7/gbd0iMSh6yCxu+tB8w
         fZvZ8x5x85/CTCdSuT4OY5e41tN30Xe8DBht2Pm1s95SDSHH5WAEVyjCPEi2chxYmPR9
         unAMYFl41EJmBz0evvZEOk8DDitLNvj0CooUZ5DPnItMgvB7VQ4GZ5/d7HIoOR/CKj8A
         1SVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793626365; x=1794231165;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tR+OZFxLmIVQc8z/P4BPDGWfdgglmzGmTKnECgqBzWQ=;
        b=fdf0vqFtbyCAIOq7IDXhu82Z2LUUER+moD3Mz57KKIAM56VCgU84NAxPRabt64Y4Eq
         N0QojpV2OzFhcZ4U7u6f8MhRYLf8/+pP+Z+HCHK2OOxL3oRcXjwFsRBIn6Gmwisfr+wP
         Pm6KjxbdYG4aOoP6YkgIN8gBinBVlV8Or58dd03Ctmei/NcY5vMrjZBP833YG7ZGaveU
         dROmS/Xn6eLA4sKTBIE+H4+MxlIN95a/95GuwQBu3ENMf3oiiLqDZ+WdLsh6FYQI/1fH
         xb9Nv29AC0rFKdJdp/OFmEotWo2h+FhkSSIpfnF2Z7XCndkDRtbDw2FFaMyioPhrP5bI
         r8og==
X-Forwarded-Encrypted: i=1; AKwUvBxP46i5jVGgYBE6OXGCHDhaHRwrcGQ96M+N5X/fJi7vsGATU4AfQY6WbsStZpSfglUDAr0Y3ZT+vd8=@lists.infradead.org
X-Gm-Message-State: APuU4Z+EsbNY6tJjxKB0VtIFj+f+jMZlu1Q5rZve3rxv4sWkEGHts9uN
	C6S93+w/5I2oYtg2NKDgbiObAI8zWNzQlhxKRqUkP+HoNXU16idR9O8qeAW4XL6U64+mQf//hwz
	/12zMGc/KpWaUJswvE3tlsViPgDCAPNtqNxQ1S/iFMDJHvcTD4jQ57NTvDGNCDTTuv6mrgiVKFR
	Kg
X-Gm-Gg: AYBFou3TGt9oxvfjKX2Dvdy1W8gzV23sIparYBzHi2ed5gyX/ZClUxxg/r0Z9Jpe+OU
	XR+3Ij1vg9Uf+emAr3tKIipzTalqTYtTuBjaWYYrm7zqD5gCE9PO06v1gk35QW1nAMokkI0eMzG
	T90GQFgCVmW6BLjwDjcqMF/ozzjGRH1oM1FBZCsmMTEzVntqS7j7D7oGYOI4mL4SEPr1Ea71p/N
	wUNULajJZW4Yj95msVBFLZxCV10CtPN68iXuOVLl+g5IUwwR5s6nHFkcShR0fAadjceeunMqVA+
	es4FLCL+Y3AUH36d8CiNj8deUM/b1jixuTtqi1unq2UVTpe+OUj4nJaVRP7XNusGSCZXXPmBCtZ
	J4qRQKlOr4L3CM9bW9Xh2jBoHf+ysO32c57ds5vrTypoB98eYcOphqH1s+fVIHghlWF73lLw=
X-Received: by 2002:ac5:c3d6:0:b0:5ea:a8cc:e6fa with SMTP id 71dfb90a1353d-5ec6894cb47mr4070329e0c.4.1793626364653;
        Mon, 02 Nov 2026 05:32:44 -0800 (PST)
X-Received: by 2002:ac5:c3d6:0:b0:5ea:a8cc:e6fa with SMTP id 71dfb90a1353d-5ec6894cb47mr4070290e0c.4.1793626364119;
        Mon, 02 Nov 2026 05:32:44 -0800 (PST)
Received: from [192.168.226.248] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4cabe4a98asm408806566b.59.2026.11.02.05.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 05:32:43 -0800 (PST)
Message-ID: <4d831e77-2123-46eb-90ed-dca3c580d47e@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 14:32:41 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Leave the USB PCS alone in
 DP-only mode
To: Joonhoe Kim <26rote@gmail.com>, vkoul@kernel.org
Cc: neil.armstrong@linaro.org, mani@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, val@packett.cool,
        wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261023123512.1912-1-26rote@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261023123512.1912-1-26rote@gmail.com>
X-Proofpoint-ORIG-GUID: VqZAG9t__cXSyrrCSLxytdP-3bLXSa5t
X-Proofpoint-GUID: VqZAG9t__cXSyrrCSLxytdP-3bLXSa5t
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA1MyBTYWx0ZWRfX28Uvmw7FXLLp
 0UesUb2VxQPpYftye9pOfSZ4MeFdmFXPPGbKPq9RO79W84WlXrbLA8gYCyd9A2KPCETupyG24qd
 sEJK1Ohj3mZbOYN5ybehqn+P1Yi37mY=
X-Authority-Analysis: v=2.4 cv=QoHLTlyd c=1 sm=1 tr=0 ts=6ae890fd cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=nlylCrhKMTYJnl4vkq0A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA1MyBTYWx0ZWRfX34klRCEGIF1q
 JC5Rv4ZxVnDKV1j93wdurqjnD+XrlfGpWvojbJ7Ggq4KbkFLMbnRqUTGtl/ft10YhcH5ZFwkNiR
 aFFPj81GxsrtZEd9AsrSh/YnYDB7CD3ruzZfgLDzfMfbOUchHcPT0lpAB8hQ++GIH1Fn+O5uwLj
 Av6Al66okbDqS7n/vpxprfsOav1JTcHWkdPUCqkhDJ/g2FbdHdIfWkQV8MH/Ddu6ZxqdDyxSC3W
 XaIsUfq3ndHtlVMxvWXD1nfmuF86mDJBDSn5ShIEdpNBxgCsZ0tT75xdgXYANkrrjK11oI9A9Cv
 ZhPbqp7FklEVgDLOcn+JkXHgggr/v47IB4lWHyj0pfesHdbpZNEyZgvw3vA3R3k+ERFwKfeHfcC
 yLhe2n8K6q+yLqrpV7xrDZu7EdpcLjnx06/dUPTl7hlXe0g7OEbLVjfJF6bCM8MBA9rNunWODkH
 fY1QA3KO3p/YRyYKcmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-11-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_053246_378627_6DF04D4B 
X-CRM114-Status: GOOD (  13.06  )
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/23/26 2:35 PM, Joonhoe Kim wrote:
> In DP-only mode (DisplayPort pin assignments C and E) all four lanes
> belong to the DisplayPort PHY and the USB PCS stays powered down.
> Three paths still touch the USB PCS in this state:

[...]


> @@ -4459,10 +4459,12 @@ static int qmp_combo_usb_init(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	ret = qmp_combo_usb_power_on(phy);
> -	if (ret) {
> -		qmp_combo_com_exit(qmp, false);
> -		return ret;
> +	if (qmp->qmpphy_mode != QMPPHY_MODE_DP_ONLY) {
> +		ret = qmp_combo_usb_power_on(phy);
> +		if (ret) {
> +			qmp_combo_com_exit(qmp, false);
> +			return ret;
> +		}
>  	}

The USB sub-block provides the PIPE clock to the DWC3 controller.
If we somehow enter DP altmode before DWC3 gets to probe, or if for
any reason we need to access that controller (maybe debugfs reads),
I think this will fail.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
