Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3957260A5BDC
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 11:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fCpFU5SO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SsVTADHc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=IDvtiEGE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hZBjRHWr1xQX3l105W0lVrFOSdO2zDGOhLX8LJeiehQ=; b=fCpFU5SOZopwBu03Xa97oGfiyN
	Yt5F2J3a2EgAALaUWIwEVnFkQBiD3a1+Vds/H6do5CVTf12/vJM+8JPBgg7mGJLangdw1MRnb55Fb
	CDqz1PBskJ9DYq7vuJue79QOWRbudCv+j5NFynI/zbX7/o7OLbKRRnAF/ZtlEKH7quwncSL58/IU3
	1hoknDmK4DJDkHE5dzoVsXdrrmZd6gFD/aDqVH/6wYehqENPeeFDY/ETVCZL1gC5D9uneuNlq7gnR
	b2ioXIFfjCBg8RcyWohalQazp81GcXohukbrupZVnZdCLwHo5HIeeCJgfNFPHZU9CAU62Ki1tZWWd
	LnjgNeHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQjyo-00000003ckr-3VMD;
	Tue, 10 Nov 2026 11:25:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQjym-00000003ckK-3lZZ
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 11:25:34 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AAB9x6r4186613
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 11:25:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0rRn0vIVvyaA1qSueBAyNudw6eTRyVguZjtA8xYRe3w=; b=SsVTADHcHBKzYavb
	nLGn+1vz37WypDtAQXwl9WLGZkVuoQ4m1NRqcSaxdHThnyYTnO0hVcmigznimkrC
	RBBSvTFukyiqAcq2iPekfLjEW47+v7j55zYxvWlTbjYTlnAmgH4RIsmrpCwOtz1E
	yg7YplOeUaClzVsIoGY4g6tPDU19Cavo4Wj+6RzgQXM6f/meoRHJEAefXIJUL0a8
	BSP7uwfY3ZX46ZIPVeAf1WN6DyxiQKxmUxe8SbjvUWDSs+RHPcX9rtLACiw4Q3bv
	lupQCnp2RpGoXvH7pMkjuX7GB6p6qAuKX6f1nHsa4rO3g/E3cz0tvqs5myKQ8cwi
	5nw72A==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4huyvwgk3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 11:25:31 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-36f479b9819so3542051eec.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 03:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794309931; x=1794914731; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0rRn0vIVvyaA1qSueBAyNudw6eTRyVguZjtA8xYRe3w=;
        b=IDvtiEGE2ktS9b7MIpK2FBfNNGUxXer32bv1tEYKPog9w7DmK8ifazDTU+CT35xTJ+
         sXNgcfuJby7Vu7hPIm/9LeIsOJZuWA0exHoF0HA5PfT9RkEPKRP7+Fap3EwY9LFIpb7p
         UCLMAUebRQFgsRC0WHef+LOeZ82Qcv+3hArcNq67W6L6IxUSGJPdmMZNiCO9jBaYwnRm
         J+VtzVREcSNLzFmUhI3smXn3sj4Nuojg3VV7MXc2KfIAwhgzRk6XwJheVX1fFjz9D81K
         kR3XRNBTQt71qw5ITTpU40KWZ4ItVZsv/lQnDtJx3t9ieJecT4wSGERB27dxIwJRb9Py
         GPyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794309931; x=1794914731;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0rRn0vIVvyaA1qSueBAyNudw6eTRyVguZjtA8xYRe3w=;
        b=llJxepPHcgv59anBDrF+l4jC/Gu12bLWtJE+Jjl5Wwk/d/Kl7F0uxA9SbC30Y0aiyz
         LaT7BGyklSuue2Vh5iUGMa3tiQ6ttEAwTQinEF1WBb3Vgv7ypAcTAJjOdgXv7GbHZ3RN
         W3jD6n/kkzWDzLvhB/5JnbC7wX32yPjzdVE8EkmoLOx+kS6tY2CWd+jaWNsvQbD7d2YY
         3h+KgTLhoTlHTucY/WX2SJOWYcjOW4Rg5ul1+8rTATC/eLlXwykcUzxB7zIO6iSz1ePJ
         2FcqA1R4soLkHvT3didZYltS7RjuhmLTcUTUe0Fw1zGLMbX3KtnOevaiCmpZXTOq9L6g
         /6lA==
X-Forwarded-Encrypted: i=1; AL+hErEOqwVEFEhN9DUkzn9Li2P9JGzyPuDbOpmVAgaxaCUHjDTmlmiV0VxBhnw/IqalmgIiT/43BgWgh54=@lists.infradead.org
X-Gm-Message-State: APuU4Z8XOgBZqbPY6bC2t1IfHY/w7K62eE12bs/FPaTuchrnFe4ZCFSL
	AMWp0ZqQj3R2wGvWjCErINFYkAYwTITXtClqwdGRKQb5gb/NumHysaK2ZCfsAWF2KHsw7/fhD0x
	RHk60eSq8LiLLZJqQVHxcvN72YKqKtOQjKa3tXVaWXkCHpfpN+OSbGIdK5md7TAhE7KOB
X-Gm-Gg: AYBFou2u6hYY0RzViupAn4G3LzhLt/0IivWmmyrSBPoGWB0nEOpbr0U8xz4gNVg4AY2
	ObejLkfZsXrxcID/vTaGbXhujsPwSVdoP/ChPqdvsazNBtJLJPPH4LNOhcZBgP34JOX1VymU+E5
	ynm4xjcVX8O5REE+YBGsB9IxG6Bcj2tM6fVY+SHy5y7Wy0E9ml2DbYiEN5IHyDtEOzpcc4hRieE
	3o1YXxftGfOMv1hm1VRvSStrg1RPLpCWbnHzMUr4tNdFV6hBZxuGwoYk10vXpBn7I6swL46fHeQ
	p0FkNRHdElLlaqyPPSdN2R1Rw3uINlv8IMF7+pV5307BXRT2coMRZ7vkGWn/KVaYvbjaohBPq/W
	ZvtzVM1k9YDmnIRemPeowupbGPzrIdK7yRMJ+BJrP+n1b6goFrfPcaY7ukMyTk53YmPpPSakA0e
	xV
X-Received: by 2002:a05:693c:80cf:b0:36f:2677:fc09 with SMTP id 5a478bee46e88-37520217bddmr2806053eec.18.1794309930896;
        Tue, 10 Nov 2026 03:25:30 -0800 (PST)
X-Received: by 2002:a05:693c:80cf:b0:36f:2677:fc09 with SMTP id 5a478bee46e88-37520217bddmr2806016eec.18.1794309930393;
        Tue, 10 Nov 2026 03:25:30 -0800 (PST)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-375218c7c50sm11890587eec.29.2026.11.10.03.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 03:25:30 -0800 (PST)
Message-ID: <6f94633d-b134-4b1d-885b-13fea6334767@oss.qualcomm.com>
Date: Tue, 10 Nov 2026 16:55:22 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: i2c: qcom,i2c-cci: Add Hawi
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
 <20261106-hawi-maili-camss-v4-1-d528c7a797b4@oss.qualcomm.com>
 <20261110-friendly-chipmunk-of-variation-eef4cd@quoll>
Content-Language: en-US
In-Reply-To: <20261110-friendly-chipmunk-of-variation-eef4cd@quoll>
X-Proofpoint-GUID: NhWiUon0fY2dNeny_8YcJbYaOt6QwKhl
X-Proofpoint-ORIG-GUID: NhWiUon0fY2dNeny_8YcJbYaOt6QwKhl
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEwMDA0NSBTYWx0ZWRfX0se1/0ZeRQ1y
 NHh46C1ZaFrSEBCjiRjfmmCYV0Mki5clSTM2s3X67DdlLDd6R8/DLuvrLXD+Iez3i17xJyp2nD4
 +OYlbusydWcquH2oI71HNf5SRDv4imw=
X-Authority-Analysis: v=2.4 cv=NNpAaE6g c=1 sm=1 tr=0 ts=6af2ff2b cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=FDn66hFibwGTVsjr8H0A:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEwMDA0NSBTYWx0ZWRfX/mVGcsQiKcSt
 2QmxO7I0tbjRoQpnEwuZWJEsvNrdYkLXRt6QyZzeTIar26jXPjp92lngG7AqCxkTcQbGp+G+Mgw
 uB4r4xBKW872sXG4QEDRLcHgpKe8tTXaYkKUnbi0vpQBH2A2bLD0dSQn1BtEZUqxcIoyhdhE4e7
 RSk1++T1W9VAmTZ4K0/CkSdW6IdV3guBvttY8kWd+X7ndwUcBmUzoh0sb/pKon5uqIEa4Sv5RPR
 cqxL7rv3ksvm9x0QRRjoeNeHDdF0izoC4K1hupJupEyx0pBGTpLxhJbJcleO7+6LNrqYmc1qSnD
 Fg6pFYmRFObu7MQzHau9m3oD6+2Nr6tAFs4n3iTwwYYxOJ4d2pOspMTStOZyMwZJqeiW0hnyjYQ
 BPB9svyjZCLV4vrFdJiC2zglJ5UzjF2V0565WidELI0IiauYP5w4XKU3yMPXVUBqjETacrwJtDK
 bOQStg1QJn9muYtpgZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_04,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611100045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_032532_944549_D417B996 
X-CRM114-Status: GOOD (  10.76  )
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10-11-2026 14:53, Krzysztof Kozlowski wrote:
> How could my tag go back in time?
> 
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> Who received the tag and what was happening with this patchset in
> between?

You are right, the trailer ordering in v4 is wrong.

Your Reviewed-by was received on-list for v3 and carried forward to v4, but I
placed the collected trailers in the wrong order.

I will fix the tag history/order in the next version, and use b4 trailers -u
to collect trailers properly going forward.

Sorry for the confusion.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
