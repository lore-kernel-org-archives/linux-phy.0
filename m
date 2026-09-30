Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B37CCA5FAC
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 13:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DVwfIEibRw3PJrv4yhC8CfhI1gWMLbJzglfqjClfM8=; b=iKL6VAwKuxcgmm
	sKdxP6hpUzDIEQEbizQhEDRVhjoCy2btTGuvDm47EFEEdYKHs55Ml8rF2reSuTfwiKVCSz8o9Z43C
	+cQw+suBQ6cnw9H8NLZaFvkyejVTt9Jrd6DbaUluOMZEnmJGB8+0U53sQPmFquQpHYcYSqIFR3aDG
	5nfzsYaP9QWZf94lfPczodOqnHiU7hPZyDMTaCvoICssjbp8II/sJUlBaR63W5NCMUEI06W4UyWtR
	8e9U4ckZRsWB1W3AFV9S+wMH9NC+tjFQFU0WPpjgG6hH309zp1x892nUUhN6Yb6cayYZOMdRoREGi
	Bx+Y+VGS+Cq6hjPs7RdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBtwG-00000006500-3QqT;
	Wed, 30 Sep 2026 13:01:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBtwD-000000064z5-3MaP
	for linux-phy@bombadil.infradead.org;
	Wed, 30 Sep 2026 13:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2xa8gtSG0/dUR0SZ2+eHMRd0fwFlz1L6atEy4yfMV/I=; b=f+10JvA+M8C9TI8b5pm4iF21Lg
	JuUIW8PxTpHxEPT75Pm1K6B8uUrZ8Q1FqHuzeNPuh+5mI0Sm6v624VSR4+e9D9h/UcjOVdf0Hn9Fp
	nK2j2Udx4Ey2s1cvw7FlrSs8Gcge36Sy2+dYVYHz06oRzNgEzcnra4Qfydru7Dsc2kiq5DKMYMSnq
	zGIPtPrfvQJ2Ag+ofx08/NuuwBxrgwcw8uyJHT9HNnKBgReDfHImT9zMW+Srg+UAQu33gb6vgYxJ7
	MWfXVPPzzyWILaG0J5AKA2RcWM+w8aVf7OoOjstcQAlrdNoNDu5qupKe1tzhv5IWS7QAeVOgk4Lw2
	3fn1yoSA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBtwA-00000003p2d-1Unp
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 13:01:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UB7a2d3547268
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 13:01:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2xa8gtSG0/dUR0SZ2+eHMRd0fwFlz1L6atEy4yfMV/I=; b=pxAhCEIU4tZ8CeCj
	naQmxTO56CJPNfJj9QnATe0w09h3VhyaCC4SdQhnzIUSSdBppDFBSff3DD/zhGCW
	JpZqDB5xFc1T0D9cOnhjDIrLUzics3v+qFJx85RlZxhw2dcaQYB0UMTxuVGVJdze
	sI4d07vwVadMJBMe8r/rwL5g5f67FZwpE4uiTaH99fFXbKLfz3mIySBTVkS8Qc+U
	S3SSYh6kkRK9aolda720cqUrV7Exvi/+M4fPJl4utrJcxiVJEA4ymYGHxsKueUMC
	VBF89E6cQvpxPUV7ltyutk5Pvob8bxyhlAKLctknciYOhdH38jBBlbcSwX9j1k9i
	20269w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0w141p65-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 13:01:24 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-880babf652aso1990473b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 06:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790773284; x=1791378084; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2xa8gtSG0/dUR0SZ2+eHMRd0fwFlz1L6atEy4yfMV/I=;
        b=cRJ01ttoLFNBLqYdSNdEtR72jD7JElnZ6ejW/NjxGdiqNj/3dMXa0vy9vQYcyX8g5L
         NnUwBH3Ud+FztR+BUDPNzzgI8zQpwjKfCCoW9MAjP7YRBOMHT2IobM5+mw+GGHVEAME7
         9ZBVQa0ETgeZiJ0Lnb7cCJ+kQGPDnQ5fWr6bFftEQFCTBPAdivQVWxxKHN+YMc9J0tk/
         4/4sZK92og/LnhEYGJMBywrmFonTPgUA4/MkwMV3WJCvvPR5Q62GsWp0CcMOinORqK6B
         gZr82z/ELlm9PHj/lLRenLFyW61kB2H/ZBkomtrS8DWHvUgjjwBcEuL7o8/n2x2v4RtT
         zr+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790773284; x=1791378084;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2xa8gtSG0/dUR0SZ2+eHMRd0fwFlz1L6atEy4yfMV/I=;
        b=24MQDszuZ5nIkX2lXyLKOlUgTXFUz5Uf5QMIu/NFhiL9gz5VZIkFm9iLivXVjSuw1h
         qE64bmNibd6W8AAbp9UkDkIn+US+Yu9doFC1OXIqesgJ82Z36+xvPkO9Ca+1lbr8cYTf
         /SBdfdOBzgu3GC90vF5U3+DwMb/EadeYZ+ijDDzDyOwsHLth2BcKO7cY5YPoGL3YRSoA
         ONw1l2Vv8SJ0EeUtBRO1RcseSylM+XX29j4jpQBU1oXw7qPhoSl131tN2J2RNTckcyGq
         DbXPBNRoHG0nxlhiuMurk54Uba9kwAd2X1kuSbtOEeR7rMZ33pkutaOe1I1Vt6ZjDCLI
         silA==
X-Forwarded-Encrypted: i=1; AKwUvBxO8rBb4papwqiObeFX2DlxwP11TTuWPUN8XJDyfiLomU539H+XL4i6fJiIuW0ZosN9L1F4erLxhqE=@lists.infradead.org
X-Gm-Message-State: AFuF++nzcKcdsw2mqNhHug8sUzVRw34NlkpKgEBMUKKEh59NWz2OEo9Z
	MU+9jrfFho7z8m4jIA5g7hOMigAqXILiALA+Xv8Ag82ndLgP+QfWxRHDTXAmvb+JO+KIwKo743k
	hCA7O3eYI7ERqUbq/q60yjUxI4ScvXSFir4TJZs1FV8QzhQDsAsrnih+/jZLUbqWZC5HX
X-Gm-Gg: AYBFou3mI6wXSkzk1EqOPm6UIL6QK/c9PSh7CLeeD8f29qqxXKL+oJF4UPivz655j8U
	tOIs66uiBpUQWGFyYRWbTCijVVCH3S8RZRbNdZuuqM+tMSNbbakIhu+XggZQkP9rLjn8srPpBsu
	LTe2w+/ePs91fOgUoXpX0kB8ii69Mvi3W2ywyYgf7Ra8scOLvGLkVwgJ+mleg0hYHTgVpIUIv09
	i+NTotxlbWzfO7Viq05ArWAJyZF3U3GH78mC8i3EGMeWEMP6wc+738BRcc5mn+Amua0aosIHpXa
	CPdzpR+K2CJ3jn6duQbZ3j5ZvbBrutvl1vWUNmVfKzvbDb/yY9BiX5M6bGFbftlsmVbfE5RejDY
	Z0pjJ4zyQyh1YT48doBrB7v5IEOzZ9dLP9Mvsao1dVv59HSiNB5kyGfal4yEjD2c=
X-Received: by 2002:a05:6a00:2d0b:b0:872:a4fa:381a with SMTP id d2e1a72fcca58-887514f9b60mr680662b3a.2.1790773283733;
        Wed, 30 Sep 2026 06:01:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d0b:b0:872:a4fa:381a with SMTP id d2e1a72fcca58-887514f9b60mr680633b3a.2.1790773283190;
        Wed, 30 Sep 2026 06:01:23 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88768954f4fsm567114b3a.56.2026.09.30.06.01.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 06:01:22 -0700 (PDT)
Message-ID: <76154416-bd16-4721-b7e8-035aea1457a0@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 21:01:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
        robh@kernel.org, olteanv@gmail.com, media-ci@linuxtv.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-5-dcf3fd37f76c@oss.qualcomm.com>
 <20260929061712.083BD1F000FF@smtp.kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260929061712.083BD1F000FF@smtp.kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1MSBTYWx0ZWRfX50dl1wJlBK2w
 GqjL/rfqD/YJx8XWxqfDVIG1jBafysJIcohkhUlffcBwf/b52KsOb2ee0hten/Ry+xR3A6hjbkj
 JcYMlhpcfCf69b5r+3L8XMK3pn57u1c=
X-Proofpoint-GUID: UOZPQes2-TNsJ2NKF5aZNAlY3cPVxddL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1MSBTYWx0ZWRfXz/tXSQ7gKUsW
 mlB0O+Ei0IFqfxgMwp4aoI7TEU4uWhhu9xllNPe7WAkUd8wp3HnJJ0CEZWnMc392V5Kx/sZVIRH
 WJ0xDNnlFrme6/paELhav6X7iShxX+Im7jMbk8AkObCwnZuZJAGrSv33rMxnSM4RZMlErJkYBCh
 4j5AqRbjkHyi/zkYriDNFo6gQEMPWNDs0hKM3ju9oXgbrtFLgPvlxTHPqwIHLEIh9nQbFj3fDbT
 1+3LORadM680hp09RZfRCm5dxQMvdfT7rbJxDG1tOY7poKz9wtdOuURCvbq/LkcMl8N12gSOSKa
 5B0tOrSFOffECjdPSlsmztVzuNMfC11vNhQ/f+MDk1ozWTyOfTuAarh2wXEU6+37PLGQQIWVfwT
 T4t2zuNM1Oe7MQx1rd1VOR4XqOWsKw==
X-Authority-Analysis: v=2.4 cv=J8Q/fwnS c=1 sm=1 tr=0 ts=6abd0824 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_s29Hk9VdzetE62z_GMA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: UOZPQes2-TNsJ2NKF5aZNAlY3cPVxddL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 adultscore=0 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609300051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_140130_871903_2EBFC23A 
X-CRM114-Status: GOOD (  24.40  )
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
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Critical] media: camss: guaranteed NULL pointer dereference in msm_csiphy_subdev_init()
> --
> 
> commit 3c87101a27e8d1c1d3a64a10ed465e1ed433c549
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> media: qcom: camss: csiphy: Add support for v2.4.0 two-phase CSIPHY
> 
> Add support for the v2.4.0 two-phase CSIPHY found on Kaanapali, where
> the PHY is driven by the standalone phy-qcom-mipi-csi2 DPHY driver
> rather than by CAMSS. Add the mipi_csi2_dphy_3nm_kaanapali configuration,
> which reuses the x1e80100 lane sequence, clocks and supplies but selects
> the v2.4.0 common status offset, adding Kaanapali power domain and
> register the "qcom,kaanapali-csi2-phy" compatible.
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
>> index a528760487bd9..a0cd839c9948a 100644
>> --- a/drivers/media/platform/qcom/camss/camss.c
>> +++ b/drivers/media/platform/qcom/camss/camss.c
>> @@ -34,6 +34,57 @@
>>   
>>   static const struct parent_dev_ops vfe_parent_dev_ops;
>>   
>> +static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
>> +	/* CSIPHY0 */
>> +	{
>> +		.csiphy = {
>> +			.id = 0,
>> +			.hw_ops = &csiphy_ops_3ph_1_0,
>> +			.formats = &csiphy_formats_sdm845
>> +		},
>> +	},
> 
> [Severity: Critical]
> Can this result in a NULL pointer dereference during device probe?
> 
> Because this Kaanapali resource definition completely omits the .reg array, it
> implicitly initializes to NULL. However, it still binds legacy hardware
> operations (&csiphy_ops_3ph_1_0) that expect MMIO mappings.
> 
> When the CAMSS probe unconditionally iterates over all csiphy_num entries
> and invokes msm_csiphy_subdev_init() for each, it attempts to map the legacy
> register space:
> 
> drivers/media/platform/qcom/camss/camss-csiphy.c:msm_csiphy_subdev_init() {
>      ...
>      csiphy->base = devm_platform_ioremap_resource_byname(pdev, res->reg[0]);
>      ...
> }
> 
> Because .reg was omitted, res->reg[0] is NULL, which propagates down to
> platform_get_resource_byname(). Since Kaanapali defines other named resources,
> evaluating strcmp(r->name, NULL) with a NULL name argument can cause a crash.
> 
> Does the standalone PHY need to be consumed via the kernel's generic PHY
> framework (e.g., devm_phy_get) instead of retaining legacy CAMSS ops that
> assume direct MMIO control?
> 
> [ ... ]
> 

Kaanapali use the re-arch CSIPHY framework so that the resources like 
register, supply are now handled by a separate PHY driver. We don't need 
to declare those redundant resources in CAMSS driver now.

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
