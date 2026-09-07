Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF9CBC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U02EUP5ZRZhbS3oMtEH+U57i6yZoEBXLBucozD7QlFA=; b=w9rJINlkR3fWBq
	PxEwODwH5SEXXREctkzyjE6S6S9ewkhbw/kkESsuJQ4HJI75qOGJe3nuz/gxxZjUOTEcyBg4FXbvW
	QaOhqSA/Uhlz0TZ6taZcSznycVSkpPY2AlLLPXViOs0UNwCpHgevv5Bkv7Lmbhi4AtABdIQ2ip3mm
	eWcOkVgmeShj1KJ+gOwcbwlMmWurVgLsSlXSoLmc8oyMXP4kD/Ei1dYFhc5quwaH2K0BgC4Ng0q42
	vjzR5yf4Sm4xp2V0moardwcSmyniqvkmk9zq6LOeeGOnMqH6Rw1lpGqW8vfYvO33GkK58GMBCPkXV
	cw6+KiE4q/z7y1NLQIQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YYz-00000006oda-2SWK;
	Mon, 07 Sep 2026 12:35:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YYx-00000006ocd-31KV
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:35:04 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 687AnBC23863121
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 12:35:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nRove3eF2CgDkgkhUEbbyBJwjMDlcAT0c8FXFh1iM4g=; b=QRgkmdzrNVdnI69T
	PKrlNWYQxgUMX2mQRQSdOk3967Omd3V8BVHOMkmjs9cTTI80MKneRVXWcXKrq8ye
	mycdtMz3FTmTgrx5fIOmGa+b5je8xkXuI7p4goU02EONZZsAc/H84jrH182RxuTK
	a10JW1sdvgPFW/6f6GCGRtqzepHYf7gTgKAJcE+VRPwtCUV3CsaNlPFOlMvN+/bz
	cw9UY8jgq+YwlJpKBPvsNP1n1P9LHadyCJrKB/wcGrwsLIXyT+2ipcTiYUWZZNgd
	pjVTwhF36h6/ZpOiHAGauosrDSqbt0bIVOyGG+81AY8Yg68Oa7kgpgFdhyZfd6ZM
	FBRXRA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghq66htpp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 12:35:01 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-737d2f02d2fso2750272137.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 05:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788784501; x=1789389301; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=nRove3eF2CgDkgkhUEbbyBJwjMDlcAT0c8FXFh1iM4g=;
        b=XqY6j3Wq/QtAfJ7JPNz1l8+CvRP+IDc0KFkFHP5etLA1KEfwzF8QVxnLOlYgJfqHJn
         KtZrOcNUAwNZ1oTfdVVPoYYWR4vSOJtkiZ9ExOtyYw4HNtJ5rwLPbrGXFQH+4tqfz0Bf
         RME0zoWTKN0oA+yCrFQTMcsYfZOze3Gro4wneToTGrdNpXvJX1s8p48bjwf7OfcvIN5V
         tEqOPg1eayMG5B/Sbvdb3EGFy0Z/JbyJPilxPH7OoCvSvzE9AtZOKm+MZ5g9++bPYNkQ
         HqceCWnsPZbHqzQgTaEIMcNV9rIHd3UPx+qncfyFBleLepDbkoLzR0uErltHHtLrJ1nz
         fJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788784501; x=1789389301;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nRove3eF2CgDkgkhUEbbyBJwjMDlcAT0c8FXFh1iM4g=;
        b=qOY742jQhBF5y3gVIgpVR8kR5rwr8lV3Imk9jCCOvXbBtF+q3A0pShMwYgN1umLWaO
         ljA9h08YFDaMH9uwUcsxrycZdOCjlSxbKtI8Gvz01II3kfZWf9F+JSxvu8cv742Hgok3
         /SBrxZ0TebKuXdqOEf2OxzjxgnyQGfyMso+Ink0e1qYqvyvNUrll+QFiiTcteRijzWwW
         Ohx8d3O/5nppfeptuw6oxcVKMF34epaDkdtWMDrpoytWTBD2poRmC4oAvqAfSb8tKrUl
         pjWmsvnOawX1U93LaWAZBBEy9X9G0Sf2Axd4fTkg2OMn2auwiLU1Pp1y4B1VHS0OjtLO
         iFbQ==
X-Forwarded-Encrypted: i=1; AKwUvBwq2INWFURp6QPKJLDGCdIFdNVQtGae+iMsAs/nII6ybHWzrV7FPaBgrQhdUAvGLGLf7VbfZ6z9E00=@lists.infradead.org
X-Gm-Message-State: AFuF++mtdkXqLyCsNVQ5x/u0yksyt1EfrbBUheNiAb7kDs2Ema8BkE7n
	m+xPy9Lclzzg0W3L5ADvVHg3P4tl58EKcJLHQIICKU+uOsiPsddlEBnNKUYR4wVjBkVaVkwkxwA
	nAdL2igPxFVadNBqEgqKfACrQGCnXtDxU0ZLcs9KkEJzmITUghGi7USDNLQSYhrCIxxOZ
X-Gm-Gg: AYBFou3KnydzSSV/Hqtef3krpwEBaRYuMHKkLHOHJvFcbiBJ1TTSTVm7R/0rELipirA
	aRt8+ExWdTTtYDQzNNPD60j7IRGB3SaRJiMzU3oSXWesuD9QtXLHTo+zf439LZAnqkK7ASLLnmh
	nBgRvItGplLx8NTpm42UeiKypBcwwBfl+yMBZ14r4denxIl0+FlePcswsPRUH5aA4MFX+DpsrrT
	E1RajPPZsBSadk22M/OhH/lXsV+SdH338JfPJ8MpOR48CZCVif/eyywKPuETEp2q0k/ec3sXR/M
	R1pD9/jWkThbkIzE/EOGceWHQVUiupEeH/XcLNbIxk1dycRorKSwcAf3ncWLXCRN0LpLp7g5JF8
	7Ktr6yJAlAYGi9h5PXu1LJasN/8u3
X-Received: by 2002:a05:6102:e0d:b0:778:636c:71cb with SMTP id ada2fe7eead31-78a4a9c40c1mr9992795137.10.1788784501180;
        Mon, 07 Sep 2026 05:35:01 -0700 (PDT)
X-Received: by 2002:a05:6102:e0d:b0:778:636c:71cb with SMTP id ada2fe7eead31-78a4a9c40c1mr9992772137.10.1788784500704;
        Mon, 07 Sep 2026 05:35:00 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885be01bsm27784233f8f.31.2026.09.07.05.34.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 05:34:59 -0700 (PDT)
Message-ID: <e1842799-2603-4f7a-b3db-623483bd4bd8@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 14:34:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 07/12] drm/msm/hdmi: Split PHY init from
 power up
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, olteanv@gmail.com, vkoul@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-7-67843277de17@oss.qualcomm.com>
 <20260828142231.81AD01F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260828142231.81AD01F000E9@smtp.kernel.org>
X-Authority-Analysis: v=2.4 cv=QPhYgALL c=1 sm=1 tr=0 ts=6a9eaf75 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=s3il5d3tusZ4osa2_RUA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: 9w1QXRqKUekSn7o4W4WX8EWXuWbRfe_N
X-Proofpoint-ORIG-GUID: 9w1QXRqKUekSn7o4W4WX8EWXuWbRfe_N
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDEzOSBTYWx0ZWRfXzTA5T7NTwyE2
 tRElmmhpQQYEj6Vk+NGQcjy3Vw2oHskYt+CSOuqoh9AfnniwdSN5MgjFcciS+T5RODO1HVde8q9
 PK7bhP4l2YhQbFGOmVlZRYpxHbqL374=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDEzOSBTYWx0ZWRfX+krmhLv3Gmi0
 8lpObj0bRK3SaIDQWutS494UdxFerNLgU/HSKCDo9uqvIU3EJprQ0FhWoZKjXZ13aXVpkGeLQz7
 4aO2rT0YR4+ua8eV8xY2I3o/kq4n3UpkcrQb1zbHdhCMRo3fYZVHyPB6ZJim5wjpcDfafZfe1zo
 aAOofBzLY62hQBirMwv6lGdOcg9OLOZizNc5hWzR5FDkrgI66gU5dLLg0Rtx43AYcFek1IYS3Q+
 SOG3gt6mbWBtuFd9Nhl0yxkEvj5eYuivxr4MlZJRNMX+UI/qED6ozEbTsLgKknfC1NApBkK4jaA
 PllrpaW47MSOB5o6fCtzsauEY+HblfB6/KxWNayYufow43Q+PblhALP7JeERRfW3x1JSTzPvuLZ
 B6hcjadWtBvKj9hjM8lb52JO00kAHC7gv1rQQjudkIOWS4uITZ8JHWRatg4/jfRWNX9wOXWvYVu
 QiGFci/VaxBOrkIbztg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_03,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_053503_913651_8D07E538 
X-CRM114-Status: GOOD (  23.29  )
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

On 28/08/2026 16:22, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 4 potential issue(s) to consider:
> 
> New issues:
> - [High] The HDMI pixel clock is disabled before the 20ms vblank delay, breaking the intended shutdown sequence and risking hardware hangs.
> - [Medium] Unconditional clock disable and PHY deinitialization can cause unbalanced clock teardown or CCF warnings.
> 
> Pre-existing issues:
> - [High] Hardware registers are accessed after dropping the runtime PM reference.
> - [High] Missing return value checks for hardware initialization functions, such as `pm_runtime_resume_and_get()` and `msm_hdmi_phy_resource_enable()`.
> --
> 
> commit 821f230494b55344c7aaf6bb73ba3e416ff8cb25
> Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Subject: drm/msm/hdmi: Split PHY init from power up
> 
> This commit reworks and splits the msm_hdmi_power_on() sequence into
> smaller steps. It separates out runtime PM enablement, introduces a new
> msm_hdmi_phy_init() step, and splits clock preparation and reparenting into
> msm_hdmi_clk_prepare() which runs after PHY initialization.
> 
>> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
>> index 9d027f96ae243..ead6ba3b8192a 100644
>> --- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
>> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
>> @@ -15,12 +15,18 @@
>>  
>>  static void msm_hdmi_power_on(struct drm_bridge *bridge)
>>  {
>> -	struct drm_device *dev = bridge->dev;
>>  	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
>>  	struct hdmi *hdmi = hdmi_bridge->hdmi;
>> -	int ret;
>>  
>>  	pm_runtime_resume_and_get(&hdmi->pdev->dev);
> 
> [Severity: High]
> This is a pre-existing issue, but is it safe to ignore the return value of
> pm_runtime_resume_and_get() here?
> 
> If it fails, the power domain is not enabled and the PM usage count is not
> incremented. Proceeding to access hardware registers will cause an SError
> or panic, and the subsequent pm_runtime_put() in the disable path will
> underflow the usage count.

Addressed separately.

> 
>> +}
> 
> [ ... ]
> 
>> @@ -341,6 +359,8 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
>>  	msm_hdmi_set_mode(hdmi, hdmi->hpd_enabled);
>>  
>>  	msm_hdmi_phy_powerdown(phy);
>> +	msm_hdmi_clk_unprepare(bridge);
>> +	msm_hdmi_phy_deinit(phy);
>>  
>>  	if (hdmi->power_on) {
> 
> [Severity: Medium]
> Can this unconditional clock disable and PHY deinitialization cause
> unbalanced clock teardown or Common Clock Framework warnings?
> 
> If atomic_post_disable() is called to sanitize the hardware during initial
> modeset (where hdmi->power_on is false), msm_hdmi_clk_unprepare() will be
> called without a matching prior enable. This bypasses the state tracking
> guard and triggers a WARN in the CCF.

It's pre-existing approach but I will address it in v2.

> 
> [Severity: High]
> Does this code disable the HDMI pixel clock before the 20ms vblank delay
> inside power_off()?
> 
> Because msm_hdmi_clk_unprepare() is called before power_off(), the
> pipeline is frozen mid-frame before the delay executes. Powering down a
> frozen display controller mid-frame frequently causes system-wide bus hangs
> (AXI bus stalls) on ARM SoCs.

No, this is just pixel clock, not bus clocks.

> 
>>  		power_off(bridge);
> 
> [Severity: High]
> This is a pre-existing issue, but can the code following power_off() access
> hardware registers after the runtime PM reference has been dropped?

Ack


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
