Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFFF606A321
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 11:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SxBfUUz6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=dNSbFL1D;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=iU6H+gHT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xTBTS+BW3X5BffO3kpiBgjpBI9YJhBiyzkeIpXMyWc=; b=SxBfUUz69nTMNm
	PQtMUqIp3JNW2WJhbxa2aqgV6wED6u5IyBgF9rpPlNFt8rPLV4hlWNNG+PXfBNUl2bmS+bhdvEeG6
	9iuOt36Lig/JKljpHMpmJXPihOWIxuVKl6/krRXWM4SlDqzVMQKun3lJ5sfW/n/f/KgPIwCiHk2Xf
	4prNs7Cg1LbrXTCusK3QyWsqPYv2Ko1WIXe59w7B9v0AHV4ILaK8GgAbhX3nekjswEsqA+laO8Wf/
	OoIvlPfnVT+yoWh0k6dz4BeOFK6aFd2I8V0EP1/QFV2Cuffosp369U0TTMrR/yKoyK7phf/S63Pjs
	1b1otQ+X+SWOdpE0v/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUQP-0000000BiWO-3IjB;
	Wed, 21 Oct 2026 11:24:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUQJ-0000000BiVy-3JSw
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 11:24:04 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LA5jbC3449612
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 11:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uMOgubZ9POR3EPQUnP7Tc2q7GElsLYo5uPzAB2RExmQ=; b=dNSbFL1DE56q8Ruk
	R8M08kmvVdNhGeruKLN+Upj6jQNsDs+EaMp905UWYV4osNRX7NE1owPx70/BfzvJ
	Zu3We+Vsck6QDewQFRBwChkCyMNDYZTCelnthSS5YoR3RDjv4OWFt8YF7TLMtsRB
	3Daoa2V8xHSY+uS9og7zB7PueJ2vbAb7TWIqaU6F/P8U/rdHMUiiepEvx4kXHJBU
	kbVbgnw4Rx6kP0z/WcoOeKViKxLGvlULhVcR0KIb5VJ/caVdEhZuMuBd6Wd8L8xj
	pCzF12xEoNHS7Gk/6IxOWohafUvy+WcuslN9KkzEgAyjrWKIffZ17Xa/zSBxlk7Y
	f2hqTw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4heeb9bf3g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 11:23:58 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ac7a4ba546so1123900a91.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 04:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792581837; x=1793186637; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uMOgubZ9POR3EPQUnP7Tc2q7GElsLYo5uPzAB2RExmQ=;
        b=iU6H+gHTBeP7KouUedpoEw87xJ/am1ZoFwW8A8DpJtIocTCKt39lnVLzQ7rnDX6QIy
         5A/tIZF0jH4aXcOOnzvE5OesSph0VIisq+CK3dK1Qzmn+Qyt3Vp7GudzC31vyz3ci/cO
         n6PO+ngu+18l3hqslNEtl94W/pqiSwY4jWU8Mt15RAJ2BWn2goyMTicKKUw1XtiELVGH
         IkFge32kDfmasBtoKo2s+HI90xDystB4bkx6/E+vC301N6rO4JgZ1Qfye0MtjFBXJ2J5
         KJpDGKF146JXnoqF+lzzctbMFYKmbloHwKQzMlQS15/qoy15fMOw2XMmtZ3O4l6oxF44
         +H+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792581837; x=1793186637;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uMOgubZ9POR3EPQUnP7Tc2q7GElsLYo5uPzAB2RExmQ=;
        b=l3Buslu4jKLd7bC6r/bEg0T481g1WLhDTN71mXomws0yCkYWbvy60W8JyE76+Q/RrZ
         3gXifAYf5k55o1V6+NXuoIPI4W2hUzWDY7IhVthdp3dq9FEcj7A/9GnvSEoSTqF24AsF
         HGWOAf7hApZNp+T34HTOwauvoPfAkhOUxU1mbrwOpwxYogBZ6TVPqEWLdqLg3zCgJd4t
         HkSBT2AYj30vSCudgqEC/Rkkb8QfG8CcjIB/nKvqzxQNOfwbEdZo/bzThCHoe56hQ4/6
         z4FQRuSZ0Znnsg3pfIvS15vn+3tED2/SrtkJ/VMAyGAAP7JIm7b+qUKUurNm4RopNVt1
         dRcw==
X-Forwarded-Encrypted: i=1; AKwUvByZY0TSPWFMwUc4Kxur5A84/EyMWFm6J4XFodzgZvJbboTGpC27Xo/JU12PccVqnO85pRyl0+in2LA=@lists.infradead.org
X-Gm-Message-State: AFq9FYLvkJVAAfiKjsxxUQIQyRmszZDvuim80wcBO8TikQMJCgg8x9x3
	hwswbx5ooVxbc29tp7geKADQKHlqCl/gjjGcNwxpIxOQORbrNze57T5eG8efRynaER377GYzfuu
	fvzBYfjXtFFLzIrK+uOBJKG5Arv1t+9gd0E2wLo+shkRcJShfaiM2lR/u1LZYQvHUioyx
X-Gm-Gg: AYBFou2471HNIOEqy2brKZmWI5vs1P2yGMaH8W25oUtU/2PwulxDtDbYZQ3NgMVmwry
	/GhPSYZGDzw4XOd9hgv+1PHyIncgntX/wdE8wMD8hvlAFTmlW3uzfIekVdr2atlXPi82yqv1D7R
	hNkGHeHi39qhvIPkXyEtM3rlc5ack923zaffJj3pmwJgPXt7EQHOHRlReJ8T1eS0Di3wMbneaU2
	q7N8RZQESrWeyBYTaCfODPwKy4XJjAHpCAnguwbxI2l/Ho7HE6zIzTyYZ0evuJwcSxudEqm1Eun
	hygZYScvoyZEx/A02kiyajW8Elk4eLWieY4uGxgtqEBGC3CpEy7ADRDTC2+reDADhfy9D9WOP1O
	Uc7vUYIgFC6G2cISbooFuMgnAshJC
X-Received: by 2002:a17:90b:2c8d:b0:3ac:7406:b49 with SMTP id 98e67ed59e1d1-3ad86e96741mr999964a91.15.1792581837407;
        Wed, 21 Oct 2026 04:23:57 -0700 (PDT)
X-Received: by 2002:a17:90b:2c8d:b0:3ac:7406:b49 with SMTP id 98e67ed59e1d1-3ad86e96741mr999941a91.15.1792581836958;
        Wed, 21 Oct 2026 04:23:56 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ad811c515fsm3765832a91.9.2026.10.21.04.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 04:23:56 -0700 (PDT)
Message-ID: <e127d06a-2c1f-463f-a30d-ee7815fe4a75@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 16:53:46 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] phy: qcom: edp: Add Nord-specific register
 offsets
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-7-a2ab9af954d2@oss.qualcomm.com>
 <q7riz5qxge3gqjqz23xz5aecfhlg7bry5w3wzgblnyozm7ac7y@b5s3z7vk2k2w>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <q7riz5qxge3gqjqz23xz5aecfhlg7bry5w3wzgblnyozm7ac7y@b5s3z7vk2k2w>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA0NSBTYWx0ZWRfXx4thfAngbXhc
 5fcOh1kzOlUofYEgp2Ggif/y2BslmzMwm9eBAQoW33/R9fCqPTjbJA0aOH0fMeOVPWbjaLdKVXK
 LM1C9p/nBxHK9xDSxwKAgmm5wFYCu40=
X-Proofpoint-GUID: aHmhbeTOjFmReD5TW98Anl_fSUmFyFjP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA0NSBTYWx0ZWRfX3sPGwKbCp1R+
 WDVNgUs1OjDloA6f8ZApLPK2Rd7kG+5ndJ+gtt96hG9OupQcC+aAnB9iAqDgwct7rLTHE1tcmP+
 ku96nrYPnnwsT5NLnRXEFbcCoLS+7geph4n/4tiJIYSe7iAs4fgR7EV0iFq9BzVhPCj1CkvKGkZ
 EJva0WjTliZYIb7foJSdm/0wzWuYMhdhGo1iBE0gfbRUxNc3/jywBmR8ge7mwkBYx1+SNX4lsja
 q5YpW3SEzJ2agxIouf2K4d5wgTVDCFJzCvWK3s/rUXm7sp954mKFPUXHfyraHD9/HSD1EoKbkIi
 i5P9PuJQsJnGwuhC7L3+D7sC04+nIGGRCUnADSamAxa2Cw5OepUzLgMs9Y6EQ8xCo96SGPhpE1K
 ZIA63Z2m4vYM2B0XLd5mdYCu7T+O4FIb+L7XCRgKIBCrVPXbcA/FU0Mcr4eaP94R5IHxgEUSxLH
 UOV3yiDrDsNTf80ts3g==
X-Authority-Analysis: v=2.4 cv=R42WitRX c=1 sm=1 tr=0 ts=6ad8a0ce cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=YZ6MeopCirwGMcWCqvsA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: aHmhbeTOjFmReD5TW98Anl_fSUmFyFjP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_042359_952772_C8E9FB37 
X-CRM114-Status: GOOD (  18.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 10/13/2026 3:49 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 12, 2026 at 07:02:17PM +0530, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Nord relocates several DP PHY and QSERDES v8 COM registers relative
>> to existing SoCs.
> Why?
>
>> Add Nord-specific defines for the relocated and
>> new-only registers in phy-qcom-qmp-qserdes-dp-com-v8.h and
>> phy-qcom-edp.c so Nord sequences can reference them by name.
> Typically we don't do it, If something differs, it should get its own
> set of headers, describing all necessary offsets (especially for the
> QSERDES). Otherwise it's not obvious if other regs (without the _NORD
> counterpart) are valid or not.

Ack,

Are you suggesting that we introduce a new header file for QSERDES?
If so, we're currently using the v8 header. What naming convention 
should we follow for the new header file?

>
>> Assisted-by: LLM
>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c                   | 7 +++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h | 3 +++
>>   2 files changed, 10 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index a3c893f72908..d5c6835b6c70 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -42,8 +42,15 @@
>>   #define DP_PHY_VCO_DIV                          0x0074
>>   #define DP_PHY_TX0_TX1_LANE_CTL                 0x007c
>>   #define DP_PHY_TX2_TX3_LANE_CTL                 0x00a0
>> +#define DP_PHY_TX2_TX3_LANE_CTL_NORD            0x00c0
>>   
>>   #define DP_PHY_STATUS                           0x00e0
>> +#define DP_PHY_STATUS_NORD                      0x0110
>> +#define DP_PHY_LDO_CFG_NORD                     0x00f0
>> +
>> +#define DP_PHY_TX_LN0_DRV_LVL_NORD             0x00e4
>> +#define DP_PHY_TX_LN1_DRV_LVL_NORD             0x00e8
>> +#define TXn_TX_BAND_NORD                        0x0024
>>   
>>   /* LANE_TXn registers */
>>   #define TXn_CLKBUF_ENABLE                       0x0000
> I'd suggest adding these together with the actual users.

Ack, I will update in the next revision.

Thanks,

Nabige

>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
>> index 93edabb830af..008b17222a8d 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
>> @@ -48,5 +48,8 @@
>>   #define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
>>   #define DP_QSERDES_V8_COM_CMN_STATUS			0x314
>>   #define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
>> +#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD		0x17c
>> +#define DP_QSERDES_V8_COM_CMN_STATUS_NORD		0x1d0
>> +#define DP_QSERDES_V8_COM_C_READY_STATUS_NORD		0x1f8
>>   
>>   #endif
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
