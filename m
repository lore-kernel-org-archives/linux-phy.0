Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C10A4C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 09:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3flzsHFopedGfSZtZgYaAVlSk+LG6yjOzI/+AdOhKmw=; b=A4HN207fbRNmgl
	J6H/sfCtH6ApPnkVTSkSHZXLk88lmCR9BFhQwXHb3CutzDyrrmor3OE2fRrVQla7HFLuWFRaRm6c1
	ILEqMIhadwamePD6Oc8iWUoSs6JK2Wef/oGSCIXPIP5lO/i6cpZq4ZhnKtfzicL1/Ak7Px12BbOx1
	PPC4hx5PYs+ci0qtHinb/r9Kc0GRVHCY9wdR5mKECrm8cpYqKkYI1fZ0VRcWNhaRy0ndikeJ9oLwo
	kB1S5//yGCWfMd7IpBcOXsyHGG9Q04KUWg0DqdUz2TM6xLtetU9nmxLULWygMkUn3REudYOE5btM3
	gtJnFnWZTGYRhqYkrNjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQZe-0000000GFMF-1k3m;
	Mon, 24 Aug 2026 09:02:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQZc-0000000GFLu-0NW3
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 09:02:33 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O8BJqS2315298
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 09:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cyEWFx7y5fZb6o89gZ5oNS7PdefHCupUplXdHeftKFg=; b=dqwoLX+C7QT6RQov
	mKpBteKiQe0EkzvFVHoeQnevASa/EmEvyRoOBRNqOj3Fv2jDEh1uJAo9EQ1T4ZsP
	L3amMgPRsnizTaEFhQZDavC2EB1aSxYZuxRdJd97Z0skdLY72Kye0K/IhnCTYTrb
	WpZj805O1jsJ95/fMGcqlMcjCPywIxBEceHEltTKCPIOas286kUrq8KodtQpYw73
	ztOw87E3qI/6zlfmvYfyJ2L+7U6j0oeq2B8INivmM3nyE169hw5i1nO1QeZTvB8U
	24+8bCADETR070qYkyG1047KL/Vx9rjdATRkMauWbMLU2ZZTfmqv2NTFWnJHh4u4
	EI5rpw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8j7r06k8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 09:02:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93102454272so30129385a.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 02:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787562150; x=1788166950; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cyEWFx7y5fZb6o89gZ5oNS7PdefHCupUplXdHeftKFg=;
        b=ftG/jdp10sTdyWBixApPdFLwvIFdI499Myuhe7oHgyeHUqF2deti5f91+1SkAdZJ2b
         qs4CRrgxLV+GB351j84dy1dKD5E7DhXkfmXluQzlOnpDoqMAJtpxHofqnvIp+LHEAoZK
         zWphiFQJ9qe0aEez1YEiByq8c745/hEXmOOUQ1TyHIPDFEkySDlRaqlBTGLF3nw6476X
         MWQU/h1Mzj+lqd1ZVE+xoiLzlVf6H8mYUPpAqxa89P7qD27DctPAlJuCuK865WCbVeBu
         xPUmJX0dJrqyvjD1F8RVKi2czuspvqJMyzKCJbKTfl8nF4KRbSlB51fKw9TkNtccqgzF
         B++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787562150; x=1788166950;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cyEWFx7y5fZb6o89gZ5oNS7PdefHCupUplXdHeftKFg=;
        b=NVTePXEu+f4MnsVrMluUJZU4AK8Y3+X0k5fRhxMfiYvrNHVgLDjdVojaHyp9xwe/wW
         AiOcj9r5OPLrJiH/KQyKhee4PgCF1Ek2ul6nRmuaCBH4t9zNDAskEWBHbow3ZdTJj5Ov
         8hg9kqmxbE1i9cT+h30pCtvUKzY8RQcsydI9z99+Z3JAuCZd+7SqkL1LpXfQvSKZe8uu
         v/mJQNo4yjnF+B/Rrm43ugs4/aoI1ANsyX3rXOv+iZU2gQM9j4Wb420uP7gResk9yhy4
         G6WUcIpNpTEBSRdPYre1ulabdv2HQ60XkgHnIS6QSN/2fhm1AYu47zv2Q4eJQ/llvSic
         VUlg==
X-Forwarded-Encrypted: i=1; AHgh+RpmBguUYs08kcQs38vRkgMLoc799OeS5MUJ7aCeF7Y/ZCrEWiQ9t6pw+sUtPBI0ssQzIFxPCXdVCFw=@lists.infradead.org
X-Gm-Message-State: AFuF++k2bCT0aewOgYbnIDMl4OzGGKf8GaalxSu88kJmetrpCBLC0x4p
	BYTmgQAqoYro7Y9231u74rPjJkO2Dd94EkpUDpedOj6P7sMTrG49R0apGfP0WnCgBrYwKP15Amm
	4jZyyNbHmgN/qGJ8sAZqjhTRVF0KGmzcQl8AfSF37A+OLem5PzGvdyJLCH7zrnIPSianj
X-Gm-Gg: AR+sD11EzmCpmO3BiGeLPb9e/q7BYQGUOwruRMdR6aszUbe/LEOewriqoiSxZ9fU8LT
	46nFvDQVDwkr48QW3viQMRVLrGgkcdDl7aYJwJeEjJwI7B3Zll38uSVR1HI9uSaYV+w//qmpwFA
	/vx6V7J4e4t7wyU91pWusWj8Clc9XAU2fxvyZphgotCkG0X2Es/socYQQhwL+P7xGCwBSSsUIsE
	Kp2MAgYlfra69aFYvt3soPzCcI4k6Tj4wtO4gR0rzpCYvkOmwKcwqYk2UC3F/OdJC+d2CGAZ2SO
	KAmmx3++0DORClxprZYTlxq60eScsVafdoStXjxROWui2ZbezAKT8dl5BKRLjn7HXmlNJFedDYT
	LNxKEcKQ+a05ZrxzWRDBqSu+M
X-Received: by 2002:a05:6214:4687:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-90c811d6d75mr176597666d6.5.1787562149819;
        Mon, 24 Aug 2026 02:02:29 -0700 (PDT)
X-Received: by 2002:a05:6214:4687:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-90c811d6d75mr176597326d6.5.1787562149363;
        Mon, 24 Aug 2026 02:02:29 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249672becesm1191775466b.42.2026.08.24.02.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 02:02:28 -0700 (PDT)
Message-ID: <2e9f6fe9-31ab-4107-a623-b15470fe68de@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 11:02:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/14] arm64: dts: qcom: ipq5332: Add clocks required
 for USB3 support
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-8-8f355d7ff0ef@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-8-8f355d7ff0ef@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA3OSBTYWx0ZWRfX+ItEy1Esx4nv
 UVk7qQ3/CJ23Z6iYexFuNtCFrP7xQo4gVls4ZjvZqjneB8iAb6yUhNdYb3vkTtOlONEaGp7/fDx
 xgGxnf42UP0H1LqZe57+dD+EzTtdUXcdU0sYKeh05f57kr6MVhkXlBeaEecuzJA3N95G0OhePtM
 /4QLxGlgjP/HUQBS65cJ7DITzIVQ79SQVYVEPVKHv13Fm/azAO9CHp3N3hbS8wDbZTS0M33kGjV
 tl7JiwXJR/Ey//cqWnjJYkcYV2ZSPnatgGPuto3qq/tF6P3gTr6VzBT/CAMtJfK3Nc2hEFFkzPm
 mgpKXlRnuZ4kpvIr5B+sVApIAH5wHiGj7dd0QFzDFgtFBDXZyzCv+OfkkUn9PZkpB0YOX1O6rko
 vSSW3O7UVouZ8S3o/IujE4Bs8Gv0xG4yOTCkU3lAjWjGHDpuk5bKdhGgyeyzgCl8buhBZpNd4Iq
 xG1p1NVdqkIqjjfUa9g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA3OSBTYWx0ZWRfX9G2+nt6GkRnp
 Pe+f9OyXDzAEdziVRS8kkgDrcl8nx9HmmGBNNyF8pI4TdrlcbcpHtkymdpluLmf4rBWk28SpwGF
 OysylHhE/PpHTkj7bjQIMCYdlZx0JZ4=
X-Proofpoint-GUID: eQI0UUX158WIglW8yrCVURw5hZQ_FzGJ
X-Authority-Analysis: v=2.4 cv=IL8yzAvG c=1 sm=1 tr=0 ts=6a8c08a6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=TbTMhDWFNTfgXYAo_YsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: eQI0UUX158WIglW8yrCVURw5hZQ_FzGJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_020232_247713_F552E94B 
X-CRM114-Status: UNSURE (   9.76  )
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

On 8/12/26 11:34 AM, George Moussalem via B4 Relay wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add aux and lfps clocks to USB controller node for Super-Speed support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Is the GCC_USB0_PIPE_CLK not necessary too?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
