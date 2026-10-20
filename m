Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A57E606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 06:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a6QEEG2M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Ym4JO2JD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GxhdnDPN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZeFMcZBfu/lYwNd8PQ7EilAdNFOx8c+c9j39+wZmic=; b=a6QEEG2My/VJhO
	p1YCvTpRZapRulQQrfq1iLZmHLV149nYBLDXa+pL93yK4oXawlSFuOIZbgTV9wxG5SkZ3paWW+C82
	Hx6FiOCSvEzC12R7dKFyvqLdS7aVEaUNVKR6jlseZsb89u1DtZXnc9Kj0Xw0H3kWNtR9BSV8G5oxk
	IUZk0Ttuz0XPLlrrzzG0Yxz1yzzR7/cIiqM6HYV2oK9xm73SEa6v5sQ1BbYm8cD5vs7eVFKyFbd8m
	trXTFPQMEMCviLZvtBhPFMF9/Ud71Hfq7RV+eNUEbPaQhiDGDd1GPrJuzsF7IXojNWrw4b72pnCob
	oCnMU+aHsiVHkQwOYYaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3HV-00000008vFD-3Tsn;
	Tue, 20 Oct 2026 06:25:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3HT-00000008vEs-1pXg
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 06:25:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69K0tGlM2877942
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 06:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0Jhhz7Jm5MXHM5I904h+PW7q0Jgx/QKjpzpW1joGwCk=; b=Ym4JO2JDmQdY2DL6
	IOl2gpc1IKEbIxXTfv7Jjo9T442iMYFtjuvn6IbwN/93NMCH+oqVCU7V+JIOCZIq
	XFobNkvsS56ZPLbEslmg1B8OBICwE0s23jTi4VFyx1LTZQSuEv0+BeER+nrvIueB
	G5JzpaeHtzV+EklP/FP8mZwhd2bI4ans3MeAfQaW7ru4ls8VxRpMGIITCWtpk1aE
	aS5TQKF4sCUKvVv2dcu6FAu5p7ZjtUq/By4f3GD9SHXyHj71IEuDUTRiYHoUsmFu
	j+433sn2E7I/G73LbdS+tmyE8Ohl04UwoqGY0SisuYek7VRiFJGf1czVPJo1RsCm
	wDt7eg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5ps598-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 06:25:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f1f1f2ecfso93999685a.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 23:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792477502; x=1793082302; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0Jhhz7Jm5MXHM5I904h+PW7q0Jgx/QKjpzpW1joGwCk=;
        b=GxhdnDPN7XHQgX0M497atun6LOIu9JHmeaVhBZRkEtuRTqA6EvvptBdqbX5JmEdKrX
         EWyjp3gVgAc8Ark28AOTAxay/137YtZnnsq7MIBW2F6PCvi4/vkN+83IrQp0QFORYW72
         y7jp/i9/PW1q9oPILpJ2/PWvzb25wS4FgfKGPAm0ia3NaAJLprWfSp02W65W0K8OwPZx
         z3tr03JQnN49/DwXOeiiwfD5Cnnf+a+ceVYHTPib95bDEhP6HbToUixgZbdMa4pdDeTZ
         Is633DC7FKmDYhbwQE3V1ZqZ/NW6+rGvFWjhusNBNxjeYJvkonQzIMrVq4l2XLSg0tvR
         W8kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792477502; x=1793082302;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0Jhhz7Jm5MXHM5I904h+PW7q0Jgx/QKjpzpW1joGwCk=;
        b=P0gbggZhTggHk6uPdp9PN0T3zRgUu4AbV0a9j7FQ5S8wwo9tmkFyA0CMLU0Sl3xL/+
         FXsuf25R+4C4oo5fx2IgHnStdN2/a7A0EPfr7qCHKXDEmFtbmHzK/IFAA84lFM2hjEdJ
         4Yy6HI3olcooPIpMux4RMhx/JZPw4obPX9hX/FTf08RZcaMy51WuhYp45dk+KPA1TpJt
         eNvTyr8SnJFOSGqqeL0IRAJigutJTrhajJcvLmdwL5JTzJossBs8r21gV0mhQo1uh+j5
         HvS/3bemdmzG5QX0Zl+VS8S0cvJl8gXGUvrtuaNoLy6A2NHvszzvGW0NYWSCsYu4GA7Z
         ccnQ==
X-Forwarded-Encrypted: i=1; AKwUvBzKaF8NF1FGOlDlZDL7yfe5sRtq1ujs4xIKCYORQHEeTPC3twbEBMC0hOTloMGAWaFWXDfNjaIYL1s=@lists.infradead.org
X-Gm-Message-State: AFq9FYLklaQDGRquXmtezbsj/0wYV5722d8EBZT0XZM73EAaBinCyT1i
	r9JxPkMSpjHtlNDsVzVB4LcyazQGYOvtjBV86ZEsouSu7wpm88+q2YmTsGcS+AEnHRAE7MTfbsU
	QJQH2K9GiHyjHpOriI+G07zm8M7Spu6RTDkKmDIq23zuYXkytE0zLjmo7q3xZm5LW5ys5
X-Gm-Gg: AYBFou0KAMtvXYj8SG33qfWTD623wv7kZrnYZz83/PrtjO8tK3mSZPDLQ5lLvSkQPaF
	jbIk5IndulpaaPk+cm5GLdNnaErDHEAUp59Z6thpQM0y5VRiAPnnRi6j8atzozdrk8fE8bj2DDe
	bYE2RD4Z/Wy00zFVB4jXziKcUfEfAnexKKamIYWCW3uKnWcKSIP1c9QpSWqhHrbkbMgU3xFDHoV
	lP56YM7UyO9iEjbeIfBHPv2y/5WZFPgbvAwMWY2GdxuANFJ1UPAjmX/dRV3naKS9iPmQG6CrokL
	fpcwvqGyhr3XhyFrh3anhgQWoyA/46Ofdo4xF4PJhjBH2YgeoTo2LAuxkI5ffL0w16oORGv86Vr
	N5CjfY9jDX00lX6kU/W/qQg==
X-Received: by 2002:a05:620a:4402:b0:93e:508b:7800 with SMTP id af79cd13be357-93f29a21553mr1896403585a.0.1792477501778;
        Mon, 19 Oct 2026 23:25:01 -0700 (PDT)
X-Received: by 2002:a05:620a:4402:b0:93e:508b:7800 with SMTP id af79cd13be357-93f29a21553mr1896400385a.0.1792477501350;
        Mon, 19 Oct 2026 23:25:01 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c409239c154sm451125366b.87.2026.10.19.23.24.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 23:25:00 -0700 (PDT)
Message-ID: <878766b7-b450-42ae-be1a-84662e93f8da@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 08:24:57 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] phy: qualcomm: m31-eusb2: Add register XCFGI_159_152
 for SE0 recovery
To: Peter Chen <peter.chen@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
        Jack Pham <jack.pham@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261020061811.3127511-1-peter.chen@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261020061811.3127511-1-peter.chen@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DrrDa2/+ c=1 sm=1 tr=0 ts=6ad7093e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=HTHHE6YBwdBvLKPXtpkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDAyNSBTYWx0ZWRfX2WN+K2TfYY+8
 qS4WmNPDt4G9STXMIsMmGuXEfY2933dSpeu0VmwkPKCd4O6zdkR35tswDAjo67tgLN9SwnRaoGs
 uZr2/dl0DBoWct6cVnex/ffIwZWOxtv7kBeSYiGF248oyLxMa1QMwQN2lS9/Zf1Pq9QLI0SFpsS
 5Xmh2fGYzGodmm8eALICrvOxDAWNrALwV7Zj/fAZoDEM53a2709Ug+nFaLAe+oikyyrfqoxaDu+
 SKGh06IXY2IeHMYuJF7JMxPEcCYfkF26U7P10cglS880vtnzy+xM4+QSaEji4c0jOBbLnxuecuL
 pkco5unmAATsBFNcfBLbhL9CZn8PRJfuPtNSU1VlsZhzvrpnnL5mfzA9Uxq7z7KLoI2pPJel5/d
 4/HdvIkHLBjZgIWTNPyKNxy6Q3CB14RJqysZmAZXdgYOmbn07H0jWz88PWOTcYnRBMCojl+mw/+
 E/xTnU5rxW6eV3QwOzw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDAyNSBTYWx0ZWRfXzJmCtbaJtp4i
 F4W6O2cX1Ep8UuHGc2nKbE28oSC/Yc2Nd4Quc7qJaktZIwrS+2Pmw1qc8poGUMUHM7niyCY+wDt
 fG4ZU8q3wOYvbRGkknp/C5D4AUzQZtw=
X-Proofpoint-GUID: 2o25epEA7lnDmAYN2oKPJEpE4zqzebDH
X-Proofpoint-ORIG-GUID: 2o25epEA7lnDmAYN2oKPJEpE4zqzebDH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_232503_508950_E8615DE6 
X-CRM114-Status: GOOD (  13.90  )
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/20/26 8:18 AM, Peter Chen wrote:
> From: Elson Serrao <elson.serrao@oss.qualcomm.com>
> 
> This patch introduces support for the XCFGI_159_152 register to enable a
> hardware-based SE0 recovery mechanism in the M31 PHY when operating in
> host mode.

"support for the register" sounds a little odd but okay

> During PHY initialization, spurious pulses from external devices can
> interfere with speed negotiation, potentially leading to abnormal
> behavior. To mitigate this, the M31 PHY provides a fail-safe mechanism
> controlled by bit 159 of the XCFGI register.
> 
> When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter is
> activated to monitor the SE0 state. If SE0 persists for more than 2.5 ms
> before entering L0 mode, the PHY interprets this as bus inactivity and
> resets the state machine to its default state. After transitioning to
> L0, the PHY resumes normal operation in accordance with the eUSB
> specification.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>
> ---

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
