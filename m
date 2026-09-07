Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E0BBC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 13:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTBArqpHqsxcRoqA4KJqOpENryUu0kBqcBosnXwutNk=; b=mIzk/FWxZ7EHIu
	hKshaQTjhgMCmBM0GMKxfXz7ztM1nPksBvFQBDbdFQei8t3uL+S8x0K48WOobNL9AAD/2FK1BJwna
	C864o5e18Gd3+jT0RjPQFc/8EqvQyri7peCVXp4E68nqrQWDmgUrTFJEVgahtUy5aBHKvt35v9R5P
	jMRRooEzLYOLDZercD0pjFBdDU9SwcLCi9MOM6jro92JGKiJO+XCcJXHRoW6mwn3kE5eDNBvKToFd
	x9SaCm3zlY1/CafqH46A6fTO0vaWikxMI9r2e09uQ2UB5p68/ox5W+AXch9jbhncJ3X1vUdPyKKXK
	w5Oa/NbF58IAPokxl+eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Z6a-00000006u2m-0oJW;
	Mon, 07 Sep 2026 13:09:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Z6W-00000006u2C-2Jwy
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 13:09:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 687AmmsG809858
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 13:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GNY16aTxImYRYoULW+frsYnukMaZAxoXQCFZMgYWNiw=; b=IIZa9HO/AslX4dPj
	QRCBxEXExnjgwe82EyKstxIA984E62m0JBfn/uZsSgohFyZBJJ05eY8w6GZc9iSD
	UIfBrIfqjWyMG+wQphMs6oWh+g4vYcYZzWxWXjsojdvLK9wQ9UsIPuHdPsZ1ESCk
	aOYcGPEuTP609d9hlUZ5J7P0MPyUoIXF+6EV1Oq76N3WA1OEZ/JO19u4CNyMGcZO
	uwg1LBe1P3ddelUu+sbXwCdSD4bvOw4KsdhBCAuMVczzCT64MQs4PSPOPVABMGyi
	B5pQPOOiBLt6w0q7BtzKNpbX1q3Tdbpla20sZxHqsjPw9Ub9eSSaIZHzlhHGH5Yq
	xqBjdg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghrua9guk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 13:09:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e820609d9so580909085a.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 06:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788786583; x=1789391383; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GNY16aTxImYRYoULW+frsYnukMaZAxoXQCFZMgYWNiw=;
        b=I4Vp/PymMEd/p4PYy4+i54pJtwvU+TQhB38sriO+e5q/PfkEXE68vUAXN1aAMhtEWy
         ewG0Ff2xi3cydBzegvjFWnj5DZ42RBkMqMqnbFX3R+dUlxUaeFIkmpDFWitFi48M+ZSC
         k1zDiJVpi2WpRjZCsK0c/8mlXnIb42sFO+llfTgfvhaSPcRtLderWyI9jBIkYJxSi9RF
         2IVe+Ge7CcRYYB6qSmbJ3pj9dbJFItR48tmN0pKtqWhFyhsfiKSav4iCCASvTT6gLWTH
         sXf7Kd9DVqLWPDjSy3AaQXtzehTRzWoerrkONV3Wn6OoQCk2Ne/Y0CeoEniWKidCYQkh
         ZVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788786583; x=1789391383;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GNY16aTxImYRYoULW+frsYnukMaZAxoXQCFZMgYWNiw=;
        b=UiOgZYOjOcGlUle4s4ltkDrar7/nAbIPdfCZ/TpoMUZ1RMpGeqg2NzkwwHK57eu1O9
         EmMdafLhgJ+TCAhiZU6fGsxQ/NuuN3/oTaga7f/RHc8CluPsJV6GK47iKQcaeHfU9ydc
         fVkY+PVXK/xwWz5NEnKFBDoXFs+qUAQhD7avN9k4TUUUP+qWO0r8Eh1HHdfIHZVb+26B
         iJo63qEp/WZ7lW/L6J71OQVelPecWCDr/+YyVpADK4NbezWis4KOZF+b9hhubdlW8/H8
         ppyWixhDPGUL9NkUKo7f1lJIluEcKAwOqNeu3TieY3bI784cpTgzQfAiP8U8itGCHrKB
         rbRw==
X-Forwarded-Encrypted: i=1; AKwUvBx7lhUTKhQFUkBiVF2lELyg/In7oBQWa/iCot6dEH9/g4yRKzl3UKsDA6T4kebm95/B27lJnr8eXCI=@lists.infradead.org
X-Gm-Message-State: AFuF++kaGg2Z3XfI0D3vjMV2nB7seH/MBeHicRu9Jst4ThoX/rkpdkJk
	2kqEcu7VOZKACOQQ0JLoPO0xyGFMCtWv0MKrphzxA13uwv1+t0W/HXGnfbwYIiDcm4Axf7014uz
	nXNyGJCllJaOVFldWAZ6cdgL9Ys4QqpXxyGXxFuOpATEE2wugyExn2Q4ekh1PL54pJEWA
X-Gm-Gg: AYBFou2zmPySTIBEPQnUlClf6ppw+VgLSRIRdi5IL7tWC+h13Mx7iHQTA6ya9+f9fqg
	6qbHvLFmR7jHBnqbJAPVE8tVlyS8ky6UWVffgIGdaNnDNQ0iknqSfCJvxkiKD44o2/7ZsA5GLdJ
	bVWb2MXHGv2J+vEAk0B33niqdSN2UuCLM5PyKPVxDelF4XniOR3sOEwjDi+dWOeTjCSPV3AS/hf
	wMhmAxTq14gNnnz4SbTpgR6E134SgwqrfhWqgypPpNUw2fMzYlth4TcAUgrp2ow2IMk+DjPI4jR
	1W6UxDOMBNkk2VaMkZJXNv63Aq8PyGyzEMuACVvfaE7qJKzRwohQThnLQLB98dUu0oYtMkw3G7m
	VXXcrxDsb4k8O3X7HUW7ZAoc+k0Sd
X-Received: by 2002:a05:620a:2903:b0:939:7c8:78a9 with SMTP id af79cd13be357-939802f31c7mr2492763885a.3.1788786582810;
        Mon, 07 Sep 2026 06:09:42 -0700 (PDT)
X-Received: by 2002:a05:620a:2903:b0:939:7c8:78a9 with SMTP id af79cd13be357-939802f31c7mr2492750785a.3.1788786582247;
        Mon, 07 Sep 2026 06:09:42 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d0656e7bbsm208565105e9.10.2026.09.07.06.09.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 06:09:41 -0700 (PDT)
Message-ID: <97cc74e7-724b-45a0-a839-758c6fb383e8@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 15:09:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 09/12] drm/msm/hdmi: Add HDMI for Eliza
 SoC
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org,
        conor+dt@kernel.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-9-67843277de17@oss.qualcomm.com>
 <20260828142220.AB61C1F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260828142220.AB61C1F000E9@smtp.kernel.org>
X-Proofpoint-ORIG-GUID: GUwgs7VmcL1IpLpCXsKCMaB6wasP-luV
X-Authority-Analysis: v=2.4 cv=U+aiy+ru c=1 sm=1 tr=0 ts=6a9eb798 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=9ZkQsALANqwWZhioCQMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: GUwgs7VmcL1IpLpCXsKCMaB6wasP-luV
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDE0NCBTYWx0ZWRfXxpjbUkmZ0d/o
 4+3ipCTUn2b2DnVovyJlbFAaMbzj/j+mrcoW/kaJsCzw9PR+0Pq9bK7UxqF6LP/hzkG9H70z0Db
 N8a55DID4YrK8lsW8C9BkqZTjaOjYQM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDE0NCBTYWx0ZWRfX/nsnBczGxMNH
 1sBHSfTZJ6W5MADqcwVvqva/bNhqOvQ4jCipsXN0MBOC+c4cltjB9Nd6VHArqe1hSQYScoN8ljc
 sBshu5fAWRZbzxuwTIVbZf61XF6FOOkyvIHnr5zOW6redgaiMsqj6Fg/oVbshz65tcJLcQxnyb+
 2HWCjwXeRuWjHtGnLof2ynzQOxfytwlmpeqv3xzbZ6m0hsgRH43BBKwqYqtVEbk0hDmdqZiAqSq
 9AIqRNjDwen0s4cqmo0ebVjElr0MPU9GslWCbJW9Dbsu7VEx7wdkgPUGmzYwIDRtFX82gmFZ2QT
 op5g95+LA/fgTxP66Zp2evAi33Rh+3wV1lGwNS9GKGgotlvQWSjKIRj7ar3fti5o44663t+5z7a
 mPUfOwYTiKHwnrZi5yM8CkvWRCa7/GPRvu5IY92wDxxOlhLf7xHHkYXjCWwhFCXOjAi91nqLe5/
 HlKxmnoZpbZ18OM21Bg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_03,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609070144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_060944_598235_8E881436 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
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
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The TMDS rate validation for platforms with OPP tables accepts inexact pixel clocks by skipping clock synthesizability checks.
> --

ack

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
