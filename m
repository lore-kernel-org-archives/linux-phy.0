Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B892CDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 11:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFkXTXvymSzWx6UIee+LTCRdP+fQb1Qp5oXMfZAlqoc=; b=LEr2NqcDnxEtTz
	JwRk/DYLiKsKwRw5D1myRkwMNnmhw7fqdoopoCV+8uaJM9n2STeGu6y++/o8JUowYPClaFnz9wXMf
	4ewtQVhw+kigRYKG7+sBacOZj3OS8//5YbNPnPimmyzd+6lsqJ0zQsjN05j5ZM2k74QCXaJ4JOPN/
	obLAouUSPo9BR8Ljh8z/OoM6hcu1QDBbIx0aJEysaDVT7L0uBECn7bp4bN8hzP8zzUma50ErPfA5k
	ULx70PamdaZL2xJAX5CRQBQybe2wHYJZ5ui5B1nIy4ZQDro6Y9BkFrawea98O1CN9hZCsuY0ybg2S
	i152MjmYMqbqAzZj5qeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzE3-00000006Ay8-0SWi;
	Tue, 23 Jun 2026 11:23:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzE0-00000006AxJ-0fIb
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 11:23:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NAsIC04134367
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:23:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mAVIsyi0roMiNG+3y68083oAhmj4zDD/EfEM2kSD1qg=; b=cbXilyVI6wW8w1uJ
	sZXyG8GJmlYGOYwDI2JQHfWE9oF9tIeIQbhrCZjn0pvbKS7li7kBxH98HzdSka4y
	hFGhL+SDLgFikzzemVUbKThM20Xlmi4hoEl9jd/jv+nKs+Z2syIh0kPDS1LDNgf0
	zO1b3dSG+qfnTsNJ8yodH4frZdovKlS7FD6chm/9yp+dQxem+d78ngb3/OJwYiAE
	5uQbWjnerSM/+XhuM0y24R/kJCS2TUKgaigmEShJh3qp6xGxcy7NkB2TFpvgcnEG
	CEuHH+22bN0XUk1ePdfwwmZUlPpdf6ipYArWe/Vb+os/huSVJ6y1B4I67aRCdlEH
	mNNngA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyqe68h5c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:23:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9156dc90fdaso90147685a.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 04:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782213806; x=1782818606; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mAVIsyi0roMiNG+3y68083oAhmj4zDD/EfEM2kSD1qg=;
        b=cBrIMqL7ajC4gji5DjkGV3nmTga9hZL1cALdZXOmi2ZlnNn6Jog4FblBj2P6GlN3aQ
         5BPQbN4myWD4KnV5jjXBg8/KkV9SHDITZR71RMrH7R09Ts1JmFYdwtheqHm8VXX0NHzs
         HFOYjX0UE9A4UQ36V1WuMffOxffXhXtQzf2wz6OUMLcJ8LJEBMbMcYky+TL6piGDufBw
         mqvAg37Na1KWl46gfYiLptpWnUHp8zb0HZ/FQ9cM62ckb73hgNzWmGrZPOPwMDFG+c6H
         oodkIHCqC1IbssztSOIXnRSOTcn58F7lZ7BvnL6VClsxHa4xWCQgkvseoerJ97hGcQ+N
         QMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782213806; x=1782818606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mAVIsyi0roMiNG+3y68083oAhmj4zDD/EfEM2kSD1qg=;
        b=J0pDJ+ORN6TgS68lG6huQE4Wg/ftP887xUeeL9aq70wZEMCLqLKYnM3G1KDdjLNgHm
         NICXnuIzb3ngkTaXphe4KTY2dVjUB3CCDTrApXK7VDW4mxQsjwAth102/p31bdslgHxg
         frvlRkcn05I11TXUNl4kzWQS9b3uTUYBEugLozV6X6oTPwZj94xOPOJl6fi7/oSngtx8
         qAXOWQ+y9BHmXJffUVRGnF5Rl+XfKMMn/tKfK7ezkrHfVvOgsWsNLrdS2SWBSIxAQE+n
         0en6fFRrMFOs8ggyh2U+D5uAnwUzT2UzARLqaze9RDrqhL5CafKKgk4VJKCpxt/esoIH
         ePbg==
X-Forwarded-Encrypted: i=1; AFNElJ/NhOneIZtqk0R4xzPWAGgWo+Ige2eFFjd4aj45D6kPOLSDF9MgyTxTfLMmD8MNV+nv62JEkCOG5TM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1SQ5cmsyT0F3R9uh6XGTXFyW0O6Wc1ES/EuT6DTti1mKW+DMf
	5u4IZIrAqHeCw7iANXh2ZJpw25okaE53l3D/tGe1WR1RWV2ANdHYN5uDEfEyy5KQxIQPv8YifKu
	DOgPDcNKKWoyz//99yvXer8sMLICMNSXaaq4nI9CoVO5qrRlaxfJ4Urovy+hAx4h/6i59
X-Gm-Gg: AfdE7ckc8t8/n8UArUlxIQ8U9JbRDqUe8mObnt+TkU/wy9onAnSNdPdD29wQ6048cfZ
	B0PJo6dna+wLTaMdyS/FEebZL10AIsh/nEHA/57PJGVh82QwBcLBoYL2hxpMZg9xLxGG+vSOg44
	Ovf5uRyclPD14MEdz8eBz1RU0oIE+ara7CQkd7AtE+Qne9XcxAncWPP74tlMnhS+wn4wv/sb6pj
	WmukqnWkP5SEXUNHqFEkM9zsqQxpzLCcWQXJfZOzI489DG0leXYT/56mAQWK7OM7YdpjgQZ55SR
	Kq5t1jex+Tza9WOlOMzBKkWUT/G0MJOfpnq/jlOz8Ylt/gJ1uvyxhIHKwM8WJUAx+MQ/5Vv0i/U
	FpSbBAwVTeCraPgFGQTYaYJPfv7Jn/Blkmlw=
X-Received: by 2002:a05:620a:6cce:b0:920:6579:bee8 with SMTP id af79cd13be357-925c6f59e85mr504350885a.1.1782213806271;
        Tue, 23 Jun 2026 04:23:26 -0700 (PDT)
X-Received: by 2002:a05:620a:6cce:b0:920:6579:bee8 with SMTP id af79cd13be357-925c6f59e85mr504346985a.1.1782213805798;
        Tue, 23 Jun 2026 04:23:25 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e49a759sm503098866b.6.2026.06.23.04.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 04:23:24 -0700 (PDT)
Message-ID: <27db2e06-e3ea-4edf-a0b9-1baac1d5bb50@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:23:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sm8450: Modify GPU operating points
To: esteuwu@proton.me, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
X-Proofpoint-GUID: -FbnfzBWxZ7OKMYo0wy5EImrm_Mrj1Mx
X-Proofpoint-ORIG-GUID: -FbnfzBWxZ7OKMYo0wy5EImrm_Mrj1Mx
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA5MyBTYWx0ZWRfXyvSn/tZwu40Y
 G7zsMOaNVOMa872rQ4QdigJp7nFwfZUTlXcWqx6V10gakoiacoQkgoqfRG9YyYb8uf5E1/xxHyc
 plA2oKesPTFPGNClp/gwYVOcyWSSHBA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA5MyBTYWx0ZWRfX8MsCdBLhoVb9
 5m13fWZ+1kTXI+R50+CrMWBxPU2UJGd/iKg0OSMUShVIkt/3Iul4EM+INS6wFuHPQxBGKthjsCi
 b+IRBbTS8nkFo+ynONGIIj8uYTlporQUAV9RFAOjTeWDgw8P9BOpoXQta6ebhqkrek/xNJFN77K
 xWwHP7uzT6N6RvBkYUozOpWoYXhXMmxteCBjVwTukgHkVQbrdlTGSTonfBMGCdFgzYmOFdGLkn+
 GCvIyhuX0zDWPEZG4uwEHOaxhK1Pw7F7PEhLiUZZsUce9XtM0Rl+XQFeErZZRbfDPnElJu/uesJ
 I1p5xpM4xcpMgx1ANkA0dZz7kg+1iuY+IVg387HKw/BYl4tSUr6HNIdcoNwUchc369uh3uI4Vot
 pXLVemsxhjISTnYnbz42COg2gcsNwprdvA18lZr4Q8DPIu0Q9cYUpmfgf7pE/9dTWOGn2Ev3ngE
 cFYdiDJTdkOJ8qyB+pA==
X-Authority-Analysis: v=2.4 cv=OeKoyBTY c=1 sm=1 tr=0 ts=6a3a6caf cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=yh-zqMWk-TAmMPKcllkA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_042328_310478_6DFB47D6 
X-CRM114-Status: GOOD (  15.98  )
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

On 6/23/26 2:54 AM, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> These frecuencies don't exist in downstream device trees.
> Both 220MHz and 285MHz belong to SM8475, and I'm not sure where 317MHz
> came from.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index e34e3c05bf74..5e331a25e22a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2495,21 +2495,6 @@ opp-350000000 {
>  					opp-hz = /bits/ 64 <350000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
>  				};
> -
> -				opp-317000000 {
> -					opp-hz = /bits/ 64 <317000000>;
> -					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
> -				};
> -
> -				opp-285000000 {
> -					opp-hz = /bits/ 64 <285000000>;
> -					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> -				};
> -
> -				opp-220000000 {
> -					opp-hz = /bits/ 64 <220000000>;
> -					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> -				};

These are valid frequency points, although downstream didn't advertize
them.

Funnily enough, the frequency plan lists them as:

LOWSVS_D2 -> 317 MHz // in downstream, at LOW_SVS
LOWSVS_D1 -> 285 MHz // in downstream as-is
LOWSVS_D0 -> 220 MHz // in downstream, LOW_SVS_D1
(the above are what it says in the doc, yes, lower voltage for
higher frequencies.. certainly seems like a bug..)

LOW_SVS   -> 350 Mhz // this and the following are in downstream too
LOW_SVS_L1-> 421 MHz
SVS	  -> 492 MHz
SVS_L0 	  -> 545 MHz
SVS_L1    -> 599 MHz
SVS_L2    -> 640 MHz
NOM       -> 734 MHz
NOM_L1    -> 791 MHz
TURBO     -> 818 MHz

so in short, the existing map seems to be OK

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
