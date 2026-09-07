Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89474C79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 13:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGf5eVRWr/WufpiGVc5Nkn/4e5MP3bVG4P65rsiLGvQ=; b=y/5tQaKPOj47v9
	0D1duWy5xMGyEYXSQiYGzcGJpnW+16nYR2zVLXdaCZyox0L2wu4jQlb4udlUQTYpo76cGexBJDbXM
	yQzNdgJYnSkE+XH4nvKRtgehY9PkrZqDMo9mBNQPBOL/8asWLaFrFu2kjwd3fnpPPqlVPq6WhQGho
	tDtxdPFUY2TkYY2gZ7sfE3OXF+hoClO8KxA8pJUocP95mruNcxTVLz1NKkZIw5NlbvVSct5aCPDZc
	YZ8DnB8rE5rfiA3yMF/eoP2Mt0kHDL1wpLuJm6lWqx6AiCos+pbhHCj83vt5ecQXJKVNVcgNNZugc
	m5nG8gi4gHS+OSGDmr2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Z0s-00000006tK8-05lW;
	Mon, 07 Sep 2026 13:03:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Z0p-00000006tJb-1un3
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 13:03:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 687AmmBb809866
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 13:03:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	49eWOMRTz8b/nRYqL1sZZ5PDoGraU/KbXkHhAHawsZg=; b=iZhfuJtghjqe30Sf
	NkPTAUBQ1azhCIPyIU5kPudBwzazGbAncmU4S4LrH8geBYwE0YhRSXAjC0tMKESg
	zLf7MAxp19AskYp8Fk1L5z8XqmOA7DWwLk4AdQgMEwGgyA84/+ql3++AdFRVFtbw
	pz+p6pmLxUohExO7iuhq2PK/YQuV9D9WZV9YloS+NR1jTpCCl3nOIL6m/mr9PzM0
	eYDQrgca0H7vjbE6va5X/ktVR2tsNH0WEC1Z6lZ7R3/E6qp0TN7+5s9UBtNbtZhr
	oFG2UFsb4VON8aT24ugpNkcToXQM3bqO964+SREpDSqBrZI6+zsJKBaURmO+7GhB
	3+6OmQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghrua9g49-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 13:03:50 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c71cad4f3eso852840e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 06:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788786229; x=1789391029; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=49eWOMRTz8b/nRYqL1sZZ5PDoGraU/KbXkHhAHawsZg=;
        b=EZffk4JBDx5AdBCx65KEbrXy75whWNLPP+xrpYbO++/z06KUwF/P7uAYcqfKXUQlRq
         G3iRniGc8gTGt+/cr7rz/ZoMLtuKa96hkzWgQ6TqY6IYfcx0bGINZ1FpSinKOT6t2Vm4
         dxyxlcX8cXEEWZrIA9iCA0hQepB/LH0g1Cp8ryWN01WhMz/vMqJpqPEPjjmaqwq53l1T
         o5cWwvWdeL5vnlZs5C2AiZt1LUy2JrESoG+UhpePzfhmwtOJizZz5sb7GFz7b6IfTG++
         Nv+qtC4Wx6Ty/MYfP/wtXp5bTDxlPr0EiaVN7vTP0LPnBmUa+gFH0+jkWZbBUIDL8wYq
         a65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788786229; x=1789391029;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=49eWOMRTz8b/nRYqL1sZZ5PDoGraU/KbXkHhAHawsZg=;
        b=bi5WWeu99QgrhHDBapqBcv2wMd6TotY4F1nmVbWb3VvkmQCXuS4SmQCinzCLU/f1bK
         qlR9Sdr4aWxnkcudWgmq6QcaSY+n6lxA5ehF8+W/0M1ucbuLrzjNXdLNCdoZMazjMZS2
         wa+FlCgg1a5XRyvVByEwixaOvAe3iXuouBz5LIkr5uJnaFb3Y/phqtlmTKyhpePOpAxV
         uw1lt0jvRJJKCkPlMsDrMY2d0otsdCXZNCZFRDa1RclHQG7J7WwBpxAV7VvHcwXcbH6u
         QcWjDMWY/ON/w4jYR1YQfObiN6uW62eD9j0rSv9+1Q3T+47jawex/obeJyVUek5zCHTT
         6NBw==
X-Forwarded-Encrypted: i=1; AKwUvBwfA4ZPs5CzV/NWKr0+Zu+IF2ZFRArpD8W2q/Z+NKoOubHwW3b6NeGf8IaaLNrfBMONUoJw9+kJ11Y=@lists.infradead.org
X-Gm-Message-State: AFuF++kAdc0M/MkWUyfHSbuG6bYmWEVmMornXlMD27xVHGCMK16HU2m4
	Zi9xIo/sYcGZpyFOAXXq3M885aG5gzqnhuWI7e7EF3T1BtDjZXw26hGc61V13ELuWZjuHAnY9yi
	CLFfjN63fTeZ4OgKEMDfpJuoOH5MZ0NehUbe3KHb7FlT2KdcqsdvS6FZ5LTEu8QZPGdvP
X-Gm-Gg: AYBFou0ozdK8E9nYRQIQ51gZBMBQlHQinN04o4De0ztgG0nn4DbWlOlYRKFuya4qbO2
	EdNy71KDDxAGIFp0Sbs+ETi/zLAFjmJPCZx+SxUB3z+d50pxSynvYrIlmAsQf+jbEoZSZt1P3SK
	LK7AzPRDBvN1/x11fxu08Rk/8q0+9hpWpaz2qmA9WkV0gWnUtnDcc6vocdnVfTyx/QsfIJ8MCFw
	KHeMOEM5z4MJZH//wttTYKwS8D0MkqWFVwvwNFo8uUDuAGkYbx4LrasUyiAP/By24/u8U242nef
	NBkUj6CxlB2Douo8X15BlaRGiSZD1V6+ccTRBgX8zYl6LipgXd+DPV5dIesKljvY7OIuoDfW5Q6
	26S8wsysuGNYxc73Ilg/N0ow95iEY
X-Received: by 2002:a05:6122:4f83:b0:5a1:fbbd:6bd0 with SMTP id 71dfb90a1353d-5c7ed45ea59mr9264672e0c.5.1788786229407;
        Mon, 07 Sep 2026 06:03:49 -0700 (PDT)
X-Received: by 2002:a05:6122:4f83:b0:5a1:fbbd:6bd0 with SMTP id 71dfb90a1353d-5c7ed45ea59mr9264575e0c.5.1788786228908;
        Mon, 07 Sep 2026 06:03:48 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee80eda4sm388303115e9.15.2026.09.07.06.03.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 06:03:48 -0700 (PDT)
Message-ID: <6a485a80-cf23-40ba-b385-fd35cf0e9888@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 15:03:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 08/12] drm/msm/hdmi: Add support for PM
 OPP table
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org,
        robh@kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, neil.armstrong@linaro.org,
        olteanv@gmail.com
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-8-67843277de17@oss.qualcomm.com>
 <20260828141602.211751F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260828141602.211751F000E9@smtp.kernel.org>
X-Proofpoint-ORIG-GUID: Fjq0ARLdquog05yrQ_TXIg-ifBnPjKX6
X-Authority-Analysis: v=2.4 cv=U+aiy+ru c=1 sm=1 tr=0 ts=6a9eb636 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=3ryqjR-gYcLxyyiNjjkA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: Fjq0ARLdquog05yrQ_TXIg-ifBnPjKX6
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDE0NCBTYWx0ZWRfX0A4Q31oAgbY8
 T0pzKNLZ1/gk86q5QXmvjHIKmx1QwPwe9slnsMZKpW1VzuSp43X5WbLfkMY9YWBtw+nZyaElf4Q
 ZFlObLn4swBA2t6hdB/fsLzm5mJzHgg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDE0NCBTYWx0ZWRfX/NADLszZ6H8r
 xuEoRMjnZhGXsuzuVijygCC5XoVofmXjIQG30ENaBXQDSOv48fNEnmuKY4Aaz7zu/3E0eV2IgQQ
 NzFtNjkjw4GjFv4iJyHWKXU4mdjBx31TasZwcxHUumM3WZeN4jF+QO0WABVCT0js2P+brtQQ0Nd
 oFtEPbI5GIaI9fO9J5MkmbhrhncIjPKUzQE6o9lofAYAJ5Dp9OQNTzer4YBL49N7YLxNTJCdMy/
 A+N6ZdimHtMeaMF99eew/L0TlUuY9M1GvgCtuq1DlgmbhklZ0D8pgEzXihcvnMrjhwluAciXxaO
 YGM/Ay3rXVuqagmE7s2PkDfiN5sFJ5QZw1QyRoZjX7MYe9oPSsC8gYdjTTNZQ/Dt77ozVLn81VW
 oH/9nRCjJLj9HeSM7sL/Ldr5PCuFj6IJMSqEHFpUs43G1F2g1x7XS/918itrcFK3rxVu5qhdvDo
 rjQC9EpWH+2RtI3QzBQ==
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
X-CRM114-CacheID: sfid-20260907_060351_503721_81F55B59 
X-CRM114-Status: UNSURE (   7.88  )
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

On 28/08/2026 16:16, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] Unconditional call to `devm_pm_opp_set_clkname()` causes probe failure on platforms without the optional "extp" clock.

Ack

> - [Medium] Memory and reference leak of `hdmi->next_bridge` on error paths in probe due to bypassed cleanup.
> --

Ack


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
