Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E662C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDH6wmFfmVjjTSrWmPlbkPrjySMjofKCCcvbM3vk/rs=; b=ALTJp6PwbDNmfV
	oTw71QUZqDWv2kgjs9Ou5PqKcBOqx0j1fpfU+objxdGFI4aw49A/nGfCSuYbmdYdFXERfJaJGLSUV
	eLeEL/WTIwx+PJuaIW5a88Wj2a0T3NSV+wFAG33Pi39vD4EgWYgmqYFmRkZGmawq/beQjXmImCdQN
	gpRICooMsM8v7HzHZ5SHby1Jvcx4TXrAiJperleiSadEuozmazpHRWrUJkr8aBymEyj4zRdZ6MINX
	rrIeaHJJbzsvhF2LCupwxRRaL6onU/Mlgb6vfqlCCV8pahvLTKq1OIMdgJkUiZOSQJPu0ZIKLETda
	dNPBqvSdd20PeWcC7SYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwHBP-00000007kyz-2gBw;
	Tue, 18 Aug 2026 10:36:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwHBM-00000007kyL-3d6t
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:36:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IABhZE599423
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:36:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fsiLbORmMBDg2q+JZLV1vEms5S+OIScEWzmE5hr8nRQ=; b=lNdd7neIo0X7MKcI
	wUwkrXo8AeadX3mVXD5D6Y6NRHoxRM5IL0c6sZc61mgrqWnjlfjNroRQTHZEANT3
	5i1ha4edRzNzCB88j7dZwE+RDyrw53lizpvVbqFeriiX5bAbqGAdMH/8wVEVMyiI
	eCW/OZqQ8D8w+5ch1nE0N2hQNT82CLYNBetTHOq9nlz6MCHif1oELpmaXpGF7ePN
	8igCrwyeQY11IEMvnT0MYBioW9FOUweFjHkEIOuldqEtt5euPDWypYof3az22+zE
	H+e2KU+BK+Gg54E0WL0uB9LL5kGPHzxKG+pqAwlv90GwWAhBWsYAy5zAFjbihMpO
	dWhZJw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4eqtsvhs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:36:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9349ba88188so115406185a.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787049395; x=1787654195; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fsiLbORmMBDg2q+JZLV1vEms5S+OIScEWzmE5hr8nRQ=;
        b=UfotEW3q7RCoV2CR8q35krvWm9t30tyVyFQ6OLHaSlEagclYYBnUiQPF0uugZLIfpz
         SVxJWkHj0AFim5cw6BGyLQcKkaJY/6IkzMWIe59in9eJYUIUH+p4M9+XH8k47y3lnF0u
         5vj9f/JRuqVdMp7mFCc10HmsYhtHtQ26C6FB+rlHS8oqzeSX+/RiWuHfXzf2aCmlUhin
         FNNX1XA0Cfx/FrHM24o79vpuLcYSa9u8GqnDwUB/HzxyUIuBAFcxiuI7S8WJ7pxYT5Ir
         poVEKnuFfTHGHeDt+ZSisJyFAt/3SBxW0zIEIiTWElDt94J/kGuh2UeFInDIkUn1eej0
         ByeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787049395; x=1787654195;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fsiLbORmMBDg2q+JZLV1vEms5S+OIScEWzmE5hr8nRQ=;
        b=iTYMqRwqn/Y3xAQS9QZBOY1foZHVUL411waD4C7jSn0wYo0AfTfkMC4UwCP3OYgS/F
         y+mUQmIY1nRNm2yWIUv63Zu8Bp9Uuy7IqjXXHaerHlJuUOXrivF40CTpT62Qx7oT93wv
         VeG/Ph/iF1vqFUyDQwAeNhCKgPn0OQeXxZnXrO7wwJoSdNDylj99m9EgQG2u7nwZ2+7u
         qTBbAsNQh2XFDa/KQNzVu7IxuTxw12xFY4tJO33+W/jhFf0cu0uqXzRzdLft6Ij8UN1S
         ZeRdkk7coNi4e5AUA8U5m+i5uK2tC3TQBtMvnZjMo+zCabAg+5Wf+ROFUh4P3u3cdEVC
         iymA==
X-Forwarded-Encrypted: i=1; AHgh+Ro10sBUHhrS8245cFAT//63T1nZoakBIolTxwVHU4DIfgt+9kK0sXZWl5Wad56vGsVguYBeOt2pPmo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGvUwACBut3yltf1VLKyASHp7QLf+516Vf0GpdbBoYPhPYmZo7
	Za62HW6xUNLAyROJMywSSOagonuxR71vGoFrlWQD4QYF+k5DKFF8XEGvmKPOnW+Hda2xdlMI5SY
	3OLZKojPH1H4mwI8gLX9++DKxnzqnKnM0p8WIhp+7Z350G9Sa5959RaDaRiVKkQ3D+FG9
X-Gm-Gg: AR+sD1199WiJIzXJuXzM3tk7RQuYJQX5uObVXsZC4A1dFWKR2JEGgNZlugoipGi2cyq
	va0KtLBgEKGeWkZslrPh7M49zwiq5X7nL9s+RXvArxgofRpoCQ8AZqYpMphU4ZCy1KQlpfqZMkN
	cFWy//Q9zOmj+/WueevcvHfbAxF0v6D0OttzDWEAHYwWIFmx+mpID5C13z5gHIRn3lCL1nH18dI
	7rAj6ePfi0ALSD6nLomcDihj7j6GjOLNSOfng1C3U++iWd4nu1rEMkGogjMz42Fora/tdc4uaA7
	lw2C2oyQFh9rtiw1jbfw8A+jmmO5bMgyfR2ui+SbZWWs3BBU00gpqAjuePuQskQ7VO0UXh8dVol
	MbimaiiJRzUphv3ox5ljmVbim
X-Received: by 2002:a05:620a:7083:b0:930:a08c:cf9c with SMTP id af79cd13be357-936d239560dmr2269218485a.2.1787049394881;
        Tue, 18 Aug 2026 03:36:34 -0700 (PDT)
X-Received: by 2002:a05:620a:7083:b0:930:a08c:cf9c with SMTP id af79cd13be357-936d239560dmr2269215585a.2.1787049394416;
        Tue, 18 Aug 2026 03:36:34 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185b9f47bsm130185766b.52.2026.08.18.03.36.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:36:33 -0700 (PDT)
Message-ID: <1e070cab-ad61-4ac4-be94-1ea40f5b6575@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:36:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10] usb: chipidea: msm: support the HSIC asynchronous
 wakeup interrupt
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-5-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-5-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3OCBTYWx0ZWRfXyVzhgoYU4g2O
 GGtOTyKXz3ji4izjNEzKVWVvEzvP/TKxd6Qock2CUSiQm9oxBO94GjEwpE6bWauILwUB2q0JMZO
 KSGHweb8XqKI78kPCSSutH8MWYxdKcA=
X-Proofpoint-ORIG-GUID: MGhnzVFtBuCy2W4dzdv6hDtCninsoeLb
X-Authority-Analysis: v=2.4 cv=UfFhjqSN c=1 sm=1 tr=0 ts=6a8435b3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=85NeIpzETsoQluUi9CYA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: MGhnzVFtBuCy2W4dzdv6hDtCninsoeLb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3OCBTYWx0ZWRfX/TzAHlIFsO32
 uglLwMz4QaTHKY94Iq19YNJ2YYDWbpOOeyRgXNevX4Ur+0jRaDDDnYofUyF0MLf/C6H5KThixS5
 h/mK6AtVZ2Te1hOZ0h8vdRLXb4y+W1jZG5uUc7v4EDEMbNIXg/0wyH1xtgUevolf0zwibFZJCZa
 yOh6mZbJXB6qIvx3b6vCwb7OzO+mrkSor2vA6DYQVIb+72M2k+EbNCRzrr0qg21R44Gwf6O8ByT
 tP+qtwn3dxRBA9hUBVqpEAyf3v9bRRXURUd11uZaGz0AryfuhOClsB7U8Xz4Ctdy+m0L2r2DNoC
 V1x5XeuhrnOV9X5O9x7VvJ6t2VJccOlr7wnw3YP0YsTb1ruy+wlxhqLl/gWSGsG7exYCoz7Xtdj
 PZra4SH5/plIHqtiYwi6C1p7ZvujVBrZI5WPdI7I7nN7xYme/ukQ6CePfAKQxNkR9GRmU+3ecrb
 oIKGXTWu4UGqWOCaU2w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_033637_022062_A7F5786D 
X-CRM114-Status: GOOD (  14.58  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> The HSIC instances of the chipidea controller runtime-suspend with
> their clocks gated whenever the bus is empty. HSIC has no VBUS-style
> connect detection: a device (such as an onboard hub coming out of
> reset) signals a single connect event, and if the controller is
> suspended at that moment the connect is never noticed and the device
> never enumerates.

[...]

> +	/*
> +	 * The optional second interrupt is the asynchronous wakeup interrupt
> +	 * of the HSIC instances: without it a bus connect arriving while the
> +	 * runtime-suspended controller has its clocks gated is never seen.
> +	 */
> +	wake_irq = platform_get_irq_optional(pdev, 1);
> +	if (wake_irq > 0) {
> +		device_init_wakeup(&plat_ci->dev, true);
> +		ret = dev_pm_set_dedicated_wake_irq(&plat_ci->dev, wake_irq);

devm_pm_set_wake_irq()?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
