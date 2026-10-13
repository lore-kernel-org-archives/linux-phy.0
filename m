Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B0ACA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGlh1VPVjqGVD0ayofCkbbd6pHM6TrnoAJ9ypYicLpI=; b=1h2efkvVoABBHC
	//kFu1EE/Ql2AAkqKbla4bgBaMat5aV6zjYrMhdQiGhX6ypNSOW+AGmlfK3eY+7IoqaF8BvHSqenO
	pdTlWvxn2R4iTnn+P5t0H43MGAoECa16ibp36w/m0t3WZzcLoYsxu0qVIq0hV8B0r3wHNVxD4lVlH
	xPnH2aCRc2XnkksGR9pqCLi+Z49Wmc8aF7U07NxrxIPcKFLaNeSQF5RalYvmfiB3l0rXJpT11rx7E
	oaWgh/Js73tMS0bA1cPHHEkmjHAQsqarNnzqFWxd4WCCiFnUjJSl1J1Hp4F4hBXgcJwCAuuL2egt+
	gR9l9gnCg4QdNM0Iw9bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaC7-0000000Cdnq-3F03;
	Tue, 13 Oct 2026 10:57:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaC2-0000000CdnE-25V6
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:57:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8ODr23054788
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	riNBUs4T/qm7wz/92/UFK8rqhKXsDLbF3jstOsmwjno=; b=RH1HSja6OzwULZOW
	n+75njZxui2mLMKvE+9lWApKRd/Tbf6gBy0ROetmD5BGOaF+zps+guwsEVsPnybd
	4rTQ0B26ue3XCBvmnV39dH7eDhT/rK0hkfufv+DvNDkRDqur9nqZO3Li63raOBJo
	81lLepfchxAxTEohy25WIOJalI7hi/cIEU0ZNStvge34Wv3NKmomoIpJDn7DKYh4
	bHOknMC6Pkvu3az5oF5c7BaVlxRsRbxUu96oHp0QiMTCeQ3wiGx7PCI5RhLbUD6+
	xTFij4jZYcdfVlQz6IhHOuAOfHjisVU0b/nTTmCkz+tVyRH1kp6nskL8DtAKKiAp
	emrhBg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h93aeuwtj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:57:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5350d8a2368so6290631cf.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791889033; x=1792493833; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=riNBUs4T/qm7wz/92/UFK8rqhKXsDLbF3jstOsmwjno=;
        b=YUuparMVdqsYRoUek14DOxRxlPlNh+AmvILBJg2Pg2hoaXGpb3fGooO1mDJ7wKEjb1
         L5A5qHvQIQ5d39QrTFFnz1tYPDpBM2FRROqbMYGE/v3AkmH7GdAqRoE3jtCAT93lT4KK
         JunKk3hxF9kFGcQBfo9pxZe7JGQXG8+uYGlmspCUIgK1T28iKZCuHOgyc5E/dQA/EOBX
         WPAyvfJmL+QYdfOvcCRVB0MxtnXDY99mSGcgUnRQTz5ZCnw9NSgZim1uJyPCxHkO2JvZ
         T+jVzPjGBbTfVG9sdncXBFTJzYZ9MPfKlJ+JUdmsHYpnay9u3ixrL+JZRbSYlaKZEGHw
         S39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791889033; x=1792493833;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=riNBUs4T/qm7wz/92/UFK8rqhKXsDLbF3jstOsmwjno=;
        b=u+L8yoBQ8HsleIlxdYDVXJ3D+3wrtB2NfXU9fFxuTDLp+ta1tN53u0b9YQLgmPItCl
         ZiqslkArw0+j5W62cFsh92mE37POwN26B3oAgDYC/Y/EPq2E3IzqlKYtRuAF9b6AckpE
         wXbL+hJNMg9CgjuszmAjOZmw+ftHfAozEd+dV9sNM1k5ik2lDlGGm24dA8Iir+xa4sdI
         p3hpA66/cXqj48k9Rfb276rbbWFPmq58UOjYjq1CEX0End37NCiIRErwz+ERBNSYnzee
         /91CZxstga+TEuEKF++I2dNhZ2fle35z1Hm1lirWE9Tvt5OP/Svxd+ghixqVMehXEUPV
         n0LQ==
X-Forwarded-Encrypted: i=1; AKwUvBzm97zywV9sxN9lQ4knYPRuBRhAkCwhy04bzWJnmZ7XDEz4O3CRmmTmA05Ajn9QJeLlTeXeekRtenU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLI51bkvfWO08RBkF/RmbCqo0rdtFIdF2oFdoFA3oNXhEb8HbJ5
	+evigW/qJIOayt1tTpqHpgiQ7Wa+iT7U1G8aM2ecM6GXq8BoHrj1Zus+MryjaUraUqmwu/Nf+X0
	fV+EC1SfPjl0SgydIyLNXxqDa3gDBdDf2GrHkf6Z+/TpQZTcL3tziczJdd0Z5+qF8JVYw
X-Gm-Gg: AYBFou14U2st+XaYh1xHLICuPZ38y+zTUY5PQtkgZu5DI0/jq78HV0hIattHqA6aEQZ
	HAe39wSUN7qHKNymFRP+0RTlJl4e3CxSEdBJ13eh3YvTeQZ5eN1vuPpTt75Boeuc4JtTR5ZpB5R
	cfpTU4/AhV8YI45ZVI6bmRZ3saHTvGmhKaIQii/sRh2xzzBgtOm5SRWUYHCBi1imUOM+EkJQfBx
	cT3FiA4IK9veq4xqVQC8h6d+KMJS4qfKdLbKfomvLDEfzerv4k8a/JRGL+Wq4w3sphKWD+hjqwQ
	C3P5b4l+nKlAmN7Xrvpvxt0E7SLgWOFtDJjbDHMicLaXkL0vN3qB4KcHDMkIZDn0zr405GZl4w2
	qJif/empuLtc6ZW8sxutGRQ==
X-Received: by 2002:a05:620a:3186:b0:939:8bc:8826 with SMTP id af79cd13be357-93ebd10c0e2mr2382465285a.2.1791889032630;
        Tue, 13 Oct 2026 03:57:12 -0700 (PDT)
X-Received: by 2002:a05:620a:3186:b0:939:8bc:8826 with SMTP id af79cd13be357-93ebd10c0e2mr2382460385a.2.1791889032022;
        Tue, 13 Oct 2026 03:57:12 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b179dd395dsm6278732a12.17.2026.10.13.03.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2026 03:57:10 -0700 (PDT)
Message-ID: <5fd88970-e8fe-4dc4-bdf1-f0e9447f4462@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 12:57:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: phy-snps-eusb2: Enable AHB2PHY bus clock on Nord
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
 <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-GUID: 3n1sF4n7qNuwtgufmd0yCsafQJtvB89Q
X-Authority-Analysis: v=2.4 cv=JJuuIMKb c=1 sm=1 tr=0 ts=6ace0e89 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=GgWLzTfdAFqkLYX6_IEA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX6mahG3AvT941
 hsLHe1Wp91eDxYeX0rwnb90qaOE5ADSk8OBwlClE1dPsiC6rzWjhe2E+g2yiuYuVfOAjNxN6ikC
 s+ajWbYeTEUoCmiYsKn5NDoLM06Q/OE=
X-Proofpoint-ORIG-GUID: 3n1sF4n7qNuwtgufmd0yCsafQJtvB89Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX/fVYP5wjjnuH
 JqBCuQl0sDH1Ft5L4cfQbfczdTUEyiL44HlQYpylZYOZXpMjePsrIdyizXF09HMSR5Al6xP1vC9
 oM6xRH27xfWA8jSyt8u8cY8LAXbl798KHbsvE9AmoBUcKvyIWJSCo/z+RFEU2oH6wnhmLqvFB/c
 w1sa/zwXehr9qloYG3TeC97J0wSiVOWCouJwDrlXA8N8kXpp2c0li5AxOfltJCrw/oH4VFiuZce
 usj+R8B7c3OzGV/IysSIMMLgl+C8IyMGFX1O+a4juldNPWX3F8ELBAHQ08VDo1C2DeZQJVSJKH2
 mlMaKFvQhvzsv1kcjhdJv506W55/wDXy6Nngock5+LfR/dsGkRNrb0+dW+/r/S+zZ+BFq5Z+d2f
 XSzjfpuzypW6eESCejISnBvLoaLdxmvIV6x+3UKbjPccQEugN/gSBDaShlU2lzuGcW+z+Cgdx3z
 ymoNlefzaVLylAeCqgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_035715_975510_D0ED8DF5 
X-CRM114-Status: GOOD (  11.24  )
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

On 10/8/26 3:50 AM, Shawn Guo wrote:
> On Nord, the eUSB2 PHY registers sit behind the AHB2PHY_0 bridge, gated
> by NE_GCC_AHB2PHY_CLK. The Nord PHY currently matches the sm8550
> fallback, which only requests the "ref" clock, so the bridge clock is
> never enabled by the PHY. When nothing else holds it, e.g. on boards
> where only the USB20-only controller is in use, clk_disable_unused()
> gates the bridge and PHY init accesses go nowhere:
> 
>   xhci-hcd xhci-hcd.2.auto: can't setup: -110
> 
> Add Nord-specific match data that requests both "ref" and "bus" clocks,
> reusing the existing Qualcomm init sequence. The bus clock is enabled
> and disabled together with the ref clock in phy init/exit.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
